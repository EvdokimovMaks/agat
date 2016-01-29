//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Протокол списания ресурсов на продукцию
//------------------------------------------------------------------------------
.set name = 'ProtCostRasp'
.nameinlist 'Базовая форма'
.hide
.fields
 ParamUser
 TitleRep
 Param
 NmParam
 NmObj
 NmRes 
 BarKodRes
 NmFantomRes
 BarKodFantomRes
 NmEiRes
 NedelimEI
 PotrCom
 Koef
 SpisCom
 NmProd  
 BarKodProd 
 EiProd 
 AmountProd 
 SpisProd 
 PotrProd
 WsegoNm
 WsegoEi
 Wsego1
 Wsego2
 Wsego3
 Comment

.endfields

^ ParamUser
^ TitleRep
.{

^ Param
^ NmParam

.}

.{
^ NmObj
.{
NmRes   BarKodRes  NmFantomRes   BarKodFantomRes
^       ^          ^             ^ 

NmEiRes NedelimEI  PotrCom
^       ^          ^

Koef    SpisCom
^       ^
.{
NmProd  BarKodProd EiProd AmountProd SpisProd PotrProd
^       ^          ^      ^          ^        ^
.}
WsegoNm WsegoEi    Wsego1 Wsego2     Wsego3
^       ^          ^      ^          ^
^ комментарий
.}

.}

.endform