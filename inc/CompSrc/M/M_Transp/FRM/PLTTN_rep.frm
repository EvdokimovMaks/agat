/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2009 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 8.10                                                      �
 � ��Л�腑�┘    : �砒モ �� �覩���キ�覓 ��｀皙 �� ���                        �
 � �癶モ痰▲��覃 : �礫�≡�┤ ���瓱�                                          �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='PLTTN_rep'
!.hide
.fields
  NaimPred
	BegDate EndDate

	AnalGroup

	KatMC KatSopr DateKatSopr NPL Number Wes Cena

  AnalItg
  ItgNumber ItgWes ItgCena

.endfields

^
^ ^
.{ CheckEnter PLTTNGroupAnalDrv
^
.{ CheckEnter PLTTNShapkaDrv

.}
.{ CheckEnter PLTTNDocAnalDrv
^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter PLTTNTotalAnalDrv
�皰�� ^
^ ^ ^
.}
.}
.endform