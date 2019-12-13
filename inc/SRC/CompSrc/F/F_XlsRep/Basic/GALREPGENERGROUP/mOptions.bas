Attribute VB_Name = "mOptions"
Option Explicit

Const sBar As String = "��������� �����������"
Public Const GalLib As String = "GalRepBuilder.xla!"
Public Const cgxlGal_VarSheet As String = "Gal_VarSheet"
Public Const cgxlGal_TblSheet As String = "Gal_TblSheet"

Public Function GetSimpeSName(sNM As String) As String
  GetSimpeSName = Application.Run(GalLib & "GetSimpeSName", sNM)
End Function

Public Sub ShowAllGroupHeaders(sStrGroup As String)
 Call Application.Run(GalLib & "ShowAllGroupHeaders", sStrGroup)
End Sub

Public Sub HideAllGroupHeaders(sStrGroup As String)
 Call Application.Run(GalLib & "HideAllGroupHeaders", sStrGroup)
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

ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 1).Value = "����"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 2).Value = "������������"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 3).Value = "�����������"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 4).Value = "���������"
ActiveWorkbook.Sheets("GAL_OPTIONS").Cells(1, 5).Value = "����_�����������"

For i = 1 To ActiveWorkbook.Worksheets.Count
  If UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_VARSHEET" And _
     UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_TBLSHEET" And _
     UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_OPTIONS" Then
       ActiveWorkbook.Names.Add Name:="����_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C1"
       ActiveWorkbook.Names.Add Name:="������������_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C2"
       ActiveWorkbook.Names.Add Name:="�����������_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C3"
       ActiveWorkbook.Names.Add Name:="���������_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C4"
       ActiveWorkbook.Names.Add Name:="����_�����������_" & ActiveWorkbook.Worksheets.Item(i).Name, RefersTo:="=Gal_Options!R" & iCount & "C5"
       iCount = iCount + 1
  End If
Next i

End Sub

Sub WriteOptions()
  Dim ListName As String
  ListName = fOptions.ListBox1.Text
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("����_" & ListName).Value = fOptions.ListBox1.Text
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("������������_" & ListName).Value = fOptions.CheckBox1.Value
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("�����������_" & ListName).Value = fOptions.CheckBox2.Value
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("���������_" & ListName).Value = fOptions.OptionButton1.Value
   ActiveWorkbook.Sheets("GAL_OPTIONS").Range("����_�����������_" & ListName).Value = fOptions.ListBox2.Text
 
End Sub

Sub RunOptions()
  
  If CheckLoad Then fOptions.Show
  
End Sub

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
    MsgBox "������ �������� �� ������������ ��� ��������������.", vbInformation
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
    MsgBox "��� ������ ������", vbCritical
  End If

End Function

Sub LoadOptions()
  Dim ListName As String
  ListName = fOptions.ListBox1.Text
   If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("������������_" & ListName).Value = True Then
      fOptions.CheckBox1.Value = True
   Else
      fOptions.CheckBox1.Value = False
   End If
   If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("�����������_" & ListName).Value = True Then
      fOptions.CheckBox2.Value = True
   Else
      fOptions.CheckBox2.Value = False
   End If
   If ActiveWorkbook.Sheets("GAL_OPTIONS").Range("���������_" & ListName).Value = True Then
      fOptions.OptionButton1.Value = True
   Else
      fOptions.OptionButton2.Value = True
   End If
   fOptions.Label2.Caption = ActiveWorkbook.Sheets("GAL_OPTIONS").Range("����_�����������_" & ListName).Value
End Sub


