/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2001 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ��珥筌�� ����М�                                          �
 � �ム瓱�        : 6.00                                                      �
 � ��Л�腑�┘    : ��皀珞ォ� 爛Д燿�牀����� ��                               �
 � �癶モ痰▲��覃 : ���牀絎� ���矗┤ ���え��牀※�                             �
 � �����モ琺     : ��                                                        �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

Table STRUCT Alg67Up "������ か� 爛Д燿�"
(
  OpDateCl      : date       "���� �甎���キ�� 甎ユ�筥��罔�",
  Kol           : double     "����腑痰〓 � 甎ユ�筥��罔�",

  KolIn         : double     "����腑痰〓 �皴竕キ諷 �爬絎ぎ�",
  KolOut        : double     "����腑痰〓 �皴竕キ諷 ��痳�ぎ�",
  // Price         : double     "�キ�",
  // Summa         : double     "�祠��",
  PlanRest      : double     "�����珮ガ�� ����腮�",

  wReqDoc       : word       "※え�� 皋� ぎ�祠キ��",
  noReqDoc      : s20        "���ム ぎ�祠キ��",
  dReqDoc       : date       "���� ぎ�祠キ��",

  cReqDocSp     : comp       "�瘠��� �� 甎ユ�筥��罔�",

  cMc           : comp       "�瘠��� �� ��",
  cOtpEd        : comp       "�瘠��� �� イ┃�聶",

	NameMc        : string     "��� 甌珥�牀→� �� ━キ� ��"
)
;

Table STRUCT Alg67Middle "�礫� か� 爛Д燿�"
(
  OpDate        : date       "���� ��ム�罔�",
  KolRe         : double     "����腑痰〓 �� ��ム�罔�",

  cOwner        : comp       "�瘠��� �� �謌メ皰濶ィ�",

  KolFact       : double     "����腑痰〓 礒� �覩���キ���",
  KolTake       : double     "����腑痰〓 礒� ��甎爛ぅ�餃����",
  KolEnsure     : double     "｡メ�ョキ� ��ょ┃餃�覓�",
  WhichWay      : word       "踸絎�\��痳��",

  cReqDocSp     : comp       "�瘠��� �� 甎ユ�筥��罔�",
  cMc           : comp       "�瘠��� �� ��",
  cPlanMove     : comp       "�ぅ�皋筥��皰� ��ム�罔�",
  cPodr         : comp       "��む�Гカキ┘",
  cMol          : comp       "���",
  cParty        : comp       "��珥��"
)

With Index
(
  Alg67Middle01 = cReqDocSp + OpDate
)
;

Table STRUCT Alg67Down "���� か� 爛Д燿�"
(

  cRelete       : comp       "��錻����� ��ム�罔�",
  Kol           : double     "����腑痰〓 か� �爬絎��",
	KolRash				: double     "����腑痰〓 か� ��痳���",
  cTake         : comp       "�瘠��� �� ��ム�罔� ��Л�瓷�",

  wReqDoc       : word       "※え�� 皋� ぎ�祠キ��",
  noReqDoc      : s20        "���ム ぎ�祠キ��",
  dReqDoc       : date       "���� ぎ�祠キ��",
  WhichWay      : word       "踸絎�\��痳��",

  // ├ ��ム�罔�
  OpDate        : date       "���� ��ム�罔�",
  KolRe         : double     "����腑痰〓 �� ��ム�罔�",
  KolFact       : double     "����腑痰〓 礒� �覩���キ���",
  KolEnsure     : double     "｡メ�ョキ� ��ょ┃餃�覓�",

  cReqDocSp     : comp       "�瘠��� �� 甎ユ�筥��罔�",
  cMc           : comp       "�瘠��� �� ��",
  cPlanMove     : comp       "�ぅ�皋筥��皰� ��ム�罔�",
  cPlanMove_    : comp       "�ぅ�皋筥��皰� ��ム�罔�",
  cPodr         : comp       "��む�Гカキ┘",
  cMol          : comp       "���",
  cParty        : comp       "��珥��"
)

With Index
(
  Alg67Down01 = cPlanMove
)
;


Table STRUCT Alg67Left "�ェム� ���ア�"
(

  cRelete       : comp       "��錻����� ��ム�罔�",

  wReqDoc       : word       "※え�� 皋� ぎ�祠キ��",
  noReqDoc      : s20        "���ム ぎ�祠キ��",
  dReqDoc       : date       "���� ぎ�祠キ��",
  WhichWay      : word       "踸絎�\��痳��",

  // ├ ��ム�罔�
  OpDate        : date       "���� ��ム�罔�",
  KolRe         : double     "����腑痰〓 �� ��ム�罔�",

  KolFact       : double     "����腑痰〓 礒� �覩���キ���",
  KolTake       : double     "����腑痰〓 礒� ��甎爛ぅ�餃����",
  KolEnsure     : double     "｡メ�ョキ� ��ょ┃餃�覓�",

  cReqDocSp     : comp       "�瘠��� �� 甎ユ�筥��罔�",
  cMc           : comp       "�瘠��� �� ��",
  cPlanMove     : comp       "�ぅ�皋筥��皰� ��ム�罔�",
  cPodr         : comp       "��む�Гカキ┘",
  cMol          : comp       "���",
  cParty        : comp       "��珥��"
)

With Index
(
  Alg67Left01 = cRelete
)
;

Table STRUCT Alg67Right "�ェム� �����〓"
(

  cRelete       : comp       "��錻����� ��ム�罔�",

  wReqDoc       : word       "※え�� 皋� ぎ�祠キ��",
  noReqDoc      : s20        "���ム ぎ�祠キ��",
  dReqDoc       : date       "���� ぎ�祠キ��",
  WhichWay      : word       "踸絎�\��痳��",

  // ├ ��ム�罔�
  OpDate        : date       "���� ��ム�罔�",
  KolRe         : double     "����腑痰〓 �� ��ム�罔�",

  KolFact       : double     "����腑痰〓 礒� �覩���キ���",
  KolTake       : double     "����腑痰〓 礒� ��甎爛ぅ�餃����",
  KolEnsure     : double     "｡メ�ョキ� ��ょ┃餃�覓�",

  cReqDocSp     : comp       "�瘠��� �� 甎ユ�筥��罔�",
  cMc           : comp       "�瘠��� �� ��",
  cPlanMove     : comp       "�ぅ�皋筥��皰� ��ム�罔�",
  cPodr         : comp       "��む�Гカキ┘",
  cMol          : comp       "���",
  cParty        : comp       "��珥��"
)

With Index
(
  Alg67Right01 = cRelete
)
;
