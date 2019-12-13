//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.8 - Управление персоналом
// Форма Т-6a  Сводный приказ о предоставлении отпуска (2004 г.)
//------------------------------------------------------------------------------

#doc
Форма Т-6a  Сводный приказ о предоставлении отпуска (2004 г.)
#end
.form FormT6A_04
.Hide
.Fields
Организация
ОКПО
TitleDocNrec        : comp
sBarCode
номер_документа
дата_составления
!.{ myPsnCycle6 CheckEnter
ContDocNrec         : comp
PersNrec            : comp
AppointNrec         : comp
FIO
FIO_VP
TabN
подразделение : WideString
должность
OtpTypeOS
OtpTypeDOP
dPeriod1
dPeriod2
iDays
iDays_rab
myType
dat1
dat2
sFoundation
sNote
FIO_Req
FIO_VP_Req
TabN_Req
подразделение_Req
должность_Req
!.{ myDopOtpCycle CheckEnter
FIO_
FIO_VP_
TabN_
подразделение_ : WideString
должность_
OtpType_OS
OtpType_DOP
dPeriod1_
dPeriod2_
iDays_
iDays_rab_
myType_
dat1_
dat2_
sFoundation_
!.}
!.}
ДолжнРук
ФиоРук


.EndFields

Организация               ^
ОКПО                      ^
TitleDocNrec              ^
sBarCode		  ^
номер_документа           ^
дата_составления          ^

.{ myPsnCycle6A_04 CheckEnter
ContDocNrec               ^
PersNrec                  ^
AppointNrec               ^
FIO                       ^
FIO_VP                    ^
TabN                      ^
подразделение : WideString ^
должность                 ^
OtpTypeOS                 ^
OtpTypeDOP                ^
dPeriod1                  ^
dPeriod2                  ^
iDays                     ^
iDays_Rab                 ^
myType                    ^
dat1                      ^
dat2                      ^
sFoundation               ^
sNote                     ^
FIO_Req                   ^
FIO_VP_Req                ^
TabN_Req                  ^
подразделение_Req         ^
должность_Req             ^
.{ myDopOtpCycleA_04 CheckEnter
FIO_                      ^
FIO_VP_                   ^
TabN_                     ^
подразделение_  : WideString ^
должность_                ^
OtpType_OS                ^
OtpType_DOP               ^
dPeriod1_                 ^
dPeriod2_                 ^
iDays_                    ^
iDays_Rab_                ^
myType_                   ^
dat1_                     ^
dat2_                     ^
sFoundation_              ^
.}
.}
ДолжнРук                  ^
ФиоРук                    ^

.endform
