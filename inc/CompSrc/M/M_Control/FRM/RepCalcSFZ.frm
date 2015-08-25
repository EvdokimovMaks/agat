//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Калькуляции в настраиваемых разрезах"
//------------------------------------------------------------------------------
.set name = 'RepCalcSFZ'
.nameinlist 'Базовая форма'
.hide
.fields

TopRep
NameRep

NameParamOne
NameValueOne
NameParamTwo
NameValueTwo

AmountAll
EdMountAll

AmountTov
EdMountTov

AmountExcl
EdMountExcl

Valut

grStZatr
grEd
grAmountEd
grPrice
grSumEd
grAmount
grSum

.endfields

^
^
.{
   ^   .{.?stRParamcfz; ^.}
.}

.{
 ^  ^
.}

^ ^ 
^ ^
^ ^
^ 
.{
  ^ ^ ^ ^ ^ ^ ^
.}
 
.endform
