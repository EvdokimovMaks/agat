/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,99 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 6.00                                                      ║
 ║ Назначение    : Лимитно-заправочная ведомость на отпуск ГСМ               ║
 ║ Ответственный : Власик Павел Владимирович                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Lim_Zap'
.Group 'для автотранспорта'
.hide
!.p 42
.fields
//Shapka
NumLZV
LZVnRec : Comp
DateLZV Platil Poluchil Org NumDover DocOpl Summa NameGSM Kodgsm EdIzm
KolVo : double
DopDate
DopKolVo : double
//Itogi
KolVoSmena DateSmena NumSmena
NameZaprav TabnZapr
//Stroki
LZVSnRec : Comp
DateS TimeS SmenaS MarkaS GosNS NPLS GarNS TabNS
KolVoGsmS : double
VidGsmS
OstLimS  : double
FioVodS FioZapS
KolVoGsmPro
Density : double
GasTank
GasTankStr
// данные по карточке
WayDocCode
WayDocName
AutoDocNOM_DOC
AutoDocActionBeg
AutoDocActionEnd
ORG_FromName

//Hvost
KolVoItogoLitr  : double
KolVoItogoLitrProp
Koff : double
KoffAver : double
KolVoItogo : double
KolVoItogoWeight : double
SumVal : double
Price : double
VPrice : double
.endfields

.{
^ ^
^
^ ^
^ ^
^ ^ ^
^ ^ ^ ^ ^
//--------------Shapka
.{
^ ^ ^
.}
^ ^
//--------------Itogi
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
//--------------kartochka
 ^ ^ ^ ^ ^ ^
.}
//--------------//Stroki
^ ^
^ ^
^ ^ ^
^ ^
//--------------//Hvost
.}
.endform

/*
.linkform 'fMorale_01' prototype is 'fMorale'
.NameInList 'Линейный отчет'
.Group 'Линейные'

.endform
*/
.linkform 'Lim_Zap_03' prototype is 'Lim_Zap'
.NameInList 'Ведомость на отпуск ГСМ (с баками)'
.Group 'Группа BT'
.Group 'для автотранспорта'
.fields
.endfields
.{
.{
.}
.Fields
Org
NumLZV
DateLZV
NameGSM KodGSm
NameZaprav TabnZapr
.EndFields
Наименование организации: ^
Ведомость №             : ^
Дата                    : ^
Наименование и марка ГСМ: ^ ^
МОЛ                     : ^ ^
┌──────────────────────┬────────────┬───────────────────────────────┬────────────┬─────────┐
│      Автомобиль      │   Номер    │            Водитель           │   Выдано   │         │
├──────────┬───────────┤  путевого  ├────────────────────┬──────────┤    ГСМ     │   Бак   │
│  модель  │   номер   │   листа    │       ФИО          │Таб.номер │            │         │
├──────────┼───────────┼────────────┼────────────────────┼──────────┼────────────┼─────────┤
.{
.Fields
MarkaS GosNS NPLS FioVodS TabNS KolVoGsmS GasTankStr
.EndFields
│@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│&#&&&&&&&.&&│@@@@@@@@@│
.}
└──────────┴───────────┴────────────┴────────────────────┴──────────┴────────────┴─────────┘
.Fields
KolVoItogoLitr KolVoItogoWeight
.EndFields
Всего выдано: объем &&&&&&&&&.&&; вес &&&&&&&&&.&&
.}

.endform


.linkform 'Lim_Zap_03a' prototype is 'Lim_Zap'
.NameInList 'Ведомость на отпуск ГСМ (с баками)'
.Group 'Группа BT'
.Group 'для ж.д. и др. ТС'
.fields
.endfields
.{
.{
.}
.Fields
Org
NumLZV
DateLZV
NameGSM KodGSm
NameZaprav TabnZapr
.EndFields
Наименование организации: ^
Ведомость №             : ^
Дата                    : ^
Наименование и марка ГСМ: ^ ^
МОЛ                     : ^ ^
┌──────────────────────┬────────────┬───────────────────────────────┬────────────┬─────────┐
│          ТС          │   Номер    │            Водитель           │   Выдано   │         │
├──────────┬───────────┤  регистр.  ├────────────────────┬──────────┤    ГСМ     │   Бак   │
│  модель  │   номер   │   листа    │       ФИО          │Таб.номер │            │         │
├──────────┼───────────┼────────────┼────────────────────┼──────────┼────────────┼─────────┤
.{
.Fields
MarkaS GosNS NPLS FioVodS TabNS KolVoGsmS GasTankStr
.EndFields
│@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│&#&&&&&&&.&&│@@@@@@@@@│
.}
└──────────┴───────────┴────────────┴────────────────────┴──────────┴────────────┴─────────┘
.Fields
KolVoItogoLitr KolVoItogoWeight
.EndFields
Всего выдано: объем &&&&&&&&&.&&; вес &&&&&&&&&.&&
.}

.endform
