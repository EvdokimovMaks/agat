//------------------------------------------------------------------------------
//                                           (c) ��௮��� ���������
// �����        : 8.1
// �����祭��    : ���� � ������ த�⢥������
//------------------------------------------------------------------------------

#doc

#end
.form PsnLinksAge
.hide
.fields

DateBegPeriod
DateEndPeriod
str1

npp
PersonsNRec :comp
FIO
TabN
PsnLinksNRec :comp
RFIO
Rodstvo
BornDate
Date1
Date2
Date3

.endfields

DateBegPeriod                ^
DateEndPeriod                ^
str1                         ^

.{ PsnLinksAge  CheckEnter
npp                          ^
PersonsNRec                  ^
FIO                          ^
TabN                         ^
PsnLinksNRec                 ^
RFIO                         ^
Rodstvo                      ^
BornDate                     ^
Date1                        ^
Date2                        ^
Date3                        ^
.}

.endform
