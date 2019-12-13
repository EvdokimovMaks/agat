//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.83 - Управление персоналом
// Сводный отчет по приказам
//------------------------------------------------------------------------------

#doc
Сводный отчет по приказам
#end
.form Consolidated_Report
.hide
.fields
 NRecTitleDoc : comp
 sBarCode
 Name_Company
 Date_order
 Number_order
 NeedMainNote : word
 MainNote
 NeedMainHeader : word
 MainHeader1
 MainHeader2
 MainHeader3
.endfields
 NRecTitleDoc ^
 sBarCode ^
 Name_Company: ^
 Date_order: ^
 Number_order: ^
 NeedMainNote : @
 MainNote ^
 NeedMainHeader : @
 MainHeader1 ^
 MainHeader2 ^
 MainHeader3 ^
!По распорядительному действию
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
!По сотруднику
.{ Consolidated_Report2 CheckEnter
.fields
 NrecPerson : comp
 PersTabN
 NrecAppoint: comp
 Field1: WideString Field2: WideString Field3: WideString Field4: WideString Field5:  WideString
 Field6: WideString Field7: WideString Field8: WideString Field9: WideString Field10: WideString
 Reason
 Field1PP: WideString
 Razriad Special KPS
 Appendix1 Appendix2 Appendix3 Appendix4 Appendix5
.endfields
Fields: ^ ^ ^  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
Reason: ^
^^^^
^^^^^
!По доплатам
.{ Consolidated_Report3 CheckEnter
.fields
 Raise
.endfields
^
.}
.}
!По сотруднику
.}
!По распорядительному действию
.fields
 Boss_Post
 Boss_Name
.endfields
 ^ ^
.endform
