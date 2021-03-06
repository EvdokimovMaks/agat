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

#ifdef ComponentVersion
#Component "M_Scripts"
#end

Table STRUCT BlackField "���Ε痰�� ���ォ ��゛�肓"
(
  Name          : s50        "��━キ����┘",
  id            : word       "�ぅ�皋筥��皰� �ムガキ���",
  idTab         : word       "�ぅ�皋筥��皰� ��゛�肓",
  Number        : tNRec      "���ム �� ��瑙お�",
  bNumber       : tNRec      "��� ぅ爛��",
  wType         : word       "�┓ �ムガキ���",
  wType_        : word       "��も┓ �ムガキ���",
  wMode         : word       "�┓ ぎ痰祚� � �ムガキ���",
  wOrder        : word       "�ムガキ��� か� 甌縲��キ�� ��瑙お�"
)

With Index
(
  BlackField01 = Number (Unique, Surrogate, Journal),
  BlackField02 = idTab + bNumber + wOrder,
  BlackField03 = idTab + wType,
  BlackField04 = idTab + id
)
;

Table STRUCT BlackBound "���Ε痰�� ������腑�┤ ��゛�肓"
(
  Name          : s50        "��━キ����┘",
  id            : word       "�ぅ�皋筥��皰� ������腑���",
  idTab         : word       "�ぅ�皋筥��皰� ��゛�肓",
  Number        : tNRec      "���ム �� ��瑙お�",
  bNumber       : tNRec      "��� ぅ爛��",
  wType         : word       "�┓ 爛с�赳���",
  Param         : word       "����腑痰〓 �����モ牀�"
)
With Index
(
  BlackBound01 = Number (Unique, Surrogate, Journal),
  BlackBound02 = idTab + bNumber,
  BlackBound03 = idTab + id
)
;


Table STRUCT BlackBoundField "���Ε痰�� ���ォ ������腑���"
(
  Name          : s50        "��━キ����┘",
  id            : word       "�ぅ�皋筥��皰� �ムガキ���",
  idBou         : word       "�ぅ�皋筥��皰� ������腑���",
  idTab         : word       "�ぅ�皋筥��皰� ��゛�肓",
  wType         : word       "�┓ �ムガキ���",
  wOrder        : word       "�ムガキ��� か� 甌縲��キ�� ��瑙お�"
)

With Index
(
  BlackBoundField01 = idTab + idBou + wOrder,
  BlackBoundField02 = id
)
;

Table STRUCT BlackConst "���痰��硅 ぎ�祠キ��"
(
  Name          : s50        "��━キ����┘",
  id            : word       "���ム �ムガキ���",
  idTab         : word       "�ぅ�皋筥��皰� ��゛�肓",
  idType        : word       "coTable ��゛�肓 瘁覊��",
  Number        : tNRec      "���ム �� ��瑙お�",
  bNumber       : tNRec      "��� ぅ爛��",
  wDefault      : tNRec      "���腑�┘ ���痰��硅 �� 祠�������"
)

With Index
(
  BlackConst01 = Number (Unique, Surrogate, Journal),
  BlackConst02 = idTab + bNumber,
  BlackConst03 = idTab + id
)
;

Table STRUCT BlackTable "���Ε痰〓 ��゛�� ぎ�祠キ��"
(
  Name          : s50        "��━キ����┘",
  id            : word       "���ム �ムガキ���",
  Number        : tNRec      "���ム �� ��瑙お�",
  bNumber       : tNRec      "��� ぅ爛��",
  InterMain     : s50        "��皀珞ォ� �甎���キ��",
  InterReg      : s50        "��皀珞ォ� 爛Ж痰��罔�"
)

With Index
(
  BlackTable01 = Number (Unique, Surrogate, Journal),
  BlackTable02 = id,
  BlackTable03 = bNumber
)
;
