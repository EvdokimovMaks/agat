/*
  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
  �      � � �  "T O P   S O F T",  � �   "� � � � �   � � � � � �"     �
  �           蹍オ� "�����" (�) 2002                                   �
  �      �ム瓱� : 5.83-7.1                                              �
  �      ��о�｀���:  �����腑��� �.�.                                   �
  �      ��Л�腑�┘:  �〓き覃 �砒モ �� �爬�����                         �
  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! Consolidated_Report
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
�〓き覃 �砒モ �� �爬�����
#end
.form Consolidated_Report
.hide
.fields
 Name_Company
 Date_order
 Number_order
 NeedMainNote : word
 MainNote
.endfields
 Name_Company: ^
 Date_order: ^
 Number_order: ^
 NeedMainNote : @
 MainNote ^
!�� ��甎�瑙え皀�讚��� ぅ�痰※�
.{ Consolidated_Report1 CheckEnter
.fields
 NRecPartDoc : comp
 TypePrCodOper : word
 Practical_action
 NeedNote : word
 TopNote
.endfields
NRecPartDoc: ^
TypePrCodOper: ^
Practical_action: ^
NeedNote : @
TopNote: ^
!�� 甌矗磴�┴�
.{ Consolidated_Report2 CheckEnter
.fields
 NrecPerson : comp
 PersTabN
 NrecAppoint: comp
 Field1 Field2 Field3 Field4 Field5 Field6 Field7 Field8 Field9 Field10 Reason
 Field1PP Razriad Special KPS
 Appendix1 Appendix2 Appendix3 Appendix4 Appendix5
.endfields
Fields: ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
Reason: ^
^^^^
^^^^^
!�� ぎ������
.{ Consolidated_Report3 CheckEnter
.fields
 Raise
.endfields
^
.}
.}
!�� 甌矗磴�┴�
.}
!�� ��甎�瑙え皀�讚��� ぅ�痰※�
.fields
 Boss_Post
 Boss_Name
.endfields
 ^ ^
.endform
