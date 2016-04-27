/*
 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º                     (c) 1994,99 ª®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€                      º
 º à®¥ªâ        : ƒ€‹€Š’ˆŠ€                                                 º
 º ‘¨áâ¥¬        : €¢â®âà ­á¯®àâ                                             º
 º ‚¥àá¨ï        : 5.71                                                      º
 º  §­ ç¥­¨¥    : ‚¥¤®¬®áâì ª®¬¯«¥ªâãîé¨å                                   º
 º â¢¥âáâ¢¥­­ë© : ‚« á¨ª  ¢¥« ‚« ¤¨¬¨à®¢¨ç                                 º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
*/
.set name='Ved_Agt'
.hide
!.p 42
.fields
 Filtr
 BegDate  EndDate
 NaimPred dat
 TipTex
 Podraz
 Marka  kol_marka : word
 Mes
 nRecTransp : Comp
 nRecPutLst : Comp
 nRecAgt    : Comp
 GarNom NomerGar
 NomPutLst DataPl
 KodFormPl DatObr DatRas Tabn1 fio1 Tabn2 Fio2
 Wch Wdn och odn pw po
 Kodgsm NaimGsm KolForRas  :double Ow Kofn VidT :double SdanT :double Normt :double Fakt :double Otklt Proct Owv
 VnytriGar
 MotMaslo  :double  TransMaslo :double  SpecMaslo :double  PlastSmazka  :double
 Kodgsm1 NaimGsm1 KolForRas1 :double Ow1 Kofn1 VidT1 :double SdanT1 :double Normt1 :double Fakt1 :double Otklt1 Proct1 Owv1
 VnytriGar1
 MotMaslo1 TransMaslo1 SpecMaslo1 PlastSmazka1
 Kodgsm2 NaimGsm2  KolForRas2 :double Ow2 Kofn2 VidT2 :double SdanT2 :double Normt2 :double Fakt2 :double Otklt2 Proct2 Owv2
 VnytriGar2
 MotMaslo2 TransMaslo2 SpecMaslo2 PlastSmazka2
 TimeAll:double Prprc TimeMove :double TimeStop :double TimeRep :double TimeHeat :double TimeSpec :double
 TimeLoad :double Timedef :double
 KolEz Probeg  :double Probeg_with_gruz :double  Probeg_pri_gruz  :double
 Money : Double
 KolTn :double  Koltn_pri :double Koltn_km :double Koltn_km_pri :double
.endfields

.{
^
.}

^ ^ ^ ^
.{
^
.{
^
.{
^ ^
.{
.{
^
.{
^ ^ ^
^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^

^ ^ ^ ^ ^
^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
.}
.}
.}
.}
.}
.}
.endform

.linkform 'Ved_Agt_01' prototype is 'Ved_Agt'
.NameInList '¡é¨¥ ¯®ª § â¥«¨'
.group '®ª § â¥«¨ à ¡®âë'
.Defo Landscape
.var
ItgTimeMove, ItgTimeAll,ItgTimeStop, ItgTimeRep, ItgTimeHeat, ItgTimeSpec, ItgTimeLoad, ItgTimedef   :double
ItgProbeg, ItgProbeg_with_gruz, ItgProbeg_pri_gruz,
ItgKoltn, ItgKoltn_pri, ItgKoltn_km, ItgKoltn_km_pri    :double
AvtItgTimeMove, AvtItgTimeAll,AvtItgTimeStop, AvtItgTimeRep, AvtItgTimeHeat, AvtItgTimeSpec, AvtItgTimeLoad, AvtItgTimedef   :double
AvtItgProbeg, AvtItgProbeg_with_gruz, AvtItgProbeg_pri_gruz,
AvtItgKoltn, AvtItgKoltn_pri, AvtItgKoltn_km, AvtItgKoltn_km_pri    :double
MarItgTimeMove, MarItgTimeAll,MarItgTimeStop, MarItgTimeRep, MarItgTimeHeat, MarItgTimeSpec, MarItgTimeLoad, MarItgTimedef  :double
MarItgProbeg, MarItgProbeg_with_gruz, MarItgProbeg_pri_gruz,
MarItgKoltn, MarItgKoltn_pri, MarItgKoltn_km, MarItgKoltn_km_pri   :double
PodItgTimeMove, PodItgTimeAll,PodItgTimeStop, PodItgTimeRep, PodItgTimeHeat, PodItgTimeSpec, PodItgTimeLoad, PodItgTimedef   :double
PodItgProbeg, PodItgProbeg_with_gruz, PodItgProbeg_pri_gruz,
PodItgKoltn, PodItgKoltn_pri, PodItgKoltn_km, PodItgKoltn_km_pri   :double
PredItgTimeMove, PredItgTimeAll,PredItgTimeStop, PredItgTimeRep, PredItgTimeHeat, PredItgTimeSpec, PredItgTimeLoad, PredItgTimedef   :double
PredItgProbeg, PredItgProbeg_with_gruz, PredItgProbeg_pri_gruz,
PredItgKoltn, PredItgKoltn_pri, PredItgKoltn_km, PredItgKoltn_km_pri    :double
AllPredItgTimeMove, AllPredItgTimeAll,AllPredItgTimeStop, AllPredItgTimeRep, AllPredItgTimeHeat,
AllPredItgTimeSpec, AllPredItgTimeLoad, AllPredItgTimedef   :double
AllPredItgProbeg, AllPredItgProbeg_with_gruz, AllPredItgProbeg_pri_gruz,
AllPredItgKoltn, AllPredItgKoltn_pri, AllPredItgKoltn_km, AllPredItgKoltn_km_pri :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
! CommonFormHeader
  Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 KodFormPl Tabn1 fio1 Tabn2 Fio2
 Wch Wdn och odn pw po
 KolEz
 TimeAll TimeMove TimeStop TimeRep TimeLoad TimeSpec
 Probeg Probeg_with_gruz
.endfields

.{
^
.}

.begin
AllPredItgTimeMove := 0 AllPredItgTimeAll := 0 AllPredItgTimeStop := 0 AllPredItgTimeRep := 0
AllPredItgTimeHeat := 0
    AllPredItgTimeSpec := 0 AllPredItgTimeLoad := 0 AllPredItgTimedef := 0
AllPredItgProbeg := 0 AllPredItgProbeg_with_gruz  := 0
AllPredItgProbeg_pri_gruz := 0
AllPredItgKoltn  := 0 AllPredItgKoltn_pri  := 0 AllPredItgKoltn_km  := 0
AllPredItgKoltn_km_pri  := 0
end.
ÿ˜                                                             ®ª § â¥«¨ à ¡®âë ª®¬¯«¥ªâãîé¨å
                                                   c   @@@@@@@@@@@@@@@@@@@@@  ¯®  @@@@@@@@@@@@@@@@@@@@@
                                                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                                                                                    @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³   ®¬¥à ³   „ â      ³   ’¨¯   ³            ‚o¤¨â¥«¨                            ³     ‚ë¥§¤       ³      ‚®§¢à â    ³     ‘¯¨¤®¬¥âà    ³Š®«-¢®³                    ‚à¥¬ï                                ³        à®¡¥£
  ­®¬¥à    ³ ¯ãâ¥¢®£®³  ¢ë¯¨áª¨   ³¥à¥¢®§ª¨³ÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ³¥§¤®ª ³ÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ
           ³   «¨áâ  ³            ³         ³ â ¡.1 ³    ”.ˆ..     ³ â ¡.2  ³     ”.ˆ..    ³   „ â    ³‚à¥¬ï ³   „ â    ³‚à¥¬ï ³  ‚ë¥§¤  ³‚®§¢à â ³      ³   ‚á¥£® ³  „¢¨¦.   ³   à®á. ³  ¥¬.  ³  /.  ³c¯¥æ®¡®à³  ¡é¨©   ³   á £à.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.begin
NaimTiptex := Tiptex
PredItgTimeMove := 0 PredItgTimeAll := 0 PredItgTimeStop := 0 PredItgTimeRep := 0 PredItgTimeHeat := 0
PredItgTimeSpec := 0 PredItgTimeLoad   := 0 PredItgTimedef := 0
PredItgProbeg := 0 PredItgProbeg_with_gruz  := 0 PredItgProbeg_pri_gruz := 0
PredItgKoltn  := 0 PredItgKoltn_pri  := 0 PredItgKoltn_km  := 0 PredItgKoltn_km_pri  := 0
end.
.{
.begin
Naimpodr := Podraz
PodItgTimeMove := 0 PodItgTimeAll := 0 PodItgTimeStop := 0 PodItgTimeRep := 0 PodItgTimeHeat := 0
PodItgTimeSpec := 0 PodItgTimeLoad   := 0 PodItgTimedef := 0
PodItgProbeg := 0 PodItgProbeg_with_gruz  := 0 PodItgProbeg_pri_gruz := 0
PodItgKoltn  := 0 PodItgKoltn_pri  := 0 PodItgKoltn_km  := 0 PodItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimMarka := Marka
MarItgTimeMove := 0 MarItgTimeAll := 0 MarItgTimeStop := 0 MarItgTimeRep := 0 MarItgTimeHeat := 0
MarItgTimeSpec := 0 MarItgTimeLoad   := 0 MarItgTimedef := 0
MarItgProbeg := 0 MarItgProbeg_with_gruz  := 0 MarItgProbeg_pri_gruz := 0
MarItgKoltn  := 0 MarItgKoltn_pri  := 0 MarItgKoltn_km  := 0 MarItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimAvto := GarNom
AvtItgTimeMove := 0 AvtItgTimeAll := 0 AvtItgTimeStop := 0 AvtItgTimeRep := 0 AvtItgTimeHeat := 0
AvtItgTimeSpec := 0 AvtItgTimeLoad   := 0 AvtItgTimedef := 0
AvtItgProbeg := 0 AvtItgProbeg_with_gruz  := 0 AvtItgProbeg_pri_gruz := 0
AvtItgKoltn  := 0 AvtItgKoltn_pri  := 0 AvtItgKoltn_km  := 0 AvtItgKoltn_km_pri  := 0
end.
.{
.begin
NaimMes := Mes
ItgTimeMove := 0 ItgTimeAll := 0 ItgTimeStop := 0 ItgTimeRep := 0 ItgTimeHeat := 0
ItgTimeSpec := 0 ItgTimeLoad   := 0 ItgTimedef := 0
ItgProbeg := 0 ItgProbeg_with_gruz  := 0 ItgProbeg_pri_gruz := 0
ItgKoltn  := 0 ItgKoltn_pri  := 0 ItgKoltn_km  := 0 ItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
ItgTimeMove   := ItgTimeMove + TimeMove
ItgTimeAll := ItgTimeAll + TimeAll
ItgTimeStop   := ItgTimeStop + TimeStop
ItgTimeRep   := ItgTimeRep + TimeRep
ItgTimeHeat   := ItgTimeHeat + TimeHeat
ItgTimeSpec   := ItgTimeSpec + TimeSpec
ItgTimeLoad   := ItgTimeLoad + TimeLoad
ItgTimedef   := ItgTimedef + Timedef
ItgProbeg := ItgProbeg + Probeg
ItgProbeg_with_gruz := ItgProbeg_with_gruz + Probeg_with_gruz
ItgProbeg_pri_gruz  := ItgProbeg_pri_gruz + Probeg_pri_gruz
ItgKoltn        := ItgKoltn        + Koltn
ItgKoltn_pri    := ItgKoltn_pri    + Koltn_pri
ItgKoltn_km     := ItgKoltn_km     + Koltn_km
ItgKoltn_km_pri := ItgKoltn_km_pri + Koltn_km_pri
end.
 @@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@ @@@@@@@@@@ @@@@@@ &'&&&&&&& &'&&&&&& &'&&.& &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &&'&&&&&.&
.}
.begin
AvtItgTimeMove   := AvtItgTimeMove + ItgTimeMove
AvtItgTimeAll := AvtItgTimeAll + ItgTimeAll
AvtItgTimeStop   := AvtItgTimeStop + ItgTimeStop
AvtItgTimeRep   := AvtItgTimeRep + ItgTimeRep
AvtItgTimeHeat   := AvtItgTimeHeat + ItgTimeHeat
AvtItgTimeSpec   := AvtItgTimeSpec + ItgTimeSpec
AvtItgTimeLoad   := AvtItgTimeLoad + ItgTimeLoad
AvtItgTimedef   := AvtItgTimedef + ItgTimedef
AvtItgProbeg := AvtItgProbeg + ItgProbeg
AvtItgProbeg_with_gruz := AvtItgProbeg_with_gruz + ItgProbeg_with_gruz
AvtItgProbeg_pri_gruz  := AvtItgProbeg_pri_gruz + ItgProbeg_pri_gruz
AvtItgKoltn        := AvtItgKoltn        + ItgKoltn
AvtItgKoltn_pri    := AvtItgKoltn_pri    + ItgKoltn_pri
AvtItgKoltn_km     := AvtItgKoltn_km     + ItgKoltn_km
AvtItgKoltn_km_pri := AvtItgKoltn_km_pri + ItgKoltn_km_pri
end.
.Fields
NaimMes ItgTimeAll ItgTimeMove ItgTimeStop ItgTimeRep ItgTimeLoad ItgTimeSpec ItgProbeg  ItgProbeg_with_gruz
.endfields
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                      &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
MarItgTimeMove   := MarItgTimeMove + AvtItgTimeMove
MarItgTimeAll := MarItgTimeAll + AvtItgTimeAll
MarItgTimeStop   := MarItgTimeStop + AvtItgTimeStop
MarItgTimeRep   := MarItgTimeRep + AvtItgTimeRep
MarItgTimeHeat   := MarItgTimeHeat + AvtItgTimeHeat
MarItgTimeSpec   := MarItgTimeSpec + AvtItgTimeSpec
MarItgTimeLoad   := MarItgTimeLoad + AvtItgTimeLoad
MarItgTimedef   := MarItgTimedef + AvtItgTimedef
MarItgProbeg := MarItgProbeg + AvtItgProbeg
MarItgProbeg_with_gruz := MarItgProbeg_with_gruz + AvtItgProbeg_with_gruz
MarItgProbeg_pri_gruz  := MarItgProbeg_pri_gruz + AvtItgProbeg_pri_gruz
MarItgKoltn        := MarItgKoltn        + AvtItgKoltn
MarItgKoltn_pri    := MarItgKoltn_pri    + AvtItgKoltn_pri
MarItgKoltn_km     := MarItgKoltn_km     + AvtItgKoltn_km
MarItgKoltn_km_pri := MarItgKoltn_km_pri + AvtItgKoltn_km_pri
end.
.Fields
NaimAvto  AvtItgTimeAll AvtItgTimeMove AvtItgTimeStop AvtItgTimeRep AvtItgTimeLoad AvtItgTimeSpec AvtItgProbeg  AvtItgProbeg_with_gruz
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                      &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
PodItgTimeMove   := PodItgTimeMove + MarItgTimeMove
PodItgTimeAll := PodItgTimeAll + MarItgTimeAll
PodItgTimeStop   := PodItgTimeStop + MarItgTimeStop
PodItgTimeRep   := PodItgTimeRep + MarItgTimeRep
PodItgTimeHeat   := PodItgTimeHeat + MarItgTimeHeat
PodItgTimeSpec   := PodItgTimeSpec + MarItgTimeSpec
PodItgTimeLoad   := PodItgTimeLoad + MarItgTimeLoad
PodItgTimedef   := PodItgTimedef + MarItgTimedef
PodItgProbeg := PodItgProbeg + MarItgProbeg
PodItgProbeg_with_gruz := PodItgProbeg_with_gruz + MarItgProbeg_with_gruz
PodItgProbeg_pri_gruz  := PodItgProbeg_pri_gruz + MarItgProbeg_pri_gruz
PodItgKoltn        := PodItgKoltn        + MarItgKoltn
PodItgKoltn_pri    := PodItgKoltn_pri    + MarItgKoltn_pri
PodItgKoltn_km     := PodItgKoltn_km     + MarItgKoltn_km
PodItgKoltn_km_pri := PodItgKoltn_km_pri + MarItgKoltn_km_pri
end.
.Fields
NaimMarka  MarItgTimeAll MarItgTimeMove MarItgTimeStop MarItgTimeRep MarItgTimeLoad MarItgTimeSpec MarItgProbeg  MarItgProbeg_with_gruz
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                      &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.&  &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
PredItgTimeMove   := PredItgTimeMove + PodItgTimeMove
PredItgTimeAll := PredItgTimeAll + PodItgTimeAll
PredItgTimeStop   := PredItgTimeStop + PodItgTimeStop
PredItgTimeRep   := PredItgTimeRep + PodItgTimeRep
PredItgTimeHeat   := PredItgTimeHeat + PodItgTimeHeat
PredItgTimeSpec   := PredItgTimeSpec + PodItgTimeSpec
PredItgTimeLoad   := PredItgTimeLoad + PodItgTimeLoad
PredItgTimedef   := PredItgTimedef + PodItgTimedef
PredItgProbeg := PredItgProbeg + PodItgProbeg
PredItgProbeg_with_gruz := PredItgProbeg_with_gruz + PodItgProbeg_with_gruz
PredItgProbeg_pri_gruz  := PredItgProbeg_pri_gruz + PodItgProbeg_pri_gruz
PredItgKoltn        := PredItgKoltn        + PodItgKoltn
PredItgKoltn_pri    := PredItgKoltn_pri    + PodItgKoltn_pri
PredItgKoltn_km     := PredItgKoltn_km     + PodItgKoltn_km
PredItgKoltn_km_pri := PredItgKoltn_km_pri + PodItgKoltn_km_pri
end.
.Fields
NaimPodr  PodItgTimeAll PodItgTimeMove PodItgTimeStop PodItgTimeRep PodItgTimeLoad PodItgTimeSpec PodItgProbeg PodItgProbeg_with_gruz
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                      &'&&&&&.& &'&&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
AllPredItgTimeMove   := AllPredItgTimeMove + PredItgTimeMove
AllPredItgTimeAll := AllPredItgTimeAll + PredItgTimeAll
AllPredItgTimeStop   := AllPredItgTimeStop + PredItgTimeStop
AllPredItgTimeRep   := AllPredItgTimeRep + PredItgTimeRep
AllPredItgTimeHeat   := AllPredItgTimeHeat + PredItgTimeHeat
AllPredItgTimeSpec   := AllPredItgTimeSpec + PredItgTimeSpec
AllPredItgTimeLoad   := AllPredItgTimeLoad + PredItgTimeLoad
AllPredItgTimedef   := AllPredItgTimedef + PredItgTimedef
AllPredItgProbeg := AllPredItgProbeg + PredItgProbeg
AllPredItgProbeg_with_gruz := AllPredItgProbeg_with_gruz + PredItgProbeg_with_gruz
AllPredItgProbeg_pri_gruz  := AllPredItgProbeg_pri_gruz + PredItgProbeg_pri_gruz
AllPredItgKoltn        := AllPredItgKoltn        + PredItgKoltn
AllPredItgKoltn_pri    := AllPredItgKoltn_pri    + PredItgKoltn_pri
AllPredItgKoltn_km     := AllPredItgKoltn_km     + PredItgKoltn_km
AllPredItgKoltn_km_pri := AllPredItgKoltn_km_pri + PredItgKoltn_km_pri
end.
.Fields
NaimTipTex PredItgTimeAll PredItgTimeMove PredItgTimeStop PredItgTimeRep PredItgTimeLoad PredItgTimeSpec PredItgProbeg PredItgProbeg_with_gruz
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                      &'&&&&&.& &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.Fields
AllPredItgTimeAll  allPredItgTimeMove AllPredItgTimeStop AllPredItgTimeRep AllPredItgTimeLoad AllPredItgTimeSpec
AllPredItgProbeg AllPredItgProbeg_with_gruz
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                                                                                                                    &'&&&&&.& &'&&&&&.& &'&&&&&&.& &'&&&&&.& &&&&&&.& &&&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™

.endform