//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.1 - �ந�����⢮
// ����⠭�� ��� ��������� �������� ��
//------------------------------------------------------------------------------

Const

! ��㡨�� ����娨 �������� ����権
  MAX_HIER_DEPTH  : word = 8;

! �㫥��� ��뫪� ⨯� COMP
  COMP_NULL       : comp = comp(0);

! �㫥��� ���
  EMPTY_DATE      : date = date(0, 0, 0);

! �ᯥ譮� �믮������ �㭪樨
  SUCCESS         : word =  0;  // ��� �訡��

! �।�०�����
  WARN_NOT_NEED   : word = 0FFFFh;  // ��⠢�� �थ� �� �ॡ����

! �訡�� �믮������
  ERR_UNKNOWN     : word =  1;  // �������⭠� �訡��
  ERR_INSERT_PS   : word =  2;  // �訡�� ��⠢�� ����� � ⠡���� PlanSlit
  ERR_UPDATE_PS   : word =  3;  // �訡�� ����䨪�樨 ����� � ⠡��� PlanSlit
  ERR_DELETE_PS   : word =  4;  // �訡�� 㤠����� ����� �� ⠡���� PlanSlit
  ERR_INSERT_PM   : word =  5;  // �訡�� ��⠢�� ����� � ⠡���� PlanMove
  ERR_UPDATE_PM   : word =  6;  // �訡�� ����䨪�樨 ����� � ⠡��� PlanMove
  ERR_DELETE_PM   : word =  7;  // �訡�� 㤠����� ����� �� ⠡���� PlanMove
  ERR_INSERT_TR   : word = 11;  // �訡�� ��⠢�� ����� � ⠡���� MoveTree
  ERR_UPDATE_TR   : word = 12;  // �訡�� ����䨪�樨 ����� � ⠡��� MoveTree
  ERR_DELETE_TR   : word = 13;  // �訡�� 㤠����� ����� �� ⠡���� MoveTree
  ERR_INSERT_PI   : word = 14;  // �訡�� ��⠢�� ����� � ⠡���� PlanInfo
  ERR_UPDATE_PI   : word = 15;  // �訡�� ����䨪�樨 ����� � ⠡��� PlanInfo
  ERR_DELETE_PI   : word = 16;  // �訡�� 㤠����� ����� �� ⠡���� PlanInfo
  ERR_BAD_PARAM   : word = 17;  // ������ ��ࠬ��� �㭪樨
  ERR_BAD_POSITION: word = 18;  // ����ୠ� ������
  ERR_DEL_ON_FIXED: word = 19;  // ����⪠ 㤠����� ����樨, ����饩 䨪�஢����� ࠧ����
  ERR_TAKE_FACT   : word = 20;  // �訡�� ࠧ��᪨ ����樨 ���᪠ �� 䠪��᪮� ����稥
  ERR_TAKE_PRIH   : word = 21;  // �訡�� ࠧ��᪨ ����樨 ���᪠ �� ������ ����㯫����
  ERR_ACCUMULATE  : word = 22;  // �訡�� ���� ����㯫���� � ���᪮� � �����������
  ERR_EDIT_LOCK   : word = 23;  // ��㣮� ���짮��⥫� 㦥 �������஢�� ����� � ������ ��
  ERR_NOT_REALIZ  : word = 24;  // ������ �� ॠ��������
  ERR_NOT_REGISTER: word = 25;  // ������ �� �� ��ॣ����஢���
  ERR_NOT_FOUND   : word = 26;  // ������ �� �� �������
  ERR_BAD_DIRECT  : word = 27;  // �� ᮢ������ ��� (��室/��室) �������� ������饩 ����樨

!�������� 䨪�஢����� ࠧ��᮪
  DEL_FIXED       : boolean = true;
  NO_DEL_FIXED    : boolean = false;

! ����� ����䥩� "�������� �������� ��"
  IS_VIEW         : word = 1;  // ��ᬮ��
  IS_SORT         : word = 3;  // ������ / ���஢��

! ��뫪� �� ������ � ࠧ��᪥
  NO_OPER         : comp = -1; // ��� ��뫪� �� ������ (ࠧ��᪠ 䠪��᪮�� ������)

! ��� ����樨 �������� ��
  IS_RASH         : word = 0;  // ��� ����樨 ���᪠
  IS_PRIH         : word = 1;  // ��� ����樨 ����㯫����

! ����� ����樨 �������� ��
  NO_TEST         : word = 0;  // ����祭� � ����
  IS_TEST         : word = 1;  // ���������
  IS_FACT         : word = 2;  // ��� 䠪��᪮�� ������
  IS_LIMIT        : word = 3;  // ��� ����⮢

! �ਧ��� "�����"/"�ந�����⢮" ��� ᪫��᪮�� �थ�
  IS_SKLAD        : word = 0;  // �����
  IS_PROIZV       : word = 1;  // �ந�����⢮

! ��� ����� �� �६����� ⠡��� PlanInfo
  IS_MOVE         : word = 0;  // ������ ��������� ��������
  IS_REST         : word = 1;  // �������� ����稥 �� ࠧ१�

! ��� ࠧ��᪨
  NO_FIXED        : word = 0;  // �� 䨪�஢�����
  IS_FIXED        : word = 1;  // ����஢�����

! ��⨢��� �������� ����䥩� "�����᪨"
  IS_INFO         : word = 0;  // �����᪠ ����樨
! IS_FACT         : word = 2;  // �����᪠ 䠪��. ������

! ��� ����䨪�樨 ᯥ�䨪�樨 ᪫��᪮�� �थ�
  IS_INSERT       : word = 0;
  IS_UPDATE       : word = 1;
  IS_DELETE       : word = 2;

! ���祭�� ���� wList ⠡���� Pick
  LIST_PICK_ORGAN : word = 6;
  LIST_PICK_MC    : word = 7;
  LIST_PICK_MOL   : word = 8;
  LIST_PICK_PARTY : word = 10;
  LIST_PICK_PODR  : word = 11;
  LIST_PICK_CLAIM : word = 999; // ? - ��筨��
  LIST_PICK_TYPE  : word = 998; // ? - ��筨��
  LIST_PICK_DOC   : word = 997; // ? - ��筨��

! ��ࠬ���� �맮�� ����䥩� "GetSome_Any"
  GET_SA_PODR     : word = 1;
  GET_SA_MOL      : word = 2;
  GET_SA_PARTY    : word = 4;
  GET_SA_MC       : word = 8;
  GET_SA_ORGAN    : word = 16;
  GET_SA_ATTR_MC  : word = 32;
  GET_SA_DATE     : word = 64;  // ���� ����
  GET_SA_PERIOD   : word = 128; // ���� ��ਮ��

! ��� ���� ��થ஢, �࠭��� "�롮� �᫮��� 䨫���樨"
  MARK_SLIT       : word = 0;
  MARK_MC         : word = 1;
  MARK_PODR       : word = 2;
  MARK_PARTY      : word = 3;
  MARK_MOL        : word = 4;
  MARK_TYPE       : word = 5;
  MARK_DOC        : word = 6;

! ���祭��, �����頥��� ����� "�롮� �᫮��� 䨫���樨"
  FILTER_OK       : word = 300; // ������ ��࠭ (����� ������ "��")
  FILTER_CANCEL   : word = 301; // ����� ������ "�⬥����"
  FILTER_BAD      : word = 302; // ��� ����ᥩ �� 䨫���� (����� ������ "��")
  FILTER_CLEAR    : word = 303; // ��祣� �� ��࠭� (����� ������ "��")
  FILTER_RESET    : word = 306; // ����� ������ "����"
  FILTER_EASY     : word = 304; // ���㧪� �� �ॡ����
  FILTER_DEBUG    : word = 305; // ����祭 ०�� �⫠���

! ���ᮡ ���஢��
  ORD_NONE        : word = 0FFFFh;
  ORD_MC          : word = 0;
  ORD_PODR        : word = 1;
  ORD_MOL         : word = 2;
  ORD_PARTY       : word = 3;
  ORD_DATE        : word = 4;

! �������� ���஢�� � ��������� ⠡����
  SORT_DOWN       = -1;  // ��㣮�쭨� ���� - ���஢�� �� �����⠭��
  SORT_NONE       =  0;  // ��㣮�쭨� ���������
  SORT_UP         =  1;  // ��㣮�쭨� ����� - ���஢�� �� �뢠���

! ���� ���㬥�⮢ � �������� ��������
  DOC_ORDER       : word =  1;  // ���䨪��� �थ�
  DOC_EMPTY       : word = 10;  // ����।���
  DOC_SOPR        : word = 20;  // ���䨪��� ���������
  DOC_BASE        : word = 30;  // ���䨪��� ��
  DOC_CLAIM       : word = 40;  // ���䨪��� ���
  DOC_PROIZ       : word = 50;  // ���䨪��� �ந�����⢥����� ������
  DOC_POTREB      : word = 60;  // ���䨪��� ���ॡ���� � ���ਠ���
  DOC_LIMIT       : word = 70;  // ������
  DOC_PLANSN      : word = 80;  // ���� ᭠������
  Doc_PLANSB      : word = 90;  // ���� ���
	DOC_PLAN        : word = 4;   // �ந�����⢥��� ����
	DOC_RSVOPER     : word = 100;

! ��⮤��� �믮������ ���ࠧ��᪨
  TUNE            : word = 0FFFFh; // �� ����ன��
  LIFO            : word = 0;
  FIFO            : word = 1;

! ������ �� 㬮�砭�� ���� ����䥩� "�������� �������� ��"
  FLD_PM_VISIBLE  : word = 0000000100010001b;
! ����⠭�� ����ன�� �������� �����
  FLD_PM_PODR     : word = 0000000000100000b;
  FLD_PM_MOL      : word = 0000000001000000b;
  FLD_PM_PARTY    : word = 0000000010000000b;

End;
