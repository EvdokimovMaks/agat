//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ���������"
// ������ : "����⠭�� ����஥� ����"
//------------------------------------------------------------------------------

#ifndef __CashFlow_Settings_Constants_Inc__
#define __CashFlow_Settings_Constants_Inc__

const

  // �뢮���� ��
  lc_CashFlow_ShowMeans_NotShow     = 0; // �� �뢮����
  lc_CashFlow_ShowMeans_ShowAll     = 1; // �뢮���� ��
  lc_CashFlow_ShowMeans_Default     = 2; // ���祭�� �� ���� ����஥�

  // ����ன�� ��� Excel ����
  lc_CashFlow_Report_RepID   = 'F_OFP\OfpRepCashFlow'; // �����䨪��� ����
  lc_CashFlow_Report_Indent  = 2;                      // ����� ��� ������ �஢��

  // ������������ ��६����� ����
  lc_CashFlow_VarNames_ReportName     = '���������';
  lc_CashFlow_VarNames_ReportDate     = '���_����';
  lc_CashFlow_VarNames_IsFact         = '�뢮����_䠪�';
  lc_CashFlow_VarNames_IsPrediction   = '�뢮����_�ண���';
  lc_CashFlow_VarNames_IsPlan         = '�뢮����_����';


  // ������������ ⠡��� ����
  lc_CashFlow_TblNames_BeginOfName    = '���������_����_';
  lc_CashFlow_TblNames_BeginRemainder = '���_���⮪';
  lc_CashFlow_TblNames_Earnings       = '����㯫����';
  lc_CashFlow_TblNames_Expenditure    = '�����';
  lc_CashFlow_TblNames_CashFlow       = '��⮪';
  lc_CashFlow_TblNames_EndRemainder   = '���_���⮪';

  // ������������ ������� ⠡���
  lc_CashFlow_TblCols_Name       = '_��������';
  lc_CashFlow_TblCols_Plan       = '_����';
  lc_CashFlow_TblCols_Fact       = '_����';
  lc_CashFlow_TblCols_Prediction = '_�ண���';
  lc_CashFlow_TblCols_Deviation  = '_�⪫������';
  lc_CashFlow_TblCols_DaySum     = '_����_';

  lc_CashFlow_TblCols_MainAgr    = '_������_��ॣ��';
  lc_CashFlow_TblCols_IsLeaf     = '_����';
  lc_CashFlow_TblCols_LevelType  = '_���_�����';

  // ��� ����� � ����
  lc_CashFlow_RecordType_MainAgregate = 0; // ������ ��ॣ��
  lc_CashFlow_RecordType_StBud        = 1; // ����� ��⮢
  lc_CashFlow_RecordType_Analitics    = 2; // �����⨪�
  lc_CashFlow_RecordType_CO           = 3; // ����� �⢥��⢥�����

  // ����⠭�� ��� �஢�ન XLT ����
  lc_CashFlow_XLT_2003Name       = '.XLT'; // ����७�� 䠩�� ��� ���� Excel 2003
  lc_CashFlow_XLT_MaxColumnCount = 250   ; // ���ᨬ��쭮� ������⢮ ������� ��� 蠡���� Excel 2003

end;

#endif // __CashFlow_Settings_Constants_Inc__
