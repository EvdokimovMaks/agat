#doc
  форма отчета по изменению участников Фонда
#end
.form NewFund
.hide
.fields
sFundname
katOrgName
BDate
EDate
Department
npp
FIO
tabn
number
AppDate
boPay
.endfields
 ^ ^ ^ ^
.{NewFund1ICycle CheckEnter
.if NF_levelCheck
 ^
.end
.{NewFund2ICycle  CheckEnter
 ^ ^ ^ ^ ^ ^
.}
.}
.endform

