/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2001 ��௮��� ���������                    �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����䥫� �������                                          �
 � �����        : 6.00                                                      �
 � �����祭��    : ����䥩� १�ࢨ஢���� ��                               �
 � �⢥��⢥��� : ����室 ����਩ �������஢��                             �
 � ��ࠬ����     : ��                                                        �
 ���������������������������������������������������������������������������ͼ
*/

Table STRUCT HaveInReservUp "����� ��� १�ࢠ"
(
  OpDateCl      : date       "��� �ᯮ��. � ���",
  Kol           : double     "������⢮ � ���",
  
  KolFact       : double     "������⢮ 㦥 �믮�������",
  Price         : double     "����",
  Summa         : double     "�㬬�",
  PlanRest      : double     "������㥬�� ����稥",
  cReqDoc       : comp       "��뫪� �� ���",
  cMc           : comp       "��뫪� �� ��",
  cOtpEd        : comp       "��뫪� �� �������",
  DocType       : word       ""
)
;

Table STRUCT HaveInReservDown "��⪨ ��� १�ࢠ"
(
  OpDate        : date       "��� १�ࢠ",
  OpDate_       : date       "��� १�ࢠ ��砫쭠�",
  
  KolRe         : double     "������⢮ १�� ",
  KolRe_        : double     "������⢮ १�� ���.",
  KolFact       : double     "������⢮ 㦥 �믮�������",
  IsChanged     : boolean    "�ਧ��� ����䨪�樨",
  WhichWay      : word       "��室\���室",
  
  cReqDoc       : comp       "��뫪� �� ���",
  cMc           : comp       "��뫪� �� ��",
  cPlanMove     : comp       "�����䨪��� ����樨",
  cPodr         : comp       "���ࠧ�������",
  cMol          : comp       "���",  
  cParty        : comp       "�����"
)

With Index
(
  HaveInReservDown01 = cReqDoc
)
;