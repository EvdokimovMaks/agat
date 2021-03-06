//******************************************************************************
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 7.12 - ��ࠡ�⭠� ����
//******************************************************************************

#doc
  ������ ��� �ᯮ�짮����� ࠡ�祣� �६��� � ���� ��ࠡ�⭮� �����
  (������� �ଠ � �-12, 3-� ��࠭��).
#end
.form 'UnifiedFormT12_ThirdPage'
.hide
.fields
  LinesPerPage: integer
  EnumeratePages: boolean
  ������୮�_���ࠧ�������
  ChargeCode1 ChargeName1
  ChargeCode2 ChargeName2
  ChargeCode3 ChargeName3
  ChargeCode4 ChargeName4
  ChargeCode5 ChargeName5

  TabN
  Tariff: double
  Category
  PostName
  PostCode
  WorkCond
  Razr
  Account1 Sum1 HD1 Sum2 HD2 Sum3 HD3 Sum4 HD4 Sum5 Percent
  ChargeCode6 Account6 Sum6 HD6

.endfields
 ^^^
 ^^
 ^^
 ^^
 ^^
 ^^
.{ tabt12_3 checkenter
 ^^^^^^^ ^^^ ^^ ^^ ^^ ^^ ^^^^
.} //tabt12_3l
.endForm

.linkform 'UnifiedFormT12_ThirdPage_link' prototype is 'UnifiedFormT12_ThirdPage'
.group '�12'
.nameinlist '3-� ��࠭��'
.var
  FirstLine:        boolean;
  LineCount:        integer;
  LastTabN:         string;
  Beginning:        boolean;
  DelimiterNeeded:  boolean;
  ChargeName1Str:   string;
  ChargeName2Str:   string;
  ChargeName3Str:   string;
  ChargeName4Str:   string;
  ChargeName5Str:   string;

  Account1Str:      string;
  Account6Str:      string;

  HD1Str:           string;
  HD2Str:           string;
  HD3Str:           string;
  HD4Str:           string;
  HD6Str:           string;
  PageNum:          integer;
  TabNStr:          string;
.endvar
.begin
  ChargeName1Str := ChargeName1;
  ChargeName2Str := ChargeName2;
  ChargeName3Str := ChargeName3;
  ChargeName4Str := ChargeName4;
  ChargeName5Str := ChargeName5;
  PageNum := 1;
  LineCount := 0;
end.
��.{?internal;(EnumeratePages);
.fields
  pagenum
.endfields
                                                                                                                                                                                                                        ���� &&
.begin
  LineCount := LineCount+1;
  PageNum := PageNum + 1;
end.
.}
.fields
  ChargeCode1
  ChargeCode2
  ChargeCode3
  ChargeCode4
  ChargeCode5
  LogicSubStr(ChargeName1Str, 17, true, true)
  LogicSubStr(ChargeName2Str, 17, true, true)
  LogicSubStr(ChargeName3Str, 17, true, true)
  LogicSubStr(ChargeName4Str, 17, true, true)
  LogicSubStr(ChargeName5Str, 17, true, true)
.endfields
2. ����� � ���ᮭ���� �� ����� ��㤠                                                                                                                                                                3-� ��࠭�� ��� N �-12
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�������� ����䭠�   �                                                            ��� ������                                                                         �                      ��稥                          �
������     ��⠢��     ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ķ
�          �(�ᮢ��,  �                                       ����@@@@�               ����@@@@�               ����@@@@�               ����@@@@�               ����@@@@����   �����ᯮ������騩 ��� �   �㬬�,    �  ���   �
�          ��������),  ���@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� ����Ĵ��@@@@@@@@@@@@@@@@@�� ����Ĵ��@@@@@@@@@@@@@@@@@�� ����Ĵ��@@@@@@@@@@@@@@@@@�� ����Ĵ��@@@@@@@@@@@@@@@@@�� ����Ķ������                       �    ��.     �  (���)  �
�          �(�����)    �              ������������                     �  ������������         �  ������������         �  ������������         �  ������������         �      �                       �             �         �
�          ���.       �����������������������������������������������������������������������������������������������������������������������������������������������Ķ      �                       �             �         �
�          �           �                                                       ����ᯮ������騩 ���                                                                  �      �                       �             �         �
�          �           �����������������������������������������������������������������������������������������������������������������������������������������������Ķ      �                       �             �         �
�          �           �                       �                       �                       �                       �                       �                       �      �                       �             �         �
�          �           �����������������������������������������������������������������������������������������������������������������������������������������������Ķ      �                       �             �         �
�          �           �����ᯮ������騩 ��� �   �㬬�,    �  ���   �   �㬬�,    �  ���   �   �㬬�,    �  ���   �   �㬬�,    �  ���   �   �㬬�,    � ��業� �      �                       �             �         �
�          �           �                       �    ��.     �  (���)  �    ��.     �  (���)  �    ��.     �  (���)  �    ��.     �  (���)  �    ��.     �         �      �                       �             �         �
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ķ
�   18     �    19     �           20          �      21     �    22   �     23      �    24   �      25     �    26   �     27      �    28   �     29      �    30   �  31  �          32           �      33     �    34   �
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹
.begin
  FirstLine := true;
  LineCount := LineCount + 17;
end.
.{ tabt12_3 checkenter
.begin
  Beginning := true;
  Account1Str := Account1;
  Account6Str := Account6;
  TabNStr := TabN;

  HD1Str := HD1;
  HD2Str := HD2;
  HD3Str := HD3;
  HD4Str := HD4;
  HD6Str := HD6;
end.
.{ while (length(Account1Str) > 0) or (length(HD1Str) > 0) or (length(HD2Str) > 0) or (length(HD3Str) > 0) or (length(HD4Str) > 0) or (length(Account6Str) > 0) or (length(HD6Str) > 0) or ((length(TabNStr) > 0) and (TabN <> TabNStr))
.begin
  // �㦭� �� �ᯥ���� ࠧ����⥫� ����� ����묨 �� ��� ⠡���� ����ࠬ
  DelimiterNeeded := not FirstLine and (TabN <> LastTabN)
end.
! �㦭� �ᯥ���� ࠧ����⥫� � ���� ���� �� ��࠭�� ��� ��� ���� � �����
! ��ப� � ����묨 (��᫥���� ��ப� �������� ��������)
.{?internal; DelimiterNeeded and (LineCount < LinesPerPage - 2)
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ķ
.begin
  LineCount := LineCount + 1;
  // �����⠫� � ���뫨
  DelimiterNeeded := false;
end.
.}
.begin
  LineCount := LineCount + 1;
end.
! ��� ���� ��� ���� ���� ����� ��ப� ������, ���� �� 墠⠥� ���� ���
! ࠧ����⥫� � ��ப� � ����묨
.{?internal;(LineCount >= LinesPerPage) or DelimiterNeeded and (LineCount >= LinesPerPage - 1)
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ
.{ while (LineCount < LinesPerPage)

.begin
  LineCount := LineCount + 1;
end.
.}
.begin
LineCount:=0;
end.
.{?internal;(EnumeratePages);
.fields
  pagenum
.endfields
                                                                                                                                                                                                                        ���� &&
.begin
  LineCount := LineCount+1;
  PageNum := PageNum + 1;
end.
.}
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͻ
�   18     �    19     �           20          �      21     �    22   �     23      �    24   �      25     �    26   �     27      �    28   �     29      �    30   �  31  �          32           �      33     �    34   �
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������͹
.begin
  FirstLine := true;
  LineCount := LineCount + 4;
end.
.}
.{?internal;Beginning
.fields
  if (TabN = LastTabN, '', LogicSubStr(TabNStr, 10, true, true))
  if (TabN = LastTabN, '', string(Tariff))
  LogicSubStr(Account1Str, 23, true, true)
  Sum1
  LogicSubStr(HD1Str, 9, true, true)
  Sum2
  LogicSubStr(HD2Str, 9, true, true)
  Sum3
  LogicSubStr(HD3Str, 9, true, true)
  Sum4
  LogicSubStr(HD4Str, 9, true, true)
  Sum5
  Percent
  ChargeCode6
  LogicSubStr(Account6Str, 23, true, true)
  Sum6
  LogicSubStr(HD6Str, 9, true, true)
.endfields
�@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&&&.&&�@@@@@@@@@�&#&&&&&&&&.&&�@@@@@@@@@�&#&&&&&&&&.&&�@@@@@@@@@�&#&&&&&&&&.&&�@@@@@@@@@�&#&&&&&&&&.&&�&#&&&&.&&�@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�&#&&&&&&&&.&&�@@@@@@@@@�
.}
.{?internal;not Beginning
.fields
  if (TabNStr = TabN, '', LogicSubStr(TabNStr, 10, true, true))
  LogicSubStr(Account1Str, 23, true, true)
  LogicSubStr(HD1Str, 9, true, true)
  LogicSubStr(HD2Str, 9, true, true)
  LogicSubStr(HD3Str, 9, true, true)
  LogicSubStr(HD4Str, 9, true, true)
  LogicSubStr(Account6Str, 23, true, true)
  LogicSubStr(HD6Str, 9, true, true)
.endfields
�@@@@@@@@@@�           �@@@@@@@@@@@@@@@@@@@@@@@�             �@@@@@@@@@�             �@@@@@@@@@�             �@@@@@@@@@�             �@@@@@@@@@�             �         �      �@@@@@@@@@@@@@@@@@@@@@@@�             �@@@@@@@@@�
.}
.begin
  LastTabN := TabN;
  FirstLine := false;
  Beginning := false;
end.
.}
.} //tabt12_3
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ͼ��
.endform
