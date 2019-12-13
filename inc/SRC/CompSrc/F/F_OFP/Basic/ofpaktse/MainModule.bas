Attribute VB_Name = "MainModule"
' (c) 2012 ���������� ���������
' ������� ������������ ������

Option Explicit

' ���������� ��������� ������� ������������ �������
Public Const GalLibName As String = "GalRepBuilder"
Public Const GalLib As String = GalLibName & ".xla!"

' ����� XLS-��
Dim DBWB As Workbook

' �������� �������� ���������� XLS-��
' �� ������������ �� ���������
'   sDBVar - ������������ ��������� ����������
Function GetDBVar(sDBVar As String) As Variant
GetDBVar = ""
If Not (DBWB Is Nothing) Then
    GetDBVar = Application.Run(GalLib & "GetDBVar", DBWB, sDBVar)
End If
End Function

' ������� � ����� ��� ���������� � �������
'    sRepWS - ������������ �����
Sub PrintToSheet(sRepWS As String)
    If Not (DBWB Is Nothing) Then
        Call Application.Run(GalLib & "PrintAllToSWS", DBWB, ThisWorkbook, sRepWS)
    End If
End Sub

' ������������ ����� �� ��������� ������ �������� XLS-��
'   sDBWB - ������������ ������� ����� Excel � ������� (XLS-��)
Sub LoadRepFromDB(sDBWB As String)
    Set DBWB = Application.Workbooks(sDBWB)
    ' ������� ��������� �����
    Call LoadThisRepFromDB
End Sub

' ������������ ����� �� ��������� ������ ������� XLS-��
Sub LoadReport()
    LoadRepFromDB (ThisWorkbook.Name)
    ThisWorkbook.Worksheets("Gal_VarSheet").Visible = False
    ThisWorkbook.Worksheets("Gal_TblSheet").Visible = False
End Sub

