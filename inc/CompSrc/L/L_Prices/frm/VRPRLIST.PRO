/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Управление продажами                                      ║
 ║ Версия        : 5.50                                                      ║
 ║ Назначение    : Прайс-лист-Печать                                         ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Прайс-лист-Печать
#end
.set name='VRPrList'
.hide
.NameInList 'Базовая форма'
! Для того чтобы выводились Уч_Цены необходимо в настройке поставить
! ПРИ ПЕЧАТИ ПРАЙС_ЛИСТА "РАССЧИТЫВАТЬ КОЛИЧЕСТВО"
! иначе Уч_Цены будут нулевые
.fields
  Name_Firm
  Adres TelFax  //3

  nRec_KlPrice
  Name_Price_List
  NaDatu
  Period
  field_Valut
  field_Curs
  Zagolovok     //5

  Name_Group    //2

  nRec_Prices
  BarKod Name_Tovar BarAndName Name_Party
  Uch_Ed AverValPrice:double AverRubPrice:double Val_Uch_Ed:double Nac_Uch_Ed:double
  Per_Coef:double Otp_Ed_Izm Price_Val:double Price_Nac:double
  Mas_Un Vol_MC
  Kol_Sell:double Kol_All   //17 fields

  OtpEdAll Koef EdSkidka EdPriceV EdPriceR     //5

  Down          //1     // all`s - 32
.endfields
.{
^:наименование фирмы(KatOrg_Name)
^:адрес(KatOrg_addr) ^:телефон/факс(KatOrg_Tel)
^:nRec прайс-листа(nRec_KlPrice)
.if ValRub  //если валютно-рублевый или валютный
.{
^:наименование прайс-листа(KlPrice_Name)
^:на день месяца года (KlPrice_dPrice)
.if PeriodEx
^
.end
^:Цены указаны в KlPrice_cVal
^:по курсу KlPrice_Curse
^:Заголовок (KlPrice_Zag)
.{

.{
^:группа
.}
.{
 ^:(nRec_Prices)
 ^:(номенкл) ^:(имя_товара) ^:(номенкл_имя_товара) ^:(имя_партии)
 ^:(Уч_Ед_Изм) ^:(Уч_цена_в_вал) ^:(Уч_цена_в_нац) ^:(Отп_цена_за_уч_ед_в_вал) ^:(Отп_цена_за_уч_ед_в_нац)
 ^:(Коэф_отп_ед_изм) ^:(Имя отп_ед_изм) ^:(Отп_цена_в_вал) ^:(Отп_цена_в_нац)
 ^:(Масса) ^:(Oбъем)
 ^:(Активн_к_продаже/Колич-во на внешних склд) ^:(наличие_на_предприятии м.б. в разрезе по партии)
.{
 ^ ^ ^ ^ ^:(все_отп_ед koef Skidka PriceV PriceR)
.}
.}

.}
 ^:(подножие (KlPrice_Pod))
.}
.else
.{
.fields
  RName_Price_List
  RNaDatu
  RPeriod
  Rfield_Valut
  Rfield_Curs
  RZagolovok     //5

  RName_Group    //1

  RnRec_Prices
  RBarKod RName_Tovar RBarAndName RName_Party
  RUch_Ed RAverRubPrice:double RVal_Uch_Ed:double
  RPer_Coef:double ROtp_Ed_Izm RPrice_Nac:double
  RMas_Un RVol_MC
  RKol_Sell:double RKol_All  //15
  ROtpEdAll RKoef REdSkidka REdPriceR     //4
  RDown          //1      //all`s - 26
.endfields
^
^
.if RPeriodEx
^
.end
^
^
^
.{

.{
^
.}
.{
 ^
 ^ ^ ^ ^
 ^ ^ ^
 ^ ^ ^
 ^ ^ ^ ^
.{
 ^ ^ ^ ^:(все отп.ед)
.}
.}

.}
^
.}
.end
.}
.endform
!
