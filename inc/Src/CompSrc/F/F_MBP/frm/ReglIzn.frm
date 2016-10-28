//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
// Галактика 9.1 - Спецоснастка
// Протокол расчета износа на спецоснастку
//------------------------------------------------------------------------------

#doc
Протокол расчета износа на спецоснастку
#end
.set name = 'ReglIzn'
.hide
.fields
  onDate : date
  MBPNRec : comp
  MBPName
  MBPNum
  WriteNRec : comp
  WriteName
  WriteFormula
  InNRec : comp
  InDate : date
  InState : word
  InPrice : double
  InKol : double
  InSum : double
  InPerc : double
  PercNach : double
  NachComment
  OsAlgoritm
  OsAlgRez
  NumPP
  Key
  SpAlg
  SpAlgRez
.endfields
  ^
.{ cirKatMBP CheckEnter
  ^ ^ ^
  ^ ^ ^
.{ cirMBPIn CheckEnter
  ^ ^ ^
  ^ ^ ^ ^
  ^ ^
  ^ ^
.{ cirSpAlg CheckEnter
  ^ ^ ^ ^
.}
.}
.}
.endform

.linkform 'ReglIzn_01' prototype is 'ReglIzn'
.NameInList 'Протокол расчета износа'
.function GetTipStr(wTip : word) : string;
begin
  GetTipStr := 'Приход';

  case (wTip) of
  //------------
    mbpMoveOp:
      GetTipStr := 'Приход по внутреннему перемещению';
  //------------
    mbpFrMCOp,
    mbpNaklOp:
      GetTipStr := 'Приход по накладной';
  //------------
    mbpInExOp:
      GetTipStr := 'Приход по вводу в эксплуатацию';
  //------------
    mbpSortOp:
      GetTipStr := 'Приход по пересортице';
  //------------
    mbpNewPOp:
      GetTipStr := 'Приход по переоценке';
  //------------
    mbpFrExOp:
      GetTipStr := 'Приход по возврату из эксплуатации';
  //------------
    mbpOverOp:
      GetTipStr := 'Приход излишка';
  //------------
    mbpChgPOp:
      GetTipStr := 'Приход по изменению параметров';
  //------------
    mbpInSald:
      GetTipStr := 'Приход с остатком после удаления старой информации';
  //------------
    mbpBackOp:
      GetTipStr := 'Приход по возврату из использования';
  //------------
  end;
end.
.fields
  CommonFormHeader
  DateToStr(onDate, 'DD/MM/YYYY')
  MBPName
  MBPNum
  WriteName
  WriteFormula
  GetTipStr(InState)
  DateToStr(InDate, 'DD/MM/YYYY')
  DoubleToStr(InKol, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(InPrice, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(InSum, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(InPerc, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(PercNach, '\2p[|-]3666''666''666''666''666.88')
  NachComment
  OsAlgoritm
  if (OsAlgRez = '', '0', OsAlgRez)
  NumPP
  Key
  SpAlg
  SpAlgRez
.endfields
 Р^
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                          БПротокол расчета износа на ^ Б
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.{ cirKatMBP CheckEnter
  БКарточка: ^ ^ Б
 Методика: ^
 ^
.{ cirMBPIn CheckEnter
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   ^ от ^ кол-во ^ цена ^ стоимость ^ износ ^
   Рассчитан износ: ^% ^
.{?Internal;(OsAlgoritm <> '');
   Алгоритм: ^ = ^
.}
.{ cirSpAlg CheckEnter
.[h
──┬────────┬──────────────────────────────────────────────────────────────────────────────────┬─────────────────────────
№ │  Ключ  │                    Формула                                                       │     Результат
──┴────────┴──────────────────────────────────────────────────────────────────────────────────┴─────────────────────────
.]h
&& @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.} Р
.endform
