/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2001 корпорация ГАЛАКТИКА                         ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Контроллинг                                               ║
 ║ Версия        : 7.1                                                       ║
 ║ Назначение    : Отчет по распределению затрат по статье                   ║
 ║ Ответственный : Украинко.В (UkrV)                                         ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name = 'RComPareBudjet'
.nameinlist 'Базовая форма'
.hide
.fields
Str_DataTimeUser
Period_Baz
Period_Sr
VidZatr_Baz
VidZatr_Sr
VarCalc_Baz
VarCalc_St
Budjet_Baz
Budjet_St
Podr
NameZatr

nppZatr_1Or2LevelIer
Zatr_1Or2LevelIer
SumPlan_1Or2LevelIer
SumFact_1Or2LevelIer
Otkl_1Or2LevelIer
Proc_1Or2LevelIer

nppZatr_3LevelIer
Zatr_3LevelIer
SumPlan_3LevelIer
SumFact_3LevelIer
Otkl_3LevelIer
Proc_3LevelIer

nppZatr_4LevelIer
Zatr_4LevelIer
SumPlan_4LevelIer
SumFact_4LevelIer
Otkl_4LevelIer
Proc_4LevelIer

nppZatr
Zatr
SumPlan
SumFact
Otkl
Proc

S_SumPlan
S_SumFact
S_Otkl
S_Proc

.endfields

^
^^^^^^
.{
^^^^
.{
.case
.when Is1Or2LevelIer
^^^^^^
.when Is3LevelIer
^^^^^^
.when Is4LevelIer
^^^^^^
.else
^^^^^^
.end
.}
^^^^
.}
.endform


.linkform 'RComPareBudjet_02' prototype is 'RComPareBudjet'
.GROUP 'Сравнение смет.'
.nameinlist 'Сравнение смет.'
.slknumber
.fields
Str_DataTimeUser
 Period_Baz
 Period_Sr
 VidZatr_Baz
 VidZatr_Sr
 VarCalc_Baz
 VarCalc_St

Budjet_Baz
Budjet_St
Podr
NameZatr

nppZatr_1Or2LevelIer
Zatr_1Or2LevelIer
SumPlan_1Or2LevelIer
SumFact_1Or2LevelIer
Otkl_1Or2LevelIer
Proc_1Or2LevelIer

nppZatr_3LevelIer
Zatr_3LevelIer
SumPlan_3LevelIer
SumFact_3LevelIer
Otkl_3LevelIer
Proc_3LevelIer

nppZatr_4LevelIer
Zatr_4LevelIer
SumPlan_4LevelIer
SumFact_4LevelIer
Otkl_4LevelIer
Proc_4LevelIer

nppZatr
Zatr
SumPlan
SumFact
Otkl
Proc

S_SumPlan
S_SumFact
S_Otkl
S_Proc

.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

           Сравнение смет
                                Базовая                                  Сравниваемая
Период:                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Вид затрат:                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Вариант калькулирования\баланс: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{

Наименование сметы:             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
──────────┬─────────────────────────────────┬────────────────────────┬────────────────────────┬────────────────────────┬────────────────────────
Код       │Наименование                     │         Базовая        │      Сравниваемая      │       Отклонение       │  % Отклонения
          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│                        │                        │                        │
──────────┼─────────────────────────────────┼────────────────────────┼────────────────────────┼────────────────────────┼────────────────────────
.{
.case
.when Is1Or2LevelIer
@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&
.when Is3LevelIer
@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&
.when Is4LevelIer
@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&
.else
@@@@@@@@@@│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&&&&.&&
.end
.}
──────────┴─────────────────────────────────┴────────────────────────┴────────────────────────┴────────────────────────┴────────────────────────
ВСЕГО                                        &'&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&&&&.&&

.}
.endform
