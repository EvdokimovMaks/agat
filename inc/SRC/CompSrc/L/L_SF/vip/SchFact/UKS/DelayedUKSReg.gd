/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2001 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฏฅเ โจขญ๋ฉ ชฎญโใเ                                        บ
 บ ฅเแจ๏        : 5.74                                                      บ
 บ  งญ ็ฅญจฅ    : ฅฃจแโเ ๆจ๏ ‘” ฏฎ ค ญญ๋ฌ ฎโฏใแช  – (“‘) (โ กซจๆ๋ ฏ ฌ๏โจ)บ
 บ โขฅโแโขฅญญ๋ฉ : ฎซฅฆ ฉ €ซฅชแฅฉ ฅญญ ค์ฅขจ็                               บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#ifndef __DELAYEDUKSREG_GD
#define __DELAYEDUKSREG_GD

// ขเฅฌฅญญ ๏ โ กซจๆ  "‘ฎฎโขฅโแขจฅ ฏเจๅฎคฎข จ เ แๅฎคฎข"
table struct stSpCompliance
(
  nRec    : comp
, cUKS    : comp
, VidDoc  : word
, cDoc    : comp
, cSpPos  : comp
, cOwner  : comp
, cMC     : comp
, cParty  : comp
, kol     : double
, cOtpEdSp: comp
, kolReg  : double
, kolStorn: double
, cOtpEd  : comp
, price   : double
, cParent : comp
, isSelected: boolean
)
with index
(
  stSpCompliance0 = nRec (Unique, Surrogate)
, stSpCompliance1 = cUKS + cDoc + cOwner
, stSpCompliance2 = cOwner
, stSpCompliance3 = cUKS + cParent + cSpPos
, stSpCompliance4 = cUKS + VidDoc + cDoc + cParent + cSpPos
);
// ขเฅฌฅญญ ๏ โ กซจๆ  - ‘” คซ๏ เฅฃจแโเ ๆจจ ข ชญจฃฅ
table struct stSchFact
(
  nRec: comp
, Name: string
, isSelected: boolean
)
with index
(
  stSchFact0 = nRec
, stSchFact1 = isSelected
);

#end