/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ           เฎฅชโ "€" (แ) 2000                                   บ
  บ      ฅเแจ๏ : 5.85 - 7.11                                           บ
  บ       งเ กฎโ ซ:   ฃญจ็ฅญชฎ €..                                   บ
  บ       งญ ็ฅญจฅ:  โ็ฅโ ฎ คขจฆฅญจจ ฌฎซฎค๋ๅ แฏฅๆจ ซจแโฎข             บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! StaffYoungChange
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
โ็ฅโ ฎ คขจฆฅญจจ ฌฎซฎค๋ๅ แฏฅๆจ ซจแโฎข
#end
.form StaffYoungChange
.hide
.fields
 _Name
.endfields

 _Name: ^
.{ StaffYearsCycle CheckEnter
.fields
 _Years
.endfields
 _Years: ^
.}
.{ StaffYoungChangeCycle CheckEnter
.fields
FIO NrecPersons : comp Flag First_Post Last_Post Prev_Post Reasen_Dis MYear : word
.endfields
FIO: ^
NrecPersons : ^
Flag: ^
First_Post: ^
Last_Post: ^
Prev_Post: ^
Reasen_Dis : ^
MYear : ^
.}
.endform