  /*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 5.00                                                      �
 � ��Л�腑�┘    : ��珥�皀�� 〓え皀�ォ                                       �
 � �癶モ痰▲��覃 : ��瓱�� �����跫 �������↓�                                 �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='DriverReport'

.fields
DriverFIO PUTLSTNPL  PUTLSTDAT MARPUNKTNAME MARPUNKTADDR Nacladnie Kol Mass NameMC MassaMC KolFactMC
.endfields

.{CheckEnter DriversLoop
KnDriver ^
.{CheckEnter PutLstLoop
PutLst ^
���� �覩�瓷� ^
.{CheckEnter TtnDoc
釪�� ��В珮И� ^
�むメ ��В珮И� ^
.}
����腑痰〓 �����き諷 ^
����腑痰〓 �� �����き覓 ^
��瘁� �� �����き覓 ^

.{CheckEnter DriverRepLoop
��━キ����┘ �� ^
��瘁� �� �� ^
���-〓 �� �� ^
.}
.}
.}
.endform

.linkform 'DriverReport_01'  prototype is 'DriverReport'
.NameInList '�砒モ� �� ��Δ��� 〓え皀�� �� ����腑痰≪ �����き諷, �爬�錻���覓 � ������� �竄ア��� ��痰�'

.fields
DriverFIO PUTLSTNPL PUTLSTDAT Nacladnie Kol Mass
.endfields


            �砒モ� �� 〓え皀�鍖 �� ����腑痰≪ �����き諷,
                �爬�錻���諷 � ������� �竄ア��� ��痰�

陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳陳
  ���ム �竄ア.�  ����    �  ���-〓  �     ｡薀�    � ｡��闖
              � �覩�瓷�  � �����き諷� ���-〓 皰�����  ��瘁�
陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳陳陳
.{CheckEnter DriversLoop
^

.{CheckEnter PutLstLoop
.{CheckEnter TtnDoc
.}
@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&&& &&&&&&&&&&&.&&& &&&&&&&&&.&&&

.{CheckEnter DriverRepLoop
.}
.}
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳

.endform

.linkform 'DriverReport_02' prototype is 'DriverReport'
.NameInList '�砒モ� �� 〓え皀�鍖, 甎�甌� ��� �� ≡ガ �����き覓 � �♂━ ����腑痰〓� � ��瘁�� �� ��Δ�� ��� '

.fields
DriverFIO PUTLSTNPL  PUTLSTDAT NameMC KolFactMC MassaMC

.endfields

              �砒モ� �� 〓え皀�鍖, 甎�甌� ��� �� ≡ガ �����き覓

陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳
  ���┼�� 〓え皀��  �  ���ム    �   ����   �  ����爿� ��皀爬��讚襯  �｡薀� ���-〓�｡��� ��瘁�
                    � �竄ア���  � �竄ア��� �       �キ��痰�         �    ���     �    ���
陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳
.{CheckEnter DriversLoop
.{CheckEnter PutLstLoop
.{CheckEnter TtnDoc
.}
.{CheckEnter DriverRepLoop

@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&.&&& &&&&&&&&.&&&
.}
.}
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.endform

.linkform 'DriverReport_03' prototype is 'DriverReport'
.NameInList '�砒モ� �� ��Δ��� 〓え皀��, �爬�ム�覃 ��琥珮� (�♂┤ �ムョキ� �むメ�� ��В珮И�)'

.fields
DriverFIO PUTLSTNPL  PUTLSTDAT MARPUNKTNAME
.endfields

                �砒モ� �� 〓え皀�鍖, �爬�ム�覃 ��琥珮�

陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳
       ���┼��           ����ム �竄ア.�   ����   �    釪�� ��В珮И�
      〓え皀��           �            �  �覩�瓷� �
陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳
.{CheckEnter DriversLoop
.{CheckEnter PutLstLoop
.{CheckEnter TtnDoc
@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{CheckEnter DriverRepLoop

.}
.}
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳

.endform



