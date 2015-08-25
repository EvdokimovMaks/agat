#include Commission.frn
#doc
Ведомость по итогам инвентаризации
#end
.set name='InvnVed'
.hide
.var
  количество_партии : double
  цена_партии : double
  sKolZnak  : string[10]
  цена_прод :double
.endvar
.fields
#CommissionFields
   Признак_описи        : Boolean
   NRec_инвентаризации  : comp
   дата_инвентаризации  : date
   номер_инвентаризации : string
   дата_окончания_инв   : date
   номер_приказа        : string
   дата_приказа         : date
   склад                : string
   Долж_МОЛ             : string
   мол                  : string
   тип_нум              : word
   итого_док            : double
   итого_ост            : double
   Кол_число_знаков     : word
!.{
      NRec_спецификации:comp

      Код_группы_налогов_МЦ :String

      мц_код:string
      мц_название:string
      ед_измерения_акт: string
      коэфф_актив_ед  : double
      ед_код:string
      ед_измерения:string
      дата_выявления:date // стоит SkipFormat
      количество:double   // стоит SkipFormat
!.if flagParty
!.{
      склад_1:string
      мол_1:string
      NRec_спецификации_дубль:comp
      мц_поставщик:string
      nRecParty : comp
      партия:string
      дата_партии
      кол_инвентаризации:double
      кол_программно:double
      цена_пр:double
      цена_новая:double
      цена_программно:double
      цена_излишек:double
      цена_недостача:double
!.}
!.end
!.}
.endfields
-------------------------------------------------------------------------------
#CommissionBody(PrintPereo)
   Признак описи                   ^

   NRec_инвентаризации : comp      ^
   дата_инвентаризации : date      ^
   номер_инвентаризации            ^
   дата_окончания_инв              ^
   дата_приказа                    ^
   номер_приказа                   ^
   склад               : string    ^
   Должн_мол           : string    ^
   мол                 : string    ^
   тип_нум             : word      ^
   итого_док                       ^
   итого_ост                       ^
   Кол_число_знаков    : word      ^
.begin
  Case Кол_число_знаков of
    0 : sKolZnak := '';
    2 : sKolZnak := '.88';
    3 : sKolZnak := '.888';
    4 : sKolZnak := '.8888';
    5 : sKolZnak := '.88888';
    6 : sKolZnak := '.888888';
    7 : sKolZnak := '.8888888';
    8 : sKolZnak := '.88888888';
    9 : sKolZnak := '.888888888';
  else
    sKolZnak := '.8';
  End;
end.
.{
  NRec_спецификации:comp       ^

  Код_группы_налогов_МЦ:String ^

  мц_код:string                ^
  мц_название:string           ^
  ед_измерения_акт: string     ^
  коэфф_актив_ед  :double      ^
  ед_код:string                ^
  ед_измерения:string          ^
  дата_выявления:date          ^
  количество:double            ^
.if flagParty
.{
   склад_1:string              ^
   мол_1:string                ^
   NRec_спецификации_дубль     ^
   мц_поставщик                ^
   nRecParty                   ^
   партия:string               ^
   дата_партии:date            ^
   кол_инвентаризации:double   ^
   кол_программно:double       ^
   цена_пр:double              ^
   цена_новая:double           ^
   цена_программно:double      ^
   цена_излишек:double         ^
   цена_недостача:double       ^
.begin
  количество_партии := кол_программно;
  цена_прод := цена_пр;
  цена_партии := цена_новая;
end.
.}
.end
.}
.endform
