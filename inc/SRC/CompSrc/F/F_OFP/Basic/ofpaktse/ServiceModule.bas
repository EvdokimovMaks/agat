Attribute VB_Name = "ServiceModule"
' (c) 2012 ���������� ���������
' ������� ������������ ������

Option Explicit

Private Const WS1 As String = "�����"
Private Const WS2 As String = "�����_"
Private Const sNM_Devider  As String = "GalDBVar_���������_������"
Private Const sNM_Level As String = "GalRepTblFld_�������_�����������_" 'Arr1N


' ������� �� ����������� ������� ����������
Private Sub MyHideEmptyLevels()
    On Error Resume Next
    
    ' ��������� "����" ������
    Dim WS As Worksheet
    Set WS = ThisWorkbook.Worksheets(WS2)
    If (WS Is Nothing) Then
        GoTo EndHideEmptyLevels
    End If
    
    ' ��������� ������ �� �������
    Dim Npp As Long
    Npp = 0
    Do
        Npp = Npp + 1
        
        ' ��������� �������� �������� ������
        Dim RngLevel As Range
        Set RngLevel = Nothing
        Set RngLevel = WS.Range(sNM_Level & Npp)
        If (RngLevel Is Nothing) Then
            Exit Do
        End If
        
        ' ��������� ���� �� ������ �� ������
        Dim isDataExist As Boolean
        isDataExist = False
        Dim RngCell As Range
        For Each RngCell In RngLevel
            If (Not IsEmpty(RngCell.Value)) Then
                isDataExist = True
                Exit For
            End If
        Next
        
        ' ���� ��� ������, �������� �������
        If (Not isDataExist) Then
            RngLevel.Columns.Hidden = True
        End If
        
    Loop ' ��������� ������ �� �������
    
EndHideEmptyLevels:
    On Error GoTo 0
End Sub

Private Sub MySetCheckColumnWidthMode()
    On Error GoTo ErrSetCheckColumnWidthMode
    Call Application.Run(GalLib & "SetIsAdvMode_CheckColumnWidth", True)
    Exit Sub
    On Error GoTo 0
ErrSetCheckColumnWidthMode:
    MsgBox "��� ���������� ������ ������, ���������� ���������� ���������� 'GalRepBuilder.xla', ������ GalRepBuilder_810_20 � ����..."
End Sub


' ������������ �������� ������
Sub LoadThisRepFromDB()
    If (GetDBVar(sNM_Devider) = 0) Then
        ' ����������� �����
        Call PrintToSheet(WS1)
        ThisWorkbook.Worksheets(WS2).Visible = False
    Else
        ' ��������� ����� �������� ������ ������������ �������
        Call MySetCheckColumnWidthMode
        
        ' ������ �� ��������
        Call PrintToSheet(WS2)
        Call MyHideEmptyLevels
        ThisWorkbook.Worksheets(WS1).Visible = False
    End If
End Sub

    

