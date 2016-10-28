//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 7.12 - Заработная плата
// Вознаграждение 13 зарплата
//******************************************************************************
.set name = 'Vozn13Zarpl'
.hide
.fields
Year  MonthBefore
Tabn FIO SrOklad QuantMonth KoefGrad KoefDown SummaVozn NorthSumma RegionSumma TotalSumma
SummaVoznGroup NorthSummaGroup RegionSummaGroup TotalSummaGroup
SummaVoznAll NorthSummaAll RegionSummaAll TotalSummaAll
Ruk MainBuh User
.endfields
^ ^
.{ VoznGroupCycle checkenter
.{ VoznOneLschCycle checkenter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^ ^ ^ ^
.}
^ ^ ^ ^
^ ^ ^
.endform