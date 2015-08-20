#doc
Оборотная ведомость по группам МЦ
#end
.Set Name = 'TinyGrMC'
.hide
.fields
 dtStart :date dtEnd :date
.endfields
 с ^  по ^
.{
.fields
 GroupName :string sumGrVhod :double
.endfields
 ^ ^
.fields
 TipNaklPrih :string PodrNamePrih :string sumPrihod :double
.endfields
.{CHECKENTER TinyGrMCPrihLoop
 ^ ^ ^
.}
.fields
  totalPrihod :double
.endfields
 ^
.fields
 TipNaklRash :string PodrNameRash :string sumRashod :double
.endfields
.{CHECKENTER TinyGrMCRashLoop
 ^ ^ ^
.}
.fields
  totalRashod :double
  sumGrIsh :double
.endfields
 ^
 ^
.}
.endform




!------------------------------------------------------------------------------
#doc
Оборотная ведомость по группам МЦ
#end
.linkform 'TinyGrMC_001' prototype is 'TinyGrMC'
.NameInList ' Оборотная ведомость по группам МЦ '
.var
AllVh : double;  AllIsh: double;  AllPrih: double;  AllRash: double
.endvar
.fields
 dtStart dtEnd
.endfields

 Б    Оборотная ведомость движения МЦ по группам Б
            с  Б^ Б по  Б^ Б

 Б┌─────────────────────────────────────────────────────────────┬───────────────┐
│    Вид операции                                             │  Сумма        │
└─────────────────────────────────────────────────────────────┴───────────────┘ Б
.begin
AllVh:= 0; AllIsh:= 0; AllPrih:= 0;  AllRash:= 0;
end.
.{
.fields
 GroupName sumGrVhod
.endfields
 БГруппа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б (вх.остаток) &&&&&&&&&&&&&.&&
 Б Приходы Б
.fields
 TipNaklPrih PodrNamePrih sumPrihod
.endfields
.{CHECKENTER TinyGrMCPrihLoop
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&
.}
.fields
  totalPrihod
.endfields
 Б Итого по приходам                                             &&&&&&&&&&&&&.&& Б
 Б Расходы Б
.fields
 TipNaklRash PodrNameRash sumRashod
.endfields
.{CHECKENTER TinyGrMCRashLoop
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&.&&
.}
.fields
  totalRashod
  sumGrIsh
.endfields
 Б Итого по расходам                                             &&&&&&&&&&&&&.&& Б
 Б Исх. остаток по группе                                        &&&&&&&&&&&&&.&& Б
-------------------------------------------------------------------------------

.begin
AllVh:= AllVh + sumGrVhod;   AllIsh:= AllIsh + sumGrIsh;
AllPrih:= AllPrih + totalPrihod;   AllRash:= AllRash + totalRashod;
end.
.}
.fields
  AllVh
  AllPrih
  AllRash
  AllIsh
.endfields
 Б Входящий остаток                                              &&&&&&&&&&&&&.&& Б
 Б Итого по приходам                                             &&&&&&&&&&&&&.&& Б
 Б Итого по расходам                                             &&&&&&&&&&&&&.&& Б
 Б Исходящий остаток                                             &&&&&&&&&&&&&.&& Б
.endform
!------------------------------------------------------------------------------




!------------------------------------------------------------------------------
#doc
Оборотная ведомость по группам МЦ (краткая)
#end
.linkform 'TinyGrMC_002' prototype is 'TinyGrMC'
.NameInList ' Оборотная ведомость по группам МЦ (краткая)'
.var
AllVh : double;  AllIsh: double;  AllPrih: double;  AllRash: double
.endvar
.fields
 dtStart dtEnd
.endfields

 Б    Оборотная ведомость движения МЦ по группам Б
            с  Б^ Б по  Б^ Б

 Б┌─────────────────────────────────────────────────────────────┬───────────────┐
│    Вид операции                                             │  Сумма        │
└─────────────────────────────────────────────────────────────┴───────────────┘ Б
.begin
AllVh:= 0; AllIsh:= 0; AllPrih:= 0;  AllRash:= 0;
end.
.{
.fields
 GroupName sumGrVhod
.endfields
 БГруппа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б (вх.остаток) &&&&&&&&&&&&&.&&
 Б Приходы Б
.{CHECKENTER TinyGrMCPrihLoop
.}
.fields
  totalPrihod
.endfields
 Б Итого по приходам                                             &&&&&&&&&&&&&.&& Б
 Б Расходы Б
.{CHECKENTER TinyGrMCRashLoop
.}
.fields
  totalRashod
  sumGrIsh
.endfields
 Б Итого по расходам                                             &&&&&&&&&&&&&.&& Б
 Б Исх. остаток по группе                                        &&&&&&&&&&&&&.&& Б
-------------------------------------------------------------------------------

.begin
AllVh:= AllVh + sumGrVhod;   AllIsh:= AllIsh + sumGrIsh;
AllPrih:= AllPrih + totalPrihod;   AllRash:= AllRash + totalRashod;
end.
.}
.fields
  AllVh
  AllPrih
  AllRash
  AllIsh
.endfields
 Б Входящий остаток                                              &&&&&&&&&&&&&.&& Б
 Б Итого по приходам                                             &&&&&&&&&&&&&.&& Б
 Б Итого по расходам                                             &&&&&&&&&&&&&.&& Б
 Б Исходящий остаток                                             &&&&&&&&&&&&&.&& Б
.endform
!------------------------------------------------------------------------------
