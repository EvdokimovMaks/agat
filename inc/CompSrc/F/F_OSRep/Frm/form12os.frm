//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.70 - �᭮��� �।�⢠
// ����稥, �������� � ��⠢ �� (���). ��ଠ � 12
//------------------------------------------------------------------------------

#doc
����稥, �������� � ��⠢ �᭮���� �।�� (�����ਠ���� ��⨢��). ��ଠ � 12
#end

.Set Name='Form12'
.Hide
.Fields
CurrFormat    : string
SumFormat     : string  //�ଠ� �뢮�� �㬬�
SumFormatWithSign  : string //�ଠ� �뢮�� �㬬� � ������

dFormStDate : date // ��砫쭠� ��� ���
dFormEndDate: date // ����筠� ��� ���

NRec_Org    // ��뫪� �� �࣠������
OrgName     //������������ �࣠����樨
IndexK      //������ �࣠����樨
State       //���㤠��⢮
City        //��த
OrgAddr     //���� �࣠����樨
OrgOKPO     //��� ����/����� �࣠����樨
OrgOKONH    //��� �����/����� �࣠����樨
OrgUNN      //��� ���/���

�����        : string  //���
������������ : string  //������������
Podrazdel    : word // ����� ���ࠧ����
DopParamNum  : string
����         : string
������㯯�  : string
��ଠ�ப�� : word
���_�����    : word
���_����     : word

s3  :double  s4 :double  s5 :double  s6 :double  s7 :double  s8 :double  s9 :double s10 :double s11 :double s12 :double s13 :double s14 :double
s15 :double s16 :double s17 :double s18 :double s19 :double s20 :double s21 :double s22 :double s23 :double s24 :double s25 :double

�����2        : string  //���
������������2 : string  //������������
Podrazdel2    : word // ����� ���ࠧ����
DopParamNum2  : string
����2         : string
������㯯�2  : string
��ଠ�ப��2 : word
���_�����2    : word
���_����2     : word

s2_03 :double s2_04 :double s2_05 :double s2_06 :double s2_07 :double s2_08 :double s2_09 :double s2_10 :double s2_11 :double s2_12 :double s2_13 :double s2_14 :double
s2_15 :double s2_16 :double s2_17 :double s2_18 :double s2_19 :double s2_20 :double s2_21 :double s2_22 :double s2_23 :double s2_24 :double s2_25 :double


.EndFields
^^^^^
^^^^^^^^^
.{
^^
^^
^^^
^^
^^^^^^^^^^^^^^^^^^^^^^^
.}
.{ Form12_Cycle2 CheckEnter
^^
^^
^^^
^^
^^^^^^^^^^^^^^^^^^^^^^^
.}
.endForm


//==============================================================================================================================
.linkform 'Form12_1' prototype is 'Form12'
.nameInList '������������ � �ਮ��⥭�� � ���⭮� ���� ��訥 � ��ᯫ��樨 ��ꥪ�� ���ਠ���� �᭮���� 䮭���'
.group '1'
.DEFO LANDSCAPE
.P 60
.Fields
  CommonFormHeader
  if ( boGetTune ('Rep.isHeader'),
    '���� �� ��ਮ� � ' + DateToStr(dFormStDate, 'DD/MM/YYYY') + ' �� ' + DateToStr(dFormEndDate, 'DD/MM/YYYY'), '')
  DateToStr(if(Longint(dFormEndDate) > 0, dFormEndDate, Cur_Date ), 'YYYY')
  OrgName      // ������������ �࣠����樨
  if(IndexK<>'',IndexK+', ','') + if(State <> '',State+', ','') + if(City <> '',City+', ','') + OrgAddr  // ���⮢� ���� �࣠����樨
  OrgOKPO     //��� ����/����� �࣠����樨
  CurrFormat
.EndFields
^ ^
��          ���������������������������������������������������������������������������������������Ŀ
          �                        ����������� �������������� ����������                          �
��          �����������������������������������������������������������������������������������������
          ���������������������������������������������������������������������������������������Ŀ
          �              ������������������ ������������� ����������� ����������                  �
          �����������������������������������������������������������������������������������������
�� �������������������������������������������������������������������������������������������������������������������������������Ŀ
 �  ����襭�� ���浪� �।�⠢����� ������᪮� ���ଠ樨, � ࠢ�� �।�⠢����� �����⮢�୮� ������᪮� ���ଠ樨     �
 �    ����� �⢥��⢥������, ��⠭�������� ���쥩 13.19 ������ ���ᨩ᪮� �����樨 �� ���������⨢��� �ࠢ�����襭���       �
 �                    �� 30.12.2001 � 195-��, � ⠪�� ���쥩 3 ������ ���ᨩ᪮� �����樨 �� 13.05.92 � 2761-1                 �
 �               "�� �⢥��⢥����� �� ����襭�� ���浪� �।�⠢����� ���㤠��⢥���� ������᪮� ���⭮��"               �
 ���������������������������������������������������������������������������������������������������������������������������������
��          ���������������������������������������������������������������������������������������Ŀ
          �                      �������� �������������� � ����������� ����                       �
          �����������������������������������������������������������������������������������������

��          ���������������������������������������������������������������������������������������Ŀ
          �              �������� � ������� � ��������� ������� �� ��������� �����                �
          �                            � ����� �� � ������                                        �
          �                                   �� @@@@ ���                                         �
��          �����������������������������������������������������������������������������������������
��
�����������������������������������������������������������������������������������������������Ŀ    ������������������������Ŀ
�                               �।��⠢����:                            � �ப� �।��⠢�����    �  ��ଠ N 11 (ᤥ���)   �
�����������������������������������������������������������������������������������������������Ĵ    ��������������������������
� �ਤ��᪨� ��� (���ய।���⨩),                                    �       15 ���       �         �ਪ�� ������:
� �����⢫��騥 �� ���� ��������᪮� ���⥫쭮��:                     �                     �      �� �⢥ত���� ���
� - ����ਠ�쭮�� �࣠�� ������ � ��ꥪ� ���ᨩ᪮� �����樨      �                     �        �� 29.08.2014 � 543
� �� ��⠭��������� �� �����                                             �                     �  � ���ᥭ�� ��������� (�� ����稨)
�                                                                         �                     �        �� __________ � ___
�                                                                         �                     �        �� __________ � ___
�                                                                         �                     �    ������������������������Ŀ
�                                                                         �                     �    �         �������        �
�������������������������������������������������������������������������������������������������    ��������������������������

����������������������������������������������������������������������������������������������������������������������������������Ŀ
������������� ����뢠�饩�� �࣠����樨 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� �
����������������������������������������������������������������������������������������������������������������������������������Ĵ
����⮢� ����  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���
����������������������������������������������������������������������������������������������������������������������������������Ĵ
�  ���  �                                                   ���                                                                    �
� ��� ��������������������������������������������������������������������������������������������������������������������������Ĵ
��� �����       ����뢠�饩�� �࣠����樨       �                                        �                                        �
�       �                �� ����                 �                                        �                                        �
����������������������������������������������������������������������������������������������������������������������������������Ĵ
�   1   �                    2                   �                    3                   �                  4                     �
����������������������������������������������������������������������������������������������������������������������������������Ĵ
�0602003�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                                        �                                        �
��������������������������������������������������������������������������������������������������������������������������������������










��                                  �������� I. ������������ � �ਮ��⥭�� � ���⭮� ���� ��訥 � ��ᯫ��樨 ��ꥪ�� ���ਠ���� �᭮���� 䮭�����
.{
.[H OverWrite
                                                                                                                                                                          ���� �� ����: ^ - 384;
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
                                                     �      �          � ����  �   ���  �      �⮨����� ��ꥪ�        ����, � 業�� �����᪠�  �   ��� ॠ����������:    �   ��� �ਮ��⥭���:    �
             ��� �᭮���� 䮭���                     �  �   � ��� ���� ������-���ࢮ��-�     �� ������ ॠ����樨      � ���ண�   �  �⮨�����   �                         �                         �
           � ������������ ��ꥪ⮢                   ���ப��(9 ������)���樮�-�砫쭮���       � ���⭮� ����         ���⥭ ��ꥪ�   ᤥ���     �������������������������Ĵ������������������������Ĵ
                                                     �      �          � ���   ������ � �������������������������������Ĵ �᭮����   ��㯫�-�த��� ���� �ᯮ��- ���� ��稭� �    ���     �   �ப,    �
                                                     �      �          ���㯯� ���ᯫ�-�   ������      �  ����筠�   � 䮭��� ��  �              �  �������   � ॠ����樨 � ���ﭨ�  � ��⠢訩�� �
                                                     �      �          �       � ���  �   ��⭠�     �  �����ᮢ��   � ���ﭨ�  �              � � ���⭮� � ��ꥪ�    ��ਮ��⥭- ��� �������- �
                                                     �      �          �       �        �               �               � �� ����    �              �  ���� ��   � �᭮����   ����� ��ꥪ⠳樨 ��ꥪ�,�
                                                     �      �          �       �        �               �               � ॠ����樨 �              � ॠ����樨 �  䮭���<2> � (�業��)<3>�    ���     �
                                                     �      �          �       �        �               �               � � ���⭮� �              �     <1>    �            �            �  (�業��)  �
                                                     �      �          �       �        �               �               �   ����     �              �            �            �            �            �
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
                           1                         �  2   �    3     �   4   �    5   �      6        �      7        �     8      �       9      �     10     �     11     �     12     �     13     �
 ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
! �뢮� �᭮���� �����ப�
.Fields
 ������������     // (1)
 �����            // (2)
 ����             // (3)
 ������㯯�      // (4)
 if (���_�����<>0,���_�����,'')        // (5)
 if ( s5 <> 0, DoubleToStr(s5, SumFormat), '')                // (6)
 if ((s5 - s6) > 0, DoubleToStr(s5 - s6, SumFormat), '')      // (7)
 if (���_����<>0, ���_����, '')                         // (8)
 if ( s7 <> 0, DoubleToStr(s7, SumFormat), '')                             // (9)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@ @@@@@@@@@@ @~@@@@@   &&&&   &#'&&&&&&&&&&&& &#'&&&&&&&&&&&&     &&&&     &#'&&&&&&&&&&&
.}
 ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
    <1> ��� ॠ���������� ��ꥪ⮢ 㪠�뢠���� ���� �� �����, �ࠪ�ਧ���� �ᯮ�짮����� ��ꥪ⮢ � ���⭮� ����:
���  1 - ��⨢��� �ᯮ�짮�����;  ��� 2 - ���筮� �ᯮ�짮�����; ��� 3 - �ࠪ��᪨ �� �ᯮ�짮�����.
    <2> ��� ॠ���������� ��ꥪ⮢ 㪠�뢠���� ���� �� �����, �ࠪ�ਧ���� ��稭� ॠ����樨:
��� 1 - ��㤮���⢮�⥫쭮�  ���ﭨ�;  ��� 2 - ��ࠫ쭮� ���ॢ����, ������ �� ��������� �� �����祭��, �� ����� ᮢ��襭��,
�����  ��䥪⨢��  ��ꥪ�;  ��� 3 - ���㦭���� �᫥��⢨� ������⢨� ��� �� ���᪠���� �த���; ��� 4 - ��㣮�.
    <3>   ��� �ਮ��⥭��� ��ꥪ⮢ 㪠�뢠���� ���� �� �����, �ࠪ�ਧ���� �� ���ﭨ�:
��� 1 - �⫨筮�; ��� 2 - �祭� ��襥; ���  3 - ��襥;  ��� 4 - 㤮���⢮�⥫쭮�; ��� 5 - ���宥; ��� 6 - ��㤮���⢮�⥫쭮�.

.{ Form12_Cycle2 CheckEnter
.}��
.EndForm


//==============================================================================================================================
.linkform 'Form12_2' prototype is 'Form12'
.nameInList '�᭮��� 䮭��, ����� � ᤠ��� � �७��'
.group '2'
.DEFO LANDSCAPE
.Fields
CommonFormHeader
CurrFormat
.EndFields
��^

                                                               �� ������ II. �᭮��� 䮭��, ����� � ᤠ��� � �७����
.{
.[H OverWrite
                                                                                                                                                                          ���� �� ����: ^ - 384;
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
                                                     �      � ��� ���� �  ���  � ����� �  ���   �      �⮨����� ��ꥪ�        ����, � 業��  ����稭�    �  ���    �  �ப,   ��।�ᬮ- �  ���,    �
             ��� �᭮���� 䮭���                     �  �   �(9 ������)�����ᠳ�����-���ࢮ��-�        �� ���ﭨ� ��        � ���ண�   � �믫�祭���  ����ﭨﳮ�⠢訩���७��   ���।����-�
           � ������������ ��ꥪ⮢                   ���ப��          ���ꥪ⠳��樮�-�砫쭮���          ����� ����           ���⥭ ��ꥪ�(��� ������   � ��ꥪ� ��� �����- �������஬ �   騩    �
                                                     �      �          �  <4>  � ���   ������ � �������������������������������Ĵ �᭮����   �� �७��) ��� �(�業��) � ��樨    �  �ப    � ��஭�, �
                                                     �      �          �       ���㯯� ���ᯫ�-�   ������      �  ����筠�   � 䮭��� ��  �����祭���    �   <5>   � ��ꥪ�, � �७��   � �������  �
                                                     �      �          �       �       � ���  �   ��⭠�     �  �����ᮢ��   � ���ﭨ�  �(��� ᤠ���� ��         �   ���    � ��ꥪ�, ���ᯫ��- �
                                                     �      �          �       �       �        �               �               � �� ����    ��७��) �७�-�         � (�業��) � ����楢  �樮���   �
                                                     �      �          �       �       �        �               �               � ॠ����樨 ���� ����� ��  �         �          �          � ��室�  �
                                                     �      �          �       �       �        �               �               � � ���⭮� � ����� ��� �         �          �          �  <6>     �
                                                     �      �          �       �       �        �               �               �   ����     �              �         �          �          �          �
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
                           1                         �  2   �    3     �   4   �   5   �    6   �      7        �      8        �     9      �     10       �    11   �     12   �     13   �     14   �
 �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
! �뢮� �᭮���� �����ப�
.Fields
 ������������     // (1)
 �����            // (2)
 ����             // (3)
 ������㯯�      // (5)
 if (���_�����<>0,���_�����,'')        // (6)
 if ( s3 <> 0, DoubleToStr(s3, SumFormat), '')          // (7)
 if (s3 - s4 > 0, DoubleToStr(s3 - s4, SumFormat), '')  // (8)
 if (���_����<>0, ���_����, '')                         // (9)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@ @@@@@@@@@@         @~@@@@@   &&&&   &#'&&&&&&&&&&&& &#'&&&&&&&&&&&&     &&&&
.}
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

    <4> ���  ��ꥪ⮢,  ������  �  �७��, 㪠�뢠���� ��� 1, ��� ᤠ���� � �७�� - ��� 2.
    <5> ���  ������ � ᤠ����  � �७�� ��ꥪ⮢ 㪠�뢠���� ���� �� �����, �ࠪ�ਧ���� �� ���ﭨ�:
���  1  -  �⫨筮�;  ���  2  -  �祭�  ��襥;  ���  3 - ��襥; ��� 4 - 㤮���⢮�⥫쭮�; ��� 5 - ���宥; ��� 6 - ��㤮���⢮�⥫쭮�.
    <6> ��� ������ � ᤠ���� � �७�� ��ꥪ⮢ 㪠�뢠���� ���� �� �����, � ����ᨬ���  ��  ⮣�,  ��  ���� ��ᯫ��樮��� ��室� �� �� �᭮���
䮭��:  ��� 1 - �७����⥫�, ��� 2 - ��஢�� �७����⥫� � �७����, ��� 3 - �७����.



.{?Internal; (Podrazdel2 = 3);
��      ����ࠢ�筮: �������⥫�� ᢥ����� � ����� � ������� �������, ���⨢��㥬�� ��⨢��, ��⥭��� � ࠧ����� I � II��
.}
.{?Internal; (Podrazdel2 = 3);
.[H OverWrite
 ���������������������������������������������������������������������������������������������������������������������������Ŀ
                                                     �      � ��� ���� �   � ��ப�   ����頤� ��ꥪ�,�   �� ᪮�� - ���    �
             ������������ ��ꥪ⮢                   �  �   �(9 ������)�  �� ���ன  �(㪠�뢠����    � (�஬� �祫�ᥬ��), �
               �᭮���� 䮭���                       ���ப��          ������ ��ꥪ� � ��� ����� �    �   �� �������⭨�    �
                                                     �      �          �    ��⥭     �������� ������  ���ᠦ����� - ��������
                                                     �      �          � � ࠧ����    �� ��� ��������- �    ᡮ� �஦��      �
                                                     �      �          �  I ��� II    ���� ��ᠦ�����),� �� ����� ���, �� �
                                                     �      �          �              �   ��.�         �                     �
 ���������������������������������������������������������������������������������������������������������������������������Ĵ
                           1                         �  2   �    3     �      4       �       5        �          6          �
 �����������������������������������������������������������������������������������������������������������������������������
.]H
.}
.{ Form12_Cycle2 CheckEnter
.Fields
 ������������2     // (1)
 �����2            // (2)
 ����2             // (3)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@ @@@@@@@@@@
.}
.{?Internal; (Podrazdel2 = 3);
 �������������������������������������������������������������������������������������������������������������������������������
.}
.EndForm

//==============================================================================================================================
.linkform 'Form12_3' prototype is 'Form12'
.nameInList '������ � �����ਠ��묨 �᭮��묨 䮭����, ᮢ��襭�� � ���⭮� ����'
.group '3'
.DEFO LANDSCAPE
.Fields
CommonFormHeader
CurrFormat
.EndFields
��^

                                            �������� III. ������ � �����ਠ��묨 �᭮��묨 䮭����, ᮢ��襭�� � ���⭮� ������
.{
.[H OverWrite
                                                                                                                                                    ���� �� ����: ^ - 384;
 ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
                                                     �      � ��� ���� �  ��ଠ- �  ���   �      �⮨����� ��ꥪ� ��     ����, � 業��   ��� ����   �    �뭮筠�   �  �।����- �
             ���� �����ਠ����                     �  �   �(9 ������)�  ⨢�� ���ࢮ��-�  ���ﭨ� �� ������ ᤥ���   � ���ண�   �  ᤥ���, �   �    �⮨�����  �   �����   �
               �᭮���� 䮭���                       ���ப��          �  �ப   �砫쭮���       � ���⭮� ����         ���⥭ ��ꥪ���⠭�������� �     ᤥ���    � ��⠢訩�� �
            � ������������ ��ꥪ⮢                  �      �          ���������������� � �������������������������������Ĵ    ��      �⥪�饩 �뭮�-�               ��ப �㦡� �
                                                     �      �          ��ᯮ�짮-���ᯫ�-�   ������      �  ����筠�   � ���ﭨ�  ���� �⮨���� �               ���ꥪ�, ���
                                                     �      �          � �����,  � ���  �   ��⭠�     �  �����ᮢ��   �  �� ����   �  ��ꥪ�,    �               � (�業��)   �
                                                     �      �          �  ���    �        �               �               � ॠ����樨 ������⢫������               �            �
                                                     �      �          �         �        �               �               � � ���⭮� �  � ⥪�饬   �               �            �
                                                     �      �          �         �        �               �               �   ����     �   ����<7>    �               �            �
 ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
                           1                         �  2   �    3     �   4     �    5   �      6        �      7        �     8      �      9       �       10      �     11     �
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
! �뢮� �᭮���� �����ப�
.Fields
 ������������     // (1)
 �����            // (2)
 ����             // (3)
 if (��ଠ�ப��<>0,��ଠ�ப��,'')  //  4
 if (���_�����<>0,���_�����,'')        // (5)
 if ( s5 <> 0, DoubleToStr(s5, SumFormat), '')          // (6)
 if (s5 - s6 > 0, DoubleToStr(s5 - s6, SumFormat), '')  // (7)
 if (���_����<>0, ���_����, '')                         // (8)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@ @@@@@@@@@@   &&&&      &&&&   &#'&&&&&&&&&&&& &#'&&&&&&&&&&&&     &&&&
.}
 �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
    <7>  ��� ��� ��ꥪ⮢ 㪠�뢠���� ���� �� �����, � ����ᨬ��� �� ⨯� ᮢ��襭���,  �  ��⠭��������  ⥪�饩 �뭮筮� �⮨����, ᤥ���:
��� 1 - �த���, ��� 2 - �ਮ��⥭��, ��� 3 - ���ᥭ�� � ��⠢�� ����⠫, ��� 4 -�業�� � ��८業�� �� ⥪�饩 �뭮筮� �⮨����, ��� 5 - ��㣮�.

.{ Form12_Cycle2 CheckEnter
.}��
.EndForm


//==============================================================================================================================
.linkform 'Form12_4' prototype is 'Form12'
.nameInList '�����ਠ��� �᭮��� 䮭��, �ࠢ� �� ����� �뫨 ����祭� �� �᭮�� ��業�������� �������'
.group '4'
.DEFO LANDSCAPE
.Fields
CommonFormHeader
CurrFormat
.EndFields
��^

                                            �������� IV. �����ਠ��� �᭮��� 䮭��, �ࠢ� �� ����� �뫨 ����祭� �� �᭮�� ��業�������� ���������
.{
.[H OverWrite
                                                                                                                                                                    ���� �� ����: ^ - 384;
 ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
                                                     �      � ��� ���� �  ��ଠ- �  ���   �      �⮨����� ��ꥪ� ��     ����, � 業��      ���     � �㬬�ୠ�  �  �।����- � �८�����- �   �ப     �
            ������������ ��ꥪ⮢                    �  �   �(9 ������)�  ⨢�� ���ࢮ��-�       ���ﭨ� �� �����      � ���ண�   ���業�������� �  ����稭�  �   �����   �  �騩 ���  ��������饣��
              �᭮���� 䮭���                        ���ப��          �  �ப   �砫쭮���        ���⭮�� ����         ���⥭ ��ꥪ�  �������<8> ���業������� ��⠢訩�� � ���⥦��   � ��業����- �
                                                     �      �          ���������������� � �������������������������������Ĵ    ��      �              � ���⥦�� ����ப �㦡� � �� �ࠢ�   �   ����     �
                                                     �      �          ��ᯮ�짮-���ᯫ�-�   ������      �  ����筠�   � ���ﭨ�  �              �  �����  ���ꥪ�, ��⳯��짮������  �������  �
                                                     �      �          � �����,  � ���  �   ��⭠�     �  �����ᮢ��   �  �� ����   �              �    ���     � (�業��)   � ��ꥪ⮬<9>� �� ��ꥪ��,�
                                                     �      �          �  ���    �        �               �               � ॠ����樨 �              �            �            �            �    ���     �
                                                     �      �          �         �        �               �               � � ���⭮� �              �            �            �            �            �
                                                     �      �          �         �        �               �               �   ����     �              �            �            �            �            �
 ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
                           1                         �  2   �    3     �   4     �    5   �      6        �      7        �     8      �      9       �     10     �     11     �     12     �     13     �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.Fields
 ������������     // (1)
 �����            // (2)
 ����             // (3)
 if (��ଠ�ப��<>0,��ଠ�ப��,'')  //  4
 if (���_�����<>0,���_�����,'')        // (5)
 if ( s5 <> 0, DoubleToStr(s5, SumFormat), '')          // (6)
 if (s5 - s6 > 0, DoubleToStr(s5 - s6, SumFormat), '')  // (7)
 if (���_����<>0, ���_����, '')                         // (8)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@ @@@@@@@@@@   &&&&      &&&&   &#'&&&&&&&&&&&& &#'&&&&&&&&&&&&     &&&&
.}
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
    <8> ���  ������� ��ꥪ�  㪠�뢠���� ����  ��  �����,  �ࠪ�ਧ���� ��� ��業���:
���  1  -  �����  (���᪫��⥫쭠�)  ��業���;  ���  2  - �᪫��⥫쭠� ��業���.
    <9> ���  �������  ��ꥪ�  㪠�뢠���� ����  ��  �����, �ࠪ�ਧ���� �८������騩  ���  ���⥦��  ��  �ࠢ�  ���짮������  ��ꥪ⮬:
��� 1 - 䨪�஢���� ࠧ���, ��� 2 - 䨪�஢���� ��ਮ���᪨�, ��� 3 - ��業�� ���᫥��� �� ��室�, ��� 4 - ��㣮�.��


       �������⭮� ���, �⢥��⢥����
    ��  �।��⠢�����  ������᪮�
    ���ଠ樨  (���,  㯮�����祭���
    �।��⠢����       ���������
    ���ଠ��  ��  ����� �ਤ��᪮��
    ���)                              _______________ _________________ _____________
                                         (���������)        (�.�.�.)       (�������)

                                       __________________  "____" _____________ 20____ ���
                                      (����� ���⠪⭮��   (��� ��⠢����� ���㬥��)
                                        ⥫�䮭�)



.{ Form12_Cycle2 CheckEnter
.}
.EndForm
