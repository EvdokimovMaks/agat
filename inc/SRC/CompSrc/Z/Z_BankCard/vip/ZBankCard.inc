#ifndef _ZBankCard_inc_INCLUDED_
#define _ZBankCard_inc_INCLUDED_

const
//����஢�� 䠩��
  cn_file_encoding_UTF8        = 0; //UTF-8
  cn_file_encoding_Windows1251 = 1; //Windows-1251

//⨯ ������� � ������
  cn_Dogovor_Val        = 0; //� �����
  cn_Dogovor_NDE        = 1; //���

// ���� ����
  cnCard_Salary      = 0;    //�᭮��� ������᪨� ४������ (��ࠡ�⭠� ����)
  cnCard_SalaryDop   = 1;    //����� �������⥫쭮�� ����� (��ࠡ�⭠� ����)
  cnCard_SalaryMP    = 2;    //����� �᭮����� ����� ��� ��������� �믫��
  cnCard_SalaryMPDop = 3;    //����� �������⥫쭮�� ����� ��� ��������� �믫��.
  cnCard_Corpo       = 1000; //��௮�⨢��� ����
  cnCard_NO          = 100;  //��� �����, ���� ४������

  cosCard_Salary      = '��௫�⭠� (��.)';                       // cnCard_Salary
  cosCard_Corpo       = '��௮�⨢���';                           // cnCard_Corpo
  cosCard_SalaryDop   = '��௫�⭠� (���.)';                       // cnCard_SalaryDop
  cosCard_SalaryMP    = '��௫�⭠� (������. �믫.)';             // cnCard_SalaryMP
  cosCard_SalaryMPDop = '��௫�⭠� (���. ��� ������.�믫��)';    // cnCard_SalaryMPDop

// �ਭ���������� � ���⥦��� ��⥬�
  cnPay_American_Express    = 3;
  cnPay_Visa                = 4;
  cnPay_MasterCard          = 5;
  cnPay_JCB                 = 54;
  cnPay_Maestro             = 6;
  cnPay_MIR                 = 7;
  cnPay_Other               = 0;
  cnPay_No                  = 100;
  cnPay_MasterCard_Business = 55; //��� ᮢ���⨬���

  cnCard_NoExistence        = 0; //����稥 ����� - ���
  cnCard_Existence          = 1; //����稥 ����� - ��

  cnNameEmptyPROJECT        = '<��� �ਪ९����� � ��௫�⭮�� �஥��� � �����>'; 
  cnNameEmptyPROJECTsmall   = '��� �ਪ९����� � ���'; 

  cnData_Zarpl              = 1;
  cnData_Avans              = 2;

  cnAccessEditCard_ALL      = 0;//�� �ࠢ� �� ।���஢���� ������᪮� �����
  cnAccessEditCard_No       = 1;//⮫쪮 ��ᬮ��

  //����⠭�� ��� ����樮��஢���� �� �����
  cnUse_All                 = 0; //�� ����
  cnUse_Salary              = 1; //��௫��
  cnUse_Avans               = 2; //�����
  cnUse_Bank                = 3; //���� ��।�������� �����

  cnTransfer                = 0;
  cnCreate                  = 1;
  cnClose                   = 2;
  cnAll                     = 3;

end;

#endif
