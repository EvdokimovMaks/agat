//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Калькуляции в настраиваемых разрезах"
//------------------------------------------------------------------------------
.set name = 'RepSmetaSFZ'
.nameinlist 'Базовая форма'
.hide
.fields

SMTopRep
SMNameRep

SMNameParamOne
SMNameValueOne
SMNameParamTwo
SMNameValueTwo

SMValut

SMgrStZatr
SMgrEd
SMgrAmountEd
SMgrPrice
SMgrSumEd
SMgrAmount
SMgrSum

.endfields

^
^
.{
   ^   .{.?stRParamcfzSM; ^.}
.}

.{
 ^  ^
.}

^ 
.{
  ^ ^ ^ ^ ^ ^ ^
.}
 
.endform
