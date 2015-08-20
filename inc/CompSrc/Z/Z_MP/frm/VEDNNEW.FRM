/*
 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º                     (c) 1994,97 ª®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€                      º
 º à®¥ªâ        : ƒ€‹€Š’ˆŠ€                                                 º
 º ‘¨áâ¥¬        : ‡ à ¡®â­ ï ¯« â                                           º
 º ‚¥àá¨ï        : 5.50                                                      º
 º  §­ ç¥­¨¥    : ‚¥¤®¬®áâì ¯® ­ ç¨á«¥­¨ï¬ ¨ ã¤¥à¦ ­¨ï¬                     º
 º â¢¥âáâ¢¥­­ë© : ƒã§ Œ ªá¨¬ ƒ¥­­ ¤ì¥¢¨ç                                    º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
*/
#doc
‚¥¤®¬®áâì ¯® ­ ç¨á«¥­¨ï¬ ¨ ã¤¥à¦ ­¨ï¬
#end
.set name='vednnew'
.hide
.p 80
.fields
 Npred   NamePodr
 NameCex
 sNKau
 ssumma : double ssumud  : double spodnal  : double spensnal  : double sprofnal  : double
 sNItog1 ssumma1  : double ssumud1  : double spodnal1  : double spensnal1 : double sprofnal1 : double
 sNItog2 ssumma2 : double ssumud2 : double spodnal2 : double spensnal2 : double sprofnal2 : double
.endfields
 ^
 ^
.{ vedmainnew
.if ZaglVednew
 ^
.end
.if num
.end
.{ vedteknew CheckEnter
 ^ ^ ^ ^ ^ ^
.}
.if ItogVednew
 ^ ^ ^ ^ ^ ^
.end
.if BPVednew
.end
.}
 ^ ^ ^ ^ ^ ^
.endform
!
!
!
.linkform 'vednnew_01' prototype is 'vednnew'
.NameInList '®«­ë© á¯¨á®ª ¢ë¯« â á ãç¥â®¬ ¯à®äá®î§­ëå'
.group '3'
.p 80
.fields
 CommonFormHeader
 Npred   NamePodr
 NameCex
 sNKau
 ssumma ssumud  spodnal  spensnal  sprofnal
   ssumud+spodnal+spensnal+sprofnal  ssumma-(ssumud+spodnal+spensnal+sprofnal)
 sNItog1 ssumma1 ssumud1 spodnal1 spensnal1 sprofnal1
   ssumud1+spodnal1+spensnal1+sprofnal1 ssumma1-(ssumud1+spodnal1+spensnal1+sprofnal1)
 sNItog2 ssumma2 ssumud2 spodnal2 spensnal2 sprofnal2
   ssumud2+spodnal2+spensnal2+sprofnal2 ssumma2-(ssumud2+spodnal2+spensnal2+sprofnal2)
! 'true':'s'
.endfields
ÿ ^

ƒ€ˆ‡€–ˆŸ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
               ‘‚„€Ÿ €€‹ˆ’ˆ—…‘Š€Ÿ ‚…„Œ‘’œ
         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{ vedmainnew
.if ZaglVednew
   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.end
.if num
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³        ‡€—…ˆ…     Š€“              ³  €—ˆ‘‹…  ³    €‚€‘    ³ €‹ƒ €   ³ ‚ …‘.”„³ ‚ ”‘‡ ³  “„…†€   ³  Š ‚›„€—…   ³
³                                      ³             ³             ³  „•„›    ³            ³            ³             ³             ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.{ vedteknew CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ³&'&&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&&.&&³
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.}
.if ItogVednew
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&&.&&³ÿ
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if BPVednew
.end
.}
ÿˆâ®£®    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&&.&&³ÿ
ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÿ˜ÿ˜Íÿ˜ÿ˜Íÿ˜ÿ˜Íÿ˜ÿ˜Íÿ˜ÿ˜Íÿ˜ÿ˜ÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍ¾ÿ

.endform
!
!
!
.linkform 'vednnew_02' prototype is 'vednnew'
.NameInList 'C¯¨á®ª ¢ë¯« â'
.group '2'
.p 80
.fields
 CommonFormHeader
 Npred   NamePodr
 NameCex
 sNKau
 /*ssumma ssumud spodnal spensnal
   ssumud+spodnal+spensnal+sprofnal  ssumma-(ssumud+spodnal+spensnal)
 sNItog1 ssumma1 ssumud1 spodnal1 spensnal1
   ssumud1+spodnal1+spensnal1 ssumma1-(ssumud1+spodnal1+spensnal1)
 sNItog2 ssumma2 ssumud2 spodnal2 spensnal2
   ssumud2+spodnal2+spensnal2 ssumma2-(ssumud2+spodnal2+spensnal2)*/
 ssumma ssumud  spodnal  spensnal
   ssumud+spodnal+spensnal+sprofnal  ssumma-(ssumud+spodnal+spensnal+sprofnal)
 sNItog1 ssumma1 ssumud1 spodnal1 spensnal1
   ssumud1+spodnal1+spensnal1+sprofnal1 ssumma1-(ssumud1+spodnal1+spensnal1+sprofnal1)
 sNItog2 ssumma2 ssumud2 spodnal2 spensnal2
   ssumud2+spodnal2+spensnal2+sprofnal2 ssumma2-(ssumud2+spodnal2+spensnal2+sprofnal2)
! 'true':'s'
.endfields
ÿˆ^

ƒ€ˆ‡€–ˆŸ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
               ‘‚„€Ÿ €€‹ˆ’ˆ—…‘Š€Ÿ ‚…„Œ‘’œ
         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{ vedmainnew
.if ZaglVednew
   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.end
.if num
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³        ‡€—…ˆ…     Š€“              ³  €—ˆ‘‹…  ³    €‚€‘    ³ €‹ƒ €   ³ ‚ …‘.”„³  “„…†€   ³  Š ‚›„€—…   ³
³                                      ³             ³             ³  „•„›    ³            ³             ³             ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.{ vedteknew CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ³&'&&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&&.&&³
.}
.if ItogVednew
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&&.&&³ÿ
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if BPVednew
.end
.}
ÿˆâ®£®    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&.&&³&'&&&&&&&&.&&³&'&&&&&&&&.&&³ÿ
ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍ¾ÿˆ

.endform
