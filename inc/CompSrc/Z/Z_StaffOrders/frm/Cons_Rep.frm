//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.83 - ��ࠢ����� ���ᮭ����
// ������ ���� �� �ਪ����
//------------------------------------------------------------------------------

#doc
������ ���� �� �ਪ����
#end
.form Consolidated_Report
.hide
.fields
 NRecTitleDoc : comp
 Name_Company
 Date_order
 Number_order
 NeedMainNote : word
 MainNote
.endfields
 NRecTitleDoc ^
 Name_Company: ^
 Date_order: ^
 Number_order: ^
 NeedMainNote : @
 MainNote ^
!�� �ᯮ�廊⥫쭮�� ����⢨�
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
!�� ���㤭���
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
!�� �����⠬
.{ Consolidated_Report3 CheckEnter
.fields
 Raise
.endfields
^
.}
.}
!�� ���㤭���
.}
!�� �ᯮ�廊⥫쭮�� ����⢨�
.fields
 Boss_Post
 Boss_Name
.endfields
 ^ ^
.endform
