/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2009 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : €ขโฎโเ ญแฏฎเโ                                             บ
 บ ฅเแจ๏        : 8.10                                                      บ
 บ  งญ ็ฅญจฅ    : โ็ฅโ ฏฎ ญ ชซ คญ๋ฌ ญ  ฎโฏใแช ข เ งเฅงฅ ขฎคจโฅซฅฉ          บ
 บ โขฅโแโขฅญญ๋ฉ : ใชฎขแชจฉ  ชแจฌ                                          บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name='PLTTNVod_rep'
!.hide
.fields
NaimPred
BegDate EndDate
AnalGroup
sNameVod sNomTC sMarka
KatSopr sOrgName Netto Brutto Tara Cena
AnalItg
NumItg
ItgNetto ItgBrutto ItgTara ItgCena
.endfields

^
^ ^
.{ CheckEnter GroupAnDrv
^
.{ CheckEnter ShapDrv
^ ^ ^
.}
.{ CheckEnter DocAnDrv
^ ^ ^ ^ ^ ^
.}
.{ CheckEnter TotalAnDrv
โฎฃฎ ^ ^
^ ^ ^ ^
.}
.}
.endform