//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������⥪� �㭪権 : "��ନ஢���� ������� 2 ������樨 �� ���"
//------------------------------------------------------------------------------

#ifndef __G2019_NDSNalR02_Inc__
#define __G2019_NDSNalR02_Inc__

// � �� �ᯮ�������, �.�. ⠬ �஬� ����⠭� �� � �㭪樨 � �.�.
//#include sfconst.Inc          // �᭮��� ����⠭�� � �㭪樨 ��
const
  // ⨯� ����ᥩ ॣ����樨 (������ sfconst.Inc)
  cwTypeBK_Sell_Reg_NalAgent       : Word = 7418;  // ��������� �� ���������� �����
  cwTypeBK_Sell_Reg_YchOtgr        : Word = 7456;  // ��������� �� (��� �� ���㧪�)
  // ⨯� ��� 䠪��� (������ sfconst.Inc)
  cwTypeSF_Sell_Otgr               : Word = 7200;  // ���-䠪���, ���㧪� (����� / ��������)
  cwTypeSF_Sell_Avans              : Word = 7218;  // ���-䠪���, �����, �।�����
  cwTypeSF_Sell_Avans_Old          : Word = 7216;  // ���-䠪���, �����
  cwTypeSF_Sell_LentaKKM           : Word = 7220;  // ����� ��� (����� / ��������)
  cwTypeSF_Sell_Dohod              : Word = 7219;  // ���-䠪���, ��稥 ��室� / ���⥦, ��稥 ��室� (��������)
  cwTypeSF_Sell_VvExpl             : Word = 7201;  // ���-䠪��� (���� � ��ᯫ����)
  cwTypeSF_Sell_SelfNeeds          : Word = 7204;  // ���-䠪���, ��� �� ᮡ�⢥��� �㦤�
  cwTypeSF_Sell_NalAgent_Imp       : Word = 7228;  // ���-䠪��� ���������� ����� (�����⭠� ������)
  cwTypeSF_Sell_NalAgent_GosIm     : Word = 7229;  // ���-䠪��� ���������� ����� (���.�����⢮)
  cwTypeSF_Sell_NalAgent_Bankrot   : Word = 7230;  // ���-䠪��� ���������� ����� (����樨 � �����⠬�)
  cwTypeSF_Sell_VozvrAvans         : Word = 7209;  // ������ ������, �।������ �� ���⠢騪�
  cwTypeSF_Sell_Bel_FreePlat       : Word = 7215;  // ��᢮�������� ���⥦�, �த��� (��������)
  cwTypeSF_Sell_CorrV              : Word = 7241;  // ���४�஢��� ���-䠪���
  cwTypeSF_Sell_IsprOtgr           : Word = 7242;  // ��ࠢ����� ��, ���㧪�
  cwTypeSF_Sell_IsprAvans          : Word = 7243;  // ��ࠢ����� ��, �����, �।�����
  cwTypeSF_Sell_IsprCorrV          : Word = 7244;  // ��ࠢ����� ���४�஢�筮�� ��
  cwTypeSF_Sell_VozvrMC            : Word = 7208;  // ������ ⮢�� �� ���㯠⥫�
  cwTypeSF_Sell_VozvrMCRozn        : Word = 7210;  // ������ ⮢�� ���⠢騪� (஧���)
  cwTypeSF_Sell_Peny               : Word = 7245;  // ���-䠪��� �� ���䠬
  cwTypeSF_Sell_IsprPeny           : Word = 7246;  // ��ࠢ����� �� �� ���䠬
  cwTypeSF_Sell_Otgr_FullNach      : Word = 7205;  // ���-䠪���, ���㧪�, ������ ���᫥���
  cwTypeSF_Sell_ReNDS_Plat         : Word = 7206;  // ���-䠪���, ����⠭�������
  cwTypeSF_Sell_Otgr_Commiss       : Word = 7207;  // ���-䠪���, ���㧪�, �������
  cwTypeSF_Sell_Avans_Commiss      : Word = 7211;  // ���-䠪���, �����, �।�����, �������
  cwTypeSF_Sell_Consumer           : Word = 7212;  // ���-䠪��� �����稪�
  cwTypeSF_Sell_Consumer_Avans     : Word = 7214;  // ���-䠪��� �����稪�, �����
  cwTypeSF_Sell_Return             : Word = 7213;  // ���-䠪���, ���㧪�, ������
  cwTypeSF_Sell_CorrV_Consumer     : Word = 7224;  // ���४�஢��� ���-䠪��� �����稪�
  cwTypeSF_Sell_Ispr_Consumer      : Word = 7225;  // ��ࠢ����� �� �����稪�
  cwTypeSF_Sell_IsprCorrV_Consumer : Word = 7226;  // ��ࠢ����� ���४�஢�筮�� �� �����稪�
  cwTypeSF_Sell_Consumer_Sv        : Word = 7222;  // ������ ���-䠪��� �����稪�
  cwTypeSF_Sell_CMP                : Word = 7235;  // ��� �� ᮡ�⢥��� �㦤�
  cwTypeSF_Sell_FreeOtgr           : Word = 7236;  // ������������� ���㧪�
  cwTypeSF_Sell_Summa              : Word = 7237;  // ��।��, ��� �� �⮨���� � ��������
  cwTypeSF_Sell_Summa_Avans        : Word = 7238;  // �।����� ��।��, ��� �� �⮨���� � ��������
  cwTypeSF_Sell_Physical           : Word = 7239;  // ���-䠪��� �� 䨧��᪨� ��栬
  cwTypeSF_Sell_Consumer_Build     : Word = 7247;  // ���-䠪��� �����稪�-����ன騪�
  cwTypeSF_Sell_Physical_Avans     : Word = 7248;  // ���-䠪���, �����, �।����� �� 䨧��᪨� ��栬

  // ����� ���� �த��/���㯮�, ॣ�����㥬� � �� ॣ�����㥬�  (������ sfconst.Inc)
  cwBK_Reg     : Word = 0;
  cwBK_Not_Reg : Word = 1;


  // ⨯ ᯥ�䨪�樨 SpSopr
  lc_SpSchFType_Tov : word = 1;  // ⮢���
  lc_SpSchFType_Usl : word = 2;  // ��㣨

  // ⨯ �।�०�����
  lc_WarningMode_Cor : word = 0;  // ����� ���४��
  lc_WarningMode_Wrn : word = 1;  // �।�०�����
  lc_WarningMode_Err : word = 2;  // �訡��


  // ��� �� ����� "������� 2"
  lc_R02_ParentNodePath : string = '����/���㬥��/���';
  lc_R02_SlavedNodePath : string = lc_R02_ParentNodePath+'/�㬓����';

end; // const

#endif//__G2019_NDSNalR02_Inc__
