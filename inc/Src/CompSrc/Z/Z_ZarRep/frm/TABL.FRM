��/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ��ࠡ�⭠� ����                                          �
 � �����        : 5.00                                                      �
 � �����祭��    : ���� ��������� ��।������                             �
 � �⢥��⢥��� : ��᫠���� ����ﭠ �������஢��                            �
 � ���������     : �� ���ᨬ ������쥢��  17-04-98                          �
 �       ����    : ��������� ����� ��ࠡ�⠭��� �ᮢ � ����                �
 �                 ���� � ࠧ१� ����権 �뭥ᥭ � �⤥���� ���        �
 ���������������������������������������������������������������������������ͼ
*/
#doc
���� ��������� ��।������
#end
.set name='tabl'
.hide
.fields
 Pred
 Podr
 Zagl
 Dat1 Dat2
 accountant
 Head
 Str01
 Str1
 Str2
 Str3 Podr0 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str04
 Str4
 Kateg
 Vid  Naim  Sum0  Sum1  Sum2  Sum3  Sum4  Sum5  Sum6  Sum7  Sum8  Sum9  Sum10  Sum11  Sum12
 Day0 Chasf0  Day1 Chasf1  Day2 Chasf2 Day3 Chasf3  Day4 Chasf4 Day5 Chasf5  Day6 Chasf6 Day7 Chasf7
 Day8 Chasf8 Day9 Chasf9  Day10 Chasf10 Day11 Chasf11 Day12 Chasf12
 Str05
 Str5
 IStr INaim ISum0 ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay0 IChasf0 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
 pStr pNaim pSum0 pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
 dStr dNaim dSum0 dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
 PredKod PredName
.endfields
------- ��������� ��� -------
 Pred ^
 Podr ^
 Zagl ^
 Dat1 ^ Dat2 ^
 accountant ^
------- ���� ��������� ��� ------
.{ cy1
.{ cy2
------ ����� ⠡����  -------
   Head=^
   Str01=^
   Str1=^
   Str2=^
   Str3=^
   Podr0=^  Podr1=^ Podr2=^ Podr3=^  Podr4=^   Podr5=^ Podr6=^  Podr7=^ Podr8=^ Podr9=^  Podr10=^  Podr11=^  Podr12=^
   Str04=^
   Str4=^
------- ����� 蠯�� ⠡���� ------
------- ��⥣��� ------
   Kateg=^
------- ����� ��⥣�ਨ ------
.if cy3
.{
 ------ ����ﭭ� 横� ��� ��ப ⠡���� ------
 Vid=^ Naim=^ Sum0=^
 Sum1=^  Sum2=^ Sum3=^ Sum4=^ Sum5=^ Sum6=^ Sum7=^  Sum8=^ Sum9=^ Sum10=^ Sum11=^ Sum12=^
.if VNachCex
-------- ࠧ��� ��� ���� �ᮢ � ���� ------
 Day0=^   Chasf0=^
 Day1=^   Chasf1=^
 Day2=^   Chasf2=^
 Day3=^   Chasf3=^
 Day4=^   Chasf4=^
 Day5=^   Chasf5=^
 Day6=^   Chasf6=^
 Day7=^   Chasf7=^
 Day8=^   Chasf8=^
 Day9=^   Chasf9=^
 Day10=^  Chasf10=^
 Day11=^  Chasf11=^
 Day12=^  Chasf12=^
 ------  ����� ࠧ���� ��� ���� �ᮢ � ���� -----
.end
 Str05=^
 Str5=^
 -----  ����� 横�� ��� ��ப ---
.}
.end
�������� �����:
 IStr=^   INaim=^  ISum0=^
 ISum1=^  ISum2=^  ISum3=^  ISum4=^  ISum5=^   ISum6=^
 ISum7=^  ISum8=^  ISum9=^  ISum10=^ ISum11=^  ISum12=^
 ------ ����� �㬬 �⮣���� -------
.if VNachItog1
����� ����� � ����:
 IDay0=^  IChasf0=^
 IDay1=^  IChasf1=^
 IDay2=^  IChasf2=^
 IDay3=^  IChasf3=^
 IDay4=^  IChasf4=^
 IDay5=^  IChasf5=^
 IDay6=^  IChasf6=^
 IDay7=^  IChasf7=^
 IDay8=^  IChasf8=^
 IDay9=^  IChasf9=^
 IDay10=^ IChasf10=^
 IDay11=^ IChasf11=^
 IDay12=^ IChasf12=^
 ----- ����� �⮣�� �� �ᠬ ------
.end
.if Saldo
 ----- ࠧ��� ����� �� ࠡ�⭨��� ��� ᠫ줮 -----
 pStr=^ pNaim=^ pSum0=^
 pSum1=^ pSum2=^ pSum3=^ pSum4=^ pSum5=^ pSum6=^ pSum7=^ pSum8=^ pSum9=^ pSum10=^ pSum11=^ pSum12=^
  ----- ����� ࠧ���� ����� �� ࠡ�⭨��� ��� ᠫ줮 -----
.end
 ----- ࠧ��� ����� �� �।���⨥� ��� ᠫ줮 -----
.if DolgPred
 dStr=^ dNaim=^ dSum0=^
 dSum1=^ dSum2=^ dSum3=^ dSum4=^ dSum5=^ dSum6=^ dSum7=^ dSum8=^ dSum9=^ dSum10=^ dSum11=^ dSum12=^
  ----- ����� ࠧ���� ����� �� ࠡ�⭨��� ��� ᠫ줮 -----
.end
.}
----- ��᫥ 横�� ��2  -----
.}
----- ����� ���ࠧ�������  ----
.{ cy4
 PredKod=^ PredName=^
.}

.endform



.linkform 'tabl_01' prototype is 'tabl'
.nameinlist '������ �ଠ ��饩 ��������'
.group '�⠭���⭠�'
.fields
CommonFormHeader
.endfields
^
.fields
 Pred Podr Zagl Dat1 Dat2
 Str1
 Str2
 Str3 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str4
.endfields

 �।���⨥ ^
  ^
     ^
       �� ��ਮ� � ^ �� ^  �.

.{ cy1
.{ cy2
���������������������������������@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@�     ������������       �      ���ࠧ�������
@@@@@@@�                        �      &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&
���������������������������������^
.if cy3
.{
.fields
 Vid  Naim Sum1  Sum2  Sum3  Sum4  Sum5  Sum6  Sum7  Sum8  Sum9  Sum10  Sum11  Sum12
 Day1 Chasf1  Day2 Chasf2 Day3 Chasf3  Day4 Chasf4 Day5 Chasf5  Day6 Chasf6 Day7 Chasf7
 Day8 Chasf8 Day9 Chasf9  Day10 Chasf10 Day11 Chasf11 Day12 Chasf12
 Str5
.endfields
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachCex
       � ���-�� ����/�ᮢ      �&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
���������������������������������^
.}
.end
.fields
 IStr INaim ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
.endfields
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachItog1
       � ���-�� ����/�ᮢ      �&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
.if Saldo
.fields
 Str4
 pStr pNaim pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
.endfields
���������������������������������^
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
.if DolgPred
.fields
 Str4
 dStr dNaim dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
.endfields
���������������������������������^
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
������������������������������������������������������������������������������
.}
.}

.fields
 PredKod PredName
.endfields
 ���������������������������������������������������Ŀ
 ����       �  ������������                          �
 ���������������������������������������������������Ĵ
.{ cy4
 �@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.}
 �����������������������������������������������������
.fields
accountant
.endfields

��壠��� ___________ ^
.endform




.linkform 'tabl_02' prototype is 'tabl'
.nameinlist '������ �ଠ ��饩 �������� c ��㯯�஢��� ���᫥���'
.group '� ��㯯�஢��� ���᫥���'
.var boNeedHead : boolean
     boHeadPrinted : boolean
     boNeedKateg : boolean
     boPodrItog : boolean
     boNeverUsed : boolean
.endvar
.begin
  boNeedHead := true;
  boHeadPrinted := false;
  boNeedKateg := false;
  boPodrItog := false;
  boNeverUsed := false;
end.
.fields
CommonFormHeader
.endfields
^
.fields
 Pred Podr Zagl Dat1 Dat2
 Head
 Str1
 Str2
 Str3 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str4
 Kateg
.endfields

 �।���⨥ ^
  ^
     ^
       �� ��ਮ� � ^ �� ^  �.

.{ cy1
.{ cy2
.begin
  boNeedKateg := if(Kateg <> '', true, false);
  boNeedHead  := if(Head <> '', true, false);
end.
.{?internal;boNeverUsed=true;
  @@@@@@@@@
.}
.{?internal;boNeedHead=true;

���������������������������������@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@�     ������������       �      ���ࠧ�������
@@@@@@@�                        �      &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&
���������������������������������^
.}
.{?internal;boNeedKateg=true;

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.if cy3
.{
.fields
 Vid  Naim Sum1  Sum2  Sum3  Sum4  Sum5  Sum6  Sum7  Sum8  Sum9  Sum10  Sum11  Sum12
 Day1 Chasf1  Day2 Chasf2 Day3 Chasf3  Day4 Chasf4 Day5 Chasf5  Day6 Chasf6 Day7 Chasf7
 Day8 Chasf8 Day9 Chasf9  Day10 Chasf10 Day11 Chasf11 Day12 Chasf12
 Str5
.endfields
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachCex
       � ���-�� ����/�ᮢ      �&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
���������������������������������^
.}
.end
.fields
 IStr INaim ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
.endfields
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachItog1
       � ���-�� ����/�ᮢ      �&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
.if Saldo
.fields
 Str4
 pStr pNaim pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
.endfields
���������������������������������^
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
.if DolgPred
.fields
 Str4
 dStr dNaim dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
.endfields
���������������������������������^
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
������������������������������������������������������������������������������
.}
.}

.fields
 PredKod PredName
.endfields
 ���������������������������������������������������Ŀ
 ����       �  ������������                          �
 ���������������������������������������������������Ĵ
.{ cy4
 �@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.}
 �����������������������������������������������������
.fields
accountant
.endfields

��壠��� ___________ ^
.endform
!
!
!

.linkform 'tabl_03' prototype is 'tabl'
.nameinlist'�⮣���� �ଠ ��饩 �������� � ࠧ१� ���ࠧ�������'
.group '�⠭���⭠�'
.fields
CommonFormHeader
.endfields
^
.fields
 Pred Podr Zagl Dat1 Dat2
 Str1
 Str2
 Str3 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str4
 IStr INaim ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
 Str4
 pStr pNaim pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
 Str4
 dStr dNaim dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
 PredKod PredName
.endfields

  �।���⨥ ^
  ^
     ^

      �� ��ਮ� � ^ �� ^  �.

.{ cy1
.{ cy2

���������������������������������@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@�     ������������       �      ���ࠧ�������
@@@@@@@�                        �      &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&
���������������������������������^
.if cy3
.{
.if VNachCex
.end
.}
.end
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachItog1
       � ���-�� ����/�ᮢ      �&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
.if Saldo
���������������������������������^
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
.if DolgPred
���������������������������������^
@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
������������������������������������������������������������������������������
.}
.}
 ����������������������������������������������������Ŀ
 ����        �  ������������                          �
 ����������������������������������������������������Ĵ
.{ cy4
 �@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.}
 ������������������������������������������������������
.fields
accountant
.endfields

��壠��� ___________ ^

.endform��
