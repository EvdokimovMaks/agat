/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,98 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����� ��ࠢ����� ६��⠬�                               �
 � �����        : 5.80                                                      �
 � �����祭��    : ��ଠ "������ ��䨪 ६��⮢"                          �
 � �⢥��⢥��� : ��࣠�� ����ᠭ��                                        �
 � ���������     :                                                           �
 ���������������������������������������������������������������������������ͼ

� � � � �

�   �   �

� � � � �

�   �   �

� � � � �

*/
#doc
��ଠ "������ ��䨪 ६��⮢"
#end
.set name = 'Fgrafik2'
.group '������ ��䨪 ६��⮢'
.nameinlist '������� �ଠ'
.hide
.fields
! ��������� ����
NameForm
! ��ਮ� �롮ન
Date1Filtr Date2Filtr
! 䨫��� (��࠭�祭��)
NameFiltr
! ��� �ନ஢����
DateForm TimeForm
! ���孨� ��������� ����
PeriodV LongV
! ���ࠧ�������
PodrName
! ���� 横��
NameObj NrecObj InNum ObjRem_Number ObjRem_TexNum VidRem VidRemName vsSposobVipRabot_Graf vsSposobVipRabot_Zrem NrecVid Period EdPeriod Long DateN DateK DateNF DateKF
NormRem_LastRem
ObjRem_Value2
ObjRem_Tisp
NormRem_Resource
NormRem_DateResource
Plan
R1  R2  R3  R4  R5  R6  R7  R8  R9  R10
R11 R12 R13 R14 R15 R16 R17 R18 R19 R20
R21 R22 R23 R24 R25 R26 R27 R28 R29 R30 R31 Isp IspName TimeOst TimeRem
Fakt
F1  F2  F3  F4  F5  F6  F7  F8  F9  F10
F11 F12 F13 F14 F15 F16 F17 F18 F19 F20
F21 F22 F23 F24 F25 F26 F27 F28 F29 F30 F31 IspF IspFName TimeOstF TimeRemF
! 横� �⮣���� �㬬
ItogName
! �㬬� �� ��� �������
SumDayP1
SumDayP2
SumDayP3
SumDayP4
SumDayP5
SumDayP6
SumDayP7
SumDayP8
SumDayP9
SumDayP10
SumDayP11
SumDayP12
SumDayP13
SumDayP14
SumDayP15
SumDayP16
SumDayP17
SumDayP18
SumDayP19
SumDayP20
SumDayP21
SumDayP22
SumDayP23
SumDayP24
SumDayP25
SumDayP26
SumDayP27
SumDayP28
SumDayP29
SumDayP30
SumDayP31
ItogKolOst ItogKolRem

ItogNameF
! �㬬� �� ��� 䠪��᪨�
SumDayF1
SumDayF2
SumDayF3
SumDayF4
SumDayF5
SumDayF6
SumDayF7
SumDayF8
SumDayF9
SumDayF10
SumDayF11
SumDayF12
SumDayF13
SumDayF14
SumDayF15
SumDayF16
SumDayF17
SumDayF18
SumDayF19
SumDayF20
SumDayF21
SumDayF22
SumDayF23
SumDayF24
SumDayF25
SumDayF26
SumDayF27
SumDayF28
SumDayF29
SumDayF30
SumDayF31
ItogKolOstF ItogKolRemF
.endfields

!
NameForm            ��������� ����          ^
Date1Filtr          �                         ^
Date2Filtr          ��                        ^
.{
NameFiltr           ��࠭�祭��               ^
.}
!
DateForm            ��� �ନ஢���� ����  ^
TimeForm            �६� �ନ஢���� ���� ^
.{
.[h
! ���孨� ��������� ����
 ^ ^
.]h
.{
.{
.{ CheckEnter PodrNameLoop
PodrName ^
.}
NameObj ^ NrecObj ^ InNum ^ ObjRem_Number ^ ObjRem_TexNum ^ VidRem ^ VidRemName ^ 
vsSposobVipRabot_Graf ^ vsSposobVipRabot_Zrem ^
NrecVid ^ Period ^ EdPeriod ^ Long ^ DateN ^ DateK ^ DateNF ^ DateKF ^

NormRem_LastRem      ^
ObjRem_Value2        ^
ObjRem_Tisp          ^
NormRem_Resource     ^
NormRem_DateResource ^

Plan ^
              R1 ^  R2 ^  R3 ^  R4 ^  R5 ^  R6 ^  R7 ^  R8 ^  R9 ^  R10 ^
              R11 ^ R12 ^ R13 ^ R14 ^ R15 ^ R16 ^ R17 ^ R18 ^ R19 ^ R20 ^
              R21 ^ R22 ^ R23 ^ R24 ^ R25 ^ R26 ^ R27 ^ R28 ^ R29 ^ R30 ^ R31 ^
              Isp ^ IspName ^ TimeOst ^ TimeRem ^
Fakt ^
              F1 ^  F2 ^  F3 ^  F4 ^  F5 ^  F6 ^  F7 ^  F8 ^  F9 ^  F10 ^
              F11 ^ F12 ^ F13 ^ F14 ^ F15 ^ F16 ^ F17 ^ F18 ^ F19 ^ F20 ^
              F21 ^ F22 ^ F23 ^ F24 ^ F25 ^ F26 ^ F27 ^ F28 ^ F29 ^ F30 ^ F31 ^
              IspF ^ IspFName ^ TimeOstF ^ TimeRemF ^
.}
.{
ItogName     �⮣� ��             ^
SumDayP1     ^
SumDayP2     ^
SumDayP3     ^
SumDayP4     ^
SumDayP5     ^
SumDayP6     ^
SumDayP7     ^
SumDayP8     ^
SumDayP9     ^
SumDayP10    ^
SumDayP11    ^
SumDayP12    ^
SumDayP13    ^
SumDayP14    ^
SumDayP15    ^
SumDayP16    ^
SumDayP17    ^
SumDayP18    ^
SumDayP19    ^
SumDayP20    ^
SumDayP21    ^
SumDayP22    ^
SumDayP23    ^
SumDayP24    ^
SumDayP25    ^
SumDayP26    ^
SumDayP27    ^
SumDayP28    ^
SumDayP29    ^
SumDayP30    ^
SumDayP31    ^
ItogKolOst   �⮣� �६� �����  ^
ItogKolRem   �⮣� �६� ६���  ^

ItogNameF     �⮣� ��             ^
SumDayF1     ^
SumDayF2     ^
SumDayF3     ^
SumDayF4     ^
SumDayF5     ^
SumDayF6     ^
SumDayF7     ^
SumDayF8     ^
SumDayF9     ^
SumDayF10    ^
SumDayF11    ^
SumDayF12    ^
SumDayF13    ^
SumDayF14    ^
SumDayF15    ^
SumDayF16    ^
SumDayF17    ^
SumDayF18    ^
SumDayF19    ^
SumDayF20    ^
SumDayF21    ^
SumDayF22    ^
SumDayF23    ^
SumDayF24    ^
SumDayF25    ^
SumDayF26    ^
SumDayF27    ^
SumDayF28    ^
SumDayF29    ^
SumDayF30    ^
SumDayF31    ^

ItogKolOstF   �⮣� �६� �����  ^
ItogKolRemF   �⮣� �६� ६���  ^
.}
.}
.}
.endform


#doc
������ ��䨪 ६��⮢
#end
.linkform 'Fgrafik2_01' prototype is 'Fgrafik2'
.group '������ ��䨪 ६��⮢'
.nameinlist '1. ������ ��䨪 ६��⮢'
.p 60
.defo landscape
.fields
! ��������� ����
NameForm
! ��ਮ� �롮ન
Date1Filtr Date2Filtr
! 䨫��� (��࠭�祭��)
NameFiltr
! ��� �ନ஢����
DateForm TimeForm
! ���孨� ��������� ����
LongV
! ���ࠧ�������
PodrName
! ���� 横��
NameObj InNum VidRem Period EdPeriod Long
R1  R2  R3  R4  R5  R6  R7  R8  R9  R10
R11 R12 R13 R14 R15 R16 R17 R18 R19 R20
R21 R22 R23 R24 R25 R26 R27 R28 R29 R30 R31 Isp TimeOst TimeRem
! 横� �⮣���� �㬬
ItogName
SumDayP1
SumDayP2
SumDayP3
SumDayP4
SumDayP5
SumDayP6
SumDayP7
SumDayP8
SumDayP9
SumDayP10
SumDayP11
SumDayP12
SumDayP13
SumDayP14
SumDayP15
SumDayP16
SumDayP17
SumDayP18
SumDayP19
SumDayP20
SumDayP21
SumDayP22
SumDayP23
SumDayP24
SumDayP25
SumDayP26
SumDayP27
SumDayP28
SumDayP29
SumDayP30
SumDayP31
ItogKolOst ItogKolRem
.endfields

��               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

        �� ��ਮ�  �: @@@@@@@@@@  ��: @@@@@@@@@@

.{
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

 ���: @@@@@@@@@@         �६�: @@@@@@@@@@
.{
.[h
                                                                                                                                                                                           ���� @np@
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ������������          ��������.����    ���ਮ���-���. ���. ��த�����.�                                           ��� �஢������ ६���                                                         ��᭮������६�  ��६�  �
� ��ꥪ�               ������     �६��⠳�����    ���ਮ���-� �� ��ଥ ���������������������������������������������������������������������������������������������������������������������������Ĵ�ᯮ���ĳ�����६��⠳
� ६���               �          �       ��� ��ଥ �����    � @@@@@@@@ � 01� 02� 03� 04� 05� 06� 07� 08� 09� 10� 11� 12� 13� 14� 15� 16� 17� 18� 19� 20� 21� 22� 23� 24� 25� 26� 27� 28� 29� 30� 31�⥫�    �� ���� �� ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
.{
.{
.{ CheckEnter PodrNameLoop                                                                                                    
�@@@@@@@@@@@@@@@@@@@@@@@�          �       �         �         �          �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �        �       �       �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.}
�@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@�&&&&&&.&&� @@@@@@@@�&&&&&&.&& �&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�@@@@@@@@�&&&&.&&�&&&&.&&�
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.}
.{
�&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�        �&&&&.&&�&&&&.&&�
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.[f

 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

.]f
.}��
��
.endform

#doc
������ ��䨪 ६��⮢
������ ��䨪 ६��⮢ (����-䠪�)
#end
.linkform 'Fgrafik2_02' prototype is 'Fgrafik2'
.group '������ ��䨪 ६��⮢'
.nameinlist '2. ������ ��䨪 ६��⮢ (����-䠪�)'
.p 60
.defo landscape
.fields
! ��������� ����
NameForm
! ��ਮ� �롮ન
Date1Filtr Date2Filtr
! 䨫��� (��࠭�祭��)
NameFiltr
! ��� �ନ஢����
DateForm TimeForm
! ���孨� ��������� ����
LongV
! ���ࠧ�������
PodrName
! ���� 横��
NameObj InNum VidRem Period EdPeriod Long
Plan
R1  R2  R3  R4  R5  R6  R7  R8  R9  R10
R11 R12 R13 R14 R15 R16 R17 R18 R19 R20
R21 R22 R23 R24 R25 R26 R27 R28 R29 R30 R31 Isp TimeOst TimeRem
Fakt
F1  F2  F3  F4  F5  F6  F7  F8  F9  F10
F11 F12 F13 F14 F15 F16 F17 F18 F19 F20
F21 F22 F23 F24 F25 F26 F27 F28 F29 F30 F31 IspF TimeOstF TimeRemF
! 横� �⮣���� �㬬
ItogName
SumDayP1
SumDayP2
SumDayP3
SumDayP4
SumDayP5
SumDayP6
SumDayP7
SumDayP8
SumDayP9
SumDayP10
SumDayP11
SumDayP12
SumDayP13
SumDayP14
SumDayP15
SumDayP16
SumDayP17
SumDayP18
SumDayP19
SumDayP20
SumDayP21
SumDayP22
SumDayP23
SumDayP24
SumDayP25
SumDayP26
SumDayP27
SumDayP28
SumDayP29
SumDayP30
SumDayP31
ItogKolOst ItogKolRem

ItogNameF
SumDayF1
SumDayF2
SumDayF3
SumDayF4
SumDayF5
SumDayF6
SumDayF7
SumDayF8
SumDayF9
SumDayF10
SumDayF11
SumDayF12
SumDayF13
SumDayF14
SumDayF15
SumDayF16
SumDayF17
SumDayF18
SumDayF19
SumDayF20
SumDayF21
SumDayF22
SumDayF23
SumDayF24
SumDayF25
SumDayF26
SumDayF27
SumDayF28
SumDayF29
SumDayF30
SumDayF31
ItogKolOstF ItogKolRemF
.endfields

               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

        �� ��ਮ�  �: @@@@@@@@@@  ��: @@@@@@@@@@

.{
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

 ���: @@@@@@@@@@         �६�: @@@@@@@@@@
.{
.[h
                                                                                                                                                                                                ���� @np@
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
� ������������        ��������.����    ���ਮ���-���. ���.��த���.�                                           ��� �஢������ ६���                                                              ��᭮������६�  ��६�  �
� ��ꥪ�             ������     �६��⠳�����    ���ਮ��-��� ��ଥ��������������������������������������������������������������������������������������������������������������������������������Ĵ�ᯮ���ĳ�����६��⠳
� ६���             �          �       ��� ��ଥ �筮��  �@@@@@@@@�    � 01� 02� 03� 04� 05� 06� 07� 08� 09� 10� 11� 12� 13� 14� 15� 16� 17� 18� 19� 20� 21� 22� 23� 24� 25� 26� 27� 28� 29� 30� 31�⥫�    �� ���� �� ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
.{
.{
.{ CheckEnter PodrNameLoop
�@@@@@@@@@@@@@@@@@@@@@�          �       �         �        �        �    �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �        �       �       �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.}
�@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@�&&&&&&.&&�@@@@@@@@�&&&&&.&&�@@@@�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�@@@@@@@@�&&&&.&&�&&&&.&&�
�                     �          �       �         �        �        ���������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
�                     �          �       �         �        �        �@@@@�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�@@@@@@@@�&&&&.&&�&&&&.&&�
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.}
.{
�&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�        �&&&&.&&�&&&&.&&�
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ        ���������������Ĵ
�&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�&&&�        �&&&&.&&�&&&&.&&�
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.[f

 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

.]f
.}��

.endform