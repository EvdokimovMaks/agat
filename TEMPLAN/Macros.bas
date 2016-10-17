Attribute VB_Name = "Module1"
Sub TemPlan_Paint()
'
' TemPlan_Paint ������
' ��������� ������
'

'
    Range("A5:BD1218").Select
    Selection.FormatConditions.Add Type:=xlExpression, Formula1:="=$BD5=1"
    Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority
    With Selection.FormatConditions(1).Font
        .ThemeColor = xlThemeColorAccent3
        .TintAndShade = -0.249946592608417
    End With
    Selection.FormatConditions(1).StopIfTrue = False
End Sub

Sub TemPlan_Group()
Attribute TemPlan_Group.VB_Description = "���������� ���������"
Attribute TemPlan_Group.VB_ProcData.VB_Invoke_Func = " \n14"
'
' TemPlan_Group ������
' ���������� ���������
'

'
    Dim Cur_cell As Worksheet
    Set Cur_cell = Worksheets(1)
    Dim wRow, wLast_Row
    
    max_Lenth_Otchet = 14
    wRow = 5
    wLast_Row = 5
    
    While Cur_cell.Cells(wRow, 1).Value <> ""
        wRow = wRow + 1
        If Cur_cell.Cells(wRow, 14).Value <> "0" Then
            If wLast_Row <> wRow Then
                Range(Cells(wLast_Row, 1), Cells(wRow, max_Lenth_Otchet)).Select
                Selection.Rows.Group
                wLast_Row = wRow
            End If
        
        End If
    Wend

    Dim wCol, i

    wCol = 9

    For i = 1 To 4
' ������ 10, ����� �� ������ �� ������������ ������
        Range(Cells(10, wCol), Cells(10, wCol + 8)).Select
        Selection.Columns.Group
        wCol = wCol + 12
    Next i

End Sub

Sub tTemplan_Hide()
'
' tTemplan_Hide ������
'

'
    Columns("BD:BD").Select
    Selection.EntireColumn.Hidden = True
End Sub