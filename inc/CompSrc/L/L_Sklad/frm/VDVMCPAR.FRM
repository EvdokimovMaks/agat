/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный Контур                                        ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : ВЕДОМОСТЬ ДВИЖЕНИЯ МЦ ПО ПАРТИЯМ                          ║
 ║ Ответственный : Бартош Евгений Анатольевич                                ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
ВЕДОМОСТЬ ДВИЖЕНИЯ МЦ ПО ПАРТИЯМ
#end
.set name = 'vdvmcpar'
.hide
.fields
ndesimv baseval
datstart datend
nameparty
namemc nomnummc nameedizm
vxostkol vxostprice vxoststoim vxostvprice vxostvstoim
datoper
operprice operbvprice
prixkol prixstoim prixvprice prixvstoim prixval
rasxkol rasxstoim rasxvprice rasxvstoim rasxval
isxostkol isxostprice isxoststoim isxostvprice isxostvstoim
prixisxostkol prixisxostprice prixisxoststoim prixisxostvprice prixisxostvstoim
rasxisxostkol rasxisxostprice rasxisxoststoim rasxisxostvprice rasxisxostvstoim
prixpartkol prixpartprice prixpartstoim prixpartvprice prixpartvstoim
rasxpartkol rasxpartprice rasxpartstoim rasxpartvprice rasxpartvstoim
vxostpartkol vxostpartprice vxostpartstoim vxostpartvprice vxostpartvstoim
isxostpartkol isxostpartprice isxostpartstoim isxostpartvprice isxostpartvstoim
prixallkol prixallprice prixallstoim prixallvprice prixallvstoim
rasxallkol rasxallprice rasxallstoim rasxallvprice rasxallvstoim
vxostallkol vxostallprice vxostallstoim vxostallvprice vxostallvstoim
isxostallkol isxostallprice isxostallstoim isxostallvprice isxostallvstoim
.endfields

ndesimv ^ baseval ^ datstart ^ datend ^
.{
.if isSomeParty
nameparty ^
.{
.if isSomeMc
namemc ^ nomnummc ^ nameedizm ^
vxostkol ^ vxostprice ^ vxoststoim ^ vxostvprice ^ vxostvstoim ^
.{
datoper ^
operprice ^ operbvprice ^
prixkol ^ prixstoim ^ prixvprice ^ prixvstoim ^ prixval ^
rasxkol ^ rasxstoim ^ rasxvprice ^ rasxvstoim ^ rasxval ^
.}
isxostkol ^ isxostprice ^ isxoststoim ^ isxostvprice ^ isxostvstoim ^
prixisxostkol ^ prixisxostprice ^ prixisxoststoim ^ prixisxostvprice ^
prixisxostvstoim ^
rasxisxostkol ^ rasxisxostprice ^ rasxisxoststoim ^ rasxisxostvprice ^
rasxisxostvstoim ^
.end
.}
        Итого по партии

prixpartkol ^ prixpartprice ^ prixpartstoim ^ prixpartvprice ^ prixpartvstoim ^
rasxpartkol ^ rasxpartprice ^ rasxpartstoim ^ rasxpartvprice ^ rasxpartvstoim ^
vxostpartkol ^ vxostpartprice ^ vxostpartstoim ^ vxostpartvprice ^ vxostpartvstoim ^
isxostpartkol ^ isxostpartprice ^ isxostpartstoim ^ isxostpartvprice ^ isxostpartvstoim ^
.end
.}
        Итого по ведомости

prixallkol ^ prixallprice ^ prixallstoim ^ prixallvprice ^ prixallvstoim ^
rasxallkol ^ rasxallprice ^ rasxallstoim ^ rasxallvprice ^ rasxallvstoim ^
vxostallkol ^ vxostallprice ^ vxostallstoim ^ vxostallvprice ^ vxostallvstoim ^
isxostallkol ^ isxostallprice ^ isxostallstoim ^ isxostallvprice ^ isxostallvstoim ^

.endform

#doc
Движение по партиям
#end
.linkform 'vdvmcpar_01' prototype is 'vdvmcpar'
.NameInList 'Движение по партиям'
.fields
CommonFormHeader
! Даты начала и конца периода
datstart datend
! Символы национальной денежной единицы
ndesimv ndesimv ndesimv
!.{
nameparty
!.{
namemc nomnummc nameedizm
vxostprice vxostvprice baseval
vxostkol vxoststoim vxostvstoim baseval
!.{
datoper
operprice operbvprice baseval
prixkol prixstoim prixvstoim baseval
rasxkol rasxstoim rasxvstoim baseval
!.}
isxostprice isxostvprice baseval
isxostkol isxoststoim isxostvstoim baseval
!.}
vxostpartstoim vxostpartvstoim baseval
isxostpartstoim isxostpartvstoim baseval
prixpartstoim prixpartvstoim baseval
rasxpartstoim rasxpartvstoim baseval
!.}
vxostallstoim vxostallvstoim baseval
isxostallstoim isxostallvstoim baseval
prixallstoim prixallvstoim baseval
rasxallstoim rasxallvstoim baseval
.endfields
^
            ВЕДОМОСТЬ ДВИЖЕНИЯ МАТЕРИАЛЬНЫХ ЦЕННОСТЕЙ В РАЗРЕЗЕ ПАРТИЙ

                              с ^  по ^

 Ш──────────────────────────────┬──────────┬──────┬────────┬────────────────────────────┬─────────────────────────────────────────────────────┬─────────────────────────────────────────────────────
                              │ Номенкл. │ Ед.  │  Дата  │           Цена             │                    П Р И Х О Д                      │                   Р А С Х О Д
  Наименование матценности    │  номер   │ изм. │операции├─────────────┬──────────────┼──────────┬─────────────────────┬────────────────────┼──────────┬─────────────────────┬────────────────────
                              │          │      │        │ в @@@@@@@@@ │   в валюте   │Количество│Стоимость в @@@@@@@@@│ Стоимость в валюте │Количество│Стоимость в @@@@@@@@@│ Стоимость в валюте
──────────────────────────────┴──────────┴──────┴────────┴─────────────┴──────────────┴──────────┴─────────────────────┴────────────────────┴──────────┴─────────────────────┴──────────────────── Ш
 А.{

.if isSomeParty
   БПартия : Б ^

.{
.if isSomeMc
 Ш @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@ Ш
 Ш Входящий остаток сальдо :                                &&&&&&&&&&&&& &&&&&&&& @@@@@ &&&&&&&&&& &&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&& @@@@@ Ш
.{
 Ш                                                 @@@@@@@@ &#&&&&&&&&&&& &#&&&&&& @@@@@ &#&&&&&&&& &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@ &#&&&&&&&& &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@ Ш
.}
 Ш Исходящий остаток сальдо :                               &#&&&&&&&&&&& &#&&&&&& @@@@@ &#&&&&&&&& &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@ Ш
.end

.}
 Ш ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
 Б   Итого по партии : Б
 Сумма входящего остатка     :                                                                    &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@
 Сумма исходящего остатка    :                                                                    &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@
 Сумма по движению за период :                                                                    &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@            &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@
 ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── Ш
 А.end
.}

 Ш
 Б   Итого по предприятию :
 Сумма входящего остатка     :                                                                   &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@
 Сумма исходящего остатка    :                                                                   &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@
 Сумма по движению за период :                                                                   &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@             &#&&&&&&&&&&&&&&&&&&& &#&&&&&&&&&&&& @@@@@ Щ
 А.endform