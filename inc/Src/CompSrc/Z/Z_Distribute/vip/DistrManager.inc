//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1 - ��ࠡ�⭠� ����
// ����⠭�� ��� ��ᯥ��� �ࢥ஢ ��।�������� ���� ��௫���
//------------------------------------------------------------------------------

Const
  // ��� �ࢥ� (ZarServer.wType)
  cgType_WS = 0; // �����஢����� ���⥪��� (1 ��⮪)
  cgType_SP = 1; // ����஢����� ���⥪��� (����������)

  // ����⪠ �ࢥ� (BuildObj.LastDate)
  cgBoMarked = date(1,1,2016);
  cgBoUnMarked = ZeroDate;

  // ������ �ࢥ� (mtServer.Status)
  cgNotInited = 0; // �� ���樠����஢��

  // ��� ��⮪��� �裡 � �ࢥ஬ �ਫ������ (BuildObj.FilialNo)
  cgProtocol_Unknown = 0;
  cgProtocol_WinSock = 1;
  cgProtocol_COM     = 2;
  cgProtocol_HTTP    = 3;
end;
