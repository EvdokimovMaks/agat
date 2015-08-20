//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
//------------------------------------------------------------------------------
// Галактика 5.0 - ФРО
// Ежедневный учет по валютному счету и переоценка валют
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Информация о замене полей (в порядке убывания дат)
//
//  ----------------------------------------------------------------------------
//  DD-MM-YYYY
//  ----------------------------------------------------------------------------
//  31-05-2005
//
//    В прототип _добавлены_ поля:
//      wKau1, wKau2, wKau3, wKau4, wKau5, wKau6 : Word - Коды аналитик
//      основного счета, по которым сгруппирован отчет. Данные поля дополняют
//      поля KauXKod - значения (NRec-и) соответсвующих аналитик
//
//    В прототип _добавлены_ поля:
//      cOborot   содержит ссылку Oborot.NRec
//      cSoprHoz  содержит ссылку Oborot.cSoprHoz
//      SodrMode  содержит режим формирования содержания операции из интерфейса
//                настройки параметров отчета
//
//    Из прототипа _удалены_ поля:
//      Kau1Total, Kau2Total, Kau3Total, Kau4Total, Kau5Total, Kau6Total - эти
//      поля полностью дублировали поля Kau1Name и так далее, таким образом
//    Соответствие полей
//      Kau1Total := Kau1Name
//      Kau2Total := Kau2Name
//      Kau3Total := Kau3Name
//      Kau4Total := Kau4Name
//      Kau5Total := Kau5Name
//      Kau6Total := Kau6Name
//------------------------------------------------------------------------------

#doc
Базовая форма отчета "Ежедневный учет по валютному счету и переоценка валют"
#end
.set name = 'DayValutSch'
.group 'dayvalutsch_f1'
.nameinlist 'Базовая форма DayValutSch'
.hide
.fields
Interval
SchNumber
SchName
NDEName NDESimv RepVALName RepVALSimv
FiltrGroup
FiltrKod FiltrName
! валюта
Valuta CursDate CursVal
! субсчет основного счета
SubSch SubSchName
! подразделение
KodSPO NameSPO
! КАУ[1] основного счета
Kau1Name wKau1:word Kau1Kod:comp
! КАУ[2] основного счета
Kau2Name wKau2:word Kau2Kod:comp
! КАУ[3] основного счета
Kau3Name wKau3:word Kau3Kod:comp
! КАУ[4] основного счета
Kau4Name wKau4:word Kau4Kod:comp
! КАУ[5] основного счета
Kau5Name wKau5:word Kau5Kod:comp
! КАУ[6] основного счета
Kau6Name wKau6:word Kau6Kod:comp
! операции
NoDoc DateOp cOborot cSoprHoz SodrMode:word Platel Oper KorrSch KorrSubSch KursOper KursRazn
SaldoIn  SaldoInNDE  SaldoInRepVal
OborDeb  OborDebNDE  OborDebRepVal  OborKred  OborKredNDE  OborKredRepVal
SaldoOut  SaldoOutNDE  SaldoOutRepVal
! итого по КАУ[6]
KAU6SalIn KAU6SalInNDE KAU6SalInRepVal KAU6OborDeb KAU6OborDebNDE KAU6OborDebRepVal
KAU6OborKred KAU6OborKredNDE KAU6OborKredRepVal KAU6SalOut KAU6SalOutNDE KAU6SalOutRepVal
! итого по КАУ[5]
KAU5SalIn KAU5SalInNDE KAU5SalInRepVal KAU5OborDeb KAU5OborDebNDE KAU5OborDebRepVal
KAU5OborKred KAU5OborKredNDE KAU5OborKredRepVal KAU5SalOut KAU5SalOutNDE KAU5SalOutRepVal
! итого по КАУ[4]
KAU4SalIn KAU4SalInNDE KAU4SalInRepVal KAU4OborDeb KAU4OborDebNDE KAU4OborDebRepVal
KAU4OborKred KAU4OborKredNDE KAU4OborKredRepVal KAU4SalOut KAU4SalOutNDE KAU4SalOutRepVal
! итого по КАУ[3]
KAU3SalIn KAU3SalInNDE KAU3SalInRepVal KAU3OborDeb KAU3OborDebNDE KAU3OborDebRepVal
KAU3OborKred KAU3OborKredNDE KAU3OborKredRepVal KAU3SalOut KAU3SalOutNDE KAU3SalOutRepVal
! итого по КАУ[2]
KAU2SalIn KAU2SalInNDE KAU2SalInRepVal KAU2OborDeb KAU2OborDebNDE KAU2OborDebRepVal
KAU2OborKred KAU2OborKredNDE KAU2OborKredRepVal KAU2SalOut KAU2SalOutNDE KAU2SalOutRepVal
! итого по КАУ[1]
KAU1SalIn KAU1SalInNDE KAU1SalInRepVal KAU1OborDeb KAU1OborDebNDE KAU1OborDebRepVal
KAU1OborKred KAU1OborKredNDE KAU1OborKredRepVal KAU1SalOut KAU1SalOutNDE KAU1SalOutRepVal
! итого по подразделению
SPOSalIn SPOSalInNDE SPOSalInRepVal SPOOborDeb SPOOborDebNDE SPOOborDebRepVal
SPOOborKred SPOOborKredNDE SPOOborKredRepVal SPOSalOut SPOSalOutNDE SPOSalOutRepVal
! итого по субсчету
SubSalIn SubSalInNDE SubSalInRepVal SubOborDeb SubOborDebNDE SubOborDebRepVal
SubOborKred SubOborKredNDE SubOborKredRepVal SubSalOut SubSalOutNDE SubSalOutRepVal
! итого по валюте
ValSalIn ValSalInNDE ValSalInRepVal ValOborDeb ValOborDebNDE ValOborDebRepVal
ValOborKred ValOborKredNDE ValOborKredRepVal ValSalOut ValSalOutNDE ValSalOutRepVal
! итого по счету
      SchSalInNDE SchSalInRepVal       SchOborDebNDE SchOborDebRepVal
      SchOborKredNDE SchOborKredRepVal       SchSalOutNDE SchSalOutRepVal
.endfields

Interval    Интервал ^
SchNumber   Счет номер  ^
SchName   Счет имя    ^
NDEName    Нац ДЕ (имя)   ^
NDESimv    Нац ДЕ (симв)  ^
RepVALName    Валюта отчетов (имя)   ^
RepVALSimv    Валюта отчетов (симв)  ^
.if OkFilDvalut
.{
FiltrGroup ^
.{
FiltrKod ^
FiltrName ^
.}
.}
.end
.{
Valuta     по валюте    ^
CursDate     дата курса   ^
CursVal     курс         ^
.{
.if OkSubDeltaVal
SubSch     по субсчету номер ^
SubSchName     по субсчету имя   ^
.end
.{
.if OkPodrDeltaVal
KodSPO     код подразделения ^
NameSPO    наименования подразделения ^
.end
.{
.if OkKau1DeltaVal
Kau1Name наименование значения аналитики 1 ^
wKau1    код аналитики 1                   ^
Kau1Kod  значение аналитики 1              ^
.end
.{
.if OkKau2DeltaVal
Kau2Name наименование значения аналитики 2 ^
wKau2    код аналитики 2                   ^
Kau2Kod  значение аналитики 2              ^
.end
.{
.if OkKau3DeltaVal
Kau3Name наименование значения аналитики 3 ^
wKau3    код аналитики 3                   ^
Kau3Kod  значение аналитики 3              ^
.end
.{
.if OkKau4DeltaVal
Kau4Name наименование значения аналитики 4 ^
wKau4    код аналитики 4                   ^
Kau4Kod  значение аналитики 4              ^
.end
.{
.if OkKau5DeltaVal
Kau5Name наименование значения аналитики 5 ^
wKau5    код аналитики 5                   ^
Kau5Kod  значение аналитики 5              ^
.end
.{
.if OkKau6DeltaVal
Kau6Name наименование значения аналитики 6 ^
wKau6    код аналитики 6                   ^
Kau6Kod  значение аналитики 6              ^
.end
.{
NoDoc     N док            ^
DateOp  дата операции    ^
cOborot  - NRec проводки                 ^
cSoprHoz - ссылка на журнал хозопераций  ^
SodrMode - режим формирования содержания ^
Platel   - плательщик/получатель ^
Oper     - наименование операции ^
KorrSch     кор счет         ^
KorrSubSch     субсчет кор      ^
KursOper   курс операции    ^
KursRazn  курсовая разница ^
SaldoIn     сальдо вход     ^
SaldoInNDE         в НДЕ      ^
SaldoInRepVal   в вал. отчетов  ^
OborDeb     приход          ^
OborDebNDE                    ^
OborDebRepVal                   ^
OborKred     расход          ^
OborKredNDE                    ^
OborKredRepVal                   ^
SaldoOut     сальдо исх      ^
SaldoOutNDE                    ^
SaldoOutRepVal                   ^
.}
.if OkSumKau6DeltaVal
Итого за день по КАУ 6
KAU6SalIn     сальдо вход  ^
KAU6SalInNDE                 ^
KAU6SalInRepVal                ^
KAU6OborDeb     приход       ^
KAU6OborDebNDE                 ^
KAU6OborDebRepVal                ^
KAU6OborKred     расход       ^
KAU6OborKredNDE                 ^
KAU6OborKredRepVal                ^
KAU6SalOut     сальдо исх   ^
KAU6SalOutNDE                 ^
KAU6SalOutRepVal                ^
.end
.}
.if OkSumKau5DeltaVal
Итого за день по КАУ 5
KAU5SalIn     сальдо вход  ^
KAU5SalInNDE                  ^
KAU5SalInRepVal                 ^
KAU5OborDeb     приход       ^
KAU5OborDebNDE                 ^
KAU5OborDebRepVal                ^
KAU5OborKred     расход       ^
KAU5OborKredNDE                 ^
KAU5OborKredRepVal                ^
KAU5SalOut     сальдо исх   ^
KAU5SalOutNDE                 ^
KAU5SalOutRepVal                ^
.end
.}
.if OkSumKau4DeltaVal
Итого за день по КАУ 4
KAU4SalIn     сальдо вход  ^
KAU4SalInNDE                 ^
KAU4SalInRepVal                ^
KAU4OborDeb     приход       ^
KAU4OborDebNDE                 ^
KAU4OborDebRepVal                ^
KAU4OborKred     расход       ^
KAU4OborKredNDE                 ^
KAU4OborKredRepVal                ^
KAU4SalOut     сальдо исх   ^
KAU4SalOutNDE                 ^
KAU4SalOutRepVal                ^
.end
.}
.if OkSumKau3DeltaVal
Итого за день по КАУ 3
KAU3SalIn      сальдо вход  ^
KAU3SalInNDE                  ^
KAU3SalInRepVal                 ^
KAU3OborDeb     приход       ^
KAU3OborDebNDE                 ^
KAU3OborDebRepVal                ^
KAU3OborKred     расход       ^
KAU3OborKredNDE                 ^
KAU3OborKredRepVal                ^
KAU3SalOut     сальдо исх   ^
KAU3SalOutNDE                 ^
KAU3SalOutRepVal                ^
.end
.}
.if OkSumKau2DeltaVal
Итого за день по КАУ 2
KAU2SalIn      сальдо вход  ^
KAU2SalInNDE                  ^
KAU2SalInRepVal                 ^
KAU2OborDeb     приход       ^
KAU2OborDebNDE                 ^
KAU2OborDebRepVal                ^
KAU2OborKred     расход       ^
KAU2OborKredNDE                 ^
KAU2OborKredRepVal                ^
KAU2SalOut     сальдо исх   ^
KAU2SalOutNDE                 ^
KAU2SalOutRepVal                ^
.end
.}
.if OkSumKau1DeltaVal
Итого за день по КАУ 1
KAU1SalIn      сальдо вход  ^
KAU1SalInNDE                  ^
KAU1SalInRepVal                 ^
KAU1OborDeb     приход       ^
KAU1OborDebNDE                 ^
KAU1OborDebRepVal                ^
KAU1OborKred     расход       ^
KAU1OborKredNDE                 ^
KAU1OborKredRepVal                ^
KAU1SalOut     сальдо исх   ^
KAU1SalOutNDE                 ^
KAU1SalOutRepVal                ^
.end
.}
.if OkSumPodrDeltaVal
Итого по подразделению
SPOSalIn   ^
SPOSalInNDE ^
SPOSalInRepVal ^
SPOOborDeb ^
SPOOborDebNDE ^
SPOOborDebRepVal ^
SPOOborKred ^
SPOOborKredNDE ^
SPOOborKredRepVal ^
SPOSalOut ^
SPOSalOutNDE ^
SPOSalOutRepVal ^
.end
.}
.if OkSumSubDeltaVal
Итого за день по субсчету
SubSalIn     сальдо вход  ^
SubSalInNDE                 ^
SubSalInRepVal                ^
SubOborDeb     приход       ^
SubOborDebNDE                 ^
SubOborDebRepVal                ^
SubOborKred     расход       ^
SubOborKredNDE                 ^
SubOborKredRepVal                ^
SubSalOut     сальдо исх   ^
SubSalOutNDE                 ^
SubSalOutRepVal                ^
.end
.}
Итого за день по валюте
ValSalIn     сальдо вход  ^
ValSalInNDE                 ^
ValSalInRepVal                ^
ValOborDeb     приход       ^
ValOborDebNDE                 ^
ValOborDebRepVal                ^
ValOborKred     расход       ^
ValOborKredNDE                 ^
ValOborKredRepVal                ^
ValSalOut     сальдо исх   ^
ValSalOutNDE                 ^
ValSalOutRepVal                ^
.}
Итого за день по счету
SchSalInNDE    сальдо вход  ^
SchSalInRepVal                ^
SchOborDebNDE    приход       ^
SchOborDebRepVal                ^
SchOborKredNDE    расход       ^
SchOborKredRepVal                ^
SchSalOutNDE    сальдо исх   ^
SchSalOutRepVal                ^
.endform

.linkform 'DayValutSch_01' prototype is 'DayValutSch'
.group 'dayvalutsch_f1'
.nameinlist '1. Ежедневный учет по валюте'
.p 60
.defo landscape
.nonextheader
.fields
CommonFormHeader
Interval SchNumber
FiltrGroup
FiltrKod FiltrName
Valuta CursDate CursVal NDESimv
SubSch SubSchName
NameSPO
Kau1Name
Kau2Name
Kau3Name
Kau4Name
Kau5Name
Kau6Name
NoDoc KorrSch KorrSubSch Platel Oper KursOper KursRazn SaldoIn OborDeb OborKred SaldoOut
     Kau6Name KAU6SalIn KAU6OborDeb KAU6OborKred KAU6SalOut
     Kau5Name KAU5SalIn KAU5OborDeb KAU5OborKred KAU5SalOut
     Kau4Name KAU4SalIn KAU4OborDeb KAU4OborKred KAU4SalOut
     Kau3Name KAU3SalIn KAU3OborDeb KAU3OborKred KAU3SalOut
     Kau2Name KAU2SalIn KAU2OborDeb KAU2OborKred KAU2SalOut
     Kau1Name KAU1SalIn KAU1OborDeb KAU1OborKred KAU1SalOut
NameSPO  SPOSalIn SPOOborDeb SPOOborKred SPOSalOut
SubSch SubSchName SubSalIn SubOborDeb SubOborKred SubSalOut
Valuta      ValSalIn ValOborDeb ValOborKred ValSalOut
.endfields
 Р^
                                 Ежедневный учет в валюте  Б^ Б
                                              по  Б^ Б счету
.if OkFilDvalut
 ВПрименен фильтр... В
.{
    В^ В
.{
       В^ ^ В
.}
.}
.end
.{
.[h
                                                                                                                                                     лист @np@
────────┬──────────┬───────────────────────────┬──────────────────────────────────┬───────────┬─────────────┬─────────────────┬─────────────────────────────────┬────────────────
        │Корреспон-│                           │                                  │           │             │                 │                                 │
 Номер  │ дирующий │                           │                                  │Курс валюты│  Курсовая   │     Остаток     │          С  У  М  М  А          │     Остаток
 доку-  ├────┬─────┤  Плательщик / Получатель  │       Содержание  операции       │ на момент │   разница   │    на начало    │                                 │    на конец
 мента  │Счет│Суб- │                           │                                  │ операции  │    валют    │       дня       ├────────────────┬────────────────┤       дня
        │    │счет │                           │                                  │           │             │                 │     приход     │     расход     │
────────┴────┴─────┴───────────────────────────┴──────────────────────────────────┴───────────┴─────────────┴─────────────────┴────────────────┴────────────────┴────────────────
.]h
 БВалюта : ^, курс на ^ составил ^ ^ Б
.{
.if OkSubDeltaVal
 БСубсчет : ^ ^ Б
.end
.{
.if OkPodrDeltaVal
 БПодразделение : ^ Б
.end
.{
.if OkKau1DeltaVal
 БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau2DeltaVal
   БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau3DeltaVal
     БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau4DeltaVal
       БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau5DeltaVal
         БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau6DeltaVal
           БОбъект аналитического учета : ^ Б
.end
.{
@@@@@@@@ @@@@ @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&&& &#'&&&&&&&&&&&&& &#'&&&&&&&&&&&&& &#'&&&&&&&&&&&&&
.}
.if OkSumKau6DeltaVal
           БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau5DeltaVal
         БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau4DeltaVal
       БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau3DeltaVal
     БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau2DeltaVal
   БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau1DeltaVal
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumPodrDeltaVal
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumSubDeltaVal
 БИтого по @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
 БИтого по валюте @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                            &'&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& Б
═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
.}
Б у х г а л т е р Р
.endform

.linkform 'DayValutSch_02' prototype is 'DayValutSch'
.group 'dayvalutsch_f2'
.nameinlist '1. Ежедневный учет по валюте (эквивалент в НДЕ)'
.p 60
.defo landscape
.nonextheader
.fields
CommonFormHeader
Interval SchNumber
FiltrGroup
FiltrKod FiltrName
NDESimv NDESimv NDESimv NDESimv
Valuta CursDate CursVal NDESimv
SubSch SubSchName
NameSPO
Kau1Name
Kau2Name
Kau3Name
Kau4Name
Kau5Name
Kau6Name
NoDoc KorrSch KorrSubSch Platel Oper
SaldoIn SaldoInNDE OborDeb OborDebNDE OborKred OborKredNDE SaldoOut SaldoOutNDE KursOper KursRazn
     Kau6Name KAU6SalIn KAU6SalInNDE KAU6OborDeb KAU6OborDebNDE KAU6OborKred KAU6OborKredNDE KAU6SalOut KAU6SalOutNDE
     Kau5Name KAU5SalIn KAU5SalInNDE KAU5OborDeb KAU5OborDebNDE KAU5OborKred KAU5OborKredNDE KAU5SalOut KAU5SalOutNDE
     Kau4Name KAU4SalIn KAU4SalInNDE KAU4OborDeb KAU4OborDebNDE KAU4OborKred KAU4OborKredNDE KAU4SalOut KAU4SalOutNDE
     Kau3Name KAU3SalIn KAU3SalInNDE KAU3OborDeb KAU3OborDebNDE KAU3OborKred KAU3OborKredNDE KAU3SalOut KAU3SalOutNDE
     Kau2Name KAU2SalIn KAU2SalInNDE KAU2OborDeb KAU2OborDebNDE KAU2OborKred KAU2OborKredNDE KAU2SalOut KAU2SalOutNDE
     Kau1Name KAU1SalIn KAU1SalInNDE KAU1OborDeb KAU1OborDebNDE KAU1OborKred KAU1OborKredNDE KAU1SalOut KAU1SalOutNDE
     NameSPO   SPOSalIn  SPOSalInNDE  SPOOborDeb  SPOOborDebNDE SPOOborKred SPOOborKredNDE SPOSalOut SPOSalOutNDE
SubSch SubSchName   SubSalIn SubSalInNDE SubOborDeb SubOborDebNDE SubOborKred SubOborKredNDE SubSalOut SubSalOutNDE
Valuta        ValSalIn ValSalInNDE ValOborDeb ValOborDebNDE ValOborKred ValOborKredNDE ValSalOut ValSalOutNDE
SchNumber SchName       SchSalInNDE       SchOborDebNDE       SchOborKredNDE       SchSalOutNDE
.endfields
 Ш^
                                 Ежедневный учет в валюте  Б^ Б
                                              по  Б^ Б счету
.if OkFilDvalut
 ВПрименен фильтр... В
.{
    В^ В
.{
       В^ ^ В
.}
.}
.end
.{
.[h
                                                                                                                                                                                                                 лист @np@
────────┬──────────┬────────────────────────┬────────────────────────────┬───────────────────────────────┬─────────────────────────────────────────────────────────────┬───────────────────────────────┬─────────┬────────────
        │Корреспон-│                        │                            │                               │                        С  У  М  М  А                        │                               │         │
 Номер  │ дирующий │                        │                            │           Остаток             ├──────────────────────────────┬──────────────────────────────┤            Остаток            │  Курс   │  Курсовая
 доку-  ├────┬─────┤ Плательщик/Получатель  │    Содержание операции     │        на начало дня          │           приход             │          расход              │         на конец дня          │на момент│  разница
 мента  │Счет│Суб- │                        │                            ├─────────────┬─────────────────┼─────────────┬────────────────┼─────────────┬────────────────┼─────────────┬─────────────────┤операции │  валют
        │    │счет │                        │                            │  в валюте   │    в @@@@@@     │  в валюте   │    в @@@@@@    │  в валюте   │    в @@@@@@    │  в валюте   │     в @@@@@@    │         │
────────┴────┴─────┴────────────────────────┴────────────────────────────┴─────────────┴─────────────────┴─────────────┴────────────────┴─────────────┴────────────────┴─────────────┴─────────────────┴─────────┴────────────
.]h
 БВалюта : ^, курс на ^ составил ^ ^ Б
.{
.if OkSubDeltaVal
 БСубсчет : ^ ^ Б
.end
.{
.if OkPodrDeltaVal
 БПодразделение : ^ Б
.end
.{
.if OkKau1DeltaVal
 БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau2DeltaVal
   БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau3DeltaVal
     БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau4DeltaVal
       БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau5DeltaVal
         БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau6DeltaVal
           БОбъект аналитического учета : ^ Б
.end
.{
@@@@@@@@ @@@@ @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&&& &#'&&&&&&&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&&& &#'&&&&&& &#'&&&&&&&&&
.}
.if OkSumKau6DeltaVal
           БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau5DeltaVal
         БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau4DeltaVal
       БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau3DeltaVal
     БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau2DeltaVal
   БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau1DeltaVal
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumPodrDeltaVal
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumSubDeltaVal
 БИтого по @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
 БИтого по валюте @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
.}
 БИтого по @@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                &'&&&&&&&&&&&&&&&               &'&&&&&&&&&&&&&&               &'&&&&&&&&&&&&&&               &'&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Б у х г а л т е р Ш
.endform

.linkform 'DayValutSch_03' prototype is 'DayValutSch'
.group 'dayvalutsch_f3'
.nameinlist '1. Ежедневный учет по валюте (эквивалент в валюте отчетов)'
.p 60
.defo landscape
.nonextheader
.fields
CommonFormHeader
Interval
SchNumber
FiltrGroup
FiltrKod FiltrName
RepVALSimv  RepVALSimv  RepVALSimv RepVALSimv
Valuta CursDate CursVal NDESimv
SubSch SubSchName
NameSPO
Kau1Name
Kau2Name
Kau3Name
Kau4Name
Kau5Name
Kau6Name
NoDoc KorrSch KorrSubSch Platel Oper SaldoIn SaldoInRepVal OborDeb OborDebRepVal
OborKred OborKredRepVal SaldoOut SaldoOutRepVal
     Kau6Name KAU6SalIn KAU6SalInRepVal KAU6OborDeb KAU6OborDebRepVal KAU6OborKred KAU6OborKredRepVal KAU6SalOut KAU6SalOutRepVal
     Kau5Name KAU5SalIn KAU5SalInRepVal KAU5OborDeb KAU5OborDebRepVal KAU5OborKred KAU5OborKredRepVal KAU5SalOut KAU5SalOutRepVal
     Kau4Name KAU4SalIn KAU4SalInRepVal KAU4OborDeb KAU4OborDebRepVal KAU4OborKred KAU4OborKredRepVal KAU4SalOut KAU4SalOutRepVal
     Kau3Name KAU3SalIn KAU3SalInRepVal KAU3OborDeb KAU3OborDebRepVal KAU3OborKred KAU3OborKredRepVal KAU3SalOut KAU3SalOutRepVal
     Kau2Name KAU2SalIn KAU2SalInRepVal KAU2OborDeb KAU2OborDebRepVal KAU2OborKred KAU2OborKredRepVal KAU2SalOut KAU2SalOutRepVal
     Kau1Name KAU1SalIn KAU1SalInRepVal KAU1OborDeb KAU1OborDebRepVal KAU1OborKred KAU1OborKredRepVal KAU1SalOut KAU1SalOutRepVal
NameSPO        SPOSalIn  SPOSalInRepVal  SPOOborDeb  SPOOborDebRepVal  SPOOborKred  SPOOborKredRepVal  SPOSalOut  SPOSalOutRepVal
SubSch SubSchName   SubSalIn SubSalInRepVal SubOborDeb SubOborDebRepVal SubOborKred SubOborKredRepVal SubSalOut SubSalOutRepVal
Valuta        ValSalIn ValSalInRepVal ValOborDeb ValOborDebRepVal ValOborKred ValOborKredRepVal ValSalOut ValSalOutRepVal
SchNumber SchName       SchSalInRepVal       SchOborDebRepVal       SchOborKredRepVal       SchSalOutRepVal
.endfields
 Ш^
                                 Ежедневный учет в валюте  Б^ Б
                                              по  Б^ Б счету

.if OkFilDvalut
 ВПрименен фильтр... В
.{
    В^ В
.{
       В^ ^ В
.}
.}
.end
.{
.[h
                                                                                                                                                                                    лист @np@
────────┬──────────┬───────────────────────────┬──────────────────────────────────┬───────────────────────────────┬─────────────────────────────────────────────────────────────┬───────────────────────────────
        │Корреспон-│                           │                                  │                               │                        С  У  М  М  А                        │
 Номер  │ дирующий │                           │                                  │           Остаток             ├──────────────────────────────┬──────────────────────────────┤            Остаток
 доку-  ├────┬─────┤  Плательщик / Получатель  │       Содержание операции        │        на начало дня          │           приход             │          расход              │         на конец дня
 мента  │Счет│Суб- │                           │                                  ├─────────────┬─────────────────┼─────────────┬────────────────┼─────────────┬────────────────┼─────────────┬─────────────────
        │    │счет │                           │                                  │  в валюте   │    в @@@@@@     │  в валюте   │    в @@@@@@    │  в валюте   │    в @@@@@@    │  в валюте   │     в @@@@@@
────────┴────┴─────┴───────────────────────────┴──────────────────────────────────┴─────────────┴─────────────────┴─────────────┴────────────────┴─────────────┴────────────────┴─────────────┴─────────────────
.]h
 БВалюта : ^, курс на ^ составил ^ ^ Б
.{
.if OkSubDeltaVal
 БСубсчет : ^ ^ Б
.end
.{
.if OkPodrDeltaVal
 БПодразделение : ^ Б
.end
.{
.if OkKau1DeltaVal
 БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau2DeltaVal
   БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau3DeltaVal
     БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau4DeltaVal
       БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau5DeltaVal
         БОбъект аналитического учета : ^ Б
.end
.{
.if OkKau6DeltaVal
           БОбъект аналитического учета : ^ Б
.end
.{
@@@@@@@@ @@@@ @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&&& &#'&&&&&&&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&& &#'&&&&&&&&&& &#'&&&&&&&&&&&&&&
.}
.if OkSumKau6DeltaVal
           БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau5DeltaVal
         БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau4DeltaVal
       БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau3DeltaVal
     БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau2DeltaVal
   БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumKau1DeltaVal
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumPodrDeltaVal
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if OkSumSubDeltaVal
 БИтого по @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
 БИтого по валюте @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&& &'&&&&&&&&&&&&&&& Б
════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
.}
 БИтого по @@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                &'&&&&&&&&&&&&&&&               &'&&&&&&&&&&&&&&               &'&&&&&&&&&&&&&&               &'&&&&&&&&&&&&&&& Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Б у х г а л т е р Ш
.endform
