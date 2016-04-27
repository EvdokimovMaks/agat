//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.84 - Складской учет
// Прототип ведомостей и актов дооценки и Акт дооценки (средние цены по разрезу)
//------------------------------------------------------------------------------

#doc
Прототип ведомостей и актов дооценки (средние цены по разрезу)
#end
.set name = 'doocenka_raz'
.hide
.fields
dateF
header1
header2

!.{
nameMC
kodMC     : string
datep     : string
nomersop  : string
kontrname : string
GroupNom
sklad
MOL
party
edIzm
kol          : double
SimvolV      : string
priceDo      : double
priceDoV     : double
sumDo        : double
sumDoV       : double
pricePosle   : double
pricePosleV  : double
sumPosle     : double
sumPosleV    : double
!.}

itogoDo
itogoPosle
raznost
.endfields

dateF            ^
header1          ^
header2          ^

.{
nameMC           ^
kodMC            ^
datep            ^
nomersop         ^
kontrname        ^
GroupNom         ^
sklad            ^
MOL              ^
party            ^
edIzm            ^
kol              ^
SimvolV          ^
priceDo          ^
priceDoV         ^
sumDo            ^
sumDoV           ^
pricePosle       ^
pricePosleV      ^
sumPosle         ^
sumPosleV        ^
.}

itogoDo          ^
itogoPosle       ^
raznost          ^
.endform



#doc
Акт дооценки
#end
.linkform 'doocenka_raz_01' prototype is 'doocenka_raz'
.nameInList 'Акт дооценки'
.group 'prc'
.p 60
.defo landscape
.fields
CommonFormHeader
dateF
header1
header2

!.{
nameMC
kodMC
sklad
MOL
party
edIzm
kol
SimvolV : 'p:c'
priceDo
priceDoV
sumDo
sumDoV
pricePosle
pricePosleV
sumPosle
sumPosleV
!.}

itogoDo
itogoPosle
raznost
.endfields
^

 И      УТВЕРЖДАЮ                               Переоценка на дату: @@@@@@@@@@
 ____________________
 ____________________

 Б                                       АКТ № ________
                           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Й

.{
.[h OverWrite
 Ш───────────────────┬────────────┬────────────────┬────────────────┬────────────────┬─────┬────────────┬──────┬───────────────────────────────────────────────────────────┬────────────────────────────────────────────────────────────
   Наименование    │  Номенкл.  │                │                │                │ Ед. │            │      │                       До переоценки                       │                      После переоценки
   матценности     │   номер    │     Склад      │      МОЛ       │     Партия     │ изм.│ Количество │Валюта├──────────────┬──────────┬──────────────────┬──────────────┼──────────────┬──────────┬──────────────────┬───────────────
                   │            │                │                │                │     │            │      │     Цена     │Цена в вал│      Сумма       │ Сумма в вал  │     Цена     │Цена в вал│      Сумма       │ Сумма в вал
───────────────────┴────────────┴────────────────┴────────────────┴────────────────┴─────┴────────────┴──────┴──────────────┴──────────┴──────────────────┴──────────────┴──────────────┴──────────┴──────────────────┴─────────────── Ш
.]h
 Ш @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@ &'&&&&&&.&&& @@@@@@ &#'&&&&&&&&.&& &#'&&&&.&& &#'&&&&&&&&&&&&.&& &#'&&&&&&&&.&& &#'&&&&&&&&.&& &#'&&&&.&& &#'&&&&&&&&&&&&.&& &#'&&&&&&&&.&& Ш
.}

 Ш    ЕИтого по акту                                                                                                                      &#'&&&&&&&&&&&&&&.&&                                        &#'&&&&&&&&&&&&&&.&& Э

 Щ    ДРазность по переоценке составляет:     &#'&&&&&&&&&&&&&&&&.&& Э
.endform
