/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ           เฎฅชโ "€" (แ) 2002                                   บ
  บ      ฅเแจ๏ : 5.83-7.1                                              บ
  บ       งเ กฎโ ซ:   ฃญจ็ฅญชฎ €..                                   บ
  บ       งญ ็ฅญจฅ:  ‘ขฎคญ๋ฉ ฎโ็ฅโ ฏฎ ฏเจช ง ฌ                         บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! Consolidated_Report
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
‘ขฎคญ๋ฉ ฎโ็ฅโ ฏฎ ฏเจช ง ฌ
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
!ฎ เ แฏฎเ๏คจโฅซ์ญฎฌใ คฅฉแโขจ๎
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
!ฎ แฎโเใคญจชใ
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
!ฎ คฎฏซ โ ฌ
.{ Consolidated_Report3 CheckEnter
.fields
 Raise
.endfields
^
.}
.}
!ฎ แฎโเใคญจชใ
.}
!ฎ เ แฏฎเ๏คจโฅซ์ญฎฌใ คฅฉแโขจ๎
.fields
 Boss_Post
 Boss_Name
.endfields
 ^ ^
.endform
