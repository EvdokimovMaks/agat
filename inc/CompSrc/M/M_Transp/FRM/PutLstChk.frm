/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2006 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : “ฏเ ขซฅญจฅ โเ ญแฏฎเโฎฌ                                    บ
 บ ฅเแจ๏        : 7.12                                                      บ
 บ  งญ ็ฅญจฅ    : ฎฌฏซฅชแญ ๏ ฏเฎขฅเช  ฏใโฅข๋ๅ ซจแโฎข                       บ
 บ โขฅโแโขฅญญ๋ฉ : จซชฎ ฌจโเจฉ จโ ซ์ฅขจ็ (HATTER)                         บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='PutLstChk'
.hide
.fields
	dBeg
	dEnd

	MessDateS
  NPLPutLstDateS
  DatPl
  DatObr

	MessDpPokaz11
  NPLPutLstDpPokaz11

	MessWOZakaz
  NPLPutLstWOZakaz

	MessWODriver
  NPLPutLstWODriver

	MessExtZakaz
  NPLPutLstExtZakaz

	MessDateSZakaz
  NPLPutLstDateSZakaz

	MessTimeS
	NPLPutLstTimeS

	MessRunS
	NPLPutLstRunS
	PLProbegAll
	PGProbegAll
	PLTimeSpec
	PGTimeSpec
	NormT

	MessFactConsum
	NPLPutLstFactConsum
	PLProbegAll1
	PLTimeSpec1
	FaktT
.endfields
^ ^
.{
.if PutLstDateS
.if PutLstDateS_NE
^
.end
.{ CHECKENTER PutLstDateSLoop
^ ^ ^
.}
.end
.if PutLstDpPokaz11
.if PutLstDpPokaz11_NE
^
.end
.{ CHECKENTER PutLstDpPokaz11Loop
^
.}
.end
.if PutLstWOZakaz
.if PutLstWOZakaz_NE
^
.end
.{ CHECKENTER PutLstWOZakazLoop
^
.}
.end
.if PutLstWODriver
.if PutLstWODriver_NE
^
.end
.{ CHECKENTER PutLstWODriverLoop
^
.}
.end
.if PutLstExtZakaz
.if PutLstExtZakaz_NE
^
.end
.{ CHECKENTER PutLstExtZakazLoop
^
.}
.end
.if PutLstDateSZakaz
.if PutLstDateSZakaz_NE
^
.end
.{ CHECKENTER PutLstDateSZakazLoop
^
.}
.end
.if PutLstTimeS
.if PutLstTimeS_NE
^
.end
.{ CHECKENTER PutLstTimeSLoop
^
.}
.end
.if PutLstRunS
.if PutLstRunS_NE
^
.end
.{ CHECKENTER PutLstRunSLoop
^ ^ ^ ^ ^ ^
.}
.end
.if PutLstFactConsum
.if PutLstFactConsum_NE
^
.end
.{ CHECKENTER PutLstFactConsumLoop
^ ^ ^ ^
.}
.end
.}
.endform