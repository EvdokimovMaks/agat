/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 2001 ��௮��� ���������                         �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����஫����                                               �
 � �����        : 7.1                                                       �
 � �����祭��    : �ࠢ����� ����� �� �����                               �
 � �⢥��⢥��� : ������� �.�. (MEDVED)                                     �
 ���������������������������������������������������������������������������ͼ
*/
.set name = 'AnZatr'
.nameinlist '������� �ଠ'
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

�ࠢ����� �� ����� ^

.{
^ .{.?stParam_RAnZatr; ^.}
.}
�������쭮� ��ண���� �⪫������: ^
�����樥�� �ࠢ�����: ^

.{
����⮢�⥫�:	^
.{
^
^        .{.?stObj_RAnZatr;   ^.}

         .{.?stShap1_RAnZatr; ^.}
         .{.?stShap2_RAnZatr; ^.}
����� ^ .{.?stShap3_RAnZatr; ^.}
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


