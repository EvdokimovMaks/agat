//-----------------------------------------------------------------------------
//                                                     (c) ��௮��� ���������
// �����⨪� 7.12 - ��ࠡ�⭠� ����
// ��ଠ �-12 �� 04.11.2009
//-----------------------------------------------------------------------------
#doc
��ଠ �-12
#end
.form f_t12_2010
.hide
.p 60
.var
  zero : double;
.endvar
.begin
  zero := 0.0001;
end.

.fields
  sOrganName  // �।���⨥
  sPodr       // ���ࠧ�������
  OsnVid      // ��� ���⥫쭮��
  ����
  Email
  �����
  ���
  ����
  �����
  �����
  ���
  Tel_Org
  m_Month
  sAddrPodr
.endfields
  ^ ^ ^ ^ ^ // sOrganName  sPodr  OsnVid ���� Email
  ^ ^ ^ ^   // �����  ���  ����  �����
  ^ ^ ^ ^ ^ // �����  ���  Tel_Org m_Month
!---------------------------------------------------------------------------
! ������ I
.fields
  ��_01_1  ��_01_2  ��_01_3  ��_01_4    // �।��ᯨ�筠� �᫥������ (��� ���譨� ᮢ����⥫�� � ࠡ����� �� �ࠦ���᪮-�ࠢ��� ������ࠬ)
  ��_01_1_W  ��_02_1_W                  // �।��ᯨ�筠� �᫥������  ���騭�

  ��_02_1 ��_02_2 ��_02_3 ��_02_4
  ��_03_1 ��_03_2 ��_03_3 ��_03_4
  ��_04_1 ��_04_2 ��_04_3 ��_04_4
  ��_05_1 ��_05_2 ��_05_3 ��_05_4
  ��_06_1 ��_06_2 ��_06_3 ��_06_4
  ��_07_1
.endfields
 ^ ^ ^ ^
 ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^
!---------------------------------------------------------------------------
! ������ II  - �� ���ࠧ�������
.fields
  Itogo_QuantityListMonth
  Itogo_p5QuantityListPeriod
  Itogo_p5WageFundListMonth
  Itogo_p5WageFundListPeriod
  Itogo_MonthExternalJob
  Itogo_PeriodExternalJob
  Itogo_p5QuantityListPeriod_w
  p5LineNumber            p5DepartmentName     p5Place
  p5QuantityListMonth     p5QuantityListPeriod
  p5WageFundListMonth     p5WageFundListPeriod
  MonthExternalJob        PeriodExternalJob
.endfields
^ ^ ^ ^ ^ ^ ^
.{
  ^ ^ ^ 
  ^ ^ 
  ^ ^ 
  ^ ^ 
.}
!---------------------------------------------------------------------------
! ������ III
.fields
  str102_mon  str102_per
  ��_33_1     ��_33_2
  ��_35_1     ��_35_2
  str_106_1   str_106_2
  str_107_1   str_107_2
  ��_20_1     ��_20_2
  ��_22_1     ��_22_2
  ��_23_1     ��_23_2
  ��_24_1     ��_24_2
.endfields
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^

.{ Forma1_t_4Part1 CheckEnter
// ������ IV
// �� ���� ��������᪮� ���⥫쭮��  (kind of economic activity - KEA)
.fields
 p4LineNumber
              p4QuantityCurPeriodAll  p4QuantityCurMonthAll
              p4QuantityLastPeriodAll p4QuantityLastMonthAll
              p4WageFundCurPeriodAll  p4WageFundCurMonthAll
              p4WageFundLastPeriodAll p4WageFundLastMonthAll
              p4QuantityListPeriodAll
 p4LineNumber2
 p4KEAName p4LineNumberCycle p4CKEA 
 p4QuantityCurPeriod  p4QuantityCurMonth
 p4QuantityLastPeriod p4QuantityLastMonth
 p4WageFundCurPeriod  p4WageFundCurMonth
 p4WageFundLastPeriod p4WageFundLastMonth
 p4QuantityListPeriod
 p4curPeriodcontrJob
.endfields
p4LineNumber ^
p4QuantityCurPeriodAll ^
p4QuantityCurMonthAll  ^ ^ ^ ^ ^ ^ ^ ^
 ^
.{ Forma1_t_KEA1 CheckEnter
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ 
.}
.}
//�த������� 5-�� ࠧ���� (�ଠ � 2011 ����)
.fields
 p4LineNumber_Cont
 MonthListworker_Itogo
 periodListworker_Itogo
 MonthcontrJob_Itogo
 PeriodcontrJob_Itogo
 MonthExternalJob_Itogo
 PeriodExternalJob_Itogo
 p4LineNumber_Cycle_Cont
 MonthListworker
 periodListworker
 MonthcontrJob
 PeriodcontrJob
 MonthExternalJob_
 PeriodExternalJob_
.endfields
.{ Forma1_t_4PartEmpty1 CheckEnter
^ ^ ^ ^ ^ ^ ^   
.{ Forma1_t_KEA2 CheckEnter
^
^ ^ ^ ^ ^ ^
.}
.}


.fields
 ����
 ���ᄮ�������
 ������
 ����1 �����1 ���1
 Dolg_Isp
 Fio_Isp
 email1
.endfields
// ��������
^
^
^
^ ^ ^
^ ^
^
.endform
