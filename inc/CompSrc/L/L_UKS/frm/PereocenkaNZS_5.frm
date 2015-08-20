//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Управление капитальными вложениями и строительством
// Прототип ведомости переоценки неустановленного оборудования
//------------------------------------------------------------------------------

#include Commission.frn

.Set Name = 'PereocenkaNZS_5'
.NameInList 'Прототип ведомости переоценки неустановленного оборудования'
.Hide
.Fields
year
npp
InvNum
NameObj
NameOborud
DateIn
ShifrGrp
PriceIn : double
Koeff : double
PriceOut : double
Primechanie
.EndFields
year = ^
.{
npp = ^
InvNum = ^
NameObj = ^
NameOborud = ^
DateIn = ^
ShifrGrp = ^
PriceIn = ^
Koeff = ^
PriceOut = ^
Primechanie = ^
.}
.Fields
#CommissionFields
.EndFields
#CommissionBody(PereocenkaNZS_5)
.EndForm
