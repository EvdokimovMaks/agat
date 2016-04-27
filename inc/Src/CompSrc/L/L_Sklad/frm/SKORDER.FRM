!╔═════════════════════════════════════════════════════════════════════╗
!║      Проект ГАЛАКТИКА (c) 1994,95 TOP SOFT Ltd., АО НОВЫЙ АТЛАНТ    ║
!║  Версия :     1.00                                                  ║
!║  Разработал:  Журавлев Э.И.                                         ║
!║  Назначение: СКЛАДСКОЙ ОРДЕР                                        ║
!║  Изменения:                                                         ║
!╚═════════════════════════════════════════════════════════════════════╝

#doc
СКЛАДСКОЙ ОРДЕР
#end
.set name = 'skorder'
.hide
.{
.fields
  SklOrderRec:comp OrdName nOrder dOrder:date
.endfields
  ^  ^    ^   ^
.if sklorder01
.fields
  Osnov
.endfields
  ^
.if sklorder02
.fields
 Kontr
.endfields
  ^
.end
.end
.fields
  Sklad Mol Mol_Post MyAddr AddrRK
.endfields
  ^ ^ ^ ^ ^
.fields
  RublSimv ValSimv Prim
.endfields
  ^    ^   ^
.{
.fields
 Npp:integer NNomer MC TNVED Ресурс_хранения ED  kGroupMC SizeX SizeY SizeZ McVes : double
.endfields
 ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
.fields
  SpOrderRec:comp
  nRecParty :comp
  Party Kol:double Price PriceV
  DoocKol DoocPriceUp DoocSumUp DoocPriceUpV DoocSumUpV
  DoocPriceAfter DoocSumAfter DoocPriceAfterV DoocSumAfterV
  Summ SummV SumK:double SumPR SumPV CountPart:integer
.endfields
 ^   ^   ^   ^   ^   ^
 Dooc ^ ^ ^ ^ ^ ^ ^ ^ ^
 ^   ^   ^   ^   ^   ^
.}
.}
.fields
  Itogo ItogoV Count:integer
.endfields
  ^            ^             ^
.}
.endform
!==========================================================================
#doc
СКЛАДСКОЙ ОРДЕР (ВАЛ-НДЕ)
#end
.linkform 'skorder_01' prototype is 'skorder'
.NameInList 'СКЛАДСКОЙ ОРДЕР (ВАЛ-НДЕ)'
.Group 'Складской ордер'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
  CommonFormHeader
  OrdName nOrder dOrder
.endfields
 ^


                         @@@@@@@@@ ОРДЕР №  ^
                              от ^
.if sklorder01
.fields
  Osnov
.endfields
   Основание  : ^
.if sklorder02
.end
.end
.fields
  Sklad Prim
.endfields
   Склад      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
.fields
  'в '+RublSimv 'в '+ValSimv 'в '+RublSimv 'в '+ValSimv
.endfields
 Ш──────────────┬────────────────────────────┬─────────┬────────────────────┬─────────────────────────────────┬──────────────────────────────────────
Номенклатурный│                            │ Единица │                    │             Цена                │              Стоимость
    номер     │      Наименование МЦ       │измерения│     Количество     ├───────────────┬─────────────────┼─────────────────┬────────────────────
              │                            │         │                    │ @~@@@@@@@@@@@ │ @~@@@@@@@@@@@@@ │  @~@@@@@@@@@@@  │ @~@@@@@@@@@@@@
──────────────┴────────────────────────────┴─────────┴────────────────────┴───────────────┴─────────────────┴─────────────────┴────────────────────
.{
.{
.fields
  NNomer       MC                           ED        Kol                  Price           PriceV               Summ              SummV
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.}
.fields
  Itogo ItogoV
.endfields
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Б   Итого :                                                                                                   &&&&&&&&&&&&&&&&&     &&&&&&&&&&&&&&&& Б
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // приходный
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // расходный
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   Принял:  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи
   Сдал :   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи

 Ш
.}
.ENDform
!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#doc
СКЛАДСКОЙ ОРДЕР (ВАЛЮТНЫЙ)
#end
.linkform 'skorder_02' prototype is 'skorder'
.NameInList 'СКЛАДСКОЙ ОРДЕР (ВАЛЮТНЫЙ)'
.Group 'Складской ордер'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
  CommonFormHeader
  OrdName nOrder dOrder
.endfields
 ^


                            @@@@@@@@@ ОРДЕР №  ^
                               от ^
.if sklorder01
.fields
  Osnov
.endfields
   Основание  : ^
.if sklorder02
.end
.end
.fields
  Sklad Prim
.endfields
   Склад      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
.fields
  'в '+ValSimv 'в '+ValSimv
.endfields
 Ш──────────────┬─────────────────────────────┬─────────┬──────────────────┬─────────────────┬─────────────────────
Номенклатурный│    Материальные  ценности   │ Единица │    Количество    │      Цена       │     Стоимость
    номер     │                             │измерения│                  │ @~@@@@@@@@@@@@@ │  @~@@@@@@@@@@@@@@
──────────────┴─────────────────────────────┴─────────┴──────────────────┴─────────────────┴─────────────────────
.{
.{
.fields
  NNomer       MC                            ED        Kol                PriceV             SummV
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.}
.fields
  ItogoV
.endfields
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Б   Итого :                                                                                      &&&&&&&&&&&&&&&& Б
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // приходный
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // расходный
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   Принял:  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи
   Сдал :   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи

 Ш
.}
.endform

!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#doc
СТАНДАРТНЫЙ СКЛАДСКОЙ ОРДЕР
#end
.linkform 'skorder_03' prototype is 'skorder'
.NameInList 'СТАНДАРТНЫЙ СКЛАДСКОЙ ОРДЕР'
.Group 'Складской ордер'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
  CommonFormHeader
  OrdName nOrder dOrder
.endfields
 ^


                            @@@@@@@@@ ОРДЕР №  ^
                               от ^
.if sklorder01
.fields
  Osnov
.endfields
   Основание  : ^
.if sklorder02
.end
.end
.fields
  Sklad Prim
.endfields
   Склад      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
.fields
  'в '+RublSimv 'в '+RublSimv
.endfields
 Ш──────────────┬─────────────────────────────┬─────────┬──────────────────┬───────────────┬─────────────────
Номенклатурный│    Материальные  ценности   │ Единица │    Количество    │     Цена      │    Стоимость
    номер     │                             │измерения│                  │ @~@@@@@@@@@@@ │  @~@@@@@@@@@@@
──────────────┴─────────────────────────────┴─────────┴──────────────────┴───────────────┴─────────────────
.{
.{
.fields
  NNomer       MC                            ED        Kol                Price          Summ
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&
.}
.}
.fields
  Itogo
.endfields
───────────────────────────────────────────────────────────────────────────────────────────────────────────
    БИтого :                                                                                &&&&&&&&&&&&&&&&& Б
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // приходный
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // расходный
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   Принял:  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи
   Сдал :   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи

 Ш
.}
.endform

#doc
СКЛАДСКОЙ ОРДЕР С ГРУППИРОВКОЙ МЦ ПО ПАРТИЯМ (ВАЛ-НДЕ)
#end
.linkform 'skorder_04' prototype skorder
.NameInList 'СКЛАДСКОЙ ОРДЕР С ГРУППИРОВКОЙ МЦ ПО ПАРТИЯМ (ВАЛ-НДЕ)'
.ORIENT LANDSCAPE
.Group 'Складской ордер'
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
 CommonFormHeader
 OrdName nOrder dOrder
.endfields
 ^

                      @@@@@@@@@ СКЛАДСКОЙ ОРДЕР №  ^
                            от ^

.if SklOrder01
.fields
  Osnov
.endfields
  Основание : ^
.if SklOrder02
.end
.end
.fields
 Sklad Prim
.endfields
  Склад : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ^
.fields
  'в '+RublSimv 'в '+ValSimv 'в '+RublSimv 'в '+ValSimv
.endfields Ш
──────────────┬────────────────────────────┬─────────┬──────────────────┬─────────────────────────────────┬──────────────────────────────────────
Номенклатурный│                            │ Единица │                  │             Цена                │              Стоимость
    номер     │      Наименование МЦ       │измерения│    Количество    ├───────────────┬─────────────────┼─────────────────┬────────────────────
              │                            │         │                  │ @~@@@@@@@@@@@ │ @~@@@@@@@@@@@@@ │ @~@@@@@@@@@@@@@ │ @~@@@@@@@@@@@@@
──────────────┴────────────────────────────┴─────────┴──────────────────┴───────────────┴─────────────────┴─────────────────┴────────────────────
.{
.fields
  NNomer         MC                           ED
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@
.{
.fields
      Party                                           Kol                Price           PriceV            Summ              SummV
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&&
.}
.fields
                                                        SumK                                           SumPR             SumPV
.endfields
 Б Итого по МЦ :                                        &'&&&&&&&&&&&&&&&&                                   &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& Б
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
.fields
  Itogo ItogoV
.endfields
 Б   Итого :                                                                                                 &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&&& Б
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // приходный
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // расходный
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   Принял:  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи
   Сдал :   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи

 Ш
.}
.endform

#doc
СКЛАДСКОЙ ОРДЕР С ГРУППИРОВКОЙ МЦ ПО ПАРТИЯМ (НДЕ)
#end
.linkform 'skorder_05' prototype skorder
.NameInList 'СКЛАДСКОЙ ОРДЕР С ГРУППИРОВКОЙ МЦ ПО ПАРТИЯМ (НДЕ)'
.Group 'Складской ордер'
.ORIENT LANDSCAPE
.create view localSklOrder
from
  SklOrder
;
.var
  Sender, senderpost   : string
  Recipient, RecipientPost : string
.endvar
.{
.fields
 CommonFormHeader
 OrdName nOrder dOrder
.endfields
 ^

                      @@@@@@@@@ СКЛАДСКОЙ ОРДЕР №  ^
                            от ^

.if SklOrder01
.fields
  Osnov
.endfields
  Основание: ^
.if SklOrder02
.end
.end
.fields
 Sklad MOL Mol_Post  Prim
.endfields
  Склад    : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  МОЛ      : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ^
.fields
  'в '+RublSimv 'в '+RublSimv
.endfields
 Ш──────────────┬────────────────────────────┬─────────┬───────────┬──────────────────┬───────────────┬─────────────────
Номенклатурный│      Наименование МЦ       │ Единица │  Серия    │    Количество    │     Цена      │   Стоимость
    номер     │                            │измерения│           │                  │ @~@@@@@@@@@@@ │  @~@@@@@@@@@@@
──────────────┴────────────────────────────┴─────────┴───────────┴──────────────────┴───────────────┴─────────────────
.{
.{
.fields
NNomer         MC                           ED        Party       Kol                Price           Summ
.endfields
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&
.}
.fields
NNomer         MC                           ED        countpart  SumK                          SumPR
.endfields
 Б Итого по                                             Количество
 матценности :                                            серий:
&&&&&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&&&&  &'&&&&&&&&&&&&&&&&                 &&&&&&&&&&&&&&&&& Б
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.}
.fields
  Itogo
.endfields
 Б   Итого :                                                                                           &&&&&&&&&&&&&&&&& Б
.begin
  localSklOrder.GetFirst SklOrder where ((SklOrderRec == SklOrder.nRec));
  if (localSklOrder.SklOrder.vidOrder = 0) // приходный
  {
    sender := Mol;
    Senderpost := mol_post;
  }
  if (localSklOrder.SklOrder.vidOrder = 1) // расходный
  {
    recipient := Mol;
    RecipientPost := mol_post;
  }
end.
.fields
  Senderpost
  Sender
  RecipientPost
  Recipient
.endfields

   Принял:  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи
   Сдал :   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  Д              Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                    должность              подпись           расшифровка подписи

 Ш
.}
.endform

#include skl_dooc.FRN   //переоценка
#include SC_CALOR.FRN   // Штерн Цемент. Приходный ордер
