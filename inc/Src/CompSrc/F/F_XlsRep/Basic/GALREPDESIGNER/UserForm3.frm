VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm3 
   Caption         =   "Режим удаления ячейки"
   ClientHeight    =   1560
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3255
   OleObjectBlob   =   "UserForm3.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public isExitFromDel As Boolean

Private Sub CommandButton1_Click()
UserForm3.Hide
isExitFromDel = False
End Sub

Private Sub CommandButton2_Click()
  UserForm3.Hide
  isExitFromDel = True
End Sub

Private Sub UserForm_Activate()
  OptionButton1.Value = True
  isExitFromDel = True
End Sub

