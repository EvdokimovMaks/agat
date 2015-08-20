/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 7.10                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฎ คขจฆฅญจจ ’‘ ฏฎ คฎชใฌฅญโ ฌ                         บ
 บ โขฅโแโขฅญญ๋ฉ : จแจๆ   โ ซ์๏                                            บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='DviTc_Rep'
.hide
.fields
  Filter
  NaimPred BegDate  EndDate

  AnalGroup
  Nomer Name_Pole  DatTm  DatTM_end

  AnalItg
.endfields


.{
^
.}

^ ^ ^
.{ CheckEnter GroupAnalDviTc
^
.{ CheckEnter DocAnalDviTc
^ ^ ^ ^
.}
.{ CheckEnter TotalAnalDviTc
^
.}
.}
.endform
