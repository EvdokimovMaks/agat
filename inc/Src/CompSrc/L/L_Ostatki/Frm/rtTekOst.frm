��!����������������������������������������������������������������������������ͻ
!�                     (c) ��௮��� ���������, 1996, 2004                   �
!� �஥��        : ���������                                                  �
!� ���⥬�       : ����⨢�� ������ - �����᪮� ���                        �
!� �����        : 5.85                                                       �
!� �����祭��    : ��ᬮ�� ⥪��� ���⪮� ���業���⥩                     �
!� ���ࠡ�⠫    : �������᪨� ����਩ �������஢��                           �
!����������������������������������������������������������������������������ͼ

#doc
��ᬮ�� ⥪��� ���⪮� ���業���⥩
#end
.set name = 'rtTekOst'
.hide
.fields
 NDESim :string
 ValSim :string

 MCNrec :comp  BarKod :string  MCName :string  EdIzm :string
  PodrNrec  :comp  PodrName  :string
   MOLNrec   :comp  MOLName   :string
    PartyNrec :comp  PartyName :string
     averPrice :double
     averVPrice :double
     kolOstatok :double
     sumOstatok :double
     sumVOstatok :double
     kolRezerv :double
     sumRezerv :double
     sumVRezerv :double
     kolSvobodno :double
     sumSvobodno :double
     sumVSvobodno :double
.endfields
 ^ ^
.{
 ^ ^ ^ ^
.{
  ^ ^
.{
   ^ ^
.{
    ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.}
.endform

//=============================================================================
#doc
����騥 ���⪨ �� (� ���)
#end
.linkform 'rtTekOst_01' prototype is 'rtTekOst'
.NameInList '����騥 ���⪨ �� (� ���)'
.group '����� � ���'
.PAPER PA4
.ORIENT LANDSCAPE
.DEFO LANDSCAPE
.LL 80
.P 60
.fields
  NDESim NDESim NDESim NDESim
.endfields
.[H SKIP
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                         �                         �                        � �।��� 業�, �        ���⮪                �         �����                �         ��������              �
�       C����             �         ���             �        �����          �               �����������������������������������������������������������������������������������������������Ĵ
�                         �                         �                        �    @@@@@@     �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.fields
  NDESim NDESim NDESim NDESim
  MCName BarKod EdIzm
     PodrName
     MOLName  PartyName averPrice
     kolOstatok sumOstatok  kolRezerv sumRezerv kolSvobodno sumSvobodno
.endfields
                                                                                      ������� ������� ��

��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                         �                         �                        � �।��� 業�, �        ���⮪                �         �����                �         ��������              �
�       �����             �         ���             �        �����          �               �����������������������������������������������������������������������������������������������Ĵ
�                         �                         �                        �    @@@@@@     �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���:@@@@@@@@@@@@@ ��. ���.:@@@@@@@@@@@@@@
.{
.{
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&.&& &'&&&&&&&&&&&&& &'&&&&&&&&&&.&& &'&&&&&&&&&&&&& &'&&&&&&&&&&.&& &'&&&&&&&&&&&&& &'&&&&&&&&&&.&&
.}
.}
.}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
.}
.endform

//=============================================================================
#doc
����騥 ���⪨ �� (� ���)
#end
.linkform 'rtTekOst_02' prototype is 'rtTekOst'
.NameInList '����騥 ���⪨ �� (� ����� ���⮢)'
.group '����� � �����'
.PAPER PA4
.ORIENT LANDSCAPE
.DEFO LANDSCAPE
.LL 80
.P 60
.fields
  ValSim ValSim ValSim ValSim
.endfields
.[H SKIP
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                         �                         �                        � �।��� 業�, �        ���⮪                �         �����                �         ��������              �
�       �����             �         ���             �        �����          �               �����������������������������������������������������������������������������������������������Ĵ
�                         �                         �                        �    @@@@@@     �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.fields
  ValSim ValSim ValSim ValSim
  MCName BarKod EdIzm
  PodrName
  MOLName  PartyName averPrice
  kolOstatok sumOstatok  kolRezerv sumRezerv kolSvobodno sumSvobodno
.endfields
                                                                                      ������� ������� ��

��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                         �                         �                        � �।��� 業�, �        ���⮪                �         �����                �         ��������              �
�       �����             �         ���             �        �����          �               �����������������������������������������������������������������������������������������������Ĵ
�                         �                         �                        �    @@@@@@     �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �   ���-��      � �㬬�, @@@@@@ �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ���:@@@@@@@@@@@@@ ��. ���.:@@@@@@@@@@@@@@
.{
.{
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&.&& &'&&&&&&&&&&&&& &'&&&&&&&&&&.&& &'&&&&&&&&&&&&& &'&&&&&&&&&&.&& &'&&&&&&&&&&&&& &'&&&&&&&&&&.&&
.}
.}
.}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
.}
.endform��
