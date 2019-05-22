VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} fOptions 
   Caption         =   "Настройка отчетов"
   ClientHeight    =   5175
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6195
   OleObjectBlob   =   "fOptions.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "fOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CheckBox1_Change()
 Dim GroupName As Name
   If CheckBox1.Value = True Then
     CheckBox2.Enabled = True
   Else
     CheckBox2.Enabled = False
     CheckBox2.Value = False
   End If
   CheckBox2_Change
End Sub

Private Sub CheckBox2_Change()
 Dim ListName As String
 If CheckBox2.Value = True Then
    Frame5.Enabled = True
    For i = 1 To Workbooks.Count
      If Workbooks.Item(i).Name = ActiveWorkbook.Name Then
          GoTo nextch
      End If
    Next i
    
nextch:

    ListName = ActiveWorkbook.ActiveSheet.Name
    ListBox2.Clear
    For Each GroupName In Workbooks.Item(i).ActiveSheet.Names
     If (InStr(1, GetSimpeSName(GroupName.Name), "GalRepTblFld")) Then _
        ListBox2.AddItem (GetSimpeSName(GroupName.Name))
    Next
    If ListBox2.ListCount = 0 Then
      MsgBox "Нет полей для группировки", vbInformation
      CheckBox2.Value = False
    End If
 Else
    Frame5.Enabled = False
    ListBox2.Clear
 End If
 
 
End Sub

Private Sub CommandButton1_Click()
Options.Hide
Unload Options
End Sub

Private Sub CommandButton2_Click()
 Dim sStrGroup As String
  sStrGroup = ListBox2.Text
  If CheckBox2.Value = True And ListBox2.Text = "" Then
     MsgBox "Не выбрано поле группировки.", vbInformation
     Exit Sub
  End If
  If OptionButton1.Value = True Then
    ShowAllGroupHeaders (sStrGroup)
  Else
    HideAllGroupHeaders (sStrGroup)
  End If
  WriteOptions
  Options.Label2.Caption = Options.ListBox2.Text
End Sub

Private Sub ListBox1_Change()
  ActiveWorkbook.Sheets(ListBox1.Text).Select
  Label1.Caption = ListBox1.Text
  LoadOptions
  CheckBox1_Change
End Sub

Private Sub UserForm_Initialize()
Dim GroupName As Name
Dim iCount As Long
Dim i As Long
Dim iNumber As Long
Dim bShOption As Long
iCount = 0
bShOption = False

For i = 1 To ActiveWorkbook.Worksheets.Count
  If UCase(ActiveWorkbook.Worksheets.Item(i).Name) = "GAL_OPTIONS" Then
     bShOption = True
  End If
Next i

If (Not bShOption) Then
ActiveWorkbook.Worksheets.Add.Name = "Gal_Options"
End If
LoadNameOptions

For i = 1 To ActiveWorkbook.Worksheets.Count
  If UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_VARSHEET" And _
     UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_TBLSHEET" And _
     UCase(ActiveWorkbook.Worksheets.Item(i).Name) <> "GAL_OPTIONS" Then
          ListBox1.AddItem (ActiveWorkbook.Worksheets.Item(i).Name)
  End If
Next i

ListBox1.ListIndex = 0

'LoadNameOptions
'LoadOptions
CheckBox1_Change

End Sub
