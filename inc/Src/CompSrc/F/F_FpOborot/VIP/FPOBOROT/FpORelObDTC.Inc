//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������ ��ꥪ� : "����஫� ��ࠡ�⪨ �ࠢ�� ��।�� ������"
//------------------------------------------------------------------------------

#ifndef __FpORelObDTC_Inc__
#define __FpORelObDTC_Inc__

const
  // ०��� ����஫� ��।�� ������
  lc_RelObDTCMode_Off      = 0;  // ����஫� �몫�祭
  lc_RelObDTCMode_On       = 1;  // ����஫� ���⪨�
  lc_RelObDTCMode_Warning  = 2;  // ����஫� � �।�०������

  // ��⪨� ������������ ०���� ����஫�
  lc_RelObDTCName_Off      = '���';
  lc_RelObDTCName_On       = '��';
  lc_RelObDTCName_Warning  = '� ��������������';


  // �����䨪���� �����⬠
  lc_RelObDTCAlg_Prefix  = 'AlgDTC'  ;  // ��䨪� �����䨪��� �����⬠ ����஫�

  // �����䨪���� ��६����� �����⬠
  lc_RelObDTCFld_OldSum  = '%OldSum%';  // ���� �㬬� � ���
  lc_RelObDTCFld_NewSum  = '%NewSum%';  // ����� �㬬� � ���
  lc_RelObDTCFld_AddSum  = '%AddSum%';  // ��������� �㬬� � ���

  // ������ �� 㬮�砭��
  lc_RelObDTCAlg_DefaultAlg = lc_RelObDTCFld_NewSum + ' >= 0';
end;

#endif//__FpORelObDTC_Inc__
