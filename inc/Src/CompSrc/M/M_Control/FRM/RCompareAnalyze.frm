/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2001 корпорация ГАЛАКТИКА                         ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Контроллинг                                               ║
 ║ Версия        : 7.1                                                       ║
 ║ Назначение    : Сравнительный анализ                                      ║
 ║ Ответственный : Медведь Н.Л. (MEDVED)                                     ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name = 'RCompareAnalyze'
.nameinlist 'Базовая форма'
.hide
.fields
ParamUser
ParamRep
NmParamRep
MinOtkl
KoefCom
Valuta
NmPeriod
NmShap
NmShapZtr
NmPodr
NmStZatr
KodStZatr
SummaZatr
NmItogo
SummaItogo
.endfields

^  когда и кем выдан отчет
.{
^ .{.?stRCompare_Par; ^.} Параметры отчета
.}

^  Мин пороговое отклонение
^  Валюта
^  Коэффициент сравнения

.{

  .{.?stNmPerRCompare;	^.}  Период
  .{.?stShapRCompare;	^.}  Шапка отчета
^ .{.?stNmPodrRCompare;	^.}  Подразделение

.{
 ^ ^ СЗ .{.?stSumZatrRCompare; ^.} Сумма затрат
.}
 ^ ИТОГО .{.?stItgSumZatrRCompare; ^.} Сумма затрат ИТОГО
.}

.endform
