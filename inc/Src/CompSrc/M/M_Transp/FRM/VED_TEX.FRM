/*
 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º                     (c) 1994,99 ª®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€                      º
 º à®¥ªâ        : ƒ€‹€Š’ˆŠ€                                                 º
 º ‘¨áâ¥¬        : €¢â®âà ­á¯®àâ                                             º
 º ‚¥àá¨ï        : 5.70                                                      º
 º  §­ ç¥­¨¥    : ’¥å­¨ª® - íªá¯«ã â æ¨®­­ë¥ ¯®ª § â¥«¨                     º
 º â¢¥âáâ¢¥­­ë© : ‹¨á¨æ   â «ìï Œ¨å ©«®¢­                                  º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
*/
.set name='Ved_Tex'
.hide
!.p 42
.fields
 Filtr
 BegDate  EndDate
 NaimPred VarToplivo dat Vidost
 TipTex
 Podraz
 Marka  kol_marka : word
 Mes
 nRecTransp : Comp
 nRecPutLst : Comp
 GruzPod : Double
PutLsttimeAll  : Double
PutLsttimemove : Double
PutLsttimestop : Double
PutLsttimerep  : Double

 GarNom NomerGar
 NomPutLst DataPl
 KodFormPl DatObr DatRas Tabn1 fio1 Tabn2 Fio2
 Wch Wdn och odn pw po
 Kodgsm NaimGsm KolForRas  :double Ow Kofn VidT :double SdanT :double Normt :double Fakt :double
 Fakt_Den :double Otklt Proct Owv
 VnytriGar
 MotMaslo  :double  TransMaslo :double  SpecMaslo :double  PlastSmazka  :double
 Kodgsm1 NaimGsm1 KolForRas1 :double Ow1 Kofn1 VidT1 :double SdanT1 :double Normt1 :double Fakt1 :double
 Fakt_Den1 :double Otklt1 Proct1 Owv1
 VnytriGar1
 MotMaslo1 TransMaslo1 SpecMaslo1 PlastSmazka1
 Kodgsm2 NaimGsm2  KolForRas2 :double Ow2 Kofn2 VidT2 :double SdanT2 :double Normt2 :double Fakt2 :double
 Fakt_Den2 :double Otklt2 Proct2 Owv2
 VnytriGar2
 MotMaslo2 TransMaslo2 SpecMaslo2 PlastSmazka2
 TimeAll:double Prprc TimeMove :double TimeStop :double TimeRep :double TimeHeat :double TimeSpec :double
 TimeLoad :double Timedef :double
 KolEz Probeg  :double  Probeg_pri :double Probeg_with_gruz :double  Probeg_pri_gruz  :double
 Money : Double    AllKolStop : Double    KolStop : Double
fkVir :double
 KolTn :double  Koltn_pri :double Koltn_km :double Koltn_km_pri :double
 AutoDayInHous AutoDayInWork AutoDayInRep KTG KVAL
 AutoDayInHous1 AutoDayInWork1 AutoDayInRep1 KTG1 KVAL1
 AutoDayInHous2 AutoDayInWork2 AutoDayInRep2 KTG2 KVAL2
 AutoDayInHous3 AutoDayInWork3 AutoDayInRep3 KTG3 KVAL3
 AutoDayInHous4 AutoDayInWork4 AutoDayInRep4 KTG4 KVAL4
 AutoDayInHous5 AutoDayInWork5 AutoDayInRep5 KTG5 KVAL5
.endfields

.{
^
.}

^ ^ ^ ^ ^ ^
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
^ ^
^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^
^ ^
^
^ ^ ^ ^ ^
^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
.}
^ ^ ^ ^ ^
.endform

.linkform 'Ved_Tex_01' prototype is 'Ved_Tex'
.NameInList '®ª § â¥«¨. ¡é¨¥ ¯®ª § â¥«¨'
.group 'á­®¢­®© á®áâ ¢'
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
 CommonFormHeader
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
^
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
ÿ˜                                                                   ®ª § â¥«¨ à ¡®âë
                                                   c   @@@@@@@@@@@@@@@@@@@@@  ¯®  @@@@@@@@@@@@@@@@@@@@@
                                                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                                                                                    @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³   ®¬¥à ³  „ â     ³   ’¨¯   ³            ‚o¤¨â¥«¨                            ³     ‚ë¥§¤       ³      ‚®§¢à â    ³     ‘¯¨¤®¬¥âà    ³Š®«-¢®³                    ‚à¥¬ï                                ³        à®¡¥£
  ­®¬¥à    ³ ¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ³¥à¥¢®§ª¨³ÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ³¥§¤®ª ³ÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ
           ³   «¨áâ  ³          ³         ³ â ¡.1 ³    ”.ˆ..     ³ â ¡.2  ³     ”.ˆ..    ³   „ â    ³‚à¥¬ï ³   „ â    ³‚à¥¬ï ³  ‚ë¥§¤  ³‚®§¢à â ³      ³   ‚á¥£® ³  „¢¨¦.   ³   à®á. ³  ¥¬.  ³  /.  ³c¯¥æ®¡®à³  ¡é¨©   ³   á £à.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ
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
 @@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ @@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@ @@@@@@@@@@ @@@@@@ &'&&&&&&& &'&&&&&& &'&&.& &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &&'&&&&&.&
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
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                        &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ.}
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
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                        &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
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
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                        &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ.}
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
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                        &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
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
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                                        &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &'&&&&.& &'&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™
ÿ.}
.Fields
AllPredItgTimeAll  allPredItgTimeMove AllPredItgTimeStop AllPredItgTimeRep AllPredItgTimeLoad AllPredItgTimeSpec
AllPredItgProbeg AllPredItgProbeg_with_gruz
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                                                                                                                      &'&&&&&.& &'&&&&&&.& &'&&&&&.& &'&&&&.& &&&&&&.& &&&&&&.& &'&&&&&&.& &'&&&&&&.&ÿ™

.endform

.linkform 'Ved_Tex_02' prototype is 'Ved_Tex'
.NameInList '®ª § â¥«¨. ®ª § â¥«¨ (¢à¥¬ï - ¯à®¡¥£ - ¢ë¯®«­¥­®)'
.group '®ª § â¥«¨ à ¡®âë'
.group 'à¨æ¥¯ë'
.Defo Landscape
.var
ItgTimeMove, ItgTimeAll,ItgTimeStop, ItgTimeRep, ItgTimeHeat, ItgTimeSpec, ItgTimeLoad, ItgTimedef   :double
ItgProbeg, ItgProbeg_Pri, ItgProbeg_with_gruz, ItgProbeg_pri_gruz,
ItgKoltn, ItgKoltn_pri, ItgKoltn_km, ItgKoltn_km_pri    :double
AvtItgTimeMove, AvtItgTimeAll,AvtItgTimeStop, AvtItgTimeRep, AvtItgTimeHeat, AvtItgTimeSpec, AvtItgTimeLoad, AvtItgTimedef   :double
AvtItgProbeg,AvtItgProbeg_pri, AvtItgProbeg_with_gruz, AvtItgProbeg_pri_gruz,
AvtItgKoltn, AvtItgKoltn_pri, AvtItgKoltn_km, AvtItgKoltn_km_pri    :double
MarItgTimeMove, MarItgTimeAll,MarItgTimeStop, MarItgTimeRep, MarItgTimeHeat, MarItgTimeSpec, MarItgTimeLoad, MarItgTimedef  :double
MarItgProbeg, MarItgProbeg_Pri, MarItgProbeg_with_gruz, MarItgProbeg_pri_gruz,
MarItgKoltn, MarItgKoltn_pri, MarItgKoltn_km, MarItgKoltn_km_pri   :double
PodItgTimeMove, PodItgTimeAll,PodItgTimeStop, PodItgTimeRep, PodItgTimeHeat, PodItgTimeSpec, PodItgTimeLoad, PodItgTimedef   :double
PodItgProbeg, PodItgProbeg_Pri, PodItgProbeg_with_gruz, PodItgProbeg_pri_gruz,
PodItgKoltn, PodItgKoltn_pri, PodItgKoltn_km, PodItgKoltn_km_pri   :double
PredItgTimeMove, PredItgTimeAll,PredItgTimeStop, PredItgTimeRep, PredItgTimeHeat, PredItgTimeSpec, PredItgTimeLoad, PredItgTimedef   :double
PredItgProbeg, PredItgProbeg_Pri, PredItgProbeg_with_gruz, PredItgProbeg_pri_gruz,
PredItgKoltn, PredItgKoltn_pri, PredItgKoltn_km, PredItgKoltn_km_pri    :double
AllPredItgTimeMove, AllPredItgTimeAll, AllPredItgTimeStop, AllPredItgTimeRep, AllPredItgTimeHeat,
AllPredItgTimeSpec, AllPredItgTimeLoad, AllPredItgTimedef   :double
AllPredItgProbeg, AllPredItgProbeg_pri, AllPredItgProbeg_with_gruz, AllPredItgProbeg_pri_gruz,
AllPredItgKoltn, AllPredItgKoltn_pri, AllPredItgKoltn_km, AllPredItgKoltn_km_pri    :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
! Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 Wch Wdn och odn
 TimeAll TimeMove TimeStop TimeRep TimeLoad TimeSpec
 Probeg Probeg_with_gruz Probeg_pri Probeg_pri_gruz
 KolTn Koltn_pri Koltn_km Koltn_km_pri
.endfields
 ^
.{
^
.}

.begin
AllPredItgTimeMove := 0 AllPredItgTimeAll := 0 AllPredItgTimeStop := 0 AllPredItgTimeRep := 0
AllPredItgTimeHeat := 0
AllPredItgTimeSpec := 0 AllPredItgTimeLoad   := 0 AllPredItgTimedef := 0
AllPredItgProbeg := 0 AllPredItgProbeg_with_gruz  := 0
AllPredItgProbeg_pri := 0
AllPredItgProbeg_pri_gruz := 0
AllPredItgKoltn  := 0 AllPredItgKoltn_pri  := 0
AllPredItgKoltn_km  := 0 AllPredItgKoltn_km_pri  := 0
end.
ÿ˜                                                      ®ª § â¥«¨ à ¡®âë ¯à¨æ¥¯®¢ ¯à¥¤¯à¨ïâ¨ï
                                               c  @@@@@@@@@@@@@@@@@@@@@@  ¯®   @@@@@@@@@@@@@@@@@@@@@@
                                                           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                         @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³  ®¬¥à ³  „ â     ³      ‚ë¥§¤     ³      ‚®§¢à â   ³                    ‚à¥¬ï                                                  ³               à®¡¥£                          ³                 ‚ë¯®«­¥­®
   ­®¬¥à   ³¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ
           ³  «¨áâ  ³          ³  „ â     ³‚à¥¬ï³  „ â     ³‚à¥¬ï³    ‚á¥£®   ³   „¢¨¦¥­.   ³   à®áâ.   ³   ¥¬®­â  ³   ®£à.   ³á¯¥æ®¡®àã- ³   ¡é¨©   ³     á     ³   à¨æ¥¯  ³   à¨æ.   ³   ¡é¥¥   ³    ­      ³   â/ª¬.   ³   à¨æ.
           ³        ³          ³          ³     ³          ³     ³            ³             ³            ³           ³   à §£à   ³¤®¢ ­¨ï    ³           ³    £àã§.  ³           ³   á £à.   ³   ª®« .   ³  ¯à¨æ.    ³   ¯/ª¬    ³   â/ª¬.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄ
.{
.begin
NaimTiptex := Tiptex
PredItgTimeMove := 0 PredItgTimeAll := 0 PredItgTimeStop := 0 PredItgTimeRep := 0 PredItgTimeHeat := 0
PredItgTimeSpec := 0 PredItgTimeLoad   := 0 PredItgTimedef := 0
PredItgProbeg := 0 PredItgProbeg_with_gruz  := 0 PredItgProbeg_pri_gruz := 0 PredItgProbeg_pri := 0
PredItgKoltn  := 0 PredItgKoltn_pri  := 0 PredItgKoltn_km  := 0 PredItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
Naimpodr := Podraz
PodItgTimeMove := 0 PodItgTimeAll := 0 PodItgTimeStop := 0 PodItgTimeRep := 0 PodItgTimeHeat := 0
PodItgTimeSpec := 0 PodItgTimeLoad   := 0 PodItgTimedef := 0
PodItgProbeg := 0 PodItgProbeg_with_gruz  := 0 PodItgProbeg_pri_gruz := 0 PodItgProbeg_pri := 0
PodItgKoltn  := 0 PodItgKoltn_pri  := 0 PodItgKoltn_km  := 0 PodItgKoltn_km_pri  := 0
end.
!ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimMarka := Marka
MarItgTimeMove := 0 MarItgTimeAll := 0 MarItgTimeStop := 0 MarItgTimeRep := 0 MarItgTimeHeat := 0
MarItgTimeSpec := 0 MarItgTimeLoad   := 0 MarItgTimedef := 0
MarItgProbeg := 0 MarItgProbeg_with_gruz  := 0 MarItgProbeg_pri_gruz := 0 MarItgProbeg_pri := 0
MarItgKoltn  := 0 MarItgKoltn_pri  := 0 MarItgKoltn_km  := 0 MarItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimAvto := GarNom
AvtItgTimeMove := 0 AvtItgTimeAll := 0 AvtItgTimeStop := 0 AvtItgTimeRep := 0 AvtItgTimeHeat := 0
AvtItgTimeSpec := 0 AvtItgTimeLoad   := 0 AvtItgTimedef := 0
AvtItgProbeg := 0 AvtItgProbeg_with_gruz  := 0 AvtItgProbeg_pri_gruz := 0 AvtItgProbeg_pri := 0
AvtItgKoltn  := 0 AvtItgKoltn_pri  := 0 AvtItgKoltn_km  := 0 AvtItgKoltn_km_pri  := 0
end.
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.begin
NaimMes := Mes
ItgTimeMove := 0 ItgTimeAll := 0 ItgTimeStop := 0 ItgTimeRep := 0 ItgTimeHeat := 0
ItgTimeSpec := 0 ItgTimeLoad   := 0 ItgTimedef := 0
ItgProbeg := 0 ItgProbeg_with_gruz  := 0 ItgProbeg_pri_gruz := 0 ItgProbeg_pri := 0
ItgKoltn  := 0 ItgKoltn_pri  := 0 ItgKoltn_km  := 0 ItgKoltn_km_pri  := 0
end.
.{
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
ItgProbeg_pri  := ItgProbeg_pri + Probeg_pri
ItgKoltn        := ItgKoltn        + Koltn
ItgKoltn_pri    := ItgKoltn_pri    + Koltn_pri
ItgKoltn_km     := ItgKoltn_km     + Koltn_km
ItgKoltn_km_pri := ItgKoltn_km_pri + Koltn_km_pri
end.
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@ @@@@@@@@@@ @@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&
.}
.Fields
 NaimMes
 ItgTimeAll ItgTimeMove ItgTimeStop ItgTimeRep ItgTimeLoad ItgTimeSpec
 ItgProbeg ItgProbeg_with_gruz ItgProbeg_pri ItgProbeg_pri_gruz
 ItgKolTn ItgKoltn_pri ItgKoltn_km ItgKoltn_km_pri
.endfields
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
AvtItgProbeg_pri  := AvtItgProbeg_pri + ItgProbeg_pri
AvtItgKoltn        := AvtItgKoltn        + ItgKoltn
AvtItgKoltn_pri    := AvtItgKoltn_pri    + ItgKoltn_pri
AvtItgKoltn_km     := AvtItgKoltn_km     + ItgKoltn_km
AvtItgKoltn_km_pri := AvtItgKoltn_km_pri + ItgKoltn_km_pri
end.
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&&.& &&'&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&ÿ™
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
MarItgProbeg_pri  := MarItgProbeg_pri + AvtItgProbeg_pri
MarItgKoltn        := MarItgKoltn        + AvtItgKoltn
MarItgKoltn_pri    := MarItgKoltn_pri    + AvtItgKoltn_pri
MarItgKoltn_km     := MarItgKoltn_km     + AvtItgKoltn_km
MarItgKoltn_km_pri := MarItgKoltn_km_pri + AvtItgKoltn_km_pri
end.
.Fields
 NaimAvto
 AvtItgTimeAll AvtItgTimeMove AvtItgTimeStop AvtItgTimeRep AvtItgTimeLoad AvtItgTimeSpec
 AvtItgProbeg AvtItgProbeg_with_gruz AvtItgProbeg_pri AvtItgProbeg_pri_gruz
 AvtItgKolTn AvtItgKoltn_pri AvtItgKoltn_km AvtItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&&.& &&'&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&ÿ™
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
PodItgProbeg_pri  := PodItgProbeg_pri + MarItgProbeg_pri
PodItgKoltn        := PodItgKoltn        + MarItgKoltn
PodItgKoltn_pri    := PodItgKoltn_pri    + MarItgKoltn_pri
PodItgKoltn_km     := PodItgKoltn_km     + MarItgKoltn_km
PodItgKoltn_km_pri := PodItgKoltn_km_pri + MarItgKoltn_km_pri
end.
.Fields
 NaimMarka
 MarItgTimeAll MarItgTimeMove MarItgTimeStop MarItgTimeRep MarItgTimeLoad MarItgTimeSpec
 MarItgProbeg MarItgProbeg_with_gruz MarItgProbeg_pri MarItgProbeg_pri_gruz
 MarItgKolTn MarItgKoltn_pri MarItgKoltn_km MarItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&&.& &&'&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&ÿ™
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
PredItgProbeg_pri  := PredItgProbeg_pri + PodItgProbeg_pri
PredItgKoltn        := PredItgKoltn        + PodItgKoltn
PredItgKoltn_pri    := PredItgKoltn_pri    + PodItgKoltn_pri
PredItgKoltn_km     := PredItgKoltn_km     + PodItgKoltn_km
PredItgKoltn_km_pri := PredItgKoltn_km_pri + PodItgKoltn_km_pri
end.
.Fields
! Naimpodr PodItgTimeAll PodItgTimeMove PodItgTimeStop PodItgTimeRep PodItgTimeLoad PodItgTimeSpec
! PodItgProbeg PodItgProbeg_with_gruz PodItgProbeg_pri PodItgProbeg_pri_gruz
! PodItgKolTn PodItgKoltn_pri PodItgKoltn_km PodItgKoltn_km_pri
.endfields
!ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&&.& &&'&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&ÿ™
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
AllPredItgProbeg_pri  := AllPredItgProbeg_pri + PredItgProbeg_pri
AllPredItgKoltn        := AllPredItgKoltn        + PredItgKoltn
AllPredItgKoltn_pri    := AllPredItgKoltn_pri    + PredItgKoltn_pri
AllPredItgKoltn_km     := AllPredItgKoltn_km     + PredItgKoltn_km
AllPredItgKoltn_km_pri := AllPredItgKoltn_km_pri + PredItgKoltn_km_pri
end.
.Fields
 NaimTipTex PredItgTimeAll PredItgTimeMove PredItgTimeStop PredItgTimeRep PredItgTimeLoad PredItgTimeSpec
 PredItgProbeg PredItgProbeg_with_gruz PredItgProbeg_pri PredItgProbeg_pri_gruz
 PredItgKolTn PredItgKoltn_pri PredItgKoltn_km PredItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&&.& &&'&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&ÿ™
ÿ˜.}
.Fields
 AllPredItgTimeAll AllPredItgTimeMove AllPredItgTimeStop AllPredItgTimeRep AllPredItgTimeLoad AllPredItgTimeSpec
 AllPredItgProbeg AllPredItgProbeg_with_gruz AllPredItgProbeg_pri AllPredItgProbeg_pri_gruz
 AllPredItgKolTn AllPredItgKoltn_pri AllPredItgKoltn_km AllPredItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                              &'&&&&&&&&.& &&'&&&&&&&&.& &'&&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&ÿ™

.endform

.linkform 'Ved_Tex_02_1' prototype is 'Ved_Tex'
.NameInList '®ª § â¥«¨. ®ª § â¥«¨ ¯à¨æ¥¯®¢'
.group '®ª § â¥«¨ à ¡®âë'
.group 'à¨æ¥¯ë'
.Defo Landscape
.var
ItgTimeMove, ItgTimeAll,ItgTimeStop, ItgTimeRep, ItgTimeHeat, ItgTimeSpec, ItgTimeLoad, ItgTimedef   :double
ItgProbeg, ItgProbeg_Pri, ItgProbeg_with_gruz, ItgProbeg_pri_gruz,
ItgKoltn, ItgKoltn_pri, ItgKoltn_km, ItgKoltn_km_pri    :double
AvtItgTimeMove, AvtItgTimeAll,AvtItgTimeStop, AvtItgTimeRep, AvtItgTimeHeat, AvtItgTimeSpec, AvtItgTimeLoad, AvtItgTimedef   :double
AvtItgProbeg,AvtItgProbeg_pri, AvtItgProbeg_with_gruz, AvtItgProbeg_pri_gruz,
AvtItgKoltn, AvtItgKoltn_pri, AvtItgKoltn_km, AvtItgKoltn_km_pri    :double
MarItgTimeMove, MarItgTimeAll,MarItgTimeStop, MarItgTimeRep, MarItgTimeHeat, MarItgTimeSpec, MarItgTimeLoad, MarItgTimedef  :double
MarItgProbeg, MarItgProbeg_Pri, MarItgProbeg_with_gruz, MarItgProbeg_pri_gruz,
MarItgKoltn, MarItgKoltn_pri, MarItgKoltn_km, MarItgKoltn_km_pri   :double
PodItgTimeMove, PodItgTimeAll,PodItgTimeStop, PodItgTimeRep, PodItgTimeHeat, PodItgTimeSpec, PodItgTimeLoad, PodItgTimedef   :double
PodItgProbeg, PodItgProbeg_Pri, PodItgProbeg_with_gruz, PodItgProbeg_pri_gruz,
PodItgKoltn, PodItgKoltn_pri, PodItgKoltn_km, PodItgKoltn_km_pri   :double
PredItgTimeMove, PredItgTimeAll,PredItgTimeStop, PredItgTimeRep, PredItgTimeHeat, PredItgTimeSpec, PredItgTimeLoad, PredItgTimedef   :double
PredItgProbeg, PredItgProbeg_Pri, PredItgProbeg_with_gruz, PredItgProbeg_pri_gruz,
PredItgKoltn, PredItgKoltn_pri, PredItgKoltn_km, PredItgKoltn_km_pri    :double
AllPredItgTimeMove, AllPredItgTimeAll, AllPredItgTimeStop, AllPredItgTimeRep, AllPredItgTimeHeat,
AllPredItgTimeSpec, AllPredItgTimeLoad, AllPredItgTimedef   :double
AllPredItgProbeg, AllPredItgProbeg_pri, AllPredItgProbeg_with_gruz, AllPredItgProbeg_pri_gruz,
AllPredItgKoltn, AllPredItgKoltn_pri, AllPredItgKoltn_km, AllPredItgKoltn_km_pri    :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
! Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 Wch Wdn och odn
 Probeg_pri Probeg_pri_gruz
 Koltn_pri Koltn_km_pri
.endfields
 ^
.{
^
.}

.begin
AllPredItgTimeMove := 0 AllPredItgTimeAll := 0 AllPredItgTimeStop := 0 AllPredItgTimeRep := 0
AllPredItgTimeHeat := 0
AllPredItgTimeSpec := 0 AllPredItgTimeLoad   := 0 AllPredItgTimedef := 0
AllPredItgProbeg := 0 AllPredItgProbeg_with_gruz  := 0
AllPredItgProbeg_pri := 0
AllPredItgProbeg_pri_gruz := 0
AllPredItgKoltn  := 0 AllPredItgKoltn_pri  := 0
AllPredItgKoltn_km  := 0 AllPredItgKoltn_km_pri  := 0
end.
ÿ˜                                                     ®ª § â¥«¨ à ¡®âë ¯à¨æ¥¯®¢ ¯à¥¤¯à¨ïâ¨ï
                                               c  @@@@@@@@@@@@@@@@@@@@@@  ¯®   @@@@@@@@@@@@@@@@@@@@@@
                                                           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                             @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³  ®¬¥à ³  „ â     ³      ‚ë¥§¤     ³      ‚®§¢à â   ³         à®¡¥£        ³     ‚ë¯®«­¥­®
   ­®¬¥à   ³¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄ
           ³  «¨áâ  ³          ³  „ â     ³‚à¥¬ï³  „ â     ³‚à¥¬ï³   ¡é¨©   ³  ‘ £àã§®¬ ³ ¥à¥¢¥§¥­®³ ‚ë¯®«­¥­®
           ³        ³          ³          ³     ³          ³     ³           ³           ³    â®­­   ³   â/ª¬.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄ
.{
.begin
NaimTiptex := Tiptex
PredItgTimeMove := 0 PredItgTimeAll := 0 PredItgTimeStop := 0 PredItgTimeRep := 0 PredItgTimeHeat := 0
PredItgTimeSpec := 0 PredItgTimeLoad   := 0 PredItgTimedef := 0
PredItgProbeg := 0 PredItgProbeg_with_gruz  := 0 PredItgProbeg_pri_gruz := 0 PredItgProbeg_pri := 0
PredItgKoltn  := 0 PredItgKoltn_pri  := 0 PredItgKoltn_km  := 0 PredItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
Naimpodr := Podraz
PodItgTimeMove := 0 PodItgTimeAll := 0 PodItgTimeStop := 0 PodItgTimeRep := 0 PodItgTimeHeat := 0
PodItgTimeSpec := 0 PodItgTimeLoad   := 0 PodItgTimedef := 0
PodItgProbeg := 0 PodItgProbeg_with_gruz  := 0 PodItgProbeg_pri_gruz := 0 PodItgProbeg_pri := 0
PodItgKoltn  := 0 PodItgKoltn_pri  := 0 PodItgKoltn_km  := 0 PodItgKoltn_km_pri  := 0
end.
!ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimMarka := Marka
MarItgTimeMove := 0 MarItgTimeAll := 0 MarItgTimeStop := 0 MarItgTimeRep := 0 MarItgTimeHeat := 0
MarItgTimeSpec := 0 MarItgTimeLoad   := 0 MarItgTimedef := 0
MarItgProbeg := 0 MarItgProbeg_with_gruz  := 0 MarItgProbeg_pri_gruz := 0 MarItgProbeg_pri := 0
MarItgKoltn  := 0 MarItgKoltn_pri  := 0 MarItgKoltn_km  := 0 MarItgKoltn_km_pri  := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimAvto := GarNom
AvtItgTimeMove := 0 AvtItgTimeAll := 0 AvtItgTimeStop := 0 AvtItgTimeRep := 0 AvtItgTimeHeat := 0
AvtItgTimeSpec := 0 AvtItgTimeLoad   := 0 AvtItgTimedef := 0
AvtItgProbeg := 0 AvtItgProbeg_with_gruz  := 0 AvtItgProbeg_pri_gruz := 0 AvtItgProbeg_pri := 0
AvtItgKoltn  := 0 AvtItgKoltn_pri  := 0 AvtItgKoltn_km  := 0 AvtItgKoltn_km_pri  := 0
end.
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.begin
NaimMes := Mes
ItgTimeMove := 0 ItgTimeAll := 0 ItgTimeStop := 0 ItgTimeRep := 0 ItgTimeHeat := 0
ItgTimeSpec := 0 ItgTimeLoad   := 0 ItgTimedef := 0
ItgProbeg := 0 ItgProbeg_with_gruz  := 0 ItgProbeg_pri_gruz := 0 ItgProbeg_pri := 0
ItgKoltn  := 0 ItgKoltn_pri  := 0 ItgKoltn_km  := 0 ItgKoltn_km_pri  := 0
end.
.{
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
ItgProbeg_pri  := ItgProbeg_pri + Probeg_pri
ItgKoltn        := ItgKoltn        + Koltn
ItgKoltn_pri    := ItgKoltn_pri    + Koltn_pri
ItgKoltn_km     := ItgKoltn_km     + Koltn_km
ItgKoltn_km_pri := ItgKoltn_km_pri + Koltn_km_pri
end.
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@ @@@@@@@@@@ @@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.&  &'&&&&&&&.&
.}
.Fields
 NaimMes
 ItgProbeg_pri ItgProbeg_pri_gruz
 ItgKoltn_pri  ItgKoltn_km_pri
.endfields
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
AvtItgProbeg_pri  := AvtItgProbeg_pri + ItgProbeg_pri
AvtItgKoltn        := AvtItgKoltn        + ItgKoltn
AvtItgKoltn_pri    := AvtItgKoltn_pri    + ItgKoltn_pri
AvtItgKoltn_km     := AvtItgKoltn_km     + ItgKoltn_km
AvtItgKoltn_km_pri := AvtItgKoltn_km_pri + ItgKoltn_km_pri
end.
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&&.&ÿ™
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
MarItgProbeg_pri  := MarItgProbeg_pri + AvtItgProbeg_pri
MarItgKoltn        := MarItgKoltn        + AvtItgKoltn
MarItgKoltn_pri    := MarItgKoltn_pri    + AvtItgKoltn_pri
MarItgKoltn_km     := MarItgKoltn_km     + AvtItgKoltn_km
MarItgKoltn_km_pri := MarItgKoltn_km_pri + AvtItgKoltn_km_pri
end.
.Fields
 NaimAvto
 AvtItgProbeg_pri AvtItgProbeg_pri_gruz
 AvtItgKoltn_pri  AvtItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&&.&ÿ™
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
PodItgProbeg_pri  := PodItgProbeg_pri + MarItgProbeg_pri
PodItgKoltn        := PodItgKoltn        + MarItgKoltn
PodItgKoltn_pri    := PodItgKoltn_pri    + MarItgKoltn_pri
PodItgKoltn_km     := PodItgKoltn_km     + MarItgKoltn_km
PodItgKoltn_km_pri := PodItgKoltn_km_pri + MarItgKoltn_km_pri
end.
.Fields
 NaimMarka
 MarItgProbeg_pri MarItgProbeg_pri_gruz
 MarItgKoltn_pri  MarItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&&.&ÿ™
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
PredItgProbeg_pri  := PredItgProbeg_pri + PodItgProbeg_pri
PredItgKoltn        := PredItgKoltn        + PodItgKoltn
PredItgKoltn_pri    := PredItgKoltn_pri    + PodItgKoltn_pri
PredItgKoltn_km     := PredItgKoltn_km     + PodItgKoltn_km
PredItgKoltn_km_pri := PredItgKoltn_km_pri + PodItgKoltn_km_pri
end.
.Fields
! Naimpodr
! PodItgProbeg_pri PodItgProbeg_pri_gruz
! PodItgKoltn_pri PodItgKoltn_km_pri
.endfields
!ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&&.&ÿ™
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
AllPredItgProbeg_pri  := AllPredItgProbeg_pri + PredItgProbeg_pri
AllPredItgKoltn        := AllPredItgKoltn        + PredItgKoltn
AllPredItgKoltn_pri    := AllPredItgKoltn_pri    + PredItgKoltn_pri
AllPredItgKoltn_km     := AllPredItgKoltn_km     + PredItgKoltn_km
AllPredItgKoltn_km_pri := AllPredItgKoltn_km_pri + PredItgKoltn_km_pri
end.
.Fields
 NaimTipTex
 PredItgProbeg_pri PredItgProbeg_pri_gruz
 PredItgKoltn_pri  PredItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&&.&ÿ™
ÿ˜.}
.Fields
 AllPredItgProbeg_pri AllPredItgProbeg_pri_gruz
 AllPredItgKoltn_pri  AllPredItgKoltn_km_pri
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                              &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&&.&ÿ™

.endform

.linkform 'Ved_Tex_07' prototype is 'Ved_Tex'
.NameInList '®ª § â¥«¨. ®ª § â¥«¨ (¢à¥¬ï - ¯à®¡¥£ - ¢ë¯®«­¥­®-ƒ‘Œ)'
.group 'á­®¢­®© á®áâ ¢'
.group '®ª § â¥«¨ à ¡®âë'
.Defo Landscape

.var
OneNormt, OneFakt : double
ItgTimeMove, ItgTimeAll,ItgTimeStop, ItgTimeRep, ItgTimeHeat, ItgTimeSpec, ItgTimeLoad, ItgTimedef   :double
ItgProbeg, ItgProbeg_with_gruz, ItgProbeg_pri_gruz,
ItgKoltn, ItgKoltn_pri, ItgKoltn_km, ItgKoltn_km_pri    :double
ItgNormt, ItgFakt : double
AvtItgTimeMove, AvtItgTimeAll,AvtItgTimeStop, AvtItgTimeRep, AvtItgTimeHeat, AvtItgTimeSpec, AvtItgTimeLoad, AvtItgTimedef   :double
AvtItgProbeg, AvtItgProbeg_with_gruz, AvtItgProbeg_pri_gruz,
AvtItgKoltn, AvtItgKoltn_pri, AvtItgKoltn_km, AvtItgKoltn_km_pri    :double
AvtItgNormt, AvtItgFakt : double
MarItgTimeMove, MarItgTimeAll,MarItgTimeStop, MarItgTimeRep, MarItgTimeHeat, MarItgTimeSpec, MarItgTimeLoad, MarItgTimedef  :double
MarItgProbeg, MarItgProbeg_with_gruz, MarItgProbeg_pri_gruz,
MarItgKoltn, MarItgKoltn_pri, MarItgKoltn_km, MarItgKoltn_km_pri   :double
MarItgNormt, MarItgFakt : double
PodItgTimeMove, PodItgTimeAll,PodItgTimeStop, PodItgTimeRep, PodItgTimeHeat, PodItgTimeSpec, PodItgTimeLoad, PodItgTimedef   :double
PodItgProbeg, PodItgProbeg_with_gruz, PodItgProbeg_pri_gruz,
PodItgKoltn, PodItgKoltn_pri, PodItgKoltn_km, PodItgKoltn_km_pri   :double
PodItgNormt, PodItgFakt : double
PredItgTimeMove, PredItgTimeAll,PredItgTimeStop, PredItgTimeRep, PredItgTimeHeat, PredItgTimeSpec, PredItgTimeLoad, PredItgTimedef   :double
PredItgProbeg, PredItgProbeg_with_gruz, PredItgProbeg_pri_gruz,
PredItgKoltn, PredItgKoltn_pri, PredItgKoltn_km, PredItgKoltn_km_pri    :double
PredItgNormt, PredItgFakt : double
AllPredItgTimeMove, AllPredItgTimeAll, AllPredItgTimeStop, AllPredItgTimeRep, AllPredItgTimeHeat,
AllPredItgTimeSpec, AllPredItgTimeLoad, AllPredItgTimedef   :double
AllPredItgProbeg, AllPredItgProbeg_with_gruz, AllPredItgProbeg_pri_gruz,
AllPredItgKoltn, AllPredItgKoltn_pri, AllPredItgKoltn_km, AllPredItgKoltn_km_pri    :double
AllPredItgNormt, AllPredItgFakt : double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
.endfields
ÿ ^
.{
^
.}

.begin
AllPredItgTimeMove := 0 AllPredItgTimeAll := 0 AllPredItgTimeStop := 0 AllPredItgTimeRep := 0
AllPredItgTimeHeat := 0
AllPredItgTimeSpec := 0 AllPredItgTimeLoad   := 0 AllPredItgTimedef := 0
AllPredItgProbeg := 0 AllPredItgProbeg_with_gruz  := 0
AllPredItgProbeg_pri_gruz := 0
AllPredItgKoltn  := 0 AllPredItgKoltn_pri  := 0
AllPredItgKoltn_km  := 0 AllPredItgKoltn_km_pri  := 0
AllPredItgNormt :=0  AllPredItgFakt := 0
end.
                                              ’¥å­¨ª®-íªá¯«ã â æ¨®­­ë¥ ¯®ª § â¥«¨ à ¡®âë ¯à¥¤¯à¨ïâ¨ï
                                               c  @@@@@@@@@@@@@@@@@@@@@@  ¯®   @@@@@@@@@@@@@@@@@@@@@@
                                                           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                         @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³  ®¬¥à ³  „ â     ³                    ‚à¥¬ï                                      ³               à®¡¥£  ³        ‚ë¯®«­¥­®      ³         ƒ‘Œ
   ­®¬¥à   ³¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ³ÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ
           ³  «¨áâ  ³          ³    ‚á¥£®   ³  ‚ ¤¢¨¦¥­¨¨ ³   à®áâ®©  ³   ¥¬®­â  ³   ®£à.   ³   ¡é¨©   ³     á     ³   Š®«-¢®  ³   â/ª¬.   ³   ­®à¬    ³  ä ªâ.
           ³        ³          ³            ³             ³            ³           ³   à §£à   ³           ³    £àã§.  ³    â®­­   ³   ¯/ª¬    ³    ª£.    ³   ª£.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄ
.{
.begin
NaimTiptex := Tiptex
PredItgTimeMove := 0 PredItgTimeAll := 0 PredItgTimeStop := 0 PredItgTimeRep := 0 PredItgTimeHeat := 0
PredItgTimeSpec := 0 PredItgTimeLoad   := 0 PredItgTimedef := 0
PredItgProbeg := 0 PredItgProbeg_with_gruz  := 0 PredItgProbeg_pri_gruz := 0
PredItgKoltn  := 0 PredItgKoltn_pri  := 0 PredItgKoltn_km  := 0 PredItgKoltn_km_pri  := 0
PredItgNormt :=0  PredItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.{
.begin
Naimpodr := Podraz
PodItgTimeMove := 0 PodItgTimeAll := 0 PodItgTimeStop := 0 PodItgTimeRep := 0 PodItgTimeHeat := 0
PodItgTimeSpec := 0 PodItgTimeLoad   := 0 PodItgTimedef := 0
PodItgProbeg := 0 PodItgProbeg_with_gruz  := 0 PodItgProbeg_pri_gruz := 0
PodItgKoltn  := 0 PodItgKoltn_pri  := 0 PodItgKoltn_km  := 0 PodItgKoltn_km_pri  := 0
PodItgNormt :=0  PodItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.{
.begin
NaimMarka := Marka
MarItgTimeMove := 0 MarItgTimeAll := 0 MarItgTimeStop := 0 MarItgTimeRep := 0 MarItgTimeHeat := 0
MarItgTimeSpec := 0 MarItgTimeLoad   := 0 MarItgTimedef := 0
MarItgProbeg := 0 MarItgProbeg_with_gruz  := 0 MarItgProbeg_pri_gruz := 0
MarItgKoltn  := 0 MarItgKoltn_pri  := 0 MarItgKoltn_km  := 0 MarItgKoltn_km_pri  := 0
MarItgNormt :=0  MarItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.{
.begin
NaimAvto := GarNom
AvtItgTimeMove := 0 AvtItgTimeAll := 0 AvtItgTimeStop := 0 AvtItgTimeRep := 0 AvtItgTimeHeat := 0
AvtItgTimeSpec := 0 AvtItgTimeLoad   := 0 AvtItgTimedef := 0
AvtItgProbeg := 0 AvtItgProbeg_with_gruz  := 0 AvtItgProbeg_pri_gruz := 0
AvtItgKoltn  := 0 AvtItgKoltn_pri  := 0 AvtItgKoltn_km  := 0 AvtItgKoltn_km_pri  := 0
AvtItgNormt :=0  AvtItgFakt := 0
end.
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.begin
NaimMes := Mes
ItgTimeMove := 0 ItgTimeAll := 0 ItgTimeStop := 0 ItgTimeRep := 0 ItgTimeHeat := 0
ItgTimeSpec := 0 ItgTimeLoad   := 0 ItgTimedef := 0
ItgProbeg := 0 ItgProbeg_with_gruz  := 0 ItgProbeg_pri_gruz := 0
ItgKoltn  := 0 ItgKoltn_pri  := 0 ItgKoltn_km  := 0 ItgKoltn_km_pri  := 0
ItgNormt :=0  ItgFakt := 0
end.
.{
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
OneNormt := 0
OneFakt  := 0
OneNormt := NormT + NormT1 + NormT2
OneFakt  := Fakt + Fakt1 + Fakt2
ItgNormt := ItgNormt+ OneNormt
ItgFakt  := ItgFakt + OneFakt
end.
.Fields
 NomPutLst DataPl
 TimeAll TimeMove TimeStop TimeRep TimeLoad
 Probeg Probeg_with_gruz
 KolTn  Koltn_km
 OneNormt OneFakt
.endfields
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&
.}
.Fields
 NaimMes
 ItgTimeAll ItgTimeMove ItgTimeStop ItgTimeRep ItgTimeLoad
 ItgProbeg ItgProbeg_with_gruz
 ItgKolTn ItgKoltn_km
 ItgNormt ItgFakt
.endfields
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
AvtItgNormt := AvtItgNormt + ItgNormt
AvtItgFakt  := AvtItgFakt  + ItgFakt
end.
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&ÿ‰
ÿˆ.}
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
MarItgNormt := AvtItgNormt + MarItgNormt
MarItgFakt  := AvtItgFakt  + MarItgFakt
end.
.Fields
 NaimAvto
 AvtItgTimeAll AvtItgTimeMove AvtItgTimeStop AvtItgTimeRep AvtItgTimeLoad
 AvtItgProbeg AvtItgProbeg_with_gruz
 AvtItgKolTn  AvtItgKoltn_km
 AvtItgNormt AvtItgFakt
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&ÿ‰
ÿˆ.}
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
PodItgNormt := PodItgNormt + MarItgNormt
PodItgFakt  := PodItgFakt  + MarItgFakt
end.
.Fields
 NaimMarka
 MarItgTimeAll MarItgTimeMove MarItgTimeStop MarItgTimeRep MarItgTimeLoad
 MarItgProbeg MarItgProbeg_with_gruz
 MarItgKolTn  MarItgKoltn_km
 MarItgNormt MarItgFakt
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&ÿ‰
ÿˆ.}
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
PredItgNormt := PredItgNormt + PodItgNormt
PredItgFakt  := PredItgFakt  + PodItgFakt
end.
.Fields
Naimpodr PodItgTimeAll PodItgTimeMove PodItgTimeStop PodItgTimeRep PodItgTimeLoad
 PodItgProbeg PodItgProbeg_with_gruz
 PodItgKolTn  PodItgKoltn_km
 PodItgNormt PodItgFakt
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&ÿ‰
ÿˆ.}
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
AllPredItgNormt := AllPredItgNormt + PredItgNormt
AllPredItgFakt  := AllPredItgFakt  + PredItgFakt
end.
.Fields
NaimTipTex PredItgTimeAll PredItgTimeMove PredItgTimeStop PredItgTimeRep PredItgTimeLoad
 PredItgProbeg PredItgProbeg_with_gruz
 PredItgKolTn  PredItgKoltn_km
 PredItgNormt PredItgFakt
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&ÿ‰
ÿˆ.}
.Fields
 AllPredItgTimeAll AllPredItgTimeMove AllPredItgTimeStop AllPredItgTimeRep AllPredItgTimeLoad
 AllPredItgProbeg AllPredItgProbeg_with_gruz
 AllPredItgKolTn  AllPredItgKoltn_km
 AllPredItgNormt AllPredItgFakt
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î            &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.& &&'&&&&&&.&ÿ‰
.endform


//Pasha18.5.99
.linkform 'Ved_Tex_08' prototype is 'Ved_Tex'
.NameInList '®ª § â¥«¨. ‚ëàãçª  ¯® ’‘'
.group 'á­®¢­®© á®áâ ¢'
.group '®ª § â¥«¨ à ¡®âë'
.Defo Landscape
.var
ItgProbeg, ItgProbeg_with_gruz, ItgProbeg_pri_gruz,
ItgMoney :double
AvtItgProbeg, AvtItgProbeg_with_gruz, AvtItgProbeg_pri_gruz,
AvtItgMoney :double
MarItgProbeg, MarItgProbeg_with_gruz, MarItgProbeg_pri_gruz,
MarItgMoney :double
PodItgProbeg, PodItgProbeg_with_gruz, PodItgProbeg_pri_gruz,
PodItgMoney :double
PredItgProbeg, PredItgProbeg_with_gruz, PredItgProbeg_pri_gruz,
PredItgMoney :double
AllPredItgProbeg, AllPredItgProbeg_with_gruz, AllPredItgProbeg_pri_gruz,
AllPredItgMoney :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar

.fields
 CommonFormHeader
  Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 Wch Wdn och odn
 Probeg Probeg_with_gruz Probeg_pri_gruz
 fkVir
.endfields
 ^
.{
^
.}



.begin
AllPredItgProbeg := 0 AllPredItgProbeg_with_gruz  := 0
AllPredItgProbeg_pri_gruz := 0
AllPredItgMoney := 0
end.
ÿˆ                                     ’¥å­¨ª®-íªá¯«ã â æ¨®­­ë¥ ¯®ª § â¥«¨ à ¡®âë ¯à¥¤¯à¨ïâ¨ïÿˆ
ÿˆ                                     c  @@@@@@@@@@@@@@@@@@@@@@  ¯®   @@@@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆ                                                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆ                                                                                          @@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿˆ
ÿˆƒ®áã¤ àáâ¢.³  ®¬¥à ³  „ â     ³     ‚ë¥§¤      ³    ‚®§¢à â     ³              à®¡¥£               ³ÿˆ
ÿˆ   ­®¬¥à   ³¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ´    ‚ëàãçª ÿˆ
ÿˆ           ³  «¨áâ  ³          ³  „ â     ³‚à¥¬ï³  „ â     ³‚à¥¬ï³   ¡é¨©   ³     á     ³   à¨æ.   ³ÿˆ
ÿˆ           ³        ³          ³          ³     ³          ³     ³           ³    £àã§.  ³   á £à.   ³ÿˆ
ÿˆÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿˆ
ÿˆ      1    ³    2   ³    3     ³     4    ³  5  ³    6     ³  7  ³     8     ³     9     ³     10    ³      11ÿˆ
ÿˆÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿˆ
ÿˆ.{ÿˆ
ÿˆ.beginÿˆ
ÿˆNaimTiptex := Tiptexÿˆ
ÿˆPredItgProbeg := 0 PredItgProbeg_with_gruz  := 0 PredItgProbeg_pri_gruz := 0ÿˆ
ÿˆPredItgMoney := 0ÿˆ
ÿˆend.ÿˆ
ÿˆ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆ.{ÿˆ
ÿˆ.beginÿˆ
ÿˆNaimpodr := Podrazÿˆ
ÿˆPodItgProbeg := 0 PodItgProbeg_with_gruz  := 0 PodItgProbeg_pri_gruz := 0ÿˆ
ÿˆPodItgMoney := 0ÿˆ
ÿˆend.ÿˆ
ÿˆ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆ.{ÿˆ
ÿˆ.beginÿˆ
ÿˆNaimMarka := Markaÿˆ
ÿˆMarItgProbeg := 0 MarItgProbeg_with_gruz  := 0 MarItgProbeg_pri_gruz := 0ÿˆ
ÿˆMarItgMoney := 0ÿˆ
ÿˆend.ÿˆ
ÿˆ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆ.{ÿˆ
ÿˆ.beginÿˆ
ÿˆNaimAvto := GarNomÿˆ
ÿˆAvtItgProbeg := 0 AvtItgProbeg_with_gruz  := 0 AvtItgProbeg_pri_gruz := 0ÿˆ
ÿˆAvtItgMoney := 0ÿˆ
ÿˆend.ÿˆ
ÿˆ.{ÿˆ
ÿˆ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿˆ
ÿˆ.beginÿˆ
ÿˆNaimMes := Mesÿˆ
ÿˆItgProbeg := 0 ItgProbeg_with_gruz  := 0 ItgProbeg_pri_gruz := 0ÿˆ
ÿˆItgMoney := 0ÿˆ
ÿˆend.ÿˆ
ÿˆ.{ÿˆ
ÿˆ.beginÿˆ
ÿˆItgProbeg := ItgProbeg + Probegÿˆ
ÿˆItgProbeg_with_gruz := ItgProbeg_with_gruz + Probeg_with_gruzÿˆ
ÿˆItgProbeg_pri_gruz  := ItgProbeg_pri_gruz + Probeg_pri_gruzÿˆ
ÿˆItgMoney := ItgMoney +ÿˆ fkVir
ÿˆend.ÿˆ
ÿˆ@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@ @@@@@@@@@@ @@@@@ &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&&&&&.&&ÿˆ
ÿˆ.}ÿˆ
ÿˆ.Fieldsÿˆ
ÿˆ NaimMesÿˆ
ÿˆ ItgProbeg ItgProbeg_with_gruz ItgProbeg_pri_gruzÿˆ
ÿˆ ItgMoneyÿˆ
ÿˆ.endfieldsÿˆ
ÿˆ.beginÿˆ
ÿˆAvtItgProbeg := AvtItgProbeg + ItgProbegÿˆ
ÿˆAvtItgProbeg_with_gruz := AvtItgProbeg_with_gruz + ItgProbeg_with_gruzÿˆ
ÿˆAvtItgProbeg_pri_gruz  := AvtItgProbeg_pri_gruz + ItgProbeg_pri_gruzÿˆ
ÿˆAvtItgMoney := AvtItgMoney + ItgMoneyÿˆ
ÿˆend.ÿˆ
ÿ‰ˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&&&&&.&&ÿ‰
ÿˆ.}ÿˆ
ÿˆ.beginÿˆ
ÿˆMarItgProbeg := MarItgProbeg + AvtItgProbegÿˆ
ÿˆMarItgProbeg_with_gruz := MarItgProbeg_with_gruz + AvtItgProbeg_with_gruzÿˆ
ÿˆMarItgProbeg_pri_gruz  := MarItgProbeg_pri_gruz + AvtItgProbeg_pri_gruzÿˆ
ÿˆMarItgMoney := MarItgMoney + AvtItgMoneyÿˆ
ÿˆend.ÿˆ
ÿˆ.Fieldsÿˆ
ÿˆ NaimAvtoÿˆ
ÿˆ AvtItgProbeg AvtItgProbeg_with_gruz AvtItgProbeg_pri_gruzÿˆ
ÿˆ AvtItgMoneyÿˆ
ÿˆ.endfieldsÿˆ
ÿ‰ˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&&&&&.&&ÿ‰
ÿˆ.}ÿˆ
ÿˆ.beginÿˆ
ÿˆPodItgProbeg := PodItgProbeg + MarItgProbegÿˆ
ÿˆPodItgProbeg_with_gruz := PodItgProbeg_with_gruz + MarItgProbeg_with_gruzÿˆ
ÿˆPodItgProbeg_pri_gruz  := PodItgProbeg_pri_gruz + MarItgProbeg_pri_gruzÿˆ
ÿˆPodItgMoney := PodItgMoney + MarItgMoneyÿˆ
ÿˆend.ÿˆ
ÿˆ.Fieldsÿˆ
ÿˆ NaimMarkaÿˆ
ÿˆ MarItgProbeg MarItgProbeg_with_gruz MarItgProbeg_pri_gruzÿˆ
ÿˆ MarItgMoneyÿˆ
ÿˆ.endfieldsÿˆ
ÿ‰ˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&&&&&.&&ÿ‰
ÿˆ.}ÿˆ
ÿˆ.beginÿˆ
ÿˆPredItgProbeg := PredItgProbeg + PodItgProbegÿˆ
ÿˆPredItgProbeg_with_gruz := PredItgProbeg_with_gruz + PodItgProbeg_with_gruzÿˆ
ÿˆPredItgProbeg_pri_gruz  := PredItgProbeg_pri_gruz + PodItgProbeg_pri_gruzÿˆ
ÿˆPredItgMoney := PredItgMoney + PodItgMoneyÿˆ
ÿˆend.ÿˆ
ÿˆ.Fieldsÿˆ
ÿˆNaimpodrÿˆ
ÿˆ PodItgProbeg PodItgProbeg_with_gruz PodItgProbeg_pri_gruzÿˆ
ÿˆ PodItgMoneyÿˆ
ÿˆ.endfieldsÿˆ
ÿ‰ˆâ®£® ¯®  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&&&&&.&&ÿ‰
ÿˆ.}ÿˆ
ÿˆ.beginÿˆ
ÿˆAllPredItgProbeg := AllPredItgProbeg + PredItgProbegÿˆ
ÿˆAllPredItgProbeg_with_gruz := AllPredItgProbeg_with_gruz + PredItgProbeg_with_gruzÿˆ
ÿˆAllPredItgProbeg_pri_gruz  := AllPredItgProbeg_pri_gruz + PredItgProbeg_pri_gruzÿˆ
ÿˆAllPredItgMoney := AllPredItgMoney + PredItgMoneyÿˆ
ÿˆend.ÿˆ
ÿˆ.Fieldsÿˆ
ÿˆNaimTipTexÿˆ
ÿˆ PredItgProbeg PredItgProbeg_with_gruz PredItgProbeg_pri_gruzÿˆ
ÿˆ PredItgMoneyÿˆ
ÿˆ.endfieldsÿˆ
ÿ‰ˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&&&&&.&&ÿ‰
ÿˆ.}ÿˆ
ÿˆ.Fieldsÿˆ
ÿˆ AllPredItgProbeg AllPredItgProbeg_with_gruz AllPredItgProbeg_pri_gruzÿˆ
ÿˆ AllPredItgMoneyÿˆ
ÿˆ.endfieldsÿˆ
ÿ‰ˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                              &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&.&&ÿÿ &'&&&&&&&&&&.&&ÿ‰
ÿˆÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÿˆ
ÿˆ.endformÿˆ

//Pasha16.7.99
.linkform 'Ved_Tex_09' prototype is 'Ved_Tex'
.NameInList '®ª § â¥«¨. ƒ®â®¢­®áâì ’‘'
.group 'á­®¢­®© á®áâ ¢'
.group '®ª § â¥«¨ à ¡®âë'
.Defo Landscape
.var
ItgProbeg, ItgProbeg_with_gruz, ItgProbeg_pri_gruz,
AvtItgProbeg, AvtItgProbeg_with_gruz, AvtItgProbeg_pri_gruz,
MarItgProbeg, MarItgProbeg_with_gruz, MarItgProbeg_pri_gruz,
PodItgProbeg, PodItgProbeg_with_gruz, PodItgProbeg_pri_gruz,
PredItgProbeg, PredItgProbeg_with_gruz, PredItgProbeg_pri_gruz,
AllPredItgProbeg, AllPredItgProbeg_with_gruz, AllPredItgProbeg_pri_gruz : Double ;
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar

.fields
 CommonFormHeader
  Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 Wch Wdn och odn
 Probeg Probeg_with_gruz Probeg_pri_gruz

.endfields
 ^
.{
^
.}
ÿ˜


.begin
AllPredItgProbeg := 0 AllPredItgProbeg_with_gruz  := 0
AllPredItgProbeg_pri_gruz := 0
end.
                                     ’¥å­¨ª®-íªá¯«ã â æ¨®­­ë¥ ¯®ª § â¥«¨ à ¡®âë ¯à¥¤¯à¨ïâ¨ï
                                     c  @@@@@@@@@@@@@@@@@@@@@@  ¯®   @@@@@@@@@@@@@@@@@@@@@@
                                                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                          @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ¿
ƒ®áã¤ àáâ¢.³  ®¬¥à ³  „ â     ³     ‚ë¥§¤      ³    ‚®§¢à â     ³              à®¡¥£               ³  €¢â®¤­¨  ³  €¢â®¤­¨  ³  €¢â®¤­¨  ³  Š®íää-â  ³  Š®íää-â  ³
   ­®¬¥à   ³¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ÃÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ´     ¢     ³     ¢     ³     ¢     ³   â¥å­.   ³  ¢ëå®¤    ³
           ³  «¨áâ  ³          ³  „ â     ³‚à¥¬ï³  „ â     ³‚à¥¬ï³   ¡é¨©   ³     á     ³   à¨æ.   ³ å®§ï©áâ¢¥ ³  à ¡®â¥   ³  à¥¬®­â¥  ³ £®â®¢­®áâ¨³    ­      ³
           ³        ³          ³          ³     ³          ³     ³           ³    £àã§.  ³   á £à.   ³           ³           ³           ³           ³  «¨­¨î    ³
ÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄ´
      1    ³    2   ³    3     ³     4    ³  5  ³    6     ³  7  ³     8     ³     9     ³     10    ³    11     ³    12     ³    13     ³    14     ³    15     ³
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÙ
.{
.begin
NaimTiptex := Tiptex
PredItgProbeg := 0 PredItgProbeg_with_gruz  := 0 PredItgProbeg_pri_gruz := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
Naimpodr := Podraz
PodItgProbeg := 0 PodItgProbeg_with_gruz  := 0 PodItgProbeg_pri_gruz := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimMarka := Marka
MarItgProbeg := 0 MarItgProbeg_with_gruz  := 0 MarItgProbeg_pri_gruz := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimAvto := GarNom
AvtItgProbeg := 0 AvtItgProbeg_with_gruz  := 0 AvtItgProbeg_pri_gruz := 0
end.
.{
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
NaimMes := Mes
ItgProbeg := 0 ItgProbeg_with_gruz  := 0 ItgProbeg_pri_gruz := 0
end.
.{
.begin
ItgProbeg := ItgProbeg + Probeg
ItgProbeg_with_gruz := ItgProbeg_with_gruz + Probeg_with_gruz
ItgProbeg_pri_gruz  := ItgProbeg_pri_gruz + Probeg_pri_gruz
end.
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@ @@@@@@@@@@ @@@@@ &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&
.}
.Fields
 NaimMes
 ItgProbeg ItgProbeg_with_gruz ItgProbeg_pri_gruz  AutoDayInHous AutoDayInWork AutoDayInRep KTG KVAL
.endfields
.begin
AvtItgProbeg := AvtItgProbeg + ItgProbeg
AvtItgProbeg_with_gruz := AvtItgProbeg_with_gruz + ItgProbeg_with_gruz
AvtItgProbeg_pri_gruz  := AvtItgProbeg_pri_gruz + ItgProbeg_pri_gruz
end.
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&ÿ
.}
.begin
MarItgProbeg := MarItgProbeg + AvtItgProbeg
MarItgProbeg_with_gruz := MarItgProbeg_with_gruz + AvtItgProbeg_with_gruz
MarItgProbeg_pri_gruz  := MarItgProbeg_pri_gruz + AvtItgProbeg_pri_gruz
end.
.Fields
 NaimAvto
 AvtItgProbeg AvtItgProbeg_with_gruz AvtItgProbeg_pri_gruz  AutoDayInHous1 AutoDayInWork1 AutoDayInRep1 KTG1 KVAL1
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&ÿ
.}
.begin
PodItgProbeg := PodItgProbeg + MarItgProbeg
PodItgProbeg_with_gruz := PodItgProbeg_with_gruz + MarItgProbeg_with_gruz
PodItgProbeg_pri_gruz  := PodItgProbeg_pri_gruz + MarItgProbeg_pri_gruz
end.
.Fields
 NaimMarka
 MarItgProbeg MarItgProbeg_with_gruz MarItgProbeg_pri_gruz  AutoDayInHous2 AutoDayInWork2 AutoDayInRep2 KTG2 KVAL2
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&ÿ
.}
.begin
PredItgProbeg := PredItgProbeg + PodItgProbeg
PredItgProbeg_with_gruz := PredItgProbeg_with_gruz + PodItgProbeg_with_gruz
PredItgProbeg_pri_gruz  := PredItgProbeg_pri_gruz + PodItgProbeg_pri_gruz
end.
.Fields
Naimpodr
 PodItgProbeg PodItgProbeg_with_gruz PodItgProbeg_pri_gruz  AutoDayInHous3 AutoDayInWork3 AutoDayInRep3 KTG3 KVAL3
.endfields
ÿˆâ®£® ¯®  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&ÿ
.}
.begin
AllPredItgProbeg := AllPredItgProbeg + PredItgProbeg
AllPredItgProbeg_with_gruz := AllPredItgProbeg_with_gruz + PredItgProbeg_with_gruz
AllPredItgProbeg_pri_gruz  := AllPredItgProbeg_pri_gruz + PredItgProbeg_pri_gruz
end.
.Fields
NaimTipTex
 PredItgProbeg PredItgProbeg_with_gruz PredItgProbeg_pri_gruz  AutoDayInHous4 AutoDayInWork4 AutoDayInRep4 KTG4 KVAL4
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&ÿ
.}
.Fields
 AllPredItgProbeg AllPredItgProbeg_with_gruz AllPredItgProbeg_pri_gruz  AutoDayInHous5 AutoDayInWork5 AutoDayInRep5 KTG5 KVAL5
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                              &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&& &'&&&&&&.&&ÿ
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.endform

.linkform 'Ved_Tex_10' prototype is 'Ved_Tex'
.NameInList 'à®áâ®¨. à®áâ®¨ ¢ ¯ãâ¥¢ëå «¨áâ å'
.group 'á­®¢­®© á®áâ ¢'
.group 'à®áâ®¨'
.Defo Landscape
.var
ItgTimeMove, ItgTimeAll,ItgAllKolstop, ItgKolstop:double
AvtItgTimeMove, AvtItgTimeAll,AvtItgAllKolstop, AvtItgKolstop:double
MarItgTimeMove, MarItgTimeAll,MarItgAllKolStop,MarItgKolStop     :double
PodItgTimeMove, PodItgTimeAll,PodItgAllKolStop, PodItgKolStop  :double
PredItgTimeMove, PredItgTimeAll,PredItgAllKolStop, PredItgKolStop :double
AllPredItgTimeMove, AllPredItgTimeAll, AllPredItgAllKolStop, AllPredItgKolStop   :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred  VidOst dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
.endfields
ÿ ^
.{
^
.}

.begin
AllPredItgTimeMove   := 0 AllPredItgTimeAll := 0
AllPredItgAllKolStop := 0 AllPredItgKolStop := 0
end.
                              ‘¢¥¤¥­¨ï  ¯® ¯à®áâ®ï¬
                c  @@@@@@@@@@@@@@@@@@@@@@  ¯®   @@@@@@@@@@@@@@@@@@@@@@
                            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³  ®¬¥à ³  „ â     ³                    ‚à¥¬ï
   ­®¬¥à   ³¯ãâ¥¢®£®³ ¢ë¯¨áª¨  ³ÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ
           ³  «¨áâ  ³          ³    ‚á¥£®   ³  ‚ ¤¢¨¦¥­¨¨ ³   ‚á¥£® ¢  ³ ‚ ¯à®áâ®¥
           ³        ³          ³            ³             ³   ¯à®áâ®¥  ³  ¯® ¢¨¤ã
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄ
.{
.begin
NaimTiptex := Tiptex
PredItgTimeMove := 0 PredItgTimeAll := 0
PredItgAllKolStop := 0 PredItgKolStop := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.{
.begin
Naimpodr := Podraz
PodItgTimeMove   := 0 PodItgTimeAll := 0
PodItgAllKolStop := 0 PodItgKolStop := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.{
.begin
NaimMarka := Marka
MarItgTimeMove   := 0 MarItgTimeAll := 0
MarItgAllKolStop := 0 MarItgKolStop := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.{
.begin
NaimAvto := GarNom
AvtItgTimeMove := 0 AvtItgTimeAll := 0
AvtItgAllKolStop := 0 AvtItgKolStop := 0
end.
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ‰
ÿˆ.begin
NaimMes := Mes
ItgTimeMove := 0 ItgTimeAll := 0
ItgAllKolStop := 0 ItgKolStop := 0
end.
.{
.begin
ItgTimeMove   := ItgTimeMove + TimeMove
ItgTimeAll := ItgTimeAll + TimeAll
ItgAllKolStop   := ItgAllKolStop + AllKolStop
ItgKolStop      := ItgKolStop + KolStop
end.
.Fields
 NomPutLst DataPl
 TimeAll TimeMove AllKolStop KolStop
.endfields
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.&
.}
.Fields
 NaimMes
 ItgTimeAll ItgTimeMove ItgAllKolStop ItgKolStop
.endfields
.begin
AvtItgTimeMove   := AvtItgTimeMove + ItgTimeMove
AvtItgTimeAll := AvtItgTimeAll + ItgTimeAll
AvtItgAllKolStop   := AvtItgAlLkOlstop + ItgAllKolStop
AvtItgKolStop      := AvtItgKolStop + ItgKolStop
end.
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& ÿ‰
ÿˆ.}
.begin
MarItgTimeMove   := MarItgTimeMove + AvtItgTimeMove
MarItgTimeAll := MarItgTimeAll + AvtItgTimeAll
MarItgAllKolStop   := MarItgAllKolStop + AvtItgAllKolStop
MarItgKolStop   := MarItgKolStop + AvtItgKolStop
end.
.Fields
 NaimAvto
 AvtItgTimeAll AvtItgTimeMove AvtItgAllKolStop AvtItgKolStop
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& ÿ‰
ÿˆ.}
.begin
PodItgTimeMove     := PodItgTimeMove + MarItgTimeMove
PodItgTimeAll      := PodItgTimeAll + MarItgTimeAll
PodItgAllKolStop   := PodItgAllKolStop + MarItgAllKolStop
PodItgKolStop      := PodItgKolStop + MarItgKolStop
end.
.Fields
 NaimMarka
 MarItgTimeAll MarItgTimeMove MarItgAllKolStop MarItgKolStop
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& ÿ‰
ÿˆ.}
.begin
PredItgTimeMove   := PredItgTimeMove + PodItgTimeMove
PredItgTimeAll    := PredItgTimeAll + PodItgTimeAll
PredItgAllKolStop := PredItgAllKolStop + PodItgAllKolStop
PredItgKolStop    := PredItgKolStop + PodItgKolStop
end.
.Fields
Naimpodr PodItgTimeAll PodItgTimeMove PodItgAllKolStop PodItgKolStop
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.& ÿ‰
ÿˆ.}
.begin
AllPredItgTimeMove   := AllPredItgTimeMove + PredItgTimeMove
AllPredItgTimeAll := AllPredItgTimeAll + PredItgTimeAll
AllPredItgAllKolStop   := AllPredItgAllKolStop + PredItgAllKolStop
AllPredItgKolStop   := AllPredItgKolStop + PredItgKolStop
end.
.Fields
NaimTipTex PredItgTimeAll PredItgTimeMove PredItgAllKolStop PredItgKolStop
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.&ÿ‰
ÿˆ.}
.Fields
 AllPredItgTimeAll AllPredItgTimeMove AllPredItgAllKolStop AllPredItgKolStop.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î            &'&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&.& &&'&&&&&&.&ÿ‰
.endform

.linkform 'Ved_Tex_11' prototype is 'Ved_Tex'
.NameInList 'ƒ‘Œ. ˆâ®£®¢ ï ¯® â®¯«¨¢ã ­  ¤¢¨¦¥­¨¥ ¡¥§ £àã¯¯¨à®¢ª¨ ¯® ¯¥à¨®¤ã'
.group 'á­®¢­®© á®áâ ¢'
.group '‘¢¥¤¥­¨ï ¯® ƒ‘Œ'
.var
ItgProbeg, ItgKolForRas, ItgVidt, ItgSdant, ItgNormt, ItgFakt,ItgOtkl    :double
AvtItgProbeg,AvtItgKolForRas,AvtItgVidt, AvtItgSdant, AvtItgNormt, AvtItgFakt,
             AvtItgOtkl   :double
MarItgProbeg,MARItgKolForRas, MarItgVidt, MarItgSdant, MarItgNormt, MarItgFakt,MarItgOtkl    :double
PodItgProbeg,PodItgKolForRas,PodItgVidt, PodItgSdant, PodItgNormt, PodItgFakt,PodItgOtkl    :double
PredItgProbeg,PredItgKolForRas,PredItgVidt, PredItgSdant, PredItgNormt, PredItgFakt,PredItgOtkl   :double
AllPredItgProbeg,AllPredItgKolForRas,AllPredItgVidt, AllPredItgSdant, AllPredItgNormt,
AllPredItgFakt, AllPredItgOtkl   :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred VarToplivo
 TipTex
 Podraz
 Marka
.endfields
 ^
.{
^
.}

.begin
AllPredItgVidt := 0 AllPredItgSdant := 0 AllPredItgNormt := 0 AllPredItgFakt := 0
AllPredItgKolForRas := 0 AllPredItgProbeg := 0
end.
ÿ                                            áå®¤ â®¯«¨¢ 
                           c @@@@@@@@@@@@@@@@@@@@@@  ¯® @@@@@@@@@@@@@@@@@@@@@@
                                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                                       ³      à®¡¥£           ³              â®¯«¨¢® ­  ¤¢¨¦¥­¨¥ (ª£)
                                       ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ
                                       ³  ¡é¨©    ³®â â¨¯  ƒ‘Œ³   ‚ë¤ ­®   ³  ‘¤ ­®    ³  ®à¬     ³  ” ªâ.    ³   +/-
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ
.{
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
NaimTiptex := Tiptex
PredItgVidt := 0 PredItgSdant := 0 PredItgNormt := 0 PredItgFakt := 0
PredItgKolForRas := 0 PredItgProbeg := 0
end.
.{
.begin
Naimpodr := Podraz
PodItgVidt := 0 PodItgSdant := 0 PodItgNormt := 0 PodItgFakt := 0
PodItgKolForRas := 0 PodItgProbeg := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimMarka := Marka
MarItgVidt := 0 MarItgSdant := 0 MarItgNormt := 0 MarItgFakt := 0
MarItgKolForRas := 0 MarItgProbeg := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimAvto := GarNom
AvtItgVidt := 0 AvtItgSdant := 0 AvtItgNormt := 0 AvtItgFakt := 0
AvtItgKolForRas := 0 AvtItgProbeg := 0
end.
.{
.begin
NaimMes := Mes
ItgVidt := 0 ItgSdant := 0 ItgNormt := 0 ItgFakt := 0
ItgKolForRas := 0 ItgProbeg := 0
end.
.{
.begin
ItgProbeg :=  ItgProbeg  + Probeg
ItgKolForRas :=  ItgKolForRas  + KolForRas
ItgVidt  := ItgVidt   +  Vidt
ItgSdant := ItgSdant  +  Sdant
ItgNormt := ItgNormt  +  Normt
ItgFakt  := ItgFakt   +  Fakt
end.
.}
.begin
AvtItgProbeg :=  AvtItgProbeg  + ItgProbeg
AvtItgKolForRas :=  AvtItgKolForRas  + ItgKolForRas
AvtItgVidt  := AvtItgVidt   +  ItgVidt
AvtItgSdant := AvtItgSdant  +  ItgSdant
AvtItgNormt := AvtItgNormt  +  ItgNormt
AvtItgFakt  := AvtItgFakt   +  ItgFakt
end.
.begin
ItgOtkl  := ItgNormt - Itgfakt
end.
.}
.begin
MarItgProbeg :=  MarItgProbeg  + AvtItgProbeg
MarItgKolForRas :=  MarItgKolForRas  + AvtItgKolForRas
MarItgVidt  := MarItgVidt   +  AvtItgVidt
MarItgSdant := MarItgSdant  +  AvtItgSdant
MarItgNormt := MarItgNormt  +  AvtItgNormt
MarItgFakt  := MarItgFakt   +  AvtItgFakt
end.
.begin
AvtItgOtkl  := AvtItgNormt - AvtItgfakt
end.
.Fields
NaimAvto
AvtItgProbeg AvtItgKolForRas AvtItgVidt AvtItgSdant AvtItgNormt AvtItgFakt AvtItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
PodItgProbeg :=  PodItgProbeg  + MarItgProbeg
PodItgKolForRas :=  PodItgKolForRas  + MarItgKolForRas
PodItgVidt  := PodItgVidt   +  MarItgVidt
PodItgSdant := PodItgSdant  +  MarItgSdant
PodItgNormt := PodItgNormt  +  MarItgNormt
PodItgFakt  := PodItgFakt   +  MarItgFakt
end.
.begin
MarItgOtkl  := MarItgNormt - MarItgfakt
end.
.Fields
NaimMarka
MarItgProbeg MarItgKolForRas MarItgVidt MarItgSdant MarItgNormt MarItgFakt MarItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
PredItgProbeg :=  PredItgProbeg  + PodItgProbeg
PredItgKolForRas :=  PredItgKolForRas  + PodItgKolForRas
PredItgVidt  := PredItgVidt   +  PodItgVidt
PredItgSdant := PredItgSdant  +  PodItgSdant
PredItgNormt := PredItgNormt  +  PodItgNormt
PredItgFakt  := PredItgFakt   +  PodItgFakt
end.
.begin
PodItgOtkl  := PodItgNormt - PodItgfakt
end.
.Fields
NaimPodr
PodItgProbeg PodItgKolForRas PodItgVidt PodItgSdant PodItgNormt PodItgFakt PodItgotkl
.endfields
ÿˆâ®£® ¯®  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
AllPredItgProbeg :=  AllPredItgProbeg  + PredItgProbeg
AllPredItgKolForRas :=  AllPredItgKolForRas  + PredItgKolForRas
AllPredItgVidt  := AllPredItgVidt   +  PredItgVidt
AllPredItgSdant := AllPredItgSdant  +  PredItgSdant
AllPredItgNormt := AllPredItgNormt  +  PredItgNormt
AllPredItgFakt  := AllPredItgFakt   +  PredItgFakt
end.
.begin
PredItgOtkl  := PredItgNormt - PredItgfakt
end.
.Fields
NaimTipTex
PredItgProbeg PredItgKolForRas PredItgVidt PredItgSdant PredItgNormt PredItgFakt PredItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
AllPredItgOtkl  := AllPredItgNormt - AllPredItgfakt
end.
.Fields
AllPredItgProbeg AllPredItgKolForRas
AllPredItgVidt AllPredItgSdant AllPredItgNormt AllPredItgFakt AllPredItgotkl
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                    &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
ÿ
.endform

.linkform 'Ved_Tex_3' prototype is 'Ved_Tex'
.NameInList 'ƒ‘Œ. ’®¯«¨¢® ­  ¤¢¨¦¥­¨¥'
.group 'á­®¢­®© á®áâ ¢'
.group '‘¢¥¤¥­¨ï ¯® ƒ‘Œ'
.var
ItgVidt, ItgSdant, ItgNormt, ItgFakt,ItgOtkl                   :double
AvtItgVidt, AvtItgSdant, AvtItgNormt, AvtItgFakt, AvtItgOtkl   :double
MarItgVidt, MarItgSdant, MarItgNormt, MarItgFakt,MarItgOtkl    :double
PodItgVidt, PodItgSdant, PodItgNormt, PodItgFakt,PodItgOtkl    :double
PredItgVidt, PredItgSdant, PredItgNormt, PredItgFakt,PredItgOtkl   :double
AllPredItgVidt, AllPredItgSdant, AllPredItgNormt,
AllPredItgFakt, AllPredItgOtkl   :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred VarToplivo dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 Kodgsm NaimGsm Ow VidT SdanT Normt Fakt Otklt  Owv
.endfields
 ^
.{
^
.}

.begin
AllPredItgVidt := 0 AllPredItgSdant := 0 AllPredItgNormt := 0 AllPredItgFakt := 0
end.
ÿ˜                                            ’¥å­¨ª®-íªá¯«ã â æ¨®­­ë¥ ¯®ª § â¥«¨ à ¡®âë ¯à¥¤¯à¨ïâ¨ï
                                              c @@@@@@@@@@@@@@@@@@@@@@  ¯® @@@@@@@@@@@@@@@@@@@@@@
                                                          @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                          @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@                    @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³  ®¬¥à ³   „ â    ³                                   ƒ‘Œ    ­  ¤¢¨¦¥­¨¥  (ª£)
  ­®¬¥à    ³¯ãâ¥¢®£®³  ¢ë¯¨áª¨ ³ÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ
           ³  «¨áâ  ³          ³  Š®¤ ƒ‘Œ    ³  ¨¬¥­®¢ ­¨¥ ƒ‘Œ   ³.¢ë¥§¤³  ‚ë¤ ­®   ³  ‘¤ ­®    ³  ®à¬     ³  ” ªâ.    ³   +/-    ³0.¢®§.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄ
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.begin
NaimTiptex := Tiptex
PredItgVidt := 0 PredItgSdant := 0 PredItgNormt := 0 PredItgFakt := 0
end.
.{
.begin
Naimpodr := Podraz
PodItgVidt := 0 PodItgSdant := 0 PodItgNormt := 0 PodItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimMarka := Marka
MarItgVidt := 0 MarItgSdant := 0 MarItgNormt := 0 MarItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimAvto := GarNom
AvtItgVidt := 0 AvtItgSdant := 0 AvtItgNormt := 0 AvtItgFakt := 0
end.
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.begin
NaimMes := Mes
ItgVidt := 0 ItgSdant := 0 ItgNormt := 0 ItgFakt := 0
end.
.{
.begin
ItgVidt  := ItgVidt   +  Vidt
ItgSdant := ItgSdant  +  Sdant
ItgNormt := ItgNormt  +  Normt
ItgFakt  := ItgFakt   +  Fakt
end.
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.& &'&&.&
.}
.begin
AvtItgVidt  := AvtItgVidt   +  ItgVidt
AvtItgSdant := AvtItgSdant  +  ItgSdant
AvtItgNormt := AvtItgNormt  +  ItgNormt
AvtItgFakt  := AvtItgFakt   +  ItgFakt
end.
.begin
ItgOtkl  := ItgNormt - Itgfakt
end.
.Fields
 NaimMes ItgVidt ItgSdant ItgNormt ItgFakt Itgotkl
.endfields
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
MarItgVidt  := MarItgVidt   +  AvtItgVidt
MarItgSdant := MarItgSdant  +  AvtItgSdant
MarItgNormt := MarItgNormt  +  AvtItgNormt
MarItgFakt  := MarItgFakt   +  AvtItgFakt
end.
.begin
AvtItgOtkl  := AvtItgNormt - AvtItgfakt
end.
.Fields
NaimAvto AvtItgVidt AvtItgSdant AvtItgNormt AvtItgFakt AvtItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
PodItgVidt  := PodItgVidt   +  MarItgVidt
PodItgSdant := PodItgSdant  +  MarItgSdant
PodItgNormt := PodItgNormt  +  MarItgNormt
PodItgFakt  := PodItgFakt   +  MarItgFakt
end.
.begin
MarItgOtkl  := MarItgNormt - MarItgfakt
end.
.Fields
NaimMarka
MarItgVidt MarItgSdant MarItgNormt MarItgFakt MarItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
PredItgVidt  := PredItgVidt   +  PodItgVidt
PredItgSdant := PredItgSdant  +  PodItgSdant
PredItgNormt := PredItgNormt  +  PodItgNormt
PredItgFakt  := PredItgFakt   +  PodItgFakt
end.
.begin
PodItgOtkl  := PodItgNormt - PodItgfakt
end.
.Fields
NaimPodr PodItgVidt PodItgSdant PodItgNormt PodItgFakt PodItgotkl
.endfields
ÿˆâ®£® ¯®  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
AllPredItgVidt  := AllPredItgVidt   +  PredItgVidt
AllPredItgSdant := AllPredItgSdant  +  PredItgSdant
AllPredItgNormt := AllPredItgNormt  +  PredItgNormt
AllPredItgFakt  := AllPredItgFakt   +  PredItgFakt
end.
.begin
PredItgOtkl  := PredItgNormt - PredItgfakt
end.
.Fields
NaimTipTex PredItgVidt PredItgSdant PredItgNormt PredItgFakt PredItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                  &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&       ³ÿ™
ÿ˜.}
.begin
AllPredItgOtkl  := AllPredItgNormt - AllPredItgfakt
end.
.Fields
AllPredItgVidt AllPredItgSdant AllPredItgNormt AllPredItgFakt AllPredItgotkl
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                                       &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™

.endform
.linkform 'Ved_Tex_04' prototype is 'Ved_Tex'
.NameInList 'ƒ‘Œ. ˆâ®£®¢ ï ¯® â®¯«¨¢ã ­  ¤¢¨¦¥­¨¥'
.group 'á­®¢­®© á®áâ ¢'
.group '‘¢¥¤¥­¨ï ¯® ƒ‘Œ'
.var
ItgProbeg, ItgKolForRas, ItgVidt, ItgSdant, ItgNormt, ItgFakt,ItgOtkl    :double
AvtItgProbeg,AvtItgKolForRas,AvtItgVidt, AvtItgSdant, AvtItgNormt, AvtItgFakt,
             AvtItgOtkl   :double
MarItgProbeg,MARItgKolForRas, MarItgVidt, MarItgSdant, MarItgNormt, MarItgFakt,MarItgOtkl    :double
PodItgProbeg,PodItgKolForRas,PodItgVidt, PodItgSdant, PodItgNormt, PodItgFakt,PodItgOtkl    :double
PredItgProbeg,PredItgKolForRas,PredItgVidt, PredItgSdant, PredItgNormt, PredItgFakt,PredItgOtkl   :double
AllPredItgProbeg,AllPredItgKolForRas,AllPredItgVidt, AllPredItgSdant, AllPredItgNormt,
AllPredItgFakt, AllPredItgOtkl   :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred VarToplivo
 TipTex
 Podraz
 Marka
.endfields
 ^
.{
^
.}

.begin
AllPredItgVidt := 0 AllPredItgSdant := 0 AllPredItgNormt := 0 AllPredItgFakt := 0
AllPredItgKolForRas := 0 AllPredItgProbeg := 0
end.
ÿ                                            áå®¤ â®¯«¨¢ 
                           c @@@@@@@@@@@@@@@@@@@@@@  ¯® @@@@@@@@@@@@@@@@@@@@@@
                                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                                       ³      à®¡¥£           ³              â®¯«¨¢® ­  ¤¢¨¦¥­¨¥ (ª£)
                                       ³ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ
                                       ³  ¡é¨©    ³®â â¨¯  ƒ‘Œ³   ‚ë¤ ­®   ³  ‘¤ ­®    ³  ®à¬     ³  ” ªâ.    ³   +/-
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ
.{
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
NaimTiptex := Tiptex
PredItgVidt := 0 PredItgSdant := 0 PredItgNormt := 0 PredItgFakt := 0
PredItgKolForRas := 0 PredItgProbeg := 0
end.
.{
.begin
Naimpodr := Podraz
PodItgVidt := 0 PodItgSdant := 0 PodItgNormt := 0 PodItgFakt := 0
PodItgKolForRas := 0 PodItgProbeg := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimMarka := Marka
MarItgVidt := 0 MarItgSdant := 0 MarItgNormt := 0 MarItgFakt := 0
MarItgKolForRas := 0 MarItgProbeg := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimAvto := GarNom
AvtItgVidt := 0 AvtItgSdant := 0 AvtItgNormt := 0 AvtItgFakt := 0
AvtItgKolForRas := 0 AvtItgProbeg := 0
end.
.{
.begin
NaimMes := Mes
ItgVidt := 0 ItgSdant := 0 ItgNormt := 0 ItgFakt := 0
ItgKolForRas := 0 ItgProbeg := 0
end.
.{
.begin
ItgProbeg :=  ItgProbeg  + Probeg
ItgKolForRas :=  ItgKolForRas  + KolForRas
ItgVidt  := ItgVidt   +  Vidt
ItgSdant := ItgSdant  +  Sdant
ItgNormt := ItgNormt  +  Normt
ItgFakt  := ItgFakt   +  Fakt
end.
.}
.begin
AvtItgProbeg :=  AvtItgProbeg  + ItgProbeg
AvtItgKolForRas :=  AvtItgKolForRas  + ItgKolForRas
AvtItgVidt  := AvtItgVidt   +  ItgVidt
AvtItgSdant := AvtItgSdant  +  ItgSdant
AvtItgNormt := AvtItgNormt  +  ItgNormt
AvtItgFakt  := AvtItgFakt   +  ItgFakt
end.
.begin
ItgOtkl  := ItgNormt - Itgfakt
end.
.Fields
 NaimMes ItgProbeg ItgKolForRas ItgVidt ItgSdant ItgNormt ItgFakt Itgotkl
.endfields
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
MarItgProbeg :=  MarItgProbeg  + AvtItgProbeg
MarItgKolForRas :=  MarItgKolForRas  + AvtItgKolForRas
MarItgVidt  := MarItgVidt   +  AvtItgVidt
MarItgSdant := MarItgSdant  +  AvtItgSdant
MarItgNormt := MarItgNormt  +  AvtItgNormt
MarItgFakt  := MarItgFakt   +  AvtItgFakt
end.
.begin
AvtItgOtkl  := AvtItgNormt - AvtItgfakt
end.
.Fields
NaimAvto
AvtItgProbeg AvtItgKolForRas AvtItgVidt AvtItgSdant AvtItgNormt AvtItgFakt AvtItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
PodItgProbeg :=  PodItgProbeg  + MarItgProbeg
PodItgKolForRas :=  PodItgKolForRas  + MarItgKolForRas
PodItgVidt  := PodItgVidt   +  MarItgVidt
PodItgSdant := PodItgSdant  +  MarItgSdant
PodItgNormt := PodItgNormt  +  MarItgNormt
PodItgFakt  := PodItgFakt   +  MarItgFakt
end.
.begin
MarItgOtkl  := MarItgNormt - MarItgfakt
end.
.Fields
NaimMarka
MarItgProbeg MarItgKolForRas MarItgVidt MarItgSdant MarItgNormt MarItgFakt MarItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
PredItgProbeg :=  PredItgProbeg  + PodItgProbeg
PredItgKolForRas :=  PredItgKolForRas  + PodItgKolForRas
PredItgVidt  := PredItgVidt   +  PodItgVidt
PredItgSdant := PredItgSdant  +  PodItgSdant
PredItgNormt := PredItgNormt  +  PodItgNormt
PredItgFakt  := PredItgFakt   +  PodItgFakt
end.
.begin
PodItgOtkl  := PodItgNormt - PodItgfakt
end.
.Fields
NaimPodr
PodItgProbeg PodItgKolForRas PodItgVidt PodItgSdant PodItgNormt PodItgFakt PodItgotkl
.endfields
ÿˆâ®£® ¯®  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
AllPredItgProbeg :=  AllPredItgProbeg  + PredItgProbeg
AllPredItgKolForRas :=  AllPredItgKolForRas  + PredItgKolForRas
AllPredItgVidt  := AllPredItgVidt   +  PredItgVidt
AllPredItgSdant := AllPredItgSdant  +  PredItgSdant
AllPredItgNormt := AllPredItgNormt  +  PredItgNormt
AllPredItgFakt  := AllPredItgFakt   +  PredItgFakt
end.
.begin
PredItgOtkl  := PredItgNormt - PredItgfakt
end.
.Fields
NaimTipTex
PredItgProbeg PredItgKolForRas PredItgVidt PredItgSdant PredItgNormt PredItgFakt PredItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
.}
.begin
AllPredItgOtkl  := AllPredItgNormt - AllPredItgfakt
end.
.Fields
AllPredItgProbeg AllPredItgKolForRas
AllPredItgVidt AllPredItgSdant AllPredItgNormt AllPredItgFakt AllPredItgotkl
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                    &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ
ÿ
.endform

.linkform 'Ved_Tex_05' prototype is 'Ved_Tex'
.NameInList 'ƒ‘Œ. ’®¯«¨¢® ¤«ï  ¢â®­®¬. ®¡®àã¤.'
.group 'á­®¢­®© á®áâ ¢'
.group '‘¢¥¤¥­¨ï ¯® ƒ‘Œ'
.var
ItgVidt, ItgSdant, ItgNormt, ItgFakt,ItgOtkl   :double
AvtItgVidt, AvtItgSdant, AvtItgNormt, AvtItgFakt, AvtItgOtkl   :double
MarItgVidt, MarItgSdant, MarItgNormt, MarItgFakt,MarItgOtkl    :double
PodItgVidt, PodItgSdant, PodItgNormt, PodItgFakt,PodItgOtkl    :double
PredItgVidt, PredItgSdant, PredItgNormt, PredItgFakt,PredItgOtkl   :double
AllPredItgVidt, AllPredItgSdant, AllPredItgNormt,
AllPredItgFakt, AllPredItgOtkl   :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred  dat
 TipTex
 Podraz
 Marka
 Mes
 GarNom
 NomPutLst DataPl
 Kodgsm1 NaimGsm1 Ow1  VidT1 SdanT1 Normt1 Fakt1 Otklt1  Owv1
.endfields
^
.{
^
.}

.begin
AllPredItgVidt := 0 AllPredItgSdant := 0 AllPredItgNormt := 0 AllPredItgFakt := 0
end.
ÿ˜                                            ’¥å­¨ª®-íªá¯«ã â æ¨®­­ë¥ ¯®ª § â¥«¨ à ¡®âë ¯à¥¤¯à¨ïâ¨ï
                                              c @@@@@@@@@@@@@@@@@@@@@@  ¯® @@@@@@@@@@@@@@@@@@@@@@
                                                          @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                         @@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ƒ®áã¤ àáâ¢.³  ®¬¥à ³   „ â    ³                                   ƒ‘Œ ¤«ï  ¢â®­®¬­®£® ®¡®àã¤®¢ ­¨ï (ª£)
  ­®¬¥à    ³¯ãâ¥¢®£®³  ¢ë¯¨áª¨ ³ÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄ
           ³  «¨áâ  ³          ³  Š®¤ ƒ‘Œ    ³  ¨¬¥­®¢ ­¨¥ ƒ‘Œ   ³.¢ë¥§¤³  ‚ë¤ ­®   ³  ‘¤ ­®    ³  ®à¬     ³  ” ªâ.    ³   +/-    ³0.¢®§.
ÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄ
.{
.begin
NaimTiptex := Tiptex
PredItgVidt := 0 PredItgSdant := 0 PredItgNormt := 0 PredItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
Naimpodr := Podraz
PodItgVidt := 0 PodItgSdant := 0 PodItgNormt := 0 PodItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
NaimMarka := marka
MarItgVidt := 0 MarItgSdant := 0 MarItgNormt := 0 MarItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.{
.begin
NaimAvto := GarNom
AvtItgVidt := 0 AvtItgSdant := 0 AvtItgNormt := 0 AvtItgFakt := 0
end.
.{
.begin
NaimMes := Mes
ItgVidt := 0 ItgSdant := 0 ItgNormt := 0 ItgFakt := 0
end.
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ™
ÿ˜.{
.begin
ItgVidt  := ItgVidt   +  Vidt1
ItgSdant := ItgSdant  +  Sdant1
ItgNormt := ItgNormt  +  Normt1
ItgFakt  := ItgFakt   +  Fakt1
end.
@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.& &'&&.&
.}
.begin
AvtItgVidt  := AvtItgVidt   +  ItgVidt
AvtItgSdant := AvtItgSdant  +  ItgSdant
AvtItgNormt := AvtItgNormt  +  ItgNormt
AvtItgFakt  := AvtItgFakt   +  ItgFakt
end.
.begin
ItgOtkl  := ItgNormt - Itgfakt
end.
.Fields
NaimMes
ItgVidt ItgSdant ItgNormt ItgFakt Itgotkl
.endfields
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
MarItgVidt  := MarItgVidt   +  AvtItgVidt
MarItgSdant := MarItgSdant  +  AvtItgSdant
MarItgNormt := MarItgNormt  +  AvtItgNormt
MarItgFakt  := MarItgFakt   +  AvtItgFakt
end.
.begin
AvtItgOtkl  := AvtItgNormt - AvtItgfakt
end.
.Fields
NaimAvto
AvtItgVidt AvtItgSdant AvtItgNormt AvtItgFakt AvtItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
PodItgVidt  := PodItgVidt   +  MarItgVidt
PodItgSdant := PodItgSdant  +  MarItgSdant
PodItgNormt := PodItgNormt  +  MarItgNormt
PodItgFakt  := PodItgFakt   +  MarItgFakt
end.
.begin
MarItgOtkl  := MarItgNormt - MarItgfakt
end.
.Fields
NaimMarka
MarItgVidt MarItgSdant MarItgNormt MarItgFakt MarItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
PredItgVidt  := PredItgVidt   +  PodItgVidt
PredItgSdant := PredItgSdant  +  PodItgSdant
PredItgNormt := PredItgNormt  +  PodItgNormt
PredItgFakt  := PredItgFakt   +  PodItgFakt
end.
.begin
PodItgOtkl  := PodItgNormt - PodItgfakt
end.
.Fields
NaimPodr PodItgVidt PodItgSdant PodItgNormt PodItgFakt PodItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
AllPredItgVidt  := AllPredItgVidt   +  PredItgVidt
AllPredItgSdant := AllPredItgSdant  +  PredItgSdant
AllPredItgNormt := AllPredItgNormt  +  PredItgNormt
AllPredItgFakt  := AllPredItgFakt   +  PredItgFakt
end.
.begin
PredItgOtkl  := PredItgNormt - PredItgfakt
end.
.Fields
NaimTipTex PredItgVidt PredItgSdant PredItgNormt PredItgFakt PredItgotkl
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                   &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜.}
.begin
AllPredItgOtkl  := AllPredItgNormt - AllPredItgfakt
end.
.Fields
AllPredItgVidt AllPredItgSdant AllPredItgNormt AllPredItgFakt AllPredItgotkl
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                                                       &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&&.& &'&&&&&&.&ÿ™
ÿ˜˜
.endform

.linkform 'Ved_Tex_06' prototype is 'Ved_Tex'
.NameInList 'ƒ‘Œ. ˆâ®£®¢ ï ¯® à áå®¤ã á¬ §®ç­ëå ¬ â¥à¨ «®¢'
.group 'á­®¢­®© á®áâ ¢'
.group '‘¢¥¤¥­¨ï ¯® ƒ‘Œ'
.var
ItgProbeg, ItgFakt         :double
ItgMotMaslo, ItgTransMaslo, ItgSpecMaslo, ItgPlastSmazka  :double
AvtItgProbeg, AvtItgFakt   :double
AvtItgMotMaslo, AvtItgTransMaslo, AvtItgSpecMaslo, AvtItgPlastSmazka  :double
MarItgProbeg, MarItgFakt   :double
MarItgMotMaslo, MarItgTransMaslo, MarItgSpecMaslo, MarItgPlastSmazka  :double
PodItgProbeg, PodItgFakt   :double
PodItgMotMaslo, PodItgTransMaslo, PodItgSpecMaslo, PodItgPlastSmazka  :double
PredItgProbeg, PredItgFakt :double
PredItgMotMaslo, PredItgTransMaslo, PredItgSpecMaslo, PredItgPlastSmazka  :double
AllPredItgProbeg, AllPredItgFakt   :double
AllPredItgMotMaslo, AllPredItgTransMaslo, AllPredItgSpecMaslo, AllPredItgPlastSmazka  :double
NaimMes,NaimAvto,NaimMarka,NaimTiptex, NaimPodr : string;
.endvar
.fields
 CommonFormHeader
 Filtr
 BegDate  EndDate
 NaimPred VarToplivo
 TipTex
 Podraz
 Marka
.endfields
 ^
.{
^
.}

.begin
AllPredItgFakt   := 0
AllPredItgProbeg := 0
AllPredItgMotMaslo      := 0
AllPredItgTransMaslo    := 0
AllPredItgSpecMaslo     := 0
AllPredItgPlastSmazka   := 0
end.
                                              áå®¤ â®¯«¨¢ 
                           c @@@@@@@@@@@@@@@@@@@@@@  ¯® @@@@@@@@@@@@@@@@@@@@@@
                                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@

ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ
                                       ³             ³   áå®¤     ³   áå®¤     ³   áå®¤     ³   áå®¤     ³   áå®¤
                                       ³  à®¡¥£     ³â®¯«¨¢  ä ªâ.³ ¬®â®à­ëå    ³ âà ­á¬¨á.   ³ á¯¥æ¨ «ì­ëå ³ ¯« áâ¨ç­®©
                                       ³             ³             ³  ¬ á¥«      ³  ¬ á¥«      ³  ¬ á¥«      ³  á¬ §ª¨
ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
NaimTiptex := Tiptex
PredItgFakt := 0
PredItgProbeg := 0
PredItgMotMaslo      := 0
PredItgTransMaslo    := 0
PredItgSpecMaslo     := 0
PredItgPlastSmazka   := 0
end.
.{
.begin
Naimpodr := Podraz
PodItgFakt := 0
PodItgProbeg := 0
PodItgMotMaslo      := 0
PodItgTransMaslo    := 0
PodItgSpecMaslo     := 0
PodItgPlastSmazka   := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimMarka := Marka
MarItgFakt := 0
MarItgProbeg := 0
MarItgMotMaslo      := 0
MarItgTransMaslo    := 0
MarItgSpecMaslo     := 0
MarItgPlastSmazka   := 0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
NaimAvto := GarNom
AvtItgFakt := 0
AvtItgProbeg := 0
AvtItgMotMaslo      := 0
AvtItgTransMaslo    := 0
AvtItgSpecMaslo     := 0
AvtItgPlastSmazka   := 0
end.
.{
.begin
NaimMes := Mes
ItgFakt := 0
ItgProbeg := 0
ItgMotMaslo      := 0
ItgTransMaslo    := 0
ItgSpecMaslo     := 0
ItgPlastSmazka   := 0
end.
.{
.begin
ItgProbeg :=  ItgProbeg  + Probeg
ItgFakt  := ItgFakt   +  Fakt_den
ItgMotMaslo      := ItgMotMaslo    + MotMaslo
ItgTransMaslo    := ItgTransMaslo  + TransMaslo
ItgSpecMaslo     := ItgSpecMaslo   + SpecMaslo
ItgPlastSmazka   := ItgPlastSmazka + PlastSmazka
end.
.}
.begin
AvtItgProbeg        :=  AvtItgProbeg  + ItgProbeg
AvtItgFakt          := AvtItgFakt    +  ItgFakt
AvtItgMotMaslo      := AvtItgMotMaslo    + ItgMotMaslo
AvtItgTransMaslo    := AvtItgTransMaslo  + ItgTransMaslo
AvtItgSpecMaslo     := AvtItgSpecMaslo   + ItgSpecMaslo
AvtItgPlastSmazka   := AvtItgPlastSmazka + ItgPlastSmazka
end.
.Fields
 NaimMes ItgProbeg ItgFakt
 ItgMotMaslo ItgTransMaslo ItgSpecMaslo ItgPlastSmazka
.endfields
ÿˆâ®£® §  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.&ÿ
.}
.begin
MarItgProbeg :=  MarItgProbeg  + AvtItgProbeg
MarItgFakt   :=  MarItgFakt   +  AvtItgFakt
MarItgMotMaslo      := MarItgMotMaslo    + AvtItgMotMaslo
MarItgTransMaslo    := MarItgTransMaslo  + AvtItgTransMaslo
MarItgSpecMaslo     := MarItgSpecMaslo   + AvtItgSpecMaslo
MarItgPlastSmazka   := MarItgPlastSmazka + AvtItgPlastSmazka
end.
.Fields
NaimAvto
AvtItgProbeg AvtItgFakt
AvtItgMotMaslo AvtItgTransMaslo AvtItgSpecMaslo AvtItgPlastSmazka
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.&ÿ
.}
.begin
PodItgProbeg :=  PodItgProbeg  + MarItgProbeg
PodItgFakt   :=  PodItgFakt    + MarItgFakt
PodItgMotMaslo      := PodItgMotMaslo    + MarItgMotMaslo
PodItgTransMaslo    := PodItgTransMaslo  + MarItgTransMaslo
PodItgSpecMaslo     := PodItgSpecMaslo   + MarItgSpecMaslo
PodItgPlastSmazka   := PodItgPlastSmazka + MarItgPlastSmazka
end.
.Fields
NaimMarka
MarItgProbeg MarItgFakt
MarItgMotMaslo MarItgTransMaslo MarItgSpecMaslo MarItgPlastSmazka
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.&ÿ
.}
.begin
PredItgProbeg :=  PredItgProbeg  + PodItgProbeg
PredItgFakt   :=  PredItgFakt    + PodItgFakt
PredItgMotMaslo      := PredItgMotMaslo    + PodItgMotMaslo
PredItgTransMaslo    := PredItgTransMaslo  + PodItgTransMaslo
PredItgSpecMaslo     := PredItgSpecMaslo   + PodItgSpecMaslo
PredItgPlastSmazka   := PredItgPlastSmazka + PodItgPlastSmazka
end.
.Fields
NaimPodr
PodItgProbeg PodItgFakt
PodItgMotMaslo PodItgTransMaslo PodItgSpecMaslo PodItgPlastSmazka
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.&ÿ
.}
.begin
AllPredItgProbeg :=  AllPredItgProbeg  + PredItgProbeg
AllPredItgFakt   :=  AllPredItgFakt    + PredItgFakt
AllPredItgMotMaslo      := AllPredItgMotMaslo    + PredItgMotMaslo
AllPredItgTransMaslo    := AllPredItgTransMaslo  + PredItgTransMaslo
AllPredItgSpecMaslo     := AllPredItgSpecMaslo   + PredItgSpecMaslo
AllPredItgPlastSmazka   := AllPredItgPlastSmazka + PredItgPlastSmazka
end.
.Fields
NaimTipTex
PredItgProbeg PredItgFakt
PredItgMotMaslo PredItgTransMaslo PredItgSpecMaslo PredItgPlastSmazka
.endfields
ÿˆâ®£® ¯® @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.&ÿ
.}
.Fields
AllPredItgProbeg  AllPredItgFakt
AllPredItgMotMaslo AllPredItgTransMaslo AllPredItgSpecMaslo AllPredItgPlastSmazka
.endfields
ÿˆâ®£® ¯® ¯à¥¤¯à¨ïâ¨î                    &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.& &'&&&&&&&&&.&ÿ

.endform
