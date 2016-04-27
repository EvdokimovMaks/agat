//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Форма печати: Иерархический отчет
//------------------------------------------------------------------------------
#doc
Форма печати: Иерархический отчет
#end
.set name='repkat'
.hide
.fields
  coTab nTab
  nrec nam kod levelKod Abbr
.endfields
  ^  ^
.{
 ^ ^ ^ ^ ^
.}
.endform
!
!
!
.linkform 'repkat1' prototype is 'repkat'
.Nameinlist 'Иерархический отчет'
.fields
  CommonFormHeader
  nTab
  kod nam
.endfields
 Р^ Р

   ^

.{
   ^ ^ 
.}
.endform
!
!
!
