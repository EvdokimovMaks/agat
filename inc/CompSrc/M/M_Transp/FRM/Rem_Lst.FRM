/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Ремонтные  листы                                          ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Rem_Lst'
!.p 60
.hide
.fields
  NrecRem
  NomRem
  Transp
  Vod_fio
  DatVp
  TimeVp
  Rem_Fio
  Putlst
  DatBeg
  TimeBeg
  DatEnd
  TimeEnd
  Morale
  WayItemRem_name
  TipStopRem_Name
  Prichina
.endfields
.{ 
^
Номер ремонтного листа @@@@@@@@
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
.}
.endform
.linkform 'Rem_Lst_01' prototype is 'Rem_Lst'
.NameInList  'Ремонтный лист '
!.p 60
.fields
  NomRem
  Transp
  Vod_fio
  DatVp
  TimeVp
  Rem_Fio
  Prichina
.endfields
.{
Номер ремонтного листа @@@@@@@@
Автомобиль @@@@@@@@@@@@@@@@@@@@@@
Водитель   @@@@@@@@@@@@@@@@@@@@@@
Дата и время выписки  @@@@@@@@@@@@ @@@@@
Лицо, выдавшее ремонтный лист @@@@@@@@@@@@@@@@@@@@@@
Причина :    ^
.}
.endform
