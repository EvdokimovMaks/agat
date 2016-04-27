/*
 иммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╩
 ╨                     (c) 1994,97 ╙╝Ю╞╝Ю═Ф╗О ┐─▀─┼▓┬┼─                      ╨
 ╨ ▐Ю╝╔╙Б        : ┐─▀─┼▓┬┼─                                                 ╨
 ╨ ▒╗АБ╔╛═       : ▐Ю╝╗╖╒╝╓АБ╒╝                                              ╨
 ╨ ┌╔ЮА╗О        : 5.70                                                      ╨
 ╨ █═╖╜═Г╔╜╗╔    : ▌БГ╔Б ╞╝ ╒К╞ЦА╙Ц ё╝Б.╞Ю╝╓Ц╙Ф╗╗ ╒ Ю═╖Ю╔╖╔ ╞╝╚ЦГ═Б╔╚╔╘      ╨
 ╨ ▌Б╒╔БАБ╒╔╜╜К╘ : ▄╔╓╒╔╓Л █.▀. (MEDVED)                                     ╨
 хммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╪
*/
.set name = 'Ved_TMC'
.hide
.fields
 BegDate  EndDate
 PodrFrom
 PodrTo
 Name1 EdIzm NettoEd Kol: double Netto: double dOpr TTN Price Stoim: double 
.endfields
 ^ ^
.{
^
^
█═╗╛╔╜. ┘╓.╗╖╛. ┌╔А ╔╓. ┼╝╚-╒╝ ┌╔А └═Б═ ▓▓█ √╔╜═ ▒Ц╛╛═ 
^       ^       ^       ^      ^   ^    ^    ^   ^     
.}
.endform
.linkform 'Ved_TMC_01' prototype is 'Ved_TMC'
.NameInList '▌БГ╔Б ╞╝ А╙╚═╓═╛ ╒ Ю═╖Ю╔╖╔ ▓▄√'
.group '▌БГ╔Б ╞╝ А╙╚═╓═╛ ╒ Ю═╖Ю╔╖╔ ▓▄√'
.fields
 BegDate  EndDate
.endfields
.var
 ItgMCKol, ItgMCNetto, ItgMCStoim: double
 ItgPolStoim, ItgOtpStoim: double
 NameMC, NamePol, NameOtp: String[30]
 cFirstMC, cFirst, cFirstOtp, cOtp, cItgPol, stPodrFrom, stPodrTo, stMC: boolean
.endvar
.fields
 NameMC ItgMCKol ItgMCNetto ItgMCStoim
 NamePol ItgPolStoim
 NameOtp ItgOtpStoim
.endfields
.fields
 PodrFrom
 PodrTo
 Name1 EdIzm NettoEd Kol Netto dOpr TTN Price Stoim
.endfields

    Ъ┬ Ъ│▌БГ╔Б ╞╝ ╒╝╖╒Ю═БЦ ё╝Б╝╒╝╘ ╞Ю╝╓Ц╙Ф╗╗ ╗╖ ╞╝╓Ю═╖╓╔╚╔╜╗╘
     ╞╝ А╙╚═╓═╛ ╒ Ю═╖Ю╔╖╔ ▄√ ╖═ ╞╔Ю╗╝╓ c @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ┴

здддддддддддддбддддддбддддддддддбддддддддддддбддддддддддбддддддддддбдддддддддбдддддддддддддддддбддддддддддддддддд©
Ё█═╗╛╔╜╝╒═╜╗╔ Ё┘╓.   Ё┌╔А       Ё┼╝╚-╒╝      Ё┌╔А       Ё└═Б═      Ё█╝╛╔Ю    Ё√╔╜═             Ё▒Ц╛╛═            Ё
Ё             Ё┬╖╛.  Ё╔╓╗╜╗ФК   Ё            Ё          Ё          Ё╜═╙╚═╓╜╝╘Ё                 Ё                 Ё
.begin
cFirst := true
cFirstOtp := true
end.
.{
.begin
 stPodrFrom := NameOtp <> PodrFrom
 stPodrTo := NamePol <> PodrTo
 stMC := NameMC <> Name1
 end.
.{?internal;(stPodrFrom=true or stPodrTo=true or stMC=true) and cFirst=false;
цдддддддддддддаддддддаддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ @@@@@@@@@@@@@@@@@@Ъ┴       ЁЪ┴&'&&&&&.&&&&Ё&&&&&&.&&&Ъ┴Ё          Ё         Ё                 ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
.begin
ItgPolStoim := ItgPolStoim + ItgMCStoim
ItgMCKol := 0
ItgMCNetto := 0
ItgMCStoim := 0
cFirstMC := true;
end.
.}
.{?internal;(stPodrFrom=true or stPodrTo=true) and cFirst=false;
цдддддддддддддддддддддддддддддддаддддддддддддаддддддддддаддддддддддадддддддддадддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ ╞╝ ╞╝╚ЦГ═Б╔╚Л: @@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                                               ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
.begin
ItgOtpStoim := ItgOtpStoim + ItgPolStoim
ItgPolStoim := 0
cItgPol := true
end.
.}
.{?internal;(stPodrFrom=true and cFirst=false);
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ ╞╝ ╝Б╞Ю═╒╗Б╔╚Л: @@@@@@@@@@@@@@@@@Ъ┴                                                       ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
.begin
ItgOtpStoim := 0
end.
.}
.{?internal;(stPodrFrom=true)
.begin
 cFirstMC := true
end.
.{?internal;(cFirstOtp=true and stPodrFrom=true)
цдддддддддддддаддддддаддддддддддаддддддддддддаддддддддддаддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?internal;(cFirstOtp=false and stPodrFrom=true)
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддбдддддддддддддддддеддддддддддддддддд╢
.}
ЁЪ┴ ▌Б╞Ю═╒╗Б╔╚Л: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                       Ё         Ё                 Ё                 Ё
.begin
cOtp := true
end.
.}
.{?internal;(stPodrTo=true)
.{?Internal;(stPodrTo=true and cOtp=true)
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(stPodrTo=true and cOtp=false)
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддбдддддддддддддддддеддддддддддддддддд╢
.}
ЁЪ┴ ▐╝╚ЦГ═Б╔╚Л:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                       Ё         Ё                 Ё                 Ё
.}
.{?Internal;(cFirstMC=true and cItgPol=true)
цдддддддддддддбддддддбддддддддддбддддддддддддбддддддддддбддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(cFirstMC=true and cItgPol=false and cFirst=false)
цдддддддддддддбддддддбддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(cFirstMC=true and cItgPol=false and cFirst=true)
цдддддддддддддбддддддбддддддддддбддддддддддддбддддддддддбддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(cFirstMC=false)
цдддддддддддддеддддддеддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
Ё@@@@@@@@@@@@@Ё@@@@@@Ё&&&&&&.&&&Ё&'&&&&&.&&&&Ё&&&&&&.&&&Ё@@@@@@@@@@Ё@@@@@@@@@Ё&'&&&&&&&&&&&&.&&Ё&'&&&&&&&&&&&&.&&Ё
.begin
 cFirstMC := false
 cFirst := false
 cFirstOtp := false
 cOtp := false
 cItgPol := false
 NameOtp := PodrFrom
 NamePol := PodrTo
 NameMC  := Name1
 ItgMCKol := ItgMCKol + Kol
 ItgMCNetto := ItgMCNetto + Netto
 ItgMCStoim := ItgMCStoim + Stoim
end.
.}
.fields
 NameMC ItgMCKol ItgMCNetto ItgMCStoim
 NamePol ItgPolStoim
 NameOtp ItgOtpStoim
.endfields
.begin
 ItgPolStoim := ItgPolStoim + ItgMCStoim
 ItgOtpStoim := ItgOtpStoim + ItgPolStoim
end.
цдддддддддддддаддддддаддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ @@@@@@@@@@@@@@@@@@Ъ┴       ЁЪ┴&'&&&&&.&&&&Ъ┴ЁЪ┴&&&&&&.&&&Ъ┴Ё          Ё         Ё                 ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
цдддддддддддддддддддддддддддддддаддддддддддддаддддддддддаддддддддддадддддддддадддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ ╞╝ ╞╝╚ЦГ═Б╔╚Л: @@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                                               ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ ╞╝ ╝Б╞Ю═╒╗Б╔╚Л: @@@@@@@@@@@@@@@@@Ъ┴                                                       ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
юддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддаддддддддддддддддды
.endform
.linkform 'ved_TMC_02' prototype is 'Ved_TMC'
.NameInList '▌БГ╔Б ▓▄√ ╒ Ю═╖Ю╔╖╔ ╞╝╚ЦГ═Б╔╚╔╘'
.group '▌БГ╔Б ▓▄√ ╒ Ю═╖Ю╔╖╔ ╞╝╚ЦГ═Б╔╚╔╘'
.fields
 BegDate  EndDate
.endfields
.var
 ItgSklKol, ItgSklNetto, ItgSklStoim: double
 ItgMCStoim, ItgOtpStoim: double
 NameMC, NamePol, NameOtp, Sklad: String[30]
 cFirstMC, cFirst, stPodrFrom, stPodrTo, stMC, stItgSkl: boolean
.endvar
.fields
 NamePol ItgSklKol ItgSklNetto ItgSklStoim
 NameMC ItgMCStoim
 NameOtp ItgOtpStoim
.endfields
.fields
 PodrFrom
 Name1 EdIzm NettoEd
 PodrTo
 Sklad Kol Netto dOpr TTN Price Stoim
.endfields

     Ъ│▌БГ╔Б ╞╝ ╒╝╖╒Ю═БЦ ё╝Б╝╒╝╘ ╞Ю╝╓Ц╙Ф╗╗ ╗╖ ╞╝╓Ю═╖╓╔╚╔╜╗╘
     ╞╝ ▄√ ╒ Ю═╖Ю╔╖╔ ╞╝╚ЦГ═Б╔╚╔╘ ╖═ ╞╔Ю╗╝╓ c @@@@@@@@@@ ╞╝ @@@@@@@@@@Ъ│

здддддддддддддбддддддбддддддддддбддддддддддддбддддддддддбддддддддддбдддддддддбдддддддддддддддддбддддддддддддддддд©
Ё█═╗╛╔╜╝╒═╜╗╔ Ё┘╓.   Ё┌╔А       Ё┼╝╚-╒╝      Ё┌╔А       Ё└═Б═      Ё█╝╛╔Ю    Ё√╔╜═             Ё▒Ц╛╛═            Ё
Ё             Ё┬╖╛.  Ё╔╓╗╜╗ФК   Ё            Ё          Ё          Ё╜═╙╚═╓╜╝╘Ё                 Ё                 Ё
.begin
cFirst := true
end.
.{
.begin 
 stPodrFrom := NameOtp <> PodrFrom
 stPodrTo := NamePol <> PodrTo
 stMC := NameMC <> Name1
 end.
.{?internal;(stPodrFrom=true or stPodrTo=true or stMC=true) and cFirst=false;
цдддддддддддддаддддддаддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ @@@@@@@@@@@@@@@@@@Ъ┴       ЁЪ┴&'&&&&&.&&&&Ъ┴ЁЪ┴&&&&&&.&&&Ъ┴Ё          Ё         Ё                 ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
.begin
ItgMCStoim := ItgMCStoim + ItgSklStoim
ItgSklKol := 0
ItgSklNetto := 0
ItgSklStoim := 0
stItgSkl := true;
end.
.}
.{?internal;(stMC=true or stPodrFrom=true) and cFirst=false;
цдддддддддддддддддддддддддддддддаддддддддддддаддддддддддаддддддддддадддддддддадддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ @@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                                                              ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
.begin
ItgOtpStoim := ItgOtpStoim + ItgMCStoim
ItgMCStoim := 0
cFirstMC := true;
stItgSkl := false;
end.
.}
.{?internal;(stPodrFrom=true and cFirst=false);
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ ╞╝ ╝Б╞Ю═╒╗Б╔╚Л: @@@@@@@@@@@@@@@@@Ъ┴                                                       ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
.begin
ItgOtpStoim := 0
end.
.}
.{?internal;(stPodrFrom=true)
.begin
 cFirstMC := true
end.
.{?internal;(stPodrFrom=true and cFirst=true)
цдддддддддддддаддддддаддддддддддаддддддддддддаддддддддддаддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?internal;(stPodrFrom=true and cFirst=false and ItgOtpStoim <>0)
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?internal;(stPodrFrom=true and cFirst=false and ItgOtpStoim = 0)
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддбдддддддддддддддддеддддддддддддддддд╢
.}
Ё Ъ┴▌Б╞Ю═╒╗Б╔╚Л: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                       Ё         Ё                 Ё                 Ё
.}
.{?internal;(stMC=true)
.{?Internal;(cFirstMC=true and stMC=true and ItgOtpStoim<>0)
цдддддддддддддбддддддбддддддддддбддддддддддддбддддддддддбддддддддддбдддддддддбдддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(cFirstMC=true and stMC=true and ItgOtpStoim=0)
цдддддддддддддбддддддбддддддддддбддддддддддддбддддддддддбддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(cFirstMC=false and stMC=true)
цдддддддддддддеддддддеддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
Ё@@@@@@@@@@@@@Ё@@@@@@Ё&&&&&&.&&&Ё            Ё          Ё          Ё         Ё                 Ё                 Ё
.}
.{?Internal;false
PodrTo ^
.}
.begin
 if stPodrTo=true
    Sklad := PodrTo
 else
    Sklad := '';
end.
.{?Internal;(stItgSkl=true)
цдддддддддддддбддддддбддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
.{?Internal;(stItgSkl=false)
цдддддддддддддеддддддеддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
.}
ЁЪ┴@@@@@@@@@@@@@Ъ┴Ё      Ё          Ё&'&&&&&.&&&&Ё&&&&&&.&&&Ё@@@@@@@@@@Ё@@@@@@@@@Ё&'&&&&&&&&&&&&.&&Ё&'&&&&&&&&&&&&.&&Ё
.begin
 ItgSklKol := ItgSklKol + Kol
 ItgSklNetto := ItgSklNetto + Netto
 ItgSklStoim := ItgSklStoim + Stoim
 cFirstMC := false
 cFirst := false
 stItgSkl := false
 NameOtp := PodrFrom
 NamePol := PodrTo
 NameMC  := Name1
end.
.}
.fields
 NamePol ItgSklKol ItgSklNetto ItgSklStoim
 NameMC ItgMCStoim
 NameOtp ItgOtpStoim
.endfields
.begin
 ItgMCStoim := ItgMCStoim + ItgSklStoim
 ItgOtpStoim := ItgOtpStoim + ItgMCStoim
end.
цдддддддддддддаддддддаддддддддддеддддддддддддеддддддддддеддддддддддедддддддддедддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ @@@@@@@@@@@@@@@@@@Ъ┴       ЁЪ┴&'&&&&&.&&&&Ъ┴ЁЪ┴&&&&&&.&&&Ъ┴Ё          Ё         Ё                 ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
цдддддддддддддддддддддддддддддддаддддддддддддаддддддддддаддддддддддадддддддддадддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ @@@@@@@@@@@@@@@@@@@@@@@@@@Ъ┴                                                              ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
цддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддеддддддддддддддддд╢
ЁЪ┴┬Б╝ё╝ ╞╝ ╝Б╞Ю═╒╗Б╔╚Л: @@@@@@@@@@@@@@@@@Ъ┴                                                       ЁЪ┴&'&&&&&&&&&&&&.&&Ъ┴Ё
юддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддаддддддддддддддддды
.endform


