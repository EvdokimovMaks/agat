//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��壠���᪨� ������
// ���।������ ���⥦��� ���㬥�⮢ � ��⮬ ४����樨 � �����⮢ ���⥦��
//******************************************************************************

#ifndef _DISTRACTREC_INC
#define _DISTRACTREC_INC

const
  // ������ ������ ���� ����஥� (����� �������� � ������ ������ ��⨢��)
  CW_OPEN_COMMON_SETTINGS = 1;
  CW_OPEN_FILTER_SETTINGS = 2;

  // ����⠭�� ०��� ��।������ ���㬥�⮢
  CW_DO_NOT_DISTR = 0;
  CW_DO_DISTR_STEPBYSTEP        = 1;
  CW_DO_DISTR_PRORATE           = 2;
  CW_DO_DISTR_PRIORITY          = 3;

  CW_DO_LINK_TO_DOGOVOR    = 1;
  CW_DO_LINK_TO_BASEDOC    = 2;
  CW_DO_DISTR_SUMM         = 4;

  CW_AUTO_REGISTER_SCHETFACT = 8;

  CW_MODE_1 = 1;
  CW_MODE_2 = 2;
  CW_MODE_3 = 3;
  CW_MODE_4 = 4;

  CW_OTHER_NOTHING       = 0;  // ��祣� �� ��⠭������
  CW_OTHER_DO_WHITH_NAKL = 1;  // ���뢠�� ⮫쪮 �� � �������묨/��⠬�
  CW_OTHER_NO_DISTR_PLAT = 2;  // ���뢠�� ������祭�� ���⥦� �� ���� �㬬
  CW_OTHER_BALANS_PRE_DO = 4;  // ���뢠�� � ������ ��।������ �� �।�����
  CW_OTHER_SAVE_LINK_DOG = 8;  // �� �⬥�� ��।������ ��࠭��� ��뫪� �� �������
  CW_OTHER_SHOW_ERR_PROT = 16; // �뢮���� �訡�� � ��⮪��

  cnPickType      = 580;
  cnPickOrg       = 581;
  cnPickSpSopr    = 582;
  cnSpSoprIRazn   = 583;
  cnSpSoprIARazn  = 584;
  cnPickBaseFin   = 585;
  cnPickBaseDoc   = 586;
  cnPickKatSopr   = 587;
  cnPickDogovor   = 588;

  // ����⠭�� ⨯� ��।������
  CW_DISTR_BY_DO      = 0;
  CW_DISTR_BY_NAKL    = 1;
  CW_DISTR_BY_AKTREL  = 2;

  // ����⠭�� �������� ��
  cnViewDOMain        = 0; // �� ����㦥��� �� 䨫����
  cnViewDOSub         = 1; // �� �����㦠��� ��� ���������

  //����⠭�� ⨯�� ����ᥩ
  cwTypeNakl   = 0;        // ��������/����
  cwTypeRekl   = 1;        // ४������
  cwTypeReturn = 2;        // ������

end;


#end //_DISTRACTREC_INC
