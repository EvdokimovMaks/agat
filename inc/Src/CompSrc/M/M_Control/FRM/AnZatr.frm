/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���矗���┃�                                               �
 � �ム瓱�        : 7.1                                                       �
 � ��Л�腑�┘    : ���↓キ┘ ��矗�� �� 痰�碎鍖                               �
 � �癶モ痰▲��覃 : �イ▲れ �.�. (MEDVED)                                     �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name = 'AnZatr'
.nameinlist '��М��� 筮爼�'
.hide
.fields
   ParamUser
   TitleRep
   ParamRep
   NmParamRep
   MinOtkl
   KoefCom
   NamePodr
   NameAnObj
   NameAmount
   AmountObj
   NmShap1
   NmShap2
   NameColumn
   NmShap3

   NameZatrLevel1or2
   SummaLevel1or2

   NameZatrLevel3
   SummaLevel3

   NameZatrLevel4
   SummaLevel4

   NameZatrLevel0
   SummaLevel0
.EndFields
^

���↓キ┘ �� 痰�碎鍖 ^

.{
^ .{.?stParam_RAnZatr; ^.}
.}
�┃━��讚�� ��牀��〓� �皖���キ┘: ^
��辟筥罔キ� 痼�↓キ��: ^

.{
�В�皰※皀��:	^
.{
^
^        .{.?stObj_RAnZatr;   ^.}

         .{.?stShap1_RAnZatr; ^.}
         .{.?stShap2_RAnZatr; ^.}
���碎� ^ .{.?stShap3_RAnZatr; ^.}
.{
.case
.when IsSum_RAnZatr1Or2LevelIer
^	 .{.?stSum_RAnZatrLevel1or2; ^.}
.when IsSum_RAnZatr3LevelIer
^	 .{.?stSum_RAnZatrLevel3; ^.}
.when IsSum_RAnZatr4LevelIer
^	 .{.?stSum_RAnZatrLevel4; ^.}
.else
^	 .{.?stSum_RAnZatrLevel0; ^.}
.end
.}
.}

.}
.endform


