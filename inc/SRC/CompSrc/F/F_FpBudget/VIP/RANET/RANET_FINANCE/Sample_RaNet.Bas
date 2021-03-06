'------------------------------------------------------------------------------
' ���㧪� ����⮢ �� "⥪�饩" ⨯���� �ଥ
'------------------------------------------------------------------------------
'function GetLimits(
'  _xmlFile        : string;  // ���� �� xml-䠩� � ���㧪��
'  _sDBeg          : string;  // �������� ��� ��� ���㧪�
'  _sDEnd          : string;  //   �ଠ� 'DD/MM/YYYY'
'  _sBudCO         : string;  // NRec �� ���, �᫨ �� �����, � �� ��
'  _isUseTForm     : boolean; // ��� ��।������ ������⢠ ��⥩:
'                             //   False - �� ���� �� ��⠫��� ��⥩
'                             //   True  - ⮫쪮 ���� "⥪�饩" ⨯���� ���
'  _sTFormMode     : string;  // ����� ��।������ ��⥩ ⨯���� ���:
'                             //   '0' - �� ���� ⨯���� ���
'                             //   '1' - ⮫쪮 ������ ���� ⨯���� ���
'  _isLoadNullSums : boolean  // ���㦠�� �� �㫥�� �㬬�
') : boolean;
'------------------------------------------------------------------------------
Sub GetLimits()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    Set Iface = GalApp.LoadVip("OleRanetFinance")
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ����䥩� OleRanetFinance"
        Exit Sub
    End If

    Iface.SetLogFile ("d:\BudgetLimits.Log")
    LoadResult = Iface.GetLimits("d:\BudgetLimits.Xml" _
    , "01/01/1905", "12/05/2005" _
    , "53" _
    , True, "1" _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetLimits:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub

'------------------------------------------------------------------------------
' ���㧪� ����⮢ �� �������� ⨯���� �ଥ
'------------------------------------------------------------------------------
'function GetLimitsTForm(
'  _xmlFile        : string;  // ���� �� xml-䠩� � ���㧪��
'  _sDBeg          : string;  // �������� ��� ��� ���㧪�
'  _sDEnd          : string;  //   �ଠ� 'DD/MM/YYYY'
'  _sBudCO         : string;  // NRec �� ���, �᫨ �� �����, � �� ��
'  _isUseTForm     : boolean; // ��� ��।������ ������⢠ ��⥩:
'                             //   False - �� ���� �� ��⠫��� ��⥩
'                             //   True  - ⮫쪮 ���� �������� ⨯���� ���
'  _sTForm         : string;  // NRec ⨯���� ���, �᫨ �� �����, � "⥪���" ⨯���� �ଠ
'  _sTFormMode     : string;  // ����� ��।������ ��⥩ ⨯���� ���:
'                             //   '0' - �� ���� ⨯���� ���
'                             //   '1' - ⮫쪮 ������ ���� ⨯���� ���
'  _isLoadNullSums : boolean  // ���㦠�� �� �㫥�� �㬬�
') : boolean;
'------------------------------------------------------------------------------
Sub GetLimitsTForm()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    Set Iface = GalApp.LoadVip("OleRanetFinance")
    If (Iface Is Nothing) Then
        MsgBox "�� ������ ����䥩� OleRanetFinance"
        Exit Sub
    End If

    Iface.SetLogFile ("d:\BudgetLimits.Log")
    LoadResult = Iface.GetLimitsTForm("d:\BudgetLimits.Xml" _
    , "01/01/2002", "30/06/2002" _
    , "52" _
    , True, "0", "0" _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetLimitsTForm:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub


