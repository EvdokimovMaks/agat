/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���矗���┃�                                               �
 � �ム瓱�        : 7.1                                                       �
 � ��Л�腑�┘    : 踸��皰←キ┘ 皰��爿�� �牀ゃ�罔�                          �
 � �癶モ痰▲��覃 : �イ▲れ �.�. (MEDVED)                                     �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name = 'R_PrTovProd'
.nameinlist '��М��� 筮爼�'
.hide
.fields
  ParamUser
  ParamRep
  NmParamRep
  NmPodr
  NmBold1
  NmBold2
  NmBold3
  NmBold4
  AmountBold
  PriceBold
  SummaBold
  Nm1
  Nm2		
  Nm3		
  Nm4		
  Amount		
  Price		
  Summa		
.EndFields		

^   ParamUser
.{
^   ParamRep
^   NmParamRep
.}

.{
^   NmPodr
.{

.if boBoldRes_RPrTov
.{
    NmBold1  NmBold2  NmBold3  NmBold4  AmountBold  PriceBold  SummaBold
    ^        ^        ^        ^        ^           ^          ^
.}
.end

.if boRes_RPrTov
.{
    Nm1      Nm2      Nm3      Nm4      Amount      Price      Summa
    ^        ^        ^        ^        ^           ^          ^
.}
.end
						
.}

.}

.endform						
