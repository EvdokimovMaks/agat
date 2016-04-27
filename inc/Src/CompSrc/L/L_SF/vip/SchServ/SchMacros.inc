/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 04/16/2004 ชฎเฏฎเ ๆจ๏ €€’€                   บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฏฅเ โจขญ๋ฉ ชฎญโใเ                                        บ
 บ ฅเแจ๏        : 8.0                                                       บ
 บ  งญ ็ฅญจฅ    :  ชเฎฎฏเฅคฅซฅญจ๏ คซ๏ เ กฎโ๋ แ ชฎฌฏฎญฅญโฎฉ L_SF            บ
 บ โขฅโแโขฅญญ๋ฉ : ฎซฅฆ ฉ €ซฅชแฅฉ ฅญญ ค์ฅขจ็                               บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#ifndef _SCHMACROS_INC
#define _SCHMACROS_INC

#define _zero 0.0001

// countries
#define _isKazakhstan (wGetTune('Country') = ccKaz)

// table navigation
#declare _getFast(table_)
(GetFirst FASTFIRSTROW #table_ = tsOk)
#end

#declare _getFast_nRec(table_, nRec_)
(GetFirst FASTFIRSTROW #table_ where (( #nRec_ == #table_.nRec )) = tsOk)
#end

#declare _getFastWhere(table_, where_)
(GetFirst FASTFIRSTROW #table_ where (( #where_ )) = tsOk)
#end

#end
