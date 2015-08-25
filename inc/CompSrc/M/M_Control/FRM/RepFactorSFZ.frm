//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Калькуляции в настраиваемых разрезах"
//------------------------------------------------------------------------------
.set name = 'RepFactorSFZ'
.nameinlist 'Базовая форма'
.hide
.fields

TopRepFactor
NameRepFactor

NameParamOneFactor
NameValueOneFactor
NameParamTwoFactor
NameValueTwoFactor

AmountAllFactor
AmountAllFactorFa
  EdMountAllFactor
AmountTovFactor
AmountTovFactorFa
  EdMountTovFactor
AmountExclFactor
AmountExclFactorFa
  EdMountExclFactor
ValutFactor

grColumnA
grColumnB
grColumnC
grColumnD
grColumnE

grColumnF
grColumnG
grColumnH
grColumnI
grColumnJ

grColumnK
grColumnL
grColumnM
grColumnN
grColumnO

grColumnP
grColumnQ
grColumnR
grColumnS
grColumnT

grColumnU

txtFormsOne
txtFormsTwo

.endfields

^
^
.{
   ^   .{.?stRParamFactorSFZ; ^.}
.}

.{
 ^  ^
.}

  ^ ^ ^
  ^ ^ ^
  ^ ^ ^
  ^

.{
  ^ ^ ^ ^ ^    ^ ^ ^ ^ ^      ^ ^ ^ ^ ^  ^ ^ ^ ^ ^   ^
.}
.{
 ^ ^
.}
 
.endform
