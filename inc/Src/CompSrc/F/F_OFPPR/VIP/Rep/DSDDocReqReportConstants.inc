//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����� "���⥦�� ��������� (PR)"
// ����⠭�� ��� ���� �� ����
//------------------------------------------------------------------------------

#ifndef __DSDDocReqDocReqReport_Inc__
#define __DSDDocReqDocReqReport_Inc__

const
  // ����⠭�� 䨫��஢
//  DSDDocReq_Filter_StateData      = 1; // ������ �� "���ﭨ� �� ����"
  DSDDocReq_Filter_Investor       = 1; // ������ �� ������ࠬ
  DSDDocReq_Filter_Contractor     = 2; // ������ �� ����ࠣ��⠬
  DSDDocReq_Filter_Contract       = 3; // ������ �� ������ࠬ
  DSDDocReq_Filter_Date           = 4; // ������ �� ��⠬
  DSDDocReq_Filter_Status         = 5; // ������ �� ������
  DSDDocReq_Filter_Implementation = 6; // ������ �� �ᯮ������
  DSDDocReq_Filter_Paying         = 7; // ������ �� �����

  // ��� ����
  DSDDocReq_DateFilter_FirstDate  = 1; // ������ �� ��砫쭮� ���
  DSDDocReq_DateFilter_SecondDate = 2; // ������ �� ����筮� ���
  DSDDocReq_DataFilter_StateData  = 3; // ������ "���ﭨ� �� ����"

  // ����饭�� ���짮��⥫�
  DSDDocReq_Delete_Question   = '������� ⥪���� ������?'   ; // ����� �� 㤠����� �����
  DSDDocReq_Date_NotPosible   = '�訡�� ����� ��������� ���'; // �訡�� ��������� ���
  DSDDocReq_Date_NoRecords    = '�� ������� �� ����� ����� 㤮���⢮���饩 ����ன���';
  DSDDocReq_Report_DateTitle  = '�� ���ﭨ� �� ';
  DSDDocReq_Filter_NoFilter   = '�� ������� ����ன�� ����';

  // ������������ 䨫��஢
  DSDDocReq_Name_NoName       = '��� �����'; // ������ ��� �����

  // XLS ����
  DSDExcluded_Report_RepID    = 'F_OFPPR\ExcludedDocReqRep'  ; // �����䨪��� ����
  DSDProduction_Report_RepID  = 'F_OFPPR\ProductionDocReqRep'; // �����䨪��� ����
  DSDSettings_MarkerName      = 'DSDSettingsMarker';

  // ������������ � ���祭�� ��६����� ����
  DSDDocReq_VarName_ReportDate   = '���_����';
  DSDDocReq_VarName_Filters      = '�������';
  DSDDocReq_VarName_FiltersValue = '�������:';

  // ������������ ⠡��� ����
  DSDDocReq_TblName_DSDDocReqList  = '���_';
  DSDDocReq_TblName_DSDFiltersList = '�������_';

  // ������������ ������� ⠡���
  DSDDocReq_TblCols_Number           = '�����_���'         ;
  DSDDocReq_TblCols_Date             = '���_���'          ;
  DSDDocReq_TblCols_ValName          = '�����'            ;
  DSDDocReq_TblCols_Sum              = '�㬬�'             ;
  DSDDocReq_TblCols_VATSum           = '�㬬�_���'         ;
  DSDDocReq_TblCols_Contractor       = '����ࠣ���'        ;
  DSDDocReq_TblCols_Contract         = '�������'           ;
  DSDDocReq_TblCols_Bill             = '���'              ;
  DSDDocReq_TblCols_Invoice          = '���_䠪���'      ;
  DSDDocReq_TblCols_TORG12           = '����'              ;
  DSDDocReq_TblCols_Akt              = '���_�����'         ;
  DSDDocReq_TblCols_PaymentType      = '���_���⥦�'       ;
  DSDDocReq_TblCols_PaymentPurpose   = '�����祭��_���⥦�';
  DSDDocReq_TblCols_Investor         = '�������'          ;
  DSDDocReq_TblCols_ListNumber       = '�����_������'     ;
  DSDDocReq_TblCols_ListDate         = '���_������'      ;
  DSDDocReq_TblCols_ExclusionPurpose = '��稭�_�᪫�祭��';
  DSDDocReq_TblCols_Note             = '�ਬ�砭��'        ;
  DSDDocReq_TblCols_Specification    = '����䨪���'      ;
  DSDDocReq_TblCols_DivisionName     = '������'            ;
  DSDDocReq_TblCols_SubDivisionName  = '���ࠧ���'         ;
  DSDDocReq_TblCols_SubSumVAT        = '����㬬�_���'      ;
  DSDDocReq_TblCols_PaymentKeeping   = '���ঠ���_�����'  ;
  DSDDocReq_TblCols_TotalSum         = '�⮣����_�㬬�'    ;
  DSDDocReq_TblCols_ObjectName       = '��ꥪ�'            ;
  DSDDocReq_TblCols_SubObjectName    = '�����ꥪ�'         ;
  DSDDocReq_TblCols_ObjectCode       = '���_��ꥪ�'       ;
  DSDDocReq_TblCols_Commission       = '����祭��'         ;
  DSDDocReq_TblCols_Enclosure        = '�ਫ������'        ;
  DSDDocReq_TblCols_DocReqStatus     = '�����'            ;
  DSDDocReq_TblCols_DesignSign       = '�ਧ���_�ᯮ������';
  DSDDocReq_TblCols_NotPayedSum      = '��_����祭�'       ;
  DSDDocReq_TblCols_PaymentOrderNum  = '�����_��'          ;
  DSDDocReq_TblCols_PaymentOrderDate = '���_��'           ;
  DSDDocReq_TblCols_PaymentMonth     = '�����_���⥦�'     ;
  DSDDocReq_TblCols_PaymentYear      = '���_���⥦�'       ;

  // ������ 䨫����
  DSDDocReq_TblColsFilter_Name       = '������'            ;
  DSDDocReq_TblColsFilter_Value      = '���祭��'          ;

end;

#endif // __DSDDocReqDocReqReport_Inc__
