/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,99 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����࠭ᯮ��                                             �
 � �����        : 5.70                                                      �
 � �����祭��    : �⮣��� ���� �� ������⠬                               �
 � �⢥��⢥��� : ���ᨪ ����� �������஢��                                 �
 ���������������������������������������������������������������������������ͼ
*/
//28.4.99
.set name='Ved_Mar'
.hide
.fields
 BegDate  EndDate  NaimPred
 NMarAvt
 NPunkt KatCity KatState
 nRecPutLst : Comp
 Nomer  GarNom PutLst_Npl Waywps_ExitDn Waywps_ExitCh Waywps_ReturnDn Waywps_ReturnCh
 ExitDn ExitCh ReturnDn ReturnCh Stoim:double TimeAll
 GruZak_Massa : double Probeg_NoGr: double Probeg_Gr: double Probeg_All : double
 ProbegMar : double
.endfields

^ ^ ^
.{
^
.{
^ ^ ^
.{
^
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^
.}

.}

^
.}

.endform
��.linkform 'Ved_Mar_01' prototype is 'Ved_Mar'
.NameInList '�⮣��� ���� �� ���ᠦ��᪨� ������⠬'
.Group 'Ved_Mar1'
.Var
  ItgPunkt   : Double
  ItgMar     : Double
  ItgAll     : Double
  ProbegAll  : Double
.EndVar
.fields
 CommonFormHeader
 BegDate  EndDate NaimPred
.endfields
^
                    �⮣��� ���� �� ���ᠦ��᪨� ������⠬
                 c @@@@@@@@@@@@@@@@@@  ��   @@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  ItgAll := 0
  ProbegAll := 0
end.
 �����������������������������������������������������������������������������������������������������
    ���.   � ��ࠦ�� �  �����   �   ���   �   �६�  �   ���   �   �६�  � �⮨����� �   �६�
   �����   �   �����  � ��⥢��� � �ਡ��� � �ਡ��� �  ����  �  ����  �           � ��宦�����
           �          �  ����   �          �          �          �          �           �  � �㭪�
 �����������������������������������������������������������������������������������������������������
     1     �    2     �    3     �    4     �     5    �    6     �     7    �     8     �     9
 �����������������������������������������������������������������������������������������������������
.{
.begin
  ItgMar := 0
end.
.Fields
  NMarAvt
.endfields
   ���������   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.begin
  ItgPunkt := 0
end.
.Fields
  NPunkt KatCity KatState
.endfields
   ���㭪�     @@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@��
.{
.begin
  ItgMar := ItgMar +  Stoim
  ItgPunkt := ItgPunkt   +  Stoim
  ItgAll := ItgAll + Stoim
end.
.Fields
 Nomer GarNom PutLst_Npl ExitDn ExitCh ReturnDn ReturnCh Stoim TimeAll
.endfields
 @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@   @@@@@@@  @@@@@@@@@@   @@@@@@@  &&&&&&&&.&& &&&&&&&&.&&
.}
.Fields
  ItgPunkt
.endfields
 ���⮣� �� �㭪��                             ����                              &'&&&&&&&&&.&&��
.}
.Fields
  ItgMar
.endfields
 ���⮣� �� ��������                           �� ��                             &'&&&&&&&&&.&&��
.begin
  ProbegAll := ProbegAll + ProbegMar
end.
.Fields
  ProbegMar
.endfields
 ���஡�� �� ��������                          ����                              &'&&&&&&&&&.&&��
.}
 �����������������������������������������������������������������������������������������������������
.Fields
  ItgAll
.endfields
�� �⮣� ����窠 �� �।�����                                              &'&&&&&&&&&.&&��
.Fields
  ProbegAll
.endfields
�� �⮣� �஡�� �� �।�����                                               &'&&&&&&&&&.&&��
.endform��

.linkform 'Ved_Mar_02' prototype is 'Ved_Mar'
.NameInList '�⮣��� ���� �� ��㧮�� ������⠬'
.Group 'Ved_Mar1'
.Var
  ItgPunkt_Gr   : Double
  ItgMar_Gr     : Double
  ItgAll_Gr     : Double
  ItgPunkt_Pr   : Double
  ItgMar_Pr     : Double
  ItgAll_Pr     : Double
  ItgPunkt_PrG   : Double
  ItgMar_PrG     : Double
  ItgAll_PrG     : Double
  ItgPunkt_PrN   : Double
  ItgMar_PrN     : Double
  ItgAll_PrN     : Double
.EndVar
.fields
 CommonFormHeader
 BegDate  EndDate NaimPred
.endfields
^
��                    �⮣��� ���� �� ��㧮�� ������⠬
                 c @@@@@@@@@@@@@@@@@@  ��   @@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  ItgAll_Pr := 0
  ItgAll_PrG := 0
  ItgAll_PrN := 0
end.
 ���������������������������������������������������������������������������������������������������������������������������������
    ���.   � ��ࠦ�� �  �����   �   ���   �   �६�  �   ���   �   �६�  �    ���    �               �஡��, ��
   �����   �   �����  � ��⥢��� � �ਡ��� � �ਡ��� �  ����  �  ����  �   ��㧠   �����������������������������������������
           �          �  ����   �          �          �          �          �           � ��� ��㧠  �  � ��㧮�   �    �ᥣ�
 ���������������������������������������������������������������������������������������������������������������������������������
     1     �    2     �    3     �    4     �     5    �    6     �     7    �     8     �     9      �      10     �     11
 ���������������������������������������������������������������������������������������������������������������������������������
.{
.begin
  ItgMar_Gr := 0
  ItgMar_Pr := 0
  ItgMar_PrG := 0
  ItgMar_PrN := 0
end.
.Fields
  NMarAvt
.endfields
��   �������   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.begin
  ItgPunkt_Gr := 0
  ItgPunkt_Pr := 0
  ItgPunkt_PrG := 0
  ItgPunkt_PrN := 0
end.
.Fields
  NPunkt KatCity KatState
.endfields
��   �㭪�     @@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@��
.{
.begin
  ItgPunkt_Gr := ItgPunkt_Gr   +  GruZak_Massa
  ItgPunkt_PrN := ItgPunkt_PrN+Probeg_NoGr
  ItgMar_PrN     := ItgMar_PrN+ Probeg_NoGr
  ItgAll_PrN     := ItgAll_PrN + Probeg_NoGr
  ItgPunkt_PrG   := ItgPunkt_PrG+Probeg_Gr
  ItgMar_PrG     := ItgMar_PrG+ Probeg_Gr
  ItgAll_PrG     := ItgAll_PrG + Probeg_Gr
  ItgPunkt_Pr   := ItgPunkt_Pr+Probeg_All
  ItgMar_Pr     := ItgMar_Pr+ Probeg_All
  ItgAll_Pr     := ItgAll_Pr + Probeg_All

end.
.Fields
 Nomer GarNom PutLst_Npl ExitDn ExitCh ReturnDn ReturnCh GruZak_Massa Probeg_NoGr Probeg_Gr Probeg_All
.endfields
 @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@    @@@@@@@ @@@@@@@@@@   @@@@@@@@ &&&&&&&&.&& &&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&.&&
.}
.Fields
  ItgPunkt_Gr ItgPunkt_PrN ItgPunkt_PrG ItgPunkt_Pr
.endfields
�� �⮣� �� �㭪��                                                              &&&&&&&&.&& &&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&.&&��
.}
.Fields
  ItgMar_PrN ItgMar_PrG ItgMar_Pr
.endfields
 �⮣� �� ��������                                                                        &&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&.&&��
.}
 ��������������������������������������������������������������������������������������������������������������������������������
.Fields
  ItgAll_PrN ItgAll_PrG ItgAll_Pr
.endfields
�� �⮣�  �� �।�����                                                                    &&&&&&&&&.&& &&&&&&&&&.&& &&&&&&&&&&.&&��
.endform

.linkform 'Ved_Mar_03' prototype is 'Ved_Mar'
.NameInList '�⮣��� ���� ��  ������⠬ � ��'
.Group 'Ved_Mar2'
.Var
  ItgPunkt   : Double
  ItgMar     : Double
  ItgAll     : Double
  ProbegAll  : Double
.EndVar
.fields
 CommonFormHeader
 BegDate  EndDate NaimPred
.endfields
^
                    �⮣��� ���� �� ����窥
                 c @@@@@@@@@@@@@@@@@@  ��   @@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  ItgAll := 0
  ProbegAll := 0
end.
 ����������������������������������������������������������������������������������������
    ���.   � ��ࠦ�� �  �����   �   ���   �  �६�  �   ���    �  �६�  � ����窠
   �����   �   �����  � ��⥢��� �  �륧��  � �륧��  � �ਡ���  ��ਡ��� �
           �          �  ����   �          �         �           �         �
 ����������������������������������������������������������������������������������������
     1     �    2     �    3     �    4     �    5    �     6     �    7    �     8
 ����������������������������������������������������������������������������������������
.{
.begin
  ItgMar := 0
end.
.Fields
  NMarAvt
.endfields
   �������   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
  ItgPunkt := 0
end.
.{
.begin
  ItgMar := ItgMar +  Probeg_All
  ItgPunkt := ItgPunkt   +  Probeg_All
  ItgAll := ItgAll + Probeg_All
end.
.Fields
 Nomer GarNom PutLst_Npl Waywps_ExitDn Waywps_ExitCh Waywps_ReturnDn Waywps_ReturnCh  Probeg_All
.endfields
 @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@  @@@@@@@@  @@@@@@@@@@  @@@@@@@@ &'&&&&&&&.&&
.}
.Fields
  ItgPunkt
.endfields
 �⮣� �� ��                                                                 &'&&&&&&&.&&
.}
.Fields
  ItgMar
.endfields
 �⮣� �� ��������                                                           &'&&&&&&&.&&
.}
 ����������������������������������������������������������������������������������������
.Fields
  ItgAll
.endfields
 �⮣� ����窠 �� �।�����                                                &'&&&&&&&.&&
.endform