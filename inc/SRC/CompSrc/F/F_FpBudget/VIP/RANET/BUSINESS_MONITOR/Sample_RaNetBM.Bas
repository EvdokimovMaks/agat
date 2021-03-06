'------------------------------------------------------------------------------
' �������� ������ �������� � ��������������� ���������� (����, ����)
' �������������� ��������� �������� � ���������:
' - ������� �������
' - ������ ���������� ��������
' (��. "=���������=\��������� "���������"\���������� ���������\
' ��������� ���������\����� � ��������\...)
'------------------------------------------------------------------------------
'function GetBudgetValues(
'  _xmlFile    : string;   // ���� � XML-�����
'  _xmlNS      : string;   // ���� � XML-�������
'  _logFile    : string;   // ���� � Log-�����
'  _sBudCO     : string;   // ������������ �� �������
'  _isCOLevel  : boolean;  // �������� ����������� ������� ��
'  _sBudTPer   : string;   // ������������ ���� ������� �������
'  _sDBeg      : string;   // ��������� ������ "�"
'  _sDEnd      : string;   // ��������� ������ "��"
'  _sTForm     : string;   // ������������ ������� ����� �������
'  _sTFLevel   : integer;  // ������� ������� ���������
'  _isAddCode  : boolean;  // �������� � �������� ���� ��� ����������
'  _isAddEmpty : boolean   // �������� ������� ��������
') : boolean;              // ��������� ����������, ���� False, ��. GetStLastError
'------------------------------------------------------------------------------
Sub GetOleFp_RaNetBM()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetBM")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ��������� OleFp_RaNetBM"
        Exit Sub
    End If

    LoadResult = Iface.GetBudgetValues( _
      "c:\oleFp_RaNetBM.Xml", "http://localhost/bm/typeschema" _
    , "c:\oleFp_RaNetBM.Log" _
    , "��������������", False _
    , "�������", "01/04/2002", "01/06/2002" _
    , "��_���", 0 _
    , False _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetBudgetValues:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub
'------------------------------------------------------------------------------
' �������� ������ �������� ��� ���������������� ���������
'------------------------------------------------------------------------------
Sub GetOleFp_RaNetBM_NotRecalc()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetBM")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ��������� OleFp_RaNetBM"
        Exit Sub
    End If

    LoadResult = Iface.GetNotReCalcBudgetValues( _
      "c:\oleFp_RaNetBM.Xml", "http://localhost/bm/typeschema" _
    , "c:\oleFp_RaNetBM.Log" _
    , "��������������", False _
    , "�������", "01/04/2002", "01/06/2002" _
    , "���", 2 _
    , False _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetBudgetValues:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub
'------------------------------------------------------------------------------
Sub LoadXML()
    Cells.Select
    Selection.ClearContents
    Selection.Delete Shift:=xlUp
    ActiveWorkbook.XmlImport URL:="C:\oleFp_RaNetBM.Xml", ImportMap:=Nothing, _
        Overwrite:=True, Destination:=Range("$A$2")
    ActiveWorkbook.Save
End Sub
