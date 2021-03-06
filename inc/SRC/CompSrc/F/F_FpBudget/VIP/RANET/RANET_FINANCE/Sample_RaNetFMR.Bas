'------------------------------------------------------------------------------
' �������� �����������
'------------------------------------------------------------------------------
'function LoadRaNetFMRequest(
'  _xmlFile    : string;   // ���� � XML-�����
'  _logFile    : string    // ���� � Log-�����
') : boolean;
'------------------------------------------------------------------------------
'function DelRaNetFMRequest(
'  _cDoc       : comp;     // ������������� ������ RaNet
'  _logFile    : string    // ���� � Log-�����
') : boolean;
'------------------------------------------------------------------------------

Sub SetOleFp_RaNetFMR()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetFMRequest")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ��������� OleFp_RaNetFMRequest"
        Exit Sub
    End If

    'MsgBox "�������� ������� ���� ���-��, ��������� ������ ���������..."
    
    LoadResult = Iface.LoadRaNetFMRequest( _
      "c:\ExportBudgetDataSet.Xml" _
    , "c:\ExportBudgetDataSet.Log" _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "LoadRaNetFMRequest:" & s
    End If

    On Error Resume Next
    GalApp.Quit
    On Error GoTo 0

    Set Iface = Nothing
    Set GalApp = Nothing
    
End Sub

Sub DelOleFp_RaNetFMR()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetFMRequest")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ��������� OleFp_RaNetFMRequest"
        Exit Sub
    End If

    'MsgBox "�������� ������� ���� ���-��, ��������� ������ ���������..."
    
    LoadResult = Iface.DelRaNetFMRequest( _
      1 _
    , "c:\ExportBudgetDataSet.Log" _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "LoadRaNetFMRequest:" & s
    End If

    On Error Resume Next
    GalApp.Quit
    On Error GoTo 0

    Set Iface = Nothing
    Set GalApp = Nothing
    
End Sub

'------------------------------------------------------------------------------
' ��������� �������� �� ���������� xml-�����
'------------------------------------------------------------------------------
'function LoadPlPor(
'  _xmlFile: string;       // ���� � XML-�����
'  _logFile: string        // ���� � Log-�����
'): string;
'------------------------------------------------------------------------------
Sub LoadPlPor_RaNetFMR()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetFMRequest")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ��������� OleFp_RaNetFMRequest"
        Exit Sub
    End If

    LoadResult = Iface.LoadPlPor( _
      "D:\GAL_SRC\G712\VIP\FIN\FP\RANET\RANET_FINANCE\XML\olePlPor.Xml" _
    , "D:\GAL_SRC\G712\VIP\FIN\FP\RANET\RANET_FINANCE\XML\olePlPor.Log" _
    )
    If (LoadResult = "0") Then
        s = Iface.GetStLastError
        MsgBox "LoadPlPor:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub
