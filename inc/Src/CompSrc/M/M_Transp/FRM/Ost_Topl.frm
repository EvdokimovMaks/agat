/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 5.7                                                       �
 � ��Л�腑�┘    : �≒�矗��甎�珥                                             �
 � �癶モ痰▲��覃 : �イ▲れ �����跫 �ギ�┐�↓�                                �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
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
��キ� ����瘁┬:
.{
^ ^
.}
.end
.}
.endform

.linkform 'Ost_Topl01' prototype is 'Ost_Topl'
.NameInList '���(�) � 筮爼�皀 �����'
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
                甅閧�� �痰�皖�� 皰��│� � ����� �≒���；�ォ
                               �� ^
 .{.?GroupCOstTopl; .}
 .{.?GroupSpOstTopl; .}

陳賃陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳陳陳賃陳陳陳陳堕陳陳陳賃陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳堕陳陳陳陳堕陳陳陳
 � �  ��爲�     �   ���.    �����Ν覃 �    ���         �����痰� �����.   �  ���ム  �   ����    �����.   ���甎�瘡  �踸�.
   ��≒���；��  �  ���ム    � ���ム   �  〓え皀��      � �����  蟹��-〓  �   ��    �  �覩�瓷�  蟹��-〓  晦�え皀�� �
   �            �           �         �                �        晦 ����� �         �    ��     劾� ��   �         �
陳珍陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳陳陳珍陳陳陳陳祖陳陳陳珍陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳祖陳陳陳陳祖陳陳陳
.{
@@@ @@@@@@@@@@@  @@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& &#&&&.&& @@@@@@@@ @@@@@@@@@@  &#&&&.&&           ^
.}
�皰�� �� ※��� 皰��│�:
.{
                             @@@@@@@@@@@@@@@@@@@@@@@@@@        &&#&&&&&.&&                    &#&&&&&.&
.}
.if flCommis
��キ� ����瘁┬:
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ _______________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end

.}
.endform

.linkform 'Ost_Topl03' prototype is 'Ost_Topl'
.NameInList '���(�) � 筮爼�皀 �����'
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
                甅閧�� �痰�皖�� 皰��│� � ����� ��
                               �� ^
 .{.?GroupCOstTopl; .}
 .{.?GroupSpOstTopl; .}

陳賃陳陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳陳陳賃陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳堕陳陳陳賃陳陳陳陳賃陳陳陳�
 � �  ��爲�     � ��珥�〓�  ���〓め����    ���         �����痰� �  ���ム  �   ����    �����.   ���甎�瘡  �踸�.
   �    ��      �  ���ム    �  ���ム  �  〓え皀��      � �����  �   ��    �  �覩�瓷�  蟹��-〓  晦�え皀�� �
   �            �           �         �                �        �         �    ��     晦 ����� �         �
陳珍陳陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳陳陳珍陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳祖陳陳陳珍陳陳陳陳珍陳陳陳�
.{
@@@ @@@@@@@@@@@  @@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& @@@@@@@@ @@@@@@@@@@  &#&&&.&&           ^
.}
�皰�� �� ※��� 皰��│�:
.{
                             @@@@@@@@@@@@@@@@@@@@@@@@@@                              &&#&&&&&.&&
.}
.if flCommis
��キ� ����瘁┬:
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ _______________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end
.}
.endform
