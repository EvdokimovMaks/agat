/*
 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º                     (c) 1994,97 ª®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€                      º
 º à®¥ªâ        : ƒ€‹€Š’ˆŠ€                                                 º
 º ‘¨áâ¥¬        : €¢â®âà ­á¯®àâ                                             º
 º ‚¥àá¨ï        : 5.00                                                      º
 º  §­ ç¥­¨¥    :  áå®¤ ƒ‘Œ                                                º
 º Žâ¢¥âáâ¢¥­­ë© : ‹¨á¨æ   â «ìï Œ¨å ©«®¢­                                  º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
­¥ ¯¥à¥áç¨â ­ë ¯®«ï - ­¥¯®­ïâ­® ®âªã¤  ¡à âì
*/
.linkform 'Ved_Gsm_07' prototype is 'Ved_Gsm'
.NameInList  '„¢¨¦¥­¨¥ ƒ‘Œ ¢ à §à¥§¥ ¯ãâ¥¢ëå'
.group 'Ž¡é¨¥ á¢¥¤¥­¨ï ¯® ƒ‘Œ'
.defo Landscape
.var
FirstOw        :double
FirstOwkg      :double
LastOw         :double
LastOwKg       :double
FirstNsd       :double
FirstNsdKg     :double
LastNsd        :double
LastNsdKg      :double

PutItgVidt      :double
PutItgVidtKg    :double
PutEntItgVidt      :double
PutEntItgVidtKg    :double
PutItgOw      :double
PutItgOwKg    :double
PutItgNorm    :double
PutItgFakt    :double
PutItgNormKg  :double
PutItgFaktKg  :double
PutItgRaz     :double
PutItgRazKg   :double
PutItgSdant   :double
PutItgSdantKg :double
PutItgOwv     :double
PutItgOwvKg   :double
PutItgFirstNsd   :double
PutItgLastNsd    :double
PutItgFirstNsdKg   :double
PutItgLastNsdKg    :double

OneItgVidt      :double
OneItgVidtKg    :double
OneEntItgVidt      :double
OneEntItgVidtKg    :double
OneItgOw      :double
OneItgOwKg    :double
OneItgNorm    :double
OneItgFakt    :double
OneItgNormKg  :double
OneItgFaktKg  :double
OneItgRaz     :double
OneItgRazKg   :double
OneItgSdant   :double
OneItgSdantKg :double
OneItgOwv     :double
OneItgOwvKg   :double
OneItgFirstNsd   :double
OneItgLastNsd    :double
OneItgFirstNsdKg   :double
OneItgLastNsdKg    :double

TwoItgVidt      :double
TwoItgVidtKg    :double
TwoEntItgVidt      :double
TwoEntItgVidtKg    :double
TwoItgOw      :double
TwoItgOwKg    :double
TwoItgNorm    :double
TwoItgFakt    :double
TwoItgNormKg  :double
TwoItgFaktKg  :double
TwoItgRaz     :double
TwoItgRazKg   :double
TwoItgSdant   :double
TwoItgSdantKg :double
TwoItgOwv     :double
TwoItgOwvKg   :double
TwoItgFirstNsd   :double
TwoItgLastNsd    :double
TwoItgFirstNsdKg   :double
TwoItgLastNsdKg    :double

ItgVidt      :double
ItgVidtKg    :double
EntItgVidt      :double
EntItgVidtKg    :double
ItgOw      :double
ItgOwKg    :double
ItgNorm    :double
ItgFakt    :double
ItgNormKg  :double
ItgFaktKg  :double
ItgRaz     :double
ItgRazKg   :double
ItgSdant   :double
ItgSdantKg :double
ItgOwV     :double
ItgOwVKg   :double
ItgFirstNsd   :double
ItgLastNsd    :double
ItgFirstNsdKg   :double
ItgLastNsdKg    :double

AllItgVidt      :double
AllItgVidtKg    :double
AllEntItgVidt      :double
AllEntItgVidtKg    :double
AllItgOw      :double
AllItgOwKg    :double
AllItgNorm    :double
AllItgFakt    :double
AllItgNormKg  :double
AllItgFaktKg  :double
AllItgRaz     :double
AllItgRazKg   :double
AllItgSdant   :double
AllItgSdantKg :double
AllItgOwV     :double
AllItgOwVKg   :double
AllItgFirstNsd   :double
AllItgLastNsd    :double
AllItgFirstNsdKg   :double
AllItgLastNsdKg    :double


WolItgVidt      :double
WolItgVidtKg    :double
WolEntItgVidt      :double
WolEntItgVidtKg    :double
WolItgOw      :double
WolItgOwKg    :double
WolItgNorm    :double
WolItgFakt    :double
WolItgNormKg  :double
WolItgFaktKg  :double
WolItgRaz     :double
WolItgRazKg   :double
WolItgSdant   :double
WolItgSdantKg :double
WolItgOwV     :double
WolItgOwVKg   :double
WolItgFirstNsd   :double
WolItgLastNsd    :double
WolItgFirstNsdKg   :double
WolItgLastNsdKg    :double

.endvar
.fields
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
 podraz
 Marka  Edin
 Data  NomPutLst GarNom
 if(Statpl=0,0,Ow)
 if(Statpl=0,FirstNsd,0)
 RasVidt
 EntRasVidt
 BestToplivoNorm  BestTopliviFakt
 Sdant
 if(Statpl=0,0,OwV)
 if(Statpl=0,LastNsd,0)
 if(Plus_Minus>=0,Plus_Minus,0)
 if(Plus_Minus>=0,0,Plus_Minus)
.endfields
.begin
WolItgVidt      := 0
WolItgVidtKg    := 0
WolEntItgVidt   := 0
WolEntItgVidtKg := 0
WolItgOw      := 0
WolItgOwkG    := 0
WolItgNorm    := 0
WolItgFakt    := 0
WolItgNormKg  := 0
WolItgFaktKg  := 0
WolItgRaz     := 0
WolItgRazkG   := 0
WolItgSdant   := 0
WolItgSdantKg := 0
WolItgOwV     :=0
WolItgOwVKg   :=0
WolItgFirstNsd   :=0
WolItgLastNsd    :=0
WolItgFirstNsdKg   :=0
WolItgLastNsdKg    :=0
end.
.{
^
.}
                         ‘¢¥¤¥­¨ï ® ¯à¨å®¤¥ £®àîç¥£®
                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    ¯® ¯ãâ¥¢ë¬ «¨áâ ¬ §  ¯¥à¨®¤ á  @@@@@@@@@@@@@@@@@@@@@ ¯®   @@@@@@@@@@@@@@@@@@@@@
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
ÚÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³          ³         ³               ³  Žáâ â®ª ­  ­ ç.    ³      à¨å®¤         ³            áå®¤               ³   Žáâ â®ª ­         ³     ¥§ã«ìâ â       ³
³  „ â     ³  ®¬¥à  ³  ƒ®áã¤ àáâ¢.  ³        ¤ âã         ³                     ³                                ³  ª®­¥ç­ãî ¤ âã      ³                     ³
³ ¢ë¯¨áª¨  ³ ¯ãâ¥¢®£®³     ­®¬¥à     ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³
³  «¨áâ    ³  «¨áâ   ³               ³ ‚ ¡ ª å  ³® ­¥á¤ ­.³‘® áª« ¤  ³ ˆ§ ¤àã£¨å³® ­®à¬¥  ³  ” ªâ.   ³ ‘¤ ­® ­  ³  ‚ ¡ ª å ³ ¥ á¤ ­. ³ ª®­®¬¨ï ³¥à¥à áå®¤³
³          ³         ³               ³          ³ ¯ãâ¥¢.   ³          ³ ¨áâ®ç­¨ª.³          ³ à áå®¤   ³ áª« ¤    ³          ³ ¯ãâ¥¢ë¬  ³          ³          ³
ÀÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ
.{
.begin
AllItgVidt      := 0
AllItgVidtKg    := 0
AllEntItgVidt   := 0
AllEntItgVidtKg := 0
AllItgOw      := 0
AllItgOwKg    := 0
AllItgNorm    := 0
AllItgFakt    := 0
AllItgNormKg  := 0
AllItgFaktKg  := 0
AllItgRaz     := 0
AllItgRazKg   := 0
AllItgSdant   := 0
AllItgSdantKg := 0
AllItgOwV     :=0
AllItgOwVKg   :=0
AllItgFirstNsd   :=0
AllItgLastNsd    :=0
AllItgFirstNsdKg   :=0
AllItgLastNsdKg    :=0
end.
.{
.begin
ItgVidt      := 0
ItgVidtKg    := 0
EntItgVidt   := 0
EntItgVidtKg := 0
ItgOw      := 0
ItgOwKg    := 0
ItgNorm    := 0
ItgFakt    := 0
ItgNormKg  := 0
ItgFaktKg  := 0
ItgRaz     := 0
ItgRazKg   := 0
ItgSdant   := 0
ItgSdantKg := 0
ItgOwV     :=0
ItgOwVKg   :=0
ItgFirstNsd   :=0
ItgLastNsd    :=0
ItgFirstNsdKg   :=0
ItgLastNsdKg    :=0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
TwoItgVidt      := 0
TwoItgVidtKg    := 0
TwoEntItgVidt   := 0
TwoEntItgVidtKg := 0
TwoItgOw      := 0
TwoItgOwKg    := 0
TwoItgNorm    := 0
TwoItgFakt    := 0
TwoItgNormKg  := 0
TwoItgFaktKg  := 0
TwoItgRaz     := 0
TwoItgRazKg   := 0
TwoItgSdant   := 0
TwoItgSdantKg := 0
TwoItgOwV     := 0
TwoItgOwVKg   := 0
TwoItgFirstNsd   :=0
TwoItgLastNsd    :=0
TwoItgFirstNsdKg   :=0
TwoItgLastNsdKg    :=0
end.
.{
.begin
OneItgVidt      := 0
OneItgVidtKg    := 0
OneEntItgVidt   := 0
OneEntItgVidtKg := 0
OneItgOw      := 0
OneItgOwKg    := 0
OneItgNorm    := 0
OneItgFakt    := 0
OneItgNormKg  := 0
OneItgFaktKg  := 0
OneItgRaz     := 0
OneItgRazKg   := 0
OneItgSdant   := 0
OneItgSdantKg := 0
OneItgOwV     := 0
OneItgOwVKg   := 0
OneItgFirstNsd   :=0
OneItgLastNsd    :=0
OneItgFirstNsdKg   :=0
OneItgLastNsdKg    :=0
if Statpl=0
{
   OneItgFirstNsd := Ow
   OneItgFirstNsdKg := OwKg
}
else
{
   OneItgOw :=  Ow
   OneItgOwKg := OwKg
}
end.
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
PutItgVidt      := 0
PutItgVidtKg    := 0
PutEntItgVidt   := 0
PutEntItgVidtKg := 0
PutItgOw        := 0
PutItgOwKg      := 0
PutItgNorm      := 0
PutItgFakt      := 0
PutItgNormKg    := 0
PutItgFaktKg    := 0
PutItgRaz       := 0
PutItgRazKg     := 0
PutItgSdant     := 0
PutItgSdantKg   := 0
PutItgOwV       := 0
PutItgOwVKg     := 0
PutItgFirstNsd   :=0
PutItgLastNsd    :=0
PutItgFirstNsdKg   :=0
PutItgLastNsdKg    :=0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgVidt      := PutItgVidt      +  RasVidt
PutItgVidtKg    := PutItgVidtKg    +  RasVidtKg
PutEntItgVidt   := PutEntItgVidt   +  EntRasVidt
PutEntItgVidtKg := PutEntItgVidtKg +  EntRasVidtKg
PutItgNorm    :=  PutItgNorm    + BestToplivoNorm
PutItgFakt    :=  PutItgFakt    + BestTopliviFakt
PutItgNormKg  :=  PutItgNormKg  + BestToplivoNormKg
PutItgFaktKg  :=  PutItgFaktKg  + BestTopliviFaktKg
PutItgSdant   :=  PutItgSdant   + Sdant
PutItgSdantKg   :=  PutItgSdantKg   + SdantKg
FirstNsd        :=  Ow
FirstNsdKg      :=  OwKg
!¯® ­¥á¤ ­­ë¬ ­¥§ ¯®«­¥­ ®áâ â®ª ¯® ¢®§¢à é¥­¨î
LastNsd        :=  Ow
LastNsdKg      :=  OwKg
PutItgOwV       :=  OwV     + PutItgOwV
PutItgOwVKg     :=  OwVKg   + PutItgOwVKg
if Statpl=0
{
PutItgFirstNsd  :=  FirstNsd + PutItgFirstNsd
PutItgLastNsd   :=  LastNsd  + PutItgLastNsd
PutItgFirstNsdKg  := FirstNsdkg + PutItgFirstNsdKg
PutItgLastNsdKg   := LastNsdKg  + PutItgLastNsdKg
}
else
{
PutItgOw       :=  Ow     + PutItgOw
PutItgOwKg     :=  OwKg   + PutItgOwKg
}
if Statpl=0
{
! ­  ª®­¥æ ®âç¥â­®£® ¯¥à¨®¤  ¯® ¯®á«¥¤­¥¬ã ¯ãâ¥¢®¬ã
  LastNsd         := OwV
  LastNsdKg       := OwVKg
  OneItgLastNsd   := OwV
  OneItgLastNsdKg :=OwVKg
}
else
{
  OneItgOwV :=  OwV
  OneItgOwVKg := OwVKg
}
end.
 @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&  &'&&&#&.&&
.[f OverWrite
.]f
.}
.begin
OneItgVidt      := PutItgVidt      +  OneItgVidt
OneItgVidtKg    := PutItgVidtKg    +  OneItgVidtKg
OneEntItgVidt   := PutEntItgVidt   +  OneEntItgVidt
OneEntItgVidtKg := PutEntItgVidtKg +  OneEntItgVidtKg
OneItgOw      :=  PutItgOw      + OneItgOw
OneItgOwKg    :=  PutItgOwKg    + OneItgOwKg
OneItgNorm    :=  PutItgNorm    + OneItgNorm
OneItgFakt    :=  PutItgFakt    + OneItgFakt
OneItgNormKg  :=  PutItgNormKg  + OneItgNormKg
OneItgFaktKg  :=  PutItgFaktKg  + OneItgFaktKg
OneItgSdant   :=  PutItgSdant   + OneItgSdant
OneItgSdantKg   :=  PutItgSdantKg   + OneItgSdantKg
PutItgRaz      := PutItgNorm - PutItgFakt
PutItgRazKg    := PutItgNormKg- PutItgFaktKg
end.
.Fields
NamePutLst
PutItgOw PutItgFirstNsd
PutItgVidt
PutEntItgVidt
PutItgNorm   PutItgFakt
PutItgSdant PutItgOwV  PutItgLastNsd
if(PutItgRaz>=0,PutItgRaz,0)
if(PutItgRaz>=0,0,PutItgRaz)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin
TwoItgVidt      := TwoItgVidt      +  OneItgVidt
TwoItgVidtKg    := TwoItgVidtKg    +  OneItgVidtKg
TwoEntItgVidt   := TwoEntItgVidt   +  OneEntItgVidt
TwoEntItgVidtKg := TwoEntItgVidtKg +  OneEntItgVidtKg
TwoItgOw      :=  TwoItgOw      + OneItgOw
TwoItgOwKg    :=  TwoItgOwKg    + OneItgOwKg
TwoItgNorm    :=  TwoItgNorm    + OneItgNorm
TwoItgFakt    :=  TwoItgFakt    + OneItgFakt
TwoItgNormKg  :=  TwoItgNormKg  + OneItgNormKg
TwoItgFaktKg  :=  TwoItgFaktKg  + OneItgFaktKg
TwoItgRaz     :=  TwoItgRaz     + OneItgRaz
TwoItgRazKg   :=  TwoItgRazKg   + OneItgRazKg
TwoItgSdant   :=  TwoItgSdant   + OneItgSdant
TwoItgSdantKg :=  TwoItgSdantKg + OneItgSdantKg
TwoItgOwV     :=  TwoItgOwV     + OneItgOwV
TwoItgOwVKg   :=  TwoItgOwVKg   + OneItgOwVKg
TwoItgFirstNsd  := TwoItgFirstNsd + OneItgFirstNsd
TwoItgLastNsd   := TwoItgLastNsd  + OneItgLastNsd
TwoItgFirstNsdKg  := TwoItgFirstNsdKg + OneItgFirstNsdKg
TwoItgLastNsdKg   := TwoItgLastNsdKg  + OneItgLastNsdKg
OneItgRaz      := OneitgNorm - OneItgFakt
OneItgRazKg    := OneitgNormKg - OneItgFaktKg
end.
.Fields
NameItg1
OneItgOw OneItgFirstNsd
OneItgVidt
OneEntItgVidt
OneItgNorm   OneItgFakt
OneItgSdant OneItgOwV OneItgLastNsd
if(OneItgRaz>=0,OneItgRaz,0)
if(OneItgRaz>=0,0,OneItgRaz)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin
ItgVidt      := TwoItgVidt      +  ItgVidt
ItgVidtKg    := TwoItgVidtKg    +  ItgVidtKg
EntItgVidt   := TwoEntItgVidt   +  EntItgVidt
EntItgVidtKg := TwoEntItgVidtKg +  EntItgVidtKg
ItgOw      :=  TwoItgOw      + ItgOw
ItgOwKg    :=  TwoItgOwKg    + ItgOwKg
ItgNorm    :=  TwoItgNorm    + ItgNorm
ItgFakt    :=  TwoItgFakt    + ItgFakt
ItgNormKg  :=  TwoItgNormKg  + ItgNormKg
ItgFaktKg  :=  TwoItgFaktKg  + ItgFaktKg
ItgRaz     :=  TwoItgRaz     + ItgRaz
ItgRazKg   :=  TwoItgRazKg   + ItgRazKg
ItgSdant   :=  TwoItgSdant   + ItgSdant
ItgSdantKg :=  TwoItgSdantKg  + ItgSdantKg
ItgOwV     :=  TwoItgOwV     + ItgOwV
ItgOwVKg   :=  TwoItgOwVKg   + ItgOwVKg
ItgFirstNsd  := TwoItgFirstNsd + ItgFirstNsd
ItgLastNsd   := TwoItgLastNsd  + ItgLastNsd
ItgFirstNsdKg  := TwoItgFirstNsdKg + ItgFirstNsdKg
ItgLastNsdKg   := TwoItgLastNsdKg  + ItgLastNsdKg
TwoItgRaz      := TwoItgNorm- TwoItgFakt
TwoItgRazKg    := TwoItgNormKg- TwoItgFaktKg
end.
.Fields
NameItg2
TwoItgOw TwoItgFirstNsd
TwoItgVidt
TwoEntItgVidt
TwoItgNorm   TwoItgFakt
TwoItgSdant TwoItgOwV TwoItgLastNsd
if(TwoItgRaz>=0,TwoItgRaz,0)
if(TwoItgRaz>=0,0,TwoItgRaz)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin

AllItgVidt      := AllItgVidt      +  ItgVidt
AllItgVidtKg    := AllItgVidtKg    +  ItgVidtKg
AllEntItgVidt   := AllEntItgVidt   +  EntItgVidt
AllEntItgVidtKg := AllEntItgVidtKg +  EntItgVidtKg
AllItgOw      :=  AllItgOw      + ItgOw
AllItgOwKg    :=  AllItgOwKg    + ItgOwKg
AllItgNorm    :=  AllItgNorm    + ItgNorm
AllItgFakt    :=  AllItgFakt    + ItgFakt
AllItgNormKg  :=  AllItgNormKg  + ItgNormKg
AllItgFaktKg  :=  AllItgFaktKg  + ItgFaktKg
AllItgRaz     :=  AllItgRaz     + ItgRaz
AllItgRazKg   :=  AllItgRazKg   + ItgRazKg
AllItgSdant   :=  AllItgSdant   + ItgSdant
AllItgSdantKg :=  AllItgSdantKg + ItgSdantKg
AllItgOwV     :=  AllItgOwV     + ItgOwV
AllItgOwVKg   :=  AllItgOwVKg   + ItgOwVKg
AllItgFirstNsd  := AllItgFirstNsd + ItgFirstNsd
AllItgLastNsd   := AllItgLastNsd  + ItgLastNsd
AllItgFirstNsdKg  := AllItgFirstNsdKg + ItgFirstNsdKg
AllItgLastNsdKg   := AllItgLastNsdKg  + ItgLastNsdKg
ItgRaz        := ItgNorm- ItgFakt
ItgRazKg      := ItgNormKg- ItgFaktKg
end.
.Fields
NameItg3
ItgOwKg ItgFirstNsdKg
ItgVidtKg
EntItgVidtKg
ItgNormKg   ItgFaktKg
ItgSdantKg ItgOwVKg ItgLastNsdKg
if(ItgRazKg>=0,ItgRazKg,0)
if(ItgRazKg>=0,0,ItgRazKg)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@(ª£) &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin
WolItgVidt      := AllItgVidt      +  WolItgVidt
WolItgVidtKg    := AllItgVidtKg    +  WolItgVidtKg
WolEntItgVidt   := AllEntItgVidt   +  WolEntItgVidt
WolEntItgVidtKg := AllEntItgVidtKg +  WolEntItgVidtKg
WolItgOw      :=  AllItgOw      + WolItgOw
WolItgOwKg    :=  AllItgOwKg    + WolItgOwKg
WolItgNorm    :=  AllItgNorm    + WolItgNorm
WolItgFakt    :=  AllItgFakt    + WolItgFakt
WolItgNormKg  :=  AllItgNormKg  + WolItgNormKg
WolItgFaktKg  :=  AllItgFaktKg  + WolItgFaktKg
WolItgSdant   :=  AllItgSdant   + WolItgSdant
WolItgSdantKg :=  AllItgSdantKg   + WolItgSdantKg
WolItgOwV     :=  AllItgOwV     + WolItgOwV
WolItgOwVKg   :=  AllItgOwVKg   + WolItgOwVKg
WolItgFirstNsd  := AllItgFirstNsd + WolItgFirstNsd
WolItgLastNsd   := AllItgLastNsd  + WolItgLastNsd
WolItgFirstNsdKg  := AllItgFirstNsdKg + WolItgFirstNsdKg
WolItgLastNsdKg   := AllItgLastNsdKg  + WolItgLastNsdKg
AllItgRaz     :=  AllItgNorm   - AllItgFakt
AllItgRazKg   :=  AllItgNormKg - AllItgFaktKg
WolItgRaz     :=  AllItgRaz     + WolItgRaz
WolItgRazKg   :=  AllItgRazKg    + WolItgRazKg
end.
.Fields
NameItg4
AllItgOwKg AllItgFirstNsdKg
AllItgVidtKg
AllEntItgVidtKg
AllItgNormKg   AllItgFaktKg
AllItgSdantKg AllItgOwVKg AllItgLastNsdKg
if(AllItgRazKg>=0,AllItgRazKg,0)
if(AllItgRazKg>=0,0,AllItgRazKg)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@(ª£) &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.Fields
WolItgOwKg  WolItgFirstNsdKg
WolItgVidtKg
WolEntItgVidtKg
WolItgNormKg   WolItgFaktKg
WolItgSdantKg  WolItgOwVKg WolItgLastNsdKg
if(WolItgRazKg>=0,WolItgRazKg,0)
if(WolItgRazKg>=0,0,WolItgRazKg)
.endfields
 ˆâ®£® ¯®   ¯à¥¤¯à¨ïâ¨î          (ª£) &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.endform


.linkform 'Ved_Gsm_08' prototype is 'Ved_Gsm'
.NameInList  '„¢¨¦¥­¨¥ ƒ‘Œ (¨â®£®¢®¥)'
.group 'Ž¡é¨¥ á¢¥¤¥­¨ï ¯® ƒ‘Œ'
.defo Landscape
.var
FirstOw        :double
FirstOwkg      :double
LastOw         :double
LastOwKg       :double
FirstNsd       :double
FirstNsdKg     :double
LastNsd        :double
LastNsdKg      :double

PutItgVidt      :double
PutItgVidtKg    :double
PutEntItgVidt      :double
PutEntItgVidtKg    :double
PutItgOw      :double
PutItgOwKg    :double
PutItgNorm    :double
PutItgFakt    :double
PutItgNormKg  :double
PutItgFaktKg  :double
PutItgRaz     :double
PutItgRazKg   :double
PutItgSdant   :double
PutItgSdantKg :double
PutItgOwv     :double
PutItgOwvKg   :double
PutItgFirstNsd   :double
PutItgLastNsd    :double
PutItgFirstNsdKg   :double
PutItgLastNsdKg    :double

OneItgVidt      :double
OneItgVidtKg    :double
OneEntItgVidt      :double
OneEntItgVidtKg    :double
OneItgOw      :double
OneItgOwKg    :double
OneItgNorm    :double
OneItgFakt    :double
OneItgNormKg  :double
OneItgFaktKg  :double
OneItgRaz     :double
OneItgRazKg   :double
OneItgSdant   :double
OneItgSdantKg :double
OneItgOwv     :double
OneItgOwvKg   :double
OneItgFirstNsd   :double
OneItgLastNsd    :double
OneItgFirstNsdKg   :double
OneItgLastNsdKg    :double

TwoItgVidt      :double
TwoItgVidtKg    :double
TwoEntItgVidt      :double
TwoEntItgVidtKg    :double
TwoItgOw      :double
TwoItgOwKg    :double
TwoItgNorm    :double
TwoItgFakt    :double
TwoItgNormKg  :double
TwoItgFaktKg  :double
TwoItgRaz     :double
TwoItgRazKg   :double
TwoItgSdant   :double
TwoItgSdantKg :double
TwoItgOwv     :double
TwoItgOwvKg   :double
TwoItgFirstNsd   :double
TwoItgLastNsd    :double
TwoItgFirstNsdKg   :double
TwoItgLastNsdKg    :double

ItgVidt      :double
ItgVidtKg    :double
EntItgVidt      :double
EntItgVidtKg    :double
ItgOw      :double
ItgOwKg    :double
ItgNorm    :double
ItgFakt    :double
ItgNormKg  :double
ItgFaktKg  :double
ItgRaz     :double
ItgRazKg   :double
ItgSdant   :double
ItgSdantKg :double
ItgOwV     :double
ItgOwVKg   :double
ItgFirstNsd   :double
ItgLastNsd    :double
ItgFirstNsdKg   :double
ItgLastNsdKg    :double

AllItgVidt      :double
AllItgVidtKg    :double
AllEntItgVidt      :double
AllEntItgVidtKg    :double
AllItgOw      :double
AllItgOwKg    :double
AllItgNorm    :double
AllItgFakt    :double
AllItgNormKg  :double
AllItgFaktKg  :double
AllItgRaz     :double
AllItgRazKg   :double
AllItgSdant   :double
AllItgSdantKg :double
AllItgOwV     :double
AllItgOwVKg   :double
AllItgFirstNsd   :double
AllItgLastNsd    :double
AllItgFirstNsdKg   :double
AllItgLastNsdKg    :double


WolItgVidt      :double
WolItgVidtKg    :double
WolEntItgVidt      :double
WolEntItgVidtKg    :double
WolItgOw      :double
WolItgOwKg    :double
WolItgNorm    :double
WolItgFakt    :double
WolItgNormKg  :double
WolItgFaktKg  :double
WolItgRaz     :double
WolItgRazKg   :double
WolItgSdant   :double
WolItgSdantKg :double
WolItgOwV     :double
WolItgOwVKg   :double
WolItgFirstNsd   :double
WolItgLastNsd    :double
WolItgFirstNsdKg   :double
WolItgLastNsdKg    :double
Name_ItgFrm      :string

.endvar
.fields
 FiltName
 TipRas
 BegDate  EndDate
 NaimPred MarkaGsm dat
 Month
! podraz
! Marka  Edin
! Data  NomPutLst GarNom
! if(Statpl=0,0,Ow)
! if(Statpl=0,FirstNsd,0)
! RasVidt
! EntRasVidt
! BestToplivoNorm  BestTopliviFakt
! Sdant
! if(Statpl=0,0,OwV)
! if(Statpl=0,LastNsd,0)
! if(Plus_Minus>=0,Plus_Minus,0)
! if(Plus_Minus <0,0,Plus_Minus)
.endfields
.begin
WolItgVidt      := 0
WolItgVidtKg    := 0
WolEntItgVidt   := 0
WolEntItgVidtKg := 0
WolItgOw      := 0
WolItgOwkG    := 0
WolItgNorm    := 0
WolItgFakt    := 0
WolItgNormKg  := 0
WolItgFaktKg  := 0
WolItgRaz     := 0
WolItgRazKG   := 0
WolItgSdant   := 0
WolItgSdantKg := 0
WolItgOwV     :=0
WolItgOwVKg   :=0
WolItgFirstNsd   :=0
WolItgLastNsd    :=0
WolItgFirstNsdKg   :=0
WolItgLastNsdKg    :=0
end.
.{
^
.}
                         ‘¢¥¤¥­¨ï ® ¯à¨å®¤¥ £®àîç¥£®
                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    ¯® ¯ãâ¥¢ë¬ «¨áâ ¬ §  ¯¥à¨®¤ á  @@@@@@@@@@@@@@@@@@@@@ ¯®   @@@@@@@@@@@@@@@@@@@@@
                     @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               @~@@@@@@@@@@@@@@@@@@
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³                   ³               ³  Žáâ â®ª ­  ­ ç.    ³      à¨å®¤         ³            áå®¤               ³   Žáâ â®ª ­         ³     ¥§ã«ìâ â       ³
³    à¨§­ ª        ³     ’®¯«¨¢®   ³        ¤ âã         ³                     ³                                ³  ª®­¥ç­ãî ¤ âã      ³                     ³
³    £àã¯¯¨à®¢ª¨    ³               ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ³
³                   ³               ³ ‚ ¡ ª å  ³® ­¥á¤ ­.³‘® áª« ¤  ³ ˆ§ ¤àã£¨å³® ­®à¬¥  ³  ” ªâ.   ³ ‘¤ ­® ­  ³  ‚ ¡ ª å ³ ¥ á¤ ­. ³ ª®­®¬¨ï ³¥à¥à áå®¤³
³                   ³               ³          ³ ¯ãâ¥¢.   ³          ³ ¨áâ®ç­¨ª.³          ³ à áå®¤   ³ áª« ¤    ³          ³ ¯ãâ¥¢ë¬  ³          ³          ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ
.{
.begin
AllItgVidt      := 0
AllItgVidtKg    := 0
AllEntItgVidt   := 0
AllEntItgVidtKg := 0
AllItgOw      := 0
AllItgOwKg    := 0
AllItgNorm    := 0
AllItgFakt    := 0
AllItgNormKg  := 0
AllItgFaktKg  := 0
AllItgRaz     := 0
AllItgRazKg   := 0
AllItgSdant   := 0
AllItgSdantKg := 0
AllItgOwV     :=0
AllItgOwVKg   :=0
AllItgFirstNsd   :=0
AllItgLastNsd    :=0
AllItgFirstNsdKg   :=0
AllItgLastNsdKg    :=0
end.
.{
.begin
ItgVidt      := 0
ItgVidtKg    := 0
EntItgVidt   := 0
EntItgVidtKg := 0
ItgOw      := 0
ItgOwKg    := 0
ItgNorm    := 0
ItgFakt    := 0
ItgNormKg  := 0
ItgFaktKg  := 0
ItgRaz     := 0
ItgRazKg   := 0
ItgSdant   := 0
ItgSdantKg := 0
ItgOwV     :=0
ItgOwVKg   :=0
ItgFirstNsd   :=0
ItgLastNsd    :=0
ItgFirstNsdKg   :=0
ItgLastNsdKg    :=0
end.
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
!ÿ       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
Name_ItgFrm := Podraz
TwoItgVidt      := 0
TwoItgVidtKg    := 0
TwoEntItgVidt   := 0
TwoEntItgVidtKg := 0
TwoItgOw      := 0
TwoItgOwKg    := 0
TwoItgNorm    := 0
TwoItgFakt    := 0
TwoItgNormKg  := 0
TwoItgFaktKg  := 0
TwoItgRaz     := 0
TwoItgRazKg   := 0
TwoItgSdant   := 0
TwoItgSdantKg := 0
TwoItgOwV     := 0
TwoItgOwVKg   := 0
TwoItgFirstNsd   :=0
TwoItgLastNsd    :=0
TwoItgFirstNsdKg   :=0
TwoItgLastNsdKg    :=0
end.
.{
.begin
OneItgVidt      := 0
OneItgVidtKg    := 0
OneEntItgVidt   := 0
OneEntItgVidtKg := 0
OneItgOw      := 0
OneItgOwKg    := 0
OneItgNorm    := 0
OneItgFakt    := 0
OneItgNormKg  := 0
OneItgFaktKg  := 0
OneItgRaz     := 0
OneItgRazKg   := 0
OneItgSdant   := 0
OneItgSdantKg := 0
OneItgOwV     := 0
OneItgOwVKg   := 0
OneItgFirstNsd   :=0
OneItgLastNsd    :=0
OneItgFirstNsdKg   :=0
OneItgLastNsdKg    :=0
!¢§ïâì ®áâ â®ª ­  ­ ç «® ¯¥à¨®¤  ¯® ¯¥à¢®¬ã ¯ãâ¥¢®¬ã ¤«ï ’‘
if Statpl=0
{
   OneItgFirstNsd   := Ow
   OneItgFirstNsdKg := OwKg
}
else
{
   OneItgOw   := Ow
   OneItgOwKg := OwKg
}
end.
!   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.begin
PutItgVidt      := 0
PutItgVidtKg    := 0
PutEntItgVidt   := 0
PutEntItgVidtKg := 0
PutItgOw        := 0
PutItgOwKg      := 0
PutItgNorm      := 0
PutItgFakt      := 0
PutItgNormKg    := 0
PutItgFaktKg    := 0
PutItgRaz       := 0
PutItgRazKg     := 0
PutItgSdant     := 0
PutItgSdantKg   := 0
PutItgOwV       := 0
PutItgOwVKg     := 0
PutItgFirstNsd   :=0
PutItgLastNsd    :=0
PutItgFirstNsdKg   :=0
PutItgLastNsdKg    :=0
end.
.{
.[h OverWrite Skip
.]h
.begin
PutItgVidt      := PutItgVidt      +  RasVidt
PutItgVidtKg    := PutItgVidtKg    +  RasVidtKg
PutEntItgVidt   := PutEntItgVidt   +  EntRasVidt
PutEntItgVidtKg := PutEntItgVidtKg +  EntRasVidtKg
PutItgNorm    :=  PutItgNorm    + BestToplivoNorm
PutItgFakt    :=  PutItgFakt    + BestTopliviFakt
PutItgNormKg  :=  PutItgNormKg  + BestToplivoNormKg
PutItgFaktKg  :=  PutItgFaktKg  + BestTopliviFaktKg
PutItgSdant   :=  PutItgSdant   + Sdant
PutItgSdantKg   :=  PutItgSdantKg   + SdantKg
if Statpl=0
{
! ­  ª®­¥æ ®âç¥â­®£® ¯¥à¨®¤  ¯® ¯®á«¥¤­¥¬ã ¯ãâ¥¢®¬ã
  LastNsd         := OwV
  LastNsdKg       := OwVKg
  OneItgLastNsd   := OwV
  OneItgLastNsdKg :=OwVKg
}
else
{
  OneItgOwV :=  OwV
  OneItgOwVKg := OwVKg
}
end.
! @@@@@@@@@@  @@@@@@@@ @@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&  &'&&&#&.&&
.[f OverWrite
.]f
.}
.begin
OneItgVidt      := PutItgVidt      +  OneItgVidt
OneItgVidtKg    := PutItgVidtKg    +  OneItgVidtKg
OneEntItgVidt   := PutEntItgVidt   +  OneEntItgVidt
OneEntItgVidtKg := PutEntItgVidtKg +  OneEntItgVidtKg
OneItgNorm    :=  PutItgNorm    + OneItgNorm
OneItgFakt    :=  PutItgFakt    + OneItgFakt
OneItgNormKg  :=  PutItgNormKg  + OneItgNormKg
OneItgFaktKg  :=  PutItgFaktKg  + OneItgFaktKg
OneItgSdant   :=  PutItgSdant   + OneItgSdant
OneItgSdantKg   :=  PutItgSdantKg   + OneItgSdantKg
PutItgRaz      := PutItgNorm  - PutItgFakt
PutItgRazKg    := putItgNormKg- PutItgFaktKg
end.
.Fields
!NamePutLst
!PutItgOw PutItgFirstNsd
!PutItgVidt
!PutEntItgVidt
!PutItgNorm   PutItgFakt
!PutItgSdant PutItgOwV  PutItgLastNsd
!if(PutItgRaz>=0,PutItgRaz,0)
!if(PutItgRaz>=0,0,PutItgRaz)
.endfields
! ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin
TwoItgVidt      := TwoItgVidt      +  OneItgVidt
TwoItgVidtKg    := TwoItgVidtKg    +  OneItgVidtKg
TwoEntItgVidt   := TwoEntItgVidt   +  OneEntItgVidt
TwoEntItgVidtKg := TwoEntItgVidtKg +  OneEntItgVidtKg
TwoItgOw      :=  TwoItgOw      + OneItgOw
TwoItgOwKg    :=  TwoItgOwKg    + OneItgOwKg
TwoItgNorm    :=  TwoItgNorm    + OneItgNorm
TwoItgFakt    :=  TwoItgFakt    + OneItgFakt
TwoItgNormKg  :=  TwoItgNormKg  + OneItgNormKg
TwoItgFaktKg  :=  TwoItgFaktKg  + OneItgFaktKg
TwoItgRaz     :=  TwoItgRaz     + OneItgRaz
TwoItgRazKg   :=  TwoItgRazKg   + OneItgRazKg
TwoItgSdant   :=  TwoItgSdant   + OneItgSdant
TwoItgSdantKg :=  TwoItgSdantKg + OneItgSdantKg
TwoItgOwV     :=  TwoItgOwV     + OneItgOwV
TwoItgOwVKg   :=  TwoItgOwVKg   + OneItgOwVKg
TwoItgFirstNsd  := TwoItgFirstNsd + OneItgFirstNsd
TwoItgLastNsd   := TwoItgLastNsd  + OneItgLastNsd
TwoItgFirstNsdKg  := TwoItgFirstNsdKg + OneItgFirstNsdKg
TwoItgLastNsdKg   := TwoItgLastNsdKg  + OneItgLastNsdKg
OneItgRaz      := OneitgNorm   - OneItgFakt
OneItgRazKg    := OneitgNormKg - OneItgFaktKg
end.
.Fields
!NameItg1
!OneItgOw OneItgFirstNsd
!OneItgVidt
!OneEntItgVidt
!OneItgNorm   OneItgFakt
!OneItgSdant OneItgOwV OneItgLastNsd
!if(OneItgRaz>=0,OneItgRaz,0)
!if(OneItgRaz>=0,0,OneItgRaz)
.endfields
!ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin
ItgVidt      := TwoItgVidt      +  ItgVidt
ItgVidtKg    := TwoItgVidtKg    +  ItgVidtKg
EntItgVidt   := TwoEntItgVidt   +  EntItgVidt
EntItgVidtKg := TwoEntItgVidtKg +  EntItgVidtKg
ItgOw      :=  TwoItgOw      + ItgOw
ItgOwKg    :=  TwoItgOwKg    + ItgOwKg
ItgNorm    :=  TwoItgNorm    + ItgNorm
ItgFakt    :=  TwoItgFakt    + ItgFakt
ItgNormKg  :=  TwoItgNormKg  + ItgNormKg
ItgFaktKg  :=  TwoItgFaktKg  + ItgFaktKg
ItgRaz     :=  TwoItgRaz     + ItgRaz
ItgRazKg   :=  TwoItgRazKg   + ItgRazKg
ItgSdant   :=  TwoItgSdant   + ItgSdant
ItgSdantKg :=  TwoItgSdantKg  + ItgSdantKg
ItgOwV     :=  TwoItgOwV     + ItgOwV
ItgOwVKg   :=  TwoItgOwVKg   + ItgOwVKg
ItgFirstNsd  := TwoItgFirstNsd + ItgFirstNsd
ItgLastNsd   := TwoItgLastNsd  + ItgLastNsd
ItgFirstNsdKg  := TwoItgFirstNsdKg + ItgFirstNsdKg
ItgLastNsdKg   := TwoItgLastNsdKg  + ItgLastNsdKg
TwoItgRaz      := TwoItgNorm- TwoItgFakt
TwoItgRazKg    := TwoItgNormKg- TwoItgFaktKg
end.
.Fields
Name_ItgFrm
NameItg2
TwoItgOw TwoItgFirstNsd
TwoItgVidt
TwoEntItgVidt
TwoItgNorm   TwoItgFakt
TwoItgSdant TwoItgOwV TwoItgLastNsd
if(TwoItgRaz>=0,TwoItgRaz,0)
if(TwoItgRaz>=0,0,TwoItgRaz)
.endfields
 @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin

AllItgVidt      := AllItgVidt      +  ItgVidt
AllItgVidtKg    := AllItgVidtKg    +  ItgVidtKg
AllEntItgVidt   := AllEntItgVidt   +  EntItgVidt
AllEntItgVidtKg := AllEntItgVidtKg +  EntItgVidtKg
AllItgOw      :=  AllItgOw      + ItgOw
AllItgOwKg    :=  AllItgOwKg    + ItgOwKg
AllItgNorm    :=  AllItgNorm    + ItgNorm
AllItgFakt    :=  AllItgFakt    + ItgFakt
AllItgNormKg  :=  AllItgNormKg  + ItgNormKg
AllItgFaktKg  :=  AllItgFaktKg  + ItgFaktKg
AllItgRaz     :=  AllItgRaz     + ItgRaz
AllItgRazKg   :=  AllItgRazKg   + ItgRazKg
AllItgSdant   :=  AllItgSdant   + ItgSdant
AllItgSdantKg :=  AllItgSdantKg + ItgSdantKg
AllItgOwV     :=  AllItgOwV     + ItgOwV
AllItgOwVKg   :=  AllItgOwVKg   + ItgOwVKg
AllItgFirstNsd  := AllItgFirstNsd + ItgFirstNsd
AllItgLastNsd   := AllItgLastNsd  + ItgLastNsd
AllItgFirstNsdKg  := AllItgFirstNsdKg + ItgFirstNsdKg
AllItgLastNsdKg   := AllItgLastNsdKg  + ItgLastNsdKg
ItgRaz         := ItgNorm  - ItgFakt
ItgRazKg       := ItgNormKg- ItgFaktKg
end.
.Fields
NameItg3
ItgOwKg ItgFirstNsdKg
ItgVidtKg
EntItgVidtKg
ItgNormKg   ItgFaktKg
ItgSdantKg ItgOwVKg ItgLastNsdKg
if(ItgRazKg>=0,ItgRazKg,0)
if(ItgRazKg>=0,0,ItgRazKg)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@(ª£) &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.begin
WolItgVidt      := AllItgVidt      +  WolItgVidt
WolItgVidtKg    := AllItgVidtKg    +  WolItgVidtKg
WolEntItgVidt   := AllEntItgVidt   +  WolEntItgVidt
WolEntItgVidtKg := AllEntItgVidtKg +  WolEntItgVidtKg
WolItgOw      :=  AllItgOw      + WolItgOw
WolItgOwKg    :=  AllItgOwKg    + WolItgOwKg
WolItgNorm    :=  AllItgNorm    + WolItgNorm
WolItgFakt    :=  AllItgFakt    + WolItgFakt
WolItgNormKg  :=  AllItgNormKg  + WolItgNormKg
WolItgFaktKg  :=  AllItgFaktKg  + WolItgFaktKg
WolItgSdant   :=  AllItgSdant   + WolItgSdant
WolItgSdantKg :=  AllItgSdantKg   + WolItgSdantKg
WolItgOwV     :=  AllItgOwV     + WolItgOwV
WolItgOwVKg   :=  AllItgOwVKg   + WolItgOwVKg
WolItgFirstNsd  := AllItgFirstNsd + WolItgFirstNsd
WolItgLastNsd   := AllItgLastNsd  + WolItgLastNsd
WolItgFirstNsdKg  := AllItgFirstNsdKg + WolItgFirstNsdKg
WolItgLastNsdKg   := AllItgLastNsdKg  + WolItgLastNsdKg
AllItgRaz     :=  AllItgNorm - AllItgFakt
AllItgRazKg   :=  AllItgNormKg - AllItgFaktKg
WolItgRaz     :=  AllItgRaz     + WolItgRaz
WolItgRazKg   :=  AllItgRazKg    + WolItgRazKg
end.
.Fields
NameItg4
AllItgOwKg AllItgFirstNsdKg
AllItgVidtKg
AllEntItgVidtKg
AllItgNormKg   AllItgFaktKg
AllItgSdantKg AllItgOwVKg AllItgLastNsdKg
if(AllItgRazKg>=0,AllItgRazKg,0)
if(AllItgRazKg>=0,0,AllItgRazKg)
.endfields
 ˆâ®£® ¯®   @@@@@@@@@@@@@@@@@@@@@(ª£) &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.}
.Fields
WolItgOwKg  WolItgFirstNsdKg
WolItgVidtKg
WolEntItgVidtKg
WolItgNormKg   WolItgFaktKg
WolItgSdantKg  WolItgOwVKg WolItgLastNsdKg
if(WolItgRazKg>=0,WolItgRazKg,0)
if(WolItgRazKg>=0,0,WolItgRazKg)
.endfields
 ˆâ®£® ¯®   ¯à¥¤¯à¨ïâ¨î          (ª£) &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&& &'&&&#&.&&
.endform