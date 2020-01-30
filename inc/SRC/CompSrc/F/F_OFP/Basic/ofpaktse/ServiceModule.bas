Attribute VB_Name = "ServiceModule"
' (c) 2012 корпорация ГАЛАКТИКА
' Макросы формирования отчета

Option Explicit

Private Const WS1 As String = "Отчет"
Private Const WS2 As String = "Отчет_"
Private Const sNM_Devider  As String = "GalDBVar_Разделять_уровни"
Private Const sNM_Level As String = "GalRepTblFld_Уровень_группировки_" 'Arr1N


' Скрытие не заполненный уровней групировки
Private Sub MyHideEmptyLevels()
    On Error Resume Next
    
    ' определим "лист" отчета
    Dim WS As Worksheet
    Set WS = ThisWorkbook.Worksheets(WS2)
    If (WS Is Nothing) Then
        GoTo EndHideEmptyLevels
    End If
    
    ' сканируем данные на уровнях
    Dim Npp As Long
    Npp = 0
    Do
        Npp = Npp + 1
        
        ' определим диапазон текущего уровня
        Dim RngLevel As Range
        Set RngLevel = Nothing
        Set RngLevel = WS.Range(sNM_Level & Npp)
        If (RngLevel Is Nothing) Then
            Exit Do
        End If
        
        ' определим есть ли данные на уровне
        Dim isDataExist As Boolean
        isDataExist = False
        Dim RngCell As Range
        For Each RngCell In RngLevel
            If (Not IsEmpty(RngCell.Value)) Then
                isDataExist = True
                Exit For
            End If
        Next
        
        ' если нет данных, скрываем колонку
        If (Not isDataExist) Then
            RngLevel.Columns.Hidden = True
        End If
        
    Loop ' сканируем данные на уровнях
    
EndHideEmptyLevels:
    On Error GoTo 0
End Sub

Private Sub MySetCheckColumnWidthMode()
    On Error GoTo ErrSetCheckColumnWidthMode
    Call Application.Run(GalLib & "SetIsAdvMode_CheckColumnWidth", True)
    Exit Sub
    On Error GoTo 0
ErrSetCheckColumnWidthMode:
    MsgBox "Для корректной работы отчета, желательно установить надстройку 'GalRepBuilder.xla', версии GalRepBuilder_810_20 и выше..."
End Sub


' Формирование текущего отчета
Sub LoadThisRepFromDB()
    If (GetDBVar(sNM_Devider) = 0) Then
        ' стандартный отчет
        Call PrintToSheet(WS1)
        ThisWorkbook.Worksheets(WS2).Visible = False
    Else
        ' установим режим контроля ширины используемых колонок
        Call MySetCheckColumnWidthMode
        
        ' уровни по кллонкам
        Call PrintToSheet(WS2)
        Call MyHideEmptyLevels
        ThisWorkbook.Worksheets(WS1).Visible = False
    End If
End Sub

    

