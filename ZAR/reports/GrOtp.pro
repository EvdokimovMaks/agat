.form AgatGrOtp
.hide
.fields
  ConfigYear         : word

  PersonNrec         : comp
  PersonTabnmb       : word
  PersonFio          : string
  PersonAppDate      : date
  PersonDepCode      : string
  PersonPostName     : string
  OtpuskDaysOsn      : word
  OtpuskDaysDop      : word
  OtpuskUsedPeriods  : word
  OtpuskUsedRestDays : word

  PlanOtpuskNrec     : comp
  PlanOtpuskStartDate: date
  PlanOtpuskEndDate  : date
  PlanOtpuskDuration : word

.endfields
Год из настроек: ^

Цикл по сотрудникам:
.{ checkenter CyclePerson
  PersonNrec         : ^
  PersonTabnmb       : ^
  PersonFio          : ^
  PersonAppDate      : ^
  PersonDepCode      : ^
  PersonPostName     : ^
  OtpuskDaysOsn      : ^
  OtpuskDaysDop      : ^
  OtpuskUsedPeriods  : ^
  OtpuskUsedRestDays : ^
  Плановые отпуска сотрудника:
.{ checkenter CyclePlanOtpusk
    PlanOtpuskNrec     : ^
    PlanOtpuskStartDate: ^
    PlanOtpuskEndDate  : ^
    PlanOtpuskDuration : ^
    ----------------------------------
.}
  ----------------------------------
.}
.endform
