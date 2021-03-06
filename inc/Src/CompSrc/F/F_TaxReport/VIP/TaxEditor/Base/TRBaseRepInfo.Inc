//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������� ������⥪� �㭪権 : "���ଠ�� �� ����"
//------------------------------------------------------------------------------

#ifndef __TRBaseRepInfo_Inc__
#define __TRBaseRepInfo_Inc__

//------------------------------------------------------------------------------
#include EletronOtch.Inc  // �������� ����⠭�� "�����஭��� ���⭮��"
//------------------------------------------------------------------------------

const
  //----------------------------------------------------------------------------
  // ⨯� �����஭��� ���⮢
  // !!!�������� ⨯�� ��� F_TaxReport: cg_EOTaxRepID_MinValue..cg_EOTaxRepID_MaxValue (�. EletronOtch.Inc)
  lc_TaxRepID_TranD              : word = cg_EOTaxRepID_MinValue   ;  // �������� �� �࠭ᯮ�⭮�� ������ (1152004)
  lc_TaxRepID_Prib               : word = cg_EOTaxRepID_MinValue+ 1;  // �������� �� ������ �� �ਡ�� �࣠����権 (1151006)
  lc_TaxRepID_NDS                : word = cg_EOTaxRepID_MinValue+ 2;  // �������� �� ��� (1151001)
  lc_TaxRepID_BuhOtch            : word = cg_EOTaxRepID_MinValue+ 3;  // ��壠���᪠� (䨭��ᮢ��) ���⭮��� (0710099) 2014 �.
  lc_TaxRepID_ImuD               : word = cg_EOTaxRepID_MinValue+ 4;  // �������� �� ������ �� �����⢮ �࣠����権 (1152026)
  lc_TaxRepID_ImuR               : word = cg_EOTaxRepID_MinValue+ 5;  // ����� �� ����ᮢ��� ���⥦� �� ������ �� �����⢮ �࣠����権 (1152028)
  lc_TaxRepID_NDPI               : word = cg_EOTaxRepID_MinValue+ 6;  // �������� �� ���� (1151054)
  lc_TaxRepID_USN                : word = cg_EOTaxRepID_MinValue+ 8;  // �������� �� ��� (1152017)
  lc_TaxRepID_ENVD               : word = cg_EOTaxRepID_MinValue+ 9;  // �������� �� ���� (1152016)
  lc_TaxRepID_ZemND              : word = cg_EOTaxRepID_MinValue+10;  // �������� �� �����쭮�� ������ (1153005)
  lc_TaxRepID_OtgrProd           : word = cg_EOTaxRepID_MinValue+11;  // �������� � ���. ���. �� ���. �த., �믮��. ࠡ��� (��㣨) (1-�� (��筠�))
  lc_TaxRepID_FinVlog            : word = cg_EOTaxRepID_MinValue+12;  // �������� � 䨭��ᮢ�� ��������� � ��易⥫��⢠� (�-6)
  lc_TaxRepID_InvAndDolSt        : word = cg_EOTaxRepID_MinValue+13;  // �������� �� ��������� � ��䨭��ᮢ� ��⨢� (�-2)
  lc_TaxRepID_PrIOtgrTov         : word = cg_EOTaxRepID_MinValue+14;  // �������� � �ந�����⢥ � ���㧪� ⮢�஢ � ��� (�-1)
  lc_TaxRepID_ZadolPoZP          : word = cg_EOTaxRepID_MinValue+15;  // �������� � ����祭��� ������������ �� ��ࠡ�⭮� ���� (3-�)
  lc_TaxRepID_ZatrNaProizv       : word = cg_EOTaxRepID_MinValue+16;  // �������� � ������ �� �ந�����⢮ � �த��� �த�樨 (⮢�஢, ࠡ��, ���) (5-�)
  lc_TaxRepID_DeytOrg            : word = cg_EOTaxRepID_MinValue+17;  // �᭮��� ᢥ����� � ���⥫쭮�� �࣠����樨 (1-�।���⨥)
  lc_TaxRepID_FinSost            : word = cg_EOTaxRepID_MinValue+18;  // �������� � 䨭��ᮢ�� ���ﭨ� �࣠����樨 (�-3)
  lc_TaxRepID_BuhOtchPril        : word = cg_EOTaxRepID_MinValue+19;  // ��壠���᪠� (䨭��ᮢ��) ���⭮���. �ਫ������ (0710005)
  lc_TaxRepID_IspDenSr           : word = cg_EOTaxRepID_MinValue+20;  // �������� �� �ᯮ�짮����� �������� �।�� (12-�)
  lc_TaxRepID_KNTMSZ             : word = cg_EOTaxRepID_MinValue+21;  // �������� �� ��ᢥ��� ������� (1151088)
  lc_TaxRepID_NepolZanIDvijRabot : word = cg_EOTaxRepID_MinValue+22;  // �������� � �������� ������� � �������� ࠡ�⭨���
  lc_TaxRepID_AKCIZ              : word = cg_EOTaxRepID_MinValue+23;  // �������� �� ��樧�� �� �����樧�� ⮢���, �� �᪫�祭��� ⠡���� ������� (1151084)
  lc_TaxRepID_BUHMP              : word = cg_EOTaxRepID_MinValue+24;  // ��壠���᪠� (䨭��ᮢ��) ���⭮��� ��ꥪ⮢ ������ �।�ਭ���⥫��⢠(0710098)
  lc_TaxRepID_OTTRNDS            : word = cg_EOTaxRepID_MinValue+25;  // �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)
  lc_TaxRepID_BOUPR              : word = cg_EOTaxRepID_MinValue+26;  // ���饭��� ��壠���᪠� (䨭��ᮢ��) ���⭮���
  lc_TaxRepID_ESHN               : word = cg_EOTaxRepID_MinValue+27;  // �������� �� ���� (1151059)
  lc_TaxRepID_AKCAVNEF           : word = cg_EOTaxRepID_MinValue+28;  // �������� �� ��樧�� �� ��⮬������ ������ (1151089)
  lc_TaxRepID_AKCALK             : word = cg_EOTaxRepID_MinValue+29;  // �������� �� ��樧�� �� �⨫��� ᯨ��, ���������� � (���) �����樧��� ᯨ��ᮤ�ঠ��� �த��� (1151090)
  lc_TaxRepID_VodaNal            : word = cg_EOTaxRepID_MinValue+30;  // �������� �� ������� ������ (1151072)
  lc_TaxRepID_DohInOrg           : word = cg_EOTaxRepID_MinValue+31;  // �������� ���� � �㬬�� �믫�祭��� ������. ��. (1151056)
  lc_TaxRepID_UvKik              : word = cg_EOTaxRepID_MinValue+32;  // ����������� � ����஫��㥬�� �����࠭��� ��������� (1120416)
  lc_TaxRepID_UvUchIno           : word = cg_EOTaxRepID_MinValue+33;  // ����������� �� ���⨨ � �����࠭��� �࣠������� (1120411)
  lc_TaxRepID_DocNpNo            : word = cg_EOTaxRepID_MinValue+34;  // ���㬥�� ���ᯥ稢��騩 ��. ���㬥�⮮���� � �⭮襭���, ॣ㫨�㥬�� ��������⥫��⢮� � ������� � ᡮ�� (1184002)
  lc_TaxRepID_ZVIUN              : word = cg_EOTaxRepID_MinValue+35;  // ������ � ������ �㬬� ����譥 㯫�祭���� ������ (1150058)
  lc_TaxRepID_ZZIUN              : word = cg_EOTaxRepID_MinValue+36;  // ������ � ���� �㬬� ����譥 㯫�祭���� ������ (1150057)
  lc_TaxRepID_SvOGruzTrIDor      : word = cg_EOTaxRepID_MinValue+37;  // �������� � ��㧮��� ����࠭ᯮ�� � ���殮����� ��⮤�ண ��饣� ���짮����� (1-�� (����࠭ᯮ��))
  lc_TaxRepID_TranDAv            : word = cg_EOTaxRepID_MinValue+38;  // �������� �� �࠭ᯮ�⭮�� ������ (������)
  lc_TaxRepID_NDDUgl             : word = cg_EOTaxRepID_MinValue+39;  // �������� �� �������⥫�� ��室 �� ����� 㣫�����த���� ����� (1151029)
  lc_TaxRepID_PRORGLZTR          : word = cg_EOTaxRepID_MinValue+40;  // ������ ���������⥫�騪� - �࣠����樨 � �।��⠢����� ��������� �죮�� �� �࠭ᯮ�⭮�� ������ � (���) �����쭮�� ������ 1150064
  // !!!�������� ⨯�� ��� F_TaxReport: cg_EOTaxRepID_MinValue..cg_EOTaxRepID_MaxValue (�. EletronOtch.Inc)
  // ⨯� �����஭��� ���⮢
  //----------------------------------------------------------------------------

  // ��㯯� �����஭��� ���⭮��
  lc_TaxGroupName_All  = '���';
  lc_TaxGroupName_0001 = '��������� ���⭮���';
  lc_TaxGroupName_0002 = '������᪠� ���⭮���';
  lc_TaxGroupCode_All  : word = 0;
  lc_TaxGroupCode_0001 : word = 1;
  lc_TaxGroupCode_0002 : word = 2;

  // ��䨪��
  lc_TRInfo_IfcPrefix  = 'TaxReport_';
  lc_TRInfo_ObjIfcName = 'F_TaxReport::ITRBaseRepInfo';
  lc_TRInfo_ComponentPrefix = '#(__COMPONENT__)::';

end; // const

#endif//__TRBaseRepInfo_Inc__
