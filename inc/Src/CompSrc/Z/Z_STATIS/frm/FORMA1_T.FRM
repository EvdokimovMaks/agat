/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.50                                                      ║
 ║ Назначение    : Форма 1-Т                                                 ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Форма 1-Т
#end
.form forma1_t
.hide
.p 60
.var
  zero: Double;
.endvar
.begin
  zero := 0.0001;
end.

.fields
 Предприятие
 Podr
 OsnVid
 Адрес
 месяц год ОКПО ОКОНХ
 ОКЮЛП
 УНП
 Tel_Org

.endfields
 ^
 ^
 ^
 ^
 ^ ^ ^ ^
 ^
 ^
 ^
! выброс листа
.if BPage
.end
// Раздел I
.fields
 гр_01_1 гр_01_2 гр_01_3 гр_01_4
 гр_02_1 гр_02_2 гр_02_3 гр_02_4
 гр_03_1 гр_03_2 гр_03_3 гр_03_4
 гр_04_1 гр_04_2 гр_04_3 гр_04_4
 гр_05_1 гр_05_2 гр_05_3 гр_05_4
 гр_06_1 гр_06_2 гр_06_3 гр_06_4
 гр_07_1
 гр_10_1 гр_10_2
 гр_11_1 гр_11_2
.endfields
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^
 ^
 ^ ^
 ^ ^

.fields
 гр_20_1 гр_20_2
 гр_22_1 гр_22_2
 гр_23_1 гр_23_2
 гр_24_1 гр_24_2
 гр_25_1 гр_25_2

 гр_26_1 гр_26_2
 гр_27_1 гр_27_2
 гр_28_1 гр_28_2
 гр_29

 гр_33_1 гр_33_2
 гр_35_1 гр_35_2

 гр_37_1 гр_37_2

.endfields
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^

^ ^
^ ^

^ ^
// Раздел III
.fields
 Ит_графа1 Ит_графа2 Ит_графа3 Ит_графа4 Ит_графа5 Ит_графа6 Ит_графа7  Ит_графа8
.endfields
^ ^ ^ ^ ^ ^ ^ ^
// Цикл
.fields
 Npp категория графа1 графа2 графа3 графа4 графа5 графа6 графа7 графа8
.endfields
.{ РForma1_t_Kateg Р CheckEnter
// Итерация
^ ^ ^ ^ ^  ^ ^ ^ ^ ^
.}
// Нумерация - продолжение
.fields
 Npp1 Npp2 Npp3 Npp4 Npp5 Npp6 Npp7 Npp8 Npp9
.endfields
^ ^ ^ ^ ^ ^ ^ ^ ^
.{ Forma1_t_4Part CheckEnter
// Раздел IV
// По виду экономической деятельности  (kind of economic activity - KEA)
.fields
 p4LineNumber p4QuantityCurPeriodAll p4QuantityLastPeriodAll p4WageFundCurPeriodAll p4WageFundLastPeriodAll p4QuantityListPeriodAll
 p4LineNumber2
 p4KEAName p4LineNumberCycle p4CKEA p4QuantityCurPeriod p4QuantityLastPeriod p4WageFundCurPeriod p4WageFundLastPeriod p4QuantityListPeriod
.endfields
 ^ ^ ^ ^ ^ ^
 ^
.{ Forma1_t_KEA CheckEnter
  ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
// Пустая таблица 4-го раздела
.{ Forma1_t_4PartEmpty CheckEnter
.}

.{ Forma1_t_5Part CheckEnter
// Раздел V
// По подразделениям
.fields
 p5LineNumber p5DepartmentName p5Place p5QuantityCurMonth p5QuantityCurPeriod p5QuantityLastPeriod p5WageFundCurMonth p5WageFundCurPeriod p5WageFundLastPeriod p5QuantityListPeriod p5WageFundListPeriod
.endfields
.{ Forma1_t_Departments CheckEnter
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}

// Пустая таблица 5-го раздела
.{ Forma1_t_5PartEmpty CheckEnter
.}

.fields
 Босс
 ГлвБух
 Dolg_Isp Fio_Isp
 день1 месяц1 год1
.endfields
// Подножие
^
^
^ ^
^ ^ ^
.endform
