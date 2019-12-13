Attribute VB_Name = "GroupMac"
'-------------------------------------------------------------------------------
'
'
'-------------------------------------------------------------------------------
Sub BuildReport(DBWB As Workbook, RepWB As Workbook)
  Dim i As Integer
  Dim ListName As String
  Dim sStrGroup As String
  Dim bOptionSheet
  On Error GoTo nextG
  iCount = 0
  bOptionSheet = False
   For i = 1 To ActiveWorkbook.Worksheets.Count
    If UCase(ActiveWorkbook.Worksheets.Item(i).Name) = "GAL_OPTIONS" Then bOptionSheet = True
   Next i
   If Not bOptionSheet Then
      MsgBox "Отсутствует лист Gal_Options. Возможно, вы забыли сформировать параметры формирования отчетов.", vbCritical
      Exit Sub
   End If
   
  If Not (DBWB Is Nothing) Then
   For i = 1 To ActiveWorkbook.Worksheets.Count
nextList:
    If UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_VARSHEET" And _
       UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_TBLSHEET" And _
       UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_OPTIONS" Then
       ListName = ActiveWorkbook.Worksheets.Item(i).Name
       If Sheets("Gal_Options").Range("Формирование_" & ListName).Value = True Then
          ActiveWorkbook.Sheets(ListName).Select
          Call PrintAllToSWS(DBWB, RepWB, ListName)
          If Sheets("Gal_Options").Range("Группировка_" & ListName).Value = True Then
            sStrGroup = Sheets("Gal_Options").Range("Поле_группировки_" & ListName).Value
            If sStrGroup <> "" Then
               ActiveWorkbook.Sheets(ListName).Select
               Call GroupArea(sStrGroup)
               If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Заголовки_" & ListName).Value = True Then
                 Call ShowAllGroupHeaders(sStrGroup)
               Else
                 Call HideAllGroupHeaders(sStrGroup)
               End If
            End If
          End If
       End If
    End If
   Next i
  End If
 Exit Sub
nextG:
  MsgBox "Error: Возможно выбранное поле не подходит для группировки.", vbCritical, _
          "Ошибка на листе \"" & ActiveWorkbook.ActiveSheet.Name & " \ ""
  If i <> ActiveWorkbook.Worksheets.Count Then
     i = i + 1
     GoTo nextList
 End If
End Sub

'-------------------------------------------------------------------------------
' сгруппировать данные на основе специального поля Level - уровень группировки
' в текущей строке
' AreaName - область со значениями этого поля.
' группироваться будут все СТРОКИ этой области
'-------------------------------------------------------------------------------
Sub GroupArea(AreaName As String)
  Dim Levels As Variant
  Dim C As Variant
  Dim RangeName As String
  ' максимальное кол-во группировок в Excel - 8
  Levels = Array(0, 0, 0, 0, 0, 0, 0, 0, 0)
  For Each C In Range(AreaName).Cells
    If Not IsEmpty(C.Value) And (C.Value > 0) And (C.Value <= 8) Then
      If Levels(C.Value) = 0 Then  ' нашли начало группировки
        Levels(C.Value) = C.Row
      Else                           ' нашли конец группировки
        RangeName = "A" & Levels(C.Value) & ":A" & C.Row - 1
        Range(RangeName).Rows.Group
        Levels(C.Value) = 0
      End If
    End If
  Next
End Sub
Sub HideGroupHeaders(AreaName As String, isHide As Boolean)
  Dim Levels As Variant
  Dim C As Variant
  Dim RangeName As String
  
  ' максимальное кол-во группировок - 20
  Levels = Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
  For Each C In Range(AreaName).Cells
    If Not IsEmpty(C.Value) And (C.Value > 0) And (C.Value <= 8) Then
      If Levels(C.Value) = 0 Then    ' нашли начало группировки
        If isHide Then
          C.EntireRow.Hidden = isHide
        End If
        Levels(C.Value) = C.Row
      Else                           ' нашли конец группировки
        ' показывать header будем только если соответствующий footer видим
        If Not isHide Then
          If Not C.EntireRow.Hidden Then
            Rows(Levels(C.Value)).Hidden = isHide
          End If
        End If
        Levels(C.Value) = 0
      End If
    End If
  Next
End Sub
'-------------------------------------------------------------------------------
' спрятать все заголовки группировок
'-------------------------------------------------------------------------------
Public Sub HideAllGroupHeaders(sStrGroup As String)
  Dim OldScreenUpdatind As Boolean
  OldScreenUpdatind = Application.ScreenUpdating
  Application.ScreenUpdating = False
  Call HideGroupHeaders(sStrGroup, True)
  Application.ScreenUpdating = OldScreenUpdatind
End Sub
'-------------------------------------------------------------------------------
' показать все заголовки группировок
'-------------------------------------------------------------------------------
Public Sub ShowAllGroupHeaders(sStrGroup As String)
  Dim OldScreenUpdatind As Boolean
  OldScreenUpdatind = Application.ScreenUpdating
  Application.ScreenUpdating = False
  Call HideGroupHeaders(sStrGroup, False)
  Application.ScreenUpdating = OldScreenUpdatind
End Sub
'-------------------------------------------------------------------------------


