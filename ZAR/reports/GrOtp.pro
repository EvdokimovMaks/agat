.form AgatGrOtp
.hide
.fields
  ConfigYear    : word

  PersonNrec    : comp
  PersonTabnmb  : word
  PersonFio     : string
  PersonAppDate : date
  PersonDepCode : string
  PersonPostName: string
  OstatokOsnOtp : word
  OstatokDopOtp : word

  PlanOtpuskNrec     : comp
  PlanOtpuskStartDate: date
  PlanOtpuskEndDate  : date
  PlanOtpuskDuration : word

.endfields
��� �� ����஥�: ^

���� �� ���㤭����:
.{ checkenter CyclePerson
  PersonNrec    : ^
  PersonTabnmb  : ^
  PersonFio     : ^
  PersonAppDate : ^
  PersonDepCode : ^
  PersonPostName: ^
  OstatokOsnOtp : ^
  OstatokDopOtp : ^
  ������� ���᪠ ���㤭���:
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
