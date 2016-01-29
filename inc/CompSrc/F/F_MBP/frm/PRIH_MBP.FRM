//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецоснастка
// Акт об излишке спецоснастки
//------------------------------------------------------------------------------

#doc
Печать свободной формы Акта об излишке.<br>
#end
.Form 'Prih_MBP'
.Fields
  MoveRec  : Comp
  dNom     : String
  dDate    : Date
  Podr     : String
  MOL      : String
  cSigners : Comp
  InRec    : Comp
  MBPName  : String
  MBPKod   : String
  MBPEd    : String
  MBPKol   : Double
  MBPPrice : Double
  MBPIznP  : Double
  MBPStoim : Double
.endFields
.{
  ^  ^ ^ ^ ^  ^
.{
  ^  ^ ^ ^ ^ ^ ^ ^
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkForm 'Izl_MBP' prototype is 'Prih_MBP'
.NameInList 'Акт инвентаризации об излишке'
.Group 'Излишек'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
  totSum : double;
.endvar
.Fields
  CommonFormHeader
  dNom  DateToStr(dDate, 'DD/MM/YYYY')  Podr  MOL
  MBPName  MBPKod  MBPEd  MBPKol  MBPPrice
.endFields
.begin
  lSign := 0;

  for (i := 1; i <= Count(FIOs); i++)
  {
    FIOs[i] := '';
    Post[i] := '';
  }

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
    if (iFeeSigners.GetSignerFirst)
      do
      {
        lSign++;
        FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
        Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
      }
      while (iFeeSigners.GetSignerNext);
end.
.{
 И ^

                            АКТ ИНВЕНТАРИЗАЦИИ ОБ ИЗЛИШКЕ
                             № ^ от ^

Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
МОЛ          : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  totSum := 0
end.
──────────────────────────────┬────────────┬───────────────┬──────────┬───────────────
         Наименование         │ Ном. номер │ Ед. измерения │Количество│     Цена
──────────────────────────────┴────────────┴───────────────┴──────────┴───────────────
.{
.begin
  totSum := totSum + MBPKol * MBPPrice;
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&.&& &'&&&&&&&&&&.&&
.}
──────────────────────────────────────────────────────────────────────────────────────

.Fields
  totSum
  DoubleToStr(totSum, '\2p\m4')+
    if (Pos('ноль', DoubleToStr(totSum, '\2p5')) <> 0, '',
      DoubleToStr(totSum, 'целых \2p5'))
.endFields
Сумма по акту: &'&&&&&&&&&&.&& руб.
     Прописью: ^

.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
@@@@@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} И

.}
.endForm

//-------------------------------------------------------------------------

.LinkForm 'Post_MBP' prototype is 'Prih_MBP'
.NameInList 'Документ на приход, поступление'
.Group 'Приход, поступление'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
  totSum : double;
.endvar
.Fields
  CommonFormHeader
  dNom  DateToStr(dDate, 'DD/MM/YYYY')  Podr  MOL
  MBPName  MBPKod  MBPEd  MBPKol  MBPPrice  MBPIznP  MBPStoim
  totSum
.endFields
.begin
  lSign := 0;

  for (i := 1; i <= Count(FIOs); i++)
  {
    FIOs[i] := '';
    Post[i] := '';
  }

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
    if (iFeeSigners.GetSignerFirst)
      do
      {
        lSign++;
        FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
        Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
      }
      while (iFeeSigners.GetSignerNext);
end.
.{
 Р ^

                                      ДОКУМЕНТ НА ПРИХОД, ПОСТУПЛЕНИЕ
                                          № ^ от ^

Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
МОЛ          : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  totSum := 0;
end.

──────────────────────────────┬────────────┬─────────────┬──────────┬───────────────┬───────┬───────────────
         Наименование         │ Ном. номер │Ед. измерения│Количество│      Цена     │ Износ │  Стоимость
──────────────────────────────┴────────────┴─────────────┴──────────┴───────────────┴───────┴───────────────
.{
.begin
  totSum := totSum + MBPStoim;
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@ &&&&&&.&&& &'&&&&&&&&&&.&& &&&&.&& &'&&&&&&&&&&.&&
.}
────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                     Итого:  &'&&&&&&&&&&.&&
.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
@@@@@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} Р

.}
.endForm

//-------------------------------------------------------------------------
