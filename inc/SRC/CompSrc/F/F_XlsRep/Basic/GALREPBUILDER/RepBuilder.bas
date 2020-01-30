Attribute VB_Name = "RepBuilder"
Option Explicit
Option Base 1

Public Const cgxlGal_VarSheet As String = "Gal_VarSheet"
Public Const cgxlGal_TblSheet As String = "Gal_TblSheet"

' переменные режимов работы
' "Public" - для того чтобы сохранялось значение на потяжении всего времени пока открыт GalRepbuilder (можно объявить их в разделе "ЭтаКнига")
Private Const DefaultCopyBlockRowsCount As Long = 0 ' количество строк по умолчанию в блоке для групповой вставки новых записей
Public CopyBlockRowsCount As Long ' количество строк в блоке для групповой вставки новых записей
Public IsAdvMode_NotGroupIns As Boolean ' режим групповой вставки записей отчета (Not - чтобы False был режим по умолчанию)
Public IsAdvMode_CheckColumnWidth As Boolean ' режим контроля ширины используемых колонок
Public RowCheckColumnWidth As Long ' строка в которой контроллируем ширину колонок


' ==============================================================================
' FIELDS
' ------------------------------------------------------------------------------
' количество строк в блоке для групповой вставки новых записей
Public Function GetCopyBlockRowsCount() As Long
    GetCopyBlockRowsCount = CopyBlockRowsCount
End Function
Public Sub SetCopyBlockRowsCount(fld As Long)
    CopyBlockRowsCount = fld
End Sub

' ------------------------------------------------------------------------------
' режим групповой вставки записей отчета
Public Function GetIsAdvMode_GroupIns() As Boolean
    GetIsAdvMode_GroupIns = Not IsAdvMode_NotGroupIns
End Function
Public Sub SetIsAdvMode_GroupIns(fld As Boolean)
    IsAdvMode_NotGroupIns = Not fld
End Sub

' ------------------------------------------------------------------------------
' режим контроля ширины используемых колонок
Public Function GetIsAdvMode_CheckColumnWidth() As Boolean
    GetIsAdvMode_CheckColumnWidth = IsAdvMode_CheckColumnWidth
End Function
Public Sub SetIsAdvMode_CheckColumnWidth(fld As Boolean)
    IsAdvMode_CheckColumnWidth = fld
End Sub

' ------------------------------------------------------------------------------
' инициализация полей модуля RepBuilder
Public Sub InitModule_RepBuilder()
    ' количество строк в блоке для групповой вставки новых записей
    SetCopyBlockRowsCount (DefaultCopyBlockRowsCount)

    ' режим групповой вставки записей отчета
    SetIsAdvMode_GroupIns (True)
    
    ' режим контроля ширины используемых колонок
    RowCheckColumnWidth = 0  ' строка в которой корректируем ширину колонок
    SetIsAdvMode_CheckColumnWidth (False) ' режим контроля ширины используемых колонок
End Sub

' ------------------------------------------------------------------------------
' Является ли текущая версия Excel - "старой" (т.е. версии 2003 и ранее)
Public Function GetIsOldExcelVersion() As Boolean
Dim sVer As String
Dim nVer, PozVerDivider As Byte
    nVer = 0
    sVer = Application.Version
    PozVerDivider = InStr(1, sVer, ".")
    If (PozVerDivider <> 0) Then
        sVer = Mid(sVer, 1, PozVerDivider - 1)
        On Error Resume Next
        nVer = CByte(sVer)
        On Error GoTo 0
    End If
GetIsOldExcelVersion = (nVer <= 11)
End Function
' FIELDS
' ******************************************************************************


' перенос комментариев из XLS-БД
Private Sub MyAddComments(DBRng As Range, RepRng As Range)
    Dim sRepComment As String
    Dim sDBComment As String
    sDBComment = ""
    sRepComment = ""
    If Not (RepRng.Comment Is Nothing) Then
        sRepComment = RepRng.Comment.Text
    End If
    If Not (DBRng.Comment Is Nothing) Then
        sDBComment = DBRng.Comment.Text
        If (sRepComment = "") Then
            RepRng.AddComment (sDBComment)
        Else
            RepRng.Comment.Text sRepComment & Chr(10) & sDBComment
        End If
    End If
End Sub

Public Function GetDBVar(DBWB As Workbook, sDBVar As String) As Variant
Dim DBWS As Worksheet
    GetDBVar = Null
    On Error Resume Next
    Set DBWS = DBWB.Worksheets(cgxlGal_VarSheet)
    GetDBVar = Range(DBWS.Names(sDBVar).Name).Value
    On Error GoTo 0
End Function

' Запомнить "ширину" используемых колонок "справа"
Private Sub MyStoreRightUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepWS As Worksheet
Dim Col, ColBeg, ColEnd As Long
    ' запускаем только если включен режим контроля ширины используемых колонок
    If (Not GetIsAdvMode_CheckColumnWidth) Then
        Exit Sub
    End If
    
    ' запускаем контроль только по одной строке
    If (RowCheckColumnWidth = 0) Then
        RowCheckColumnWidth = Range(RepNM).Row
    End If
    If (RowCheckColumnWidth <> Range(RepNM).Row) Then
        Exit Sub
    End If
    
    Set RepWS = Range(RepNM).Worksheet
    ColBeg = Range(RepNM).Column + 1
    ColEnd = RepWS.UsedRange.Column + RepWS.UsedRange.Columns.Count - 1
    ReDim ArrColWidth(ColEnd - ColBeg + 1) As Variant
    For Col = ColBeg To ColEnd
        ArrColWidth(Col - ColBeg + 1) = RepWS.Columns(Col).ColumnWidth
    Next Col
End Sub
' Восстановить "ширину" используемых колонок "справа"
Private Sub MyReStoreRightUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepWS As Worksheet
Dim Col, ColBeg, Npp As Long
Dim w As Variant
    ' запускаем только если включен режим контроля ширины используемых колонок
    If (Not GetIsAdvMode_CheckColumnWidth) Then
        Exit Sub
    End If
    
    ' запускаем контроль только по одной строке
    If (RowCheckColumnWidth <> Range(RepNM).Row) Then
        Exit Sub
    End If
    
    Set RepWS = Range(RepNM).Worksheet
    ColBeg = Range(RepNM).Column + 1
    Col = ColBeg
    For Each w In ArrColWidth
        RepWS.Columns(Col).ColumnWidth = w
        Col = Col + 1
    Next
End Sub

' Запомнить "ширину" используемых колонок
Private Sub MyStoreUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepRng As Range
Dim RepWS As Worksheet
Dim Col, ColBeg, ColEnd As Long
    ' получим диапазон с учетом объединения
    Set RepRng = GetMergedRange(RepNM.RefersToRange)
    
    Set RepWS = Range(RepNM).Worksheet
    
    ColBeg = RepRng.Column
    ColEnd = ColBeg + RepRng.Columns.Count - 1
    ReDim ArrColWidth(RepRng.Columns.Count) As Variant
    For Col = ColBeg To ColEnd
        ArrColWidth(Col - ColBeg + 1) = RepWS.Columns(Col).ColumnWidth
    Next Col
    
End Sub
' Восстановить "ширину" используемых колонок
Private Sub MyReStoreUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepRng As Range
Dim RepWS As Worksheet
Dim Col, ColBeg, Npp As Long
Dim w As Variant
    ' получим диапазон с учетом объединения
    Set RepRng = GetMergedRange(RepNM.RefersToRange)
    
    Set RepWS = Range(RepNM).Worksheet
    
    ColBeg = RepRng.Column
    Col = ColBeg
    For Each w In ArrColWidth
        RepWS.Columns(Col).ColumnWidth = w
        Col = Col + 1
    Next
End Sub

' Запустить проверку допустимости использования заданного количества колонок на листе
Function MyRunCheckValidColCount(RepWS As Worksheet, Col As Long)
Dim MaxRepWSColCount As Long
    MaxRepWSColCount = RepWS.Columns.Count

    If (Col < MaxRepWSColCount) Then
        MyRunCheckValidColCount = True
    Else
        Dim sMess As String
        sMess = "Отчет не может поместиться на лист MS Excel, " & _
        "превышено максимально допустимое количество колонок - " & _
        MaxRepWSColCount & " (требуется " & Col & " )" & " !"
        
        If (MaxRepWSColCount = 256) Then
            ' если текущий шаблон "старой" версии
            If (GetIsOldExcelVersion) Then
                ' MS Excel <= 2003
                sMess = sMess & _
                Chr(13) + "Рекомендация: установить версию MS Excel версии 2007 или выше."
            Else
                ' MS Excel > 2003
                sMess = sMess & _
                Chr(13) + "Рекомендация:" & _
                Chr(13) + "1. текущий XLT-шаблон 'сохраните как' - 'Шаблон Excel с поддержкой макросов'" & _
                Chr(13) + "2. следующий раз при формировании отчета используйте новый шаблон (*.XLTM)"
            End If
        End If

        Call MsgBox(sMess, vbCritical, "Проблема при формировании отчета", 0, 0)
    
        MyRunCheckValidColCount = False
    End If
    
End Function

' Добавить элементы массивов
Private Function AddArrayFld(DBWS As Worksheet, DBNMs As Collection, RepWS As Worksheet, RepNMs As Collection) As Boolean
AddArrayFld = False
Dim DBNM As Name
Dim RepNM As Name
Dim AddNM As Name

Dim TmpInd, TmpLen As Long
Dim sOldReferTo As String
Dim sTmpArrNM, sTmpArrElNM As String
Dim ArrUsedColWidth() As Variant
Dim ArrRightUsedColWidth() As Variant
    
    ' сканируем все "имена" в отчете
    For Each RepNM In RepNMs
        On Error GoTo 0
        
        ' обрабатываем только массивы
        If (IsArray(RepNM)) Then
        
            Set DBNM = FindDBNameByRepName(RepNM, DBWS)
            TmpLen = GetArrayLength(DBNM, DBNMs) ' кол-во элементов в массиве
            
            ' обрабатываем только не "пустые" массивы
            If (TmpLen > 0) Then
            
                sTmpArrNM = RepNM.Name
                
                ' получим диапазон шаблона с учетом объединения
                Dim RepRng As Range
                Set RepRng = GetMergedRange(RepNM.RefersToRange)
                sOldReferTo = "='" & RepRng.Worksheet.Name & "'!" & RepRng.Address
                    
                ' подсчитаем требуемое количество колонок
                Dim MustBeCol As Long
                MustBeCol = RepRng.Columns(RepRng.Columns.Count).Column
                MustBeCol = MustBeCol + TmpLen * RepRng.Columns.Count
                If (Not MyRunCheckValidColCount(RepWS, MustBeCol)) Then
                    On Error GoTo 0
                    Exit Function
                End If
                
                ' запомним "ширину" используемых колонок
                Call MyStoreUsedColumnWidth(RepNM, ArrUsedColWidth)
                
                ' запомним "ширину" используемых колонок "справа"
                Call MyStoreRightUsedColumnWidth(RepNM, ArrRightUsedColWidth)
           
                ' сама вставка элементов "со сдвигом вправо"
                On Error GoTo ErrInsMultyRange
                For TmpInd = TmpLen To 1 Step -1
                    sTmpArrElNM = SubArrayPostfix(sTmpArrNM) & "_" & Trim(Str(TmpInd))
                    sTmpArrElNM = GetSimpeSName(sTmpArrElNM)
                    RepWS.Names.Add Name:=sTmpArrElNM, RefersTo:=sOldReferTo
                    
                    ' восстановить "ширину" используемых колонок
                    Call MyReStoreUsedColumnWidth(RepNM, ArrUsedColWidth)
           
                    If (TmpInd > 1) Then
                        Range(sOldReferTo).Copy
                        Range(sOldReferTo).Insert Shift:=xlToRight
                    End If
                Next TmpInd
                On Error GoTo 0
                
                ' восстановить "ширину" используемых колонок "справа"
                Call MyReStoreRightUsedColumnWidth(RepNM, ArrRightUsedColWidth)
                
                ' если сюда пришли, то все хорошо...
                GoTo OkIns
                
ErrInsMultyRange:
                On Error GoTo 0
                Call MsgBox("Ошибка мультипликации диапазонов", _
                vbCritical, "Ошибка формирования отчета", 0, 0)
                Exit Function

OkIns:
                On Error GoTo 0
                RepWS.Names(sTmpArrNM).Delete
            
            End If ' обрабатываем только не "пустые" массивы - If (TmpLen > 0)
        
        End If 'обрабатываем только массивы - If (IsArray(RepNM))
        
    Next ' сканируем все "имена" в отчете (RepNM)
    
AddArrayFld = True
End Function

' Вывести из заданной XLS-БД в XLS-отчет все заданные в XLS-отчете переменные
Public Function PrintAllVar(DBWB As Workbook, RepWS As Worksheet) As Boolean
PrintAllVar = True
Dim DBWS As Worksheet
Dim DBVar As Name
Dim DBVars As Collection
Dim RepVar As Name
Dim RepVars As Collection
Dim OldScreenUpdatind As Boolean
    
    OldScreenUpdatind = Application.ScreenUpdating
    Application.ScreenUpdating = False
    Application.Calculation = xlCalculationManual
    
    'вставим поля горизонтальных циклов
    Set DBWS = DBWB.Worksheets(cgxlGal_VarSheet)
    Set DBVars = GetDBVarCollection(DBWS)
    Set RepVars = GetRepVarCollection(RepWS)
    If (Not AddArrayFld(DBWS, DBVars, RepWS, RepVars)) Then
        PrintAllVar = False
        GoTo EndPrint
    End If
    'обновим переменные
    Set RepVars = GetRepVarCollection(RepWS)
    
    For Each RepVar In RepVars
        RepVar.RefersToRange.Value = Empty
        Set DBVar = FindDBNameByRepName(RepVar, DBWS)
        If Not (DBVar Is Nothing) Then
            On Error GoTo ErrPrintAllVar
            ' перенесем значения из XLS-БД
            RepVar.RefersToRange.Value = DBVar.RefersToRange.Value
            ' перенесем комментарии из XLS-БД
            Call MyAddComments(DBVar.RefersToRange, RepVar.RefersToRange)
ErrPrintAllVar:
            On Error GoTo 0
        End If
    Next
EndPrint:
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = OldScreenUpdatind
End Function

' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные (исключая пустые переменные)
Public Function PrintAllVar_WithoutEmptyVar(DBWB As Workbook, RepWS As Worksheet) As Boolean
PrintAllVar_WithoutEmptyVar = True
Dim DBWS As Worksheet
Dim DBVars As Collection
Dim DBVar As Name
Dim RepVars As Collection
Dim RepVar As Name
Dim OldScreenUpdatind As Boolean
    
    OldScreenUpdatind = Application.ScreenUpdating
    Application.ScreenUpdating = False
    Application.Calculation = xlCalculationManual
    
    'вставим поля горизонтальных циклов
    Set DBWS = DBWB.Worksheets(cgxlGal_VarSheet)
    Set DBVars = GetDBVarCollection(DBWS)
    Set RepVars = GetRepVarCollection(RepWS)
    If (Not AddArrayFld(DBWS, DBVars, RepWS, RepVars)) Then
        PrintAllVar_WithoutEmptyVar = False
        GoTo EndPrint
    End If
    'обновим переменные
    Set RepVars = GetRepVarCollection(RepWS)
    
    For Each RepVar In RepVars
        RepVar.RefersToRange.Value = Empty
        Set DBVar = FindDBNameByRepName(RepVar, DBWS)
        If Not (DBVar Is Nothing) Then
            On Error GoTo ErrPrintAllVar
            If Not IsEmpty(DBVar.RefersToRange.Value) Then
              ' перенесем значения из XLS-БД
              RepVar.RefersToRange.Value = DBVar.RefersToRange.Value
              ' перенесем комментарии из XLS-БД
              Call MyAddComments(DBVar.RefersToRange, RepVar.RefersToRange)
            Else
              RepVar.RefersToRange.RowHeight = 0
            End If
ErrPrintAllVar:
            On Error GoTo 0
        End If
    Next
EndPrint:
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = OldScreenUpdatind
End Function

' Удаление пустой таблицы
Private Sub MyDeleteEmptyRepTbl(RepTbl As Name)
    Dim TmpRng As Range
    Set TmpRng = RepTbl.RefersToRange
    
    Dim RepWS As Worksheet
    Set RepWS = TmpRng.Worksheet
    
    Dim FirstRowNpp, TblRowCont As Long
    FirstRowNpp = TmpRng.Row
    TblRowCont = TmpRng.Rows.Count
    Dim i As Long
    For i = 0 To TblRowCont - 1
        Set TmpRng = RepWS.Rows(FirstRowNpp)
        ' удаляем строки целиком, иначе отчет съезжает
        TmpRng.Delete Shift:=xlUp
    Next i
End Sub

' Корректировка диапозона таблицы
Private Sub CorrectRangeTbl(RepTbl As Name, RepKolRow As Long)
    If (Not IsValidName(RepTbl)) Then
        Exit Sub
    End If
    If (RepKolRow = 0) Then
        ' если таблица "пустая", то удалим ее из отчета
        Call MyDeleteEmptyRepTbl(RepTbl)
        Exit Sub
    End If
    
    Dim TmpRng As Range
    Set TmpRng = RepTbl.RefersToRange
    Set TmpRng = TmpRng.Resize(RepKolRow)
    
    Dim RepWS As Worksheet
    Set RepWS = RepTbl.RefersToRange.Worksheet
    Set RepTbl = RepWS.Names.Add(RepTbl.Name, TmpRng)
End Sub

Private Sub MySetRangeValueFromArray(Rng As Range, Arr() As Variant)
    
    If (Not GetIsOldExcelVersion) Then
        ' MS Excel > 2003
        Rng.Value = Arr
    Else
        ' MS Excel <= 2003, need check 911 length string
        Dim R, C, RCount, CCount As Long
        RCount = Rng.Rows.Count
        CCount = Rng.Columns.Count
        
        ' define warning cols
        Dim isBeWarning As Boolean
        isBeWarning = False
        For C = 1 To CCount
            If (isBeWarning) Then
                Exit For
            End If
            For R = 1 To RCount
                If (VarType(Arr(R, C)) = vbString) Then
                    If (Len(CStr(Arr(R, C))) > 911) Then
                        isBeWarning = True
                        Exit For
                    End If
                End If
            Next R
        Next C
        
        If (Not isBeWarning) Then ' not be warning
            Rng.Value = Arr
        Else                      ' be warning
            For C = 1 To CCount
                For R = 1 To RCount
                    Rng(R, C).Value = Arr(R, C)
                Next R
            Next C
        End If ' be warning
    End If ' MS Excel <= 2003, need check 911 length string
End Sub

' Вывести заданную таблицу
Private Function PrintTblFlds(DBTbl As Name, RepTbl As Name) As Boolean
PrintTblFlds = True
Dim DBWS As Worksheet
Dim RepWS As Worksheet
Dim DBTblFlds As Collection
Dim DBTblFld As Name
Dim RepTblFlds As Collection
Dim RepTblFld As Name
Dim DBRng As Range
Dim RepRng As Range
Dim DBKolRow, DBKolCol As Long
Dim RepStartRow, RepStartCol As Long
Dim RepKolRow, RepKolCol As Long
Dim i, j As Long
DebStr ("PrintTblFlds_BEG=" & Now() & RepTbl.Name)

    Set DBRng = DBTbl.RefersToRange
    Set DBWS = DBRng.Worksheet
    
    Set RepRng = RepTbl.RefersToRange
    Set RepWS = RepRng.Worksheet
    
    ' если таблица "пустая", то удалим ее из отчета
    If ((DBRng.Rows.Count - 1) = 0) Then
        Call MyDeleteEmptyRepTbl(RepTbl)
        PrintTblFlds = True
        GoTo EndPrint
    End If
    
    ' вставим поля горизонтальных циклов
    Set DBTblFlds = GetDBTblFldCollectionByTbl(DBWS, DBTbl)
    Set RepTblFlds = GetRepTblFldCollectionByTbl(DBWS, RepWS, RepTbl)
    If (Not AddArrayFld(DBWS, DBTblFlds, RepWS, RepTblFlds)) Then
        PrintTblFlds = False
        GoTo EndPrint
    End If
    ' обновим диапазон таблицы
    Set RepTbl = MakeTblNameByAllTblFld(DBWS, RepWS, RepTbl.Name)
    ' обновим переменные
    Set RepTblFlds = GetRepTblFldCollectionByTbl(DBWS, RepWS, RepTbl)
    Set RepRng = RepTbl.RefersToRange
    Set RepWS = RepRng.Worksheet
    
    DBKolRow = DBRng.Rows.Count - 1
    DBKolCol = DBRng.Columns.Count
    
    RepStartRow = RepRng.Row
    RepStartCol = RepRng.Column
    RepKolRow = RepRng.Rows.Count
    RepKolCol = RepRng.Columns.Count
    
    Dim ArrDBRepRC
    ReDim ArrDBRepRC(RepTblFlds.Count, 2, 2) As Long
    Dim RDB, CDB, RRep, CRep As Long
    j = 0
    For Each RepTblFld In RepTblFlds
        Set DBTblFld = FindDBNameByRepName(RepTblFld, DBWS)
        j = j + 1
        ArrDBRepRC(j, 1, 1) = 0
        If Not (DBTblFld Is Nothing) Then
            RDB = 1
            CDB = DBTblFld.RefersToRange.Column - DBRng.Column + 1
            RRep = RepTblFld.RefersToRange.Row - RepRng.Row + 1
            CRep = RepTblFld.RefersToRange.Column - RepRng.Column + 1
            If CRep < 0 Then
                MsgBox "заносят в массив CRep=" & CRep _
                & Chr(13) & "RepTblFld.Name=" & RepTblFld.Name _
                & Chr(13) & "RepTblFld.RefersToRange.Address=" & RepTblFld.RefersToRange.Address _
                & Chr(13) & "RepRng.Address=" & RepRng.Address
            End If
            ArrDBRepRC(j, 1, 1) = RDB
            ArrDBRepRC(j, 1, 2) = CDB
            ArrDBRepRC(j, 2, 1) = RRep
            ArrDBRepRC(j, 2, 2) = CRep
        End If
    Next
    
    Dim OldActiveCell As Range
    Set OldActiveCell = ActiveCell
    Dim BegRow, EndRow As Long
    Dim sBegRow, sEndRow, sRangeRow As String
    Dim TmpRng As Range
    Set TmpRng = RepRng
    Dim RTmpRng, CTmpRng As Long
    Dim InsertedRng As Range
    Dim ArrRepValue()
    ReDim ArrRepValue(DBKolRow * RepKolRow, TmpRng.Columns.Count) As Variant      '
    
    If (GetIsAdvMode_GroupIns) Then
        ' если ВКЛЮЧЕН режим групповой вставки записей отчета
        If (DBKolRow > 1) Then
            ' если в таблице более одной строки
            ' определим сколько всего у нас строк
            Dim EmptySheetAllRowsCount As Long
            EmptySheetAllRowsCount = DBWS.Rows.Count
            
            ' 1-я строка в БД, в которой нет данных
            Dim BegEmptyRow As Long
            BegEmptyRow = DBWS.UsedRange.Row + DBWS.UsedRange.Rows.Count
        
            If (BegEmptyRow >= EmptySheetAllRowsCount) Then
                MsgBox "Слишком много строк в отчете!" _
                & Chr(13) & "Excel с этим не справится..."
                
                PrintTblFlds = False
                GoTo EndPrint
            End If
            
            ' количество строк которые надо вставить в отчет
            Dim InsRepRowCount As Long
            InsRepRowCount = (DBKolRow - 1) * (RepKolRow)
        
            Dim EndEmptyRow As Long
            EndEmptyRow = BegEmptyRow + InsRepRowCount - 1
            
            ' вставим пустые строки в отчет
DebStr ("GetCopyBlockRowsCount=" & GetCopyBlockRowsCount)
DebStr ("InsertedRows_BEG=" & Now())
            Dim tmpInsertedRowsCount As Long ' количество уже вставленных строк
            tmpInsertedRowsCount = 0
            Do
                EndEmptyRow = BegEmptyRow + (InsRepRowCount - tmpInsertedRowsCount) - 1
                If (EndEmptyRow > EmptySheetAllRowsCount) Then
                    EndEmptyRow = EmptySheetAllRowsCount
                End If
                If (GetCopyBlockRowsCount <> 0) Then
                    ' если есть ограничения на количество копируемых записей
                    If (EndEmptyRow > (BegEmptyRow + GetCopyBlockRowsCount - 1)) Then
                        EndEmptyRow = BegEmptyRow + GetCopyBlockRowsCount - 1
                    End If
                End If
                DBWS.Rows(BegEmptyRow & ":" & EndEmptyRow).Copy
                ' вставка новых строк в конец таблицы, иначе если вставлять в начало,
                ' происходит сильное торможение при большом количестве уже вставленных строк
                Rows(TmpRng.Offset(RepKolRow + tmpInsertedRowsCount, 0).Row).Insert Shift:=xlDown
                Application.CutCopyMode = False
                
                tmpInsertedRowsCount = tmpInsertedRowsCount + EndEmptyRow - BegEmptyRow + 1
            Loop Until (tmpInsertedRowsCount >= InsRepRowCount)
            If (tmpInsertedRowsCount <> InsRepRowCount) Then
                MsgBox "Вставили " & tmpInsertedRowsCount & " строк" _
                & Chr(13) & "А надо было " & InsRepRowCount & " строк!"
            End If
DebStr ("InsertedRows_END=" & Now())
            
            ' определение диапозона новых строк
            BegRow = TmpRng.Offset(RepKolRow, 0).Row
            EndRow = BegRow + InsRepRowCount - 1
            
DebStr ("переносим форматирование_BEG=" & Now())
            ' переносим форматирование новых строк
            Dim tmpBegRow, tmpEndRow As Long
            ' переносим форматирование по tmpDeltaFormatRows строк, иначе ошибка: "Выделенная область слишком велика" 1004
            Const tmpDeltaFormatRows As Long = 1000
            
            tmpBegRow = BegRow
            Do
                If ((tmpBegRow + tmpDeltaFormatRows - 1) > EndRow) Then
                    tmpEndRow = EndRow
                Else
                    tmpEndRow = tmpBegRow + tmpDeltaFormatRows - 1
                End If
                ' строковое определение диапозона новых строк
                sBegRow = Trim(Str(tmpBegRow))
                sEndRow = Trim(Str(tmpEndRow))
                sRangeRow = Trim(sBegRow & ":" & sEndRow)
                
                ' переносим форматирование в текущий пакет строк
                RepWS.Rows(TmpRng.Row & ":" & (TmpRng.Row + TmpRng.Rows.Count - 1)).Copy
                RepWS.Paste Destination:=RepWS.Rows(sRangeRow)
                
                tmpBegRow = tmpEndRow + 1
            Loop Until (tmpEndRow = EndRow)
DebStr ("переносим форматирование_END=" & Now())
            
        End If ' если в таблице более одной строки
    End If ' если ВКЛЮЧЕН режим групповой вставки записей отчета
    
DebStr ("переносим значения в массив_BEG=" & Now())
    For i = 1 To DBKolRow
        If (Not GetIsAdvMode_GroupIns) Then
            ' если выКЛЮЧЕН режим групповой вставки записей отчета
        
            ' вставка новой строки
            If (i < DBKolRow) Then
                ' целиком для всех строк записи таблицы
                BegRow = TmpRng.Offset(RepKolRow * (i - 1), 0).Row
                EndRow = BegRow + (RepKolRow - 1)
                sBegRow = Trim(Str(BegRow))
                sEndRow = Trim(Str(EndRow))
                sRangeRow = Trim(sBegRow & ":" & sEndRow)
                ' вставка новой строки таблицы
                Rows(sRangeRow).Copy
                Rows(TmpRng.Offset(RepKolRow * i, 0).Row).Insert Shift:=xlDown
            End If
        End If ' если выКЛЮЧЕН режим групповой вставки записей отчета
        
        ' перенос формул
        Set InsertedRng = TmpRng.Offset(RepKolRow * (i - 1), 0)
        For RTmpRng = 1 To InsertedRng.Rows.Count
            For CTmpRng = 1 To InsertedRng.Columns.Count
                If Not IsEmpty(InsertedRng(RTmpRng, CTmpRng)) Then
                    ArrRepValue(RepKolRow * (i - 1) + RTmpRng, CTmpRng) _
                    = InsertedRng(RTmpRng, CTmpRng).Formula
                End If
            Next CTmpRng
        Next RTmpRng
        
        ' перенос значений из БД
        For j = 1 To RepTblFlds.Count
            If (ArrDBRepRC(j, 1, 1) <> 0) Then
                RDB = i + ArrDBRepRC(j, 1, 1)
                CDB = ArrDBRepRC(j, 1, 2)
                RRep = ArrDBRepRC(j, 2, 1)
                CRep = ArrDBRepRC(j, 2, 2)

                If CRep < 0 Then
                    MsgBox "что cчас будет CRep=" & CRep
                End If
                
                ' перенесем значения из XLS-БД
                ArrRepValue(RepKolRow * (i - 1) + RRep, CRep) = DBRng(RDB, CDB).Value
                
                ' перенесем комментарии из XLS-БД
                Call MyAddComments(DBRng(RDB, CDB), TmpRng.Offset(RepKolRow * (i - 1), 0)(RRep, CRep))
            End If
        Next j
        
    Next i
DebStr ("переносим значения в массив_END=" & Now())
    
DebStr ("переносим значения из массива_BEG=" & Now())
    ' вывод ч/з массив
    Dim Cell1, Cell2 As Range
    Dim r1, c1, r2, c2 As Long
    r1 = TmpRng.Row
    c1 = TmpRng.Column
    r2 = r1 + DBKolRow * RepKolRow - 1
    c2 = c1 + TmpRng.Columns.Count - 1
    Set Cell1 = RepWS.Cells(r1, c1)
    Set Cell2 = RepWS.Cells(r2, c2)
    Call MySetRangeValueFromArray(RepWS.Range(Cell1, Cell2), ArrRepValue)
DebStr ("переносим значения из массива_END=" & Now())
    
DebStr ("откорректируем диапозоны таблицы_BEG=" & Now())
    ' откорректируем диапозоны таблицы
    Call CorrectRangeTbl(RepTbl, DBKolRow * RepKolRow)
    For Each RepTblFld In RepTblFlds
        Call CorrectRangeTbl(RepTblFld, DBKolRow * RepKolRow)
    Next
DebStr ("откорректируем диапозоны таблицы_END=" & Now())

EndPrint:
    On Error Resume Next
    OldActiveCell.Activate
    On Error GoTo 0
DebStr ("PrintTblFlds_END=" & Now())
End Function

' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете таблицы
Public Function PrintAllTbl(DBWB As Workbook, RepWS As Worksheet) As Boolean
PrintAllTbl = True
Dim DBWS As Worksheet
Dim DBTbl As Name
Dim RepTbls As Collection
Dim RepTbl As Name
Dim OldScreenUpdatind As Boolean

    OldScreenUpdatind = Application.ScreenUpdating
    Application.ScreenUpdating = False
    Application.Calculation = xlCalculationManual
    
    Set DBWS = DBWB.Worksheets(cgxlGal_TblSheet)
    Set RepTbls = GetRepTblCollection(RepWS)
    For Each RepTbl In RepTbls
        Set RepTbl = MakeTblNameByAllTblFld(DBWS, RepWS, RepTbl.Name)
        Set DBTbl = FindDBNameByRepName(RepTbl, DBWS)
        If (DBTbl Is Nothing) Then
            ' если таблицы в отчете нет, то удалим ее
            Call MyDeleteEmptyRepTbl(RepTbl)
        Else
            If (Not PrintTblFlds(DBTbl, RepTbl)) Then
                PrintAllTbl = False
                GoTo EndPrint
            End If
        End If
    Next
    
EndPrint:
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = OldScreenUpdatind
End Function

' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные и таблицы
Public Sub PrintAll(DBWB As Workbook, RepWS As Worksheet)
    If (Not PrintAllVar(DBWB, RepWS)) Then
        Exit Sub
    End If
    If (Not PrintAllTbl(DBWB, RepWS)) Then
        Exit Sub
    End If
    RepWS.Calculate
End Sub
' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные и таблицы (исключая пустые переменные)
Public Sub PrintAll_WithoutEmptyVar(DBWB As Workbook, RepWS As Worksheet)
    If (Not PrintAllVar_WithoutEmptyVar(DBWB, RepWS)) Then
        Exit Sub
    End If
    If (Not PrintAllTbl(DBWB, RepWS)) Then
        Exit Sub
    End If
    RepWS.Calculate
End Sub


' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные и таблицы
Private Sub PrintAllToSWS_Common(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
Dim RepWS  As Worksheet
    
    ' строка в которой корректируем ширину колонок
    RowCheckColumnWidth = 0
    
    On Error GoTo ErrRepWS
    Set RepWS = RepWB.Worksheets(sRepWS)
    On Error GoTo 0
    RepWS.Activate
    Call PrintAll(DBWB, RepWS)
    Exit Sub
ErrRepWS:
    MsgBox ("Не найден лист рабочей книги: " & sRepWS)
    Exit Sub
End Sub

' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные и таблицы
' ВКЛЮЧЕН режим групповой вставки записей отчета
Public Sub PrintAllToSWS(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
    Call PrintAllToSWS_Common(DBWB, RepWB, sRepWS)
End Sub

' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные и таблицы
' ВКЛЮЧЕН режим групповой вставки записей отчета
Public Sub PrintAllToSWS_Adv01(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
    Call PrintAllToSWS_Common(DBWB, RepWB, sRepWS)
End Sub

' Вывести из заданной XLS-БД в XLS-отчет все,
' заданные в XLS-отчете переменные и таблицы
' ВКЛЮЧЕН режим групповой вставки записей отчета
Public Sub PrintAllToSWS_Adv02(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
    Call PrintAllToSWS_Common(DBWB, RepWB, sRepWS)
End Sub





