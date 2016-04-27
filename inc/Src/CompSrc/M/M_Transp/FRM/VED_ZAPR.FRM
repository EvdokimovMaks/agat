/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Сведения по пунктам заправки                              ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Ved_zapr'
.hide
!.p 60
.fields
!Основной лист
 DataBeg DataEnd
 NameOrg
 Data

!Лист по заправке
 NaimZakaz  OkpoZakaz  AddrZapr
 KodToplivo NameToplivo EdinIzm
!из путевого
 Gnom  Nom_put DataZapr
 ExitCh  ExitDn ReturnCh ReturnDn
 Tabn1 Fio_vod1
 VidPlat
 VidanTop :double PriceTop :double
 VipItgKolVo VipItgStoim
 VipItgKolVoNal VipItgStoimNal
 VipItgKolVoNoNal VipItgStoimNoNal
 VipAllItgStoim
 VipAllItgStoimNal  VipAllItgStoimNoNal
.endfields
.{
^ ^ ^ ^
.{
^ ^ ^
.{
^ ^ ^
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^ ^
^ ^
^ ^
.}
^
^ ^
.if BrkPage
.end
.}
.}
.endform
.linkform 'Ved_zapr_01' prototype is 'Ved_zapr'
.NameInList 'Все по пунктам заправки'
!.p 60
!не считает при прогоне листа
.var
ItgKolVo   :double
ItgStoim   :double
AllItgStoim   :double
.endvar
.fields
 CommonFormHeader
!Основной лист
 DataBeg DataEnd
 NameOrg

!Лист по заправке
 NaimZakaz  OkpoZakaz AddrZapr
 KodToplivo NameToplivo  EdinIzm
!из путевого
 Gnom Nom_put  DataZapr
 ExitDn ReturnDn
 Tabn1 Fio_vod1
 VidPlat
 VidanTop PriceTop
 VipItgKolVo VipItgStoim
 VipItgKolVoNal VipItgStoimNal
 VipItgKolVoNoNal VipItgStoimNoNal
 VipAllItgStoim
 VipAllItgStoimNal  VipAllItgStoimNoNal
'true':'s'
.endfields

 Ш^
.{
                                                Сведения о заправках
                                          c @@@@@@@@@@@@  по @@@@@@@@@@@@
                                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{
.begin
AllItgStoim := 0
end.
 БАЗС  : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Щ
 Ш.{
.begin
ItgKolVo    := 0
ItgStoim    := 0
end.
 Б@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@ Щ
 Ш.{
.[h OverWrite
┌───────────┬──────────┬──────────┬──────────┬──────────┬───────────────────────┬─────────────────────────────────┐
│Государств.│ Дата     │   Номер  │   Дата   │   Дата   │       Вoдитель        │             Заправки            │
│  номер    │заправки  │ путевого │  выезда  │ возвращ. │───────┬───────────────│───────┬───────────┬─────────────│
│           │          │   листа  │          │          │ таб.  │    Ф.И.О.     │Платеж │ Количество│   Стоимость │
└───────────┴──────────┴──────────┴──────────┴──────────┴───────┴───────────────┴───────┴───────────┴─────────────┘
.]h
  @@@@@@@@@@ @@@@@@@@@@  @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@ &'&&&&&&&.& &&&&'&&&&&&.&
.begin
ItgKolVo    := ItgKolVo + VidanTop
ItgStoim    := ItgStoim + PriceTop
end.
.[f
.]f
.}
!.Fields
!ItgKolVo  ItgStoim
!.endfields
 БИтого по виду ГСМ                                                                       &'&&&&&&&.& &&&'&&&&&&&.&
в т.ч. нал.                                                                             &'&&&&&&&.& &&&'&&&&&&&.&
       б/н                                                                              &'&&&&&&&.& &&&'&&&&&&&.& Щ
 Ш.begin
AllItgStoim    := AllItgStoim + ItgStoim
end.
.}
!.Fields
!AllItgStoim
!.endfields
 БИтого  по АЗС                                                                                       &&&'&&&&&&&.&
в т.ч. нал.                                                                                         &&&'&&&&&&&.&
       б/н                                                                                          &&&'&&&&&&&.& Щ
 Ш.if BrkPage
^
.end
.}
.}
 Ш
.endform
