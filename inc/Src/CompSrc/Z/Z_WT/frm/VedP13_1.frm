.LinkForm 'TABT13_P13_01' Prototype is 'TabT13'
.NameInList ' ������ ���i�� ������⠭�� ஡�箣� ��� (��ଠ �-13)'
.group '�-13'
.DEFP PA4
.DEFO LANDSCAPE
.PAPER PA4
.ORIENT LANDSCAPE
.p 56
.var
  FirstLine:Boolean
  AnFirstLine: boolean;
  LineCount:Integer
  LinesPerPage:Integer
  lShow_Analitik: boolean;
.endvar
.create view vTable
  select
    KatOrg.OKPO
  from
    KatOrg
  where ((
    coGetTune('MyOrg')     == KatOrg.NRec
   ));
.fields
  Pred
  KatOrg.OKPO
  Replace(Podr, '��� ��� ���ࠧ�������', '�� ��i� �i�஧�i���')
  '������ ���i�� ������⠭�� ஡�箣� ��� �� ���i�� � ' + PeriodBeginning + ' �� ' + PeriodEnding

  Day_1 Day_2 Day_3 Day_4 Day_5 Day_6 Day_7 Day_8 Day_9 Day_10 Day_11 Day_12 Day_13 Day_14 Day_15
  Day_16 Day_17 Day_18 Day_19 Day_20 Day_21 Day_22 Day_23 Day_24 Day_25 Day_26 Day_27 Day_28 Day_29 Day_30 Day_31

  AnalitikName

  D1  D2  D3  D4  D5  D6  D7  D8  D9  D10 D11 D12 D13 D14 D15
  ���_���_���
  VidOpl1
  �������1
  Day1
  Chas1
  VidOpl2
  �������2
  Day2
  Chas2
  KodNejavki1
  DayNejavok1
  ChasNejavok1
  KodNejavki2
  DayNejavok2
  ChasNejavok2
  Npp
  TabN
  LogicSubStr(GetSurnameWithInitials(FIO), 22, false, false)
  �����_���
  Ch1
  Ch2
  Ch3
  Ch4
  Ch5
  Ch6
  Ch7
  Ch8
  Ch9
  Ch10
  Ch11
  Ch12
  Ch13
  Ch14
  Ch15
  ���_���_���
  VidOpl3
  �������3
  Day3
  Chas3
  VidOpl4
  �������4
  Day4
  Chas4
  KodNejavki3
  DayNejavok3
  ChasNejavok3
  KodNejavki4
  DayNejavok4
  ChasNejavok4
  LogicSubStr(Dolg, 22, true, true)
  LogicSubStr(Dolg, 22, true, true)
  D16  D17  D18  D19  D20  D21  D22  D23  D24  D25  D26  D27  D28  D29  D30  D31
  ���_���_���
  VidOpl5
  �������5
  Day5
  Chas5
  VidOpl6
  �������6
  Day6
  Chas6
  KodNejavki5
  DayNejavok5
  ChasNejavok5
  KodNejavki6
  DayNejavok6
  ChasNejavok5
  LogicSubStr(Dolg, 22, true, true)
  �����_���
  Ch16
  Ch17
  Ch18
  Ch19
  Ch20
  Ch21
  Ch22
  Ch23
  Ch24
  Ch25
  Ch26
  Ch27
  Ch28
  Ch29
  Ch30
  Ch31
  ���_���_���
  VidOpl7
  �������7
  Day7
  Chas7
  VidOpl8
  �������8
  Day8
  Chas8
  KodNejavki7
  DayNejavok7
  ChasNejavok7
  KodNejavki8
  DayNejavok8
  ChasNejavok8
.endfields
.if Show_Analitik
.begin
  lShow_Analitik := true;
end.
.else
.begin
  lShow_Analitik := false;
end.
.end
.{ checkenter
.{table 'vTable: main' by vTable.KatOrg.NRec
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                           �������� �ଠ N �-13��
                   �i�����⢮, �࣠�i����                                                                                                                               �����������
                               �������������������������������Ŀ                                                                                                           ������� �i����� ������
I�����i���i���� ��� ������    �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                                                                                                           �i� 9 ����� 1995 �. N 253
                               ���������������������������������

���, �i��i� ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                                                                                                                                         �������Ŀ
                                                                                                                                                                                             ��� �� ���� �       �
�ਣ���     ��                                                    ��                                                                                                                                         �����������
.}

��                                                                                                                                                                 �����������������������������������������������Ŀ
                                                                                                                                                                 �     ���      �   ���,   �          � �ਣ���  �
                                                                                                                                                                 �஧��㭪������  �i��i�  �          �          �
                                                                                                                                                                 �    �i����    �          �          �          �
                                                                                                                                                                 �����������������������������������������������Ĵ
 ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� �              �          �          �          �
                                                                                                                                                                 �������������������������������������������������
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�����ຒ����쭨��   ��i����, i�'�,    �    �i��i⪨ �� � � ��� �� ஡��� �� �᫠� �i����     ��i����쮢����          ���i ��� ����㢠��� ��஡i⭮� ����          �   �       ��� � ��稭       �
���   ������    �     �� ���쪮�i      �                                                               �             �            �� ������ � ���ࠢ����ﬨ �����            �   �                             �
���-  �         �                      ���������������������������������������������������������������������������������������������������������������������������������������Ķ   �����������������������������Ķ
���- �         �                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �I-��  ��i����                     ��� ���� �����                     �   �������i��������������i��������
����  �         �                      � &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� � ������.�      ���������������������������������������������������������Ķ   �   �   �      �   �   �      �
�     �         �   ����i�, ��ᠤ�   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   ��i����      ���������������������������������������������������������Ķ   �   �   �      �   �   �      �
�     �         �                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      �      �            ���ᯮ����稩 ��㭮�, ����������           �   �   �   �      �   �   �      �
�     �         �                      ���������������������������������������������������������������������������������������������������������������������������������������Ķ   �   �   �      �   �   �      �
�     �         �                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �     ��i     ���������������������������������������������������������Ķ   �   �   �      �   �   �      �
�     �         �                      � &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&�������������Ķ���   �����-   ���i, ����������   �����-   ���i, �������   �   �   �      �   �   �      �
�     �         �                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �    ������   �����  �������稩�           �����  �������稩�           �   �   �   �      �   �   �      �
�     �         �                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �             �����⨳��㭮�  �           �����⨳��㭮�  �           �   �   �   �      �   �   �      �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ķ
�  1  �    2    �           3          �                              4                                �   5  �   6  �  7   �     8   �     9     �  10  �    11   �   12      �13 �14 �15 �  16  �17 �18 �  19  �
��.{?internal; lShow_Analitik;
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.}
.{?internal; not lShow_Analitik;
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹
��.}��
��.begin
  FirstLine := true;
  LineCount := 33;
  LinesPerPage := 56;
end.
.{
.{?internal; lShow_Analitik;
.begin
  //������ 㬥����� ��� �����⨪� � ��� �� ���� ⠡���� �����
  LineCount := LineCount + if (FirstLine, 9, 10);
end.
.{?internal;(LineCount > LinesPerPage - 1);
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ��
.begin
  LineCount := LineCount - if (FirstLine, 9, 10) + 1;
end.
.{ while (LineCount < LinesPerPage)
!�������� ����묨 ��ப��� �� ���� ��࠭���

.begin
  LineCount := LineCount + 1;
end.
.}
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�  1  �    2    �           3          �                              4                                �   5  �   6  �  7   �     8   �     9     �  10  �    11   �   12      �13 �14 �15 �  16  �17 �18 �  19  �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.begin
  FirstLine := true;
  LineCount := 10;
end.
.}
.{?internal;not FirstLine;
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹
��.}
��� ����i⨪�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.begin
  AnFirstLine := True;
  //����⠭���� ���稪 �� ���⮬ �����⨪�
  LineCount := LineCount - if (FirstLine, 7, 8);
end.
.}��
.{��
.begin
  //� ��⮬ ࠧ����⥫쭮� ����� ����� ����묨 �� ��� ⠡���� ����ࠬ (FirstLine = false), ��� ���
  LineCount := LineCount + if (FirstLine, 7, 8);
end.
.{?internal;(LineCount > LinesPerPage - 1)
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ��
.begin
  LineCount := LineCount - if (FirstLine, 7, 8) + 1;
end.
.{ while (LineCount < LinesPerPage)

.begin
  LineCount := LineCount + 1;
end.
.}
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�  1  �    2    �           3          �                              4                                �   5  �   6  �  7   �     8   �     9     �  10  �    11   �   12      �13 �14 �15 �  16  �17 �18 �  19  �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.begin
  FirstLine := true;
  LineCount := 10;
end.
.}
.{?internal;��(not FirstLine) ��and (not AnFirstLine);��
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.}
���     �         �                      �@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@� � �&&&.&&�      �@@@@@@�@@@@@@@@@�&&.& &&&.&&�@@@@@@�@@@@@@@@@�&&.& &&&.&&�   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&�
�&&&&&�@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@����������������������������������������������������������������������Ĵ&&&.&&����������������Ĵ           ����������������Ĵ           �   �����������������������������Ķ
�     �         �                      �&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&� � �&&&.&&�      �@@@@@@�@@@@@@@@@�&&.& &&&.&&�@@@@@@�@@@@@@@@@�&&.& &&&.&&�   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&�
�     �         �@@@@@@@@@@@@@@@@@@@@@@���������������������������������������������������������������������������������������������������������������������������������������Ķ   �����������������������������Ķ
�     �         �@@@@@@@@@@@@@@@@@@@@@@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�&&&.&&�      �@@@@@@�@@@@@@@@@�&&.& &&&.&&�@@@@@@�@@@@@@@@@�&&.& &&&.&&�   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&�
�     �         �@@@@@@@@@@@@@@@@@@@@@@����������������������������������������������������������������������Ĵ&&&.&&����������������Ĵ           ����������������Ĵ           �   �����������������������������Ķ
�     �         �                      �&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&&&.&&�      �@@@@@@�@@@@@@@@@�&&.& &&&.&&�@@@@@@�@@@@@@@@@�&&.& &&&.&&�   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&���
.begin
  FirstLine := false;
  AnFirstLine := false;
end.
.}
��.}��
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ

�����쭨� (������) _________________________________________________                             ��砫쭨� ��� (�i��i��), �i�쭨�i�� ��_________________________________________________��
.begin
  LineCount := if((LineCount + 3) > LinesPerPage, LineCount + 3 - LinesPerPage, LineCount + 3);
end.
.{ while (LineCount < LinesPerPage)
!�������� ����묨 ��ப��� �� ���� ��࠭���

.begin
  LineCount := LineCount + 1;
end.
.}
.{ checkenter FirstPage
.}
.}
.endform
