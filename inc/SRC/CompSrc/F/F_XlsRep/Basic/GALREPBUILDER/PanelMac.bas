Attribute VB_Name = "PanelMac"
Option Explicit

Const sBar As String = "Форматирование отчета"
Public Const GalLib As String = "GalRepBuilder.xla!"
Public Const cgxlGal_VarSheet As String = "Gal_VarSheet"
Public Const cgxlGal_TblSheet As String = "Gal_TblSheet"

Function CheckLoad()
  Dim iCount As Integer
  Dim i As Integer
  Dim bShOption As Integer
  iCount = 0
  bShOption = False

  For i = 1 To ActiveWorkbook.Worksheets.Count
    If UCase(ActiveWorkbook.Worksheets.Item(i).Name) = "GAL_VARSHEET" Then bShOption = True
    If bShOption Then
      If UCase(ActiveWorkbook.Worksheets.Item(i).Name) = "GAL_TBLSHEET" Then
           bShOption = True
      Else
           bShOption = True
      End If
    End If
  Next i
  
  If Not bShOption Then
    MsgBox "Данный документ не предназначен для форматирования.", vbInformation
    CheckLoad = bShOption
    Exit Function
  End If
  
  For i = 1 To ActiveWorkbook.Worksheets.Count
   If UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_VARSHEET" And _
      UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_TBLSHEET" And _
      UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_OPTIONS" Then
       iCount = iCount + 1
   End If
  Next i
  If iCount > 0 Then
    CheckLoad = True
  Else
    CheckLoad = False
    MsgBox "Нет листов отчета", vbCritical
  End If

End Function

Sub RunOptions()
  
  If CheckLoad Then Options.Show
  
End Sub

Sub LoadNameOptions()
  
Dim i As Integer
Dim iCount As Integer

iCount = 2

With ActiveWorkbook.Sheets("GAL_OPTIONS").Range("A1:E1")
    .Interior.ColorIndex = 15
    .Interior.Pattern = xlSolid
    .Interior.PatternColorIndex = xlAutomatic
    .Font.Bold = True
End With

ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 1).Value = "Лист"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 2).Value = "Формирование"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 3).Value = "Группировка"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 4).Value = "Заголовки"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 5).Value = "Поле_группировки"

For i = 1 To ActiveWorkbook.Worksheets.Count
  If UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_VARSHEET" And _
     UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_TBLSHEET" And _
     UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_OPTIONS" Then
       ActiveWorkbook.Names.Add Name:="Лист_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C1"
       ActiveWorkbook.Names.Add Name:="Формирование_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C2"
       ActiveWorkbook.Names.Add Name:="Группировка_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C3"
       ActiveWorkbook.Names.Add Name:="Заголовки_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C4"
       ActiveWorkbook.Names.Add Name:="Поле_группировки_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C5"
       iCount = iCount + 1
  End If
Next i

End Sub

Sub WriteOptions()
  Dim ListName As String
  ListName = Options.ListBox1.Text
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Лист_" & ListName).Value = Options.ListBox1.Text
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Формирование_" & ListName).Value = Options.CheckBox1.Value
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Группировка_" & ListName).Value = Options.CheckBox2.Value
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Заголовки_" & ListName).Value = Options.OptionButton1.Value
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Поле_группировки_" & ListName).Value = Options.ListBox2.Text
 
End Sub

Sub LoadOptions()
  Dim ListName As String
  ListName = Options.ListBox1.Text
   If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Формирование_" & ListName).Value = True Then
      Options.CheckBox1.Value = True
   Else
      Options.CheckBox1.Value = False
   End If
   If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Группировка_" & ListName).Value = True Then
      Options.CheckBox2.Value = True
   Else
      Options.CheckBox2.Value = False
   End If
   If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Заголовки_" & ListName).Value = True Then
      Options.OptionButton1.Value = True
   Else
      Options.OptionButton2.Value = True
   End If
   Options.Label2.Caption = ActiveWorkbook.Sheets("GAL_OPTIONS").Range("Поле_группировки_" & ListName).Value
End Sub
