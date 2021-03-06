//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��壠���᪨� ������
// ���� ����ᮢ�� ���⥦��
//******************************************************************************

#ifndef __DISTRCREDADV_INC
#define __DISTRCREDADV_INC

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
  CW_DISTR_BY_DOGOVOR = 0;
  CW_DISTR_BY_DO      = 1;
  CW_DISTR_BY_NAKL    = 2;

  // ����⠭�� �������� ��
  cnViewDOMain        = 0; // �� ����㦥��� �� 䨫����
  cnViewDOSub         = 1; // �� �����㦠��� ��� ���������

  // ����⠭�� �訡�� �� �믮������ ���� ����ᮢ
  CW_CREDADV_NORMAL   = 0; // ���� ��襫 �ᯥ譮
  CW_CREDADV_MANYFPKP = 1; // ��᪮�쪮 ����ᮢ�� 䨭��ᮢ�� ���
  CW_CREDADV_NODO     = 2; // �� ��������� ��� ��

end;

#end //__DISTRCREDADV_INC
