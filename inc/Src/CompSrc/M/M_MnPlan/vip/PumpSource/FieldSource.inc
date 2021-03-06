/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2005 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ��珥筌�� ����М�                                          �
 � �ム瓱�        : 7.12                                                      �
 � ��Л�腑�┘    : ��゛��� ぎ痰祚�諷 �痰�膈┴�� ┃筮爼�罔�                   �
 � �癶モ痰▲��覃 : ���牀絎� ���矗┤ ���え��牀※�                             �
 � �����モ琺     : ��                                                        �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

Table STRUCT FieldSource "���� ぎ痰祚�諷 Л�腑�┤"
(
  SourceType    : word       "踸Л�� 痰牀��, ��硅, �����皋�� � �.�.",
  wCode         : word       "�������皀�讚�� ���瘁�筥��罔�",
  isSpec        : word       "踸Л�� 甎ユ�筥��罔�",
  wField        : word       "���� ����",

  sName         : string     "��━キ����┘ ┃筮爼�罔�"
)
With Index
(
  FieldSource01 = SourceType + wCode + isSpec,
  FieldSource02 = SourceType + wCode + wField
)
;

Table STRUCT PumpSourceHd "��瘁│ ぎ�祠キ皰� か� �÷�｀皖�"
(
  wDoc          : word       "�┓ ぎ�祠キ�� か� �÷�｀皖�",
  cDoc          : comp       "�瘠��� �� ぎ�祠キ� か� �÷�｀皖�",
  cObjAcct      : comp       "�瘠��� �� ��゛�聶 瓣錻ォ 瓣錻�",
  wPosTotal     : word       "����腑痰〓 ��Ж罔� �� ぎ�祠キ矣",
  wPosSelected  : word       "����腑痰〓 �襦����諷 ��Ж罔�",

  cVal          : comp       "�瘠��� �� ���鈞� ぎ�祠キ��",
  dVal          : date       "���� �窶�� ���鈞�",

  Name1         : s20        "痰牀��〓� ���� 1",
  Name2         : s20        "痰牀��〓� ���� 2",
  Date1         : date       "���� 皋�� ���� 1",
  Date2         : date       "���� 皋�� ���� 2",
  sName         : s10        "��━キ����┘ ┃筮爼�罔�"
)
With Index
(
  PumpSourceHd01 = wDoc + cDoc
)
;


Table STRUCT PumpSourceSp "��瘁│ 甎ユ�筥��罔� か� �÷�｀皖�"
(
  wDoc          : word       "�┓ ぎ�祠キ�� か� �÷�｀皖�",
  cDoc          : comp       "�瘠��� �� ぎ�祠キ� か� �÷�｀皖�",

  wSpec         : word       "�┓ 甎ユ�筥��罔� か� �÷�｀皖�",
  cSpec         : comp       "�瘠��� �� 甎ユ�筥��罔� か� �÷�｀皖�",
  dSpec         : date       "���� 瓣錻� 甎ユ�筥��罔�",

  PrMcUsl       : word       "踸Л�� ��\�甄磽�",
  cMcUsl        : comp       "�瘠��� �� ��\�甄磽�",
  // cGroup        : comp       "�瘠��� �� �珮��� ��\�甄磽�",
  cOtpEd        : comp       "�瘠��� �� �皴竅��竡 イ┃�聶",
  Kol           : double     "����腑痰〓 � 筮爼�牀�����",
  KolAvail      : double     "���瓱���讚� ぎ痰祚��� ����腑痰〓",
  KolDoc        : double     "����腑痰〓 �� ぎ�祠キ矣",
	KolReserv     : double     "����腑痰〓 ��爛Д燿�牀�������",

  Price         : double     "� 艪� ぅ��碎? �爬絎え矚� ���",
  Summa      		: double     "� 艪� ぅ��碎? �爬絎え矚� � ���",

  ResultwPos    : word       "�┓ 爛��讚��� ぎ�祠キ��",
  ResultcPos    : comp       "��Ж罔� 爛��讚��� ぎ�祠キ��",
	sStatus       : string     "���矣�",

  sName         : string     "��━キ����┘ ┃筮爼�罔�"
)
With Index
(
  PumpSourceSp01 = wDoc + cDoc,
  PumpSourceSp02 = ResultwPos + ResultcPos
)
;

