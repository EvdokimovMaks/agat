/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2000 корпорация ГАЛАКТИКА                         ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : ТЭП                                                       ║
 ║ Версия        : 5.7                                                       ║
 ║ Назначение    : Контрольный отчет по распределению затрат                 ║
 ║                 вспомогательных цехов                                     ║
 ║ Ответственный : Медведь Наталья Леонидовна                                ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='RaspWs'
.NameInList 'Базовая форма'
.hide
.fields
  PlanFactZatr
  NamePodr
  NamePeriod
  SymbRub
  NameColumn
  NameDepSend NameBase ItgSumIter
  NameDepReceive ObUsl Propor SumIter
  SumRaspItgAll
.endfields
^ ^ ^ ^
 .{.?stLine1; .}
 .{.?stColumn; ^.}
 .{.?stLine2; .}
 .{.?stLine3; .}
.{
.if IsDepSend
^ ^ .{.?stItgIter; ^.}
.end
.{
^ ^ ^ .{.?stIter; ^ .}
.}
.}
 .{.?stLine4;^.}
 .{.?stLine5; .}
.endform

.LinkForm 'RaspWs_01' Prototype is 'RaspWs'
.NameInList 'Отчет в формате Текст'
.fields
  PlanFactZatr
  NamePodr
  NamePeriod
  SymbRub
  NameColumn
  NameDepSend NameBase ItgSumIter
  NameDepReceive ObUsl Propor SumIter
  SumRaspItgAll
.endfields
                  БРаспределение ^ затрат вспомогательных цехов Б
                           (по шагам итераций)
                            ^
                            ^
Денежная единица: @@@@@@@@@@@@@@@@@@@@@@@

┌─────────────────────────────────┬─────────────┬────────────.{.?stLine1;┬─────────────.}─┐
│Вспомогательные цеха             │   Объем     │ Пропорции  .{.?stColumn;│@~@@@@@@@@@@@.} │
│     Распределение на цеха       │   услуг     │            .{.?stLine2;│             .} │
├─────────────────────────────────┼─────────────┼────────────.{.?stLine3;┼─────────────.}─┤
.{
.if IsDepSend
│ Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ Б@@@@@@@@@@@@@ Б│            .{.?stItgIter;│  Б&'&&&&&&.&& Б .} │
.end
.{
│    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&.&&& │&'&&&&&&.&&&.{.?stIter;│ &'&&&&&&.&& .} │
.}
.}
│                                 │             │            .{.?stLine4;│  Б&'&&&&&&.&& . Б} │
└─────────────────────────────────┴─────────────┴────────────.{.?stLine5;┴─────────────.}─┘
.endform
