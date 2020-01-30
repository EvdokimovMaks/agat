Attribute VB_Name = "RepBuilder"
Option Explicit
Option Base 1

Public Const cgxlGal_VarSheet As String = "Gal_VarSheet"
Public Const cgxlGal_TblSheet As String = "Gal_TblSheet"

' ���������� ������� ������
' "Public" - ��� ���� ����� ����������� �������� �� ��������� ����� ������� ���� ������ GalRepbuilder (����� �������� �� � ������� "��������")
Private Const DefaultCopyBlockRowsCount As Long = 0 ' ���������� ����� �� ��������� � ����� ��� ��������� ������� ����� �������
Public CopyBlockRowsCount As Long ' ���������� ����� � ����� ��� ��������� ������� ����� �������
Public IsAdvMode_NotGroupIns As Boolean ' ����� ��������� ������� ������� ������ (Not - ����� False ��� ����� �� ���������)
Public IsAdvMode_CheckColumnWidth As Boolean ' ����� �������� ������ ������������ �������
Public RowCheckColumnWidth As Long ' ������ � ������� ������������� ������ �������


' ==============================================================================
' FIELDS
' ------------------------------------------------------------------------------
' ���������� ����� � ����� ��� ��������� ������� ����� �������
Public Function GetCopyBlockRowsCount() As Long
    GetCopyBlockRowsCount = CopyBlockRowsCount
End Function
Public Sub SetCopyBlockRowsCount(fld As Long)
    CopyBlockRowsCount = fld
End Sub

' ------------------------------------------------------------------------------
' ����� ��������� ������� ������� ������
Public Function GetIsAdvMode_GroupIns() As Boolean
    GetIsAdvMode_GroupIns = Not IsAdvMode_NotGroupIns
End Function
Public Sub SetIsAdvMode_GroupIns(fld As Boolean)
    IsAdvMode_NotGroupIns = Not fld
End Sub

' ------------------------------------------------------------------------------
' ����� �������� ������ ������������ �������
Public Function GetIsAdvMode_CheckColumnWidth() As Boolean
    GetIsAdvMode_CheckColumnWidth = IsAdvMode_CheckColumnWidth
End Function
Public Sub SetIsAdvMode_CheckColumnWidth(fld As Boolean)
    IsAdvMode_CheckColumnWidth = fld
End Sub

' ------------------------------------------------------------------------------
' ������������� ����� ������ RepBuilder
Public Sub InitModule_RepBuilder()
    ' ���������� ����� � ����� ��� ��������� ������� ����� �������
    SetCopyBlockRowsCount (DefaultCopyBlockRowsCount)

    ' ����� ��������� ������� ������� ������
    SetIsAdvMode_GroupIns (True)
    
    ' ����� �������� ������ ������������ �������
    RowCheckColumnWidth = 0  ' ������ � ������� ������������ ������ �������
    SetIsAdvMode_CheckColumnWidth (False) ' ����� �������� ������ ������������ �������
End Sub

' ------------------------------------------------------------------------------
' �������� �� ������� ������ Excel - "������" (�.�. ������ 2003 � �����)
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


' ������� ������������ �� XLS-��
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

' ��������� "������" ������������ ������� "������"
Private Sub MyStoreRightUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepWS As Worksheet
Dim Col, ColBeg, ColEnd As Long
    ' ��������� ������ ���� ������� ����� �������� ������ ������������ �������
    If (Not GetIsAdvMode_CheckColumnWidth) Then
        Exit Sub
    End If
    
    ' ��������� �������� ������ �� ����� ������
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
' ������������ "������" ������������ ������� "������"
Private Sub MyReStoreRightUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepWS As Worksheet
Dim Col, ColBeg, Npp As Long
Dim w As Variant
    ' ��������� ������ ���� ������� ����� �������� ������ ������������ �������
    If (Not GetIsAdvMode_CheckColumnWidth) Then
        Exit Sub
    End If
    
    ' ��������� �������� ������ �� ����� ������
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

' ��������� "������" ������������ �������
Private Sub MyStoreUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepRng As Range
Dim RepWS As Worksheet
Dim Col, ColBeg, ColEnd As Long
    ' ������� �������� � ������ �����������
    Set RepRng = GetMergedRange(RepNM.RefersToRange)
    
    Set RepWS = Range(RepNM).Worksheet
    
    ColBeg = RepRng.Column
    ColEnd = ColBeg + RepRng.Columns.Count - 1
    ReDim ArrColWidth(RepRng.Columns.Count) As Variant
    For Col = ColBeg To ColEnd
        ArrColWidth(Col - ColBeg + 1) = RepWS.Columns(Col).ColumnWidth
    Next Col
    
End Sub
' ������������ "������" ������������ �������
Private Sub MyReStoreUsedColumnWidth(RepNM As Name, ArrColWidth() As Variant)
Dim RepRng As Range
Dim RepWS As Worksheet
Dim Col, ColBeg, Npp As Long
Dim w As Variant
    ' ������� �������� � ������ �����������
    Set RepRng = GetMergedRange(RepNM.RefersToRange)
    
    Set RepWS = Range(RepNM).Worksheet
    
    ColBeg = RepRng.Column
    Col = ColBeg
    For Each w In ArrColWidth
        RepWS.Columns(Col).ColumnWidth = w
        Col = Col + 1
    Next
End Sub

' ��������� �������� ������������ ������������� ��������� ���������� ������� �� �����
Function MyRunCheckValidColCount(RepWS As Worksheet, Col As Long)
Dim MaxRepWSColCount As Long
    MaxRepWSColCount = RepWS.Columns.Count

    If (Col < MaxRepWSColCount) Then
        MyRunCheckValidColCount = True
    Else
        Dim sMess As String
        sMess = "����� �� ����� ����������� �� ���� MS Excel, " & _
        "��������� ����������� ���������� ���������� ������� - " & _
        MaxRepWSColCount & " (��������� " & Col & " )" & " !"
        
        If (MaxRepWSColCount = 256) Then
            ' ���� ������� ������ "������" ������
            If (GetIsOldExcelVersion) Then
                ' MS Excel <= 2003
                sMess = sMess & _
                Chr(13) + "������������: ���������� ������ MS Excel ������ 2007 ��� ����."
            Else
                ' MS Excel > 2003
                sMess = sMess & _
                Chr(13) + "������������:" & _
                Chr(13) + "1. ������� XLT-������ '��������� ���' - '������ Excel � ���������� ��������'" & _
                Chr(13) + "2. ��������� ��� ��� ������������ ������ ����������� ����� ������ (*.XLTM)"
            End If
        End If

        Call MsgBox(sMess, vbCritical, "�������� ��� ������������ ������", 0, 0)
    
        MyRunCheckValidColCount = False
    End If
    
End Function

' �������� �������� ��������
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
    
    ' ��������� ��� "�����" � ������
    For Each RepNM In RepNMs
        On Error GoTo 0
        
        ' ������������ ������ �������
        If (IsArray(RepNM)) Then
        
            Set DBNM = FindDBNameByRepName(RepNM, DBWS)
            TmpLen = GetArrayLength(DBNM, DBNMs) ' ���-�� ��������� � �������
            
            ' ������������ ������ �� "������" �������
            If (TmpLen > 0) Then
            
                sTmpArrNM = RepNM.Name
                
                ' ������� �������� ������� � ������ �����������
                Dim RepRng As Range
                Set RepRng = GetMergedRange(RepNM.RefersToRange)
                sOldReferTo = "='" & RepRng.Worksheet.Name & "'!" & RepRng.Address
                    
                ' ���������� ��������� ���������� �������
                Dim MustBeCol As Long
                MustBeCol = RepRng.Columns(RepRng.Columns.Count).Column
                MustBeCol = MustBeCol + TmpLen * RepRng.Columns.Count
                If (Not MyRunCheckValidColCount(RepWS, MustBeCol)) Then
                    On Error GoTo 0
                    Exit Function
                End If
                
                ' �������� "������" ������������ �������
                Call MyStoreUsedColumnWidth(RepNM, ArrUsedColWidth)
                
                ' �������� "������" ������������ ������� "������"
                Call MyStoreRightUsedColumnWidth(RepNM, ArrRightUsedColWidth)
           
                ' ���� ������� ��������� "�� ������� ������"
                On Error GoTo ErrInsMultyRange
                For TmpInd = TmpLen To 1 Step -1
                    sTmpArrElNM = SubArrayPostfix(sTmpArrNM) & "_" & Trim(Str(TmpInd))
                    sTmpArrElNM = GetSimpeSName(sTmpArrElNM)
                    RepWS.Names.Add Name:=sTmpArrElNM, RefersTo:=sOldReferTo
                    
                    ' ������������ "������" ������������ �������
                    Call MyReStoreUsedColumnWidth(RepNM, ArrUsedColWidth)
           
                    If (TmpInd > 1) Then
                        Range(sOldReferTo).Copy
                        Range(sOldReferTo).Insert Shift:=xlToRight
                    End If
                Next TmpInd
                On Error GoTo 0
                
                ' ������������ "������" ������������ ������� "������"
                Call MyReStoreRightUsedColumnWidth(RepNM, ArrRightUsedColWidth)
                
                ' ���� ���� ������, �� ��� ������...
                GoTo OkIns
                
ErrInsMultyRange:
                On Error GoTo 0
                Call MsgBox("������ �������������� ����������", _
                vbCritical, "������ ������������ ������", 0, 0)
                Exit Function

OkIns:
                On Error GoTo 0
                RepWS.Names(sTmpArrNM).Delete
            
            End If ' ������������ ������ �� "������" ������� - If (TmpLen > 0)
        
        End If '������������ ������ ������� - If (IsArray(RepNM))
        
    Next ' ��������� ��� "�����" � ������ (RepNM)
    
AddArrayFld = True
End Function

' ������� �� �������� XLS-�� � XLS-����� ��� �������� � XLS-������ ����������
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
    
    '������� ���� �������������� ������
    Set DBWS = DBWB.Worksheets(cgxlGal_VarSheet)
    Set DBVars = GetDBVarCollection(DBWS)
    Set RepVars = GetRepVarCollection(RepWS)
    If (Not AddArrayFld(DBWS, DBVars, RepWS, RepVars)) Then
        PrintAllVar = False
        GoTo EndPrint
    End If
    '������� ����������
    Set RepVars = GetRepVarCollection(RepWS)
    
    For Each RepVar In RepVars
        RepVar.RefersToRange.Value = Empty
        Set DBVar = FindDBNameByRepName(RepVar, DBWS)
        If Not (DBVar Is Nothing) Then
            On Error GoTo ErrPrintAllVar
            ' ��������� �������� �� XLS-��
            RepVar.RefersToRange.Value = DBVar.RefersToRange.Value
            ' ��������� ����������� �� XLS-��
            Call MyAddComments(DBVar.RefersToRange, RepVar.RefersToRange)
ErrPrintAllVar:
            On Error GoTo 0
        End If
    Next
EndPrint:
    Application.Calculation = xlCalculationAutomatic
    Application.ScreenUpdating = OldScreenUpdatind
End Function

' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� (�������� ������ ����������)
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
    
    '������� ���� �������������� ������
    Set DBWS = DBWB.Worksheets(cgxlGal_VarSheet)
    Set DBVars = GetDBVarCollection(DBWS)
    Set RepVars = GetRepVarCollection(RepWS)
    If (Not AddArrayFld(DBWS, DBVars, RepWS, RepVars)) Then
        PrintAllVar_WithoutEmptyVar = False
        GoTo EndPrint
    End If
    '������� ����������
    Set RepVars = GetRepVarCollection(RepWS)
    
    For Each RepVar In RepVars
        RepVar.RefersToRange.Value = Empty
        Set DBVar = FindDBNameByRepName(RepVar, DBWS)
        If Not (DBVar Is Nothing) Then
            On Error GoTo ErrPrintAllVar
            If Not IsEmpty(DBVar.RefersToRange.Value) Then
              ' ��������� �������� �� XLS-��
              RepVar.RefersToRange.Value = DBVar.RefersToRange.Value
              ' ��������� ����������� �� XLS-��
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

' �������� ������ �������
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
        ' ������� ������ �������, ����� ����� ��������
        TmpRng.Delete Shift:=xlUp
    Next i
End Sub

' ������������� ��������� �������
Private Sub CorrectRangeTbl(RepTbl As Name, RepKolRow As Long)
    If (Not IsValidName(RepTbl)) Then
        Exit Sub
    End If
    If (RepKolRow = 0) Then
        ' ���� ������� "������", �� ������ �� �� ������
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

' ������� �������� �������
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
    
    ' ���� ������� "������", �� ������ �� �� ������
    If ((DBRng.Rows.Count - 1) = 0) Then
        Call MyDeleteEmptyRepTbl(RepTbl)
        PrintTblFlds = True
        GoTo EndPrint
    End If
    
    ' ������� ���� �������������� ������
    Set DBTblFlds = GetDBTblFldCollectionByTbl(DBWS, DBTbl)
    Set RepTblFlds = GetRepTblFldCollectionByTbl(DBWS, RepWS, RepTbl)
    If (Not AddArrayFld(DBWS, DBTblFlds, RepWS, RepTblFlds)) Then
        PrintTblFlds = False
        GoTo EndPrint
    End If
    ' ������� �������� �������
    Set RepTbl = MakeTblNameByAllTblFld(DBWS, RepWS, RepTbl.Name)
    ' ������� ����������
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
                MsgBox "������� � ������ CRep=" & CRep _
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
        ' ���� ������� ����� ��������� ������� ������� ������
        If (DBKolRow > 1) Then
            ' ���� � ������� ����� ����� ������
            ' ��������� ������� ����� � ��� �����
            Dim EmptySheetAllRowsCount As Long
            EmptySheetAllRowsCount = DBWS.Rows.Count
            
            ' 1-� ������ � ��, � ������� ��� ������
            Dim BegEmptyRow As Long
            BegEmptyRow = DBWS.UsedRange.Row + DBWS.UsedRange.Rows.Count
        
            If (BegEmptyRow >= EmptySheetAllRowsCount) Then
                MsgBox "������� ����� ����� � ������!" _
                & Chr(13) & "Excel � ���� �� ���������..."
                
                PrintTblFlds = False
                GoTo EndPrint
            End If
            
            ' ���������� ����� ������� ���� �������� � �����
            Dim InsRepRowCount As Long
            InsRepRowCount = (DBKolRow - 1) * (RepKolRow)
        
            Dim EndEmptyRow As Long
            EndEmptyRow = BegEmptyRow + InsRepRowCount - 1
            
            ' ������� ������ ������ � �����
DebStr ("GetCopyBlockRowsCount=" & GetCopyBlockRowsCount)
DebStr ("InsertedRows_BEG=" & Now())
            Dim tmpInsertedRowsCount As Long ' ���������� ��� ����������� �����
            tmpInsertedRowsCount = 0
            Do
                EndEmptyRow = BegEmptyRow + (InsRepRowCount - tmpInsertedRowsCount) - 1
                If (EndEmptyRow > EmptySheetAllRowsCount) Then
                    EndEmptyRow = EmptySheetAllRowsCount
                End If
                If (GetCopyBlockRowsCount <> 0) Then
                    ' ���� ���� ����������� �� ���������� ���������� �������
                    If (EndEmptyRow > (BegEmptyRow + GetCopyBlockRowsCount - 1)) Then
                        EndEmptyRow = BegEmptyRow + GetCopyBlockRowsCount - 1
                    End If
                End If
                DBWS.Rows(BegEmptyRow & ":" & EndEmptyRow).Copy
                ' ������� ����� ����� � ����� �������, ����� ���� ��������� � ������,
                ' ���������� ������� ���������� ��� ������� ���������� ��� ����������� �����
                Rows(TmpRng.Offset(RepKolRow + tmpInsertedRowsCount, 0).Row).Insert Shift:=xlDown
                Application.CutCopyMode = False
                
                tmpInsertedRowsCount = tmpInsertedRowsCount + EndEmptyRow - BegEmptyRow + 1
            Loop Until (tmpInsertedRowsCount >= InsRepRowCount)
            If (tmpInsertedRowsCount <> InsRepRowCount) Then
                MsgBox "�������� " & tmpInsertedRowsCount & " �����" _
                & Chr(13) & "� ���� ���� " & InsRepRowCount & " �����!"
            End If
DebStr ("InsertedRows_END=" & Now())
            
            ' ����������� ��������� ����� �����
            BegRow = TmpRng.Offset(RepKolRow, 0).Row
            EndRow = BegRow + InsRepRowCount - 1
            
DebStr ("��������� ��������������_BEG=" & Now())
            ' ��������� �������������� ����� �����
            Dim tmpBegRow, tmpEndRow As Long
            ' ��������� �������������� �� tmpDeltaFormatRows �����, ����� ������: "���������� ������� ������� ������" 1004
            Const tmpDeltaFormatRows As Long = 1000
            
            tmpBegRow = BegRow
            Do
                If ((tmpBegRow + tmpDeltaFormatRows - 1) > EndRow) Then
                    tmpEndRow = EndRow
                Else
                    tmpEndRow = tmpBegRow + tmpDeltaFormatRows - 1
                End If
                ' ��������� ����������� ��������� ����� �����
                sBegRow = Trim(Str(tmpBegRow))
                sEndRow = Trim(Str(tmpEndRow))
                sRangeRow = Trim(sBegRow & ":" & sEndRow)
                
                ' ��������� �������������� � ������� ����� �����
                RepWS.Rows(TmpRng.Row & ":" & (TmpRng.Row + TmpRng.Rows.Count - 1)).Copy
                RepWS.Paste Destination:=RepWS.Rows(sRangeRow)
                
                tmpBegRow = tmpEndRow + 1
            Loop Until (tmpEndRow = EndRow)
DebStr ("��������� ��������������_END=" & Now())
            
        End If ' ���� � ������� ����� ����� ������
    End If ' ���� ������� ����� ��������� ������� ������� ������
    
DebStr ("��������� �������� � ������_BEG=" & Now())
    For i = 1 To DBKolRow
        If (Not GetIsAdvMode_GroupIns) Then
            ' ���� �������� ����� ��������� ������� ������� ������
        
            ' ������� ����� ������
            If (i < DBKolRow) Then
                ' ������� ��� ���� ����� ������ �������
                BegRow = TmpRng.Offset(RepKolRow * (i - 1), 0).Row
                EndRow = BegRow + (RepKolRow - 1)
                sBegRow = Trim(Str(BegRow))
                sEndRow = Trim(Str(EndRow))
                sRangeRow = Trim(sBegRow & ":" & sEndRow)
                ' ������� ����� ������ �������
                Rows(sRangeRow).Copy
                Rows(TmpRng.Offset(RepKolRow * i, 0).Row).Insert Shift:=xlDown
            End If
        End If ' ���� �������� ����� ��������� ������� ������� ������
        
        ' ������� ������
        Set InsertedRng = TmpRng.Offset(RepKolRow * (i - 1), 0)
        For RTmpRng = 1 To InsertedRng.Rows.Count
            For CTmpRng = 1 To InsertedRng.Columns.Count
                If Not IsEmpty(InsertedRng(RTmpRng, CTmpRng)) Then
                    ArrRepValue(RepKolRow * (i - 1) + RTmpRng, CTmpRng) _
                    = InsertedRng(RTmpRng, CTmpRng).Formula
                End If
            Next CTmpRng
        Next RTmpRng
        
        ' ������� �������� �� ��
        For j = 1 To RepTblFlds.Count
            If (ArrDBRepRC(j, 1, 1) <> 0) Then
                RDB = i + ArrDBRepRC(j, 1, 1)
                CDB = ArrDBRepRC(j, 1, 2)
                RRep = ArrDBRepRC(j, 2, 1)
                CRep = ArrDBRepRC(j, 2, 2)

                If CRep < 0 Then
                    MsgBox "��� c��� ����� CRep=" & CRep
                End If
                
                ' ��������� �������� �� XLS-��
                ArrRepValue(RepKolRow * (i - 1) + RRep, CRep) = DBRng(RDB, CDB).Value
                
                ' ��������� ����������� �� XLS-��
                Call MyAddComments(DBRng(RDB, CDB), TmpRng.Offset(RepKolRow * (i - 1), 0)(RRep, CRep))
            End If
        Next j
        
    Next i
DebStr ("��������� �������� � ������_END=" & Now())
    
DebStr ("��������� �������� �� �������_BEG=" & Now())
    ' ����� �/� ������
    Dim Cell1, Cell2 As Range
    Dim r1, c1, r2, c2 As Long
    r1 = TmpRng.Row
    c1 = TmpRng.Column
    r2 = r1 + DBKolRow * RepKolRow - 1
    c2 = c1 + TmpRng.Columns.Count - 1
    Set Cell1 = RepWS.Cells(r1, c1)
    Set Cell2 = RepWS.Cells(r2, c2)
    Call MySetRangeValueFromArray(RepWS.Range(Cell1, Cell2), ArrRepValue)
DebStr ("��������� �������� �� �������_END=" & Now())
    
DebStr ("�������������� ��������� �������_BEG=" & Now())
    ' �������������� ��������� �������
    Call CorrectRangeTbl(RepTbl, DBKolRow * RepKolRow)
    For Each RepTblFld In RepTblFlds
        Call CorrectRangeTbl(RepTblFld, DBKolRow * RepKolRow)
    Next
DebStr ("�������������� ��������� �������_END=" & Now())

EndPrint:
    On Error Resume Next
    OldActiveCell.Activate
    On Error GoTo 0
DebStr ("PrintTblFlds_END=" & Now())
End Function

' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ �������
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
            ' ���� ������� � ������ ���, �� ������ ��
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

' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� � �������
Public Sub PrintAll(DBWB As Workbook, RepWS As Worksheet)
    If (Not PrintAllVar(DBWB, RepWS)) Then
        Exit Sub
    End If
    If (Not PrintAllTbl(DBWB, RepWS)) Then
        Exit Sub
    End If
    RepWS.Calculate
End Sub
' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� � ������� (�������� ������ ����������)
Public Sub PrintAll_WithoutEmptyVar(DBWB As Workbook, RepWS As Worksheet)
    If (Not PrintAllVar_WithoutEmptyVar(DBWB, RepWS)) Then
        Exit Sub
    End If
    If (Not PrintAllTbl(DBWB, RepWS)) Then
        Exit Sub
    End If
    RepWS.Calculate
End Sub


' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� � �������
Private Sub PrintAllToSWS_Common(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
Dim RepWS  As Worksheet
    
    ' ������ � ������� ������������ ������ �������
    RowCheckColumnWidth = 0
    
    On Error GoTo ErrRepWS
    Set RepWS = RepWB.Worksheets(sRepWS)
    On Error GoTo 0
    RepWS.Activate
    Call PrintAll(DBWB, RepWS)
    Exit Sub
ErrRepWS:
    MsgBox ("�� ������ ���� ������� �����: " & sRepWS)
    Exit Sub
End Sub

' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� � �������
' ������� ����� ��������� ������� ������� ������
Public Sub PrintAllToSWS(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
    Call PrintAllToSWS_Common(DBWB, RepWB, sRepWS)
End Sub

' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� � �������
' ������� ����� ��������� ������� ������� ������
Public Sub PrintAllToSWS_Adv01(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
    Call PrintAllToSWS_Common(DBWB, RepWB, sRepWS)
End Sub

' ������� �� �������� XLS-�� � XLS-����� ���,
' �������� � XLS-������ ���������� � �������
' ������� ����� ��������� ������� ������� ������
Public Sub PrintAllToSWS_Adv02(DBWB As Workbook, RepWB As Workbook, sRepWS As String)
    Call PrintAllToSWS_Common(DBWB, RepWB, sRepWS)
End Sub





