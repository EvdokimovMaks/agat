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

Table STRUCT Alg67Up "������ ��� १�ࢠ"
(
  OpDateCl      : date       "��� �ᯮ������ ᯥ�䨪�樨",
  Kol           : double     "������⢮ � ᯥ�䨪�樨",

  KolIn         : double     "������⢮ ���饭�� ��室��",
  KolOut        : double     "������⢮ ���饭�� ��室��",
  // Price         : double     "����",
  // Summa         : double     "�㬬�",
  PlanRest      : double     "������㥬�� ����稥",

  wReqDoc       : word       "������ ⨯ ���㬥��",
  noReqDoc      : s20        "����� ���㬥��",
  dReqDoc       : date       "��� ���㬥��",

  cReqDocSp     : comp       "��뫪� �� ᯥ�䨪���",

  cMc           : comp       "��뫪� �� ��",
  cOtpEd        : comp       "��뫪� �� �������",

	NameMc        : string     "��� ���஢�� �� ����� ��"
)
;

Table STRUCT Alg67Middle "�㪨 ��� १�ࢠ"
(
  OpDate        : date       "��� ����樨",
  KolRe         : double     "������⢮ �� ����樨",

  cOwner        : comp       "��뫪� �� ������饣�",

  KolFact       : double     "������⢮ 㦥 �믮�������",
  KolTake       : double     "������⢮ 㦥 ��।��񭭮��",
  KolEnsure     : double     "���ᯥ祭� ���稭�묨",
  WhichWay      : word       "��室\���室",

  cReqDocSp     : comp       "��뫪� �� ᯥ�䨪���",
  cMc           : comp       "��뫪� �� ��",
  cPlanMove     : comp       "�����䨪��� ����樨",
  cPodr         : comp       "���ࠧ�������",
  cMol          : comp       "���",
  cParty        : comp       "�����"
)

With Index
(
  Alg67Middle01 = cReqDocSp + OpDate
)
;

Table STRUCT Alg67Down "���� ��� १�ࢠ"
(

  cRelete       : comp       "��易���� ������",
  Kol           : double     "������⢮ ��� ��室�",
	KolRash				: double     "������⢮ ��� ��室�",
  cTake         : comp       "��뫪� �� ������ ࠧ��᪨",

  wReqDoc       : word       "������ ⨯ ���㬥��",
  noReqDoc      : s20        "����� ���㬥��",
  dReqDoc       : date       "��� ���㬥��",
  WhichWay      : word       "��室\���室",

  // �� ����樨
  OpDate        : date       "��� ����樨",
  KolRe         : double     "������⢮ �� ����樨",
  KolFact       : double     "������⢮ 㦥 �믮�������",
  KolEnsure     : double     "���ᯥ祭� ���稭�묨",

  cReqDocSp     : comp       "��뫪� �� ᯥ�䨪���",
  cMc           : comp       "��뫪� �� ��",
  cPlanMove     : comp       "�����䨪��� ����樨",
  cPlanMove_    : comp       "�����䨪��� ����樨",
  cPodr         : comp       "���ࠧ�������",
  cMol          : comp       "���",
  cParty        : comp       "�����"
)

With Index
(
  Alg67Down01 = cPlanMove
)
;


Table STRUCT Alg67Left "����� ������"
(

  cRelete       : comp       "��易���� ������",

  wReqDoc       : word       "������ ⨯ ���㬥��",
  noReqDoc      : s20        "����� ���㬥��",
  dReqDoc       : date       "��� ���㬥��",
  WhichWay      : word       "��室\���室",

  // �� ����樨
  OpDate        : date       "��� ����樨",
  KolRe         : double     "������⢮ �� ����樨",

  KolFact       : double     "������⢮ 㦥 �믮�������",
  KolTake       : double     "������⢮ 㦥 ��।��񭭮��",
  KolEnsure     : double     "���ᯥ祭� ���稭�묨",

  cReqDocSp     : comp       "��뫪� �� ᯥ�䨪���",
  cMc           : comp       "��뫪� �� ��",
  cPlanMove     : comp       "�����䨪��� ����樨",
  cPodr         : comp       "���ࠧ�������",
  cMol          : comp       "���",
  cParty        : comp       "�����"
)

With Index
(
  Alg67Left01 = cRelete
)
;

Table STRUCT Alg67Right "����� ���ࠢ�"
(

  cRelete       : comp       "��易���� ������",

  wReqDoc       : word       "������ ⨯ ���㬥��",
  noReqDoc      : s20        "����� ���㬥��",
  dReqDoc       : date       "��� ���㬥��",
  WhichWay      : word       "��室\���室",

  // �� ����樨
  OpDate        : date       "��� ����樨",
  KolRe         : double     "������⢮ �� ����樨",

  KolFact       : double     "������⢮ 㦥 �믮�������",
  KolTake       : double     "������⢮ 㦥 ��।��񭭮��",
  KolEnsure     : double     "���ᯥ祭� ���稭�묨",

  cReqDocSp     : comp       "��뫪� �� ᯥ�䨪���",
  cMc           : comp       "��뫪� �� ��",
  cPlanMove     : comp       "�����䨪��� ����樨",
  cPodr         : comp       "���ࠧ�������",
  cMol          : comp       "���",
  cParty        : comp       "�����"
)

With Index
(
  Alg67Right01 = cRelete
)
;