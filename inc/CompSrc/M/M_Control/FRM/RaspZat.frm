/*
 ╔════════════════════════════════════════════════════════════════════════╗
 ║             (c) Корпорация ГАЛАКТИКА, 2001                             ║
 ║ Проект        : Модуль "Контроллинг"                                   ║
 ║ Версия        : 7.1                                                    ║
 ║ Назначение    : Отчет по распределению затрат                          ║
 ║ Ответственный : Медведь Н.Л.(Medved)                                   ║
 ╚════════════════════════════════════════════════════════════════════════╝
*/
.set name='RaspZat'
.NameInList 'Базовая форма'
.hide
.fields
  NamePl_Fact
  NamePodr                      cnRec_Podr
  NamePeriod                    cnRec_Period
  NameVK
  NameBalans
  NameStatZatr                  cnRec_StZatr
  NameKaElem                    cnRec_KaElem
  NameSostojanie
  RaspredSum
  VariantRaspred
  AbbrRes EdRes AbbrSum EdSum
  PlanSum PlanRes
  GroupStRs Rashod Summa
  NameStZt RashodP SummaP       cnRec_MWZ
                                VidBudj cnRec_Budjet
.endfields
^
.{
^ ^
^ ^
^
^ ^
^ ^
^ ^
^ ^ ^ ^
^ ^
^ ^
.{ CheckEnter GroupRZ
^ ^ ^
.{ CheckEnter GroupRZList
^ ^ ^ ^ ^ ^
.}
.}
.}
.endform

.LinkForm 'RaspZat_01' Prototype is 'RaspZat'
.NameInList 'Отчет в формате Текст'
.fields
  NamePl_Fact
  NamePeriod
  NamePodr
  NameSostojanie
  NameStatZatr
  NameKaElem
  RaspredSum AbbrSum
  VariantRaspred
  PlanSum AbbrSum PlanRes AbbrRes
  NameVK
  NameBalans
  AbbrRes AbbrSum
  GroupStRs Rashod Summa
  NameStZt RashodP SummaP
.endfields

                       Б   Распределение  ^  затрат Б

.{
 БПериод: Б                  ^
 БПодразделение: Б           ^
 БСостояние: Б               ^
 БСтатья расходов/доходов: Б ^
 БЭлемент затрат: Б          ^

 БРаспределяемая сумма: Б &'&&&&&&&&&&.&& @@@@@@
 БВариант распределения: Б^
 БРаспределенная сумма: Б &'&&&&&&&&&&.&& @@@@@@ Б
Распределенное количество: Б&'&&&&&&&&&&.&&& @@@@@@

 В Сметы-приемники принадлежат Г
Вариант калькулирования: Б ^
 БНаименование баланса: Б    ^

┌────────────────────────────────────────┬─────────────────┬─────────────────┐
│      Наименование подразделения/       │    Количество   │    Сумма        │
│      наименование сметы                │   @@@@@@@@@@@   │   @@@@@@@@@@@   │
├────────────────────────────────────────┼─────────────────┼─────────────────┤
.{ CheckEnter GroupRZ
 Б│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&.&&& │ &'&&&&&&&&&&.&& │ Б
.{ CheckEnter GroupRZList
│  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&.&&& │ &'&&&&&&&&&&.&& │
.}
.}
└────────────────────────────────────────┴─────────────────┴─────────────────┘


.}
.endform
