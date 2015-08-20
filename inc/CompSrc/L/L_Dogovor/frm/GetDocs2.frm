/*
 иммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╩
 ╨                     (c) 1987,2001 ╙╝Ю╞╝Ю═Ф╗О ┐─▀─┼▓┬┼─                    ╨
 ╨ ▐Ю╝╔╙Б        : ┐─▀─┼▓┬┼─                                                 ╨
 ╨ ▒╗АБ╔╛═       : ▌╞╔Ю═Б╗╒╜К╘ ╙╝╜БЦЮ                                        ╨
 ╨ ┌╔ЮА╗О        : 5.73                                                      ╨
 ╨ █═╖╜═Г╔╜╗╔    : ▐╔Г═БЛ ╒ ╗╜Б╔ЮД╔╘А╔ ▐Ю╝А╛╝БЮ ╓╝ё-А╝ё╚-╙═╚                 ╨
 ╨                 ╞╚═╜═ ╗ ╞Ю╗╒О╖═╜╜КЕ ╓╝╙Ц╛╔╜Б╝╒                            ╨
 ╨ ▌Б╒╔БАБ╒╔╜╜К╘ : ≤╗Х╝╒ ┌╗╙Б╝Ю ┌═А╗╚Л╔╒╗Г (ShV)                             ╨
 хммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╪
*/

#doc
▐╔Г═БЛ ╒ ╗╜Б╔ЮД╔╘А╔ ▐Ю╝А╛╝БЮ ╓╝ё-А╝ё╚-╙═╚
╞╚═╜═ ╗ ╞Ю╗╒О╖═╜╜КЕ ╓╝╙Ц╛╔╜Б╝╒
#end
.form 'GetDocs2'
.hide
.var
  IsPrintRazd         : boolean;
  IsFirstRecord       : boolean;
.endvar
.fields
   Doc_cDogovor       : comp
   Doc_cAppDogovor    : comp
   Doc_cCalPlan       : comp
   Doc_sDocType
   Doc_DesGr
   Doc_Descr
   Doc_dDoc
   Doc_NoDoc
   Doc_KatOrg
   Doc_Notes
   Doc_sDirect
.endfields
.{CheckEnter Main_Cicle1 // └╝ё╝╒╝Ю/▒╝ё╚═Х/┼═╚.╞╚.
  ^^^^^^^^^^^
.}
.{CheckEnter CiclePlat
.fields
   Plat_NRec          : comp
   Plat_DesGr
   Plat_Descr
   Plat_dDoc
   Plat_NoDoc
   Plat_KatOrg
   Plat_NamePl
   Plat_Summa
.endfields
   ^^^^^^^^
.}
.{CheckEnter CicleDO
.fields
   DO_NRec            : comp
   DO_DesGr
   DO_Descr
   DO_dDoc
   DO_NoDoc
   DO_Stat
   DO_KatOrg
   DO_Total
   DO_SimvolB
.endfields
   ^^^^^^^^^
.}
.{CheckEnter CicleKatSopr
.fields
   KatSopr_Nrec       : comp
   KatSopr_DesGr
   KatSopr_Descr
   KatSopr_dDoc
   KatSopr_NoDoc
   KatSopr_Stat
   KatSopr_KatOrg_Name
   KatSopr_Sum
   KatSopr_Valut
.endfields
  ^^^^^^^^^
.}

.{CheckEnter CicleNZakaz
.fields
   NZakaz_NRec        : comp
   NZakaz_DesGr
   NZakaz_Descr
   NZakaz_dDoc
   NZakaz_NoDoc
   NZakaz_Stat
   NZakaz_KatOrg_Name
   NZakaz_Prior
   NZakaz_Type
.endfields
  ^^^^^^^^^
.}
.endform


#doc
░╔╔АБЮ ╓╝╙Ц╛╔╜Б╝╒
#end
.linkform 'GetDocs2_00' prototype is 'GetDocs2'
.nameInList '░╔╔АБЮ ╓╝╙Ц╛╔╜Б╝╒'

.fields
   Doc_sDocType
   Doc_DesGr
   Doc_Descr
   Doc_dDoc
   Doc_NoDoc
   Doc_KatOrg
   Doc_Notes
   Doc_sDirect
.endfields
   дддддддддддддддддддддддбддддддддддбдддддддддддбдддддддддддбддддддддддбдддддддддддддддддддддддддбдддддддддддддбдддддддддддд
           └╝╙Ц╛╔╜Б       Ё  ┐ЮЦ╞╞═  Ё └╔А╙Ю╗╞Б╝ЮЁ └═Б═ ╖═╙╚.Ё  █╝╛╔Ю   Ё       ┼╝╜БЮ═ё╔╜Б        Ё   ▒Б═БЦА    Ё    ┌╗╓
   дддддддддддддддддддддддеддддддддддедддддддддддедддддддддддеддддддддддедддддддддддддддддддддддддедддддддддддддедддддддддддд
.{CheckEnter Main_Cicle1
   @@@@@@@@@@@@@@@@@@@@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@@@@@@@@@Ё@@@@@@@@@@@@@Ё@@@@@@@@@@@@
.}
   дддддддддддддддддддддддаддддддддддадддддддддддадддддддддддаддддддддддадддддддддддддддддддддддддадддддддддддддадддддддддддд
.begin
  IsPrintRazd   := False;
  IsFirstRecord := True;
end.
.{CheckEnter CiclePlat
.begin
  IsPrintRazd   := True;
end.
.fields
   Plat_DesGr
   Plat_Descr
   Plat_dDoc
   Plat_NoDoc
   Plat_KatOrg
   Plat_NamePl
   Plat_Summa
.endfields
.{while IsFirstRecord
   ▐▀─▓┘├┬
   дддддддддддбдддддддддддбдддддддддддбддддддддддбдддддддддддддддддддддддддбдддддддддддддддддддддддддддбдддддддддддддддддд
      ┐ЮЦ╞╞═  Ё └╔А╙Ю╗╞Б╝ЮЁ   └═Б═    Ё  █╝╛╔Ю   Ё       ┼╝╜БЮ═ё╔╜Б        Ё    █═╖╜═Г╔╜╗╔ ╞╚═Б╔╕═     Ё  ▒Ц╛╛═ ╒ █└┘
   дддддддддддедддддддддддедддддддддддеддддддддддедддддддддддддддддддддддддедддддддддддддддддддддддддддедддддддддддддддддд
.begin
  IsFirstRecord := False;
end.
.}
    @@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&&&&&&&&&&&&&&&.&&
.}
.{while IsPrintRazd
   дддддддддддадддддддддддадддддддддддаддддддддддадддддддддддддддддддддддддадддддддддддддддддддддддддддадддддддддддддддддд
.begin
  IsPrintRazd   := False;
  IsFirstRecord := True;
end.
.}

.{CheckEnter CicleDO
.begin
  IsPrintRazd   := True;
end.
.fields
   DO_DesGr
   DO_Descr
   DO_dDoc
   DO_NoDoc
   DO_Stat
   DO_KatOrg
   DO_Total
   DO_SimvolB
.endfields
.{while IsFirstRecord
   └▌
   дддддддддддбдддддддддддбдддддддддддбддддддддддбддддддддддддбдддддддддддддддддддддддддбдддддддддддддддбдддддддддддд
      ┐ЮЦ╞╞═  Ё └╔А╙Ю╗╞Б╝ЮЁ   └═Б═    Ё  █╝╛╔Ю   Ё   ▒Б═БЦА   Ё       ┼╝╜БЮ═ё╔╜Б        Ё    ▒Ц╛╛═      Ё  ┌═╚НБ═
   дддддддддддедддддддддддедддддддддддеддддддддддеддддддддддддедддддддддддддддддддддддддедддддддддддддддедддддддддддд
.begin
  IsFirstRecord := False;
end.
.}
    @@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@@@@@@@@@Ё&&&&&&&&&&&&.&&Ё@@@@@@@@@@@@
.}
.{while IsPrintRazd
   дддддддддддадддддддддддадддддддддддаддддддддддаддддддддддддадддддддддддддддддддддддддадддддддддддддддадддддддддддд
.begin
  IsPrintRazd   := False;
  IsFirstRecord := True;
end.
.}

.{CheckEnter CicleKatSopr
.begin
  IsPrintRazd   := True;
end.
.fields
   KatSopr_DesGr
   KatSopr_Descr
   KatSopr_dDoc
   KatSopr_NoDoc
   KatSopr_Stat
   KatSopr_KatOrg_Name
   KatSopr_Sum
   KatSopr_Valut
.endfields
.{while IsFirstRecord
   █─┼▀─└█⌡┘
   дддддддддддбдддддддддддбдддддддддддбддддддддддбддддддддддддбдддддддддддддддддддддддддбдддддддддддддддбдддддддддддд
      ┐ЮЦ╞╞═  Ё └╔А╙Ю╗╞Б╝ЮЁ   └═Б═    Ё  █╝╛╔Ю   Ё   ▒Б═БЦА   Ё       ┼╝╜БЮ═ё╔╜Б        Ё    ▒Ц╛╛═      Ё  ┌═╚НБ═
   дддддддддддедддддддддддедддддддддддеддддддддддеддддддддддддедддддддддддддддддддддддддедддддддддддддддедддддддддддд
.begin
  IsFirstRecord := False;
end.
.}
    @@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@@@@@@@@@Ё&&&&&&&&&&&&.&&Ё@@@@@@@@@@@@
.}
.{while IsPrintRazd
   дддддддддддадддддддддддадддддддддддаддддддддддаддддддддддддадддддддддддддддддддддддддадддддддддддддддадддддддддддд
.begin
  IsPrintRazd   := False;
  IsFirstRecord := True;
end.
.}

.{CheckEnter CicleNZakaz
.begin
  IsPrintRazd   := True;
end.
.fields
   NZakaz_DesGr
   NZakaz_Descr
   NZakaz_dDoc
   NZakaz_NoDoc
   NZakaz_Stat
   NZakaz_KatOrg_Name
   NZakaz_Prior
   NZakaz_Type
.endfields
.{while IsFirstRecord
   █─░÷└-┤─┼─┤⌡
   дддддддддддбдддддддддддбдддддддддддбддддддддддбддддддддддддбдддддддддддддддддддддддддбдддддддддддддддбдддддддддддд
      ┐ЮЦ╞╞═  Ё └╔А╙Ю╗╞Б╝ЮЁ   └═Б═    Ё  █╝╛╔Ю   Ё   ▒Б═БЦА   Ё       ┼╝╜БЮ═ё╔╜Б        Ё   ▐Ю╗╝Ю╗Б╔Б   Ё    ▓╗╞
   дддддддддддедддддддддддедддддддддддеддддддддддеддддддддддддедддддддддддддддддддддддддедддддддддддддддедддддддддддд
.begin
  IsFirstRecord := False;
end.
.}
    @@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@Ё@@@@@@@@@@@@
.}
.{while IsPrintRazd
   дддддддддддадддддддддддадддддддддддаддддддддддаддддддддддддадддддддддддддддддддддддддадддддддддддддддадддддддддддд
.begin
  IsPrintRazd   := False;
  IsFirstRecord := True;
end.
.}
.endform