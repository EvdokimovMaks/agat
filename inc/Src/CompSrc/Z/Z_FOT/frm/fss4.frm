/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2003 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.84                                                      ║
 ║ Назначение    : ФСС-4                                                     ║
 ║ Ответственный : Погосский Константин Владимирович                         ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
ФСС-4
#end
.set name='fss4'
.hide
.fields
MonthN MonthK YearK
NamePred XarName1
NameStrax
CodeOKPO
CodeOKDP
CodeOKONH
OKOPF
OKFS
OGRN
PredInn
CodeGni
Addres
KPPPred
RegNomPred
DataOtch

поле1003
поле2003
поле3003 поле3005

 До10021     До10022     До10023     До1003     До1003Fml
 От100до30021 От100до30022 От100до30023 От100до3003 От100до3003Fml
 Сум10021    Сум10022    Сум10023    Сум1003    Сум1003Fml
 Превыш10021 Превыш10022 Превыш10023 Превыш1003 Превыш1003Fml
 От300до60021 От300до60022 От300до60023 От300до6003 От300до6003Fml
 Сум30021    Сум30022    Сум30023    Сум3003    Сум3003Fml
 Превыш30021 Превыш30022 Превыш30023 Превыш3003 Превыш3003Fml
 Свыше60021  Свыше60022  Свыше60023  Свыше6003  Свыше6003Fml
 Сум60021    Сум60022    Сум60023    Сум6003    Сум6003Fml
 Превыш60021 Превыш60022 Превыш60023 Превыш6003 Превыш6003Fml
 Итого21      Итого22      Итого23      Итого3      Итого3Fml
 КонтрИтог1 КонтрИтог2 КонтрИтог3 КонтрИтог4 КонтрИтог5

Задолженость
ЗадолженостьВсего
ЗадолженостьНаначКварт
ЗадолженостьЗаКварт
Месяц1 ЗадолженостьМес1
Месяц2 ЗадолженостьМес2
Месяц3 ЗадолженостьМес3

ПолученоотисполнительногоорганаФондаВсего
ПолученоотисполнительногоорганаФондаНаначКварт
ПолученоотисполнительногоорганаФондаЗаКварт
ПолученоотисполнительногоорганаФондаМес1
ПолученоотисполнительногоорганаФондаМес2
ПолученоотисполнительногоорганаФондаМес3

Всего17
Sum1

ЗадолженностьзаисполнительныморганомФонданаконецотчетногопериода
ЗадолженностьзаисполнительныморганомФондананачалогода
ЗадолженностьзаисполнительныморганомФондаВсего
ЗадолженностьзаисполнительныморганомФондаНаначКварт
ЗадолженностьзаисполнительныморганомФондаЗаКварт
ЗадолженностьзаисполнительныморганомФондаМес1
ЗадолженностьзаисполнительныморганомФондаМес2
ЗадолженностьзаисполнительныморганомФондаМес3

ПеречисленединыйсоциальныйналогВсего
ПеречисленединыйсоциальныйналогНаначКварт
ПеречисленединыйсоциальныйналогЗаКварт
ПеречисленединыйсоциальныйналогМес1
ПеречисленединыйсоциальныйналогМес2
ПеречисленединыйсоциальныйналогМес3

Всего111314
Задолженностьзастрахователемнаконецотчетногопериода
Sum2
//---Дубль для раздела 2 3
Задолженость_3
ЗадолженостьВсего_3
ЗадолженостьНаначКварт_3
ЗадолженостьЗаКварт_3
Месяц1_3 ЗадолженостьМес1_3
Месяц2_3 ЗадолженостьМес2_3
Месяц3_3 ЗадолженостьМес3_3

ПолученоотисполнительногоорганаФондаВсего_3
ПолученоотисполнительногоорганаФондаНаначКварт_3
ПолученоотисполнительногоорганаФондаЗаКварт_3
ПолученоотисполнительногоорганаФондаМес1_3
ПолученоотисполнительногоорганаФондаМес2_3
ПолученоотисполнительногоорганаФондаМес3_3

Всего17_3
Sum1_3

ЗадолженностьзаисполнительныморганомФонданаконецотчетногопериода_3
ЗадолженностьзаисполнительныморганомФондананачалогода_3
ЗадолженностьзаисполнительныморганомФондаВсего_3
ЗадолженностьзаисполнительныморганомФондаНаначКварт_3
ЗадолженностьзаисполнительныморганомФондаЗаКварт_3
ЗадолженностьзаисполнительныморганомФондаМес1_3
ЗадолженностьзаисполнительныморганомФондаМес2_3
ЗадолженностьзаисполнительныморганомФондаМес3_3

ПеречисленединыйсоциальныйналогВсего_3
ПеречисленединыйсоциальныйналогНаначКварт_3
ПеречисленединыйсоциальныйналогЗаКварт_3
ПеречисленединыйсоциальныйналогМес1_3
ПеречисленединыйсоциальныйналогМес2_3
ПеречисленединыйсоциальныйналогМес3_3

Всего111314_3
Задолженностьзастрахователемнаконецотчетногопериода_3
Sum2_3
//---
MySrChisl MySrChislMes1 MySrChislMes2 MySrChislMes3 MySrChislJ MyFond
MySrChisl_2 MySrChislMes1_2 MySrChislMes2_2 MySrChislMes3_2 MySrChislJ_2 MyFond_2

ChisloSlych1  PerechKoldn1 PerechDoxod1 PerechDoxodRadiaz1
ChisloSlych2  PerechKoldn2 PerechDoxod2 PerechDoxodRadiaz2
ChisloSlych3  PerechKoldn3 PerechDoxod3 PerechDoxodRadiaz3
ChisloSlych4  PerechKoldn4 PerechDoxod4 PerechDoxodRadiaz4
ChisloSlych5  PerechKoldn5 PerechDoxod5 PerechDoxodRadiaz5
ChisloSlych6  PerechKoldn6 PerechDoxod6 PerechDoxodRadiaz6
ChisloSlych7  PerechKoldn7 PerechDoxod7 PerechDoxodRadiaz7
ChisloSlych8  PerechKoldn8 PerechDoxod8 PerechDoxodRadiaz8
vsego1 vsegoRadiaz1
ChisloSlych9  PerechKoldn9 PerechDoxod9 PerechDoxodRadiaz9
ChisloSlych10  PerechKoldn10 PerechDoxod10 PerechDoxodRadiaz10
ChisloSlych11  PerechKoldn11 PerechDoxod11 PerechDoxodRadiaz11
ChisloSlych12  PerechKoldn12 PerechDoxod12 PerechDoxodRadiaz12
vsego2 vsegoRadiaz2
ChisloSlych13  PerechKoldn13 PerechDoxod13 PerechDoxodRadiaz13
PerechKoldnSovm1 PerechDoxodSovm1 PerechDoxodRadiazSovm1
PerechKoldnFirst3 PerechDoxodFirst3 PerechDoxodRadiazFirst3
PerechKoldnMore3 PerechDoxodMore3 PerechDoxodRadiazMore3
PerechKoldnPregnSovm3 PerechDoxodPregnSovm3 PerechDoxodRadiazPregnSovm3
vsego3 vsegoRadiaz3
ItogPerechKoldn
vsego vsegoRadiaz
KonezVsego KonezVsegoRadiaz
//---Дубль для раздела 2
ChisloSlych1_2  PerechKoldn1_2 PerechDoxod1_2 PerechDoxodRadiaz1_2
ChisloSlych2_2  PerechKoldn2_2 PerechDoxod2_2 PerechDoxodRadiaz2_2
ChisloSlych3_2  PerechKoldn3_2 PerechDoxod3_2 PerechDoxodRadiaz3_2
ChisloSlych4_2  PerechKoldn4_2 PerechDoxod4_2 PerechDoxodRadiaz4_2
ChisloSlych5_2  PerechKoldn5_2 PerechDoxod5_2 PerechDoxodRadiaz5_2
ChisloSlych6_2  PerechKoldn6_2 PerechDoxod6_2 PerechDoxodRadiaz6_2
ChisloSlych7_2  PerechKoldn7_2 PerechDoxod7_2 PerechDoxodRadiaz7_2
ChisloSlych8_2  PerechKoldn8_2 PerechDoxod8_2 PerechDoxodRadiaz8_2
vsego1_2 vsegoRadiaz1_2
ChisloSlych9_2  PerechKoldn9_2 PerechDoxod9_2 PerechDoxodRadiaz9_2
ChisloSlych10_2  PerechKoldn10_2 PerechDoxod10_2 PerechDoxodRadiaz10_2
ChisloSlych11_2  PerechKoldn11_2 PerechDoxod11_2 PerechDoxodRadiaz11_2
ChisloSlych12_2  PerechKoldn12_2 PerechDoxod12_2 PerechDoxodRadiaz12_2
vsego2_2 vsegoRadiaz2_2
ChisloSlych13_2  PerechKoldn13_2 PerechDoxod13_2 PerechDoxodRadiaz13_2
vsego3_2 vsegoRadiaz3_2
ItogPerechKoldn_2
vsego_2 vsegoRadiaz_2
KonezVsego_2 KonezVsegoRadiaz_2
//---Таблица8
   ChisloRabRadiaz80    PerechDoxodRadiaz80
   ChisloRabRadiazCh80  PerechDoxodRadiazCh80
   ChisloRabRadiazM80   PerechDoxodRadiazM80
   ChisloRabRadiazC80   PerechDoxodRadiazC80
   ChisloRabRadiazO80   PerechDoxodRadiazO80
   ChisloRabRadiazI80   PerechDoxodRadiazI80

   ChisloRabRadiaz81  QuantSluchPregn  PerechDoxodRadiaz81
   ChisloRabRadiazCh81  PerechDoxodRadiazCh81
   ChisloRabRadiazM81   PerechDoxodRadiazM81
   ChisloRabRadiazC81   PerechDoxodRadiazC81
   ChisloRabRadiazO81   PerechDoxodRadiazO81
   ChisloRabRadiazI81   PerechDoxodRadiazI81

   ChisloRabRadiaz82  QuantSluchAllowChild  PerechDoxodRadiaz82
   ChisloRabRadiazCh82  PerechDoxodRadiazCh82
   ChisloRabRadiazM82   PerechDoxodRadiazM82
   ChisloRabRadiazC82   PerechDoxodRadiazC82
   ChisloRabRadiazO82   PerechDoxodRadiazO82
   ChisloRabRadiazI82   PerechDoxodRadiazI82

   ChisloRabRadiaz83    PerechDoxodRadiaz83
   ChisloRabRadiazCh83  PerechDoxodRadiazCh83
   ChisloRabRadiazM83   PerechDoxodRadiazM83
   ChisloRabRadiazC83   PerechDoxodRadiazC83
   ChisloRabRadiazO83   PerechDoxodRadiazO83
   ChisloRabRadiazI83   PerechDoxodRadiazI83

   ChisloRabRadiaz84    PerechDoxodRadiaz84
   ChisloRabRadiazCh84  PerechDoxodRadiazCh84
   ChisloRabRadiazM84   PerechDoxodRadiazM84
   ChisloRabRadiazC84   PerechDoxodRadiazC84
   ChisloRabRadiazO84   PerechDoxodRadiazO84
   ChisloRabRadiazI84   PerechDoxodRadiazI84

   ChisloRabRadiazFirst  QuantSluchAllowFirst  PerechDoxodRadiazFirst
   ChisloRabRadiazFirstCh  PerechDoxodRadiazFirstCh
   ChisloRabRadiazFirstM   PerechDoxodRadiazFirstM
   ChisloRabRadiazFirstC   PerechDoxodRadiazFirstC
   ChisloRabRadiazFirstO   PerechDoxodRadiazFirstO
   ChisloRabRadiazFirstI   PerechDoxodRadiazFirstI

   ChisloRabRadiazMore  QuantSluchAllowMore  PerechDoxodRadiazMore
   ChisloRabRadiazMoreCh  PerechDoxodRadiazMoreCh
   ChisloRabRadiazMoreM   PerechDoxodRadiazMoreM
   ChisloRabRadiazMoreC   PerechDoxodRadiazMoreC
   ChisloRabRadiazMoreO   PerechDoxodRadiazMoreO
   ChisloRabRadiazMoreI   PerechDoxodRadiazMoreI

   ChisloRabRadiaz85    PerechDoxodRadiaz85
   ChisloRabRadiazCh85  PerechDoxodRadiazCh85
   ChisloRabRadiazM85   PerechDoxodRadiazM85
   ChisloRabRadiazC85   PerechDoxodRadiazC85
   ChisloRabRadiazO85   PerechDoxodRadiazO85
   ChisloRabRadiazI85   PerechDoxodRadiazI85

   ChisloRabRadiaz86    PerechDoxodRadiaz86
   ChisloRabRadiazCh86  PerechDoxodRadiazCh86
   ChisloRabRadiazM86   PerechDoxodRadiazM86
   ChisloRabRadiazC86   PerechDoxodRadiazC86
   ChisloRabRadiazO86   PerechDoxodRadiazO86
   ChisloRabRadiazI86   PerechDoxodRadiazI86



   vsegoTablChisl8      vsegoTablDoxod8
   vsegoTablChisl81     vsegoTablDoxod81
   vsegoTablChisl82     vsegoTablDoxod82
   vsegoTablChisl83     vsegoTablDoxod83
   vsegoTablChisl84     vsegoTablDoxod84
   vsegoTablChisl85     vsegoTablDoxod85
//-----------
//---Таблица8 Дубль
   ChisloRabRadiaz80_2    PerechDoxodRadiaz80_2
   ChisloRabRadiazCh80_2  PerechDoxodRadiazCh80_2
   ChisloRabRadiazM80_2   PerechDoxodRadiazM80_2
   ChisloRabRadiazC80_2   PerechDoxodRadiazC80_2
   ChisloRabRadiazO80_2   PerechDoxodRadiazO80_2
   ChisloRabRadiazI80_2   PerechDoxodRadiazI80_2

   ChisloRabRadiaz81_2    PerechDoxodRadiaz81_2
   ChisloRabRadiazCh81_2  PerechDoxodRadiazCh81_2
   ChisloRabRadiazM81_2   PerechDoxodRadiazM81_2
   ChisloRabRadiazC81_2   PerechDoxodRadiazC81_2
   ChisloRabRadiazO81_2   PerechDoxodRadiazO81_2
   ChisloRabRadiazI81_2   PerechDoxodRadiazI81_2

   ChisloRabRadiaz82_2    PerechDoxodRadiaz82_2
   ChisloRabRadiazCh82_2  PerechDoxodRadiazCh82_2
   ChisloRabRadiazM82_2   PerechDoxodRadiazM82_2
   ChisloRabRadiazC82_2   PerechDoxodRadiazC82_2
   ChisloRabRadiazO82_2   PerechDoxodRadiazO82_2
   ChisloRabRadiazI82_2   PerechDoxodRadiazI82_2

   ChisloRabRadiaz83_2    PerechDoxodRadiaz83_2
   ChisloRabRadiazCh83_2  PerechDoxodRadiazCh83_2
   ChisloRabRadiazM83_2   PerechDoxodRadiazM83_2
   ChisloRabRadiazC83_2   PerechDoxodRadiazC83_2
   ChisloRabRadiazO83_2   PerechDoxodRadiazO83_2
   ChisloRabRadiazI83_2   PerechDoxodRadiazI83_2

   ChisloRabRadiaz84_2    PerechDoxodRadiaz84_2
   ChisloRabRadiazCh84_2  PerechDoxodRadiazCh84_2
   ChisloRabRadiazM84_2   PerechDoxodRadiazM84_2
   ChisloRabRadiazC84_2   PerechDoxodRadiazC84_2
   ChisloRabRadiazO84_2   PerechDoxodRadiazO84_2
   ChisloRabRadiazI84_2   PerechDoxodRadiazI84_2

   ChisloRabRadiaz85_2    PerechDoxodRadiaz85_2
   ChisloRabRadiazCh85_2  PerechDoxodRadiazCh85_2
   ChisloRabRadiazM85_2   PerechDoxodRadiazM85_2
   ChisloRabRadiazC85_2   PerechDoxodRadiazC85_2
   ChisloRabRadiazO85_2   PerechDoxodRadiazO85_2
   ChisloRabRadiazI85_2   PerechDoxodRadiazI85_2

   ChisloRabRadiaz86_2    PerechDoxodRadiaz86_2
   ChisloRabRadiazCh86_2  PerechDoxodRadiazCh86_2
   ChisloRabRadiazM86_2   PerechDoxodRadiazM86_2
   ChisloRabRadiazC86_2   PerechDoxodRadiazC86_2
   ChisloRabRadiazO86_2   PerechDoxodRadiazO86_2
   ChisloRabRadiazI86_2   PerechDoxodRadiazI86_2

   vsegoTablChisl8_2      vsegoTablDoxod8_2
   vsegoTablChisl81_2     vsegoTablDoxod81_2
   vsegoTablChisl82_2     vsegoTablDoxod82_2
   vsegoTablChisl83_2     vsegoTablDoxod83_2
   vsegoTablChisl84_2     vsegoTablDoxod84_2
   vsegoTablChisl85_2     vsegoTablDoxod85_2
//-----------
ViplataT
VsegoTravmatizm VsegoTravmatizmInvalid VsegoTravmatizmKvartal
VsegoNeTravmatizm VsegoNeTravmatizmKvartal
VsegoTravmatizmMes1 VsegoTravmatizmInvalidMes1 VsegoNeTravmatizmMes1
VsegoTravmatizmMes2 VsegoTravmatizmInvalidMes2 VsegoNeTravmatizmMes2
VsegoTravmatizmMes3 VsegoTravmatizmInvalidMes3 VsegoNeTravmatizmMes3
proz

ЗадолженостьТ
ЗадолженостьВсегоТ
ЗадолженостьНаначКвартТ
ЗадолженостьЗаКвартТ
ЗадолженостьМес1Т
ЗадолженостьМес2Т
ЗадолженостьМес3Т

Stroka3
Stroka4
Stroka5
Stroka6
Stroka7
Stroka8

ПолученоотисполнительногоорганаФондаВсегоТ
ПолученоотисполнительногоорганаФондаНаначКвартТ
ПолученоотисполнительногоорганаФондаЗаКвартТ
ПолученоотисполнительногоорганаФондаМес1Т
ПолученоотисполнительногоорганаФондаМес2Т
ПолученоотисполнительногоорганаФондаМес3Т

Всего17Т
Sum1Т

ЗадолженностьзаисполнительныморганомФонданаконецотчетногопериодаТ
ЗадолженностьзаисполнительныморганомФондананачалогодаТ
ЗадолженностьзаисполнительныморганомФондаВсегоТ
ЗадолженностьзаисполнительныморганомФондаНаначКвартТ
ЗадолженностьзаисполнительныморганомФондаЗаКвартТ
ЗадолженностьзаисполнительныморганомФондаМес1Т
ЗадолженностьзаисполнительныморганомФондаМес2Т
ЗадолженностьзаисполнительныморганомФондаМес3Т

ПеречисленединыйсоциальныйналогВсегоТ
ПеречисленединыйсоциальныйналогНаначКвартТ
ПеречисленединыйсоциальныйналогЗаКвартТ
ПеречисленединыйсоциальныйналогМес1Т
ПеречисленединыйсоциальныйналогМес2Т
ПеречисленединыйсоциальныйналогМес3Т

Stroka14
Stroka15

Всего111314Т
ЗадолженностьзастрахователемнаконецотчетногопериодаТ

Stroka18
Stroka19

Sum2Т
Sum2D
//---Таблица 11
Koldn11_1 Doxod11_1
Koldn11_2 Doxod11_2
Koldn11_3 Doxod11_3
Koldn11_4 Doxod11_4
Koldn11_5 Doxod11_5
Koldn11_6 Doxod11_6
Koldn11_7 Doxod11_7
Koldn11_8 Doxod11_8
Koldn11_9 Doxod11_9
Koldn11_I Doxod11_I
KonezKoldn11_I KonezDoxod11_I
//---
ДеньФорм
МесяцФорм
ГодФорм
Рук
Бух
Исп
Тел
.endfields
^^^
^.{.?Podr;,^ .}
^
^
^
^
^
^
^
^
^
^
^
^
^

 ^
 ^
 ^^
 ^ ^ ^

^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^^^^^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^

^
^
^
^
^^
^^
^^

^
^
^
^
^
^

^
^

^
^
^
^
^
^
^
^

^
^
^
^
^
^

^
^^
^^
//---Дубль для раздела 2 3
^
^
^
^
^^
^^
^^

^
^
^
^
^
^

^
^

^
^
^
^
^
^
^
^

^
^
^
^
^
^

^
^^
^^
//---
^^^^^^
^^^^^^
//---
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^
^ ^ ^ ^
^ ^
^
^ ^
//---Дубль для раздела 2
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^
^ ^ ^ ^
^ ^
^
^ ^
//---
//---Таблица8
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^

   ^^^^^^^^^^^^
//-----------
//---Таблица8 Дубль
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^
   ^^^^^^^^^^^^

   ^^^^^^^^^^^^
//-----------
^
^^^
^^
^^^
^^^
^^^
^

^
^
^
^
^
^
^

^
^
^
^
^
^

^
^
^
^
^
^

^
^

^
^
^
^
^
^
^
^

^
^
^
^
^
^

^
^

^
^

^
^

^
^
//---Таблица 11
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
^ ^
//---
^
^
^
^
^
^
^
.endForm