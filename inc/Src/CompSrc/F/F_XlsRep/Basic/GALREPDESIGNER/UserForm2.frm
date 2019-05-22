VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm2 
   Caption         =   "Дизайнер отчетов"
   ClientHeight    =   2940
   ClientLeft      =   30
   ClientTop       =   330
   ClientWidth     =   3645
   OleObjectBlob   =   "UserForm2.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub LoadAllListOpenBook()
Dim i As Integer
Dim WB As Workbook
    
    'XLT-List
    Dim sCurXLTBook As String
    sCurXLTBook = ""
    If (ComboBox2.ListIndex <> -1) Then
        sCurXLTBook = ComboBox2.Value
    End If
    i = 0
    ComboBox2.Clear
    For Each WB In Application.Workbooks
        ComboBox2.AddItem WB.Name
        If (WB.Name = Application.ActiveWorkbook.Name) Then
            ComboBox2.ListIndex = i
        End If
        i = i + 1
    Next
    If (ComboBox2.ListIndex = -1) And (ComboBox1.ListCount <> 0) Then
        ComboBox2.ListIndex = 0
    End If
    
    'DB-List
    Dim sCurDBBook As String
    sCurDBBook = ""
    If (ComboBox1.ListIndex <> -1) Then
        sCurDBBook = ComboBox1.Value
    End If
    i = 0
    ComboBox1.Clear
    For Each WB In Application.Workbooks
        ComboBox1.AddItem WB.Name
        If (WB.Name = Application.ActiveWorkbook.Name) Then
            ComboBox1.ListIndex = i
        End If
        i = i + 1
    Next
    If (ComboBox1.ListIndex = -1) And (ComboBox1.ListCount <> 0) Then
        ComboBox1.ListIndex = 0
    End If
    
End Sub

Private Sub CommandButton1_Click()
    UserForm2.Hide
    Call RunDesigner(ComboBox1.Value, ComboBox2.Value, Application.Workbooks(ComboBox2.Value).ActiveSheet.Name)
    Unload UserForm2
End Sub

Private Sub CommandButton2_Click()
    UserForm2.Hide
    Unload UserForm2
End Sub

Private Sub CommandButton3_Click()
Dim fl As Boolean
    UserForm2.Hide
    fl = False
    fl = Application.Dialogs(xlDialogOpen).Show
    If (fl = True) Then
      Application.ActiveWorkbook.Activate
    End If
    UserForm2.Show
    LoadAllListOpenBook
End Sub


Private Sub UserForm_Activate()
    LoadAllListOpenBook
'    TextBox1.Value
End Sub

