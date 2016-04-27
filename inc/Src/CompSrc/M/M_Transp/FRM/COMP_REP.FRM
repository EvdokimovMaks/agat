/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,00 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 6.00                                                      บ
 บ  งญ ็ฅญจฅ    : ฎฌฏซฅชโใ๎้จฅ ฏฎ ฏใโฅข๋ฌ ซจแโ ฌ                           บ
 บ โขฅโแโขฅญญ๋ฉ : ซ cจช  ขฅซ ซ คจฌจเฎขจ็                                 บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='Comp_Rep'
.hide
.fields
  Filter

  NaimPred BegDate  EndDate
  AnalGroup

  nRecSP nRecPL nRecComp nRecCompM
  DatePL NPL  GosNom  GarNom ZavNum NomComp
  Probeg Motoch Dni Cycle
  NumrBeg NumrEnd NumrMax NumrInd

  AnalItg
  ProbegItg  MotochItg DniItg CycleItg
.endfields


.{
^
.}
^ ^ ^
.{ CheckEnter GroupAnalCompon
^

.{ CheckEnter DocAnalCompon
 ^ ^ ^ ^
 ^ ^ ^ ^ ^ ^ 
 ^ ^ ^ ^
 ^ ^ ^ ^
.}
.{ CheckEnter TotalAnalCompon
^
 ^ ^ ^ ^
.}
.}
.endform