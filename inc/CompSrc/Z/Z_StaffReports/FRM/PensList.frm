/*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �           蹍オ� "�����" (�) 2003                                   �
  �      �ム瓱� : 7.11                                                  �
  �      ��о�｀���:  �珥������ �.�.                                    �
  �      ��Л�腑�┘:  ���甌� �ム�｀��鉗�� �キ瓱��ム��                   �
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�

*/
#doc
���甌� �ム�｀��鉗�� �キ瓱��ム��
#end
.form PensList
.hide
.fields
ReportDate
nameServ1
nameServ2
nameServ3
npp
FIO
BornDate
Serv1
Serv2
Serv3
sCity
sStreet
sPhNumber
sPasp
INN
NPFmember
sInshNumber
.endfields
 ^  ^ ^ ^
.{ PensList_persCycle checkEnter
        npp ^
        FIO ^
        BornDate ^
        Serv1 ^
        Serv2 ^
        Serv3 ^
        sCity ^
        sStreet  ^
        sPhNumber ^
        sPasp     ^
  INN ^
        NPFmember ^
        sInshNumber ^
.}
.endform
