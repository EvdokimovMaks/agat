/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,99 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����⨢�� ������                                        �
 � �����        : 7.12                                                      �
 � �����祭��    : ��������� ������ �ࠣ��⠫��� � ᪫��᪮� ���.         �
 � �⢥��⢥��� : �������᪨� ����਩ �������஢��                          �
 ���������������������������������������������������������������������������ͼ
*/
#include Commission.frn
#doc
��������� ������ �ࠣ��⠫��� � ᪫��᪮� ���.
#end
.Form 'InvDrag'
.Hide
.Var
 dragFormat :string;
.endVar

.Fields
#CommissionFields
 OrgName  : string
 DateNal  : date
 cPodr1   : comp PodrName1: string
 cMOL1    : comp MOLFIO1  : string MOLDolg1 : string
 cMOL2    : comp MOLFIO2  : string MOLDolg2 : string
 cMOL3    : comp MOLFIO3  : string MOLDolg3 : string
 NameDrag1 :string NameDrag2 : string NameDrag3 : string NameDrag4 : string NameDrag5 : string
 NameDrag6 :string NameDrag7 : string NameDrag8 : string NameDrag9 : string NameDrag10 : string
 cMC     : comp sBarKod      : string sNameMC   : string
 cEdIzm  : comp sEdIzm       : string sKodEdIzm : string
 cPodr   : comp sNamePodr    : string
 cMOL    : comp sNameMOL     : string
 cParty  : comp sNameParty   : string
 kolOstatok :double
 cDragM1 : comp kolDragMU1 : double kolDragMK1 : double
 cDragM2 : comp kolDragMU2 : double kolDragMK2 : double
 cDragM3 : comp kolDragMU3 : double kolDragMK3 : double
 cDragM4 : comp kolDragMU4 : double kolDragMK4 : double
 cDragM5 : comp kolDragMU5 : double kolDragMK5 : double
 cDragM6 : comp kolDragMU6 : double kolDragMK6 : double
 cDragM7 : comp kolDragMU7 : double kolDragMK7 : double
 cDragM8 : comp kolDragMU8 : double kolDragMK8 : double
 cDragM9 : comp kolDragMU9 : double kolDragMK9 : double
 cDragM10: comp kolDragMU10: double kolDragMK10: double

.endfields
#CommissionBody(PrintPereoDM)
.begin
 dragFormat := '[|-]3666`666`666`666.8889999999';
end.
OrgName ^ DateNal ^ cPodr1 ^ PodrName1 ^
cMOL1 ^ MOLFIO1 ^  MOLDolg1 ^ cMOL2 ^ MOLFIO2 ^  MOLDolg2 ^ cMOL3 ^ MOLFIO3 ^  MOLDolg3 ^
------------------------------------------------------------------
.{
NameDrag1 ^ NameDrag2 ^ NameDrag3 ^ NameDrag4 ^ NameDrag5 ^
NameDrag6 ^ NameDrag7 ^ NameDrag8 ^ NameDrag9 ^ NameDrag10 ^
------------------------------------------------------------------
.{CHECKENTER TblVEDDetailLoop
cMC    ^ sBarKod ^ sNameMC ^
cEdIzm ^ sEdIzm ^ sKodEdIzm^
cPodr  ^ sNamePodr  ^
cMOL   ^ sNameMOL   ^
cParty ^ sNameParty ^
kolOstatok ^
DragM1 ^ ^ ^
DragM2 ^ ^ ^
DragM3 ^ ^ ^
DragM4 ^ ^ ^
DragM5 ^ ^ ^
DragM6 ^ ^ ^
DragM7 ^ ^ ^
DragM8 ^ ^ ^
DragM9 ^ ^ ^
DragM10 ^ ^ ^
------------------------------------------------------------------
.}
.}
.endform

#doc
������ਧ�樮���� ����� � ���-8�
#end
.LinkForm 'Inv_8a' Prototype is 'InvDrag'
!=============================================================================
.NameInList '������ਧ�樮���� ����� � ���-8�'
.DEFO LANDSCAPE
.p 60
.group 'Country' subgroup 'Belarus'
.Var
  TotNpp : LongInt
  PgNpp  : LongInt
  TotSum1 : Double
  TotSumK1: Double
  TotSum2 : Double
  TotSumK2: Double
  TotSum3 : Double
  TotSumK3: Double
  TotSum4 : Double
  TotSumK4: Double
  PgSum1  : Double
  PgSumK1 : Double
  PgSum2  : Double
  PgSumK2 : Double
  PgSum3  : Double
  PgSumK3 : Double
  PgSum4  : Double
  PgSumK4 : Double
.EndVar
#CommissionLinkVar
#CommissionLinkInit(PrintPereoDM)
.fields
 OrgName
 DateNal
MOLDolg1 MOLFIO1 MOLDolg2 MOLFIO2 MOLDolg3 MOLFIO3
.endfields
.begin
  TotNpp := 0;
  TotSum1 := 0;
  TotSumK1:= 0;
  TotSum2 := 0;
  TotSumK2:= 0;
  TotSum3 := 0;
  TotSumK3:= 0;
  TotSum4 := 0;
  TotSumK4:= 0;
  PgSum1  := 0;
  PgSumK1 := 0;
  PgSum2  := 0;
  PgSumK2 := 0;
  PgSum3  := 0;
  PgSumK3 := 0;
  PgSum4  := 0;
  PgSumK4 := 0;
end.
��                                                                                                                                                                    �⢥ত���
                                                                                                                                                                   �ਪ���� ���
                                                                                                                                                                   �� 29.03.2005 � 97
                                                                                                                                                                   ��ଠ ���-8���

��                                                                                                          ������������Ŀ
                                                                                              ��� �� ���� �            �
                                                                                                          ����������������
��
   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
   ���������������������������������������������������������������������������������������
                      (������������ �࣠�� ����७��� ���)

                                                                                                �����������������������Ŀ
                                                  ������������������ �����                      �   ����� �     ���    �
                                            �ࠣ�業��� ��⠫���, ᮤ�ঠ����                  ����㬥�⠳ ��⠢����� �
                                             � ����䠡ਪ���, 㧫�� � ��⠫��                  �����������������������Ĵ
                                          ����㤮�����, �ਡ��� � ���� ��������                �         � ^  �
                                                                                                �������������������������
��
      ��                                             ����������
   ��� ��砫� �஢������ ������ਧ�樨 �� ��室�� � ��室�� ���㬥��� �� ����䠡ਪ���,  㧫� � ��⠫� ����㤮�����,
�ਡ���, ���  �������,  �   ������   �������  �ࠣ�業��   ��⠫��,  ᤠ��  � ��壠����  �  �� ���ਠ���  業����,
����㯨�訥 ��� ���(����) �⢥��⢥������,  ���室�����,  � ���訥 - ᯨᠭ�  �  ��室.

���ਠ�쭮 �⢥��⢥����(�) ���(�):
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    _______________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
           (���������)                        (�������)                      (���樠��, 䠬����)
�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    _______________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
           (���������)                        (�������)                      (���樠��, 䠬����)
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    _______________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
           (���������)                        (�������)                      (���樠��, 䠬����)
��
     �� �᭮����� �ਪ��� (�ᯮ�殮���) �� "__" ___________ 20__�. � ____ �஢����� ������ਧ��� ���ਠ���� 業���⥩,
� ������ ������� �ࠣ��⠫��, �� ���ﭨ� �� "__" ___________ 20__�.

  �� ������ਧ�樨 ��⠭������ ᫥���饥:��
��.{
.[h
.fields
 NameDrag1 NameDrag2 NameDrag3 NameDrag4
.endfields
 
                                                                                                    (� �ࠬ��� � �筮���� �� ����� ����⮩)
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�  �   �               ��ꥪ�              � ������  � ���  �          �����         �                                           ������⢮ �ࠣ�業��� ��⠫���, �ࠬ���                                            ��।��- �
� �/�  �                                   �����७�� � ��-  ��������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ������멳
�      ����������������������������������������������Ĵ��᪠ ������- � �����- �  ���- �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�  �ப  �
�      �      ������������       ���������-����- ���� �(����-���� �  ᪮�  � ���� �������������������������������������������������������������������������������������������������������������������������������Ĵᯨᠭ��
�      �                         � ����  �����-�    �⮢��-�       �        �       ��� ����� ��� �  ��⠭������ ��� ����� ��� �  ��⠭������ ��� ����� ��� �  ��⠭������ ��� ����� ��� �  ��⠭������ �        �
�      �                         �  �����  �������    � ���) �       �        �       �   (��ᯮ���)   �   �����ᨥ�  �   (��ᯮ���)   �   �����ᨥ�  �   (��ᯮ���)   �   �����ᨥ�  �   (��ᯮ���)   �   �����ᨥ�  �        �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
�  1   �            2            �    3    �  4  � 5  �   6  �   7   �    8   �   9   �        10      �     11       �        12      �     13       �        14      �     15       �        16      �     17       �   18   �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
��.begin
  PgSum1  := 0;
  PgSumK1 := 0;
  PgSum2  := 0;
  PgSumK2 := 0;
  PgSum3  := 0;
  PgSumK3 := 0;
  PgSum4  := 0;
  PgSumK4 := 0;
end.
.]h
.{CHECKENTER TblVEDDetailLoop
.begin
  TotNpp := TotNpp + 1;
  PgSum1  := PgSum1+kolDragMU1;
  PgSumK1 := PgSumK1+kolDragMK1;
  PgSum2  := PgSum2+kolDragMU2;
  PgSumK2 := PgSumK2+kolDragMK2;
  PgSum3  := PgSum3+kolDragMU3;
  PgSumK3 := PgSumK3+kolDragMK3;
  PgSum4  := PgSum4+kolDragMU4;
  PgSumK4 := PgSumK4+kolDragMK4;
end.
.fields
 TotNpp
 string(sNameMC+if(sNameParty='','','['+'�����: '+sNameParty+']'))
 sBarKod
 sEdIzm sKodEdIzm

 if(kolDragMU1=0,' ', DoubleToStr(kolDragMU1, dragFormat) )
 if(kolDragMK1=0,' ', DoubleToStr(kolDragMK1, dragFormat) )
 if(kolDragMU2=0,' ', DoubleToStr(kolDragMU2, dragFormat) )
 if(kolDragMK2=0,' ', DoubleToStr(kolDragMK2, dragFormat) )
 if(kolDragMU3=0,' ', DoubleToStr(kolDragMU3, dragFormat) )
 if(kolDragMK3=0,' ', DoubleToStr(kolDragMK3, dragFormat) )
 if(kolDragMU4=0,' ', DoubleToStr(kolDragMU4, dragFormat) )
 if(kolDragMK4=0,' ', DoubleToStr(kolDragMK4, dragFormat) )
.endfields
�@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�@~@@@@@@@�@~@@@�@~@@�      �       �        �       �&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�        �
.}
.[f
.begin
  TotSum1  := TotSum1 + PgSum1;
  TotSumK1 := TotSumK1 + PgSumK1;
  TotSum2  := TotSum2 + PgSum2;
  TotSumK2 := TotSumK2 + PgSumK2;
  TotSum3  := TotSum3 + PgSum3;
  TotSumK3 := TotSumK3 + PgSumK3;
  TotSum4  := TotSum4 + PgSum4;
  TotSumK4 := TotSumK4 + PgSumK4;
end.
.fields
  if(PgSum1=0,' ', DoubleToStr(PgSum1, dragFormat) )
  if(PgSumK1=0,' ', DoubleToStr(PgSumK1, dragFormat) )
  if(PgSum2=0,' ', DoubleToStr(PgSum2, dragFormat) )
  if(PgSumK2=0,' ', DoubleToStr(PgSumK2, dragFormat) )
  if(PgSum3=0,' ', DoubleToStr(PgSum3, dragFormat) )
  if(PgSumK3=0,' ', DoubleToStr(PgSumK3, dragFormat) )
  if(PgSum4=0,' ', DoubleToStr(PgSum4, dragFormat) )
  if(PgSumK4=0,' ', DoubleToStr(PgSumK4, dragFormat) )
.endfields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
                                                                               �⮣�  �&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�    X   �
                                                                                      ��������������������������������������������������������������������������������������������������������������������������������������������
��.]f
.}
.fields
  if(TotSum1=0,' ', DoubleToStr(TotSum1, dragFormat) )
  if(TotSumK1=0,' ', DoubleToStr(TotSumK1, dragFormat) )
  if(TotSum2=0,' ', DoubleToStr(TotSum2, dragFormat) )
  if(TotSumK2=0,' ', DoubleToStr(TotSumK2, dragFormat) )
  if(TotSum3=0,' ', DoubleToStr(TotSum3, dragFormat) )
  if(TotSumK3=0,' ', DoubleToStr(TotSumK3, dragFormat) )
  if(TotSum4=0,' ', DoubleToStr(TotSum4, dragFormat) )
  if(TotSumK4=0,' ', DoubleToStr(TotSumK4, dragFormat) )
.endfields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
                                                                      �⮣� �� ����  �&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&�    X   �
                                                                                      ������������������������������������������������������������������������������������������������������������������������������������������

��   ���� 業����, ������������ � �����饩 ������ਧ�樮���� ���� � �____ �� �_____
�����ᨥ� �஢�७� �  �����  �  ���� (��襬)  ������⢨�  �  ���ᥭ� � �����, � �裡
� 祬 ��⥭��� � ������ਧ�樮���� �����ᨨ �� ���� (�� �����). �������, ����᫥���
� ����, ��室���� �� ���� (��襬) �⢥��⢥���� �࠭����.

���ਠ�쭮 �⢥��⢥����(�) ���(�):
"__" ___________ 20__�.

�������� � �����饩 ���� ����� � ������� �஢�ਫ:

����������������������������        ���������������������������               ������������������������������������������
       (���������)                          (�������)                                    (���樠��, 䠬����)
"__" ___________ 20__�.
.fields
  �।ᥤ�⥫�_�����ᨨ_���������
  �।ᥤ�⥫�_�����ᨨ_���
.endfields
��
 ������� � ��⠢�:
   �।ᥤ�⥫� �����ᨨ            ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    ________________  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                              ���������                       �������                 �.�.�.
.{While (�����_童��_�����ᨨ < ������⢮_童���_�����ᨨ)
.begin
  �����_童��_�����ᨨ := �����_童��_�����ᨨ + 1;
end.
.fields
  if (�����_童��_�����ᨨ = word(1), '����� �����ᨨ:', '')
  ���ᨢ_����_�����ᨨ_��������� [�����_童��_�����ᨨ]
  ���ᨢ_����_�����ᨨ_���       [�����_童��_�����ᨨ]
.endfields
   @@@@@@@@@@@@@@@                  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��    ________________  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                             ���������                        �������                 �.�.�.
.}
.{?INTERNAL;(������⢮_童���_�����ᨨ = 0)
 ����� �����ᨨ:                    _____________________________   ________________   __________________________________
                                             ���������                   �������                      �.�.�.
                                    _____________________________   ________________   __________________________________
                                             ���������                   �������                      �.�.�.
.}
��
"__" ___________ 20__�.��
��
.endform