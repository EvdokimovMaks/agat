/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2005 ��௮��� ���������                    �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����䥫� �������                                          �
 � �����        : 7.12                                                      �
 � �����祭��    : ������ ����㯭�� ���筨��� ���ଠ樨                   �
 � �⢥��⢥��� : ����室 ����਩ �������஢��                             �
 � ��ࠬ����     : ��                                                        �
 ���������������������������������������������������������������������������ͼ
*/

Table STRUCT FieldSource "���� ����㯭�� ���祭��"
(
  SourceType    : word       "�ਧ��� ��ப�, ����, �����⨪� � �.�.",
  wCode         : word       "�������⥫쭠� �����䨪���",
  isSpec        : word       "�ਧ��� ᯥ�䨪�樨",
  wField        : word       "���� ����",

  sName         : string     "������������ ���ଠ樨"
)
With Index
(
  FieldSource01 = SourceType + wCode + isSpec,
  FieldSource02 = SourceType + wCode + wField
)
;

Table STRUCT PumpSourceHd "���ᨢ ���㬥�⮢ ��� ��ࠡ�⪨"
(
  wDoc          : word       "��� ���㬥�� ��� ��ࠡ�⪨",
  cDoc          : comp       "��뫪� �� ���㬥�� ��� ��ࠡ�⪨",
  cObjAcct      : comp       "��뫪� �� ⠡���� �痢� ���",
  wPosTotal     : word       "������⢮ ����権 �� ���㬥���",
  wPosSelected  : word       "������⢮ ��࠭��� ����権",

  cVal          : comp       "��뫪� �� ������ ���㬥��",
  dVal          : date       "��� ���� ������",

  Name1         : s20        "��ப���� ���� 1",
  Name2         : s20        "��ப���� ���� 2",
  Date1         : date       "���� ⨯� ��� 1",
  Date2         : date       "���� ⨯� ��� 2",
  sName         : s10        "������������ ���ଠ樨"
)
With Index
(
  PumpSourceHd01 = wDoc + cDoc
)
;


Table STRUCT PumpSourceSp "���ᨢ ᯥ�䨪�権 ��� ��ࠡ�⪨"
(
  wDoc          : word       "��� ���㬥�� ��� ��ࠡ�⪨",
  cDoc          : comp       "��뫪� �� ���㬥�� ��� ��ࠡ�⪨",

  wSpec         : word       "��� ᯥ�䨪�樨 ��� ��ࠡ�⪨",
  cSpec         : comp       "��뫪� �� ᯥ�䨪��� ��� ��ࠡ�⪨",
  dSpec         : date       "��� �裡 ᯥ�䨪�権",

  PrMcUsl       : word       "�ਧ��� ��\��㣠",
  cMcUsl        : comp       "��뫪� �� ��\����",
  // cGroup        : comp       "��뫪� �� ��㯯� ��\��㣨",
  cOtpEd        : comp       "��뫪� �� ���᪭�� �������",
  Kol           : double     "������⢮ � �ନ஢����",
  KolAvail      : double     "���ᨬ��쭮 ����㯭�� ������⢮",
  KolDoc        : double     "������⢮ �� ���㬥���",
	KolReserv     : double     "������⢮ ��१�ࢨ஢������",

  Price         : double     "� �� ������? ��室���� ⠪",
  Summa      		: double     "� �� ������? ��室���� � ⠪",

  ResultwPos    : word       "��� ॠ�쭮�� ���㬥��",
  ResultcPos    : comp       "������ ॠ�쭮�� ���㬥��",
	sStatus       : string     "�����",

  sName         : string     "������������ ���ଠ樨"
)
With Index
(
  PumpSourceSp01 = wDoc + cDoc,
  PumpSourceSp02 = ResultwPos + ResultcPos
)
;
