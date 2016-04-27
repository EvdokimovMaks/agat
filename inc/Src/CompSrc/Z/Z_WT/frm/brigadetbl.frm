#doc
Печать табеля по бригадам
#end
.form brigadetbl
.hide
.fields
  wtMonth wtYear
.endfields
^ ^
.{ brigdata checkenter
.fields
  brignrec nbrig nmbrig wrkinbrig
.endfields
^ ^ ^ ^
.{ wrkdata checkenter
.fields
  wtNpp wtFIO wtTabN lschetnrec lstabnrec perexodnrec wtPost wtSalary wtMpf
  wtD01 hD01 wtD02 hD02 wtD03 hD03 wtD04 hD04 wtD05 hD05 wtD06 hD06 wtD07 hD07 wtD08 hD08 wtD09 hD09 wtD10 hD10
  wtD11 hD11 wtD12 hD12 wtD13 hD13 wtD14 hD14 wtD15 hD15 wtD16 hD16 wtD17 hD17 wtD18 hD18 wtD19 hD19 wtD20 hD20
  wtD21 hD21 wtD22 hD22 wtD23 hD23 wtD24 hD24 wtD25 hD25 wtD26 hD26 wtD27 hD27 wtD28 hD28 wtD29 hD29 wtD30 hD30 wtD31 hD31
  WorkingDays WorkingHours PlannedWorkingDays PlannedWorkingHours
  EveningDays EveningHours PlannedEveningDays PlannedEveningHours
  NightDays NightHours PlannedNightDays PlannedNightHours
  WorkingHolidays HolidayHours PlannedWorkingHolidays PlannedHolidayHours
  WorkingWeekends WeekendHours PlannedWorkingWeekends PlannedWeekendHours
  OverworkDays OverworkHours PlannedOverworkDays PlannedOverworkHours
.endfields
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
.}  // wrkdata
.fields
  WorkingDaysSum WorkingHoursSum PlannedWorkingDaysSum PlannedWorkingHoursSum
  EveningDaysSum EveningHoursSum PlannedEveningDaysSum PlannedEveningHoursSum
  NightDaysSum NightHoursSum PlannedNightDaysSum PlannedNightHoursSum
  WorkingHolidaysSum HolidayHoursSum PlannedWorkingHolidaysSum PlannedHolidayHoursSum
  WorkingWeekendsSum WeekendHoursSum PlannedWorkingWeekendsSum PlannedWeekendHoursSum
  OverworkDaysSum OverworkHoursSum PlannedOverworkDaysSum PlannedOverworkHoursSum
.endfields
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
.}  // brigdata
.fields
  WorkingDaysT WorkingHoursT PlannedWorkingDaysT PlannedWorkingHoursT
  EveningDaysT EveningHoursT PlannedEveningDaysT PlannedEveningHoursT
  NightDaysT NightHoursT PlannedNightDaysT PlannedNightHoursT
  WorkingHolidaysT HolidayHoursT PlannedWorkingHolidaysT PlannedHolidayHoursT
  WorkingWeekendsT WeekendHoursT PlannedWorkingWeekendsT PlannedWeekendHoursT
  OverworkDaysT OverworkHoursT PlannedOverworkDaysT PlannedOverworkHoursT
.endfields
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
.endform
