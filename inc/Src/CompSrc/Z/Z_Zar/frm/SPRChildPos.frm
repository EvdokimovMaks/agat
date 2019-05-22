//******************************************************************************
// Галактика 7.12 - 8.х
// Дударев А.В.
// Справка о зарплате для Республики Беларусь(базовая форма)
//******************************************************************************
.set name='SprChildPos'
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
  SummaPos
  NameGroup1 SumGroup1
  NameGroup2 SumGroup2
  NameGroup3 SumGroup3
  GroupName DayBegin MonthBegin YearBegin DayEnd MonthEnd YearEnd
  FioChild YearBirth
  DayFormir MonthFormir YearFormir
  FioDirektor FioGlBuh
.endfields
.{ SprChildSotrCycle checkenter
^ ^ ^ ^ ^
^ ^
^ ^ ^  ^ ^ ^  ^
.{ SumByVidOplCycle checkenter
^ ^
^ ^
^ ^
.}
.{ SprChildPeriodCycle checkenter
^ ^ ^ ^ ^ ^ ^
.{ SprChildsCycle checkenter
^ ^
.}
.}
^ ^ ^ ^ ^
.}
.endform