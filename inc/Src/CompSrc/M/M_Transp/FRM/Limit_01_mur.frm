/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2004 корпорация ГАЛАКТИКА                         ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.85                                                      ║
 ║ Назначение    : Печать отчета по отпуску ГСМ                              ║
 ║ Ответственный : Павлович Дмитрий Анатольевич                              ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='PlanF_GSM_LZV'
.hide
//.linkform 'PlanF_GSM_LZV01' prototype is 'PlanF_GSM_LZV'
//.group 'Автотранспорт - Учет ГСМ'
.NameInList 'План-факт по отпуску ГСМ по лимитно-заправочным ведомостям'
.p 80

.fields
  BeginDate
  EndDate
  Toplivo_Name
  Morale_Name
  MarkaTC
  Transp_nomer
  FuelLimit
  FuelDopLimit
  FuelOut
  FuelDiff
  ItogMorale_Name
  ItogPoViduTSFuelLimit
  ItogPoViduTSFuelDopLimit
  ItogPoViduTSFuelOut
  ItogPoViduTSFuelDiff
  ItogToplivo_Name
  ItogPoViduGSMFuelLimit
  ItogPoViduGSMFuelDopLimit
  ItogPoViduGSMFuelOut
  ItogPoViduGSMFuelDiff

.endfields
   ^^
.{
.{
   ^
.{
   ^
.{
   ^^^^^^
.}
   ^^^^^
.}
   ^^^^^
.}
.}
.endform

//.Form 'PlanF_GSM_LZV'
.linkform 'PlanF_GSM_LZV01' prototype is 'PlanF_GSM_LZV'
.group 'Автотранспорт - Учет ГСМ'
.NameInList 'План-факт по отпуску ГСМ по лимитно-заправочным ведомостям'
.p 80

.fields
  BeginDate
  EndDate
.endfields
 Б           План-факт по лимиткам на отпуск ГСМ по транспортным средствам
                         с @~@@@@@@@@ по @~@@@@@@@@ Б
.{
.[H
 Б┌─────────────────┬───────────┬───────────┬───────────┬───────────┬───────────┐
│    Марка ТС     │ Гос.номер │   Лимит   │ Доп.лимит │  Отпущено │  Разница  │
└─────────────────┴───────────┴───────────┴───────────┴───────────┴───────────┘ Б
.]H
.fields
  Toplivo_Name
.endfields
.{
 Б  Наименование ГСМ: ^ Б
.fields
  Morale_Name
.endfields
.{
 Б     Вид ТС: ^ Б
.fields
  MarkaTC
  Transp_nomer
  FuelLimit
  FuelDopLimit
  FuelOut
  FuelDiff
.endfields
.{
 @@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&&
.}
.fields
  ItogMorale_Name
  ItogPoViduTSFuelLimit
  ItogPoViduTSFuelDopLimit
  ItogPoViduTSFuelOut
  ItogPoViduTSFuelDiff
.endfields
 Б   Итого по: @@@@@@@@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& Б
.}
.fields
  ItogToplivo_Name
  ItogPoViduGSMFuelLimit
  ItogPoViduGSMFuelDopLimit
  ItogPoViduGSMFuelOut
  ItogPoViduGSMFuelDiff
.endfields
 Б Итого по: @@@@@@@@@@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& Б

.}
.}
.endform

//.Form 'PlanF_GSM_LZV2'
.linkform 'PlanF_GSM_LZV02' prototype is 'PlanF_GSM_LZV'
.group 'Ж.Д. и др. ТС - Учет ГСМ'
.NameInList 'План-факт по отпуску ГСМ по лимитно-заправочным ведомостям'
.p 80

.fields
  BeginDate
  EndDate
.endfields
 Б           План-факт по лимиткам на отпуск ГСМ по транспортным средствам
                         с @~@@@@@@@@ по @~@@@@@@@@ Б
.{
.[H
 Б┌─────────────────┬───────────┬───────────┬───────────┬───────────┬───────────┐
│    Марка ТС     │Борт.номер │   Лимит   │ Доп.лимит │  Отпущено │  Разница  │
└─────────────────┴───────────┴───────────┴───────────┴───────────┴───────────┘ Б
.]H
.fields
  Toplivo_Name
.endfields
.{
 Б  Наименование ГСМ: ^ Б
.fields
  Morale_Name
.endfields
.{
 Б     Вид ТС: ^ Б
.fields
  MarkaTC
  Transp_nomer
  FuelLimit
  FuelDopLimit
  FuelOut
  FuelDiff
.endfields
.{
 @@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&&
.}
.fields
  ItogMorale_Name
  ItogPoViduTSFuelLimit
  ItogPoViduTSFuelDopLimit
  ItogPoViduTSFuelOut
  ItogPoViduTSFuelDiff
.endfields
 Б   Итого по: @@@@@@@@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& Б
.}
.fields
  ItogToplivo_Name
  ItogPoViduGSMFuelLimit
  ItogPoViduGSMFuelDopLimit
  ItogPoViduGSMFuelOut
  ItogPoViduGSMFuelDiff
.endfields
 Б Итого по: @@@@@@@@@@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& Б

.}
.}
.endform
