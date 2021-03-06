//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ���������"
// ������ : "����⠭�� �����ਭ�� ����"
//------------------------------------------------------------------------------

#ifndef __CashFlow_Monitoring_Constants_Inc__
#define __CashFlow_Monitoring_Constants_Inc__

const

  // ���� ������⥫��
  lc_CashFlow_Activity_BeginRemainder = 1; // ���⮪ �� ��砫�
  lc_CashFlow_Activity_Earnings       = 2; // ����㯫����
  lc_CashFlow_Activity_Expenditure    = 3; // ���室
  lc_CashFlow_Activity_CashFlow       = 4; // ������� ��⮪
  lc_CashFlow_Activity_EndRemainder   = 5; // ���⮪ �� �����

  // �������� ������⥫�� ��ॣ�⮢
  lc_CashFlow_AgrNames_BeginRemainder = '������� �� ������';
  lc_CashFlow_AgrNames_Earnings       = '�����������';
  lc_CashFlow_AgrNames_Expenditure    = '�������';
  lc_CashFlow_AgrNames_CashFlow       = '�������� �����';
  lc_CashFlow_AgrNames_EndRemainder   = '������� �� �����';

  // ���祭�� ॣ���� 㪠�뢠�饣� � ����� ��ਮ� �������� ���
  lc_CashFlow_Register_Fact       = 0; // ����
  lc_CashFlow_Register_Prediction = 1; // �ண���

  // ���� ������ �� ����� ��ந��� ���ଠ�� c।����筮�� �����஢����
  lc_CashFlow_Info_ClearingStBud = 0; // ���ଠ�� �� ࠧ��᪨ ���
  lc_CashFlow_Info_Clearing      = 1; // ���ଠ�� �� ���
  lc_CashFlow_Info_Budget        = 2; // ���ଠ�� �� ���
  lc_CashFlow_Info_Remainders    = 3; // ���ଠ�� �� ���⪠� ��

  // �������� ��६����� � �����⬮� �ᯮ��㥬�� � LotExpression
  lc_CashFlow_Alg_DeviationCount    = 'DeviationAlg';         // ������ ��� ���� �⪫������
  lc_CashFlow_Alg_CriticalDeviation = 'CriticalDeviationAlg'; // ������ ��� ���� ���筮�� �⪫������
  lc_CashFlow_Alg_Plan              = '%Plan%';               // ���祭�� �����
  lc_CashFlow_Alg_Fact              = '%Fact%';               // ���祭�� 䠪�
  lc_CashFlow_Alg_Prediction        = '%Prediction%';         // ���祭�� �ண����
  lc_CashFlow_Alg_Deviation         = '%Deviation%';          // ���祭�� �⪫������

  // ���� ��⥩ ��⮢
  lc_CashFlow_StBud_Income         = 1; // ���� ��室��
  lc_CashFlow_StBud_Charge         = 2; // ���� ��室��
  lc_CashFlow_StBud_BeginRemainder = 3; // ���� ��砫쭮�� ���⪠
  lc_CashFlow_StBud_EndRemainder   = 4; // ���� ����筮�� ���⪠

  // ������������ �������⭮�� ��
  lc_CashFlow_LeafName_NoCO        = '����।������ ��'; // �� ������� ��

  // ������������ �������⭮� ���� ���
  lc_CashFlow_LeafName_StBud       = '����।������� ����� ���'; // �� �����⭠� ����� ���

  // ������������ �訡���� ��⥩ ���
  lc_CashFlow_ErrorName_KolStBud      = '!!!������⢥���� ����� ';
  lc_CashFlow_ErrorName_BadDirection  = '!!!�� ᮮ⢥����� ���ࠢ����� ';

  // ���� ���祭�� �����뢠���� � ᫮���� �� ���᪥ FpValues (DSQL)
  //lc_CashFlow_DSQLValues_BudVar  = 8997;//'CashFlow_BudVar'; // ���祭�� ����� ���
  //lc_CashFlow_DSQLValues_Periods = 8998;//'CashFlow_Period'; // ���祭�� ��ਮ���
  //lc_CashFlow_DSQLValues_StBud   = 8999;//'CashFlow_StBud';  // ���祭�� ��⥩ ��⮢

end;

#endif // __CashFlow_Monitoring_Constants_Inc__
