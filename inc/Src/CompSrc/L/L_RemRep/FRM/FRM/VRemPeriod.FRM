/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) ��牆���罔� ���������                              �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ��ゃ�� ����                                               �
 � �ム瓱�        : 8.1                                                       �
 � ��Л�腑�┘    : �覩���キ┘ 爛���皰� �� �ム┏�                             �
 � �癶モ痰▲��覃 :                                                           �
 � �Кキキ��     :                                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#doc
��爼� "��矗�硅 �� 爛����"
#end
.set name = 'FVRemPeriod'
!.group '�����皋腑瓷┤ �砒モ �� ��矗����'
.nameinlist '��М��� 筮爼�'
.hide
.fields

UserDeskRepNRec ResDate1 ResDate2

KatSoprNRec vwVidSopr  dSopr  Number   

vcObjRem    vsObjRem

vsKatPodrIR

vcKatPlace  vsKatPlace

vcVidRem    vsVidRem

vcSposRem   vsSposRem

vcIspRem    vsIspRem

vcPodr      vsPodr

vcSpSoprNRec vdKol PrMC NameMcYsl vdStoimt 

vcSpSoprNRecSp vdKolSp PrMCSp NameMcYslSp vdStoimtSp

.endfields

UserDeskRepNRec ^ ResDate1 ^ ResDate2 ^

.{

KatSoprNRec ^ vwVidSopr  ^ dSopr ^ Number ^
            
vsKatPodrIR ^

vcObjRem    ^ vsObjRem   ^
            
vcKatPlace  ^ vsKatPlace ^
            
vcVidRem    ^ vsVidRem   ^ 
            
vcSposRem   ^ vsSposRem  ^ 
            
vcIspRem    ^ vsIspRem   ^
            
vcPodr      ^ vsPodr     ^ 

vcSpSoprNRec ^ vdKol ^ PrMC ^ NameMcYsl ^ vdStoimt ^

.{ CheckEnter PrintSp
   vcSpSoprNRecSp ^ vdKolSp ^ PrMCSp ^ NameMcYslSp ^ vdStoimtSp ^
.}

.}

.endform