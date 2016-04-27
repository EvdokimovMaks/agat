/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ           เฎฅชโ "€" (แ) 2000                                   บ
  บ      ฅเแจ๏ : 5.84 - 7.1                                            บ
  บ       งเ กฎโ ซ:   ฃญจ็ฅญชฎ €..                                   บ
  บ       งญ ็ฅญจฅ:  โ โญฎฅ เ แฏจแ ญโฅ  ฅซโฅซฅชฎฌ                  บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! ShrBelTelecom
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
โ โญฎฅ เ แฏจแ ญโฅ  ฅซโฅซฅชฎฌ
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