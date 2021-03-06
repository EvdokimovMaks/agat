/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2001 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����←キ┘ 爛痺珀���                                      �
 � �ム瓱�        : 7.10                                                      �
 � ��Л�腑�┘    : ｯ����┘ ��゛�� �皰÷�Ε��� 瓣錻ォ                        �
 � �癶モ痰▲��覃 : ���矗┤ ���え��牀※� ���牀絎�                             �
 � �����モ琺     : メ碎                                                      �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

Table STRUCT LeftLink "��錻� か� ���� 甎����"
(
  NRec          : comp       "��┴��讚�� 瘁覊��",
  cDocument     : comp       "�瘠��� �� �ム※膈覃 ぎ�",
  Kind          : word       "�┓ ��\�甄",
  PrMc          : word       "踸Л�� ��\�甄",
  cMcUsl        : comp       "�瘠��� ��\�甄",
  Name          : string[40] "�ムガキ��� か� ��━キ������",
  BarCode       : string[20] "�ムガキ��� か� ��� ����",
  Kol           : double     "����腑痰〓",
  OtpEd         : string[5]  "�皴竅���� イ┃���",
  Price         : double     "�キ�",
  Summa         : double     "�皰����� 痺��� ��Ж罔�"
)

With Index
(
  LeftLink01 = NRec (Surrogate, Unique)
)
;

Table STRUCT RightLink "��錻� か� ���� 甎����"
(
  NRec          : comp       "��┴��讚�� 瘁覊��",
  cDocument     : comp       "�瘠��� �� �ム※膈覃 ぎ�",
  cLink         : comp       "�瘠��� �� 瘁覊��",
  sType         : string[20] "�┓ ぎ�祠キ��",
  dDoc          : date       "���� ぎ�祠キ��",
  noDoc         : string[15] "���ム ぎ�祠キ��",
  Summa         : double     "�祠�� ぎ�祠キ��",
  Val           : string[5]  "���鈞� ぎ�祠キ��",
  SummaVal      : double     "�祠�� � ���鈞�",
  Direction     : word       "�����←キ┘ 瓣錻�"
)

With Index
(
  RightLink01 = NRec (Surrogate, Unique)
)
;

Table STRUCT BottomLink "��錻� か� ���� 甎����"
(
  NRec          : comp       "��┴��讚�� 瘁覊��",
  cDocument     : comp       "�瘠��� �� �ム※膈覃 ぎ�",
  cLink         : comp       "�瘠��� �� 瘁覊��",
  cLeft         : comp       "�瘠��� � �ア���",
  cRight        : comp       "�瘠��� � ���〓��",
  Kol           : double     "����腑痰〓 甎ユ�筥��罔�",
  OtpEd         : string[5]  "�皴竅���� イ┃���",
  Price         : double     "�キ�",
  Summa         : double     "�祠�� ��Ж罔�",
  KolNeed       : double     "����腑痰〓 �ギ≦�え����",
  KolFact       : double     "����腑痰〓 ���皋腑瓷�"
)

With Index
(
  BottomLink01 = NRec (Surrogate, Unique),
  BottomLink02 = cLeft,
  BottomLink03 = cRight
)
;

