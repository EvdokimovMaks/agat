/*
 ��������������������������������������������������������������������������ͻ
 �                     (c) ��௮��� ���������, 2000                       �
 � �஥��        : ���������                                                �
 � ���⥬�       : ����஫����                                              �
 � �����        : 5.7                                                      �
 � �����祭��    : ����� ����� ��⥩ ������権                         �
 � �⢥��⢥��� : ������� ��⠫�� ���������� (Medved)                      �
 ��������������������������������������������������������������������������ͼ
*/
.set name = 'KatSK'
.hide
.fields
NbName
SkNum
SkName
SkLinkName
VarRash
Calculation
Aktiv
IncludePrice
ZtName
ZtKod
ZtZnak
DShet
DSubShet
DKau
KShet
KSubShet
KKau
Znak
.endfields
^
.{
^ ^ ^ ^ ^ ^ ^
.{CheckEnter nSK_Loop1
^^^^^^^^^^
.}
.}
.endform

.linkform 'KatSK_01' prototype is 'KatSK'
.Group '�� �᭮�� ��⥩ ��室��/ ��室��'
.NameInList '����� ��⥩ ������権 - �� �᭮�� ��⥩ ��室��/ ��室��'
.fields
NbName
SkNum
SkName
SkLinkName
ZtName
ZtKod
ZtZnak
.endfields

��       ����� ��⥩ ������権 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
           (�� �᭮�� ��⥩ ��室��/��室��)
�������������������������������������������������������������������������������������������������������Ŀ
������ ������������ ���� ������樨    �     ��� ����        ������ ������騩 �஢���           �
�     ������������� ���� ��室��/��室���  ��室��/ ��室��    �    �                               �
�������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �    �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.{CheckEnter nSK_Loop1
�     �  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�@@@@�                               �    
.}
.}
���������������������������������������������������������������������������������������������������������
.endform

.linkform 'KatSK_02' prototype is 'KatSK'
.Group '��� �業�� ᥡ��⮨���� ��ꥪ�'
.NameInList '����� ��⥩ ������権 - ��� �業�� ᥡ��⮨���� ��ꥪ�'
.fields
NbName
SkNum
SkName
SkLinkName
VarRash
Calculation
Aktiv
IncludePrice
ZtName
ZtKod
ZtZnak
.endfields

��       ����� ��⥩ ������権 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
           (��� �業�� ᥡ��⮨���� ��ꥪ�)
������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
������ ������������ ���� ������樨    �                       ������ ������騩 �஢���           � ��ਠ�� ����    � ���c��뢠��          �� 業�   �� ����� �
�     �   ����� ��室��/��室�� /        �     ��� ����        �    �                               �                    �                       �������� ��뢮���� �
�     �   �����. ����� ������樨/       �  ��室��/��室��     �    �                               �                    �                       �         �         �
�     �   ���� ���᫥���                  �                       �    �                               �                    �                       �         �         �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{                                                                                                                                                   
�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �    �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�
.{CheckEnter nSK_Loop1
�     �  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�@@@@�                               �                    �                       �         �         �
.}
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform

.linkform 'KatSK_03' prototype is 'KatSK'
.Group '����ன�� �� ����ᯮ������ ��⮢'
.NameInList '����ன�� ��⥩ ������権 �� ����ᯮ������ ��⮢'
.fields
NbName
SkNum
SkName
SkLinkName
Aktiv
IncludePrice
DShet
DSubShet
DKau
KShet
KSubShet
KKau
Znak
.endfields

��       ����� ��⥩ ������権 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
������ ������������ ���� ������樨 � ������騩 �஢���     �� ����� �� 業�   ������   ������ � ���祭�� �����⨪�    ��।��  ������ �  ���祭�� �����⨪�   ������
�     �                                 �                         ��뢮���� �������� ����    �        �                       ����    �        �                       �    �
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ���Ĵ
.{
�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�        �        �                       �        �        �                       �    �
.{CheckEnter nSK_Loop1
�     �                                 �                         �         �         �@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@� @@ �
.}
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform