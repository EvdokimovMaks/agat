Attribute VB_Name = "InitButton"
Const sBar As String = "Форматирование отчета"
Const sButton As String = "Настройка отчетов"

' удаление кнопки Настройка отчетов и "Форматирование отчета"
' панель перенесена в GalRepGenerGroup.xla
Sub DeleteButton()
Dim i, j As Integer
For i = 1 To Application.CommandBars.Count Step 1
  If (Application.CommandBars.Item(i).Name = sBar) Then
    For j = 1 To Application.CommandBars.Item(i).Controls.Count Step 1
    If (Application.CommandBars.Item(i).Controls.Item(j).Caption = sButton) Then
      Application.CommandBars.Item(i).Controls.Item(j).Delete
    End If
    Application.CommandBars.Item(i).Delete
    Next j
  End If
Next i

End Sub
