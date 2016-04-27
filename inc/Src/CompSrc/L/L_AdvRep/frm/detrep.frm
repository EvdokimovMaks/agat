#doc
Отчет о реализации газа и о состоянии расчетов по договорам за период
#end
.Form 'DetRep'
.Hide
.Fields
ДатаНа
ДатаКо
Фильтр
Валюта

ЗагОплаченоВО
ЗагПроцентВО
ЗагПланВО
ЗагЕдИзм
ЗагОплачено
ЗагПроцент
ЗагПлан

Название
Номер
NRec
Сумма1
Сумма2
Сумма3
Сумма4
Сумма5
Сумма6
Сумма7
Сумма8
ГРО
Дата
ЮрЛицо
ИНН
ОКОНХ
ОКПО
ДогУИД

Footer
.EndFields
^ ^
^
^
  .{.?LoopHead1;^ ^ .} .{.?LoopHead2;^ .}
^ .{.?LoopHead3;^ ^ .} .{.?LoopHead4;^ .}

.{ CheckEnter DetRepGroup
^ ^ ^ ^ ^ ^ ^ .{.?LoopDogovor1;^ ^ .} .{.?LoopDogovor2;^ .} ^  ^ ^ ^ ^ ^ ^ ^
.}

.{ CheckEnter DetRepFooter
  .{.?LoopFooter;^ .}
.}
.EndForm
