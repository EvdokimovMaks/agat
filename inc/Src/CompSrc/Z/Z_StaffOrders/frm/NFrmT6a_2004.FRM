//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.8 - ��ࠢ����� ���ᮭ����
// ��ଠ �-6a  ������ �ਪ�� � �।��⠢����� ���᪠ (2004 �.)
//------------------------------------------------------------------------------

#doc
��ଠ �-6a  ������ �ਪ�� � �।��⠢����� ���᪠ (2004 �.)
#end
.form FormT6A_04
.Hide
.Fields
�࣠������
����
TitleDocNrec        : comp
sBarCode
�����_���㬥��
���_��⠢�����
!.{ myPsnCycle6 CheckEnter
ContDocNrec         : comp
PersNrec            : comp
AppointNrec         : comp
FIO
FIO_VP
TabN
���ࠧ������� : String
���������
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
���ࠧ�������_Req
���������_Req
!.{ myDopOtpCycle CheckEnter
FIO_
FIO_VP_
TabN_
���ࠧ�������_ : String
���������_
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
�������
�����


.EndFields

�࣠������               ^
����                      ^
TitleDocNrec              ^
sBarCode		  ^
�����_���㬥��           ^
���_��⠢�����          ^

.{ myPsnCycle6A_04 CheckEnter
ContDocNrec               ^
PersNrec                  ^
AppointNrec               ^
FIO                       ^
FIO_VP                    ^
TabN                      ^
���ࠧ������� : String    ^
���������                 ^
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
���ࠧ�������_Req         ^
���������_Req             ^
.{ myDopOtpCycleA_04 CheckEnter
FIO_                      ^
FIO_VP_                   ^
TabN_                     ^
���ࠧ�������_  : String  ^
���������_                ^
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
�������                  ^
�����                    ^

.endform
