/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,01 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 5.80                                                      บ
 บ  งญ ็ฅญจฅ    :  ฏเ ขซฅญจฅ ญ  ’                                         บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Napr_Rep'
.hide
.fields
  Filter

  NaimPred  NameVed dat  TipPokaz    BegDatePut EndDatePut

  AnalGroup

 NameState
 NameIst
 NameMC
 ValRekv ValRekvFakt ExtrRem OldRem Sredn BegDate EndDate razndni AllNarabotka


.endfields


.{
^
.}
^ ^ ^ ^ ^ ^
.{ CheckEnter Napr_GroupAnal
^
.{ CheckEnter Napr_DocAnal
^
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter Napr_TotalAnal
.}
.}
.endform