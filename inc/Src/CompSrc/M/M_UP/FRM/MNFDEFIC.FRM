//********************************************************************************
//                                                        (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ��ࠢ����� �ந�����⢥���� �����⨪��
// ����樨-����� ���⪮�/����⮢ �� ����� � �ந�����⢮
//********************************************************************************

.Set name = 'mnfdefic'
.NameInList '������� �ଠ'
.Hide
.Fields
 per_date                                                          //1
 naDatu                                                            //2
 F1 F2 F3                                                          //3,4,5
  NPP NREC_TOVAR NAME_TOVAR CODE_TOVAR Ed_Izm                      //6,7,8,9,10
  W_NALICH RezervMC Po_DO Wipas_Nakl Spis_Nakl Ostat_Otpusk PROGNOZ//11,12,13,14,15,16,17

  dAVG_Price                                                       //18

	dSpStep_Price                                                    //19

.Endfields
 ^
 ^
 ^ ^ ^
.{
� ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

.Endform

.Linkform 'mnfdefic_01' prototype is mnfdefic
.NameInList '��������� ����⮢'
.Group 'DefMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3
 NPP NAME_TOVAR Ed_Izm W_NALICH RezervMC Po_DO  Spis_Nakl Ostat_Otpusk PROGNOZ
.Endfields
 ^

                ��������� ��������� �� ������� �� � ������������
              ^
                  ^
                  ^
                  ^
                  ^
 ���������������������������������������������������������������������������������������������������������������������������������������
  �����                             � ��.���. �  ���⪨ �� �   �����   �  �믨ᠭ� ��  �  ���饭�  �  ��������    �   �����
   �/� �     ������������ ��         �         �   ᪫����   �     ��     �  ���㬥�⠬   �            �  � �����   �
  ���������������������������������������������������������������������������������������������������������������������������������������
.{
��&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&&.&&&��
.}
.Endform


.Linkform 'mnfdefic_03' prototype is mnfdefic
.NameInList '��������� ����⮢ c 業���'
.var
  dbDOSum : double
  dbRemainsSum : double
  dbDefSum : double
  dbDOSumSum : double
  dbRemainsSumSum : double
  dbDefSumSum : double
  dbDef : double
.endvar
.begin
  dbDOSum := 0;
  dbRemainsSum := 0;
  dbDefSum := 0;
  dbDOSumSum := 0;
  dbRemainsSumSum := 0;
  dbDefSumSum := 0;
  dbDef := 0;
end.
.Group 'DefMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3

.Endfields
 ^

                ��������� ��������� �� ������� �� � ������������
^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
^
^
���������������������������������������������������������������������������������������������������������������������������������������
�����    ������������ ��   � ���-��� �         �  �믨ᠭ� �� ��/���    �  ���⪨ �� ᪫����  �  �����   �        �����
 �/� �                      �         � ��.���. �����������������������������������������������Ĵ    ��     �������������������������
     �                      �         �         �  ���-��   �    �㬬�   �   ���-��  �  �㬬�   �           �   ���-��   �   �㬬�
���������������������������������������������������������������������������������������������������������������������������������������
.{
.begin
  dbDOSum := double(dAVG_price)*double(Po_DO)
  dbDOSumSum := dbDOSumSum + dbDOSum
  dbRemainsSum := double(dAVG_price)*double(W_NALICH)
  dbRemainsSumSum := dbRemainsSumSum + dbRemainsSum
  dbDef := if(( double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)) <  double(0.0001),
              -(double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)), double(0))
  dbDefSum :=  double(dbDef)*double(dAVG_price)
  dbDefSumSum := dbDefSumSum + dbDefSum
end.
.fields
 NPP NAME_TOVAR CODE_TOVAR Ed_Izm  Po_DO dbDOSum  W_NALICH dbRemainsSum RezervMC dbDef dbDefSum
.endfields
��&&&& �@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�&'&&&&&&.&&�&'&&&&&&&.&&�&'&&&&&&.&&�&'&&&&&.&&�&'&&&&&&.&&�&'&&&&&&.&&&�&'&&&&&&.&&��
.}
�����������������������������������������������������������������������������������������������������������������������������������������
.fields
dbDOSumSum
dbDefSumSum
.endfields
��                                              �⮣�:             &'&&&&&&&&&.&&                                          &'&&&&&&&.&&��
.Endform


.Linkform 'mnfdefic_04' prototype is mnfdefic
.NameInList '��������� ����⮢ c 業��� ��'
.var
  dbDOSum : double
  dbRemainsSum : double
  dbDefSum : double
  dbDOSumSum : double
  dbRemainsSumSum : double
  dbDefSumSum : double
  dbDef : double
.endvar
.begin
  dbDOSum := 0;
  dbRemainsSum := 0;
  dbDefSum := 0;
  dbDOSumSum := 0;
  dbRemainsSumSum := 0;
  dbDefSumSum := 0;
  dbDef := 0;
end.
.Group 'DefMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3

.Endfields
 ^

                ��������� ��������� �� ������� �� � ������������ � ������ ��
^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
^
^
���������������������������������������������������������������������������������������������������������������������������������������
�����    ������������ ��   � ���-��� �         �  �믨ᠭ� �� ��/���    �  ���⪨ �� ᪫����  �  �����   �        �����
 �/� �                      �         � ��.���. �����������������������������������������������Ĵ    ��     �������������������������
     �                      �         �         �  ���-��   �    �㬬�   �   ���-��  �  �㬬�   �           �   ���-��   �   �㬬�
���������������������������������������������������������������������������������������������������������������������������������������
.{
.begin
  dbDOSum := double(dSpStep_Price)*double(Po_DO)
  dbDOSumSum := dbDOSumSum + dbDOSum
  dbRemainsSum := double(dSpStep_Price)*double(W_NALICH)
  dbRemainsSumSum := dbRemainsSumSum + dbRemainsSum
  dbDef := if(( double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)) <  double(0.0001),
              -(double(W_NALICH) - double(Po_DO) + double(Spis_Nakl)), double(0))
  dbDefSum :=  double(dbDef)*double(dSpStep_Price)
  dbDefSumSum := dbDefSumSum + dbDefSum
end.
.fields
 NPP NAME_TOVAR CODE_TOVAR Ed_Izm  Po_DO dbDOSum  W_NALICH dbRemainsSum RezervMC dbDef dbDefSum
.endfields
��&&&& �@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@@@@@@�&'&&&&&&.&&�&'&&&&&&&.&&�&'&&&&&&.&&�&'&&&&&.&&�&'&&&&&&.&&�&'&&&&&&.&&&�&'&&&&&&.&&��
.}
�����������������������������������������������������������������������������������������������������������������������������������������
.fields
dbDOSumSum
dbDefSumSum
.endfields
��                                              �⮣�:             &'&&&&&&&&&.&&                                          &'&&&&&&&.&&��
.Endform


.Linkform 'mnfdefic_02' prototype is mnfdefic
.NameInList '��������� ���⪮�'
.Group 'OstMC'
.Fields
 CommonFormHeader
 per_date
 naDatu
 F1 F2 F3
 NPP NAME_TOVAR Ed_Izm W_NALICH RezervMC Po_DO Spis_Nakl Ostat_Otpusk PROGNOZ
.Endfields
 ^

                ��������� �������� �� ������� �� � ������������
              ^
                  ^
                  ^
                  ^
                  ^
���������������������������������������������������������������������������������������������������������������������������������������
�����                             � ��.���. �  ���⪨ ��  �  �����  � �믨ᠭ� ��  �  ���饭�  �   ��������   � ��⠭���� � ����-
 �/� �     ������������ ��         �         �   ᪫����    �    ��    � ���㬥�⠬   �            �  � �����   � 稨 ��᫥ ���᪠
���������������������������������������������������������������������������������������������������������������������������������������
.{
��&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&.&&& &'&&&&.&&& &'&&&&&&&&&.&&& &'&&&&&.&&& &'&&&&&&&&.&&& &'&&&&&&&&&&&&.&&&��
.}

.Endform
