//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������ ��ꥪ� : "����� � ����ᠬ� ������権"
//------------------------------------------------------------------------------

#ifndef __TaxReport_Status_Inc__
#define __TaxReport_Status_Inc__

const
  // ������祭�� ����ᮢ ������権 (KatNotes.Status)
  lc_TaxRep_Status_Null  : word = 9;  // �� ��࠭
  lc_TaxRep_Status_Oform : word = 0;  // ��ଫ塞�
  lc_TaxRep_Status_Gotov : word = 1;  // ��⮢ � ��ࠢ��
  lc_TaxRep_Status_Otpr  : word = 2;  // ��ࠢ���
  lc_TaxRep_Status_Sdan  : word = 3;  // ᤠ�
  lc_TaxRep_Status_Vozv  : word = 4;  // �����饭 �� ��ࠡ���
  lc_TaxRep_Status_Opl   : word = 5;  // ����祭

  // ������祭�� ����ᮢ ������権 (��ப��� ���) (KatNotes.Code)
  lc_TaxRep_Status_sOform : string[20] = '0';  // ��ଫ塞�
  lc_TaxRep_Status_sGotov : string[20] = '1';  // ��⮢ � ��ࠢ��
  lc_TaxRep_Status_sOtpr  : string[20] = '2';  // ��ࠢ���
  lc_TaxRep_Status_sSdan  : string[20] = '3';  // ᤠ�
  lc_TaxRep_Status_sVozv  : string[20] = '4';  // �����饭 �� ��ࠡ���
  lc_TaxRep_Status_sOpl   : string[20] = '5';  // ����祭
end; // const

#endif//__TaxReport_Status_Inc__