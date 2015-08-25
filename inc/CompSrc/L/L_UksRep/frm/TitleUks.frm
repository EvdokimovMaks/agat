//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.84 - УКС
// Внутрипостроечный титульный список
//------------------------------------------------------------------------------

#doc
Внутрипостроечный титульный список
#end
.set name = 'TitleUks'
.hide
.fields
  dBeg : date        // начало_периода
  dEnd : date        //конец_периода
  cRecPeriod         //период
  NamePeriod
  EdIzmCost
  CurYear
  CurYear_1
.endfields
^ ^ ^ ^ ^ ^ ^
.{
.{                                  // CheckEnter TitleUksStroy
.fields
  wFinStru      : word              // 0 - подразделение, 1 - организация
  cRecFinStru   : comp              // инвестор
  NameFinStru
  cRecZakaz     : comp              // заказчик
  NameZakaz
  cRecIspOrg    : comp              // генподрядчик
  NameIspOrg
  KodStroy                          // код стройки
.endfields
^ ^ ^ ^ ^ ^ ^ ^
.{                                  // объекты
.if TitleUksIncRazdelObj
.end
.fields
   nPP                  // (1.0) // 1
   wTable       : word           // 2 код таблицы
   cRecObj      : comp           // 3 ссылка на объект/сметный раздел
   NameObj              // (1.A) // 4
   DateBegStroy : date           // 5
   DateEndStroy : date           // 6
// сметная стоимость
   s_PowerSmet  : double // (1.2)
   cRecEdIzm    : comp
   EdIzmPower
   s_Smet_B   : double   // (2.3)
   s_Smet_C   : double   // (1.3)
   s_CMRSmet_B  : double // (2.4)
   s_CMRSmet_C  : double // (1.4)
   s_ObSmet_B   : double // (2.5)
   s_ObSmet_C   : double // (1.5)
   s_PIRSmet_B  : double // (2.6)
   s_PIRSmet_C  : double // (1.6)
   s_ProchSmet_B  : double
   s_ProchSmet_C  : double
// выполнено на dBeg
   s_PowerIn    : double // (1.7)      // 20
   s_OFIn_B     : double // (2.8)
   s_OFIn_C     : double // (1.8)
   s_KVIn_B     : double // (2.9)
   s_KVIn_C     : double // (1.9)
   s_CMRIn_B    : double // (2.10)
   s_CMRIn_C    : double // (1.10)
   s_ObIn_B     : double // (2.11)
   s_ObIn_C     : double // (1.11)
   s_PIRIn_B    : double // (2.12)
   s_PIRIn_C    : double // (1.12)
   s_ProchIn_B    : double
   s_ProchIn_C    : double
// план текущего периода
   s_PowerPlan  : double // (1.18) // 33
   s_NZSPlan_B  : double // (2.25)
   s_NZSPlan_C  : double // (1.25)
   s_OFPlan_B   : double // (2.19)
   s_OFPlan_C   : double // (1.19)
   s_KVPlan_B   : double // (2.20)
   s_KVPlan_C   : double // (1.20)
   s_CMRPlan_B  : double // (2.21)
   s_CMRPlan_C  : double // (1.21)
   s_ObPlan_B   : double // (2.22)
   s_ObPlan_C   : double // (1.22)
   s_PIRPlan_B  : double // (2.23)
   s_PIRPlan_C  : double // (1.23)
   s_ProchPlan_B  : double
   s_ProchPlan_C  : double
// факт текущего периода
   s_PowerFact  : double // 48
   s_OFFact_B   : double
   s_OFFact_C   : double
   s_KVFact_B   : double
   s_KVFact_C   : double
   s_CMRFact_B  : double
   s_CMRFact_C  : double
   s_ObFact_B   : double
   s_ObFact_C   : double
   s_PIRFact_B  : double
   s_PIRFact_C  : double
   s_ProchFact_B  : double
   s_ProchFact_C  : double
// остаток сметной стоимости
   s_PowerSmetOst  : double // (1.13) // 61
   s_SmetOst_B   : double   // (2.14)
   s_SmetOst_C   : double   // (1.14)
   s_CMRSmetOst_B  : double // (2.15)
   s_CMRSmetOst_C  : double // (1.15)
   s_ObSmetOst_B   : double // (2.16)
   s_ObSmetOst_C   : double // (1.16)
   s_PIRSmetOst_B  : double // (2.17)
   s_PIRSmetOst_C  : double // (1.17)
   s_ProchSmetOst_B  : double
   s_ProchSmetOst_C  : double
// НЗС на конец периода
   s_NZS_End_B     : double // (2.26) // 72
   s_NZS_End_C     : double // (1.26)
.endfields

^ ^ ^ ^ ^ ^
^^^^^^^^^^^^^
^^^^^^^^^^^^^
^^^^^^^^^^^^^^^
^^^^^^^^^^^^^
^^^^^^^^^^^
^^
.}
.}
.}
.endform
