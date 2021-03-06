//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1
// ���譨� �㭪樨
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// GalApp.pas
#doc
  <brief>
    �㭪�� ������ ᮡ�⨥ � ��।� ��� ��ࠡ��稪� ᮡ�⨩ ⥪�饣� ����.
  </brief>

  <p>
    �� �ய�᪠���� ᮡ�⨥ - <code>cmCancel</code>
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aCommand</code> - �������.</li>
  </ul>
#end
procedure PutHotCommand(Command: Word); external;
#doc
  <brief>
    �㭪�� �����頥� ��� ⥪�饩 ⠡����.
  </brief>
#end
function CurTableCode: Word; external;
//------------------------------------------------------------------------------
// Period.pas
#doc
  <brief>
    ���뢠�� �� SystDate ⥪�騩 ����� ��ਮ�.
  </brief>
#end
procedure CheckPeriod; external;
function GalApp_Second_Tune: boolean; external;
procedure GalApp_ExtendedSecond_tune(String); external;
#doc
  <brief>
    ��뢠���� �� �窨 ���७�� - �� ��४��祭�� �� ��㣮� 䨫���.
  </brief>
#end
procedure BeforeChangeFilial; external;
#doc
  <brief>
    ��뢠���� �� �窨 ���७�� - ��᫥ ��४��祭�� �� ��㣮� 䨫���.
  </brief>
#end
procedure AfterChangeFilial; external;
//------------------------------------------------------------------------------
// GalApp.pas
#doc
  <brief>
    �஢���� ���� �� ��⥬� ����஢�����.
  </brief>
#end
function IfDefServerApp: boolean; external;
#doc
  <brief>
    ��� ����᪠ ����䥩� ��᫥ ��⠭���� ����������.<br>
    ��� ����䥩� �������� �१ ����ன��.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aCommand</code> - ��� ����䥩�.</li>
  </ul>
#end
procedure RunBatchInterface(IfcName: String); external;
#doc
  <brief>
    ��� �� �����쭮�� ����᪠ ����䥩� ��᫥ ��⠭���� ����������.<br>
    ��� ����䥩� �������� �१ ����ன��.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aCommand</code> - ��� ����䥩�.</li>
  </ul>
#end
procedure RunBatchInterfaceNoModal(String); external;
//------------------------------------------------------------------------------

