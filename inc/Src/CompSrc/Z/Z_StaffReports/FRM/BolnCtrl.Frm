/*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �      蹍オ�    : ���������  (�) 2000                                �
  �      ��痰ガ�   : ����←キ┘ �ム甌�����                              �
  �      �ム瓱�    : 5.8, 7.1                                           �
  �      ��о�｀���: ��皰��※� �.�.     19/04/2002                      �
  �      ��Л�腑�┘: �砒モ: ���矗��� �� ��｀�ア�ガ�痰� �� �ム┏�        �
  �      �Кキキ�� :                                                    �
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

#doc
�砒モ: ���矗��� �� ��｀�ア�ガ�痰� �� �ム┏�
#end
.form BolnCtrl
.hide
.fields
OrgName

DateBegPeriod
DateEndPeriod

NameStaj

isFlag
NumPP
FirstNameIO
FIO
TabNum
Podr
NumList
MedicalOffice
DateBeg
DateEnd
countDay
countCalendarDay
countHour
countDayPay
countDayNoPay
StajCont
VidOpl
VidPos

countAllDay
countAllCalendarDay
countZabol
countAllHour

isNoRunDay

.endfields

OrgName                      ^
DateBegPeriod                ^
DateEndPeriod                ^
NameStaj                     ^

.{ BolnCtrl1  CheckEnter
isFlag                       ^
NumPP                        ^
FirstNameIO                  ^
FIO                          ^
TabNum                       ^
Podr                         ^
NumList                      ^
MedicalOffice                ^
DateBeg                      ^
DateEnd                      ^
countDay                     ^
countCalendarDay             ^
countHour                    ^
countDayPay                  ^
countDayNoPay                ^
StajCont                     ^
VidOpl                       ^
VidPos                       ^
.}

countAllDay                  ^
countAllCalendarDay          ^
countZabol                   ^
countAllHour                 ^

isNoRunDay                   ^

.endform

.linkform "BolnCtrl_1" prototype is BolnCtrl
.NameInList '���矗��� �� ��｀�ア�ガ�痰� �� �ム┏�'
.group 'standart'
.Var
str_1_1 : string
str_1_2 : string
str_2_1 : string
str_2_2 : string
str_3_1 : string
str_3_2 : string
str_4_1 : string
str_4_2 : string
str_5_1 : string
str_5_2 : string
.EndVar
.fields
str_1_1
str_1_2
str_2_1
str_2_2
str_3_1
str_3_2
str_4_1
str_4_2

OrgName

DateBegPeriod
DateEndPeriod

str_1_1
str_1_2
str_2_1
NameStaj
str_2_2
str_3_1
str_3_2
str_4_1
str_4_2

isFlag
NumPP
FIO
TabNum
Podr
NumList
MedicalOffice
DateBeg
DateEnd
countDay
countCalendarDay
StajCont
VidOpl
VidPos

str_5_1
str_5_2

DateBegPeriod
DateEndPeriod

countAllDay
countAllCalendarDay
countZabol

isNoRunDay

.endfields
.Begin
str_1_1 := '賃陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳賃陳陳陳賃';
str_2_1 := ' �  N   �                   ��矗磴�┴                   � ��．�讚覃  �                ��む�Гカキ┘             �    ���ム   � ��Б��┘ �ョァ���� 竍爛Δキ��   �    ����    �    ����    ���｀�. ����キ�.�';
str_3_1 := ' �  �/� �                                               �   ���ム    �                                          �    ��痰��  �                                 �   ������   �  ��������� � きォ  � きォ  �';
str_4_1 := '津陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳津陳陳陳津';
str_1_2 := '陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳�';
str_2_2 := '�     �┐ ��甌；�      �   �������皀�讚襯';
str_3_2 := '                             �                      �      瓣イキ��';
str_4_2 := '陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳�';
str_5_1 := '珍陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍';
str_5_2 := '陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳珍陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳�';
End.
.[H skip
^^
^^
^^
^^
.]H

�爍��├�罔�         � ^

                              ���矗��� �� ��｀�ア�ガ�痰�
                              � @@@@@@@@@@ �� @@@@@@@@@@

^^
^ @@@@@@@@@@@@@@@@@@@@@@@@@@@ ^
^^
^^
.{ BolnCtrl1  CheckEnter
&�&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � &&&&&&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@ � @@@@@@@@@@ � &&&&& � &&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@
.}
^^

                                                                                                   �瓮�� きォ �� ｀�ェ�� � @@@@@@@@@@ �� @@@@@@@@@@
                                                                                                                                    ��｀腮�         : ^
                                                                                                                                    ���キ��爿諷     : ^
                                                                                                   ��竍�ア ��｀�ア�ガ�痰�                           : ^

                                                                                                   ^

.endform

.linkform "BolnCtrl_2" prototype is BolnCtrl
.NameInList '���讚�膈襯, �����痰跪 ����腮��ガ襯'
.group 'BolnPay'
.Var
str_1_1 : string
str_1_2 : string
str_2_1 : string
str_2_2 : string
str_3_1 : string
str_3_2 : string
str_4_1 : string
str_4_2 : string
str_5_1 : string
str_5_2 : string
.EndVar
.fields
str_1_1
str_1_2
str_2_1
str_2_2
str_3_1
str_3_2
str_4_1
str_4_2

OrgName

DateBegPeriod
DateEndPeriod


str_1_1
str_1_2
str_2_1
NameStaj
str_2_2
str_3_1
str_3_2
str_4_1
str_4_2

isFlag
NumPP
FIO
TabNum
Podr
NumList
MedicalOffice
DateBeg
DateEnd
countDay
countCalendarDay
StajCont
VidOpl
VidPos

str_5_1
str_5_2

DateBegPeriod
DateEndPeriod

countAllDay
countAllCalendarDay
countZabol

isNoRunDay

.endfields
.Begin
str_1_1 := '賃陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳賃陳陳陳賃';
str_2_1 := ' �  N   �                   ��矗磴�┴                   � ��．�讚覃  �                ��む�Гカキ┘             �    ���ム   � ��Б��┘ �ョァ���� 竍爛Δキ��   �    ����    �    ����    ���｀�. ����キ�.�';
str_3_1 := ' �  �/� �                                               �   ���ム    �                                          �    ��痰��  �                                 �   ������   �  ��������� � きォ  � きォ  �';
str_4_1 := '津陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳津陳陳陳津';
str_1_2 := '陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳�';
str_2_2 := '�     �┐ ��甌；�      �   �������皀�讚襯';
str_3_2 := '                             �                      �      瓣イキ��';
str_4_2 := '陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳�';
str_5_1 := '珍陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍';
str_5_2 := '陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳珍陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳�';
End.
.[H skip
^^
^^
^^
^^
.]H

�爍��├�罔�         � ^

                          ���讚�膈襯, �����痰跪 ����腮��ガ襯
                              � @@@@@@@@@@ �� @@@@@@@@@@

^^
^ @@@@@@@@@@@@@@@@@@@@@@@@@@@ ^
^^
^^
.{ BolnCtrl1  CheckEnter
&�&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � &&&&&&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@ � @@@@@@@@@@ � &&&&& � &&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@
.}
^^

                                                                                                   �瓮�� きォ �� ｀�ェ�� � @@@@@@@@@@ �� @@@@@@@@@@
                                                                                                                                    ��｀腮�         : ^
                                                                                                                                    ���キ��爿諷     : ^
                                                                                                   ��竍�ア ��｀�ア�ガ�痰�                           : ^

                                                                                                   ^

.endform

.linkform "BolnCtrl_3" prototype is BolnCtrl
.NameInList '���讚�膈襯, ����腮��ガ襯 ��痰�膈� � �ギ���腮��ガ襯'
.group 'BolnNoPay'
.Var
str_1_1 : string
str_1_2 : string
str_2_1 : string
str_2_2 : string
str_3_1 : string
str_3_2 : string
str_4_1 : string
str_4_2 : string
str_5_1 : string
str_5_2 : string
.EndVar
.fields
str_1_1
str_1_2
str_2_1
str_2_2
str_3_1
str_3_2
str_4_1
str_4_2

OrgName

DateBegPeriod
DateEndPeriod


str_1_1
str_1_2
str_2_1
str_2_2
str_3_1
str_3_2
str_4_1
str_4_2

isFlag
NumPP
FIO
TabNum
Podr
NumList
MedicalOffice
DateBeg
DateEnd
countDay
countCalendarDay
countDayPay
countDayNoPay

str_5_1
str_5_2


.endfields
.Begin
str_1_1 := '賃陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�';
str_2_1 := ' �  N   �                   ��矗磴�┴                   � ��．�讚覃  �                ��む�Гカキ┘             �    ���ム   � ��Б��┘ �ョァ���� 竍爛Δキ��   ';
str_3_1 := ' �  �/� �                                               �   ���ム    �                                          �    ��痰��  �                                 ';
str_4_1 := '津陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�';
str_1_2 := '堕陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳堕陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳';
str_2_2 := '�    ����    �    ����    ���｀�. ����キ�.���｀�. きォ � ��｀�. きォ';
str_3_2 := '�   ������   �  ��������� � きォ  � きォ  � (����腮�.) �(�� ����腮�.)';
str_4_2 := '田陳陳陳陳陳津陳陳陳陳陳陳田陳陳陳田陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳';
str_5_1 := '珍陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�';
str_5_2 := '祖陳陳陳陳陳珍陳陳陳陳陳陳祖陳陳陳祖陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳';
End.
.[H skip
^^
^^
^^
^^
.]H

�爍��├�罔�         � ^

                    ���讚�膈襯, ����腮��ガ襯 ��痰�膈� � �ギ���腮��ガ襯
                              � @@@@@@@@@@ �� @@@@@@@@@@

^^
^^
^^
^^
.{ BolnCtrl1  CheckEnter
&�&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � &&&&&&&&&& � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@ � @@@@@@@@@@ � &&&&& � &&&&& �   &&&&&    �     &&&&&
.}
^^

.endform