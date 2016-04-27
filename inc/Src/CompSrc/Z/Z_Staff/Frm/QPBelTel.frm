/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ           เฎฅชโ "€" (แ) 2000                                   บ
  บ      ฅเแจ๏ : 5.84 - 7.1                                            บ
  บ       งเ กฎโ ซ:   ฃญจ็ฅญชฎ €..                                   บ
  บ       งญ ็ฅญจฅ:   ็ฅแโขฅญญ๋ฉ แฎแโ ข แฎโเใคญจชฎข  ฅซโฅซฅชฎฌ     บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! QPBelTelecom
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
 ็ฅแโขฅญญ๋ฉ แฎแโ ข แฎโเใคญจชฎข  ฅซโฅซฅชฎฌ
#end
.form QPBelTelecom
.hide
.fields
  dToDate : date
  iNmb sDep
  iTotal
  iAge30
  iAge40
  iAge50
  iAge60
  iAge61
  iEdHi
  iEdSS
  iEdSO
  iStag01
  iStag05
  iStag10
  iStag20
  iStag25
  iStag26

.endfields
 dToDate: @@@@@@@@@@

.{ QPBelTelecomDeptCycle CheckEnter
 iNmb    : @@@@@@
 sDep    : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 iTotal  : @@@@@@
 iAge30  : @@@@@@
 iAge40  : @@@@@@
 iAge50  : @@@@@@
 iAge60  : @@@@@@
 iAge61  : @@@@@@
 iEdHi   : @@@@@@
 iEdSS   : @@@@@@
 iEdSO   : @@@@@@
 iStag01 : @@@@@@
 iStag05 : @@@@@@
 iStag10 : @@@@@@
 iStag20 : @@@@@@
 iStag25 : @@@@@@
 iStag26 : @@@@@@
.} //QPBelTelecomDeptCycle

.fields
  AlliTotal
  AlliAge30
  AlliAge40
  AlliAge50
  AlliAge60
  AlliAge61
  AlliEdHi
  AlliEdSS
  AlliEdSO
  AlliStag01
  AlliStag05
  AlliStag10
  AlliStag20
  AlliStag25
  AlliStag26
.endfields

 AlliTotal: @@@@@@
 AlliAge30: @@@@@@
 AlliAge40: @@@@@@
 AlliAge50: @@@@@@
 AlliAge60: @@@@@@
 AlliAge61: @@@@@@
 AlliEdHi: @@@@@@
 AlliEdSS: @@@@@@
 AlliEdSO: @@@@@@
 AlliStag01: @@@@@@
 AlliStag05: @@@@@@
 AlliStag10: @@@@@@
 AlliStag20: @@@@@@
 AlliStag25: @@@@@@
 AlliStag26: @@@@@@
.endform
