/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,99 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����࠭ᯮ��                                             �
 � �����        : 6.00                                                      �
 � �����祭��    : ����⭮-���ࠢ�筠� ��������� �� ���� ���               �
 � �⢥��⢥��� : ���ᨪ ����� �������஢��                                 �
 ���������������������������������������������������������������������������ͼ
*/
.set name='Lim_Zap'
.Group '��� ����࠭ᯮ��'
.hide
!.p 42
.fields
//Shapka
NumLZV
LZVnRec : Comp
DateLZV Platil Poluchil Org NumDover DocOpl Summa NameGSM Kodgsm EdIzm
KolVo : double
DopDate
DopKolVo : double
//Itogi
KolVoSmena DateSmena NumSmena
NameZaprav TabnZapr
//Stroki
LZVSnRec : Comp
DateS TimeS SmenaS MarkaS GosNS NPLS GarNS TabNS
KolVoGsmS : double
VidGsmS
OstLimS  : double
FioVodS FioZapS
KolVoGsmPro
Density : double
GasTank
GasTankStr
// ����� �� ����窥
WayDocCode
WayDocName
AutoDocNOM_DOC
AutoDocActionBeg
AutoDocActionEnd
ORG_FromName

//Hvost
KolVoItogoLitr  : double
KolVoItogoLitrProp
Koff : double
KoffAver : double
KolVoItogo : double
KolVoItogoWeight : double
SumVal : double
Price : double
VPrice : double
.endfields

.{
^ ^
^
^ ^
^ ^
^ ^ ^
^ ^ ^ ^ ^
//--------------Shapka
.{
^ ^ ^
.}
^ ^
//--------------Itogi
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
//--------------kartochka
 ^ ^ ^ ^ ^ ^
.}
//--------------//Stroki
^ ^
^ ^
^ ^ ^
^ ^
//--------------//Hvost
.}
.endform

/*
.linkform 'fMorale_01' prototype is 'fMorale'
.NameInList '������� ����'
.Group '�������'

.endform
*/
.linkform 'Lim_Zap_03' prototype is 'Lim_Zap'
.NameInList '��������� �� ���� ��� (� ������)'
.Group '��㯯� BT'
.Group '��� ����࠭ᯮ��'
.fields
.endfields
.{
.{
.}
.Fields
Org
NumLZV
DateLZV
NameGSM KodGSm
NameZaprav TabnZapr
.EndFields
������������ �࣠����樨: ^
��������� �             : ^
���                    : ^
������������ � ��ઠ ���: ^ ^
���                     : ^ ^
������������������������������������������������������������������������������������������Ŀ
�      ��⮬�����      �   �����    �            ����⥫�           �   �뤠��   �         �
����������������������Ĵ  ��⥢���  �������������������������������Ĵ    ���     �   ���   �
�  ������  �   �����   �   ����    �       ���          ����.����� �            �         �
������������������������������������������������������������������������������������������Ĵ
.{
.Fields
MarkaS GosNS NPLS FioVodS TabNS KolVoGsmS GasTankStr
.EndFields
�@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�&#&&&&&&&.&&�@@@@@@@@@�
.}
��������������������������������������������������������������������������������������������
.Fields
KolVoItogoLitr KolVoItogoWeight
.EndFields
�ᥣ� �뤠��: ��ꥬ &&&&&&&&&.&&; ��� &&&&&&&&&.&&
.}

.endform


.linkform 'Lim_Zap_03a' prototype is 'Lim_Zap'
.NameInList '��������� �� ���� ��� (� ������)'
.Group '��㯯� BT'
.Group '��� �.�. � ��. ��'
.fields
.endfields
.{
.{
.}
.Fields
Org
NumLZV
DateLZV
NameGSM KodGSm
NameZaprav TabnZapr
.EndFields
������������ �࣠����樨: ^
��������� �             : ^
���                    : ^
������������ � ��ઠ ���: ^ ^
���                     : ^ ^
������������������������������������������������������������������������������������������Ŀ
�          ��          �   �����    �            ����⥫�           �   �뤠��   �         �
����������������������Ĵ  ॣ����.  �������������������������������Ĵ    ���     �   ���   �
�  ������  �   �����   �   ����    �       ���          ����.����� �            �         �
������������������������������������������������������������������������������������������Ĵ
.{
.Fields
MarkaS GosNS NPLS FioVodS TabNS KolVoGsmS GasTankStr
.EndFields
�@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�&#&&&&&&&.&&�@@@@@@@@@�
.}
��������������������������������������������������������������������������������������������
.Fields
KolVoItogoLitr KolVoItogoWeight
.EndFields
�ᥣ� �뤠��: ��ꥬ &&&&&&&&&.&&; ��� &&&&&&&&&.&&
.}

.endform