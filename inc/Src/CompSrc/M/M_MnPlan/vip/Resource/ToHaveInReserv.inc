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

Table STRUCT HaveInReservUp "����� か� 爛Д燿�"
(
  OpDateCl      : date       "���� �甎���. � ��錢��",
  Kol           : double     "����腑痰〓 � ��錢��",
  
  KolFact       : double     "����腑痰〓 礒� �覩���キ���",
  Price         : double     "�キ�",
  Summa         : double     "�祠��",
  PlanRest      : double     "�����珮ガ�� ����腮�",
  cReqDoc       : comp       "�瘠��� �� ��錢��",
  cMc           : comp       "�瘠��� �� ��",
  cOtpEd        : comp       "�瘠��� �� イ┃�聶",
  DocType       : word       ""
)
;

Table STRUCT HaveInReservDown "�閧�� か� 爛Д燿�"
(
  OpDate        : date       "���� 爛Д燿�",
  OpDate_       : date       "���� 爛Д燿� �����讚��",
  
  KolRe         : double     "����腑痰〓 爛Д燿 ",
  KolRe_        : double     "����腑痰〓 爛Д燿 ���.",
  KolFact       : double     "����腑痰〓 礒� �覩���キ���",
  IsChanged     : boolean    "踸Л�� ��え筥��罔�",
  WhichWay      : word       "踸絎�\��痳��",
  
  cReqDoc       : comp       "�瘠��� �� ��錢��",
  cMc           : comp       "�瘠��� �� ��",
  cPlanMove     : comp       "�ぅ�皋筥��皰� ��ム�罔�",
  cPodr         : comp       "��む�Гカキ┘",
  cMol          : comp       "���",  
  cParty        : comp       "��珥��"
)

With Index
(
  HaveInReservDown01 = cReqDoc
)
;
