//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ���"
// ����䥩� ।���஢���� : "���� �� �ᯮ������ �� �࣠����樥�, �믮����饩 ���"
//------------------------------------------------------------------------------

#ifndef __v001_gzrF47Editor_Inc__
#define __v001_gzrF47Editor_Inc__

const
  // ⨯� ���設� � ⠡��� ������樨
  lc_NavNodeType_Title     : word = 01;  // ���������
  lc_NavNodeType_Kontr     : word = 02;  // ����ࠪ�

  // ������������ �㦥���� XML �����
  lc_XMLFieldName_cOwnOrg  = 'cOwnOrg' ;  // ��뫪� �� "��������� �࣠������"
  lc_XMLFieldName_cIGK     = 'cIGK'    ;  // ��뫪� �� ���
  lc_XMLFieldName_cDogovor = 'cDogovor';  // ��뫪� �� "������� �ᯮ������ ��᧠����"
  lc_XMLFieldName_cKatBank = 'cKatBank';  // ��뫪� �� "�⤥��� ���" �� "�������� �ᯮ������ ��᧠����"

  //----------------------------------------------------------------------------
  // ��� 䨫����
  // ⨯� ��� 䨫��஢
  lc_PATFltMode_ByNRec : word = 0;  // �� NRec
  lc_PATFltMode_ByMask : word = 1;  // �� ��᪥

  // ⨯� ᯥ�䨪�樨 ��� 䨫��஢
  lc_SpPATFltMode_ByNRec        : word = 0;  // �� NRec
  lc_SpPATFltMode_ByIncludeMask : word = 1;  // ������ ��᪨
  lc_SpPATFltMode_ByExcludeMask : word = 2;  // �᪫��� ��᪨

  // �����䨪���� ��� ��� 䨫��஢
  // ��� 䨫���� �� �����⨪� "���㤠��⢥��� ����ࠪ�"
  lc_AutoPATFltName_Contract_Cur          = '���_�������ࠪ�';
  lc_AutoPATFltName_Contract_OtherCurZak  = '���_������ࠪ�둒�������稪��';
  lc_AutoPATFltName_Contract_SobstvSredva = '���_����⢑।�⢠';
  // ��� 䨫���� �� �����⨪� "������᪨� ���"
  lc_AutoPATFltName_KatBank_Cur           = '���_�⤑�⒥�����ࠪ�';
  lc_AutoPATFltName_KatBank_OtherCurZak   = '���_�⤑�������ࠪ⮢���������稪��';
  lc_AutoPATFltName_KatBank_SobstvSredva  = '���_�⤑�⑮��⢑।�⢠';

  lc_AutoPATFltNRec_NotExist : comp       = 1;
  // ��� 䨫����
  //----------------------------------------------------------------------------
end; // const

#endif//__v001_gzrF47Editor_Inc__
