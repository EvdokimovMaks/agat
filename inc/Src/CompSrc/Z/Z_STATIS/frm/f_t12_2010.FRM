//-----------------------------------------------------------------------------
//                                                     (c) корпорация ГАЛАКТИКА
// Галактика 7.12 - заработная плата
// Форма Т-12 от 04.11.2009
//-----------------------------------------------------------------------------
#doc
Форма Т-12
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
  sOrganName  // Предприятие
  sPodr       // Подразделение
  OsnVid      // Вид деятельности
  Адрес
  Email
  месяц
  год
  ОКПО
  ОКОНХ
  ОКЮЛП
  УНП
  Tel_Org
  m_Month
  sAddrPodr
.endfields
  ^ ^ ^ ^ ^ // sOrganName  sPodr  OsnVid Адрес Email
  ^ ^ ^ ^   // месяц  год  ОКПО  ОКОНХ
  ^ ^ ^ ^ ^ // ОКЮЛП  УНП  Tel_Org m_Month
!---------------------------------------------------------------------------
! Раздел I
.fields
  гр_01_1  гр_01_2  гр_01_3  гр_01_4    // Среднесписочная численность (без внешних совместителей и работающих по гражданско-правовым договорам)
  гр_01_1_W  гр_02_1_W                  // Среднесписочная численность  женщины

  гр_02_1 гр_02_2 гр_02_3 гр_02_4
  гр_03_1 гр_03_2 гр_03_3 гр_03_4
  гр_04_1 гр_04_2 гр_04_3 гр_04_4
  гр_05_1 гр_05_2 гр_05_3 гр_05_4
  гр_06_1 гр_06_2 гр_06_3 гр_06_4
  гр_07_1
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
! Раздел II  - По подразделениям
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
! Раздел III
.fields
  str102_mon  str102_per
  гр_33_1     гр_33_2
  гр_35_1     гр_35_2
  str_106_1   str_106_2
  str_107_1   str_107_2
  гр_20_1     гр_20_2
  гр_22_1     гр_22_2
  гр_23_1     гр_23_2
  гр_24_1     гр_24_2
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
// Раздел IV
// По виду экономической деятельности  (kind of economic activity - KEA)
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
//продолжение 5-го раздела (форма с 2011 года)
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
 Босс
 ГлвБух
 день1 месяц1 год1
 Dolg_Isp
 Fio_Isp
 email1
.endfields
// Подножие
^
^
^ ^ ^
^ ^
^
.endform
