//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��壠���᪨� ������
// ��ꥪ� �� ��ᬮ��� ᯨ᪠ ���㬥�⮢
//******************************************************************************

#ifndef __LnkLst_Inc__
#define __LnkLst_Inc__

const
  //----------------------------------------------------------------------------
  // ������������ ���譨� ��ਡ�⮢ DocInfo:
  lc_DocInfoExtAttrName_cDocInfo      = 'cDocInfo'     ;  // DocInfo.NRec

  // ���⢥ত��� ��।��� ��ꥪ� � �७��
  lc_DocInfoExtAttrName_dArendStart    = 'dArendStart'  ;  // ��� ��砫� �७��
  lc_DocInfoExtAttrName_dArendEnd      = 'dArendEnd'    ;  // ��� ����砭�� �७��
  lc_DocInfoExtAttrName_cArendator     = 'cArendator'   ;  // �࣠������ �७����
  lc_DocInfoExtAttrName_cDogovor       = 'cDogovor'     ;  // �������
  lc_DocInfoExtAttrName_inArend        = 'inArend'      ;  // ��।��� � �७��
  lc_DocInfoExtAttrName_cEd            = 'cEd'          ;  // ������� ����७��

  // ������஢�� ���ଠ��
  lc_DocInfoExtAttrName_sCadNum        = 'sCadNum'      ;  // ������஢� �����
  lc_DocInfoExtAttrName_sCadNumAdd     = 'sCadNumAdd'   ;  // ������஢� ����� ����饭��
  lc_DocInfoExtAttrName_sUslNum        = 'sUslNum'      ;  // �᫮��� �����
  lc_DocInfoExtAttrName_sTerrType      = 'sTerrType'    ;  // ��⥣��� ������
  lc_DocInfoExtAttrName_doCadStoim     = 'doCadStoim'   ;  // ������஢�� �⮨�����
  lc_DocInfoExtAttrName_TaxRate        = 'TaxRate'      ;  // ��������� �⠢��
  lc_DocInfoExtAttrName_TaxpayerShare  = 'TaxpayerShare';  // ���� ���������⥫�騪�
  lc_DocInfoExtAttrName_sDoljaNPChsl   = 'sDoljaNPChsl' ;  // ���� ���������⥫�騪� (�᫨⥫�)
  lc_DocInfoExtAttrName_sDoljaNPZnam   = 'sDoljaNPZnam' ;  // ���� ���������⥫�騪� (�������⥫�)
  lc_DocInfoExtAttrName_sDoljaPravSob  = 'sDoljaNPZnam' ;  // ���� � �ࠢ� ��饩 ᮡ�⢥�����
  lc_DocInfoExtAttrName_sDolja_6_378_2 = 'sDoljaNPZnam' ;  // ���� ������஢�� �⮨���� ������ � ᮮ⢥��⢨� � �. 6 ��. 378.2 �� ��
  lc_DocInfoExtAttrName_IsNotObjTax    = 'IsNotObjTax'  ;  // �� ���� ��ꥪ⮬ ��������������� ��� �����쭮�� ������

  // ��� � ��������� �࣠��
  lc_DocInfoExtAttrName_wFNSOrg        = 'wFNSOrg'      ;   // ����� ��� � ��������� �࣠��
  lc_DocInfoExtAttrName_sFNSOKTMO      = 'sFNSOKTMO'    ;   // ����� ���������� �࣠�� ���
  lc_DocInfoExtAttrName_sFNSCode       = 'sFNSCode'     ;   // ��� ���������� �࣠�� ���
  lc_DocInfoExtAttrName_IsSmenaNM      = 'IsSmenaNM'    ;   // ������� ���� � ��砫� �����

  // ����� �� ������������
  lc_DocInfoExtAttrName_IsImNotTax     = 'IsImNotTax'   ;   // �� �������� ���������������
  lc_DocInfoExtAttrName_wImMovable     = 'wImMovable'   ;   // ��� �����⢠ (��������/����������)
  lc_DocInfoExtAttrName_wImTaxBase     = 'wImTaxBase'   ;   // ��������� ���� ����������� �����⢠ (�।���������/������஢�� �⮨�����)
  lc_DocInfoExtAttrName_ImNotTaxSum    = 'ImNotTaxSum'  ;   // �� ���������� ������஢�� �⮨�����
  lc_DocInfoExtAttrName_wImVidCode     = 'wImVidCode'   ;   // ��� ���� �����⢠ (��� �/� �।��������� �⮨�����)
  lc_DocInfoExtAttrName_cImKatRate     = 'cImKatRate'   ;   // ��뫪� �� "��⠫�� �⠢�� � �죮�"
  lc_DocInfoExtAttrName_wImFeatures    = 'wImFeatures'  ;   // �ᮡ������ ���������������
  // ������������ ���譨� ��ਡ�⮢ DocInfo:
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // ����� ��� � ��������� �࣠��
  lc_DocInfo_FNSOrgMode_ByOrgPlace   : word  = 0;   // �� ����� ��宦����� �࣠����樨
  lc_DocInfo_FNSOrgMode_OtherOKTMO   : word  = 1;   // � ��㣨� ����� �����
  lc_DocInfo_FNSOrgMode_OtherFNS     : word  = 2;   // � ��㣮� ��������� �࣠��

  // ��� �����⢠
  lc_DocInfo_ImMovable_Yes           : word  = 0;   // �����⢮ ��������
  lc_DocInfo_ImMovable_Not           : word  = 1;   // �����⢮ ����������

  // ��������� ���� ����������� �����⢠
  lc_DocInfo_ImTaxBase_AvgCost       : word  = 0;   // �।��������� �⮨�����
  lc_DocInfo_ImTaxBase_CadCost       : word  = 1;   // ������஢�� �⮨�����

  // �ᮡ������ ���������������
  lc_DocInfo_ImFeatures_ESGSBit      : word  = 1;   // �室�� � ��⠢ ����
  lc_DocInfo_ImFeatures_NoLgBit      : word  = 2;   // ��� �죮�� ��� ��
  lc_DocInfo_ImFeatures_Kzhd         : word  = 4;   // �ਬ����� ���

  // ��� ���� �����⢠
  lc_DocInfo_wImVidCode_Deff         : word  = 3;   // "��� ���� �����⢠" �� 㬮�砭��
  //----------------------------------------------------------------------------

end; // const

#endif//__LnkLst_Inc__
