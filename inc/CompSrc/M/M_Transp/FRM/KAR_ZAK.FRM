/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Картотека заказов                                         ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Kar_zak'
.group 'План'
.group 'Закрепления'
.group 'Рейсы'
.group 'Факт ПЛ'
.hide
!.p 60
.fields
!Основной лист
 Direction
 NameOrg_Lich
 NameOrg
 KodOrg AdrOrg TelOrg
!Лист по заказам
 NaimZakaz
 NrecZakaz
!ссылка на путевой лист
 PutLstNrec
!номер путевого листа
 PutLstNpl
 ZakExitCh  ZakExitDn  ZakReturnCh ZakReturnDn
 KatOrgFromOKPO KatOrgFromname KatOrgToOKPO KaorgFromName
!Для МВК
 StatusZakaz MarkaTc NrecTc NomerTc GarNomTc GodvTc MOL Smena PlaceName PlaceAdr
 OneFio OneTabn
!Для главного заказа
 NaimZakaz_Main  NrecZakaz_Main
 ZakExitCh_Main  ZakExitDn_Main  ZakReturnCh_Main ZakReturnDn_Main
 ZakFkMasKL_Main ZakFkTime_Main  ZakfkTimePg_Main ZakfkTimeRz_Main ZakfkTimeProsto_Main
 ZakazKolEz_Main ZakAlProbeg_Main ZaknpProbeg_Main
!
 ZakFkMasKL ZakFkTime   ZakfkTimePg ZakfkTimeRz ZakfkTimeProsto
 ZakazKolEz ZakAlProbeg ZaknpProbeg

!маршрут
 Kodmarch NaimMar Distantion DistCity DistWay1 DistWay2  DistWay3 DistMoun
 PogAddr PogDistantion PogDistCity PogDistWay1 PogDistWay2 PogDistWay3  PogDistMoun
 RazAddr RazDistantion RazDistCity RazDistWay1 RazDistWay2 RazDistWay3  RazDistMoun

!грузы
 Name_gruz ClassGr KolMect Massa_Gruz : double

!услуги и топливо
 UslName Usltime UslKolvo
 ZakazSimv NationSimv ValSimv
 ZakazCena NationCena ValSimvCena ZakazStoim NationStoim ValSimvStoim
!Водители
 DrvTabn DrvFio
.endfields
^^
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.if Kar_zakGru
.{
^ ^ ^ ^
.}
.end
.if Kar_zakDoh
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.end
.if Kar_zakDrv
.{
^ ^
.}
.end
.}

.endform
.linkform 'Kar_zak_01' prototype is 'Kar_zak'
.NameInList  'Все по картотеке заказчиков'
.Group 'План'
.Group 'Рейсы'
.Group 'Закрепления'
.Group 'Факт ПЛ'
!.p 60
.fields
!Основной лист
 CommonFormHeader
 Direction
 NameOrg_lich
 NameOrg

!Лист по заказам
 NaimZakaz
 ZakExitCh  ZakExitDn  ZakReturnCh ZakReturnDn
 KatOrgFromOKPO KatOrgFromname KatOrgToOKPO KaorgFromName
 ZakFkMasKL ZakFkTime   ZakfkTimePg ZakfkTimeRz ZakfkTimeProsto
 ZakazKolEz ZakAlProbeg ZaknpProbeg

!маршрут
 Kodmarch NaimMar Distantion DistCity DistWay1 DistWay2  DistWay3 DistMoun
 PogAddr PogDistantion PogDistCity PogDistWay1 PogDistWay2 PogDistWay3  PogDistMoun
 RazAddr RazDistantion RazDistCity RazDistWay1 RazDistWay2 RazDistWay3  RazDistMoun

!грузы
 Name_gruz ClassGr KolMect Massa_Gruz

!услуги
 UslName Usltime UslKolvo
 NationSimv NationCena ValSimv ValSimvCena
 NationSimv NationStoim ValSimv ValSimvStoim

 DrvTabn DrvFio

.endfields
^

                Картотека ^ заказов
                по организации  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
Заказчик: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Номер:@@@@@@@@@@@@@@@@@@@@
───────────────────────────────────────────────────────────────────
Выезд: час @@@@@@ день @@@@@@@@@@ Возвр: час @@@@@@ день @@@@@@@@@@
───────────────────────────────────────────────────────────────────
 Отправитель:  @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Получатель:   @@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
───────────────────────────────────────────────────────────────────
┌─Масса ─┬─Время ┬───────┬───────┬───────┬─Ездки─┬─Пробег─┬────────┐
│ груза  │перевоз│погруз.│разгр. │простой│       │общий   │с грузом│
├────────┼───────┼───────┼───────┼───────┼───────┼────────┼────────┤
│&#&&&.&&│&#&&.&&│&#&&.&&│&#&&.&&│&#&&.&&│&#&&&&&│&#&&&.&&│&#&&&.&&│
└────────┴───────┴───────┴───────┴───────┴───────┴────────┴────────┘
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

.if Kar_zakGru
 Грузы:
┌─────────────────────────┬──────┬───────┬────────────┐
│   Наименование груза    │Класс │ Кол-во│  Масса     │
├─────────────────────────┼──────┼───────┼────────────┤
.{
│ @@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@│&#&&.&&│ &#&&&&&&.&&│
.}
└─────────────────────────┴──────┴───────┴────────────┘
.end
.if Kar_zakDoh
 Услуги:
┌────────────────────────────┬─────────────┬─────────────┐
.{
│ @@@@@@@@@@@@@@@@@@@@@@@@@@ │Время:&#&&.&&│Кол-во&&#&.&&│
├────────────────────────────────────────────────────────┤
│Цена  │в @~@@@@@ &&&&&&&.&& │ в @~@@@@@   &&&&&&&&&&&.&&│
├────────────────────────────────────────────────────────┤
│Стоим.│в @~@@@@@ &&&&&&&.&& │ в @~@@@@@   &&&&&&&&&&&.&&│
.}
└────────────────────────────┴───────────────────────────┘
.end
──────────────────────────────────────────────────────────────────────
.if Kar_zakDrv
.{
^ ^
.}
.end
══════════════════════════════════════════════════════════════════════
.}
.endform
.linkform 'Kar_zak_02' prototype is 'Kar_zak'
.NameInList  'Закрепления ТС'
.Group 'Закрепления'
!.p 60
.fields
!Основной лист
 CommonFormHeader
 MarkaTc  NomerTc GarNomTc GodvTc
 NaimZakaz
 NameOrg  KodOrg
 AdrOrg TelOrg MOL
 NrecZakaz_Main PlaceAdr
 Smena
 ZakExitCh  ZakExitDn  ZakReturnCh ZakReturnDn
 OneFio OneTabn

.endfields
^
                     Закрепления
┌─────────────┬─────────┬─────────┬──────────┬────────┬───────────────┬─────────┬────────────────┬───────────┬───────────────────┬────────┬──────────────────┬────────┬────────┬──────────┬────────┬──────────┬────────┬─────────────────────┐
│  Марка      │  Гос.   │  Гар.   │   Год    │ номер  │    Заказчик   │   Код   │     Адрес      │  Телефон  │      Ф.И.О.       │ Приказ │      Адрес       │ Смена  │ Время  │  Дата    │ Время  │  Дата    │ Таб.   │       Ф.И.О.        │
│   ТС        │ номер   │ номер   │  выпуска │ заказа │               │заказчика│    заказчика   │ заказчика │   ответственного  │        │     стоянки      │        │ выезда │ выезда   │возвращ.│ возвращ. │водителя│     водителя        │
├─────────────┼─────────┼─────────┼──────────┼────────┼───────────────┼─────────┼────────────────┼───────────┼───────────────────┼────────┼──────────────────┼────────┼────────┼──────────┼────────┼──────────┼────────┼─────────────────────┤
.{
│@@@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│@@@@@@@@│@@@@@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@│@@@@@@@@│@@@@@@@@@@@@@@@@@@│@@@@@@@@│ @@@@@@@│@@@@@@@@@@│ @@@@@@@│@@@@@@@@@@│@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@│
.if Kar_zakGru
.{
.}
.end
.if Kar_zakDoh
.{
.}
.end
.if Kar_zakDrv
.{
.}
.end
.}
└─────────────┴─────────┴─────────┴──────────┴────────┴───────────────┴─────────┴────────────────┴───────────┴───────────────────┴────────┴──────────────────┴────────┴────────┴──────────┴────────┴──────────┴────────┴─────────────────────┘
.endform
