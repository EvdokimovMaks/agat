/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 6.00                                                      ║
 ║ Назначение    : Сведения по ГСМ на основании путевых                      ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='putGsm'
!.p 60
.hide
.fields
!Основной лист
 cPLRec
 Npl
 NumBak
!топливо
 KodToplivo Toplivo cPutGsm OctatExi :double  OctatRet :double  VidanToplivo :double
 SdanToplivo :double  NormaToplivo :double FaktToplivo :double
.endfields
^
Номер путевого @@@@@@@@@@@@@@@@@@@@@@@@
.{
^
.{
^ ^
.{
^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.endform
.linkform 'putGsm_01' prototype is 'putGsm'
.NameInList  'ГСМ в путевом листе'
!.p 60
.var
 ItgOctatExi     :double
 ItgOctatRet     :double
 ItgVidanToplivo :double
 ItgSdanToplivo  :double
 ItgNormaToplivo :double
 ItgFaktToplivo  :double
 ItgKodToplivo   :string
 ItgToplivo      :string
 isFirst         :boolean
.endvar
.fields
!Основной лист
 Npl NumBak
!топливо
 ItgKodToplivo ItgToplivo
 ItgOctatExi  ItgOctatRet  ItgVidanToplivo  ItgSdanToplivo
 ItgNormaToplivo  ItgFaktToplivo
.endfields

Номер путевого: @@@@@@@@@@@@@@@@@@@@@@@@
┌───────┬────────────────┬─────────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│ Код   │   Наименование │ Остаток │ Остаток │ Выдано  │ Сдано   │  Норма  │   Факт. │
│       │      ГСМ       │ выезд   │ возвр.  │         │         │         │         │
├───────┼────────────────┴─────────┼─────────┼─────────┼─────────┼─────────┼─────────┤
.{
Номер бака: @@@@@@@@
.{
.begin
 ItgOctatExi     := 0;
 ItgOctatRet     := 0;
 ItgVidanToplivo := 0;
 ItgSdanToplivo  := 0;
 ItgNormaToplivo := 0;
 ItgFaktToplivo  := 0;
 isFirst         := true;
 ItgKodToplivo   := KodToplivo
 ItgToplivo      := Toplivo
end.
.{
.begin
  if( isFirst )
{
  ItgOctatExi     := OctatExi;
  isFirst := false;
}
 //ItgOctatExi     := ItgOctatExi     + OctatExi     ;
 if Octatret <> -32000
   ItgOctatRet     := OctatRet     ;  //ItgOctatRet
 ItgVidanToplivo := ItgVidanToplivo + VidanToplivo ;
 ItgSdanToplivo  := ItgSdanToplivo  + SdanToplivo  ;
 ItgNormaToplivo := ItgNormaToplivo + NormaToplivo ;
 ItgFaktToplivo  := ItgFaktToplivo  + FaktToplivo  ;
end.
.}
│@@@@@@@│@@@@@@@@@@@@@@@@│&#&&&&.&&│&#&&&&.&&│&#&&&&.&&│&#&&&&.&&│&&&&&#.&&│&#&&&&.&&│
.}
.}
└───────┴────────────────┴─────────┴─────────┴─────────┴─────────┴─────────┴─────────┘
.endform