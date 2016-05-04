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

#ifdef ComponentVersion
#Component "M_Scripts"
#end

Table STRUCT BlackField "������⮢ ����� ⠡����"
(
  Name          : s50        "������������",
  id            : word       "�����䨪��� ��६�����",
  idTab         : word       "�����䨪��� ⠡����",
  Number        : tNRec      "����� �� ���浪�",
  bNumber       : tNRec      "��� ��ॢ�",
  wType         : word       "��� ��६�����",
  wType_        : word       "���⨯ ��६�����",
  wMode         : word       "��� ����㯠 � ��६�����",
  wOrder        : word       "��६����� ��� ��࠭���� ���浪�"
)

With Index
(
  BlackField01 = Number (Unique, Surrogate, Journal),
  BlackField02 = idTab + bNumber + wOrder,
  BlackField03 = idTab + wType,
  BlackField04 = idTab + id
)
;

Table STRUCT BlackBound "������⮢ ��࠭�祭�� ⠡����"
(
  Name          : s50        "������������",
  id            : word       "�����䨪��� ��࠭�祭��",
  idTab         : word       "�����䨪��� ⠡����",
  Number        : tNRec      "����� �� ���浪�",
  bNumber       : tNRec      "��� ��ॢ�",
  wType         : word       "��� १����",
  Param         : word       "������⢮ ��ࠬ��஢"
)
With Index
(
  BlackBound01 = Number (Unique, Surrogate, Journal),
  BlackBound02 = idTab + bNumber,
  BlackBound03 = idTab + id
)
;


Table STRUCT BlackBoundField "������⮢ ����� ��࠭�祭��"
(
  Name          : s50        "������������",
  id            : word       "�����䨪��� ��६�����",
  idBou         : word       "�����䨪��� ��࠭�祭��",
  idTab         : word       "�����䨪��� ⠡����",
  wType         : word       "��� ��६�����",
  wOrder        : word       "��६����� ��� ��࠭���� ���浪�"
)

With Index
(
  BlackBoundField01 = idTab + idBou + wOrder,
  BlackBoundField02 = id
)
;

Table STRUCT BlackConst "����⠭�� ���㬥��"
(
  Name          : s50        "������������",
  id            : word       "����� ��६�����",
  idTab         : word       "�����䨪��� ⠡����",
  idType        : word       "coTable ⠡���� ��뫪�",
  Number        : tNRec      "����� �� ���浪�",
  bNumber       : tNRec      "��� ��ॢ�",
  wDefault      : tNRec      "���祭�� ����⠭�� �� 㬮�砭��"
)

With Index
(
  BlackConst01 = Number (Unique, Surrogate, Journal),
  BlackConst02 = idTab + bNumber,
  BlackConst03 = idTab + id
)
;

Table STRUCT BlackTable "������⢮ ⠡��� ���㬥��"
(
  Name          : s50        "������������",
  id            : word       "����� ��६�����",
  Number        : tNRec      "����� �� ���浪�",
  bNumber       : tNRec      "��� ��ॢ�",
  InterMain     : s50        "����䥩� �ᯮ������",
  InterReg      : s50        "����䥩� १����樨"
)

With Index
(
  BlackTable01 = Number (Unique, Surrogate, Journal),
  BlackTable02 = id,
  BlackTable03 = bNumber
)
;