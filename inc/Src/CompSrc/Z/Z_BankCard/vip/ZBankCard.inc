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

  cosCard_Salary      = '��௫�⭠� (��.)';                       // cnCard_Salary
  cosCard_Corpo       = '��௮�⨢���';                           // cnCard_Corpo
  cosCard_SalaryDop   = '��௫�⭠� (���.)';                       // cnCard_SalaryDop
  cosCard_SalaryMP    = '��௫�⭠� (������. �믫.)';             // cnCard_SalaryMP
  cosCard_SalaryMPDop = '��௫�⭠� (���. ��� ������.�믫��)';    // cnCard_SalaryMPDop

// �ਭ���������� � ���⥦��� ��⥬�
  cnPay_American_Express    = 3;
  cnPay_Visa                = 4;
  cnPay_MasterCard          = 5;
  cnPay_MasterCard_Business = 54;
  cnPay_Maestro             = 6;
  cnPay_Other               = 0;

end;

#endif