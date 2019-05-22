VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "Дизайнер отчетов"
   ClientHeight    =   5970
   ClientLeft      =   30
   ClientTop       =   330
   ClientWidth     =   4680
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private CurActiveDBVarName As Name
Private CurActiveDBTblName As Name
Private CurActiveDBTblFldName As Name

Private CurActiveRepVarName As Name
Private CurActiveRepTblName As Name
Private CurActiveRepTblFldName As Name

Dim ArrVar() As String
Dim ArrTbl() As String
Dim ArrTblFld() As String

Private Function IsStEmpty(St As String) As Boolean
    IsStEmpty = (Trim(St = ""))
End Function
Private Function IsStRefErr(sRef As String) As Boolean
    IsStRefErr = False
    If (IsStEmpty(sRef)) Then
        Exit Function
    End If
    On Error GoTo RefErr
    Dim r As Range
    Dim Str As String
    Str = sRef
    If Application.ReferenceStyle = xlR1C1 Then
      Str = Application.ConvertFormula(Str, xlR1C1, xlA1)
    End If
    Set r = Range("=" & Str)
    On Error GoTo 0
    Exit Function
RefErr:
    IsStRefErr = True
End Function
Private Function CheckStRefErr(sRef As String) As Boolean
    CheckStRefErr = True
    If (IsStRefErr(sRef)) Then
        MsgBox ("Ошибка описания ссылки!")
        CheckStRefErr = False
    End If
End Function

Private Sub DelName(NM As Name)
    NM.Delete
    Set NM = Nothing
End Sub
Private Sub DelRangeName(NM As Name)
    UserForm3.Show
  
    If UserForm3.isExitFromDel = True Then
      Exit Sub
    End If
    
    If UserForm3.OptionButton1.Value = True Then
      Range(NM.Name).Delete (xlShiftToLeft)
      Call DelName(NM)
    End If
    
    If UserForm3.OptionButton2.Value = True Then
      Range(NM.Name).Delete (xlShiftUp)
      Call DelName(NM)
    End If
    
    If UserForm3.OptionButton3.Value = True Then
      Range(NM.Name).Clear
      Call DelName(NM)
    End If
    Unload UserForm3
End Sub

Private Function isCurActiveRepVarNameNothing() As Boolean
    isCurActiveRepVarNameNothing = (CurActiveRepVarName Is Nothing)

    isCurActiveRepVarNameNothing = True
    If (CurActiveRepVarName Is Nothing) Then
        Exit Function
    End If
    On Error GoTo ErrName
    Dim r As Range
    Set r = Range(CurActiveRepVarName)
    On Error GoTo 0
    isCurActiveRepVarNameNothing = False
    Exit Function
ErrName:
    Call DelName(CurActiveRepVarName)
End Function
Private Function isCurActiveRepTblNameNothing() As Boolean
    isCurActiveRepTblNameNothing = True
    If (CurActiveRepTblName Is Nothing) Then
        Exit Function
    End If
    On Error GoTo ErrName
    Dim r As Range
    Set r = Range(CurActiveRepTblName)
    On Error GoTo 0
    isCurActiveRepTblNameNothing = False
    Exit Function
ErrName:
    Call DelName(CurActiveRepTblName)
End Function
Private Function isCurActiveRepTblFldNameNothing() As Boolean
    isCurActiveRepTblFldNameNothing = True
    If (CurActiveRepTblFldName Is Nothing) Then
        Exit Function
    End If
    On Error GoTo ErrName
    Dim r As Range
    Set r = Range(CurActiveRepTblFldName)
    On Error GoTo 0
    isCurActiveRepTblFldNameNothing = False
    Exit Function
ErrName:
    Call DelName(CurActiveRepTblFldName)
End Function

Private Sub CheckTblRefForAll()
    Set CurActiveRepTblName = MakeTblNameByAllTblFld(DBTblWorkSheet, RepWorkSheet, GetCurTblSName)
    If (isCurActiveRepTblNameNothing) Then
        Exit Sub
    End If
    If Application.ReferenceStyle = xlR1C1 Then
      RefEdit2.Value = CurActiveRepTblName.RefersToRange.Address(True, True, xlR1C1)
    Else
      RefEdit2.Value = CurActiveRepTblName.RefersToRange.Address
    End If
End Sub

Private Sub SetListVar()
    ReDim ArrVar(DBVarNames.Count - 1, 1)
    Dim r As Integer
    For r = 1 To DBVarNames.Count
        ArrVar(r - 1, 0) = GetSimpeSName(DBVarNames(r).Name)
        ArrVar(r - 1, 1) = DBVarNames(r).Name
    Next
    ListBox2.List() = ArrVar
    If (ListBox2.ListIndex = -1) And (ListBox2.ListCount > 0) Then
        ListBox2.ListIndex = 0
    End If
End Sub
Private Sub SetListTbl()
    ReDim ArrTbl(DBTblNames.Count - 1, 1)
    Dim r As Integer
    For r = 1 To DBTblNames.Count
        ArrTbl(r - 1, 0) = GetSimpeSName(DBTblNames(r).Name)
        ArrTbl(r - 1, 1) = DBTblNames(r).Name
    Next
    ComboBox1.List() = ArrTbl
    If (ComboBox1.ListIndex = -1) And (ComboBox1.ListCount > 0) Then
        ComboBox1.ListIndex = 0
    End If
End Sub
Private Sub SetListTblFld(sTbl As String)
    'Set DBTblFldNames = GetDBTblFldCollectionBySTbl(DBTblWorkSheet, sTbl)
    Set DBTblFldNames = GetDBTblFldCollectionBySTbl_UniqArray(DBTblWorkSheet, sTbl)
    
    If (DBTblFldNames Is Nothing) Then
        Exit Sub
    End If
    If (DBTblFldNames.Count = 0) Then
        MsgBox ("У таблицы нет полей")
        Exit Sub
    End If
    
    ReDim ArrTblFld(DBTblFldNames.Count - 1, 1)
    Dim r As Integer
    For r = 1 To DBTblFldNames.Count
        ArrTblFld(r - 1, 0) = GetSimpeSName(DBTblFldNames(r).Name)
        ArrTblFld(r - 1, 1) = DBTblFldNames(r).Name
    Next
    ListBox1.List() = ArrTblFld
    If (ListBox1.ListIndex = -1) And (ListBox1.ListCount > 0) Then
        ListBox1.ListIndex = 0
    End If
End Sub
Private Function GetCurVarSName() As String
GetCurVarSName = ArrVar(ListBox2.ListIndex, 1)
End Function
Private Function GetCurTblSName() As String
GetCurTblSName = ArrTbl(ComboBox1.ListIndex, 1)
End Function
Private Function GetCurTblFldSName() As String
GetCurTblFldSName = ArrTblFld(ListBox1.ListIndex, 1)
End Function

Private Sub ComboBox1_Change()
    ActiveCell.Activate
    
    Dim SNM As String
    SNM = GetCurTblSName
    Set CurActiveDBTblName = DBTblNames(SNM)
    
    RefEdit2.Value = Empty
    Set CurActiveRepTblName = FindRepNameByDBName(CurActiveDBTblName, RepWorkSheet)
    If (Not isCurActiveRepTblNameNothing) Then
        On Error Resume Next
        If Application.ReferenceStyle = xlR1C1 Then
          RefEdit2.Value = CurActiveRepTblName.RefersToRange.Address(True, True, xlR1C1)
        Else
          RefEdit2.Value = CurActiveRepTblName.RefersToRange.Address
        End If
        
        Range(CurActiveRepTblName.Name).Select
        On Error GoTo 0
    End If
    
    SetListTblFld (GetCurTblSName)
End Sub

Private Sub CommandButton4_Click()
Dim OldRng As Range
Dim isNew, isDel As Boolean
Dim SNM As String
Dim sRefNM As String
    SNM = GetCurVarSName
    sRefNM = RefEdit3.Value
    If (Not CheckStRefErr(sRefNM)) Then
        Exit Sub
    End If
    
    isNew = isCurActiveRepVarNameNothing
    isDel = (IsStEmpty(sRefNM)) And (Not isNew)
    If (isDel) Then
        Call DelRangeName(CurActiveRepVarName)
        Exit Sub
    End If
    If (isNew) Then
        If (IsStEmpty(sRefNM)) Then
            Exit Sub
        End If
        Dim snewNM As String
        snewNM = MakeRepSNameFromDBSName(SNM)
        RepWorkSheet.Names.Add _
            Name:=snewNM, _
            RefersTo:="=" & sRefNM
        Set CurActiveRepVarName = RepVarNames(snewNM)
    Else
        Set OldRng = Range(CurActiveRepVarName.Name)
        Range(CurActiveRepVarName.Name).Copy
        CurActiveRepVarName.RefersTo = "=" & sRefNM
        Range(CurActiveRepVarName.Name).PasteSpecial _
            Paste:=xlFormats, _
            Operation:=xlNone, _
            SkipBlanks:=False, _
            Transpose:=False
        Application.CutCopyMode = False
        OldRng.Clear
    End If
    Range(CurActiveRepVarName.Name).Value = GetSimpeSName(CurActiveRepVarName.Name)
    Range(CurActiveRepVarName.Name).Select
End Sub


Private Sub CommandButton3_Click()
Dim OldRng As Range
Dim isNew, isDel As Boolean
Dim SNM As String
Dim sRefNM As String
    SNM = GetCurTblSName
    
    sRefNM = RefEdit2.Value
    If (Not CheckStRefErr(sRefNM)) Then
        Exit Sub
    End If
    
    isNew = isCurActiveRepTblNameNothing
    isDel = (IsStEmpty(sRefNM)) And (Not isNew)
    If (isDel) Then
        Call DelRangeName(CurActiveRepTblName)
        Exit Sub
    End If
    If (isNew) Then
        If (IsStEmpty(sRefNM)) Then
            Exit Sub
        End If
        If Application.ReferenceStyle = xlR1C1 Then
          sRefNM = Application.ConvertFormula(sRefNM, xlR1C1, xlA1)
        End If
        Dim snewNM As String
        snewNM = MakeRepSNameFromDBSName(SNM)
        RepWorkSheet.Names.Add _
            Name:=snewNM, _
            RefersTo:="=" & sRefNM
        Set CurActiveRepTblName = RepTblNames(snewNM)
        On Error GoTo 0
        GoTo InEnd
    Else
        On Error GoTo OnErr
        Dim R1, C1, R2, C2 As Integer
        If Application.ReferenceStyle = xlR1C1 Then
          sRefNM = Application.ConvertFormula(sRefNM, xlR1C1, xlA1)
        End If
        R1 = RepWorkSheet.Range(sRefNM).Row
        C1 = RepWorkSheet.Range(sRefNM).Column
        'RepWorkSheet.Range(CurActiveRepTblName.Name).Select
        RepWorkSheet.Range(CurActiveRepTblName.Name).Cut
        RepWorkSheet.Range(RepWorkSheet.Cells(R1, C1), RepWorkSheet.Cells(R1, C1)).Select
        RepWorkSheet.Paste
        CurActiveRepTblName.RefersTo = "=" & sRefNM
        Application.CutCopyMode = False
        On Error GoTo 0
        GoTo InEnd
    End If
OnErr:
    MsgBox ("Ошибка при копировании...")
InEnd:
    CheckTblRefForAll
    Range(CurActiveRepTblName.Name).Select
    
End Sub

Private Sub CommandButton1_Click()
Dim OldRng As Range
Dim isNew, isDel As Boolean
Dim SNM As String
Dim sRefNM As String
    SNM = GetCurTblFldSName
    sRefNM = RefEdit1.Value
    If (Not CheckStRefErr(sRefNM)) Then
        Exit Sub
    End If
    
    isNew = isCurActiveRepTblFldNameNothing
    isDel = (IsStEmpty(sRefNM)) And (Not isNew)
    If (isDel) Then
        Call DelRangeName(CurActiveRepTblFldName)
        Exit Sub
    End If
    If (isNew) Then
        If (IsStEmpty(sRefNM)) Then
            Exit Sub
        End If
        Dim snewNM As String
        snewNM = MakeRepSNameFromDBSName(SNM)
        RepWorkSheet.Names.Add _
            Name:=snewNM, _
            RefersTo:="=" & sRefNM
        Set CurActiveRepTblFldName = RepTblFldNames(snewNM)
        ' создадим заодно и таблицу
        'If (isCurActiveRepTblNameNothing) Then
        '  Set CurActiveRepTblName = CurActiveRepTblFldName
        'End If
    Else
        Set OldRng = Range(CurActiveRepTblFldName.Name)
        Range(CurActiveRepTblFldName.Name).Copy
        CurActiveRepTblFldName.RefersTo = "=" & sRefNM
        Range(CurActiveRepTblFldName.Name).PasteSpecial _
            Paste:=xlFormats, _
            Operation:=xlNone, _
            SkipBlanks:=False, _
            Transpose:=False
        Application.CutCopyMode = False
        OldRng.Clear
    End If
    CheckTblRefForAll
    Range(CurActiveRepTblFldName.Name).Value = GetSimpeSName(CurActiveRepTblFldName.Name)
    Range(CurActiveRepTblFldName.Name).Select
End Sub

Private Sub CommandButton2_Click()
    UserForm1.Hide
    Unload UserForm1
End Sub

Private Sub ListBox1_Change()
    ActiveCell.Activate
    
    Dim SNM As String
    SNM = GetCurTblFldSName
    Set CurActiveDBTblFldName = DBTblFldNames(SNM)
    
    RefEdit1.Value = Empty
    Set CurActiveRepTblFldName = FindRepNameByDBName(CurActiveDBTblFldName, RepWorkSheet)
    If (Not isCurActiveRepTblFldNameNothing) Then
        On Error Resume Next
        If Application.ReferenceStyle = xlR1C1 Then
          RefEdit1.Value = CurActiveRepTblFldName.RefersToRange.Address(True, True, xlR1C1)
        Else
          RefEdit1.Value = CurActiveRepTblFldName.RefersToRange.Address
        End If
        Range(CurActiveRepTblFldName.Name).Select
        On Error GoTo 0
    End If
End Sub

Private Sub ListBox2_Change()
    ActiveCell.Activate
    
    Dim SNM As String
    SNM = GetCurVarSName
    Set CurActiveDBVarName = DBVarNames(SNM)
    
    RefEdit3.Value = Empty
    Set CurActiveRepVarName = FindRepNameByDBName(CurActiveDBVarName, RepWorkSheet)
    If (Not isCurActiveRepVarNameNothing) Then
        On Error Resume Next
        If Application.ReferenceStyle = xlR1C1 Then
          RefEdit3.Value = CurActiveRepVarName.RefersToRange.Address(True, True, xlR1C1)
        Else
          RefEdit3.Value = CurActiveRepVarName.RefersToRange.Address
        End If
        Range(CurActiveRepVarName.Name).Select
        On Error GoTo 0
    End If

End Sub

Private Sub UserForm_Activate()
    SetListVar
    SetListTbl
End Sub

