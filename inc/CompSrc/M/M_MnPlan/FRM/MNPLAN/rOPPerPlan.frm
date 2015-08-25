! ╔═════════════════════════════════════════════════════════════════════════╗
! ║  Разработал:  Юрьев Олег                                                ║
! ║  Назначение:  План по периодам                                          ║
! ╚═════════════════════════════════════════════════════════════════════════╝

.FORM 'OPPerPlan'
.hide
.fields
  sPlan      : string
  dBegDate   : Date
  sDataKind  : string
  sGrMC      : string
  sGrUsl     : string
  AllPeriods : word
  sAn1       : string
  sAn2       : string
  sAn3       : string
  sPer     : string

  PosName    : string
  SpKod      : string
  SpObozn    : string
  EdIzm      : string
  fAnalSp1   : string
  fAnalSp2   : string
  fAnalSp3   : string
  InvOnHand  : Double
  sSource    : string
  dK     : double

.endfields
.{
план ^
дата ^
данные ^
Группы ^ ^
кол-во пер ^
аналитики ОП ^ ^ ^
периоды .{.?PER; ^.}
.{
   ОП ^ ^ ^ ^ ^ ^ ^ ^
.{
   Количества ^ .{.?KOL; ^.}
.}
.}
.}
.endform

.linkform 'OPPerPlan_002' prototype is 'OPPerPlan'
.NameInList 'План по периодам'
!.group 'Отчеты с сортировкой по номенклатурному номеру'
.PAPER PA4
.ORIENT LANDSCAPE
!.LL 80
!.LM 10
!.TM 10
!.BM 10
!.RM 10
.P 60
.fields
  sPlan
  dBegDate
  sDataKind
  sGrMC
  sGrUsl
  AllPeriods
  sAn1
  sAn2
  sAn3
  sPer
  PosName
  SpKod
  SpObozn
  EdIzm
  fAnalSp1
  fAnalSp2
  fAnalSp3
  InvOnHand
  sSource
  dK

.endfields
.{

 Б                  ПЛАН ПО ПЕРИОДАМ Б

 И Оперативный план : ^
 Дата привязки  : ^
 Данные         : ^
 Группа МЦ      :  Б^ Й
 И Группа услуг   :  Б^ Й
 И Периодов : ^ И
 Ш                                                                                                                                      Лист Ш@NP@
 Э  Наименование             Ном номер  Обозначение  Ед. изм.  @@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@      Тек. остаток Э
 Щ
                 Периоды: .{.?PER;&&&&&&&&&&&&&&&& .} Щ
.{
 Ш
 Б  @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@ &&&&&&&&&&&&&.&& Щ
 И
 И.{
 Ш         @@@@@@@@@@@@@@@@ .{.?KOL;&&&&&&&&&&&&&.&& .} Ш
.}
.}
.}
.endform
