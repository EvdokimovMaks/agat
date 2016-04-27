/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2009 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 8.10                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฏฎ ข๋ฏฎซญฅญญ๋ฌ เ กฎโฌ ฏฎ ’’                        บ
 บ โขฅโแโขฅญญ๋ฉ : ใชฎขแชจฉ  ชแจฌ                                          บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='PLTTN_rep'
!.hide
.fields
  NaimPred
	BegDate EndDate

	AnalGroup

	KatMC KatSopr DateKatSopr NPL Number Wes Cena

  AnalItg
  ItgNumber ItgWes ItgCena

.endfields

^
^ ^
.{ CheckEnter PLTTNGroupAnalDrv
^
.{ CheckEnter PLTTNShapkaDrv

.}
.{ CheckEnter PLTTNDocAnalDrv
^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter PLTTNTotalAnalDrv
โฎฃฎ ^
^ ^ ^
.}
.}
.endform