/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2001 ��௮��� ���������                    �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ��ࠢ����� ����ᠬ�                                      �
 � �����        : 7.10                                                      �
 � �����祭��    : ���ᠭ�� ⠡��� �⮡ࠦ���� �痢�                        �
 � �⢥��⢥��� : ����਩ �������஢�� ����室                             �
 � ��ࠬ����     : ����                                                      �
 ���������������������������������������������������������������������������ͼ
*/

Table STRUCT LeftLink "���� ��� ���� �ࠢ�"
(
  NRec          : comp       "������쭠� ��뫪�",
  cDocument     : comp       "��뫪� �� ��ࢨ�� ���",
  Kind          : word       "��� ��\��",
  PrMc          : word       "�ਧ��� ��\��",
  cMcUsl        : comp       "��뫪� ��\��",
  Name          : string[40] "��६����� ��� ������������",
  BarCode       : string[20] "��६����� ��� ��� ����",
  Kol           : double     "������⢮",
  OtpEd         : string[5]  "���᪭�� ������",
  Price         : double     "����",
  Summa         : double     "�⮣���� �㬬� ����樨"
)

With Index
(
  LeftLink01 = NRec (Surrogate, Unique)
)
;

Table STRUCT RightLink "���� ��� ���� �ࠢ�"
(
  NRec          : comp       "������쭠� ��뫪�",
  cDocument     : comp       "��뫪� �� ��ࢨ�� ���",
  cLink         : comp       "��뫪� �� ��뫪�",
  sType         : string[20] "��� ���㬥��",
  dDoc          : date       "��� ���㬥��",
  noDoc         : string[15] "����� ���㬥��",
  Summa         : double     "�㬬� ���㬥��",
  Val           : string[5]  "����� ���㬥��",
  SummaVal      : double     "�㬬� � �����",
  Direction     : word       "���ࠢ����� �裡"
)

With Index
(
  RightLink01 = NRec (Surrogate, Unique)
)
;

Table STRUCT BottomLink "���� ��� ���� �ࠢ�"
(
  NRec          : comp       "������쭠� ��뫪�",
  cDocument     : comp       "��뫪� �� ��ࢨ�� ���",
  cLink         : comp       "��뫪� �� ��뫪�",
  cLeft         : comp       "��뫪� � ������",
  cRight        : comp       "��뫪� � �ࠢ���",
  Kol           : double     "������⢮ ᯥ�䨪�樨",
  OtpEd         : string[5]  "���᪭�� ������",
  Price         : double     "����",
  Summa         : double     "�㬬� ����樨",
  KolNeed       : double     "������⢮ ����室�����",
  KolFact       : double     "������⢮ 䠪��᪨"
)

With Index
(
  BottomLink01 = NRec (Surrogate, Unique),
  BottomLink02 = cLeft,
  BottomLink03 = cRight
)
;
