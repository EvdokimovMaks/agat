//------------------------------------------------------------------------------
//                                                      (c) ╙╝Ю╞╝Ю═Ф╗О ┐═╚═╙Б╗╙═
// ┐═╚═╙Б╗╙═ 5.00 - ▌БГ╔БК ╙╝╜БЦЮ═ ╚╝ё╗АБ╗╙╗
// ░╔╔АБЮ ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒
//------------------------------------------------------------------------------


#doc
░╔╔АБЮ ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒
#end
.form RepDONal
.hide
.var
  pPlatType: word;
!  MrkKatNalog: TPtr;
  IndexNo: longint;
.endvar
.fields
  MrkKatNalog: #TSurrPtr
  d1: date
  d2: date
  cAkciz: comp
  cNDS: comp
// MyOrg
  MyOrgName    :string
  MyOrgAddr    :string
  MyOrgTel     :string
  MyOrgINN     :string
  MyOrgOKONH   :string
  MyOrgOKPO    :string
  MyOrgSchet   :string
  MyOrgBank    :string
  MyOrgGorod   :string
  MyOrgBankRemark:string
  MyOrgBankAddr:string
  MyOrgBankMFO:string
  MyOrgBankRKC:string
  MyOrgBankSchRKC:string
  MyOrgBankSchPlatDoc:string
// DO
  ScType: longint   // 1 - └▌, 2 - ▒■
  ScNRec: comp
  ScNDoc: string
  ScdDoc: date
  ScComment: string
// Org
  OrgNRec    :comp
  OrgName    :string
  OrgAddr    :string
  OrgTel     :string
  OrgINN     :string
  OrgOKONH   :string
  OrgOKPO    :string
  OrgSchet   :string
  OrgBank    :string
  OrgGorod   :string
  OrgBankRemark:string
  OrgBankAddr:string
  OrgBankMFO:string
  OrgBankRKC:string
  OrgBankSchRKC:string
  OrgBankSchPlatDoc:string
// MC, ╞╝╖╗Ф╗О ╒ ╜═╙╚═╓╜╝╘
  MCNRec: comp
  MCName: string
  MCBarCode: string
  MCOKDP: string
  MCOtpEd: string
  MCKol: double
  MCPrice: double
  MCPrMC: word
  MCParams: word
                // +1 - ╓═╒═╚.АКЮЛ╔
                // +2 - ╜╔╞╝╓═╙Ф.
                // +4 - Б═Ю═
  MCSchFactdDoc: date
  MCSchFactNDoc: string
// SpSopr ╗ KatSopr
  MCSpSoprNRec: comp
  MCKatSoprNRec: comp
  MCKatSoprNDoc: string
  MCKatSoprdDoc: date
  MCKatSoprdOtgr: date
  MCKatSoprVhodNal: word  // 1 - ╒Е╝╓ОБ, 2 - ╜╔ ╒Е╝╓ОБ
// █═╚╝ё╗ ╞╝ ╞╝╖╗Ф╗╗
  MCSpDocNalNRec: comp
  MCNalNRec: comp
  MCNalName: string
  MCNalProc: double
  MCNalSumma: double
// SpSopHoz
  MCSpSHNRec: comp
  MCSpSHSumma: double
  MCSHNRec: comp
  MCSHdDoc: date
  MCPlatType: word   // SoprHoz.TipDoc
  MCplatTypeTxt: string
  MCPlatNRec: comp   // PlPor
  MCPlatdDoc: date
  MCPlatNDoc: string
.endfields
  MrkKatNalog: TPtr ^
  d1: date ^
  d2: date ^
  cAkciz: comp ^
  cNDS: comp ^
// MyOrg
  MyOrgName    :string ^
  MyOrgAddr    :string ^
  MyOrgTel     :string ^
  MyOrgINN     :string ^
  MyOrgOKONH   :string ^
  MyOrgOKPO    :string ^
  MyOrgSchet   :string ^
  MyOrgBank    :string ^
  MyOrgGorod   :string ^
  MyOrgBankRemark:string ^
  MyOrgBankAddr:string ^
  MyOrgBankMFO:string ^
  MyOrgBankRKC:string ^
  MyOrgBankSchRKC:string ^
  MyOrgBankSchPlatDoc:string ^
!.begin
!  MrkKatNalog := InitMarker('MrkKatNalog', 8, 10, 10);
!end.
{ RepDONal_DO
.{CheckEnter RepDONal_DO
// DO
  ScType: longint ^
  ScNRec: comp ^
  ScNDoc: string ^
  ScdDoc: date ^
  ScComment: string ^
// Org
  OrgNRec    :comp ^
  OrgName    :string ^
  OrgAddr    :string ^
  OrgTel     :string ^
  OrgINN     :string ^
  OrgOKONH   :string ^
  OrgOKPO    :string ^
  OrgSchet   :string ^
  OrgBank    :string ^
  OrgGorod   :string ^
  OrgBankRemark:string ^
  OrgBankAddr:string ^
  OrgBankMFO:string ^
  OrgBankRKC:string ^
  OrgBankSchRKC:string ^
  OrgBankSchPlatDoc:string ^
{ RepDONal_MC
.{CheckEnter RepDONal_MC
// MC, ╞╝╖╗Ф╗О ╒ ╜═╙╚═╓╜╝╘
  MCNRec: comp ^
  MCName: string ^
  MCBarCode: string ^
  MCOKDP: string ^
  MCOtpEd: string ^
  MCKol: double ^
  MCPrice: double ^
  MCPrMC: word ^
  MCParams: word ^
  MCSchFactdDoc: date ^
  MCSchFactNDoc: string ^
// SpSopr ╗ KatSopr
  MCSpSoprNRec: comp ^
  MCKatSoprNRec: comp ^
  MCKatSoprNDoc: string ^
  MCKatSoprdDoc: date ^
  MCKatSoprdOtgr: date ^
  MCKatSoprVhodNal: word ^
{ RepDONal_MCNal
.{CheckEnter RepDONal_MCNal
// █═╚╝ё╗ ╞╝ ╞╝╖╗Ф╗╗
  MCSpDocNalNRec: comp ^
  MCNalNRec: comp ^
  MCNalName: string ^
  MCNalProc: double ^
  MCNalSumma: double ^
.} // RepDONal_MCNal
} RepDONal_MCNal
.{CheckEnter RepDONal_MCSpSH
// SpSopHoz
  MCSpSHNRec: comp ^
  MCSpSHSumma: double ^
  MCSHNRec: comp ^
  MCSHdDoc: date ^
  MCPlatType: word ^
  MCplatTypeTxt: string ^
  MCPlatNRec: comp ^
  MCPlatdDoc: date ^
  MCPlatNDoc: string ^
.begin
  if (MCPlatType = 2 or MCPlatType = 11) then // ╒Е╝╓ОИ╗╘ ╞╚═Б╔╕ ╗╚╗ ╞╚═Б.БЮ╔║╝╒═╜╗╔
    pPlatType := 1
  else if (MCPlatType = 70) then
    pPlatType := 2
  else pPlatType := 0;
end.
.} // RepDONal_MCSpSH
} RepDONal_MCSpSH
.} // RepDONal_MC
} RepDONal_MC
.} // RepDONal_DO
} RepDONal_DO
!.begin
!  DoneMarker(MrkKatNalog, 'MrkKatNalog');
!end.
.endform

#doc
░╔╔АБЮ ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒ (─4)
#end
.linkform RepDONal_02 prototype RepDONal
.nameinlist '░╔╔АБЮ ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒ (─4)'
.group '░╔╔АБЮК ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒'
.defo landscape
.p 55
.fields
  CommonFormHeader
  DateToStr(d1, 'DD/MM/YYYY')
  DateToStr(d2, 'DD/MM/YYYY')

  CommonFormHeader
  DateToStr(d1, 'DD/MM/YYYY')
  DateToStr(d2, 'DD/MM/YYYY')
.endfields
.[h skip
Ъ│^Ъ│
Ъ┬     ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@                                                                                  ▀╗АБ @NP@Ъ┬
Ъ≤иммммммяммммммммммямммммммммммммммммямммммммммяммммммммммяммммммяммммммммммямммммммммммммммяммммммммммямммммммммммяммммммммммммммяммммммммммммммяммммммммммммммяммммммммммяммммммммммммммяммммммяммммммммммяммммммямммммммммм╩Ъ≤
Ъ≥╨  1   Ё    2     Ё        3        Ё    4    Ё    5     Ё  6   Ё    7     Ё       8       Ё     9    Ё    10     Ё      11      Ё      12      Ё      13      Ё    14    Ё      15      Ё  16  Ё    17    Ё  18  Ё    19    ╨Ъ≥
Ъ≤гддддддеддддддддддедддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.]h
Ъ│^Ъ│
Ъ┬                            ▒┌┘└┘█┬÷ ▌│ ▌▓┐░⌠┤┼┘ ▐▌└─┼√┬┤█⌡∙ ▓▌┌─░▌┌, █┘▌│∙▌└┬▄⌡┘ └▀÷ ┬▒≈┬▒▀┘█┬÷ ┬ ⌠▐▀─▓⌡ ─┼√┬┤▌┌Ъ┬
Ъ┬                                                   ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@                                    ▀╗АБ    1Ъ┬
Ъ≤имммммммммммммммммямммммммммммммммммямммммммммяммммммммммямммммммммммммммммямммммммммммммммяммммммммммямммммммммммяммммммммммммммямммммммммммммммммммммммммммммяммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╩Ъ≤
Ъ≤╨  ▒Г╔Б-Д═╙БЦЮ═   Ё  █═╗╛╔╜╝╒═╜╗╔   Ё ┘╓╗╜╗Ф═ Ё┼╝╚╗Г╔АБ╒╝Ё     ▓╝╒═Ю╜╝-    Ё▐╝╙Ц╞═Б╔╚Л ╗╚╗ Ё   └═Б═   Ё ▌Б╞ЦА╙╜═О Ё▒Ц╛╛═ ╞╝ АГ╔БЦЁ ╒ Б╝╛ Г╗А╚╔ (╒ ЮЦ║.╗ ╙╝╞.): Ё                 ▌Б╛╔Б╙═ ╝║ ╝╞╚═Б╔ АГ╔Б╝╒                    ╨Ъ≤
Ъ≤╨    ╗╚╗ ╗╜╝╘     Ё     Б╝╒═Ю╝╒     Ё╗╖╛╔Ю╔╜╗ОЁ  Б╝╒═Ю═  Ё   БЮ═╜А╞╝ЮБ╜═О  Ё   ╒╚═╓╔╚╔Ф    Ё ╝БёЮЦ╖╙╗ Ё   Ф╔╜═    Ё ╒ ЮЦ║. ╗ ╙╝╞.цддддддддддддддбддддддддддддддеддддддддддбддддддддддддддбдддддддддддддддддбддддддддддддддддд╤Ъ≤
Ъ≤╨ ╖═╛╔╜ОНИ╗╘ ╔ё╝  Ё   (╞Ю╝╓Ц╙Ф╗╗)   Ё Б╝╒═Ю═  Ё          Ё    ╜═╙╚═╓╜═О    Ё ╓═╒═╚ЛГ╔А╙╝ё╝ Ё  Б╝╒═Ю═  Ё А ЦГ╔Б╝╛  Ё              Ё              Ё              Ё   └═Б═   Ё ▒Ц╛╛═ ╝╞╚═БК Ё    ▐╚═Б╔╕╜╝╔    Ё ┤═Г╔Б ╒╖═╗╛╜КЕ  ╨Ъ≤
Ъ≤╨    ╓╝╙Ц╛╔╜Б     Ё                 Ё         Ё          цддддддбдддддддддд╢     АКЮЛО     Ё          Ё ═╙Ф╗╖═ ╗  Ё              Ё              Ё              Ё  ╝╞╚═БК  Ё ╒ ЮЦ║. ╗ ╙╝╞.Ё    ╞╝ЮЦГ╔╜╗╔    Ё   БЮ╔║╝╒═╜╗╘    ╨Ъ≤
Ъ≤гддддддбдддддддддд╢                 Ё         Ё          Ё      Ё          Ё               Ё          Ё    █└▒    Ё              Ё    ═╙Ф╗╖     Ё      █└▒     Ё          Ё              цддддддбддддддддддеддддддбдддддддддд╤Ъ≤
Ъ≤╨█╝╛╔Ю Ё   └═Б═   Ё                 Ё         Ё          Ё█╝╛╔Ю Ё   └═Б═   Ё               Ё          Ё           Ё              Ё              Ё              Ё          Ё              Ё█╝╛╔Ю Ё   └═Б═   Ё█╝╛╔Ю Ё   └═Б═   ╨Ъ≤
Ъ≤╨      Ё ╒К╞╗А╙╗  Ё                 Ё         Ё          Ё      Ё          Ё               Ё          Ё           Ё              Ё              Ё              Ё          Ё              Ё      Ё          Ё      Ё          ╨Ъ≤
Ъ≤гддддддеддддддддддедддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
Ъ≥╨  1   Ё    2     Ё        3        Ё    4    Ё    5     Ё  6   Ё    7     Ё       8       Ё     9    Ё    10     Ё      11      Ё      12      Ё      13      Ё    14    Ё      15      Ё  16  Ё    17    Ё  18  Ё    19    ╨Ъ≥
Ъ≤гддддддеддддддддддедддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.var
  WasWrite: boolean
  PriceNoNal: double
  SumNal: double
  pScNDoc: string
  pScdDoc: string
  pMCName: string
  pMCOtpEd: string
  LastMC: comp
  LastMCParams: longint
  ChapterName: string

  Sum10: double
  Sum11: double
  Sum12: double
  Sum13: double
!  iSum10: double
  iSum11: double
  iSum12: double
  iSum13: double
  iSum15: double
.endvar
.{CheckEnter RepDONal_DO
.begin
  pScNDoc := if (ScType = 0, '║╔╖ └▌', if (ScType = 2, '▒■:', '└▌:')+ScNDoc);
  pScdDoc := if(longint(ScdDoc)=0,'',DateToStr(ScdDoc,'DD/MM/YYYY'));
  LastMC := 0;
  LastMCParams := -1;
!  iSum10 := 0.0;
  iSum11 := 0.0;
  iSum12 := 0.0;
  iSum13 := 0.0;
  iSum15 := 0.0;
end.
.{CheckEnter RepDONal_MC
.begin
  if (LastMC <> MCNRec) then {
    LastMC := MCNRec;
    pMCName := MCName;
    pMCOtpEd := MCOtpEd;
  };
  PriceNoNal := MCPrice;
  SumNal := 0.0;
  Sum12 := 0.0;
  Sum13 := 0.0;
  WasWrite := false;
end.
.{CheckEnter RepDONal_MCNal
.begin
  PriceNoNal := PriceNoNal - if(MCKatSoprVhodNal=1,MCNalSumma/MCKol,0.0);
  if (SearchMarker(MrkKatNalog, MCNalNRec, IndexNo)) then
    Sum12 := Sum12 + MCNalSumma
  else
  if (MCNalNRec = cNDS) then
    Sum13 := Sum13 + MCNalSumma;
  SumNal := SumNal + MCNalSumma;
end.
.} // RepDONal_MCNal
.begin
  Sum10 := PriceNoNal+(Sum12+Sum13)/MCKol;
  Sum11 := PriceNoNal*MCKol+SumNal;

!  iSum10 := iSum10 + Sum10;
  iSum11 := iSum11 + Sum11;
  iSum12 := iSum12 + Sum12;
  iSum13 := iSum13 + Sum13;
  if (LastMCParams <> -1 and (LastMCParams and MCParams) = 4) then
    LastMCParams := MCParams
  else
  if (LastMCParams <> -1 and (LastMCParams and MCParams) = 2) then
    LastMCParams := MCParams;
end.
.{?internal; (LastMCParams <> -1 and LastMCParams <> MCParams)
Ъ≤╨      Ё          цдддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.} // internal
.{?internal; (LastMCParams <> MCParams)
.begin
  case (MCParams and 7) of
    0: ChapterName := '▐╝╓═╙Ф.Б╝╒═ЮК ╞╝ ╒╗╓═╛ (А╝║.АКЮЛ╔)';
    1: ChapterName := '▐╝╓═╙Ф.Б╝╒═ЮК ╞╝ ╒╗╓═╛ (╓═╒.АКЮЛ╔)';
    2,3: ChapterName := '█╔╞╝╓═╙Ф╗╖╜К╔ Б╝╒═ЮК';
   else ChapterName := '▓═Ю═ ╗ Б.╞.';
  end;
end.
.fields
  pScNDoc pScdDoc ChapterName
.endfields
Ъ≤╨@~@@@@Ё@@@@@@@@@@ЁЪ┐@@@@@@@@@@@@@@@@@Ъ┐Ё         Ё          Ё      Ё          Ё               Ё          Ё           Ё              Ё              Ё              Ё          Ё              Ё      Ё          Ё      Ё          ╨Ъ≤
.begin
  pScNDoc := '';
  pScdDoc := '';
end.
.} // internal
.{CheckEnter RepDONal_MCSpSH
.{?internal; (not WasWrite)
.fields
  pScNDoc pScdDoc pMCName pMCOtpEd
  MCKol MCKatSoprNDoc if(longint(MCKatSoprdDoc)=0,'',DateToStr(MCKatSoprdDoc,'DD/MM/YYYY')) OrgName
  if(longint(MCKatSoprdOtgr)=0,'',DateToStr(MCKatSoprdOtgr,'DD/MM/YYYY')) Sum10 Sum11 Sum12 Sum13
  if(longint(MCSHdDoc)=0,'',DateToStr(MCSHdDoc,'DD/MM/YYYY')) MCSpSHSumma
  if(pPlatType<>1,'',MCPlatNDoc) if(longint(MCPlatdDoc)=0 or pPlatType<>1,'',DateToStr(MCPlatdDoc,'DD/MM/YYYY')) // ╒Е╝╓ОИ╗╘ ╞╚═Б╔╕
  if(pPlatType<>2,'',MCPlatNDoc) if(longint(MCPlatdDoc)=0 or pPlatType<>2,'',DateToStr(MCPlatdDoc,'DD/MM/YYYY')) // ═╙Б ╒╖═╗╛╝╖═Г╔Б═
.endfields
Ъ≤╨@~@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@Ё@~@@@@@@@Ё&#&&&&.&&&Ё@~@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@Ё@@@@@@@@@@Ё&#&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&&&&&&&&&&&.&&Ё&&&&&&&&&&&.&&Ё@@@@@@@@@@Ё&&&&&&&&&&&.&&Ё@~@@@@Ё@@@@@@@@@@Ё@~@@@@Ё@@@@@@@@@@╨Ъ≤
.} // internal
.{?internal; (WasWrite)
.fields
  if(longint(MCSHdDoc)=0,'',DateToStr(MCSHdDoc,'DD/MM/YYYY')) MCSpSHSumma
  if(pPlatType<>1,'',MCPlatNDoc) if(longint(MCPlatdDoc)=0 or pPlatType<>1,'',DateToStr(MCPlatdDoc,'DD/MM/YYYY')) // ╒Е╝╓ОИ╗╘ ╞╚═Б╔╕
  if(pPlatType<>2,'',MCPlatNDoc) if(longint(MCPlatdDoc)=0 or pPlatType<>2,'',DateToStr(MCPlatdDoc,'DD/MM/YYYY')) // ═╙Б ╒╖═╗╛╝╖═Г╔Б═
.endfields
Ъ≤╨      Ё          Ё                 Ё         Ё          Ё      Ё          Ё               Ё          Ё           Ё              Ё              Ё              Ё@@@@@@@@@@Ё&#&&&&&&&&&.&&Ё@~@@@@Ё@@@@@@@@@@Ё@~@@@@Ё@@@@@@@@@@╨Ъ≤
.} // internal
.begin
  WasWrite := true;
  iSum15 := iSum15 + MCSpSHSumma;
end.
.} // RepDONal_MCSpSH
.{?internal; (not WasWrite)
.fields
  pScNDoc pScdDoc pMCName pMCOtpEd
  MCKol MCKatSoprNDoc if(longint(MCKatSoprdDoc)=0,'',DateToStr(MCKatSoprdDoc,'DD/MM/YYYY')) OrgName
  if(longint(MCKatSoprdOtgr)=0,'',DateToStr(MCKatSoprdOtgr,'DD/MM/YYYY')) Sum10 Sum11 Sum12 Sum13
.endfields
Ъ≤╨@~@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@Ё@~@@@@@@@Ё&#&&&&.&&&Ё@~@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@Ё@@@@@@@@@@Ё&#&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&&&&&&&&&&&.&&Ё&&&&&&&&&&&.&&Ё          Ё              Ё      Ё          Ё      Ё          ╨Ъ≤
.} // internal
.begin
  pScNDoc := '';
  pScdDoc := '';
  LastMCParams := MCParams;
!  pMCName := '';
!  pMCOtpEd := '';
end.
.} // RepDONal_MC
.fields
!  iSum10
  iSum11 iSum12 iSum13 iSum15
.endfields
Ъ≤гддддддаддддддддддадддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
Ъ≥╨ ┬Б╝ё╝ ╞╝ АГ╔БЦ                    Ё    X    Ё    X     Ё  X   Ё    X     Ё       X       Ё     X    Ё     X     Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё    X     Ё&#&&&&&&&&&.&&Ё  X   Ё    X     Ё  X   Ё    X     ╨Ъ≥
Ъ≤гддддддбддддддддддбдддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.[f
Ъ≤хммммммоммммммммммомммммммммммммммммомммммммммоммммммммммоммммммоммммммммммомммммммммммммммоммммммммммомммммммммммоммммммммммммммоммммммммммммммоммммммммммммммоммммммммммоммммммммммммммоммммммоммммммммммоммммммомммммммммм╪Ъ≤
.]f
.} // RepDONal_DO
.endform


#doc
░╔╔АБЮ ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒ (─4) - А╕═БК╘
#end
.linkform RepDONal_03 prototype RepDONal
.nameinlist '░╔╔АБЮ ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒ (─4) - А╕═БК╘'
.group '░╔╔АБЮК ╝БёЮЦ╖╝╙ ╞╝╓═╙Ф╗╖╜КЕ Б╝╒═Ю╝╒'
.defo landscape
.p 55
.fields
  CommonFormHeader
  DateToStr(d1, 'DD/MM/YYYY')
  DateToStr(d2, 'DD/MM/YYYY')

  CommonFormHeader
  DateToStr(d1, 'DD/MM/YYYY')
  DateToStr(d2, 'DD/MM/YYYY')
.endfields
.[h skip
Ъ│^Ъ│
Ъ┬     ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@                                                                                  ▀╗АБ @NP@Ъ┬
Ъ≤иммммммяммммммммммямммммммммммммммммямммммммммяммммммммммяммммммяммммммммммямммммммммммммммяммммммммммямммммммммммяммммммммммммммяммммммммммммммяммммммммммммммяммммммммммяммммммммммммммяммммммяммммммммммяммммммямммммммммм╩Ъ≤
Ъ≥╨  1   Ё    2     Ё        3        Ё    4    Ё    5     Ё  6   Ё    7     Ё       8       Ё     9    Ё    10     Ё      11      Ё      12      Ё      13      Ё    14    Ё      15      Ё  16  Ё    17    Ё  18  Ё    19    ╨Ъ≥
Ъ≤гддддддеддддддддддедддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.]h
Ъ│^Ъ│
Ъ┬                            ▒┌┘└┘█┬÷ ▌│ ▌▓┐░⌠┤┼┘ ▐▌└─┼√┬┤█⌡∙ ▓▌┌─░▌┌, █┘▌│∙▌└┬▄⌡┘ └▀÷ ┬▒≈┬▒▀┘█┬÷ ┬ ⌠▐▀─▓⌡ ─┼√┬┤▌┌Ъ┬
Ъ┬                                                   ╖═ ╞╔Ю╗╝╓ А @@@@@@@@@@ ╞╝ @@@@@@@@@@                                    ▀╗АБ    1Ъ┬
Ъ≤имммммммммммммммммямммммммммммммммммямммммммммяммммммммммямммммммммммммммммямммммммммммммммяммммммммммямммммммммммяммммммммммммммямммммммммммммммммммммммммммммяммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╩Ъ≤
Ъ≤╨  ▒Г╔Б-Д═╙БЦЮ═   Ё  █═╗╛╔╜╝╒═╜╗╔   Ё ┘╓╗╜╗Ф═ Ё┼╝╚╗Г╔АБ╒╝Ё     ▓╝╒═Ю╜╝-    Ё▐╝╙Ц╞═Б╔╚Л ╗╚╗ Ё   └═Б═   Ё ▌Б╞ЦА╙╜═О Ё▒Ц╛╛═ ╞╝ АГ╔БЦЁ ╒ Б╝╛ Г╗А╚╔ (╒ ЮЦ║.╗ ╙╝╞.): Ё                 ▌Б╛╔Б╙═ ╝║ ╝╞╚═Б╔ АГ╔Б╝╒                    ╨Ъ≤
Ъ≤╨    ╗╚╗ ╗╜╝╘     Ё     Б╝╒═Ю╝╒     Ё╗╖╛╔Ю╔╜╗ОЁ  Б╝╒═Ю═  Ё   БЮ═╜А╞╝ЮБ╜═О  Ё   ╒╚═╓╔╚╔Ф    Ё ╝БёЮЦ╖╙╗ Ё   Ф╔╜═    Ё ╒ ЮЦ║. ╗ ╙╝╞.цддддддддддддддбддддддддддддддеддддддддддбддддддддддддддбдддддддддддддддддбддддддддддддддддд╤Ъ≤
Ъ≤╨ ╖═╛╔╜ОНИ╗╘ ╔ё╝  Ё   (╞Ю╝╓Ц╙Ф╗╗)   Ё Б╝╒═Ю═  Ё          Ё    ╜═╙╚═╓╜═О    Ё ╓═╒═╚ЛГ╔А╙╝ё╝ Ё  Б╝╒═Ю═  Ё А ЦГ╔Б╝╛  Ё              Ё              Ё              Ё   └═Б═   Ё ▒Ц╛╛═ ╝╞╚═БК Ё    ▐╚═Б╔╕╜╝╔    Ё ┤═Г╔Б ╒╖═╗╛╜КЕ  ╨Ъ≤
Ъ≤╨    ╓╝╙Ц╛╔╜Б     Ё                 Ё         Ё          цддддддбдддддддддд╢     АКЮЛО     Ё          Ё ═╙Ф╗╖═ ╗  Ё              Ё              Ё              Ё  ╝╞╚═БК  Ё ╒ ЮЦ║. ╗ ╙╝╞.Ё    ╞╝ЮЦГ╔╜╗╔    Ё   БЮ╔║╝╒═╜╗╘    ╨Ъ≤
Ъ≤гддддддбдддддддддд╢                 Ё         Ё          Ё      Ё          Ё               Ё          Ё    █└▒    Ё              Ё    ═╙Ф╗╖     Ё      █└▒     Ё          Ё              цддддддбддддддддддеддддддбдддддддддд╤Ъ≤
Ъ≤╨█╝╛╔Ю Ё   └═Б═   Ё                 Ё         Ё          Ё█╝╛╔Ю Ё   └═Б═   Ё               Ё          Ё           Ё              Ё              Ё              Ё          Ё              Ё█╝╛╔Ю Ё   └═Б═   Ё█╝╛╔Ю Ё   └═Б═   ╨Ъ≤
Ъ≤╨      Ё ╒К╞╗А╙╗  Ё                 Ё         Ё          Ё      Ё          Ё               Ё          Ё           Ё              Ё              Ё              Ё          Ё              Ё      Ё          Ё      Ё          ╨Ъ≤
Ъ≤гддддддеддддддддддедддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
Ъ≥╨  1   Ё    2     Ё        3        Ё    4    Ё    5     Ё  6   Ё    7     Ё       8       Ё     9    Ё    10     Ё      11      Ё      12      Ё      13      Ё    14    Ё      15      Ё  16  Ё    17    Ё  18  Ё    19    ╨Ъ≥
Ъ≤гддддддеддддддддддедддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.var
  WasWrite: boolean
  PriceNoNal: double
  SumNal: double
  pScNDoc: string
  pScdDoc: string
  pMCName: string
  pMCOtpEd: string
  LastMC: comp
  LastMCParams: longint
  ChapterName: string

  Sum10: double
  Sum11: double
  Sum12: double
  Sum13: double
!  iSum10: double
  iSum11: double
  iSum12: double
  iSum13: double
  iSum15: double

  s14: string
  s15: string
  s16: string
  s17: string
  s18: string
  s19: string
.endvar
.{CheckEnter RepDONal_DO
.begin
  pScNDoc := if (ScType = 0, '║╔╖ └▌', if (ScType = 2, '▒■:', '└▌:')+ScNDoc);
  pScdDoc := if(longint(ScdDoc)=0,'',DateToStr(ScdDoc,'DD/MM/YYYY'));
  LastMC := 0;
  LastMCParams := -1;
!  iSum10 := 0.0;
  iSum11 := 0.0;
  iSum12 := 0.0;
  iSum13 := 0.0;
  iSum15 := 0.0;
end.
.{CheckEnter RepDONal_MC
.begin
  if (LastMC <> MCNRec) then {
    LastMC := MCNRec;
    pMCName := MCName;
    pMCOtpEd := MCOtpEd;
  };
  PriceNoNal := MCPrice;
  SumNal := 0.0;
  Sum12 := 0.0;
  Sum13 := 0.0;
  s14 := '';
  s15 := '';
  s16 := '';
  s17 := '';
  s18 := '';
  s19 := '';
end.
.{CheckEnter RepDONal_MCNal
.begin
  PriceNoNal := PriceNoNal - if(MCKatSoprVhodNal=1,MCNalSumma/MCKol,0.0);
  if (SearchMarker(MrkKatNalog, MCNalNRec, IndexNo)) then
    Sum12 := Sum12 + MCNalSumma
  else
  if (MCNalNRec = cNDS) then
    Sum13 := Sum13 + MCNalSumma;
  SumNal := SumNal + MCNalSumma;
end.
.} // RepDONal_MCNal
.begin
  Sum10 := PriceNoNal+(Sum12+Sum13)/MCKol;
  Sum11 := PriceNoNal*MCKol+SumNal;

!  iSum10 := iSum10 + Sum10;
  iSum11 := iSum11 + Sum11;
  iSum12 := iSum12 + Sum12;
  iSum13 := iSum13 + Sum13;
  if (LastMCParams <> -1 and (LastMCParams and MCParams) = 4) then
    LastMCParams := MCParams
  else
  if (LastMCParams <> -1 and (LastMCParams and MCParams) = 2) then
    LastMCParams := MCParams;
end.
.{?internal; (LastMCParams <> -1 and LastMCParams <> MCParams)
Ъ≤╨      Ё          цдддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.} // internal
.{?internal; (LastMCParams <> MCParams)
.begin
  case (MCParams and 7) of
    0: ChapterName := '▐╝╓═╙Ф.Б╝╒═ЮК ╞╝ ╒╗╓═╛ (А╝║.АКЮЛ╔)';
    1: ChapterName := '▐╝╓═╙Ф.Б╝╒═ЮК ╞╝ ╒╗╓═╛ (╓═╒.АКЮЛ╔)';
    2,3: ChapterName := '█╔╞╝╓═╙Ф╗╖╜К╔ Б╝╒═ЮК';
   else ChapterName := '▓═Ю═ ╗ Б.╞.';
  end;
end.
.fields
  pScNDoc pScdDoc ChapterName
.endfields
Ъ≤╨@~@@@@Ё@@@@@@@@@@ЁЪ┐@@@@@@@@@@@@@@@@@Ъ┐Ё         Ё          Ё      Ё          Ё               Ё          Ё           Ё              Ё              Ё              Ё          Ё              Ё      Ё          Ё      Ё          ╨Ъ≤
.begin
  pScNDoc := '';
  pScdDoc := '';
end.
.} // internal
.{CheckEnter RepDONal_MCSpSH
.begin
  iSum15 := iSum15 + MCSpSHSumma;
  s14 := s14 + Center(if(longint(MCSHdDoc)=0,'',DateToStr(MCSHdDoc,'DD/MM/YYYY')),10);
  s15 := s15 + SubStr(lPad(if(abs(MCSpSHSumma)<0.005,'',DoubleToStr(Round(MCSpSHSumma,2),'66666666666.88')),14),1,14);
  s16 := s16 + SubStr(Center(if(pPlatType<>1,'',MCPlatNDoc),6),1,6);  // ╒Е╝╓ОИ╗╘ ╞╚═Б╔╕
  s17 := s17 + Center(if(longint(MCPlatdDoc)=0 or MCPlatType<>2,'',DateToStr(MCPlatdDoc,'DD/MM/YYYY')),10);
  s18 := s18 + SubStr(Center(if(pPlatType<>2,'',MCPlatNDoc),6),1,6);  // ═╙Б ╒╖═╗╛╝╖═Г╔Б═
  s19 := s19 + Center(if(longint(MCPlatdDoc)=0 or MCPlatType<>70,'',DateToStr(MCPlatdDoc,'DD/MM/YYYY')),10);
end.
.} // RepDONal_MCSpSH
.fields
  pScNDoc pScdDoc pMCName pMCOtpEd
  MCKol MCKatSoprNDoc if(longint(MCKatSoprdDoc)=0,'',DateToStr(MCKatSoprdDoc,'DD/MM/YYYY')) OrgName
  if(longint(MCKatSoprdOtgr)=0,'',DateToStr(MCKatSoprdOtgr,'DD/MM/YYYY')) Sum10 Sum11 Sum12 Sum13
  s14 s15 s16 s17 s18 s19
.endfields
Ъ≤╨@~@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@@@Ё@~@@@@@@@Ё&#&&&&.&&&Ё@~@@@@Ё@@@@@@@@@@Ё@@@@@@@@@@@@@@@Ё@@@@@@@@@@Ё&#&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&&&&&&&&&&&.&&Ё&&&&&&&&&&&.&&Ё@@@@@@@@@@Ё&#&&&&&&&&&.&&Ё@~@@@@Ё@@@@@@@@@@Ё@~@@@@Ё@@@@@@@@@@╨Ъ≤
.begin
  pScNDoc := '';
  pScdDoc := '';
  LastMCParams := MCParams;
!  pMCName := '';
!  pMCOtpEd := '';
end.
.} // RepDONal_MC
.fields
!  iSum10
  iSum11 iSum12 iSum13 iSum15
.endfields
Ъ≤гддддддаддддддддддадддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
Ъ≥╨ ┬Б╝ё╝ ╞╝ АГ╔БЦ                    Ё    X    Ё    X     Ё  X   Ё    X     Ё       X       Ё     X    Ё     X     Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё&#&&&&&&&&&.&&Ё    X     Ё&#&&&&&&&&&.&&Ё  X   Ё    X     Ё  X   Ё    X     ╨Ъ≥
Ъ≤гддддддбддддддддддбдддддддддддддддддедддддддддеддддддддддеддддддеддддддддддедддддддддддддддеддддддддддедддддддддддеддддддддддддддеддддддддддддддеддддддддддддддеддддддддддеддддддддддддддеддддддеддддддддддеддддддедддддддддд╤Ъ≤
.[f
Ъ≤хммммммоммммммммммомммммммммммммммммомммммммммоммммммммммоммммммоммммммммммомммммммммммммммоммммммммммомммммммммммоммммммммммммммоммммммммммммммоммммммммммммммоммммммммммоммммммммммммммоммммммоммммммммммоммммммомммммммммм╪Ъ≤
.]f
.} // RepDONal_DO
.endform