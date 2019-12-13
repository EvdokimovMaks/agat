VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} AboutForm 
   Caption         =   "ќ версии"
   ClientHeight    =   1860
   ClientLeft      =   30
   ClientTop       =   330
   ClientWidth     =   11985
   OleObjectBlob   =   "AboutForm.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "AboutForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
    AboutForm.Hide
    Unload AboutForm
End Sub

Private Sub UserForm_Activate()
    TextBox1.Value = "не установленна..."
    TextBox2.Value = "не установленна..."
    On Error Resume Next
    TextBox1.Value = Application.AddIns("GalRepDesigner").FullName
    TextBox2.Value = Application.AddIns("GalRepBuilder").FullName
    On Error GoTo 0
End Sub

