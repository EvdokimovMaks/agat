//  ���������������������������������������������������������������������ͻ
//  �    (c) 1997  ��௮��� "���������"                                 �
//  �      �஥��:  "�����⨪�"                                           �
//  �      ���⥬�: "�����"                                               �
//  �      ����� : 5.10                                                  �
//  �      �����祭��:  ����७��� ����⠭�� ����� �����                 �
//  �      �⢥��⢥���:  ��᪮�᪨� �.�.                                �
//  �      ��ࠬ����:                                                     �
//  �      ���������:                                                     �
//  ���������������������������������������������������������������������ͼ

// ����� ᯨ᪮� � ⠡��� AddrList
    alStaffKatPodrList   = 11;

// ���� ������
    icStaffWrkPersons    = 1; // ⮫쪮 ࠡ���騥
    icStaffDisPersons    = 2; // ⮫쪮 㢮����� �� ⥪�饩 ����
    icStaffWrkDisPersons = 3; // ࠡ���騥 + 㢮����� �� ⥪�饩 ����
    icStaffArcPersons    = 4; // ⮫쪮 ��娢
    icStaffWrkArcPersons = 5; // ࠡ���騥 + ��娢
    icStaffDisArcPersons = 6; // 㢮����� �� ⥪�饩 ���� + ��娢
    icStaffAllPersons    = 7; // ��� ����⥪� - ⥪��� � ��娢

// ��� ��ࠡ�⪨ �⠦��: ��ਠ��� ��ࠡ�⪨
    ctStaffShowAllCat    = 10000; // �����뢠�� ��娢 ��⠫����
    ctStaffStagRate      =     1; // ।�������� �����樥�� �⠦�
    ctStaffRaiseOpl      =     2; // ।�������� ��� ������ ����ﭭ�� ������

//***** ! ������ �����, ����⠭�� �ய�ᠭ� � ���� !

// ⠡��� �⠦�� ServLen
    slStaffServLenCur       = 1;
    slStaffServLenOld       = 2;
    slStaffServLenArchCur   = 3;
    slStaffServLenArchOld   = 4;
    coStaffSuper            = 'MaslakovaPlusVasja99';

// ⠡��� �⠦�� PenStaj
    coStajLink = 777;


// ���� ���㫥�
    moStaff = 1;

// �窨 �室� � ��⠫���
    epStaffCatRoot    =   1;
    epStaffOtherCats  =   2;  // ��稥 ��⠫���
    epStaffDocunents  =   3;  // ���� ���㬥�⮢
    epStaffJobCats    =   4;  // ��㦥��� ��⠫���
    epStaffDepartment =  11;  // ��⠫�� ���ࠧ������� (�窠 �室�)
    epStaffServLen    =  19;  // ���� �⠦�
    epStaffSLCommon   =  61;  // ��騩 �⠦
    epStaffSLCont     =  62;  // �����뢭� �⠦ ��� ���� ����㤮ᯮᮡ����
    epStaffSLExper    =  63;  // �⠦ �� ᯥ樠�쭮��
    epStaffSLNorth    =  64;  // ������ �⠦
    epStaffSL13       =  65;  // �⠦ ��� ���㣨 ���
    epStaffDStrah     = 501;  // ���客�� ᢨ��⥫��⢮
    epStaffDPasspRus  = 502;  // ��樮����� ��ᯮ��
    epStaffDPasspFor  = 503;  // ���࠭��ᯮ��
    epStaffDPasspBel  = 504;  // �������᪨� ��ᯮ��