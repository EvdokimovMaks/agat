//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
//------------------------------------------------------------------------------
// Галактика 5.8 - ФРО
// Сальдо по группам счетов
//------------------------------------------------------------------------------

#doc
Базовая форма отчета "Сальдо по группам счетов"
#end
.set name = 'SaldoDas'
.nameinlist 'Базовая форма'
.hide
.var
   FrmUserName,
   MainBuhName : string;
.endvar
.fields
EndDate NDEName NDESymb RepValName RepValSymb
CurPlanNrec CurPlanName
FilterName
FilterSpec
DasName
DasCode
Kau1Name Kau1KodTable Kau1Nrec
Kau2Name Kau2KodTable Kau2Nrec
Kau3Name Kau3KodTable Kau3Nrec
Kau4Name Kau4KodTable Kau4Nrec
Kau5Name Kau5KodTable Kau5Nrec
Kau6Name Kau6KodTable Kau6Nrec
SchetO  SchetOName
SubSchO SubSchOName
Podr
Filial
FullKau SaldoD SaldoDv SaldoK SaldoKv SaldoValD SaldoValK Valuta
SumFil_D  SumFil_Dv  SumFil_K  SumFil_Kv
SumPodr_D SumPodr_Dv SumPodr_K SumPodr_Kv
SumSub_D  SumSub_Dv  SumSub_K  SumSub_Kv
SumSch_D  SumSch_Dv  SumSch_K  SumSch_Kv
SumKau6_D SumKau6_Dv SumKau6_K SumKau6_Kv
SumKau5_D SumKau5_Dv SumKau5_K SumKau5_Kv
SumKau4_D SumKau4_Dv SumKau4_K SumKau4_Kv
SumKau3_D SumKau3_Dv SumKau3_K SumKau3_Kv
SumKau2_D SumKau2_Dv SumKau2_K SumKau2_Kv
SumKau1_D SumKau1_Dv SumKau1_K SumKau1_Kv
SumDas_D  SumDas_Dv  SumDas_K  SumDas_Kv
SumVed_D  SumVed_Dv  SumVed_K  SumVed_Kv
.endfields
.begin
  MainBuhName := sGetTune('MainBuh');
  FrmUserName    := sGetTune('User.Fio');
end.
EndDate            Дата    ^
NDEName     Нац ДЕ (имя)   ^
NDESymb     Нац ДЕ (симв)  ^
RepValName  Валюта отчетов (имя)   ^
RepValSymb  Валюта отчетов (симв)  ^
CurPlanNrec      Текущий план счетов (nrec) ^
CurPlanName      Текущий план счетов (имя)  ^
.{ CheckEnter
.{
FilterName ^
.{
FilterSpec ^
.}
.}
.}

.{
.if SaldoDasOkDas
DasName Наименование ДАС ^
DasCode Код ДАС ^
.end
.{
.if SaldoDasOkKau1
Kau1Name    КАУ1 осн счета      ^
Kau1KodTable  КАУ1 код таблицы    ^
Kau1Nrec      КАУ1 Nrec           ^
.end
.{
.if SaldoDasOkKau2
Kau2Name   КАУ2 осн счета      ^
Kau2KodTable  КАУ2 код таблицы    ^
Kau2Nrec      КАУ2 Nrec           ^
.end
.{
.if SaldoDasOkKau3
Kau3Name   КАУ3 осн счета      ^
Kau3KodTable  КАУ3 код таблицы    ^
Kau3Nrec      КАУ3 Nrec           ^
.end
.{
.if SaldoDasOkKau4
Kau4Name   КАУ4 осн счета      ^
Kau4KodTable  КАУ4 код таблицы    ^
Kau4Nrec      КАУ4 Nrec           ^
.end
.{
.if SaldoDasOkKau5
Kau5Name   КАУ5 осн счета      ^
Kau5KodTable  КАУ5 код таблицы    ^
Kau5Nrec      КАУ5 Nrec           ^
.end
.{
.if SaldoDasOkKau6
Kau6Name   КАУ6 осн счета      ^
Kau6KodTable  КАУ6 код таблицы    ^
Kau6Nrec      КАУ6 Nrec           ^
.end
.{
SchetO        Счет осн счета  ^
SchetOName         имя счета  ^
.{
.if SaldoDasOkSub
SubSchO       Субсчет осн счета  ^
SubSchOName        имя субсчета  ^
.end
.{
.if SaldoDasOkPodr
Podr      Подразделение      ^
.end
.{
Filial    Филиал корпорации  ^
.{
-------------------------------------------
FullKau     Наименование КАУ (все уровни) ^
SaldoD      сальдо по дебету  ^
SaldoDv                            ^
SaldoK      сальдо по кредиту ^
SaldoKv                            ^
SaldoValD   В валюте по дебету     ^
SaldoValK                          ^
Valuta      Валюта                 ^
-------------------------------------------
.}
Сумма по филиалу корпорации
SumFil_D     сальдо по дебету  ^
SumFil_Dv                           ^
SumFil_K     сальдо по кредиту ^
SumFil_Kv                           ^
.}
.if SaldoDasOkSumPodr
Сумма по подразделению
SumPodr_D     сальдо по дебету  ^
SumPodr_Dv                           ^
SumPodr_K     сальдо по кредиту ^
SumPodr_Kv                           ^
.end
.}
.if SaldoDasOkSumSub
Сумма по субсчету
SumSub_D     сальдо по дебету  ^
SumSub_Dv                           ^
SumSub_K     сальдо по кредиту ^
SumSub_Kv                           ^
.end
.}
Сумма по счету
SumSch_D     сальдо по дебету  ^
SumSch_Dv                           ^
SumSch_K     сальдо по кредиту ^
SumSch_Kv                           ^
.}
.if SaldoDasOkSumKau6
Итого по КАУ 6
SumKau6_D     сальдо по дебету  ^
SumKau6_Dv                           ^
SumKau6_K     сальдо по кредиту ^
SumKau6_Kv                           ^
.end
.}
.if SaldoDasOkSumKau5
Итого по КАУ 5
SumKau5_D     сальдо по дебету  ^
SumKau5_Dv                           ^
SumKau5_K     сальдо по кредиту ^
SumKau5_Kv                           ^
.end
.}
.if SaldoDasOkSumKau4
Итого по КАУ 4
SumKau4_D     сальдо по дебету  ^
SumKau4_Dv                           ^
SumKau4_K     сальдо по кредиту ^
SumKau4_Kv                           ^
.end
.}
.if SaldoDasOkSumKau3
Итого по КАУ 3
SumKau3_D     сальдо по дебету  ^
SumKau3_Dv                           ^
SumKau3_K     сальдо по кредиту ^
SumKau3_Kv                           ^
.end
.}
.if SaldoDasOkSumKau2
Итого по КАУ 2
SumKau2_D     сальдо по дебету  ^
SumKau2_Dv                           ^
SumKau2_K     сальдо по кредиту ^
SumKau2_Kv                           ^
.end
.}
.if SaldoDasOkSumKau1
Итого по КАУ 1
SumKau1_D     сальдо по дебету  ^
SumKau1_Dv                           ^
SumKau1_K     сальдо по кредиту ^
SumKau1_Kv                           ^
.end
.}
.if SaldoDasOkSumDas
Итого по ДАС
SumDas_D     сальдо по дебету  ^
SumDas_Dv                           ^
SumDas_K     сальдо по кредиту ^
SumDas_Kv                           ^
.end
.}
ИТОГО по ведомости
c1_p1      дебет    ^
c1_p1v              ^
c1_p2      кредит   ^
c1_p2v              ^
.endform
!==============================================================================


.linkform 'SaldoDas_01' prototype is 'SaldoDas'
.nameinlist 'Сальдо по группам счетов'
.p 80
.defo portrait
.nonextheader
.fields
CommonFormHeader
EndDate NDEName
CurPlanName
FilterName
FilterSpec
DasName
Kau1Name
Kau2Name
Kau3Name
Kau4Name
Kau5Name
Kau6Name
SchetO  SchetOName
SubSchO SubSchOName
Podr                  SumPodr_D  SumPodr_K
SubSchO SubSchOName   SumSub_D   SumSub_K
SchetO  SchetOName    SumSch_D   SumSch_K
Kau6Name              SumKau6_D  SumKau6_K
Kau5Name              SumKau5_D  SumKau5_K
Kau4Name              SumKau4_D  SumKau4_K
Kau3Name              SumKau3_D  SumKau3_K
Kau2Name              SumKau2_D  SumKau2_K
Kau1Name              SumKau1_D  SumKau1_K
DasName               SumDas_D   SumDas_K
                      SumVed_D   SumVed_K
MainBuhName FrmUserName
.endfields
 Р^
                                                        БСальдо по группам счетов Б
                                                              Бна ^ г. Б
 ВВедомость сформирована в ^ В
 ВПлан счетов ^ В
.{ CheckEnter
 ВПрименен фильтр... В
.{
 В   ^ В
.{
 В      ^ В
.}
.}
.}
.{
.[h
 Б                                                                                                                    лист @np@
────────────────────────────────────────────────────────────────────────────────────────┬─────────────────────────────────────────
                                                                                        │                  Сальдо
                              Объект аналитического учета                               ├────────────────────┬────────────────────
                                                                                        │         Дебет      │      Кредит
────────────────────────────────────────────────────────────────────────────────────────┴────────────────────┴──────────────────── Б
.]h
.if SaldoDasOkDas
 БДАС: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkKau1
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkKau2
 Б  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkKau3
 Б    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkKau4
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkKau5
 Б        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkKau6
 Б          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
         Б     Счет : @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.{
.if SaldoDasOkSub
              Б Субсчет : @@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.end
.{
.if SaldoDasOkPodr
.end
.{
.{
.}
.}
.if SaldoDasOkSumPodr
                Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
.end
.}
.if SaldoDasOkSumSub
               Б@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
              ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
             Б @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
             ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
.if SaldoDasOkSumKau6
           БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
          ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if SaldoDasOkSumKau5
        Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
        ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if SaldoDasOkSumKau4
      Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
      ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if SaldoDasOkSumKau3
     БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
    ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if SaldoDasOkSumKau2
  Б Итого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
  ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if SaldoDasOkSumKau1
 БИтого по @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.end
.}
.if SaldoDasOkSumDas
 БИтого по ДАС @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
.end
.}
 БИтого по Ведомости                                                                       &'&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&.&& Б
 ББухгалтер Б               ^
 БОтветственный за выпуск Б ^ Р
.endform
!==============================================================================
