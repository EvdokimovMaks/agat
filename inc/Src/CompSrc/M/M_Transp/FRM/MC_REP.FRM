/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,00 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : เฎๆฅคใเ๋ ฏฅ็ โจ เฅฅแโเ  ฎฏฅเ ๆจฉ ฏฎ ฎโฏใแชใ – คซ๏       บ
 บ                 โเ ญแฏฎเโญฎฃฎ แเฅคแโข                                     บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='MC_Rep'
.hide
.fields
  Filter

  NaimPred BegDate  EndDate
  AnalGroup

   KatMCName KatMCBarKod SoprDopdOpr SoprDopdOpr2  KatFromName KatEdName
   PutLstNrec PutLstNPL
   KolVo Price Summa
  AnalItg
   KolVoItg SummaItg
.endfields


.{
^
.}
^ ^ ^
.{ CheckEnter GroupAnalMC
^

.{ CheckEnter DocAnalMC
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalMC
^
^ ^ 
.}
.}
.endform
