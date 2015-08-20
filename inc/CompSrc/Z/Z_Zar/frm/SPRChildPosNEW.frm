//******************************************************************************
// Галактика 7.12 - 8.х
// Дударев А.В.
// Справка о размере пособия на детей для Республики Беларусь(базовая форма)
//******************************************************************************
.set name='SprChildPosNEW'
.hide
.fields
  DateFormir
  NumberSpr
  PlaceGive
  FioSotr
  Adress
  sChildFio sChildBorn
  DayBeginPeriod MonthBeginPeriod YearBeginPeriod
  DayEndPeriod  MonthEndPeriod YearEndPeriod
  sum1 sum2
  mes Sum
  DayFormir MonthFormir YearFormir
  FioDirektor FioGlBuh
.endfields
.{ SprChildNewSotrCycle checkenter 
^ ^ ^ ^ ^
^ ^
^ ^ ^  ^ ^ ^ 
^ ^
.{ SprChildMes checkenter
^   .{.?SprChildGod; ^ .}
.}
^ ^ ^ ^ ^
.}
.endform
