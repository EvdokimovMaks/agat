/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : �ந�����⢮                                              �
 � �����        : 5.70                                                      �
 � �����祭��    : ��������� ����権 �� ����� �� � �ந�����⢮           �
 �                 ᢥ�� ����� � ࠧ१� ������. ��                        �
 � �⢥��⢥��� : ���楢 ����ᠭ�� �������஢��                             �
 ���������������������������������������������������������������������������ͼ
*/
.set name = 'SoprDocRep_And'
.hide
.fields
  Name_Nkl
	KatPodr_Name_From
	KatPodr_Name_To

  SpSopr_NPP  SpSopr_prMC  SpSopr_cMCUsl_Name  SpSopr_cMCUsl_BarKod  SpSopr_cParty_Name  SpSopr_OtpED_Name  SpSopr_KolFact  SpSopr_Price
	Title_CU Name_CU
  SpObjAcc_prMC  SpObjAcc_cMCUsl_Name  SpObjAcc_cMCUsl_BarKod  SpObjAcc_OtpED_Name  SpObjAcc_KolcPos

.endfields
^
^
^
.{
^ ^ ^ ^ ^ ^ ^ ^
.{
^ ^
.}

.{
^ ^ ^ ^ ^
.}

.}
.endform

.linkform 'SoprDocRep_And_1' prototype is 'SoprDocRep_And'
.fields
	Name_Nkl
	KatPodr_Name_From
	KatPodr_Name_To
.endfields


     ��������� ^
       ��㤠  ^
       �㤠    ^

�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 ����� � ���   �             ������                       �   ���.�����       �              �����                          �  ������  �      ������⢮     �       ����
 ��ப������ᠳ                                          �                   �                                              � ����७�� �                     �
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.fields
SpSopr_NPP SpSopr_prMC    SpSopr_cMCUsl_Name               SpSopr_cMCUsl_BarKod  SpSopr_cParty_Name                      SpSopr_OtpED_Name  SpSopr_KolFact    SpSopr_Price
.endfields
@@@@@@@ @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.{
.fields
 Title_CU    Name_CU
.endfields
@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

.{
.fields
      SpObjAcc_prMC  SpObjAcc_cMCUsl_Name                 SpObjAcc_cMCUsl_BarKod                                        SpObjAcc_OtpED_Name  SpObjAcc_KolcPos
.endfields
        @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@                                               @@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&
.}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.}
.endform


