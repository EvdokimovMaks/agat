/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                                                  (c) ��牆���罔� ���������   �
 � �����皋�� 8.10, ����←キ┘ 矗��甎�珥��                                      �
 � ��М��� 筮爼� か� �ョ�皋 �━�皚�� ��珥�腦� �� ���竍キ┘ ��� (�─�ヤ皀�牀〓�)�
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='LimZapReceptGSM'
.hide
.fields
! LimZapH.nRec
  LimZapH_nRec
! ��━キ����┘ �爍��├�罔�
  NameOrg
! ��━キ����┘ �≒�������
	CarColon
! ���� 筮爼�牀����� �砒モ�
	dCreateRep
! ��━キ����┘ 瓷����
	WareHouse
!	イ┃��� ├�ムキ��
	Unit
! �癶モ瓣キ�襯 ����
	PersonInChange
! LimZapL.nRec
  LimZapL_nRec
! ��爲� 皰��│�
	MarkFuel
! ����腑痰〓 ��矗��
	AmountLiter
! ����襯 ��
 	MarkaTC RegNum
! ��� 〓え皀��
	FIODriver
! ����襯 �� ����瘁┬, ���� �襪�腮
  ComissPost ComissFIO dOfIssue
! ����襯 �� ����瘁┬, �襪�艫 ��оヨ┼, ���� �襪�腮
  ComissPost1 ComissFIO1 dOfIssue1
! ���ム ▲ぎ��痰�
	NumReport
! ���� �襪�腮 ���
	dOfIssueLZV
.endfields
.{

.{ CheckEnter LimZapH
^
^ 
^ ^
^ ^
.{ CheckEnter LimZapLFIOPers
^
.}

.{ CheckEnter LimZapL
^ ^ ^ ^ ^ ^
.{ CheckEnter LimZapLCommiss
^ ^ ^
.}
^ ^ ^
.}
^ ^
.if LimZapReceptBrkPage

.end
.}

.}
.endform
