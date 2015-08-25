/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2006 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : “ฏเ ขซฅญจฅ โเ ญแฏฎเโฎฌ                                    บ
 บ ฅเแจ๏        : 7.12                                                      บ
 บ  งญ ็ฅญจฅ    : ฎฌฏซฅชแญ ๏ ฏเฎขฅเช  ง ช งฎข                              บ
 บ โขฅโแโขฅญญ๋ฉ : จซชฎ ฌจโเจฉ จโ ซ์ฅขจ็ (HATTER)                         บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='KatZakChk'
.hide
.fields
	dBeg
	dEnd
	MessDateS
  DatObr
  NPL
  npExitDn
  NomZak
.endfields
.{
^ ^
.if KatZakDateS
.if KatZakDateS_NE
^
.end
.{ CHECKENTER KatZakDateSLoop
^ ^ ^ ^
.}
.end
.}
.endform