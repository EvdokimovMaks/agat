//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.00 - Векселя и кредиты
// Печать финансовых операций кредита
//------------------------------------------------------------------------------

#doc
Печать финансовых операций кредита
#end

.Form KredFinMov
.Hide

.var
  iExcelFormat : ExcelFormat;
.endvar

.fields
  VekslNRec : comp
  isKredLine: boolean

  Tip_org  : string   // кредитор/заемщик
  Name_org : string   // контрагент
  N_Do        // договор
  D_Do        // дата договора
  D_vz        // дата возврата
  Sum_Do      // сумма договора
  cVal        // валюта
  pr_God : double // процент годовых

!.{  KredFinMov_Loop CheckEnter
  NewPerd       : boolean
  N_pl             // платежный документ
  D_pl             // дата платежа
  Sum_Polusenie : double // сумма этапа (поступление)
  Sum_Pog_Summa : double // сумма этапа (погашение )
  Sum_Pog_Prc   : double // сумма этапа (погашение %)
  Sum_Pog_Other : double // сумма этапа (погашение: прочие платежи)
  Sum_KredUse   : double // сумма этапа (использование)
!.}

.endfields

.var
!{  CheckEnter
  Sum_Not_Pog  : double // сумма (не погашен)
  Sum_Not_Use  : double // сумма (не использов)
!}

!{  CheckEnter
  tot_Sum_Polusenie  : double;
  tot_Sum_Pog_Summa  : double;
  tot_Sum_Pog_Prc    : double;
  tot_Sum_Pog_Other  : double;
  tot_Sum_Not_Pog   : double;
  tot_Sum_KredUse    : double;
  tot_Sum_Not_Use   : double;
!}
.endvar

^ ^ ^ ^ ^ ^ ^ ^ ^ ^

.{ KFMLoop CheckEnter
^ ^ ^ ^ ^ ^ ^ ^
.}
.{ TotalSum CheckEnter
.}

.EndForm


.LinkForm 'KredFinMov_01' Prototype is 'KredFinMov'
.group 'Финансовые операции кредита'
.NameInList 'Финансовые операции кредита'
.p 60
.defo landscape
.fields
  CommonFormHeader

  Tip_org + ' ' + Name_Org

  N_Do        // договор
  D_Do        // дата договора
  D_vz        // дата возврата
  Sum_Do      // сумма договора
  cVal
  pr_God      // процент годовых

.endfields
^

                                     Финансовые операции кредита

                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        Договор № ^ от @@@@@@@@@@ дата возврата @@@@@@@@@@
                        сумма &'&&&&&&&&&&&&&.&& ^ процент годовых &&&.&&&&&

.Var
  Var_Sum_DO : double
.EndVar
.begin
  Var_Sum_DO := double(Sum_DO);
  tot_Sum_Polusenie  := 0.0;
  tot_Sum_Pog_Summa  := 0.0;
  tot_Sum_Pog_Prc    := 0.0;
  tot_Sum_Pog_Other  := 0.0;
  tot_Sum_KredUse    := 0.0;

  tot_Sum_Not_Pog  := 0.0;
  tot_Sum_Not_Use  := 0.0;
end.
.{ KFMLoop CheckEnter
.[h
 С
───────────────┬──────────────┬──────────────────────┬────────────────────────────────────────────────────────────────────┬──────────────────────┬──────────────────────┬──────────────────────
     Номер     │    Дата      │                      │                         Погашение                                  │     Непогашенный     │     Использование    │    Неиспользованный
  платежного   │   оплаты     │     Поступление      ├──────────────────────┬──────────────────────┬──────────────────────│       остаток        │                      │      остаток
  документа    │              │                      │    основной долг     │         проценты     │    прочие платежи    │                      │                      │
───────────────┴──────────────┴──────────────────────┴──────────────────────┴──────────────────────┴──────────────────────┴──────────────────────┴──────────────────────┴────────────────────── С
.]h
.fields
 tot_Sum_Not_Pog
 tot_Sum_Not_Use
 N_pl
 D_pl
 Sum_Polusenie
 Sum_Pog_Summa
 Sum_Pog_Prc
 Sum_Pog_Other
 Sum_KredUse
.endfields
.{?Internal;isKredLine;
.Begin
  tot_Sum_Not_Pog   := tot_Sum_KredUse - tot_Sum_Polusenie - tot_Sum_Pog_Summa;
  tot_Sum_Not_Use   := Var_Sum_DO + tot_Sum_Polusenie - tot_Sum_KredUse;
end.
.}
.{?Internal;(Not isKredLine);
.Begin
  tot_Sum_Not_Pog   := tot_Sum_Polusenie - tot_Sum_Pog_Summa;
  tot_Sum_Not_Use   := tot_Sum_Polusenie - tot_Sum_KredUse;
end.
.}
.{?Internal;NewPerd;
  Р Б                                                                                                                         &'#&&&&&&&&&&&&&&&&.&&                      &'#&&&&&&&&&&&&&&&&.&& Б Р
.}
 Р@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&.&&                        &'#&&&&&&&&&&&&&&&&.&& Р
.begin
  tot_Sum_Polusenie := tot_Sum_Polusenie + Sum_Polusenie;
  tot_Sum_Pog_Summa := tot_Sum_Pog_Summa + Sum_Pog_Summa;
  tot_Sum_Pog_Prc   := tot_Sum_Pog_Prc   + Sum_Pog_Prc  ;
  tot_Sum_Pog_Other := tot_Sum_Pog_Other + Sum_Pog_Other;
  tot_Sum_KredUse   := tot_Sum_KredUse   + Sum_KredUse ;
end.
.[f
 Р Б─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── Б Р
.]f
.}
.{ TotalSum CheckEnter
.{?Internal;isKredLine;
.Begin
  tot_Sum_Not_Pog   := tot_Sum_KredUse - tot_Sum_Polusenie - tot_Sum_Pog_Summa;
  tot_Sum_Not_Use   := Var_Sum_DO + tot_Sum_Polusenie - tot_Sum_KredUse;
end.
.}
.{?Internal;(Not isKredLine);
.Begin
  tot_Sum_Not_Pog   := tot_Sum_Polusenie - tot_Sum_Pog_Summa;
  tot_Sum_Not_Use   := tot_Sum_Polusenie - tot_Sum_KredUse;
end.
.}
.fields
  tot_Sum_Polusenie
  tot_Sum_Pog_Summa
  tot_Sum_Pog_Prc
  tot_Sum_Pog_Other
  tot_Sum_Not_Pog
  tot_Sum_KredUse
  tot_Sum_Not_Use
.endfields
  Р Б ИТОГО                       &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&.&& Б Р
 Р─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── Р
.}
.EndForm
