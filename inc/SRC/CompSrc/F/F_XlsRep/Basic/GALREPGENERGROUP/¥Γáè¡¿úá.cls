VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ЭтаКнига"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Const sBar As String = "Формирование отчета "

Private Sub Workbook_AddinInstall()
    Call myAddMenu
End Sub

Private Sub Workbook_AddinUninstall()
    Call myDelMenu
End Sub


Private Sub Workbook_Open()
    If (myGetAppVer >= 15) Then
        ' если версия Excel >= 15 (Excel 2013)
        Call myAddMenu
    End If
End Sub



' Добавить меню вызова функционала "Дизайнр отчетов"
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
        .Caption = "Настройка отчетов"
        .OnAction = "RunOptions"
        .Style = msoButtonCaption
    End With
End Sub

' Удалить меню вызова функционала "Дизайнр отчетов"
Private Sub myDelMenu()
    On Error Resume Next
    Application.CommandBars(sBar).Delete
    On Error GoTo 0
End Sub

' Получить номер версии Excel
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

