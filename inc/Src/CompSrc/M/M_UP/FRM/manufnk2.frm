/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : �ந�����⢮                                              �
 � �����        : 5.50                                                      �
 � �����祭��    : ���㬥���-(��ଠ ��������� ��� �ந�����⢠ � ६���)    �
 � �⢥��⢥��� : ���楢 ����ᠭ�� �������஢�� (axe)                       �
 ���������������������������������������������������������������������������ͼ
*/
.Set name = 'manufnakl2'
.NameInList '������� �ଠ'
.Hide
.Fields
N_TTN F_KUDA
field_DATE
   //3

field_FROM NAME_FROM
From_FIO_MOL
N_DOC_BASE
field_Ot_DATE
field_TO NAME_TO
to_FIO_MOL
field_KOGO
Name_Komplekt
WozwratMC
   //10 field`��

fVal1 fNDE1 fVal2 fNDE2
NPP NOMENKL NAME_TOVAR ED_IZM Name_Party KOL_DOC KOL_FACT PRICE VPRICE SUMMA VSUMMA
    ONomenk ONameTovar OEdIZM ONameParty OKolDOC OKOLFact OPRIC OVPRIC OSUMM OVSUMM
partygot Analitgot ed2 kol2 cena2 summa2
// ��� ���⨨
ITOGO VITOGO
        //19  field`��
KOL_TOV ALL_KOL_TOV ALL_WAGA_TOV ALL_VOLUME_TOV
NA_SUMMU NDESimvol VNA_SUMMU VSimvol
filed_PO_CURSU CURS field_ZA NAME_DENGA
SUMMA_PROPISU
VSUMMA_PROPISU
            //14    field`��
.endfields      //38

                       ��������� �  ^ ^
                       �� ^
 ^ ^
 c MO� ^
�᭮����� ^
          �� ^
 ^ ^
 Ha MO� ^
��१ ���� ^                                                                 1
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�����������������������������������������������������������������������������������������������������������������������������������������������������������
����� �����������-�               ������������                  �          �             �        ������⢮      �                   �
     �     ��     �                                             �          �              �����������������������Ĵ      ����         �      �㬬�
 �/� �    �����    �                                             � ��. ���. �   �����    ��� ���㬥���䠪��᪨ �  ^             ^  �  ^              ^
�����������������������������������������������������������������������������������������������������������������������������������������������������������
.{
&&&&&�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@�&'&&&&&.&&&&�&'&&&&.&&&&�&'&&&&&&&&&&&&.&& ^�&'&&&&&&&&&&&&&&.&& ^
.{
     �@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@�&'&&&&&.&&&&�&'&&&&.&&&&�&'&&&&&&&&&&&&.&& ^�&'&&&&&&&&&&&&&&.&& ^
.}
.if mnparty
.{
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&
.}
.end
.}
�����������������������������������������������������������������������������������������������������������������������������������������������������������

                                                                                                                      �⮣�:&'&&&&&&&&&&&&&&.&&
                                                                                                                            &'&&&&&&&&&&&&&&.&&
�ᥣ� ���饭� ������������ ^ � ������⢥ ^ ��騬 ��ᮬ ^ � ��ꥬ��^
      �� �㬬�  ^ ^ ^ ^
      ^^^^

                 (^)
                 (^)

 ���� ࠧ�訫 ___________          ��.(���訩) ��壠��� ___________

 ����⨫ _______________               ����稫 _____________________


�������������������������������������������������������������������������������

.endform

!=============================================================================
!=============================================================================
.linkform 'ManufNakl20' prototype is 'ManufNakl2'
.NameInList '��������� � ��� � ��⮬ ���⨩.'

.fields
! CommonFormHeader
N_TTN F_KUDA
field_DATE
N_DOC_BASE field_Ot_DATE
field_FROM NAME_FROM
From_FIO_MOL
field_TO NAME_TO
to_FIO_Mol
field_KOGO
Name_Komplekt
WozwratMC

NAME_TOVAR ED_IZM Name_Party KOL_FACT PRICE SUMMA
partygot ed2 kol2 cena2 summa2
ITOGO

.endfields
! ^

��               ��������� � ��⮬ ���⨩ �  ^ ^��
                       �� ^
�᭮����� ^  �� ^
 ^ ^
    ��� : ^
 ^ ^
    ��� : ^
   �����祭��   : ^
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

�������������������������������������������������������������������������������������������������������������������������
                                              �          �             �           �                 �
           ������������                       � ��. ���. �   �����    �������⢮ �      ����       �      �㬬�
                                              �          �             �           �                 �
�������������������������������������������������������������������������������������������������������������������������
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@�&'&&&&.&&&&�&'&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&.&&
.{
.}
.if mnparty
.{
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �          � @@@@@@@@@@@ �@@@@@@@@@@@�&'&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&.&&
.}
.end
.}
�������������������������������������������������������������������������������������������������������������������������

                                                                                              �⮣�:  &'&&&&&&&&&&&&&&.&&��


�������������������������������������������������������������������������������

�ਬ�砭��: * - ��ᢥ���� ��।������.
.endform



!=============================================================================
  #ifdef GAL7_1
.linkform 'ManufNakl30' prototype is 'ManufNakl2'
.NameInList '��������� � ��� � ��⮬ �����⨪�'

.fields
! CommonFormHeader
N_TTN F_KUDA
field_DATE
N_DOC_BASE field_Ot_DATE
field_FROM NAME_FROM
From_FIO_MOL
field_TO NAME_TO
to_FIO_Mol
field_KOGO
Name_Komplekt
WozwratMC

NAME_TOVAR ED_IZM Name_Party KOL_FACT PRICE SUMMA
Analitgot ed2 kol2 cena2 summa2
ITOGO

.endfields
! ^

��               ��������� � ��⮬ �����⨪ �  ^ ^��
                       �� ^
�᭮����� ^  �� ^
 ^ ^
    ��� : ^
 ^ ^
    ��� : ^
   �����祭��   : ^
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

�������������������������������������������������������������������������������������������������������������������������
                                              �          �             �           �                 �
           ������������                       � ��. ���. �   �����    �������⢮ �      ����       �      �㬬�
                                              �          �             �           �                 �
�������������������������������������������������������������������������������������������������������������������������
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@�&'&&&&.&&&&�&'&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&.&&
.{
.}
.if mnparty
.{
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �          � @@@@@@@@@@@ �@@@@@@@@@@@�&'&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&&&.&&
.}
.end
.}
�������������������������������������������������������������������������������������������������������������������������

                                                                                              �⮣�:  &'&&&&&&&&&&&&&&.&&��


�������������������������������������������������������������������������������

�ਬ�砭��: * - ��ᢥ���� ��।������.
.endform
#end