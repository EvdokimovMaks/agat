VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "��������"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Const sBar As String = "������������ ������ "

Private Sub Workbook_AddinInstall()
    Call myAddMenu
End Sub

Private Sub Workbook_AddinUninstall()
    Call myDelMenu
End Sub


Private Sub Workbook_Open()
    If (myGetAppVer >= 15) Then
        ' ���� ������ Excel >= 15 (Excel 2013)
        Call myAddMenu
    End If
End Sub



' �������� ���� ������ ����������� "������� �������"
Private Sub myAddMenu()
    Call myDelMenu

    On Error GoTo MakeMenu
    Application.CommandBars(sBar).Delete
    On Error GoTo 0
    Exit Sub
MakeMenu:
    Application.CommandBars.Add(sBar).Visible = True
    Application.CommandBars(sBar).Protection = msoBarNoCustomize
    
    With Application.CommandBars(sBar).Controls.Add
        .Caption = "��������� �������"
        .OnAction = "RunOptions"
        .Style = msoButtonCaption
    End With
End Sub

' ������� ���� ������ ����������� "������� �������"
Private Sub myDelMenu()
    On Error Resume Next
    Application.CommandBars(sBar).Delete
    On Error GoTo 0
End Sub

' �������� ����� ������ Excel
Private Function myGetAppVer() As Byte
Dim sVer As String
Dim PozVerDivider As Byte
    myGetAppVer = 0
    sVer = Application.Version
    PozVerDivider = InStr(1, sVer, ".")
    If (PozVerDivider <> 0) Then
        sVer = Mid(sVer, 1, PozVerDivider - 1)
        On Error Resume Next
        myGetAppVer = CByte(sVer)
        On Error GoTo 0
    End If
End Function

