//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮���"
// ������� ������⥪� �㭪権 : "���ଠ�� �� ����"
//------------------------------------------------------------------------------

#ifndef __TRBaseRepInfo_Inc__
#define __TRBaseRepInfo_Inc__

const
  // ⨯� �����஭��� ���⮢
  lc_TaxRepID_TranD              : word =  1;  // �������� �� �࠭ᯮ�⭮�� ������ (1152004)
  lc_TaxRepID_Prib               : word =  2;  // �������� �� ������ �� �ਡ�� �࣠����権 (1151006)
  lc_TaxRepID_NDS                : word =  3;  // �������� �� ��� (1151001)
  lc_TaxRepID_BuhOtch            : word =  4;  // ��壠���᪠� (䨭��ᮢ��) ���⭮��� (0710099) 2014 �.
  lc_TaxRepID_ImuD               : word =  5;  // �������� �� ������ �� �����⢮ �࣠����権 (1152026)
  lc_TaxRepID_ImuR               : word =  6;  // ����� �� ����ᮢ��� ���⥦� �� ������ �� �����⢮ �࣠����権 (1152028)
  lc_TaxRepID_NDPI               : word =  7;  // �������� �� ���� (1151054)
  lc_TaxRepID_USN                : word =  9;  // �������� �� ��� (1152017)
  lc_TaxRepID_ENVD               : word = 10;  // �������� �� ���� (1152016)
  lc_TaxRepID_Zeml               : word = 11;  // �������� �� �����쭮�� ������ (1153005)
  lc_TaxRepID_OtgrProd           : word = 12;  // �������� � ���. ���. �� ���. �த., �믮��. ࠡ��� (��㣨) (1-�� (��筠�))
  lc_TaxRepID_FinVlog            : word = 13;  // �������� � 䨭��ᮢ�� ��������� � ��易⥫��⢠� (�-6)
  lc_TaxRepID_InvAndDolSt        : word = 14;  // �����. ���� �� ������. � ��䨭. ��⨢� � �।�⢠� �� ������� ��ந⥫��⢮ (�-2)
  lc_TaxRepID_PrIOtgrTov         : word = 15;  // �������� � �ந�����⢥ � ���㧪� ⮢�஢ � ��� (�-1)
  lc_TaxRepID_ZadolPoZP          : word = 16;  // �������� � ����祭��� ������������ �� ��ࠡ�⭮� ���� (3-�)
  lc_TaxRepID_ZatrNaProizv       : word = 17;  // �������� � ������ �� �ந�����⢮ � �த��� �த�樨 (⮢�஢, ࠡ��, ���) (5-�)
  lc_TaxRepID_DeytOrg            : word = 18;  // �᭮��� ᢥ����� � ���⥫쭮�� �࣠����樨 (1-�।���⨥)
  lc_TaxRepID_FinSost            : word = 19;  // �������� � 䨭��ᮢ�� ���ﭨ� �࣠����樨 (�-3)
  lc_TaxRepID_BuhOtchPril        : word = 20;  // ��壠���᪠� (䨭��ᮢ��) ���⭮���. �ਫ������ (0710005)
  lc_TaxRepID_IspDenSr           : word = 21;  // �������� �� �ᯮ�짮����� �������� �।�� (12-�)
  lc_TaxRepID_KNTMSZ             : word = 22;  // �������� �� ��ᢥ��� ������� (1151088)
  lc_TaxRepID_NepolZanIDvijRabot : word = 23;  // �������� � �������� ������� � �������� ࠡ�⭨���
  lc_TaxRepID_AKCIZ              : word = 24;  // �������� �� ��樧�� �� �����樧�� ⮢���, �� �᪫�祭��� ⠡���� ������� (1151084)
  lc_TaxRepID_BUHMP              : word = 25;  // ��壠���᪠� (䨭��ᮢ��) ���⭮��� ��ꥪ⮢ ������ �।�ਭ���⥫��⢠(0710098)
  lc_TaxRepID_OTTRNDS            : word = 26;  // �⢥� �� ᮮ�饭�� (� �ॡ������� �।�⠢����� ���᭥���)
  lc_TaxRepID_BOUPR              : word = 27;  // ���饭��� ��壠���᪠� (䨭��ᮢ��) ���⭮���
  lc_TaxRepID_ESHN               : word = 28;  // �������� �� ���� (1151059)

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