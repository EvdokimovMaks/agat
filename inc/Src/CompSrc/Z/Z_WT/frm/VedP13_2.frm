.LinkForm 'TABT13_P13_02' Prototype is 'TabT13'
.NameInList ' ������ ���i�� ������⠭�� ஡�箣� ��� (��ଠ �-13) (᮪�饭���)'
.group '�-13'
.DEFP PA4
.DEFO LANDSCAPE
.PAPER PA4
.ORIENT LANDSCAPE
.p 56
.var
  FirstLine:Boolean;
  AnFirstLine: boolean;
  LineCount:Integer;
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
!.{table 'vTable: main' by vTable.KatOrg.NRec
  Pred
  KatOrg.OKPO
  Replace(Podr, '��� ��� ���ࠧ�������', '�� ��i� �i�஧�i���')
!.}
  '������ ���i�� ������⠭�� ஡�箣� ��� �� ���i�� � ' + PeriodBeginning + ' �� ' + PeriodEnding
!.{
! ��ப� 1
  Day_1 Day_2 Day_3 Day_4 Day_5 Day_6 Day_7 Day_8 Day_9 Day_10 Day_11 Day_12 Day_13 Day_14 Day_15
  Day_16 Day_17 Day_18 Day_19 Day_20 Day_21 Day_22 Day_23 Day_24 Day_25 Day_26 Day_27 Day_28 Day_29 Day_30 Day_31

  AnalitikName

  Npp
  TabN
  LogicSubStr(GetSurnameWithInitials(FIO), 22, false, false)
  D1
  D2
  D3
  D4
  D5
  D6
  D7
  D8
  D9
  D10
  D11
  D12
  D13
  D14
  D15
  D16
  D17
  D18
  D19
  D20
  D21
  D22
  D23
  D24
  D25
  D26
  D27
  D28
  D29
  D30
  D31
  �����_���
  KodNejavki1
  DayNejavok1
  ChasNejavok1
  KodNejavki2
  DayNejavok2
  ChasNejavok2
! ��ப� 2
  LogicSubStr(Dolg, 22, true, true)
  KodNejavki3
  DayNejavok3
  ChasNejavok3
  KodNejavki4
  DayNejavok4
  ChasNejavok4
! ��ப� 3
  LogicSubStr(Dolg, 22, true, true)
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
  �����_���
  KodNejavki5
  DayNejavok5
  ChasNejavok5
  KodNejavki6
  DayNejavok6
  ChasNejavok5
!.}
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
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                       ������ �ଠ N �-13
                   �i�����⢮, �࣠�i����                                                                                                                           �����������
                               �������������������������������Ŀ                                                                                                       ������� �i����� ������
I�����i���i���� ��� ������    �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                                                                                                       �i� 9 ����� 1995 �. N 253
                               ���������������������������������

���, �i��i� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                                                   �������Ŀ
                                                                                                                                                                                         ��� �� ���� �       �
�ਣ���                                                                                                                                                                                              �����������
.}

��                                                                                                                                                             �����������������������������������������������Ŀ
                                                                                                                                                             �     ���      �   ���,   �          � �ਣ���  �
                                                                                                                                                             �஧��㭪������  �i��i�  �          �          �
                                                                                                                                                             �    �i����    �          �          �          �
                                                                                                                                                             �����������������������������������������������Ĵ
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �              �          �          �          �
                                                                                                                                                             �������������������������������������������������
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�  �  ������쭨��   ��i����, i�'�,    �                                  �i��i⪨ �� � � ��� �� ஡��� �� �᫠� �i����                                   ���쮣� �   �       ��� � ��稭       �
� �/� ������    �     �� ���쪮�i      ���������������������������������������������������������������������������������������������������������������������������Ķ  ��i  �   �����������������������������Ķ
�     �         �   ����i�, ��ᠤ�   � &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&� &&������� �   �������i��������������i��������
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ķ
�  1  �    2    �           3          �                                                             4                                                             �   5   � 6 � 7 � 8 �   9  �10 �11 �  12  �
��.{?internal; lShow_Analitik;
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.}
.{?internal; not lShow_Analitik;
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹
��.}��
��.begin
  FirstLine := true;
  LineCount := 24;
  LinesPerPage := 56;
end.
.{
.{?internal; lShow_Analitik;
.begin
  //������ 㬥����� ��� �����⨪� � ��� �� ���� ⠡���� �����
  LineCount := LineCount + if (FirstLine, 5, 6);
end.
.{?internal;(LineCount > LinesPerPage - 1);
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ��
.begin
  LineCount := LineCount - if (FirstLine, 5, 6) + 1;
end.
.{ while (LineCount < LinesPerPage)
!�������� ����묨 ��ப��� �� ���� ��࠭���

.begin
  LineCount := LineCount + 1;
end.
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�  1  �    2    �           3          �                                            4                                                                              �   5   � 6 � 7 � 8 �   9  �10 �11 �  12  �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹
��.begin
  FirstLine := true;
  LineCount := 10;
end.
.}
.{?internal;not FirstLine;
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.}
��� ����i⨪�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.begin
  AnFirstLine := True;
  //����⠭���� ���稪 �� ���⮬ �����⨪�
  LineCount := LineCount - if (FirstLine, 3, 4);
end.
.}��
.{��
.begin
  //� ��⮬ ࠧ����⥫쭮� ����� ����� ����묨 �� ��� ⠡���� ����ࠬ (FirstLine = false), ��� ���
  LineCount := LineCount + if (FirstLine, 3, 4);
end.
.{?internal;(LineCount > LinesPerPage - 1)
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ��
.begin
  LineCount := LineCount - if (FirstLine, 3, 4) + 1;
end.
.{while (LineCount < LinesPerPage)

.begin
  LineCount := LineCount + 1;
end.
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�  1  �    2    �           3          �                                                             4                                                             �   5   � 6 � 7 � 8 �   9  �10 �11 �  12  �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.begin
  FirstLine := true;
  LineCount := 6;
end.
.}
.{?internal;��(not FirstLine) ��and (not AnFirstLine)��;��
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹��
.}
���&&&&&�@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�@~@�&&&&.&&�   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&�
�     �         �@@@@@@@@@@@@@@@@@@@@@@�����������������������������������������������������������������������������������������������������������������������������������Ķ   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&�
�     �         �@@@@@@@@@@@@@@@@@@@@@@�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&.&�&&&&.&&�   �@~@�&&&�&#&.&&�@~@�&&&�&#&.&&���
.begin
  FirstLine := false;
  AnFirstLine := false;
end.
.}
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ

�����쭨� (������) _________________________________________________                             ��砫쭨� ��� (�i��i��), �i�쭨�i _________________________________________________��
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
