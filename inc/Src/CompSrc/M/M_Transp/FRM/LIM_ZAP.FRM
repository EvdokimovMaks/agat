/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,99 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 6.00                                                      �
 � ��Л�腑�┘    : �━�皚�-�����〓膈�� ▲ぎ��痰� �� �皴竅� ���               �
 � �癶モ痰▲��覃 : ���瓱� ��▲� ���え��牀※�                                 �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='Lim_Zap'
.Group 'か� �≒�矗��甎�珥�'
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
// ����襯 �� ��珥�腦�
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
.NameInList '�┃ォ�覃 �砒モ'
.Group '�┃ォ�襯'

.endform
*/
.linkform 'Lim_Zap_03' prototype is 'Lim_Zap'
.NameInList '�イ���痰� �� �皴竅� ��� (� ������)'
.Group '�珮��� BT'
.Group 'か� �≒�矗��甎�珥�'
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
��━キ����┘ �爍��├�罔�: ^
�イ���痰� �             : ^
����                    : ^
��━キ����┘ � ��爲� ���: ^ ^
���                     : ^ ^
敖陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳朕
�      �≒���；��      �   ���ム    �            ��え皀��           �   �襪���   �         �
団陳陳陳陳賃陳陳陳陳陳調  �竄ア���  団陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳�    ���     �   ���   �
�  ��ぅ��  �   ���ム   �   ��痰�    �       ���          ����.���ム �            �         �
団陳陳陳陳津陳陳陳陳陳津陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳調
.{
.Fields
MarkaS GosNS NPLS FioVodS TabNS KolVoGsmS GasTankStr
.EndFields
�@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�&#&&&&&&&.&&�@@@@@@@@@�
.}
青陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳潰
.Fields
KolVoItogoLitr KolVoItogoWeight
.EndFields
�瓮�� �襪���: �♀ガ &&&&&&&&&.&&; ▲� &&&&&&&&&.&&
.}

.endform


.linkform 'Lim_Zap_03a' prototype is 'Lim_Zap'
.NameInList '�イ���痰� �� �皴竅� ��� (� ������)'
.Group '�珮��� BT'
.Group 'か� �.�. � む. ��'
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
��━キ����┘ �爍��├�罔�: ^
�イ���痰� �             : ^
����                    : ^
��━キ����┘ � ��爲� ���: ^ ^
���                     : ^ ^
敖陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳朕
�          ��          �   ���ム    �            ��え皀��           �   �襪���   �         �
団陳陳陳陳賃陳陳陳陳陳調  爛��痰�.  団陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳�    ���     �   ���   �
�  ��ぅ��  �   ���ム   �   ��痰�    �       ���          ����.���ム �            �         �
団陳陳陳陳津陳陳陳陳陳津陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳調
.{
.Fields
MarkaS GosNS NPLS FioVodS TabNS KolVoGsmS GasTankStr
.EndFields
�@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�&#&&&&&&&.&&�@@@@@@@@@�
.}
青陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳潰
.Fields
KolVoItogoLitr KolVoItogoWeight
.EndFields
�瓮�� �襪���: �♀ガ &&&&&&&&&.&&; ▲� &&&&&&&&&.&&
.}

.endform
