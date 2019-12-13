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
Dim Ctrl As Control
    On Error Resume Next
    Application.CommandBars(sBar).Delete
    On Error GoTo 0
    
    On Error GoTo MakeMenu
    Application.CommandBars(sBar).Delete
    On Error GoTo 0
    Exit Sub
MakeMenu:
    Application.CommandBars.Add(sBar).Visible = True
    With Application.CommandBars(sBar).Controls.Add
        .Caption = "Настройка отчетов"
        .OnAction = "RunOptions"
        .Style = msoButtonCaption
    End With
End Sub

Private Sub Workbook_AddinUninstall()
    On Error Resume Next
    Application.CommandBars(sBar).Delete
    On Error GoTo 0
End Sub
