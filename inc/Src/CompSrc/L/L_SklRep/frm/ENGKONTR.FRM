!ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
!º      à®¥ªâ ƒ€‹€Š’ˆŠ€ (c) 1994,95 TOP SOFT Ltd., €Ž Ž‚›‰ €’‹€’    º
!º  ‚¥àá¨ï :     3.4X                                                  º
!º   §à ¡®â «:  †ãà ¢«¥¢ .ˆ.                                         º
!º   §­ ç¥­¨¥: ”ŽŒ€ ‚…„ŽŒŽ‘’ˆ „‚ˆ†…ˆŸ ‚ €‡…‡… ŠŽ’€ƒ…’Ž‚        º
!º  ˆ§¬¥­¥­¨ï:                                                         º
!ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
#doc
”ŽŒ€ ‚…„ŽŒŽ‘’ˆ „‚ˆ†…ˆŸ ‚ €‡…‡… ŠŽ’€ƒ…’Ž‚
#end
.set name = 'EngKontr'
.hide
.fields
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{ –¨ª« ¯® ª®­âà £¥­â ¬
 fkonttr
!.{ –¨ª« ¯® ®¯¥à æ¨ï¬ ¢ à §à¥§¥ ª®­âà £¥­â 
 fmat fnom fed fotped fdat otpednkl otpednklkoef:double nsop tipord
 fkolpr:double fkolprot:double fkolprmas:double fkolprvol:double
 fprpr:double fvprpr:double fprprot:double fvprprot:double
 fprprmas:double fvprprmas:double
 fprprvol:double fvprprvol:double fsim1 fsumpr:double fvsumpr:double fsim2
 fkolra:double fkolraot:double fkolramas:double fkolravol:double
 fprra:double fvprra:double fprraot:double fvprraot:double fprramas:double
 fvprramas:double fprravol:double fvprravol:double fsim3
 fsumra:double fvsumra:double fsim4
!.} Š®­¥æ æ¨ª«  ¯® ®¯¥à æ¨ï¬
 fasumpr:double fvasumpr:double fsim5 fasumra:double fvasumra:double fsim6
!.} Š®­¥æ æ¨ª«  ¯® ª®­âà £¥­â ¬
!.if engkontr01  …á«¨ ä®à¬¨à®¢ ­¨¥ ¯® ¢á¥¬ ª®­âà £¥­â ¬
 prsumpr:double prvsumpr:double prsumra:double prvsumra:double
!.end
.endfields

 fbegper ^ fendper ^ prPricein ^ prSumin ^ raPricein ^ raSumin ^
.{
 fkonttr ^
.{
 fmat ^ fnom ^ fed ^ fotped ^ fdat ^ otpednkl ^ otpednklkoef ^ nsop ^ tipord ^
 fkolpr ^ fkolprot ^ fkolprmas ^ fkolprvol ^
 fprpr ^ fvprpr ^ fprprot ^ fvprprot ^ fprprmas ^ fvprprmas ^ fprprvol ^
 fvprprvol ^ fsim1 ^ fsumpr ^ fvsumpr ^ fsim2 ^
 fkolra ^ fkolraot ^ fkolramas ^ fkolravol ^
 fprra ^ fvprra ^ fprraot ^ fvprraot ^ fprramas ^ fvprramas ^ fprravol ^
 fvprravol ^ fsim3 ^ fsumra ^ fvsumra ^ fsim4 ^
.}
 fasumpr ^ fvasumpr ^ fsim5 ^ fasumra ^ fvasumra ^ fsim6 ^
.}
.if engkontr01
 prsumpr ^ prvsumpr ^ prsumra ^ prvsumra ^
.end
.endform
!*****************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., “—.…„., ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_01' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., “—.…„., ‚‘… Ž…€–ˆˆ'
.group 'AUN'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop fkolpr fprpr fsumpr fkolra fprra fsumra
!.}
 fasumpr fasumra
!.}
!.if engkontr01
 prsumpr prsumra
!.end
.endfields
 ^
                 ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                 ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „                ³                  € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠ®­âà £¥­â: ÿ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                             &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                             &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ™
.end
.endform
!
!
!
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., “—.…„., ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_02' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., “—.…„., ‚‘… Ž…€–ˆˆ'
.GROUP 'AUV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop fkolpr fvprpr fsim1 fvsumpr fsim2 fkolra fvprra fsim3 fvsumra fsim4
!.}
 fvasumpr fsim5 fvasumra fsim6
!.}
!.if engkontr01
 prvsumpr fsim5 prvsumra fsim6
!.end
.endfields
 ^
                 ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „                    ³                 € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ŠŽ’€ƒ…’ : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@ &&&&&&&&&& &&&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                            &&&&&&&&&&& @@@@@@                            &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                           &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, “—.…„., ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_03' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, “—.…„., ‚‘… Ž…€–ˆˆ'
.GROUP 'AUA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop
 fkolpr fprpr fvprpr fsim1 fsumpr fvsumpr fsim2
 fkolra fprra fvprra fsim3 fsumra fvsumra fsim4
!.}
 fasumpr fvasumpr fsim5 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5 prsumra prvsumra fsim6
!.end
.endfields
 ^

                ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „                                          ³                                           € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ @@@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&&&& &&&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | ……‘’ ˆ•Ž„Ž‚
#end
.LinkForm 'EngKontr_04' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | ……‘’ ˆ•Ž„Ž‚'
.GROUP 'PUA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop
 fkolpr fprpr fvprpr fsim1 fsumpr fvsumpr fsim2
!.}
 fasumpr fvasumpr fsim5
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5
!.end
.endfields
 ^

                ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                              ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨    ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                              ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                                &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                                &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | ……‘’ €‘•Ž„Ž‚
#end
.LinkForm 'EngKontr_05' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | ……‘’ €‘•Ž„Ž‚'
.GROUP 'RUA'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop
 fkolra fprra fvprra fsim3 fsumra fvsumra fsim4
!.}
 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumra prvsumra fsim6
!.end
.endfields
 ^

                ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                             ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨   ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                             ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                               &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                               &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!*************************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., “—.…„., ˆ•Ž„›
#end
.linkform 'EngKontr_06' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., “—.…„., ˆ•Ž„›'
.group 'PUN'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop fkolpr fprpr fsumpr
!.}
 fasumpr
!.}
!.if engkontr01
 prsumpr
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., “—.…„., ˆ•Ž„›
#end
.linkform 'EngKontr_07' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., “—.…„., ˆ•Ž„›'
.GROUP 'PUV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop fkolpr fvprpr fsim1 fvsumpr fsim2
!.}
 fvasumpr fsim5
!.}
!.if engkontr01
 prvsumpr fsim5
!.end
.endfields
 ^

ÿ        ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÿˆÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’:ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                           &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                           &&&&&&&&&&& @@@@@@ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, “—.…„. ˆ•Ž„›
#end
.linkform 'EngKontr_08' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, “—.…„. ˆ•Ž„›'
.GROUP 'PUA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop
 fkolpr fprpr fvprpr fsim1 fsumpr fvsumpr fsim2
!.}
 fasumpr fvasumpr fsim5
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5
!.end
.endfields
 ^

ÿ         ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ€
ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!**************************************************************************************************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., “—.…„., €‘•Ž„›
#end
.linkform 'EngKontr_09' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., “—.…„., €‘•Ž„›'
.group 'RUN'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop fkolra fprra fsumra
!.}
 fasumra
!.}
!.if engkontr01
 prsumra
!.end
.endfields
 ^

ÿ         ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                       € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠ®­âà £¥­â: ^ÿ
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, “—.…„., €‘•Ž„›
#end
.linkform 'EngKontr_10' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, “—.…„., €‘•Ž„›'
.GROUP 'RUV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop fkolra fvprra fsim3 fvsumra fsim4
!.}
 fvasumra fsim6
!.}
!.if engkontr01
 prvsumra fsim6
!.end
.endfields
 ^

ÿ        ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ€
ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³               € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’ :ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                           &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                           &&&&&&&&&&& @@@@@@ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, “—.…„., €‘•Ž„›
#end
.linkform 'EngKontr_11' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, “—.…„., €‘•Ž„›'
.GROUP 'RUA'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fed fdat nsop
 fkolra fprra fvprra fsim3 fsumra fvsumra fsim4
!.}
 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumra prvsumra fsim6
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

!*************************************************************************************
!                        Ž’“‘Š›… …„ˆˆ–› ˆ‡Œ……ˆŸ
!*************************************************************************************

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Ž’.…„., ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_12' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Ž’.…„., ‚‘… Ž…€–ˆˆ'
.group 'AON'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop fkolprot fprprot fsumpr fkolraot fprraot fsumra
!.}
 fasumpr fasumra
!.}
!.if engkontr01
 prsumpr prsumra
!.end
.endfields
 ^

ÿ                 ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                 ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ€
ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „                ³                              € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                             &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                             &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., Ž’.…„., ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_13' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., Ž’.…„., ‚‘… Ž…€–ˆˆ'
.GROUP 'AOV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop fkolprot fvprprot fsim1 fvsumpr fsim2 fkolraot fvprraot fsim3 fvsumra fsim4
!.}
 fvasumpr fsim5 fvasumra fsim6
!.}
!.if engkontr01
 prvsumpr fsim5 prvsumra fsim6
!.end
.endfields
 ^

        ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^
ÿ˜
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „                    ³                 € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ŠŽ’€ƒ…’ : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@ &&&&&&&&&& &&&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                           &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                           &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, Ž’.…„., ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_14' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, Ž’.…„., ‚‘… Ž…€–ˆˆ'
.GROUP 'AOA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop
 fkolprot fprprot fvprprot fsim1 fsumpr fvsumpr fsim2
 fkolraot fprraot fvprraot fsim3 fsumra fvsumra fsim4
!.}
 fasumpr fvasumpr fsim5 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5 prsumra prvsumra fsim6
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „                                          ³                                           € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ @@@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&&&& &&&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!******************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Ž’.…„., ˆ•Ž„›
#end
.linkform 'EngKontr_15' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Ž’.…„., ˆ•Ž„›'
.group 'PON'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop fkolprot fprprot fsumpr
!.}
 fasumpr
!.}
!.if engkontr01
 prsumpr
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., Ž’.…„., ˆ•Ž„›
#end
.linkform 'EngKontr_16' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., Ž’.…„., ˆ•Ž„›'
.GROUP 'POV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop fkolprot fvprprot fsim1 fvsumpr fsim2
!.}
 fvasumpr fsim5
!.}
!.if engkontr01
 prvsumpr fsim5
!.end
.endfields
 ^

ÿ         ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ€
ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ŠŽ’€ƒ…’ : ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                           &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                           &&&&&&&&&&& @@@@@@ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, Ž’.…„. ˆ•Ž„›
#end
.linkform 'EngKontr_17' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, Ž’.…„. ˆ•Ž„›'
.GROUP 'POA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop
 fkolprot fprprot fvprprot fsim1 fsumpr fvsumpr fsim2
!.}
 fasumpr fvasumpr fsim5
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5
!.end
.endfields
 ^

                 ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!**************************************************************************************************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Ž’.…„., €‘•Ž„›
#end
.linkform 'EngKontr_18' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Ž’.…„., €‘•Ž„›'
.group 'RON'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop fkolraot fprraot fsumra
!.}
 fasumra
!.}
!.if engkontr01
 prsumra
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                       € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠ®­âà £¥­â:ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                             &'&&&&&&&&&&&&&&&&&&&ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, Ž’.…„., €‘•Ž„›
#end
.linkform 'EngKontr_19' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, Ž’.…„., €‘•Ž„›'
.GROUP 'ROV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop fkolraot fvprraot fsim3 fvsumra fsim4
!.}
 fvasumra fsim6
!.}
!.if engkontr01
 prvsumra fsim6
!.end
.endfields
 ^

         ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÿˆÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³               € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³  ãç¥â   ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’: ÿ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                           &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                           &&&&&&&&&&& @@@@@@ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, Ž’.…„., €‘•Ž„›
#end
.linkform 'EngKontr_20' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, Ž’.…„., €‘•Ž„›'
.GROUP 'ROA'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fotped fdat nsop
 fkolraot fprraot fvprraot fsim3 fsumra fvsumra fsim4
!.}
 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumra prvsumra fsim6
!.end
.endfields
 ^

       ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
       ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³ …¤¨­¨æ  ³   „ â    ³  ®¬¥à  ³                                € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³¨§¬¥à¥­¨ï³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³         ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                             &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

!*************************************************************************************
!                        Œ€‘‘€
!*************************************************************************************

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Œ€‘‘€, ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_21' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Œ€‘‘€, ‚‘… Ž…€–ˆˆ'
.group 'AMN'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprmas fprprmas fsumpr fkolramas fprramas fsumra
!.}
 fasumpr fasumra
!.}
!.if engkontr01
 prsumpr prsumra
!.end
.endfields
 ^

                 ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                 ‚ …ˆŽ„ ‘ ^ Ž ^
ÿ˜
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „                ³                              € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                   &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                   &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., Œ€‘‘€, ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_22' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., Œ€‘‘€, ‚‘… Ž…€–ˆˆ'
.GROUP 'AMV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprmas fvprprmas fsim1 fvsumpr fsim2 fkolramas fvprramas fsim3 fvsumra fsim4
!.}
 fvasumpr fsim5 fvasumra fsim6
!.}
!.if engkontr01
 prvsumpr fsim5 prvsumra fsim6
!.end
.endfields
 ^

         ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^
ÿ˜
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „                    ³                 € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ŠŽ’€ƒ…’ : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@ &&&&&&&&&& &&&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                 &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                 &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, Œ€‘‘€, ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_23' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, Œ€‘‘€, ‚‘… Ž…€–ˆˆ'
.GROUP 'AMA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop
 fkolprmas fprprmas fvprprmas fsim1 fsumpr fvsumpr fsim2
 fkolramas fprramas fvprramas fsim3 fsumra fvsumra fsim4
!.}
 fasumpr fvasumpr fsim5 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5 prsumra prvsumra fsim6
!.end
.endfields
 ^

         ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „                                          ³                                           € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ @@@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&&&& &&&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!******************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Œ€‘‘€, ˆ•Ž„›
#end
.linkform 'EngKontr_24' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Œ€‘‘€, ˆ•Ž„›'
.group 'PMN'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprmas fprprmas fsumpr
!.}
 fasumpr
!.}
!.if engkontr01
 prsumpr
!.end
.endfields
 ^

        ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., Œ€‘‘€, ˆ•Ž„›
#end
.linkform 'EngKontr_25' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., Œ€‘‘€, ˆ•Ž„›'
.GROUP 'PMV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprmas fvprprmas fsim1 fvsumpr fsim2
!.}
 fvasumpr fsim5
!.}
!.if engkontr01
 prvsumpr fsim5
!.end
.endfields
 ^
       ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
       ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’: ÿ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                 &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                 &&&&&&&&&&& @@@@@@ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, Œ€‘‘€ ˆ•Ž„›
#end
.linkform 'EngKontr_26' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, Œ€‘‘€ ˆ•Ž„›'
.GROUP 'PMA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop
 fkolprmas fprprmas fvprprmas fsim1 fsumpr fvsumpr fsim2
!.}
 fasumpr fvasumpr fsim5
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5
!.end
.endfields
 ^

          ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
          ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!**************************************************************************************************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Œ€‘‘€, €‘•Ž„›
#end
.linkform 'EngKontr_27' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Œ€‘‘€, €‘•Ž„›'
.group 'RMN'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolramas fprramas fsumra
!.}
 fasumra
!.}
!.if engkontr01
 prsumra
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÿˆÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                       € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠ®­âà £¥­â: ÿ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                   &'&&&&&&&&&&&&&&&&&&ÿ&

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, Œ€‘‘€, €‘•Ž„›
#end
.linkform 'EngKontr_28' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, Œ€‘‘€, €‘•Ž„›'
.GROUP 'RMV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolramas fvprramas fsim3 fvsumra fsim4
!.}
 fvasumra fsim6
!.}
!.if engkontr01
 prvsumra fsim6
!.end
.endfields
 ^

         ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³               € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’:ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                 &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                 &&&&&&&&&&& @@@@@@ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, Œ€‘‘€, €‘•Ž„›
#end
.linkform 'EngKontr_29' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, Œ€‘‘€, €‘•Ž„›'
.GROUP 'RMA'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop
 fkolramas fprramas fvprramas fsim3 fsumra fvsumra fsim4
!.}
 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumra prvsumra fsim6
!.end
.endfields
 ^

      ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
      ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                                € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

!*************************************************************************************
!                        Žš…Œ
!*************************************************************************************

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Žš…Œ, ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_30' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Žš…Œ, ‚‘… Ž…€–ˆˆ'
.group 'AVN'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprvol fprprvol fsumpr fkolravol fprravol fsumra
!.}
 fasumpr fasumra
!.}
!.if engkontr01
 prsumpr prsumra
!.end
.endfields
 ^

                 ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
                 ‚ …ˆŽ„ ‘ ^ Ž ^

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „                ³                              € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&& &'&&&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                   &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                   &'&&&&&&&&&&&&&&&&&&&                               &'&&&&&&&&&&&&&&&&&&&&ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., Žš…Œ, ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_31' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹., Žš…Œ, ‚‘… Ž…€–ˆˆ'
.GROUP 'AVV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprvol fvprprvol fsim1 fvsumpr fsim2 fkolravol fvprravol fsim3 fvsumra fsim4
!.}
 fvasumpr fsim5 fvasumra fsim6
!.}
!.if engkontr01
 prvsumpr fsim5 prvsumra fsim6
!.end
.endfields
 ^

          ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
          ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „                    ³                 € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ŠŽ’€ƒ…’ : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@ &&&&&&&&&& &&&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                 &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                 &&&&&&&&&&& @@@@@@                             &&&&&&&&&&& @@@@@@ÿ™
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, Žš…Œ, ‚‘… Ž…€–ˆˆ
#end
.linkform 'EngKontr_32' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | Ž… ‚€‹ž’›, Žš…Œ, ‚‘… Ž…€–ˆˆ'
.GROUP 'AVA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn raPricein raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop
 fkolprvol fprprvol fvprprvol fsim1 fsumpr fvsumpr fsim2
 fkolravol fprravol fvprravol fsim3 fsumra fvsumra fsim4
!.}
 fasumpr fvasumpr fsim5 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5 prsumra prvsumra fsim6
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „                                          ³                                           € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@@@³ –¥­  ¢ ¢ «îâ¥  ³‘â®¨¬®áâì ¢ @@@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&&&& &&&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@                                                &'&&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!******************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Žš…Œ, ˆ•Ž„›
#end
.linkform 'EngKontr_33' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Žš…Œ, ˆ•Ž„›'
.group 'PVN'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprvol fprprvol fsumpr
!.}
 fasumpr
!.}
!.if engkontr01
 prsumpr
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                        ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠ®­âà £¥­â:ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., Žš…Œ, ˆ•Ž„›
#end
.linkform 'EngKontr_34' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | €‡.‚€‹., Žš…Œ, ˆ•Ž„›'
.GROUP 'PVV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolprvol fvprprvol fsim1 fvsumpr fsim2
!.}
 fvasumpr fsim5
!.}
!.if engkontr01
 prvsumpr fsim5
!.end
.endfields
 ^

        ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
        ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’ :ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                 &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                 &&&&&&&&&&& @@@@@@ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, Žš…Œ ˆ•Ž„›
#end
.linkform 'EngKontr_35' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’“ | „‚… ‚€‹ž’›, Žš…Œ ˆ•Ž„›'
.GROUP 'PVA'
.fields
 CommonFormHeader
 fbegper fendper prPriceIn prSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop
 fkolprvol fprprvol fvprprvol fsim1 fsumpr fvsumpr fsim2
!.}
 fasumpr fvasumpr fsim5
!.}
!.if engkontr01
 prsumpr prvsumpr fsim5
!.end
.endfields
 ^

       ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
       ‚ …ˆŽ„ ‘ ^ Ž ^ÿ

ÿ˜ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                                 ˆ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
!**************************************************************************************************************************************************************
#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Žš…Œ, €‘•Ž„›
#end
.linkform 'EngKontr_36' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €–.‚€‹., Žš…Œ, €‘•Ž„›'
.group 'RVN'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolravol fprravol fsumra
!.}
 fasumra
!.}
!.if engkontr01
 prsumra
!.end
.endfields
 ^

         ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÿˆÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                       € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ @@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠ®­âà £¥­â: ÿ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                   &'&&&&&&&&&&&&&&&&&&&ÿ‘
.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, Žš…Œ, €‘•Ž„›
#end
.linkform 'EngKontr_37' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | €‡.‚€‹, Žš…Œ, €‘•Ž„›'
.GROUP 'RVV'
.fields
 CommonFormHeader
 fbegper fendper
!.{
 fkonttr
!.{
 fmat fnom fdat nsop fkolravol fvprravol fsim3 fvsumra fsim4
!.}
 fvasumra fsim6
!.}
!.if engkontr01
 prvsumra fsim6
!.end
.endfields
 ^

         ÿ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
         ‚ …ˆŽ„ ‘ ^ Ž ^ÿ
ÿ˜
ÿˆÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³               € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    ÿŠŽ’€ƒ…’:ÿ ^
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@&&&&&&&&&& &&&&&&&& @@@@@@ &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ ˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                 &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
ÿ ˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                 &&&&&&&&&&& @@@@@@ÿ‘
ÿ€.end
.endform

#doc
„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, Žš…Œ, €‘•Ž„›
#end
.linkform 'EngKontr_38' prototype is 'EngKontr'
.NameInList '„‚ˆ†…ˆ… Ž ŠŽ’€ƒ…’€Œ | „‚… ‚€‹ž’›, Žš…Œ, €‘•Ž„›'
.GROUP 'RVA'
.fields
 CommonFormHeader
 fbegper fendper raPriceIn raSumIn
!.{
 fkonttr
!.{
 fmat fnom fdat nsop
 fkolravol fprravol fvprravol fsim3 fsumra fvsumra fsim4
!.}
 fasumra fvasumra fsim6
!.}
!.if engkontr01
 prsumra prvsumra fsim6
!.end
.endfields
 ^
       ‚…„ŽŒŽ‘’œ „‚ˆ†…ˆŸ Œ€’…ˆ€‹œ›• –…Ž‘’…‰
       ‚ …ˆŽ„ ‘ ^ Ž ^
ÿ˜
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³ ®¬¥­ª« â. ³   „ â    ³  ®¬¥à  ³                                € ‘ • Ž „
   ¨¬¥­®¢ ­¨¥ ¬ âæ¥­­®áâ¨ ³   ­®¬¥à    ³ ®¯¥à æ¨¨ ³­ ª« ¤­®©ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ³            ³          ³         ³Š®«¨ç¥áâ¢®³–¥­  ¢ @@@@@@@@@³ –¥­  ¢ ¢ «îâ¥ ³‘â®¨¬®áâì ¢ @@@@@@@@@³‘â®¨¬®áâì ¢ ¢ «îâ¥
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
    Š®­âà £¥­â : ÿ‚@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‚
.{
 @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&&& &'&&&&&&&&&&&&&& &&&&&&&& @@@@@@ &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@
.}
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 ÿˆ’ŽƒŽ Ž ŠŽ’€ƒ…’“ :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ

.}
.if engkontr01
 ÿˆ’ŽƒŽ Ž …„ˆŸ’ˆž :                                                                                   &'&&&&&&&&&&&&&&&&&&& &&&&&&&&&&& @@@@@@ÿ™
.end
.endform
