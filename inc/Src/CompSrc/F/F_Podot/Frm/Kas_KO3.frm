// ------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.0 - ��壠���᪨� ������
// ��ୠ� ॣ����樨 ��室��� � ��室��� ���ᮢ�� ���㬥�⮢
// ------------------------------------------------------------------------------

#doc
��ୠ� ॣ����樨 ��室��� � ��室��� ���ᮢ�� ���㬥�⮢
#end
.set name = 'Kassa_KO3'
.nameinlist '������� �ଠ'
.hide
.fields
! ������ ����
c0p1
c0p2
c0p2un
c0p2ok
c0valpriznak: word    // �ਧ��� ���� ��ୠ�� � �����: = 0 - � ���,
                      // = 1 - ������, > 1 - ���⨢�����
c0rubley
c0p3
c0p4
c0p5
! ���� 1
c1p0  // ��������� 横�� 1
vDol
vcent
vDol1
vcent1
! ��室�� ���㬥�� (�ଠ 1�)
c1p1    // ���
c1p2    // �����
c1p3    // �㬬�+�����
c1p4    // ���
c1p5    // �ਬ�砭��
! ���室�� ���㬥�� (�ଠ 1�)
c1p6    // ���
c1p7    // �����
c1p8    // �㬬�+�����
c1p9    // ���
c1p10   // �ਬ�砭��
! ���� 2
c2p0    // ���
c2p01
c2p02
c2p03
c2p04
namep1  // ��ਧ��⠫�� 横�: ������������ 楫����� �����祭��
namep2
namep3
c2p05
nump    // ��ਧ��⠫�� 横�: ����� ������� 楫����� �����祭��
numprp1
numprp2
numprp3
numprp4
c2p06
! ��室�� ���㬥�� (�ଠ 1)
c2p1    // ���
c2p2    // �����
sump    // ��ਧ��⠫�� 横�: �㬬� 楫����� �����祭��
sumprp  // ��祥 楫���� �����祭��
c2p3    // �㬬�
c2p4    // ���
c2p5    // �ਬ�砭��
! �⮣� (��室)
sumitogop     // ��ਧ��⠫�� 横�: �⮣���� �㬬� 楫����� �����祭��
sumitogoprp   // ��祥 楫���� �����祭�� (�⮣�)
sumitogoallp  // �㬬� �⮣� (��室)
! ���� 3
c3p0    // ���
c3p01
c3p02
c3p03
c3p04
namer1  // ��ਧ��⠫�� 横�: ������������ 楫����� �����祭��
namer2
namer3
c3p05
numr    // ��ਧ��⠫�� 横�: ����� ������� 楫����� �����祭��
numprr1
numprr2
numprr3
numprr4
c3p06
! ���室�� ���㬥�� (�ଠ 1)
c3p1    // ���
c3p2    // �����
sumr    // ��ਧ��⠫�� 横�: �㬬� 楫����� �����祭��
sumprr  // ��祥 楫���� �����祭��
c3p3    // �㬬�
c3p4    // ���
c3p5    // �ਬ�砭��
! �⮣� (��室)
sumitogor     // ��ਧ��⠫�� 横�: �⮣���� �㬬� 楫����� �����祭��
sumitogoprr   // ��祥 楫���� �����祭�� (�⮣�)
sumitogoallr  // �㬬� �⮣� (��室)
.endfields

c0p1    ������୮� ���ࠧ������� ^
c0p2    ������������              ^
c0p2un  ���(���)                  ^
c0p2ok  ����                      ^
c0valpriznak  �ਧ��� ���� ��ୠ�� � �����: = 0 - � ��� ^
c0rubley �����                   ^
c0p3    ���                       ^
c0p4    ���������                 ^
c0p5    ���                       ^
.{FirstCycle checkenter
.[h
c1p0   ��� ^
vDol   ��� ^
vCent  ��� ^
vDol1  ��� ^
vCent1 ��� ^
.]h
c1p1    ��� ��室���� ���㬥��     ^
c1p2    ����� ��室���� ���㬥��    ^
c1p3    �㬬� �� ��室���� ���㬥��� ^
c1p4    ���                           ^
c1p5    �ਬ�砭��                    ^
c1p6    ��� ��室���� ���㬥��     ^
c1p7    ����� ��室���� ���㬥��    ^
c1p8    �㬬� �� ��室���� ���㬥��� ^
c1p9    ���                           ^
c1p10   �ਬ�砭��                    ^
.if LastPass
.else
.end
.}
.{SecondCycle checkenter
.[h
c2p0    ��� ^
c2p01   蠯��: ������ ����� (1-� ��ப�) ^
c2p02   蠯��: �஡��� (2-� ��ப�) ^
c2p03   蠯��: �஡��� (3-� ��ப�) ^
c2p04   蠯��: ����� (4-� ��ப�) ^
namep1  蠯��: 楫���� �����祭�� (5-� ��ப�) ^
namep2  蠯��: 楫���� �����祭�� (6-� ��ப�) ^
namep3  蠯��: 楫���� �����祭�� (7-� ��ப�) ^
c2p05   蠯��: ����� (8-� ��ப�) ^
nump    蠯��: ����� �⮫�� (9-� ��ப�) ^
numprp1 蠯��: ����� ᫥���饣� �� nump �⮫�� (9-� ��ப�) ^
numprp2 蠯��: ����� ��ண� �� nump �⮫�� (9-� ��ப�) ^
numprp3 蠯��: ����� �।��᫥����� �⮫�� (9-� ��ப�) ^
numprp4 蠯��: ����� ��᫥����� �⮫�� (9-� ��ப�) ^
c2p06   蠯��: ����� (10-� ��ப�) ^
.]h
c2p1    ��� ���㬥�� ^
c2p2    ����� ���㬥�� ^
sump    �㬬� ���㬥�� �� 楫� �� �ࠢ�筨��  .{.?Kassa_KO3_p1; ^�.}
sumprp  �㬬� ���㬥�� �� ��稥 楫� �� �� �ࠢ�筨�� ^
c2p3    �⮣���� �㬬� �� ��ப� ^
c2p4    ��� ^
c2p5    �ਬ�砭�� ^
.if LastPrihod
          .{.?Kassa_KO3_p3;���������������.}
sumitogop .{.?Kassa_KO3_p4; ^            �.}
sumitogoprp  ^  // ��祥 楫���� �����祭�� (�⮣�)
sumitogoallp ^  // �㬬� �⮣� (��室)
          .{.?Kassa_KO3_p5;�������������.}
.else
           .{.?Kassa_KO3_p2;�������������.}
.end
.}
.if ToNextPage

.end
.{ThirdCycle checkenter
.[h
c3p0    ��� ^
c3p01   蠯��: ������ ����� (1-� ��ப�) ^
c3p02   蠯��: �஡��� (2-� ��ப�) ^
c3p03   蠯��: �஡��� (3-� ��ப�) ^
c3p04   蠯��: ����� (4-� ��ப�) ^
namer1  蠯��: 楫���� �����祭�� (5-� ��ப�) ^
namer2  蠯��: 楫���� �����祭�� (6-� ��ப�) ^
namer3  蠯��: 楫���� �����祭�� (7-� ��ப�) ^
c3p05   蠯��: ����� (8-� ��ப�) ^
numr    蠯��: ����� �⮫�� (9-� ��ப�) ^
numprr1 蠯��: ����� ᫥���饣� �� nump �⮫�� (9-� ��ப�) ^
numprr2 蠯��: ����� ��ண� �� nump �⮫�� (9-� ��ப�) ^
numprr3 蠯��: ����� �।��᫥����� �⮫�� (9-� ��ப�) ^
numprr4 蠯��: ����� ��᫥����� �⮫�� (9-� ��ப�) ^
c3p06   蠯��: ����� (10-� ��ப�) ^
.]h
c3p1    ��� ���㬥�� ^
c3p2    ����� ���㬥�� ^
sumr    �㬬� ���㬥�� �� 楫� �� �ࠢ�筨��  .{.?Kassa_KO3_r1; ^�.}
sumprr  �㬬� ���㬥�� �� ��稥 楫� �� �� �ࠢ�筨�� ^
c3p3    �⮣���� �㬬� �� ��ப� ^
c3p4    ��� ^
c3p5    �ਬ�砭�� ^
.if LastRashod
          .{.?Kassa_KO3_r3;�������������.}
sumitogor .{.?Kassa_KO3_r4; ^          �.}
sumitogoprr  ^  // ��祥 楫���� �����祭�� (�⮣�)
sumitogoallr ^  // �㬬� �⮣� (��室)
          .{.?Kassa_KO3_r5;�������������.}
.else
           .{.?Kassa_KO3_r2;�������������.}
.end
.}
.endform

!==============================================================================

.linkform 'rus_ko3_01' prototype is 'Kassa_KO3'
.group '��ୠ� ॣ����樨 ���ᮢ�� ���㬥�⮢ - ��'
.nameinlist '��ୠ� ��� ��'
.defo portrait
.p 80
.fields
c0p2 c0p2ok c0p1 c0p3 c0p4 c0p5
 'true' : 's'
.endfields
��                                                   �����஢����� �ଠ � ��-3
                                                   �⢥ত��� ���⠭�������� ��᪮����
                                                   ���ᨨ �� 18.08.98�. � 88

                                                                       �����������������Ŀ
                                                                       �      ���        �
                                                                       �����������������Ĵ
                                                         ��ଠ �� ���� �    ��0310003��      �
                                                                       �����������������Ĵ
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� �� ���� ���@~@@@@@@@@@@@@@@@���
��������������������������������������������������������������         �����������������Ĵ
                          �࣠������                                  �                 �
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��         �                 �
������������������������������������������������������������������������������������������
                     ������୮� ���ࠧ�������







                             ��             ������ �������������
                             ����������� � ��������� �������� ������������

                                        ��@~@@@@@@@@@@@@@@@�� �.
                                        ��������������������

                     ��@~@@@@@@@@@@@@@@@@@@��  ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                     ��������������������  ������������������������������������
                           ���������             䠬����, ���, ����⢮


^��
!-----------------------------------------------------------------------------------------
.fields
if(c0valpriznak > 1, '', ',') if(c0valpriznak > 1, '', ',')
VDol VCent VDol1 VCent1
c1p1 c1p2 c1p3 c1p5 c1p6 c1p7 c1p8 c1p10
.endfields
��.{FirstCycle checkenter
.[h
                                                                                                                       @np@
�������������������������������������������������������������������������������������������������������������������������������Ŀ
�     ��室��     �   �㬬�@   �         �ਬ�砭��           �     ���室��     �   �㬬�@   �          �ਬ�砭��          �
�     ���㬥��      �&&&&&&& @@@@�                              �     ���㬥��      �&&&&&&& @@@@�                              �
�������������������Ĵ            �                              �������������������Ĵ            �                              �
�   ���   � �����  �            �                              �   ���   � �����  �            �                              �
�������������������������������������������������������������������������������������������������������������������������������Ĵ
�    1     �   2    �     3      �             4                �    5     �   6    �     7      �              8               �
�������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
�@@@@@@@@@@�@@@@@@@@�&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@�&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.if LastPass
���������������������������������������������������������������������������������������������������������������������������������
.else
.end
.}��
.{SecondCycle checkenter
 .{.?Kassa_KO3_p1; .}
.if LastPrihod
 .{.?Kassa_KO3_p3; .}
 .{.?Kassa_KO3_p4; .}
 .{.?Kassa_KO3_p5; .}
.else
 .{.?Kassa_KO3_p2; .}
.end
.}
.if ToNextPage
.end
.{ThirdCycle checkenter
 .{.?Kassa_KO3_r1; .}
.if LastRashod
 .{.?Kassa_KO3_r3; .}
 .{.?Kassa_KO3_r4; .}
 .{.?Kassa_KO3_r5; .}
.else
 .{.?Kassa_KO3_r2; .}
.end
.}
.endform  //'rus_ko3_01'

!==============================================================================

.linkform 'bel_ko3_1' prototype is 'Kassa_KO3'
.group '��ୠ� ॣ����樨 ���ᮢ�� ���㬥�⮢ - ��: �ଠ 1'
.nameinlist '��ୠ� ��� �� (�ଠ 1)'
.defo landscape
.p 55
.fields
c0p3
c0p2
if(c0valpriznak > 0,
  '(������������ �ਤ��᪮�� ���, ���ࠧ�������, ���樠��, 䠬���� �������㠫쭮�� �।�ਭ���⥫�)',
  '(������������ �ਤ��᪮�� ���, ���ࠧ�������, ���樠��, 䠬���� �������㠫쭮�� �।�ਭ���⥫�, ������, �������)')

c0p2
if(c0valpriznak > 0,
  '(������������ �ਤ��᪮�� ���, ���ࠧ�������, ���樠��, 䠬���� �������㠫쭮�� �।�ਭ���⥫�)',
  '(������������ �ਤ��᪮�� ���, ���ࠧ�������, ���樠��, 䠬���� �������㠫쭮�� �।�ਭ���⥫�, ������, �������)')

c0p3
 'true' : 's'
.endfields
.{?internal;(c0valpriznak = 0);   // �ଠ � �����
                                                                                           �ਫ������ 1
                                                                                           � ������樨
                                                                             � ���浪� ������� ���ᮢ��
                                                                            ����権 � ���浪� ���⮢
                                                                         �����묨 ������묨 �।�⢠��
                                                                     � �������᪨� �㡫�� �� ����ਨ
                                                                                    ���㡫��� ��������
                                                      ���⠭������� �ࠢ����� �� �� �� 31.03.2014 � 199��
��                                                                                                  ����ଠ��
.}��
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
��                                                                                          �ਫ������ 2
                                                                       � ���⠭������� �ࠢ����� �� ��
                                                                                  �� 29.03.2013�. �185��

                                                                               ����ଠ 1��
.}��
��
��



��.{?internal;(c0valpriznak = 0);   // �ଠ � �����
                                          ������ �����������
                                ��������� � ��������� �������� ���������
��                                              �� ��^�� �����


��
�� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ������������������������������������������������������������������������������������������������������
��  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��


.}��
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������


�� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ������������������������������������������������������������������������������������������������������
��  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��






                                          ������
                      ����������� ��������� � ��������� �������� ������� � ����������� ��������
��
��                                                �� ��^�� �����
��.}��
��^
��!-----------------------------------------------------------------------------------------��
.fields
! ���
c2p0
! 蠯��
c2p01
c0rubley c2p02
c2p03
c2p04 if(c0valpriznak > 0, '��室��� �थ�', '��室��� ���ᮢ��')
namep1 if(c0valpriznak > 0, '   ...   ', '�� ��㣨�') if(c0valpriznak > 0, '', '�थ�')
namep2 if(c0valpriznak > 0, '    ', '楫�')
namep3
c2p05
nump numprp1  numprp2  numprp3  numprp4
c2p06
! ���㬥��
c2p1 c2p2 sump sumprp c2p3 c2p4 c2p5
! �⮣�
sumitogop sumitogoprp sumitogoallp
 'true' : 's'
! ���
c3p0
! 蠯��
c3p01
c0rubley c3p02
c3p03
c3p04 if(c0valpriznak > 0, '��室��� �थ�', '��室��� ���ᮢ��')
namer1 if(c0valpriznak > 0, '   ...   ', '�� ��㣨�') if(c0valpriznak > 0, '', '�थ�')
namer2 if(c0valpriznak > 0, '    ', '楫�')
namer3
c3p05
numr numprr1  numprr2  numprr3  numprr4
c3p06
! ���㬥��
c3p1 c3p2 sumr sumprr c3p3 c3p4 c3p5
! �⮣�
sumitogor sumitogoprr sumitogoallr
.endfields
.{FirstCycle checkenter
.if LastPass
.else
.end
.}
.{SecondCycle checkenter
.[h
��                                                                                                                                            @np@
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
��
                                                                                                                                     ��@~@@@@@@@@@@�� �.��
��.}��
�� ���������������������������^���������������������������������������������������������������������������Ŀ
 �    ��室�� ���ᮢ�   �    ��室 @@@@@@@@@@@@@@@@@@@@@@@@@@@      ^�  ���樠��, 䠬����   �       �ਬ�砭��      �
 �          �थ�          �^                             �  ���, 㪠������� �  �                       �
 ���������������������������^����������������������������Ĵ  @~@@@@@@@@@@@@@@@@  �                       ���
�� �            �            �^ ^    �    �⮣�     �        @@@@@@        �                       �
 �    ���    �   �����    �^    ^      �              �                      �                       �
 �            �            �^              �              �                      �                       �
 ���������������������������^���������������������������������������������������������������������������Ĵ
 �     1      �      2     �^@~@@@@@@@@@@@@�@~@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@�
 ���������������������������^���������������������������������������������������������������������������Ĵ
��.]h��
 �@~@@@@@@@@@@�@~@@@@@@@@@@�.{.?Kassa_KO3_p1;&&&&&&&&&&&&&&�.}&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�
��.if LastPrihod��
 ���������������������������.{.?Kassa_KO3_p3;���������������.}���������������������������������������������������������������������������Ĵ
 �                 �����   �.{.?Kassa_KO3_p4;&&&&&&&&&&&&&&�.}&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�          X           �           X           �
 ���������������������������.{.?Kassa_KO3_p5;���������������.}�����������������������������������������������������������������������������
��.else��
 ���������������������������.{.?Kassa_KO3_p2;���������������.}���������������������������������������������������������������������������Ĵ
��.end
.}
.if ToNextPage
��^
��.end
.{ThirdCycle checkenter
.[h
��                                                                                                                                            @np@
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
��
                                                                                                                                     ��@~@@@@@@@@@@�� �.��
��.}��
�� ���������������������������^���������������������������������������������������������������������������Ŀ
 �    ���室�� ���ᮢ�   �    ���室 @@@@@@@@@@@@@@@@@@@@@@@@@@@      ^�  ���樠��, 䠬����   �      �ਬ�砭��       �
 �          �थ�          �^                             �  ���, 㪠������� �  �                       �
 ���������������������������^����������������������������Ĵ  @~@@@@@@@@@@@@@@@@  �                       ���
�� �            �            �^ ^    �    �⮣�     �        @@@@@@        �                       �
 �    ���    �   �����    �^    ^      �              �                      �                       �
 �            �            �^              �              �                      �                       �
 ���������������������������^���������������������������������������������������������������������������Ĵ
 �     1      �     2      �^@~@@@@@@@@@@@@�@~@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@�
 ���������������������������^���������������������������������������������������������������������������Ĵ
��.]h��
 �@~@@@@@@@@@@�@~@@@@@@@@@@�.{.?Kassa_KO3_r1;&&&&&&&&&&&&&&�.}&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�
��.if LastRashod��
 ���������������������������.{.?Kassa_KO3_r3;���������������.}���������������������������������������������������������������������������Ĵ
 �                 �����   �.{.?Kassa_KO3_r4;&&&&&&&&&&&&&&�.}&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�          X           �           X           �
 ���������������������������.{.?Kassa_KO3_r5;���������������.}�����������������������������������������������������������������������������
��.else��
 ���������������������������.{.?Kassa_KO3_r2;���������������.}���������������������������������������������������������������������������Ĵ
��.end
��.}
��.endform  //'bel_ko3_1'

!==============================================================================

.linkform 'bel_ko3_1a' prototype is 'Kassa_KO3'
.group '��ୠ� ॣ����樨 ���ᮢ�� ���㬥�⮢ - ��: �ଠ 1-�'
.nameinlist '��ୠ� ��� �� (�ଠ 1-�)'
.defo landscape
.p 55
.var
SumAllPrih : double;
SumAllRash : double;
.endvar
.fields
c0p3
c0p2
if(c0valpriznak > 0,
  '(������������ �ਤ��᪮�� ���, ���ࠧ�������, ���樠��, 䠬���� �������㠫쭮�� �।�ਭ���⥫�)',
  '(������������ �ਤ��᪮�� ���, ���ࠧ�������, ���樠��, 䠬���� �������㠫쭮�� �।�ਭ���⥫�, ������, �������)')
c0p3
 'true' : 's'
.endfields

.begin
SumAllPrih := 0.0;
SumAllRash := 0.0;
end.
.{?internal;(c0valpriznak = 0);   // �ଠ � �����
                                                                                           �ਫ������ 2
                                                                                           � ������樨
                                                                             � ���浪� ������� ���ᮢ��
                                                                            ����権 � ���浪� ���⮢
                                                                         �����묨 ������묨 �।�⢠��
                                                                     � �������᪨� �㡫�� �� ����ਨ
                                                                                    ���㡫��� ��������
                                                      ���⠭������� �ࠢ����� �� �� �� 31.03.2014 � 199��
.}��
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
��                                                                                           �ਫ������ 2
                                                                     � ���⠭������� �ࠢ����� �� �� ��
                                                                                     29.03.2013 �. �185
.}��
��
.{?internal;(c0valpriznak = 0);   // �ଠ � ���
��                                                                                                  ����ଠ��
.}
.{?internal;(c0valpriznak > 0);
��                                                                                              ����ଠ 1-���
.}

��.{?internal;(c0valpriznak = 0);   // �ଠ � �����
��                                          ��ୠ� ॣ����樨
                                ��室��� � ��室��� ���ᮢ�� �थ஢
                                              �� ��^�� �����
��.}��


 ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����������������������������������������������������������������������������������������������������������
��  ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��










��



����
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
��                                                ������
                     ����������� ��������� � ��������� �������� ������� � ����������� ������

                                              �� ��^�� �����
��.}��
��^
!-----------------------------------------------------------------------------------------
.fields
! 蠯��
c1p0
if(c0valpriznak > 0, '�㬬�', '�㬬�,')
if(c0valpriznak > 0, '�㬬�', '�㬬�,')
if(c0valpriznak > 0, '', '�㡫��')
if(c0valpriznak > 0, '', '�㡫��')
! ���㬥��
c1p1 c1p2 c1p3 c1p4 c1p5 c1p6 c1p7 c1p8 c1p9 c1p10

string(SumAllPrih,15,2) string(SumAllRash,15,2)
.endfields
.{FirstCycle checkenter
.[h
��                                                                                                                                                                                     @np@��
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
��
��                                                                                                                                                                         ��@~@@@@@@@@@@�� �.
.}��
��  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
  �   ��室�� ���ᮢ�    �                  �  ���樠��, 䠬����   �                      �   ���室�� ���ᮢ�    �                  �  ���樠��, 䠬����   �                      �
  �          �थ�          �      @@@@@@      �  ���, 㪠������� �  �      �ਬ�砭��      �          �थ�          �      @@@@@@      �  ���, 㪠������� �  �      �ਬ�砭��      �
  �������������������������Ĵ      @@@@@@      �  ��室��� ���ᮢ��  �                      �������������������������Ĵ      @@@@@@      �  ��室��� ���ᮢ��  �                      �
  �    ���    �   �����    �                  �        �थ�        �                      �    ���    �   �����    �                  �        �थ�        �                      �
  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
  �     1      �     2      �        3         �          4           �          5           �     6      �     7      �        8         �          9           �          10          �
  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
  �@~@@@@@@@@@@�@~@@@@@@@@@@�&&&&&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@�@~@@@@@@@@@@�&&&&&&&&&&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�
.begin
  if c1p3 <> ''
    SumAllPrih := SumAllPrih + double(c1p3);
  if c1p8 <> ''
    SumAllRash := SumAllRash + double(c1p8);
end.
.if LastPass
��.{?internal;(c0valpriznak > 0);   // �ଠ � �����࠭��� �������
  ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.{?internal;(c0valpriznak = 0);   // �ଠ�� � ���
��  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
  ��⮣�                    �&&&&&&&&&&&&&&&&&&�          X           �           X          ��⮣�                    �&&&&&&&&&&&&&&&&&&�                      �                      �
  �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.else
��  �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.end��
.}
.{SecondCycle checkenter
 .{.?Kassa_KO3_p1; .}
.if LastPrihod
 .{.?Kassa_KO3_p3; .}
 .{.?Kassa_KO3_p4; .}
 .{.?Kassa_KO3_p5; .}
.else
 .{.?Kassa_KO3_p2; .}
.end
.}
.if ToNextPage
.end
.{ThirdCycle checkenter
 .{.?Kassa_KO3_r1; .}
.if LastRashod
 .{.?Kassa_KO3_r3; .}
 .{.?Kassa_KO3_r4; .}
 .{.?Kassa_KO3_r5; .}
.else
 .{.?Kassa_KO3_r2; .}
.end
.}
.endform  //'bel_ko3_1a'

!==============================================================================
