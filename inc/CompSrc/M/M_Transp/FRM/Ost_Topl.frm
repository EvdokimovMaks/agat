/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����࠭ᯮ��                                             �
 � �����        : 5.7                                                       �
 � �����祭��    : ����࠭ᯮ��                                             �
 � �⢥��⢥��� : ������� ��⠫�� ����������                                �
 ���������������������������������������������������������������������������ͼ
*/
.set name='Ost_Topl'
.Group 'Avto'
.Group 'Rail'
.hide
.fields
 Predpr
 NumAkt
 DatAkt

 PutLstNRec
 AktsostNRec
 OsttoplNRec

 CPost CFIO
 zpt
 NameToplivo
 MarkaAvt2 GosNmbr2
 ItgToplivo sItgToplivo ItgProbeg sItgProbeg ItgMoto sItgMoto
 Npp MarkaAvt GosNmbr GarNmbr FIO VolInBak: double CountInBak: double
 Prim Npl DatObrpl CountInBakPl: double

 PLSpeedExi density
 PutGsm1 PutGsm2 PutGsm3
 Col_Bak1 Col_Bak2 Col_Bak3
 NameToplivo1
 NameToplivo2
 NameToplivo3
 Speed bak1 bak2 bak3
 ItgNameTopl ItgKolTopl ItgKolToplPl
 CommissPost CommissFIO
.endfields
.{
^
^
^

^ ^ ^

 .{.?GroupCOstTopl;^ ^.}
 .{.?GroupSpOstTopl;^ ^ ^ ^ ^ ^ ^ ^ ^ ^.}
.{

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^

.}
.{
^ ^ ^
.}
.if flCommis
����� �����ᨨ:
.{
^ ^
.}
.end
.}
.endform

.linkform 'Ost_Topl01' prototype is 'Ost_Topl'
.NameInList '���(�) � �ଠ� �����'
.Group 'Avto'
.fields
 Predpr
 NumAkt
 DatAkt
 Npp MarkaAvt GosNmbr GarNmbr FIO VolInBak CountInBak NPl DatObrpl CountInBakPl Prim
 ItgNameTopl ItgKolTopl ItgKolToplPl
 CommissPost CommissFIO
.endfields
.{
^

                                ��� � ^
                ���� ���⪮� ⮯���� � ����� ��⮬������
                               �� ^
 .{.?GroupCOstTopl; .}
 .{.?GroupSpOstTopl; .}

��������������������������������������������������������������������������������������������������������������������������
 � �  ��ઠ     �   ���.    ���ࠦ�� �    ���         �������� �����.   �  �����  �   ���    �����.   ���ᯨ��  ��ਬ.
   ���⮬�����  �  �����    � �����   �  ����⥫�      � �����  ����-��  �   ��    �  �믨᪨  ����-��  �����⥫� �
   �            �           �         �                �        �� ����� �         �    ��     ��� ��   �         �
��������������������������������������������������������������������������������������������������������������������������
.{
@@@ @@@@@@@@@@@  @@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& &#&&&.&& @@@@@@@@ @@@@@@@@@@  &#&&&.&&           ^
.}
�⮣� �� ����� ⮯����:
.{
                             @@@@@@@@@@@@@@@@@@@@@@@@@@        &&#&&&&&.&&                    &#&&&&&.&
.}
.if flCommis
����� �����ᨨ:
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ _______________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end

.}
.endform

.linkform 'Ost_Topl03' prototype is 'Ost_Topl'
.NameInList '���(�) � �ଠ� �����'
.Group 'Rail'
.fields
 Predpr
 NumAkt
 DatAkt
 Npp MarkaAvt GosNmbr GarNmbr FIO VolInBak NPl DatObrpl CountInBak Prim
 ItgNameTopl ItgKolTopl
 CommissPost CommissFIO
.endfields
.{
^

                                ��� � ^
                ���� ���⪮� ⮯���� � ����� ��
                               �� ^
 .{.?GroupCOstTopl; .}
 .{.?GroupSpOstTopl; .}

�����������������������������������������������������������������������������������������������������������������
 � �  ��ઠ     � ���⮢��  ������᪮��    ���         �������� �  �����  �   ���    �����.   ���ᯨ��  ��ਬ.
   �    ��      �  �����    �  �����  �  ����⥫�      � �����  �   ��    �  �믨᪨  ����-��  �����⥫� �
   �            �           �         �                �        �         �    ��     �� ����� �         �
�����������������������������������������������������������������������������������������������������������������
.{
@@@ @@@@@@@@@@@  @@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& @@@@@@@@ @@@@@@@@@@  &#&&&.&&           ^
.}
�⮣� �� ����� ⮯����:
.{
                             @@@@@@@@@@@@@@@@@@@@@@@@@@                              &&#&&&&&.&&
.}
.if flCommis
����� �����ᨨ:
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ _______________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end
.}
.endform
