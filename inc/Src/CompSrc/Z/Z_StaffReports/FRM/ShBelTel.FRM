/*
  ���������������������������������������������������������������������ͻ
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �           �஥�� "�����" (�) 2000                                   �
  �      ����� : 5.84 - 7.1                                            �
  �      ���ࠡ�⠫:  �����祭�� �.�.                                   �
  �      �����祭��:  ��⭮� �ᯨᠭ� �� ���⥫����                  �
  ���������������������������������������������������������������������ͼ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! ShrBelTelecom
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
��⭮� �ᯨᠭ� �� ���⥫����
#end
.form ShrBelTelecom
.hide
.fields
 CountRate
 CountTaxRate
 AO_BELTEL
 NAME_DOC
 Boss_Name
 AO_BELTEL1
 NAME_DOC1
 AO_BELTEL2

 Naim_Dept
 TabN_PersCount
 Tax_RatePersCount
 Raise1Count
 Raise2Count
 FondCound
 NLead : word

 Pers_Post
 TabN_Pers
 Tax_RatePers

 topKoef

 Fond

 Raise1
 Raise2
 Nraise

.endfields
 CountRate : @@@@@@@@@
 CountTaxRate : @@@@@@@@@
 AO_BELTEL: ^
 NAME_DOC : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Boss_Name: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 AO_BELTEL1: ^
 NAME_DOC1 : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 AO_BELTEL2: ^
.{ ShrBelTelecomDeptCycle CheckEnter
 Naim_Dept: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 TabN_PersCount : @@@@@@@@@@@@@@@@@@@@
 Tax_RatePersCount : @@@@@@@@@@@@@@@@@
 Raise1Count       : @@@@@@@@@@@@@@@@@
 Raise2Count       : @@@@@@@@@@@@@@@@@
 FondCound         : @@@@@@@@@@@@@@@@@
 NLead             : @@@@@@@@@@@@@@@@@
.{ ShrBelTelecomPostCycle CheckEnter
   Pers_Post : @@@@@@@@@@@@@@@@@@@@
   TabN_Pers : @@@@@@@@@@@@@@@@@@@@
   Tax_RatePers : @@@@@@@@@@@@@@@@@
   topKoef      : @@@@@@@@@@@@@@@@@
   Fond: @@@@@@@@@@@@@@@@
.{ ShrBelTelecomRaiseCycle CheckEnter
 Raise1 : @@@@@@@@@@@@@@@@@@@@@
 Raise2 : @@@@@@@@@@@@@@@@@@@@@
 Nraise : @@@@@@@@@@@@@@@@@@@@@
.} //ShrBelTelecomRaiseCycle
.} //ShrBelTelecomPostCycle

.} //ShrBelTelecomDeptCycle
.endform