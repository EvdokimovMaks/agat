/* 
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,99 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����｀皚�� �����                                          �
 � �ム瓱�        : 7.11                                                      �
 � ��Л�腑�┘    : ��爼� か� �襤���  甎��→� :                               �
 �                 "�窶��� 爛��痰��罔� ▼諱���┤ "                           �
 �                                                                           �
 � �癶モ痰▲��覃 : �カュ ��瓱�┤ �■キ譽※�                                  �
 �                                                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#doc
��爼� か� �襤��� 甎��→�: "�窶��� 爛��痰��罔� ▼諱���┤"
#end
.set name 'PJFormI'
.hide
.DEFP PA4
.p 60
.fields
 ����_������
 ����_ｪ�������
 ReportLevel: word
.endfields
 ����_������_筮爼�牀�����: @@@@@@@@@@
 ����_���������_筮爼�牀�����: @@@@@@@@@@
 ReportLevel : ^
.fields
 ��む�Гカキ┘_窶�▲�� : word
 ��む�Гカキ┘
 ��む�Гカキ┘_�皰��
.endfields
.{ pj_persloop CheckEnter
^^^
.fields
 TaabN
 FIO
 nStruct
 Post
 FortVid
 DatFort
 FsNote
 FDocNmb
 FDocDate
 LenPun
 StatePun
 EndPunis
 TypePun
.endfields
.{ pj_persloop2 CheckEnter
^^^^^^^^^^^^^
.}
.}
.endform