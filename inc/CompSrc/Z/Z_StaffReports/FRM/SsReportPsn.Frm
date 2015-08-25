/*
  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
  บ       ’   "T O P   S O F T",  €    "       € ’  €  ’"     บ
  บ      เฎฅชโ    : €€’€  (แ) 2000                                บ
  บ      ‘จแโฅฌ    : “ฏเ ขซฅญจฅ ฏฅเแฎญ ซฎฌ                              บ
  บ      ฅเแจ๏    : 5.8                                                บ
  บ       งเ กฎโ ซ: €ญโฎญฎขจ็ €..     13/06/2001                      บ
  บ       งญ ็ฅญจฅ: ”ฎเฌ๋ ฎโ็ฅโฎข ฏฎ ่โ โญฎฌใ เ แฏจแ ญจ๎               บ
  บ      งฌฅญฅญจ๏ :                                                    บ
  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

#doc
”ฎเฌ๋ ฎโ็ฅโฎข ฏฎ ่โ โญฎฌใ เ แฏจแ ญจ๎
#end
.form SsReportPsn
.Hide

.Fields

Header_1

dateBeg
dateEnd
DatCycle1_1
DatCycle1_2
DatCycle1_3
DatCycle1_4
DatCycle1_5
DatCycle1_6
DatCycle1_7

Footer_1
Footer_2

.endFields

Header_1             ^
dateBeg              ^
dateEnd              ^

.{ SsReportPsnCycle1  CheckEnter
DatCycle1_1          ^
DatCycle1_2          ^
DatCycle1_3          ^
DatCycle1_4          ^
DatCycle1_5          ^
DatCycle1_6          ^
DatCycle1_7          ^
.}

Footer_1             ^
Footer_2             ^

.endform

