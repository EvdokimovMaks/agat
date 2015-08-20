

#doc
€Š’/……‘’ €Š’‚ …€‹ˆ‡€–ˆˆ ’‚€‚
#end
.form ConsAkts
.hide
.var
  NPPKatSopr: longint
  NPPSpSopr: longint
  KatSoprItogo: double
  SpSoprItogo: double
.endvar
.fields
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
// DO
  BaseDocNRec: comp
  BaseDocNDoc: string
  BaseDocdDoc: date

  KatSoprNRec: comp
  KatSoprNDoc: string
  KatSoprdDoc: date
  KatSoprVhodNal: string
  KatSoprSumma: double
  KatSoprKlValNRec: comp
  KatSoprKlValName: string
  KatSoprKlValDollarah: string
  SchFactNRec: comp
  SchFactStatus: word
  SchFactNDoc: string
  SchFactdFact: date
  SchFactdReg: date

  SpSoprNRec: comp
  SpSoprSpStepNRec: comp
  SpSoprMCNRec: comp
  SpSoprMCName: string
  SpSoprMCBarCode: string
  SpSoprKatOtpEdNRec: comp
  SpSoprKatOtpEdName: string
  SpSoprKolOpl: double
  SpSoprKolSkl: double
  SpSoprPrice: double
  SpSoprKlValNRec: comp
  SpSoprKlValName: string

  SpDocNalNRec: comp
  SpDocNalKatNalogNRec: comp
  SpDocNalKatNalogName: string
  SpDocNalProc: double
  SpDocNalSumma: double
.endfields
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
// DO
  BaseDocNRec: comp ^
  BaseDocNDoc: string ^
  BaseDocdDoc: date ^
{ConsAkts_KatSopr
.{CheckEnter ConsAkts_KatSopr
// KatSopr
  KatSoprNRec: comp ^
  KatSoprNDoc: string ^
  KatSoprdDoc: date ^
  KatSoprVhodNal: string ^
  KatSoprSumma: double ^
  KatSoprKlValNRec: comp ^
  KatSoprKlValName: string ^
  KatSoprKlValDollarah: string ^
  SchFactNRec: comp ^
  SchFactStatus: word ^
  SchFactNDoc: string ^
  SchFactdFact: date ^
  SchFactdReg: date ^
.begin
  NPPKatSopr := NPPKatSopr + 1;
  NPPSpSopr := 0;
  KatSoprItogo := KatSoprItogo + KatSoprSumma;
  SpSoprItogo := 0.0;
end.
{ConsAkts_SpSopr
.{CheckEnter ConsAkts_SpSopr
  SpSoprNRec: comp ^
  SpSoprSpStepNRec: comp ^
  SpSoprMCNRec: comp ^
  SpSoprMCName: string ^
  SpSoprMCBarCode: string ^
  SpSoprKatOtpEdNRec: comp ^
  SpSoprKatOtpEdName: string ^
  SpSoprKolOpl: double ^
  SpSoprKolSkl: double ^
  SpSoprPrice: double ^
  SpSoprKlValNRec: comp ^
  SpSoprKlValName: string ^
.begin
  NPPSpSopr := NPPSpSopr + 1;
  SpSoprItogo := SpSoprItogo + SpSoprKolOpl * SpSoprPrice;
end.
{ConsAkts_SpDocNal
.{CheckEnter ConsAkts_SpDocNal
  SpDocNalNRec: comp ^
  SpDocNalKatNalogNRec: comp ^
  SpDocNalKatNalogName: string ^
  SpDocNalProc: double ^
  SpDocNalSumma: double ^
.} // ConsAkts_SpDocNal
} // ConsAkts_SpDocNal
.} // ConsAkts_SpSopr
} // ConsAkts_SpSopr
.} // ConsAkts_KatSopr
} // ConsAkts_KatSopr
.endform

#doc
¥¥áâà  ªâ®¢
#end
.linkform 'ConsAkts_01' prototype ConsAkts
.nameinlist '¥¥áâà  ªâ®¢'
.group '¥¥áâàë'
.fields
  CommonFormHeader
  '¯® áç¥âã '+BaseDocNDoc+' ®â '+if(longint(BaseDocdDoc)=0,'',DateToStr(BaseDocdDoc, 'DD/MM/YYYY')) + KatSoprKlValDollarah
.endfields
 ^
                       ……‘’ €Š’‚ …€‹ˆ‡€–ˆˆ ’‚€‚
   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  ü ¯/¯³   „ â    ³  ®¬¥à   ³     ‘ã¬¬       ³     „®ªã¬¥­â ¤«ï ãç¥â  „‘
 ÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{CheckEnter ConsAkts_KatSopr
.fields
  NPPKatSopr
  if (longint(KatSoprdDoc)=0,'',DateToStr(KatSoprdDoc,'DD/MM/YYYY'))
  KatSoprNDoc
  KatSoprSumma
  if(SchFactNRec=0,'','ü'+SchFactNDoc+if(longint(SchFactdFact)=0,'',' ®â '+DateToStr(SchFactdFact,'DD/MM/YYYY')))
.endfields
  &~&&& @~@@@@@@@@ @~@@@@@@@@ &&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{CheckEnter ConsAkts_SpSopr
.{CheckEnter ConsAkts_SpDocNal
.} // ConsAkts_SpDocNal
.} // ConsAkts_SpSopr
.} // ConsAkts_KatSopr
.fields
  KatSoprItogo
.endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  ˆ’ƒ                      &&&&&&&&&&&&&&.&&
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.endform

#doc
€ªâ à¥ «¨§ æ¨¨ â®¢ à®¢
#end
.linkform 'ConsAkts_02' prototype ConsAkts
.nameinlist '€ªâ à¥ «¨§ æ¨¨ â®¢ à®¢'
.group '€ªâë'
.{CheckEnter ConsAkts_KatSopr
.fields
  CommonFormHeader
  KatSoprNDoc
  if(longint(KatSoprdDoc)=0,'',DateToStr(KatSoprdDoc, 'DD/MM/YYYY'))
  '¯® áç¥âã '+BaseDocNDoc+' ®â '+if(longint(BaseDocdDoc)=0,'',DateToStr(BaseDocdDoc, 'DD/MM/YYYY')) + KatSoprKlValDollarah
.endfields
 ^
               €Š’ …€‹ˆ‡€–ˆˆ ’‚€‚ ü^ ®â ^
   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  ü ¯/¯³    ¨¬¥­®¢ ­¨¥ â®¢ à    ³  …¤.¨§¬. ³Š®«¨ç¥áâ¢®³     –¥­      ³        ‘ã¬¬ 
 ÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.{CheckEnter ConsAkts_SpSopr
.fields
  NPPSpSopr
  SpSoprMCName
  SpSoprKatOtpEdName
  SpSoprKolOpl
  SpSoprPrice
  SpSoprKolOpl*SpSoprPrice
.endfields
  &~&&& @@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@ &&&&&&&&&& &&&&&&&&&&&.&& &&&&&&&&&&&&&&&&&&.&&
.{CheckEnter ConsAkts_SpDocNal
.} // ConsAkts_SpDocNal
.} // ConsAkts_SpSopr
.fields
  SpSoprItogo
.endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
  ˆ’ƒ                                                             &'&&&&&&&&&&&&&&&&&&&.&&
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} // ConsAkts_KatSopr
.endform
