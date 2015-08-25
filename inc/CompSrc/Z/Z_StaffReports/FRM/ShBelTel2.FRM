/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ           เฎฅชโ "€" (แ) 2000                                   บ
  บ      ฅเแจ๏ : 5.84 - 7.1                                            บ
  บ       งเ กฎโ ซ:   ฃญจ็ฅญชฎ €..                                   บ
  บ       งญ ็ฅญจฅ:  โ โญฎฅ เ แฏจแ ญโฅ  ฅซโฅซฅชฎฌ (2)              บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! ShrBelTelecom2
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
โ โญฎฅ เ แฏจแ ญโฅ  ฅซโฅซฅชฎฌ (2)
#end
.form ShrBelTelecom2
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

 NrecDept : comp
 Naim_Dept
 TabN_PersCount
 Tar_RatePersCount
 Tax_RatePersCount
 Raise1Count
 Raise2Count
 FondCound
 NLead : word

 NrecPost : comp
 Pers_Post
 Razr
 KOLMIN
 NewKoeff
 TabN_Pers
 Tar_RatePers
 Tax_RatePers
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
.{ ShrBelTelecom2DeptCycle CheckEnter
 NrecDept : @@@@@@@@@@@@@@@@@@@@
 Naim_Dept: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 TabN_PersCount : @@@@@@@@@@@@@@@@@@@@
 Tar_RatePersCount : @@@@@@@@@@@@@@@@@
 Tax_RatePersCount : @@@@@@@@@@@@@@@@@
 Raise1Count       : @@@@@@@@@@@@@@@@@
 Raise2Count       : @@@@@@@@@@@@@@@@@
 FondCound         : @@@@@@@@@@@@@@@@@
 NLead             : @@@@@@@@@@@@@@@@@
.{ ShrBelTelecom2PostCycle CheckEnter
   NrecPost  : @@@@@@@@@@@@@@@@@@@@
   Pers_Post : @@@@@@@@@@@@@@@@@@@@
   Razr      : @@@@@@@@@@@@@@@@@@@@
   KOLMIN    : @@@@@@@@@@@@@@@@@@@@
   NewKoeff  : @@@@@@@@@@@@@@@@@@@@
   TabN_Pers : @@@@@@@@@@@@@@@@@@@@
   Tar_RatePers : @@@@@@@@@@@@@@@@@
   Tax_RatePers : @@@@@@@@@@@@@@@@@
   Fond: @@@@@@@@@@@@@@@@
.{ ShrBelTelecom2RaiseCycle CheckEnter
 Raise1 : @@@@@@@@@@@@@@@@@@@@@
 Raise2 : @@@@@@@@@@@@@@@@@@@@@
 Nraise : @@@@@@@@@@@@@@@@@@@@@
.} //ShrBelTelecomRaiseCycle
.} //ShrBelTelecomPostCycle

.} //ShrBelTelecomDeptCycle
.endform