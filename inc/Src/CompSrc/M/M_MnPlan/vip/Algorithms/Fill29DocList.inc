/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 2001 ��牆���罔� ���������                         �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : 祚��←キ┘ 爛痺珀���                                      �
 � �ム瓱�        : 7.10                                                      �
 � ��Л�腑�┘    : ��゛��� ������錺矚� か� 29 ����爬皙� ���キ� ����М�       �
 � �癶モ痰▲��覃 : ���牀絎� ���矗┤ ���え��牀※�                             �
 � �����モ琺     : ��                                                        �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

Table STRUCT ClaimList "���甌� ���キ錺�諷 ��Ж罔�"
(
  picked        : word,
  PrMc          : word,
  cMcUsl        : comp,
  cOtpEd        : comp,
  Kol           : double,
  Kol_From      : double,
  Kol_To        : double,
  cClaimFrom    : comp,
  cClaimTo      : comp
)
With Index
(
  ClaimList01 = PrMc + cMcUsl,
  ClaimList02 = cClaimFrom
)
;
