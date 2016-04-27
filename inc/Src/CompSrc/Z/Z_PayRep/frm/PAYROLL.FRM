#doc
‚¥¤®¬®áâì ­  ®âªàëâ¨¥ ¯« áâ¨ª®¢ëå ª àâ
#end
.form payroll
.hide
.{ FilesCycle checkenter
.fields
NaimField
DataField
.endfields
.{ Head CheckEnter
  ^^
.}
.fields
org
curdate
npp
FIO
Passports_Ser
Passports_Nmb
mystring
.endfields
         ‚¥¤®¬®áâì ­  ®âªàëâ¨¥ ¯« áâ¨ª®¢ëå ª àâ
         ƒ€ˆ‡€–ˆŸ ^
         „€’€ ^
.{
.[h
ÚÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ¿
³ N   ³   ”€Œˆ‹ˆŸ ˆŒŸ ’—…‘’‚ ‘’“„ˆŠ€      ³‘…ˆŸ    ³Œ…   ³
³¯/¯  ³                                        ³€‘’€ ³€‘’€³
ÃÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄ´
.]h
.{ prMainCycle checkenter
³ @@@ ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³@@@@@@@@@³@@@@@@@@³.{.?ItemCycle;^³.}
.}
.fields
q
.endfields
ÃÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄ´
³ ˆ’ƒ ‘’“„ˆŠ‚: @@@@@                                        ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.}
.fields
NaimFinField
FinField
.endfields
.{ Foot CheckEnter
^^
.}
.}// FileCycle
.endform

.linkform payroll_01 prototype is payroll
.nameinlist '”®à¬  á ¯ á¯®àâ­ë¬¨ ¤ ­­ë¬¨'
.{ FilesCycle checkenter
.fields
NaimField
DataField
.endfields
.{ Head CheckEnter
  ^^
.}
.fields
org
curdate
npp
FIO
Passports_Ser
Passports_Nmb
mystring
.endfields
ÿˆ         ‚¥¤®¬®áâì ­  ®âªàëâ¨¥ ¯« áâ¨ª®¢ëå ª àâ
         ƒ€ˆ‡€–ˆŸ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
         „€’€ ^ÿˆ
.{
.[h OverWrite
ÿˆÚÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ¿
³ N   ³   ”€Œˆ‹ˆŸ ˆŒŸ ’—…‘’‚ ‘’“„ˆŠ€      ³‘…ˆŸ    ³Œ…   ³
³¯/¯  ³                                        ³€‘’€ ³€‘’€³
ÃÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄ´ÿˆ
.]h
.{ prMainCycle checkenter
ÿˆ³ @@@ ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³@@@@@@@@@³@@@@@@@@³ÿˆ.{.?ItemCycle;ÿ˜^³ÿ˜.}
.}
.fields
q
.endfields
ÿˆÃÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄ´
³ ˆ’ƒ ‘’“„ˆŠ‚: @@@@@                                        ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÿˆ
.}
.fields
NaimFinField
FinField
.endfields
.{ Foot CheckEnter
^^
.}
.}
.endform

.linkform payroll_02 prototype is payroll
.nameinlist '”®à¬  ¡¥§ ¯ á¯®àâ­ëå ¤ ­­ëå'
.var
emptystring: string;
.endvar
.begin
emptystring:= '';
end.
.{ FilesCycle checkenter
.fields
NaimField
DataField
.endfields
.{ Head CheckEnter
  ^^
.}
.fields
emptystring
mystring
.endfields
.{
.[h
.]h
.{ prMainCycle checkenter
^ .{.?ItemCycle;ÿ˜^³ÿ˜.}
.}
.}
.fields
NaimFinField
FinField
.endfields
.{ Foot CheckEnter
^^
.}
.}
.endform