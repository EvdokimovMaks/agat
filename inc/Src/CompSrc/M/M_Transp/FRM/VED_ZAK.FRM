/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Сведения о заказчике                                      ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Ved_zak'
.hide
!.p 60
.fields
!Основной лист
 DataBeg DataEnd
 NameOrg
 Data

!Лист по заказам
 NaimZakaz

!В разрезе путевого
 Nrec_Putlst Nrec_Katzak PodrZak_Name
 Nom_put Gnom

 ZakExitCh  ZakExitDn ZakSpeedExi ZakReturnCh ZakReturnDn ZakSpeedRet Nsopr
 KatOrgFromOKPO KatOrgFromname KatOrgToOKPO KaorgFromName
 ZakFkMasKL:double  Timeall:double  ZakFkTime:double   ZakfkTimePg:double ZakfkTimeRz:double  ZakfkTimeProsto:double
 ZakazKolEz:double ZakAlProbeg:double ZaknpProbeg:double ZakFkTnkm:double ZakVol:double

!маршрут
 Kodmarch NaimMar Distantion DistCity DistWay1 DistWay2  DistWay3 DistMoun
 PogAddr PogDistantion PogDistCity PogDistWay1 PogDistWay2 PogDistWay3  PogDistMoun
 RazAddr RazDistantion RazDistCity RazDistWay1 RazDistWay2 RazDistWay3  RazDistMoun
!топливо
 ToplDvi FaktTopDvi StoimDvi:double
 ToplAvt FaktTopAvt StoimAvt:double
 ToplSp FaktTopSp   StoimSp:double

!грузы
 Name_gruz ClassGr KolMect Massa_Gruz

!услуги
 UslName Usltime UslKolvo
 ZakazSimv NationSimv ValSimv
 ZakazCena NationCena ValSimvCena ZakazStoim:double  NationStoim ValSimvStoim
! табель водителя
 Fio_vod1 Vidopl_vod1  nVidopl_vod1 Koldn_vod1  Chasf_vod1   SummaRc_vod1 :double
!услуги и тарифы
 UslName_Tar
 KodTar  Name_Tar Edin_Tar Tarif KolVo_Tar Summa_tar : double
.endfields
^ ^ ^ ^
.{
^
.{
.{
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
!топливо
.{
 ^ ^ ^
.}
.{
 ^ ^ ^
.}
.{
 ^ ^ ^
.}
.if Avto_ZakGru
.{
^ ^ ^ ^
.}
.end
.if Avto_ZakTop
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.end
.{
^
.{
 ^ ^ ^ ^ ^
.}
.}
.if Avto_ZakDoh
.{
^
.{
^ ^ ^ ^ ^ ^
.}
.}
.end
.}
.}
.}

.endform
.linkform 'Ved_zak_01' prototype is 'Ved_zak'
.NameInList 'Основные транспортные расходы'
!.p 60
.var
One_StTopl          :double
One_ZakazStoim      :double
One_SummaRc_vod1    :double
Zak_StTopl          :double
Zak_ZakazStoim      :double
Zak_SummaRc_vod1    :double
Zak_ZakAlProbeg     :double
Zak_TimeAll         :double
NaimOrg,NaimZak,NaimPut,NaimTC : string;
.endvar

.fields
 CommonFormHeader
!Основной лист
 DataBeg DataEnd
 NameOrg
 Data

!Лист по заказам
 NaimZakaz

.endfields

^
           Сведения о транспортных расходах по заказчикам
     по путевым листам  c @@@@@@@@@@@@@@@@@@@@@@@ по @@@@@@@@@@@@@@@@@@@@@
      для транспортной организации  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @@@@@@@@@@@@@@@@@@@@
 И.{
.[h OverWrite
┌──────────────────┬───────────┬──────────┬───────────┬───────────┬───────────┬───────────┬───────────┬───────────┐
│   Организация    │Номер исх. │  Номер   │    Гос.   │   Время   │  Пробег   │  Оплата   │ Стоимость │ Стоимость │
│     заказчик     │ документа │ путевого │   номер   │ по заказу │ по заказу │ водителям │   ГСМ     │  услуг    │
│                  │           │          │           │           │           │           │           │           │
└──────────────────┴───────────┴──────────┴───────────┴───────────┴───────────┴───────────┴───────────┴───────────┘
.]h
.begin
Zak_StTopl          :=  0;
Zak_ZakazStoim      :=  0;
Zak_SummaRc_vod1    :=  0;
Zak_ZakAlProbeg     :=  0;
Zak_TimeAll         :=  0;
NaimOrg             :=  NaimZakaz;
end.
@@@@@@@@@@@@@@@@@@
.{
.{
.begin
One_StTopl          :=  0;
One_ZakazStoim      :=  0;
One_SummaRc_vod1    :=  0;
NaimZak             := Nsopr  ;
NaimPut             := Nom_put;
NaimTC              := Gnom   ;
end.
!топливо
.{
.begin
One_StTopl   := One_StTopl + StoimDvi;
end.
.}
.{
.begin
One_StTopl   := One_StTopl + StoimAvt;
end.
.}
.{
.begin
One_StTopl   := One_StTopl + StoimSp;
end.
.}
.if Avto_ZakGru
.{
.}
.end
.if Avto_ZakTop
.{
.begin
end.
.}
.end
.{
.{
.begin
One_SummaRc_vod1    := One_SummaRc_vod1  + SummaRc_vod1 ;
end.
.}
.}
.if Avto_ZakDoh
.{
.{
.begin
One_ZakazStoim   := One_ZakazStoim + Summa_tar;
end.
.}
.}
.end
.Fields
NaimZak NaimPut NaimTC
TimeAll ZakAlProbeg
One_SummaRc_vod1 One_StTopl One_ZakazStoim
.endfields
                    @@@@@@@@@@@  @@@@@@@@@@ @@@@@@@@@@ &#&&&&&&.&& &#&&&&&&.&& &#&&&&&&.&& &#&&&&&&.&& &#&&&&&&.&&
.begin
Zak_ZakazStoim   := Zak_ZakazStoim + One_ZakazStoim;
Zak_StTopl       := Zak_StTopl     + One_StTopl;
Zak_SummaRc_vod1 := Zak_SummaRc_vod1 + One_SummaRc_vod1;
Zak_ZakAlProbeg  := Zak_ZakAlProbeg  + ZakAlProbeg;
Zak_TimeAll      := Zak_TimeAll  + TimeAll;
end.
.}
.}
.Fields
NaimOrg Zak_TimeAll Zak_ZakAlProbeg Zak_SummaRc_vod1 Zak_StTopl  Zak_ZakazStoim
.endfields
Итого по заказчику  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &#&&&&&&.&& &#&&&&&&.&& &#&&&&&&.&& &#&&&&&&.&& &#&&&&&&.&&
.} И
.endform
.linkform 'Ved_zak_02' prototype is 'Ved_zak'
.NameInList 'Все о заказчике'
!.p 60
.fields
 CommonFormHeader
!Основной лист
 DataBeg DataEnd
 NameOrg
 Data

!Лист по заказам
 NaimZakaz

!В разрезе путевого
 Nom_put Gnom PodrZak_Name
 ZakExitCh ZakExitDn ZakSpeedExi ZakReturnCh ZakReturnDn ZakSpeedRet Nsopr
 KatOrgFromOKPO KatOrgFromname KatOrgToOKPO KaorgFromName
 ZakFkMasKL ZakFkTime ZakfkTimePg ZakfkTimeRz  ZakfkTimeProsto
 ZakazKolEz ZakAlProbeg ZaknpProbeg
 ZakFkTnkm ZakVol
!маршрут
 Kodmarch NaimMar Distantion DistCity DistWay1 DistWay2  DistWay3 DistMoun
 PogAddr PogDistantion PogDistCity PogDistWay1 PogDistWay2 PogDistWay3  PogDistMoun
 RazAddr RazDistantion RazDistCity RazDistWay1 RazDistWay2 RazDistWay3  RazDistMoun

!топливо
 ToplDvi FaktTopDvi
 ToplAvt FaktTopAvt
 ToplSp FaktTopSp

!грузы
 Name_gruz ClassGr KolMect Massa_Gruz

!услуги и топливо
 UslName Usltime UslKolvo
 NationSimv NationCena ValSimv ValSimvCena
 NationSimv NationStoim ValSimv ValSimvStoim
!услуги и табель водителя
 Fio_vod1   Vidopl_vod1  nVidopl_vod1 Koldn_vod1  Chasf_vod1 SummaRc_vod1
!услуги и тарифы
 UslName_Tar
 KodTar  Name_Tar Edin_Tar Tarif KolVo_Tar Summa_tar
.endfields

^
          Сведения о заказчиках по путевым листам, выписанным
                   c @@@@@@@@@@@  по @@@@@@@@@@@
           по организации  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         @@@@@@@@@@@@@@@@@@
.{
Заказчик : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.{
───────────────────────────────────────────────────────────────────
Номер путевого: @@@@@@@@@@@@  Гос. номер @@@@@@@@@@@@@ @@@@@@@@@@@@@
Выезд:    час  @@@@@@@@  день  @@@@@@@@@@@  спидометр   &&#&&&&&&&
Возврат:  час  @@@@@@@@  день  @@@@@@@@@@@  спидометр   &&#&&&&&&&
───────────────────────────────────────────────────────────────────
 Номер накладной (акта):      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Отправитель:  @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Получатель:   @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
───────────────────────────────────────────────────────────────────
┌─Масса ─┬─Время ┬───────┬───────┬───────┬─Ездки─┬─Пробег─┬──────────────────────────┐
│ груза  │перевоз│погруз.│разгр. │простой│       │общий   │с грузом│  ткм   │ объем  │
├────────┼───────┼───────┼───────┼───────┼───────┼────────┼──────────────────────────┤
│&#&&&.&&│&#&&.&&│&#&&.&&│&#&&.&&│&#&&.&&│&#&&&&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│
└────────┴───────┴───────┴───────┴───────┴───────┴────────┴──────────────────────────┘
───────────────────────────────────────────────────────────────────
 Данные по мapшруту  @@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
┌─────────┬────────┬────────┬────────┬────────┬────────┐
│ Расст.  │Город   │группа 1│группа 2│группа 3│горы    │
├─────────┼────────┼────────┼────────┼────────┼────────┤
│&#&&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│
│Пункт погрузки:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│&#&&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│
│Пункт разгрузки: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │
│&#&&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│&#&&&.&&│
└─────────┴────────┴────────┴────────┴────────┴────────┘
───────────────────────────────────────────────────────────────────
!топливо
.{
 ^ &#&&&&.&&
.}
.{
 ^ &#&&&&.&&
.}
.{
 ^ &#&&&&.&&
.}
───────────────────────────────────────────────────────────────────
.if Avto_ZakGru
 Грузы:
┌─────────────────────────┬──────┬───────┬────────────┐
│   Наименование груза    │Класс │ Кол-во│  Масса     │
├─────────────────────────┼──────┼───────┼────────────┤
.{
│ @@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@│&#&&.&&│ &#&&&&&&.&&│
.}
└─────────────────────────┴──────┴───────┴────────────┘
.end
.if Avto_ZakTop
.{
┌───────────────────────────────────────────┬─────────────┬──────────────┐
│ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │Время:&&&&.&&│Кол-во &&&.&& │
├────────────────────────────────────────────────────────────────────────┤
│Цена                        │в @~@@@@@ &&&&&&&.&& │ в @~@@@@@ &&&&&&&.&&│
├────────────────────────────────────────────────────────────────────────┤
│Стоимость                   │в @~@@@@@ &&&&&&&.&& │ в @~@@@@@ &&&&&&&.&&│
└────────────────────────────────────────────────────────────────────────┘
────────────────────────────────────────────────────────────────────────────
.}
.end
.{
Данные по сопровождающим : ^
┌─────┬───────────────────────────┬──────┬───────┬──────────────┐
│  Код│   Наименование вида оплат │Кол.дн│ Часов │  СУММА       │
├─────┼───────────────────────────┼──────┼───────┼──────────────┤
.{
│&&&&&│ @@@@@@@@@@@@@@@@@@@@@@@@@@│&#&.&&│&#&&.&&│&'&&&&&&&&&.&&│
.}
└─────┴───────────────────────────┴──────┴───────┴──────────────┘
.}
.if Avto_ZakDoh
.{
Наименование  @@@@@@@@@@@@@@@@@@@@@@@@@@
┌─────┬─────────────────────────┬────────┬────────┬───────┬────────────┐
│  Код│   Наименование тарифа   │Един.изм│Тариф   │ Кол-во│  СУММА     │
├─────┼─────────────────────────┼────────┼────────┼───────┼────────────┤
.{
│&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@ │@@@@@@@@│&#&&&.&&│&#&&.&&│&'&&&&&&&.&&│
.}
└─────┴─────────────────────────┴────────┴────────┴───────┴────────────┘
.}
───────────────────────────────────────────────────────────────────────
.end
.}
.}
═══════════════════════════════════════════════════════════════════════
.}
.endform