//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ���祭�� ����� ����
//------------------------------------------------------------------------------------------------------------
#ifndef _ValueInvoice_inc_
#define _ValueInvoice_inc_

const
  // invoiceDocType - ��� ����
  sf_ORIGINAL         = 0; // ��室�� ���-䠪���
  sf_ADDITIONAL       = 1; // �������⥫��
  sf_FIXED            = 2; // ��ࠢ�����
  sf_ADD_NO_REFERENCE = 4; // �������⥫�� ��� ��뫪� �� ��室��

  sf_sORIGINAL         = 'ORIGINAL';         // ��室�� ���-䠪���
  sf_sADDITIONAL       = 'ADDITIONAL';       // �������⥫��
  sf_sFIXED            = 'FIXED';            // ��ࠢ�����
  sf_sADD_NO_REFERENCE = 'ADD_NO_REFERENCE'; // �������⥫�� ��� ��뫪� �� ��室��

  // providerStatus - ����� ���⠢騪�
  pr_SELLER                  = 0; // �த����
  pr_CONSIGNOR               = 1; // ����⥭�
  pr_COMMISSIONAIRE          = 2; // �����ᨮ���
  pr_TAX_DEDUCTION_PAYER     = 3; // ���⥫�騪, ��।��騩 �������� �����
  pr_TRUSTEE                 = 4; // �����⥫�� �ࠢ���騩
  pr_FOREIGN_ORGANIZATION    = 5; // �����࠭��� �࣠������
  pr_AGENT                   = 6; // ���।���
  pr_DEVELOPER               = 7; // �����稪 (����ன騪)
  pr_TURNOVERS_ON_SALE_PAYER = 8; // ���⥫�騪, ��।��騩 ������ �� ॠ����樨

  // recipientStatus - ����� �����⥫�
  re_CUSTOMER                    = 0; // ���㯠⥫�
  re_CONSUMER                    = 1; // ���ॡ�⥫�
  re_CONSIGNOR                   = 2; // ����⥭�
  re_COMMISSIONAIRE              = 3; // �����ᨮ���
  re_TAX_DEDUCTION_RECIPIENT     = 4; // ���㯠⥫�, ������騩 �������� �����
  re_FOREIGN_ORGANIZATION_BUYER  = 5; // ���㯠⥫� ��ꥪ⮢ � �����࠭��� �࣠����樨
  re_TURNOVERS_ON_SALE_RECIPIENT = 6; // ���⥫�騪, ������騩 ������ �� ॠ����樨

  // requisites provider/recipient
  rq_dependentPerson     = 1;
  rq_residentsOfOffshore = 2;
  rq_specialDealGoods    = 4;
  rq_bigCompany          = 8;

  // rateType - ⨯ ���
  rt_sDECIMAL    = 'DECIMAL';    // ��� 䨪�஢����� �⠢�� (�஬� 0%)
  rt_sZERO       = 'ZERO';       // ��� �⠢�� 0%
  rt_sNO_VAT     = 'NO_VAT';     // ��� ���祭�� <��� ���>
  rt_sCALCULATED = 'CALCULATED'; // ���⭠� �⠢��

  // descriptionType ��� �������⥫��� ������
  dt_DEDUCTION_IN_FULL = 1; // ���� � ������ ��ꥬ�
  dt_VAT_EXEMPTION     = 2; // �᢮�������� �� ���
  dt_OUTSIDE_RB        = 4; // ��������� �� �।����� ���㡫��� ��������
  dt_IMPORT_VAT        = 8; // ������� ���

  ds_DEDUCTION_IN_FULL = 'DEDUCTION_IN_FULL';
  ds_VAT_EXEMPTION     = 'VAT_EXEMPTION';
  ds_OUTSIDE_RB        = 'OUTSIDE_RB';
  ds_IMPORT_VAT        = 'IMPORT_VAT';

  // typeDocument
  td_No            =   0; // �� 㪠���
  td_Default       =   1; // �� 㬮�砭��
  td_SeriaNumBlank =   2; // �� �ਨ � ������ ������
  td_BlankCode     =   3; // �� ���� ������
  td_WithoutDoc    = 600; // ��� ���㬥��
  td_Other         = 601; // ��㣮�
  td_TN2           = 602; // ��-2
  td_TTN1          = 603; // ���-1
  td_Dogovor       = 604; // �������
  td_Kontrakt      = 605; // ����ࠪ�
  td_Akt           = 606; // ���
  td_CMRNakl       = 607; // CMR-���������
  td_SF            = 608; // ���-䠪���
  td_Invoice       = 609; // invoice (���)
  td_Avizo         = 610; // �����
  td_BuhS          = 611; // ��壠���᪠� �ࠢ��
  td_AVR           = 612; // ��� �믮������� ࠡ��
  td_Konosament    = 613; // ����ᠬ���
  td_eTTN1         = 614; // �����஭��� ���-1
  td_eTN2          = 615; // �����஭��� ��-2

  // blankCode
  bc_SeriaNumBlank = 0;   // �� �ਨ � ������ ������
end;

#endif // _ValueInvoice_inc_
