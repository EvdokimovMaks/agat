//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Спецодежда
// Ведомость списания СФО
//------------------------------------------------------------------------------

#doc
Печать Ведомости списания СФО.<br>
#end
.set name = 'SFO_SPIS'
.hide
.fields
  MyOrgName
  MyOrgOKPO
  FromDate : Date
  ToDate : Date
  cSigners : Comp

  fltName : String : 'T:-'

  PodrName

  WorkerName
  TabN

  NomNum
  NameSFO
  EdName
  KolSrok : double
  SumSrok : double
  KolAct : double
  SumAct : double

  KolWorkerSrok : double
  SumWorkerSrok : double
  KolWorkerAct : double
  SumWorkerAct : double

  KolPodrSrok : double
  SumPodrSrok : double
  KolPodrAct : double
  SumPodrAct : double

  KolOrgSrok : double
  SumOrgSrok : double
  KolOrgAct : double
  SumOrgAct : double
.endfields
  Организация    - ^
  ОКПО           - ^
  Начальная дата - ^
  Конечная дата  - ^
  Подписанты     - ^

  Установленные фильтры:
.{ CircleByFilter CheckEnter
  ^
.}

.{
    Подразделение   ^
.{
      Работник        ^
      Табельный номер ^
.{ CircleBySpisSFO CheckEnter
        Номенклатурный номер               - ^
        Наименование СФО                   - ^
        Единица измерения                  - ^
        Кол-во по сроку                    - ^
        Сумма по сроку                     - ^
        Кол-во по акту                     - ^
        Сумма по акту                      - ^
.}
      Кол-во по работнику (по сроку)     - ^
      Сумма по работнику (по сроку)      - ^
      Кол-во по работнику (по акту)      - ^
      Сумма по работнику (по акту)       - ^
.}
    Кол-во по подразделению (по сроку) - ^
    Сумма по подразделению (по сроку)  - ^
    Кол-во по подразделению (по акту)  - ^
    Сумма по подразделению (по акту)   - ^
.}
  Кол-во по предприятию (по сроку)   - ^
  Сумма по предприятию (по сроку)    - ^
  Кол-во по предприятию (по акту)    - ^
  Сумма по предприятию (по акту)     - ^
.endform

//-------------------------------------------------------------------------
.linkform 'SFO_SPIS_01' Prototype is 'SFO_SPIS'
.NameInList 'Ведомость списания СФО'
.defo Landscape
.p 50
.declare
#include FeeSigners.vih
.endDeclare
.Var
 iFeeSigners : FeeSigners;
 i, lSign : longint;
 FIOs, Post : array [1..2] of string;
.EndVar
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
.fields
 CommonFormHeader
 MyOrgName
 DateToStr(FromDate, 'DD.MM.YYYY')
 DateToStr(ToDate, 'DD.MM.YYYY')
.endfields
 Р   ^

     Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                     (наменование предприятия)

                                                                                     БВЕДОМОСТЬ Б
                                    Бсписания специальной форменной одежды с работников по цехам (участкам) за период с @@@@@@@@@@ по @@@@@@@@@@ Б

.{ CircleByFilter CheckEnter
.}
.{
.[h
  ┌───────┬─────────────────────────────────────┬────────────────────┬─────────────────────────────┬───────────┬─────────────────────────────────────────────────────────────────────┐
  │       │                                     │                    │                             │           │                               Списано                               │
  │  Таб. │                                     │   Номенклатурный   │                             │  Единица  ├──────────────────────────────────┬──────────────────────────────────┤
  │ номер │       Фамилия, имя, отчество        │        номер       │         Наименование        │ измерения │             По сроку             │             По акту              │
  │       │                                     │                    │                             │           ├────────────────┬─────────────────┼────────────────┬─────────────────┤
  │       │                                     │                    │                             │           │     Кол-во     │      Сумма      │     Кол-во     │      Сумма      │
  ├───────┼─────────────────────────────────────┼────────────────────┼─────────────────────────────┼───────────┼────────────────┼─────────────────┼────────────────┼─────────────────┤
  │   1   │                  2                  │          3         │              4              │     5     │        6       │        7        │        8       │        9        │
  ├───────┴─────────────────────────────────────┴────────────────────┴─────────────────────────────┴───────────┴────────────────┴─────────────────┴────────────────┴─────────────────┤
.]h
.fields
  PodrName
.endfields
  │  Б@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│
.{
.{ CircleBySpisSFO CheckEnter
.fields
  TabN
  WorkerName
  NomNum
  NameSFO
  EdName
  KolSrok
  SumSrok
  KolAct
  SumAct
.endfields
  │@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&.&&│
.}
.}
.fields
  KolPodrSrok
  SumPodrSrok
  KolPodrAct
  SumPodrAct
.endfields
  │                                                                                 БИтого по участку             &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&.&& Б│
.[f
  └──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
.]f
.}
.fields
  KolOrgSrok
  SumOrgSrok
  KolOrgAct
  SumOrgAct
.endfields
                                                                                  БВсего по ведомости             &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&.&& Б
.{?Internal;(lSign > 0);

.}
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
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} Р
.endform
