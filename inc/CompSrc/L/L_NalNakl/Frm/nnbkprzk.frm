/*
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                     (c) 1994,99 ชฎเฏฎเ ๆจ๏ €€’€                      บ
บ เฎฅชโ        : €€’€                                                 บ
บ ‘จแโฅฌ        : ฏฅเ โจขญ๋ฉ ชฎญโใเ                                        บ
บ ฅเแจ๏        : 5.70                                                      บ
บ  งญ ็ฅญจฅ    : ฅ็ โ์ ชญจฃจ ฏเฎค ฆ                                       บ
บ โขฅโแโขฅญญ๋ฉ :  ฉๆฅข ‘..                                               บ
บ  เ ฌฅโเ๋     : ญฅโ                                                       บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
ฅ็ โ์ ชญจฃจ ฏเฎค ฆ
#end
.set name='NnBkPZF'
.hide
.var
 ImSA:double;
 ImS1:double;
 ImS2:double;
 ImS3:double;
 ImS4:double;
 ImS5:double;
 ImS6:double;
 ImS7:double;
 ImS8:double;
 ImS9:double;
 ImS10:double;
 ImS11:double;
 ImSi1:double;
 ImSi2:double;
 ImSi3:double;
 IqSA:double;
 IqS1:double;
 IqS2:double;
 IqS3:double;
 IqS4:double;
 IqS5:double;
 IqS6:double;
 IqS7:double;
 IqS8:double;
 IqS9:double;
 IqS10:double;
 IqS11:double;
 IqSi1:double;
 IqSi2:double;
 IqSi3:double;
 ISA:double;
 IS1:double;
 IS2:double;
 IS3:double;
 IS4:double;
 IS5:double;
 IS6:double;
 IS7:double;
 IS8:double;
 IS9:double;
 IS10:double;
 IS11:double;
 ISi1:double;
 ISi2:double;
 ISi3:double;
 OtEnd:boolean;
 DatNomSF:string;
 NomDO:string;
 FiltTxt:string;
 KontrNameNazn:string;
 IsRK: boolean;
 IsKonPotr: boolean;
 IsPlatNDS: boolean;

 IsNotInclInNalKred: boolean;
 IsNotInclInValRas: boolean;
 IsComeFromNotUkr: boolean;
 IsImpWithNalVeks: boolean;
 IsWorkFromNerez: boolean;
 IsForNotOblOpr: boolean;
 IsFreeNalObl  : boolean;
.endvar

.fields
 AllKontr  :word    // 1
 AllTips   :word    // 2
 RegTips   :word    // 3
 ZeroPrint:boolean       // 00
 MyOrg:string            // 01
 MyInn:string            // 02
 MyOKONH:string          // 03
 MyOKPO:string           // 04
 MyINNDS:string           // 04
 BegDate:date            // 05
 EndDate:date            // 06
 Stav1:Double             // 07
 Stav2:Double             // 08
 Stav3:Double             // 08
.endfields
123 012345678
^^^ ^^^^^^^^^^^
.begin
 OtEnd:=false;
 FiltTxt:=if ( (AllKontr=0) or (AllTips=0)
             ,' ซฎฆฅญ ไจซ์โเ ฏฎ'+
               if (AllKontr=0,' ชฎญโเ ฃฅญโ ฌ','')+
               if (AllTips=0,if (AllKontr=0,' จ','')+' โจฏ ฌ ง ฏจแฅฉ','')
             ,'');
end.
.begin
 ImSA:=0;
 ImS1:=0;
 ImS2:=0;
 ImS3:=0;
 ImS4:=0;
 ImS5:=0;
 ImS6:=0;
 ImS7:=0;
 ImS8:=0;
 ImS9:=0;
 ImS10:=0;
 ImS11:=0;
 ImSi1:=0;
 ImSi2:=0;
 ImSi3:=0;
 IqSA:=0;
 IqS1:=0;
 IqS2:=0;
 IqS3:=0;
 IqS4:=0;
 IqS5:=0;
 IqS6:=0;
 IqS7:=0;
 IqS8:=0;
 IqS9:=0;
 IqS10:=0;
 IqS11:=0;
 IqSi1:=0;
 IqSi2:=0;
 IqSi3:=0;
 ISA:=0;
 IS1:=0;
 IS2:=0;
 IS3:=0;
 IS4:=0;
 IS5:=0;
 IS6:=0;
 IS7:=0;
 IS8:=0;
 IS9:=0;
 IS10:=0;
 IS11:=0;
 ISi1:=0;
 ISi2:=0;
 ISi3:=0;
end.
.{CheckEnter NnBkPrZkMain
.fields
 cBookPrZk:Comp          // 00
 SubTip:word
 SFSubTip:word
 NomSF:string            // 01
 dFact:date            // 02
 dPost:date            // 03
 FormRasc: comp
 FormRascTxt: string
 VidDog        :comp         //   7
 VidDogTxt     :string       //   7

 dOpl:date             // 04
 dOpr:date             // 05
 dReg:date
 NRecKontr: comp
 IsKontrResident: boolean
 KontrCountry:string
 KontrName:string        // 06
 KontrInn:string         // 07
 KontrOKONH:string       // 08
 KontrOKPO:string        // 09
 KontrINNDS:string           // 04
 SA:double            // 10
 S1:double            // 11
 S2:double            // 12
 S3:double            // 13
 S4:double            // 14
 S5:double            // 15
 S6:double            // 16
 S7:double            // 17
 S8:double            // 17
 S9:double            // 17
 S10:double           // 18
 S11:double           // 18
 Si1:double           // 19
 Si2:double           // 20
 Si3:double           // 20
 BaseDoc_NoDoc:string    // 21
 Nazn:string             // 22 ฏเจฌฅ็ ญจฅ ช ง ฏจแจ
 VidUchFlags: longint
 FlagUchInReestr: word  // แฏฎแฎก ใ็ฅโ  ข เฅฅแโเฅ ญ ซฎฃฎข๋ๅ ญ ชซ คญ๋ๅ
.endfields
0123456789012345678901234567890123456
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.begin
 IsRK := (SubTip = 3 or SubTip = 20);
 IsKonPotr := (SubTip = 4);
 IsPlatNDS := (not IsKonPotr and rTrim(lTrim(KontrINNDS, ' '), ' ') <> '');
 IsNotInclInNalKred := ((VidUchFlags and 1) <> 0);
 IsNotInclInValRas := ((VidUchFlags and 2) <> 0);
 IsComeFromNotUkr := ((VidUchFlags and 4) <> 0);
 IsImpWithNalVeks := ((VidUchFlags and 8) <> 0);
 IsWorkFromNerez := ((VidUchFlags and 16) <> 0);
 IsForNotOblOpr := ((VidUchFlags and 32) <> 0);
 IsFreeNalObl   := ((VidUchFlags and 64) <> 0);
 ImSA:=ImSA+SA;
 ImS1:=ImS1+S1;
 ImS2:=ImS2+S2;
 ImS3:=ImS3+S3;
 ImS4:=ImS4+S4;
 ImS5:=ImS5+S5;
 ImS6:=ImS6+S6;
 ImS7:=ImS7+S7;
 ImS8:=ImS8+S8;
 ImS9:=ImS9+S9;
 ImS10:=ImS10+S10;
 ImS11:=ImS11+S11;
 ImSi1:=ImSi1+Si1;
 ImSi2:=ImSi2+Si2;
 ImSi3:=ImSi3+Si3;
 ISA:=ISA+SA;
 IS1:=IS1+S1;
 IS2:=IS2+S2;
 IS3:=IS3+S3;
 IS4:=IS4+S4;
 IS5:=IS5+S5;
 IS6:=IS6+S6;
 IS7:=IS7+S7;
 IS8:=IS8+S8;
 IS9:=IS9+S9;
 IS10:=IS10+S10;
 IS11:=IS11+S11;
 ISi1:=ISi1+Si1;
 ISi2:=ISi2+Si2;
 ISi3:=ISi3+Si3;
 if (ZeroPrint)
  {
    DatNomSF:=If (LongInt(dFact)=0,'          ',
                  DateToStr(dFact,'DD/MM/YYYY'))+
                  LPadCh(NomSF,' ',9);
    NomDO:=BaseDoc_NoDoc;
  }
 else
  {
    DatNomSF:=If (LongInt(dFact)=0,'          ',
                  DateToStr(dFact,'DD/MM/YYYY'))+
                  LPadCh(Ltrim(NomSF,'0'),' ',9);
    NomDO:=LTrim(BaseDoc_NoDoc,'0');
  };
 KontrNameNazn:=KontrName+if(trim(Nazn)<>'','('+Nazn+')','')
end.
.if NnTotalMonth
 IqSA:=IqSA+ImSA;
 IqS1:=IqS1+ImS1;
 IqS2:=IqS2+ImS2;
 IqS3:=IqS3+ImS3;
 IqS4:=IqS4+ImS4;
 IqS5:=IqS5+ImS5;
 IqS6:=IqS6+ImS6;
 IqS7:=IqS7+ImS7;
 IqS8:=IqS8+ImS8;
 IqS9:=IqS9+ImS9;
 IqS10:=IqS10+ImS10;
 IqS11:=IqS11+ImS11;
 IqSi1:=IqSi1+ImSi1;
 IqSi2:=IqSi2+ImSi2;
 IqSi1:=IqSi3+ImSi3;

 ImSA:=0;
 ImS1:=0;
 ImS2:=0;
 ImS3:=0;
 ImS4:=0;
 ImS5:=0;
 ImS6:=0;
 ImS7:=0;
 ImS8:=0;
 ImS9:=0;
 ImS10:=0;
 ImS11:=0;
 ImSi1:=0;
 ImSi2:=0;
 ImSi3:=0;
.end
.if NnTotalQuartal
 IqSA:=0;
 IqS1:=0;
 IqS2:=0;
 IqS3:=0;
 IqS4:=0;
 IqS5:=0;
 IqS6:=0;
 IqS7:=0;
 IqS8:=0;
 IqS9:=0;
 IqS10:=0;
 IqS11:=0;
 IqSi1:=0;
 IqSi2:=0;
 IqSi3:=0;
.end
.}  // NnBkPrZkMain
.begin
 OtEnd:=true;
end.
.endform

#doc
ญจฃ  ฏเฎค ฆ (โจโใซ์ญ๋ฉ ซจแโ)
#end
.linkform 'NnBkPZF_11' prototype is 'NnBkPZF'
.NameInList 'ญจฃ  ฏเฎค ฆ (โจโใซ์ญ๋ฉ ซจแโ)'
.Group 'เฎค ฆจ'
.defo landscape
.P 40
.fields
  CommonFormHeader
 MyOrg
 MyInn
 Year(BegDate)
 DateToStr(BegDate,'DD/MM/YYYY')
 DateToStr(EndDate,'DD/MM/YYYY')
.endfields
 ÿ^ÿ
                                                                                                   €’……
                                                                                           ญ ช งฎฌ € “ชเ ๕ญจ
                                                                                                         ü 165




                                ÿ€  I“  €“ÿ
                                โฎข เiข (เฎกiโ, ฏฎแซใฃ)
                    ฏฎ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ…
                                     ÿ(ญ งข  ฏiคฏเจ๓ฌแโข , ๎เจคจ็ญ   คเฅแ )ÿ
     Iญคจขiคใ ซ์ญจฉ ฏฎค โชฎขจฉ ญฎฌฅเ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ…
     ____________________________________________________________________________

     ‘ขiคฎๆโขฎ ฏเฎ เฅ๓แโเ ๆi๎ ฏซ โญจช  ฏฎค โชใ ญ  คฎค ญใ ข เโiแโ์
                                                                                   ÿ^ÿ เiช
                                                                                   ü ____________
     ฎงฏฎ็ โฎ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ… ญ     _______  เชใ่ ๅ
                                      ÿค โ  (ง ฏฎขญ๎๓โ์แ๏ ฏซ โญจชฎฌ)ÿ
      ชiญ็ฅญฎ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ…
                                      ÿค โ  (ง ฏฎขญ๎๓โ์แ๏ ฏซ โญจชฎฌ)ÿ
     กฅเiฃ โจ ______________________________________________________________

.{CheckEnter NnBkPrZkMain
.if NnTotalMonth
.end
.if NnTotalQuartal
.end
.}
.endform

#doc
ญจฃ  ฏเฎค ฆ (็ฅโญ ๏ แโเ ญจๆ )
#end
.linkform 'NnBkPZF_12' prototype is 'NnBkPZF'
.NameInList 'ญจฃ  ฏเฎค ฆ (็ฅโญ ๏ แโเ ญจๆ )'
.Group 'เฎค ฆจ'
.defo landscape
.P 50
.var
  NPP: longint;
  NPPTxt: string;
  Sum6 : double;
  Sum7 : double;
  Sum8 : double;
  Sum9 : double;
  Sum10: double;
  Sum11: double;
  Sum12: double;
  Sum13: double;
  Sum14: double;
  Sum15: double;
  Sum16: double;
  Sum17: double;
  Sum18: double;
  Sum19: double;
  Sum20: double;
  Sum21: double;
  Sum22: double;
  Sum23: double;

  ImSum6 : double;
  ImSum7 : double;
  ImSum8 : double;
  ImSum9 : double;
  ImSum10: double;
  ImSum11: double;
  ImSum12: double;
  ImSum13: double;
  ImSum14: double;
  ImSum15: double;
  ImSum16: double;
  ImSum17: double;
  ImSum18: double;
  ImSum19: double;
  ImSum20: double;
  ImSum21: double;
  ImSum22: double;
  ImSum23: double;

  IqSum6 : double;
  IqSum7 : double;
  IqSum8 : double;
  IqSum9 : double;
  IqSum10: double;
  IqSum11: double;
  IqSum12: double;
  IqSum13: double;
  IqSum14: double;
  IqSum15: double;
  IqSum16: double;
  IqSum17: double;
  IqSum18: double;
  IqSum19: double;
  IqSum20: double;
  IqSum21: double;
  IqSum22: double;
  IqSum23: double;
.endvar
.fields
  CommonFormHeader

  CommonFormHeader
  string(Stav2,0,0)+'%'
  string(Stav2,0,0)+'%'
  string(Stav3,0,0)+'%'
.endfields
.[h skip
 ÿ^ÿ                                                                       จแโ @NP@
ÿษอออออัอออออออออออออัออออออออออัออออออออออออออออออออออออออออออออออออออออัอออออออออออออออัอออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัอออออออออออออออออออธÿ
ÿบ  1  ณ      2      ณ    3     ณ                   4                    ณ       5       ณ      6      ณ      7     ณ      8     ณ      9     ณ     10     ณ     11     ณ      12    ณ     13     ณ        14         ณÿ
ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÿ
.]h
 ÿ^ÿ                                                                       จแโ 1
ÿษอออออัอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออัอออออออออออออัออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออธÿ
ÿบ     ณ                               ฎค โชฎข  ญ ชซ คญ                                 ณ             ณ            กแ๏ฃ ฏเฎค ฆใ โฎข เiข (เฎกiโ, ฏฎแซใฃ), ฏฎ ๏ชจๅ ญฅ ขจญจช ๎โ์ ฏฎค โชฎขi งฎกฎข'๏ง ญญ๏                ณÿ
ÿบ     รฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด   ฃ ซ์ญจฉ  รฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ     ณ             ณ          ณ                                        ณ               ณฎกแ๏ฃ ฏเฎค ฆใณ  ง ฃ ซ์ญi  ณ                   ฏเฎค ฆ ญ  ฌจโญiฉ โฅเจโฎเi๕ “ชเ ๕ญจ                        ณ ญ  ฅชแฏฎเโ, ชเiฌ  ณÿ
ÿบ     ณ             ณ          ณ                                        ณ               ณ  โฎข เiข,   ณ   ฎกแ๏ฃจ   รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดฏฎแซใฃ,ฏฅเฅคก ็ฅญจๅณÿ
ÿบ     ณ             ณ          ณ                                        ณiญคจขiคใ ซ์ญจฉ ณ   เฎกiโ,    ณ   ฏเฎค ฆใ  ณ   ฎแฎก ฌ, ๏ชi ๓ ฏซ โญจช ฌจ ฏฎค โชใ   ณ ฎแฎก ฌ, ๏ชi ญฅ ๓ ฏซ โญจช ฌจ ฏฎค โชใ  ณ ฎแโ ญญiฌ  กง ๆฎฌ  ณÿ
ÿบN ง/ฏณ    ญฎฌฅเ    ณ  ค โ     ณ                ฏฎชใฏฅๆ์                ณ  ฏฎค โชฎขจฉ   ณ   ฏฎแซใฃ,   ณ   โฎข เiข, รฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤด ฏiคฏใญชโใ 6.2.1,  ณÿ
ÿบ     ณ  ญ ชซ คญฎ๕  ณ ขจฏจแชจ  ณ                                        ณ    ญฎฌฅเ      ณ  ขชซ๎็ ๎็จ  ณ    เฎกiโ,  ณ            ณงขiซ์ญฅญจๅ  ณ    ญฅ ๓    ณ            ณงขiซ์ญฅญจๅ  ณ    ญฅ ๓    ณ  กง ๆ ฌจ คเใฃจฌ i ณÿ
ÿบ     ณ             ณ          ณ                                        ณ   ฏฎชใฏๆ๏     ณ   ฏฎแซใฃ    ณ (8+9+10+11 ณ ง  แโ ขชฎ๎ ณขiค ฎฏฎคฎโ- ณ  ฎก'๓ชโฎฌ  ณ ง  แโ ขชฎ๎ ณขiค ฎฏฎคฎโ- ณ  ฎก'๓ชโฎฌ  ณ โเฅโiฌ ฏiคฏใญชโใ  ณÿ
ÿบ     ณ             ณ          ณ                                        ณ            ณ   (7+15)    ณ +12+13+14) ณ@~@@@@@@@@@@ณ  ชใข ญญ๏   ณ  ฎฏฎค โชใ- ณ@~@@@@@@@@@@ณ  ชใข ญญ๏   ณ  ฎฏฎค โชใ- ณ 6.2.4, ฏiคฏใญชโฎฌ ณÿ
ÿบ     ณ             ณ          ณ                                        ณ               ณ             ณ            ณ            ณ   (แโ.5)   ณ    ข ญญ๏   ณ            ณ   (แโ.5)   ณ    ข ญญ๏   ณ  6.2.2 แโ โโi 6,  ณÿ
ÿบ     ณ             ณ          ณ                                        ณ               ณ             ณ            ณ            ณ            ณ(ฏ.3.2 แโ.3)ณ            ณ            ณ(ฏ.3.2 แโ.3)ณ  ง  แโ ขชฎ๎ @@@@@@ณÿ
ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ  1  ณ      2      ณ    3     ณ                   4                    ณ       5       ณ      6      ณ      7     ณ      8     ณ      9     ณ     10     ณ     11     ณ      12    ณ     13     ณ        14         ณÿ
ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÿ
.begin
   NPP := 0;
  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;

  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
end.
.{CheckEnter NnBkPrZkMain
.begin
   NPP := NPP + if (IsKonPotr, 0, 1);
   NPPTxt := if (IsKonPotr, 'X', string(NPP));
!   Sum23 := if (not IsPlatNDS and IsRK, S10, 0.0);
!   Sum22 := if (not IsPlatNDS and IsRK, S4 + S7, 0.0);
!   Sum21 := if (IsPlatNDS and IsRK, S2, 0.0);
!   Sum20 := if (IsPlatNDS and IsRK, S1, 0.0);
   Sum23 := if (IsRK, S10, 0.0);
   Sum22 := if (IsRK, S4 + S7, 0.0);
   Sum21 := if (IsRK, S2, 0.0);
   Sum20 := if (IsRK, S1, 0.0);
   Sum19 := if (not IsPlatNDS and not IsRK, S2, 0.0);
   Sum18 := if (not IsPlatNDS and not IsRK, S1, 0.0);
   Sum17 := if (IsPlatNDS and not IsRK, S2, 0.0);
   Sum16 := if (IsPlatNDS and not IsRK, S1, 0.0);
   Sum15 := Sum16 + Sum17 + Sum18 + Sum19;
   Sum14 := if (not IsRK, S7, 0.0);
   Sum13 := if (not IsPlatNDS and not IsRK, S11, 0.0);
   Sum12 := if (not IsPlatNDS and not IsRK, S10, 0.0);
   Sum11 := if (not IsPlatNDS and not IsRK, S4, 0.0);
   Sum10 := if (IsPlatNDS and not IsRK, S11, 0.0);
   Sum9 := if (IsPlatNDS and not IsRK, S10, 0.0);
   Sum8 := if (IsPlatNDS and not IsRK, S4, 0.0);
   Sum7 := Sum8 + Sum9 + Sum10 + Sum11 + Sum12 + Sum13 + Sum14;
   Sum6 := Sum7 + Sum15;

  ImSum6  := ImSum6 + Sum6;
  ImSum7  := ImSum7 + Sum7;
  ImSum8  := ImSum8 + Sum8;
  ImSum9  := ImSum9 + Sum9;
  ImSum10 := ImSum10 + Sum10;
  ImSum11 := ImSum11 + Sum11;
  ImSum12 := ImSum12 + Sum12;
  ImSum13 := ImSum13 + Sum13;
  ImSum14 := ImSum14 + Sum14;
  ImSum15 := ImSum15 + Sum15;
  ImSum16 := ImSum16 + Sum16;
  ImSum17 := ImSum17 + Sum17;
  ImSum18 := ImSum18 + Sum18;
  ImSum19 := ImSum19 + Sum19;
  ImSum20 := ImSum20 + Sum20;
  ImSum21 := ImSum21 + Sum21;
  ImSum22 := ImSum22 + Sum22;
  ImSum23 := ImSum23 + Sum23;
end.
.fields
  NPPTxt if(SubTip=4,'X',SubStr(NomSF,1,13)) if(longint(dFact)<>0,DateToStr(dFact,'DD/MM/YYYY'),'')
   if(SubTip=4,'ฎญฅ็ญฎฅ ฏฎโเฅกซฅญจฅ',SubStr(KontrName,1,40))
   if(SubTip=4,string(Sum6,0,2),SubStr(KontrINN,1,15)) Sum6 Sum7 Sum8 Sum9 Sum10 Sum11 Sum12 Sum13 Sum14
.endfields
!ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ@~@@@ณ@~@@@@@@@@@@@ณ@~@@@@@@@@ณ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ณ@~@@@@@@@@@@@@@ณ&#&&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณÿ
.if NnTotalMonth
.fields
  ImSum6 ImSum7 ImSum8 ImSum9 ImSum10 ImSum11 ImSum12 ImSum13 ImSum14
.endfields
ÿฬอออออฯอออออออออออออฯออออออออออฯออออออออออออออออออออออออออออออออออออออออฯอออออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุอออออออออออออออออออตÿ
ÿบแ์ฎฃฎ ง  ฌiแ๏ๆ์                                                                       ณ&#&&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณÿ
ÿฬอออออัอออออออออออออัออออออออออัออออออออออออออออออออออออออออออออออออออออัอออออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุอออออออออออออออออออตÿ
.begin
  IqSum6  := IqSum6 + ImSum6;
  IqSum7  := IqSum7 + ImSum7;
  IqSum8  := IqSum8 + ImSum8;
  IqSum9  := IqSum9 + ImSum9;
  IqSum10 := IqSum10 + ImSum10;
  IqSum11 := IqSum11 + ImSum11;
  IqSum12 := IqSum12 + ImSum12;
  IqSum13 := IqSum13 + ImSum13;
  IqSum14 := IqSum14 + ImSum14;
  IqSum15 := IqSum15 + ImSum15;
  IqSum16 := IqSum16 + ImSum16;
  IqSum17 := IqSum17 + ImSum17;
  IqSum18 := IqSum18 + ImSum18;
  IqSum19 := IqSum19 + ImSum19;
  IqSum20 := IqSum20 + ImSum20;
  IqSum21 := IqSum21 + ImSum21;
  IqSum22 := IqSum22 + ImSum22;
  IqSum23 := IqSum23 + ImSum23;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;
end.
.end
.if NnTotalQuartal
.fields
  IqSum6 IqSum7 IqSum8 IqSum9 IqSum10 IqSum11 IqSum12 IqSum13 IqSum14
.endfields
ÿฬอออออฯอออออออออออออฯออออออออออฯออออออออออออออออออออออออออออออออออออออออฯอออออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุอออออออออออออออออออตÿ
ÿบแ์ฎฃฎ ง  ชข เโ ซ                                                                      ณ&#&&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณÿ
ÿฬอออออัอออออออออออออัออออออออออัออออออออออออออออออออออออออออออออออออออออัอออออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุอออออออออออออออออออตÿ
.begin
  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
end.
.end
.[f
ÿศอออออฯอออออออออออออฯออออออออออฯออออออออออออออออออออออออออออออออออออออออฯอออออออออออออออฯอออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯอออออออออออออออออออพÿ
.]f
.}
.endform

#doc
ญจฃ  ฏเฎค ฆ (ญฅ็ฅโญ ๏ แโเ ญจๆ )
#end
.linkform 'NnBkPZF_13' prototype is 'NnBkPZF'
.NameInList 'ญจฃ  ฏเฎค ฆ (ญฅ็ฅโญ ๏ แโเ ญจๆ )'
.Group 'เฎค ฆจ'
.defo landscape
.P 50
.var
  NPP: longint;
  Sum6 : double;
  Sum7 : double;
  Sum8 : double;
  Sum9 : double;
  Sum10: double;
  Sum11: double;
  Sum12: double;
  Sum13: double;
  Sum14: double;
  Sum15: double;
  Sum16: double;
  Sum17: double;
  Sum18: double;
  Sum19: double;
  Sum20: double;
  Sum21: double;
  Sum22: double;
  Sum23: double;

  ImSum6 : double;
  ImSum7 : double;
  ImSum8 : double;
  ImSum9 : double;
  ImSum10: double;
  ImSum11: double;
  ImSum12: double;
  ImSum13: double;
  ImSum14: double;
  ImSum15: double;
  ImSum16: double;
  ImSum17: double;
  ImSum18: double;
  ImSum19: double;
  ImSum20: double;
  ImSum21: double;
  ImSum22: double;
  ImSum23: double;

  IqSum6 : double;
  IqSum7 : double;
  IqSum8 : double;
  IqSum9 : double;
  IqSum10: double;
  IqSum11: double;
  IqSum12: double;
  IqSum13: double;
  IqSum14: double;
  IqSum15: double;
  IqSum16: double;
  IqSum17: double;
  IqSum18: double;
  IqSum19: double;
  IqSum20: double;
  IqSum21: double;
  IqSum22: double;
  IqSum23: double;
.endvar
.fields
  CommonFormHeader

  CommonFormHeader
  string(Stav1,0,0)+'%'
  string(Stav2,0,0)+'%'
  string(Stav1,0,0)+'%'
  string(Stav1,0,0)+'%'
.endfields
.[h skip
      ÿ^ÿ                                                                  จแโ @NP@( )
     ÿีอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัอออออออออออออออออออัออออออออออออออออออออัออออออออออปÿ
     ÿณ        15         ณ        16         ณ         17        ณ         18        ณ         19        ณ         20        ณ         21        ณ        22         ณ        23         ณ         24         ณ    25    บÿ
     ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤถÿ
.]h
      ÿ^ÿ                                                                  จแโ 1   ( )
     ÿีอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออัอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออัอออออออออออออออออออออออออออออออปÿ
     ÿณ                          กแ๏ฃจ ฏเฎค ฆใ โฎข เiข, ฏฎแซใฃ, เฎกiโ, ฏฎแซใฃ,                           ณ                         กแ๏ฃ ฏเฎขฅคฅญจๅ ชฎเจฃใข ญ์                           ณ เฎขฅคฅญญ๏ เฎงเ ๅใญชiข ง ฏเฎ- บÿ
     ÿณ                              ฏฎ ๏ชจๅ ขจญจช ๓ ฏฎค โชฎขฅ งฎกฎข'๏ง ญญ๏                               ณ                                                                               ณ  ค ฆใ โฎข เiข, เฎกiโ, ฏฎแซใฃ  บÿ
     ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤถÿ
     ÿณ                   ณ                                                                               ณ      ชฎเจฃใข ญญ๏ ฏเฎค ฆใ โฎข เiข,     ณ    ชฎเจฃใข ญญ๏ ง ฏเฎค ฆใ โฎข เiข,     ณ ไฎเฌ  เ งเ ๅใญชใ   ณ  ค โ     บÿ
     ÿณ                   ณ                     ฏเฎค ฆ ญ  ฌจโญiฉ โฅเจโฎเi๕ “ชเ ๕ญจ                        ณ           เฎกiโ, ฏฎแซใฃ, ้ฎ           ณ    เฎกiโ, ฏฎแซใฃ, ฏฎ ๏ชจๅ ฏฎค โฎช     ณ (ก เโฅเ, ฃฎโiขช ,  ณฏเฎขฅคฅญญ๏บÿ
     ÿณ  ง ฃ ซ์ญi ฎกแ๏ฃจ  ณ                                                                               ณ    ฎฏฎค โชฎขใ๎โ์แ๏ ง  แโ ขช ฌจ @@@@@@@ณ  ญ  คฎค ญใ ข เโiแโ์ ญฅ ญ เ ๅฎขใ๓โ์แ๏  ณ ฎฏซ โ  ง เฎงเ -    ณเฎงเ ๅใญชใบÿ
     ÿณ     ฏเฎค ฆใ       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด ๅใญชฎขฎฃฎ เ ๅใญชใ  ณ          บÿ
     ÿณ  (16+17+18+19)    ณ             ฏซ โญจช ฌ              ณ           ญฅฏซ โญจช ฌ              ณ       ก ง         ณ                   ณ          ก ง  ฎฏฎค โชใข ญญ๏           ณ      โ  iญ.)       ณ          บÿ
     ÿณ                   รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด   ฎฏฎค โชใข ญญ๏   ณ      แใฌ       รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด                    ณ          บÿ
     ÿณ                   ณก ง  ฎฏฎค โชใข ญญ๏ ณ   ง  แโ ขชฎ๎   ณก ง  ฎฏฎค โชใข ญญ๏ ณ   ง  แโ ขชฎ๎   ณ       (+,-)       ณ      (+, -)       ณ   ง  แโ ขชฎ๎ @@@@@ณงขiซ์ญฅญi ขiค ฎฏฎ- ณ                    ณ          บÿ
     ÿณ                   ณ                   ณ@~@@@@@@@@@@@@@@@@@ณ                   ณ@~@@@@@@@@@@@@@@@@@ณ                   ณ                   ณ      (+,-)        ณ ค โชใข ญญ๏ (แโ.5) ณ                    ณ          บÿ
     ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤถÿ
     ÿณ        15         ณ        16         ณ         17        ณ         18        ณ         19        ณ         20        ณ         21        ณ        22         ณ        23         ณ         24         ณ    25    บÿ
     ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤถÿ
.begin
   NPP := 0;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;

  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
end.
.{CheckEnter NnBkPrZkMain
.begin
   NPP := NPP + if (IsKonPotr, 0, 1);
!   Sum23 := if (not IsPlatNDS and IsRK, S10, 0.0);
!   Sum22 := if (not IsPlatNDS and IsRK, S4 + S7, 0.0);
!   Sum21 := if (IsPlatNDS and IsRK, S2, 0.0);
!   Sum20 := if (IsPlatNDS and IsRK, S1, 0.0);
   Sum23 := if (IsRK, S10, 0.0);
   Sum22 := if (IsRK, S4 + S7, 0.0);
   Sum21 := if (IsRK, S2, 0.0);
   Sum20 := if (IsRK, S1, 0.0);
   Sum19 := if (not IsPlatNDS and not IsRK, S2, 0.0);
   Sum18 := if (not IsPlatNDS and not IsRK, S1, 0.0);
   Sum17 := if (IsPlatNDS and not IsRK, S2, 0.0);
   Sum16 := if (IsPlatNDS and not IsRK, S1, 0.0);
   Sum15 := Sum16 + Sum17 + Sum18 + Sum19;
   Sum14 := if (not IsRK, S7, 0.0);
   Sum13 := if (not IsPlatNDS and not IsRK, S11, 0.0);
   Sum12 := if (not IsPlatNDS and not IsRK, S10, 0.0);
   Sum11 := if (not IsPlatNDS and not IsRK, S4, 0.0);
   Sum10 := if (IsPlatNDS and not IsRK, S11, 0.0);
   Sum9 := if (IsPlatNDS and not IsRK, S10, 0.0);
   Sum8 := if (IsPlatNDS and not IsRK, S4, 0.0);
   Sum7 := Sum8 + Sum9 + Sum10 + Sum11 + Sum12 + Sum13 + Sum14;
   Sum6 := Sum7 + Sum15;

  ImSum6  := ImSum6 + Sum6;
  ImSum7  := ImSum7 + Sum7;
  ImSum8  := ImSum8 + Sum8;
  ImSum9  := ImSum9 + Sum9;
  ImSum10 := ImSum10 + Sum10;
  ImSum11 := ImSum11 + Sum11;
  ImSum12 := ImSum12 + Sum12;
  ImSum13 := ImSum13 + Sum13;
  ImSum14 := ImSum14 + Sum14;
  ImSum15 := ImSum15 + Sum15;
  ImSum16 := ImSum16 + Sum16;
  ImSum17 := ImSum17 + Sum17;
  ImSum18 := ImSum18 + Sum18;
  ImSum19 := ImSum19 + Sum19;
  ImSum20 := ImSum20 + Sum20;
  ImSum21 := ImSum21 + Sum21;
  ImSum22 := ImSum22 + Sum22;
  ImSum23 := ImSum23 + Sum23;
end.
.fields
  Sum15 Sum16 Sum17 Sum18 Sum19 Sum20 Sum21 Sum22 Sum23 SubStr(FormRascTxt,1,20) if(longint(dReg)<>0,DateToStr(dReg,'DD/MM/YYYY'),'')
.endfields
!     ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤถÿ
     ÿณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ@@@@@@@@@@@@@@@@@@@@ณ@~@@@@@@@@บÿ
.if NnTotalMonth
.fields
  ImSum15 ImSum16 ImSum17 ImSum18 ImSum19 ImSum20 ImSum21 ImSum22 ImSum23
.endfields
     ÿฦอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุออออออออออออออออออออุออออออออออนÿ
     ÿณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ          X         ณ     X    บÿ
     ÿฦอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุออออออออออออออออออออุออออออออออนÿ
.begin
  IqSum6  := IqSum6 + ImSum6;
  IqSum7  := IqSum7 + ImSum7;
  IqSum8  := IqSum8 + ImSum8;
  IqSum9  := IqSum9 + ImSum9;
  IqSum10 := IqSum10 + ImSum10;
  IqSum11 := IqSum11 + ImSum11;
  IqSum12 := IqSum12 + ImSum12;
  IqSum13 := IqSum13 + ImSum13;
  IqSum14 := IqSum14 + ImSum14;
  IqSum15 := IqSum15 + ImSum15;
  IqSum16 := IqSum16 + ImSum16;
  IqSum17 := IqSum17 + ImSum17;
  IqSum18 := IqSum18 + ImSum18;
  IqSum19 := IqSum19 + ImSum19;
  IqSum20 := IqSum20 + ImSum20;
  IqSum21 := IqSum21 + ImSum21;
  IqSum22 := IqSum22 + ImSum22;
  IqSum23 := IqSum23 + ImSum23;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;
end.
.end
.if NnTotalQuartal
.fields
  IqSum15 IqSum16 IqSum17 IqSum18 IqSum19 IqSum20 IqSum21 IqSum22 IqSum23
.endfields
     ÿฦอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุออออออออออออออออออออุออออออออออนÿ
     ÿณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ&#&&&&&&&&&&&&&&.&&ณ          X         ณ     X    บÿ
     ÿฦอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุอออออออออออออออออออุออออออออออออออออออออุออออออออออนÿ
.begin
  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
end.
.end
.[f
     ÿิอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯอออออออออออออออออออฯออออออออออออออออออออฯออออออออออผÿ
.]f
.}
.endform

#doc
ญจฃ  ฏฎชใฏฎช (โจโใซ์ญ๋ฉ ซจแโ)
#end
.linkform 'NnBkPZF_21' prototype is 'NnBkPZF'
.NameInList 'ญจฃ  ฏฎชใฏฎช (โจโใซ์ญ๋ฉ ซจแโ)'
.Group ' ชใฏชจ'
.defo landscape
.P 40
.fields
  CommonFormHeader
 MyOrg
 MyInn
 Year(BegDate)
 DateToStr(BegDate,'DD/MM/YYYY')
 DateToStr(EndDate,'DD/MM/YYYY')
.endfields
 ÿ^ÿ
                                                                                                   €’……
                                                                                           ญ ช งฎฌ € “ชเ ๕ญจ
                                                                                                         ü 165




                               ÿ€  I“  €ÿ
                                โฎข เiข (เฎกiโ, ฏฎแซใฃ)
                    ฏฎ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ…
                                     ÿ(ญ งข  ฏiคฏเจ๓ฌแโข , ๎เจคจ็ญ   คเฅแ )ÿ
     Iญคจขiคใ ซ์ญจฉ ฏฎค โชฎขจฉ ญฎฌฅเ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ…
     ____________________________________________________________________________

     ‘ขiคฎๆโขฎ ฏเฎ เฅ๓แโเ ๆi๎ ฏซ โญจช  ฏฎค โชใ ญ  คฎค ญใ ข เโiแโ์
                                                                                   ÿ^ÿ เiช
                                                                                   ü ____________
     ฎงฏฎ็ โฎ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ… ญ     _______  เชใ่ ๅ
                                      ÿค โ  (ง ฏฎขญ๎๓โ์แ๏ ฏซ โญจชฎฌ)ÿ
      ชiญ็ฅญฎ ÿ…@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ…
                                      ÿค โ  (ง ฏฎขญ๎๓โ์แ๏ ฏซ โญจชฎฌ)ÿ
     กฅเiฃ โจ ______________________________________________________________

     ÿ’ฅเฌiญ "’ฎข เจ (เฎกฎโจ, ฏฎแซใฃจ), ฎแญฎขญi ไฎญคจ โ  ญฅฌ โฅเจ ซ์ญi  ชโจขจ" ข โ กซจๆi iฌฅญใ๓โ์แ๏ "โฎข เจ"ÿ
.{CheckEnter NnBkPrZkMain
.if NnTotalMonth
.end
.if NnTotalQuartal
.end
.}
.endform

#doc
ญจฃ  ฏฎชใฏฎช (็ฅโญ ๏ แโเ ญจๆ )
#end
.linkform 'NnBkPZF_22' prototype is 'NnBkPZF'
.NameInList 'ญจฃ  ฏฎชใฏฎช (็ฅโญ ๏ แโเ ญจๆ )'
.Group ' ชใฏชจ'
.defo landscape
.P 50
.var
  NPP: longint;
  Sum6 : double;
  Sum7 : double;
  Sum8 : double;
  Sum9 : double;
  Sum10: double;
  Sum11: double;
  Sum12: double;
  Sum13: double;
  Sum14: double;
  Sum15: double;
  Sum16: double;
  Sum17: double;
  Sum18: double;
  Sum18_1: double;
  Sum18_2: double;
  Sum19: double;
  Sum20: double;
  Sum21: double;
  Sum21_1: double;
  Sum21_2: double;
  Sum22: double;
  Sum22_1: double;
  Sum22_2: double;
  Sum23: double;
  Sum24: double;
  Sum24_1: double;
  Sum24_2: double;
  Sum25: double;
  Sum25_1: double;
  Sum25_2: double;

  ImSum6 : double;
  ImSum7 : double;
  ImSum8 : double;
  ImSum9 : double;
  ImSum10: double;
  ImSum11: double;
  ImSum12: double;
  ImSum13: double;
  ImSum14: double;
  ImSum15: double;
  ImSum16: double;
  ImSum17: double;
  ImSum18: double;
  ImSum19: double;
  ImSum20: double;
  ImSum21: double;
  ImSum22: double;
  ImSum23: double;
  ImSum24: double;
  ImSum25: double;

  IqSum6 : double;
  IqSum7 : double;
  IqSum8 : double;
  IqSum9 : double;
  IqSum10: double;
  IqSum11: double;
  IqSum12: double;
  IqSum13: double;
  IqSum14: double;
  IqSum15: double;
  IqSum16: double;
  IqSum17: double;
  IqSum18: double;
  IqSum19: double;
  IqSum20: double;
  IqSum21: double;
  IqSum22: double;
  IqSum23: double;
  IqSum24: double;
  IqSum25: double;
.endvar
.fields
  CommonFormHeader

  CommonFormHeader
  string(Stav1,0,0)+'%'
.endfields
.[h skip
 ÿ^ÿ                                                                       จแโ @NP@
ÿษอออออัออออออออออัออออออออออออัออออออออออออออออออออออออัออออออออออออัออออออออออออัอออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออัออออออออออออธÿ
ÿบ  1  ณ    2     ณ     3      ณ           4            ณ      5     ณ      6     ณ      7      ณ     8      ณ     9      ณ     10     ณ     11     ณ     12     ณ     13     ณ     14     ณ     15     ณ     16     ณ     17     ณÿ
ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤดÿ
.]h
 ÿ^ÿ                                                                       จแโ 1
ÿษอออออัอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออัออออออออออออัออออออออออออออออออออออออออัอออออออออออออออออออออออออัออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออธÿ
ÿบ     ณ            ฎค โชฎข  ญ ชซ คญ  (ข ญโ ฆญ  ฌจโญ                ณ            ณIฌฏฎเโ โฎข เiข,ญ  ๏ชi ฎไฎ-ณ     ฎกฎโจ, ฎโเจฌ ญi    ณ               เจคก ญญ๏ โฎข เiข (ญ  ฌจโญiฉ โฅเจโฎเi๕ “ชเ ๕ญจ โ  iฌฏฎเโญจๅ)               ณÿ
ÿบ     ณ                 คฅชซ เ ๆi๏, ็ฅช โฎ้ฎ)                       ณ            ณเฌซฅญฎ ฏฎค โชฎขจฉ ขฅชแฅซ์ ณ     ขiค ญฅเฅงจคฅญโ      ณ                                                                                          ณÿ
ÿบ     รฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด            รฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ     ณ          ณ            ณ            ฏฎแโ ็ ซ์ญจช             ณ‘ใฌ  ฏฎฃ ่ฅ-ณ             ณ            ณ            ณ            ณ            ณ            ณ           ง ฏเ ขฎฌ ขชซ๎็ฅญญ๏ คฎ ฏฎค โชฎขฎฃฎ ชเฅคจโใ            ณÿ
ÿบ     ณ          ณ            รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤดญฎฃฎ ฏฎค โ- ณ             ณ            ณ            ณ            ณ            ณ            รฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบN ง/ฏณ          ณ            ณ                        ณ            ณ   ชฎขฎฃฎ   ณ             ณ            ณ            ณ            ณ            ณ            ณ                ก ง  ฎฏฎค โชใข ญญ๏                 ณ         ณÿ
ÿบ     ณค โ  ฎโเจ-ณ   ญฎฌฅเ    ณ                        ณiญคจขiคใ ซ์-ณ   ขฅชแฅซ๏  ณ  ข เโiแโ์   ณ  แใฌ    ณ  ข เโiแโ์  ณ  แใฌ    ณ  ข เโiแโ์  ณ  แใฌ    รฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ     ณ  ฌ ญญ๏   ณ            ณ         ญ งข           ณญจฉ ฏฎค โชฎ-ณ            ณ  (กฅง )  ณ            ณ  (กฅง ) ณ            ณ  (กฅง ) ณ            ณ            ณiฌฏฎเโฎข ญi,ณ  ขฅชแฅซ์,  ณชฎเจฃใข ญญ๏ ณ ง  แโ ขชฎ๎ ณÿ
ÿบ     ณ          ณ            ณ                        ณขจฉ ญฎฌฅเ   ณ            ณ             ณ            ณ            ณ            ณ            ณ            ณ ญ  โฅเจโฎ- ณ ง ฎฏซ โฎ๎  ณ ฏฎฃ ่ฅญจฉ  ณ ข เโฎแโi   ณ@~@@@@@@@@@@ณÿ
ÿบ     ณ          ณ            ณ                        ณ            ณ            ณ             ณ            ณ            ณ            ณ            ณ            ณเi๕ “ชเ ๕ญจ ณ   ฏเจ   ณใ ฏฎฏฅเฅคญ์-ณ (+ ็จ -)   ณคฎ ก งจ ฎฏฎ-ณÿ
ÿบ     ณ          ณ            ณ                        ณ            ณ            ณ             ณ            ณ            ณ            ณ            ณ            ณ            ณ  ฌจโญฎฌใ   ณฎฌใ ฏฅเiฎคi ณ            ณ ค โชใข ญญ๏ ณÿ
ÿบ     ณ          ณ            ณ                        ณ            ณ            ณ             ณ            ณ            ณ            ณ            ณ            ณ            ณ ฎไฎเฌซฅญญi ณ            ณ            ณ            ณÿ
ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ  1  ณ    2     ณ     3      ณ           4            ณ      5     ณ      6     ณ      7      ณ     8      ณ      9     ณ     10     ณ     11     ณ     12     ณ     13     ณ     14     ณ     15     ณ     16     ณ     17     ณÿ
ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤดÿ
.begin
   NPP := 0;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;
  ImSum24 := 0.0;
  ImSum25 := 0.0;

  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
  IqSum24 := 0.0;
  IqSum25 := 0.0;
end.
.{CheckEnter NnBkPrZkMain
.begin
   NPP := NPP + 1;
! 104.1876   Sum25_1 := if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr, S1 + S4, 0.0);
   Sum25_1 := if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr, S1 + S4+S10+S11, 0.0);
   Sum25_2 := if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr, S2 + S5, 0.0);
   Sum25 := Sum25_1 + Sum25_2;
! 104.1876   Sum24_1 := if (IsNotInclInNalKred and IsNotInclInValRas and not IsComeFromNotUkr, S1 + S4, 0.0);
   Sum24_1 := if (IsNotInclInNalKred and IsNotInclInValRas and not IsComeFromNotUkr, S1 + S4+S10+S11, 0.0);

   Sum24_2 := if (IsNotInclInNalKred and IsNotInclInValRas and not IsComeFromNotUkr, S2 + S5, 0.0);
   Sum24 := Sum24_1 + Sum24_2;

! 104.1876   Sum23 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and (IsForNotOblOpr or IsFreeNalObl), S10 + S11, 0.0);
   Sum23 := 0.0;
   if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr)
    {
      Sum23 := S10;
      if (IsForNotOblOpr or IsFreeNalObl)
        Sum23:= Sum23 + S11
    }
   Sum22_1 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and IsImpWithNalVeks and IsForNotOblOpr, S1 + S4, 0.0);
   Sum22_2 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and IsImpWithNalVeks and IsForNotOblOpr, S2 + S5, 0.0);
   Sum22 := Sum22_1 + Sum22_2;
   Sum21_1 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and not IsImpWithNalVeks and IsForNotOblOpr, S1 + S4, 0.0);
   Sum21_2 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and not IsImpWithNalVeks and IsForNotOblOpr, S2 + S5, 0.0);
   Sum21 := Sum21_1 + Sum21_2;
   Sum20 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr and IsForNotOblOpr, S10 + S11, 0.0);
   Sum19 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr and not IsForNotOblOpr, S10 + S11, 0.0);
   Sum18_1 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr, S1 + S4, 0.0);
   Sum18_2 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr, S2 + S5, 0.0);
   Sum18 := Sum18_1 + Sum18_2;
   Sum17 := if (not IsNotInclInNalKred, S2 + S5, 0.0);
   Sum16 := if (not IsNotInclInNalKred and IsRK, S1 + S4, 0.0);
!   Sum15 := ;
   Sum14 := if (not IsNotInclInNalKred and IsComeFromNotUkr and not IsRK, S1 + S4, 0.0);
   Sum13 := if (not IsNotInclInNalKred and not IsComeFromNotUkr and not IsRK, S1 + S4, 0.0);
   Sum12 := Sum17 + Sum18_2 + Sum21_2 + Sum22_2 + Sum24_2 + Sum25_2;
   Sum11 := Sum13 + Sum14 + Sum15 + Sum16 + Sum18_1 + Sum19 + Sum20 + Sum21_1 + Sum22_1 + Sum23 + Sum24_1 + Sum25_1;
   Sum10 := if (IsWorkFromNerez, S2, 0.0);
! 104.1876   Sum9 := if (IsWorkFromNerez, S1, 0.0);
   Sum9 := 0.0;
   if (IsWorkFromNerez)
    {
      Sum9 := S1;
      if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr)
       {
         Sum9 := Sum9+S10+S11;
       }
    }
   Sum8 := if (IsImpWithNalVeks, S2, 0.0);
   Sum7 := if (IsImpWithNalVeks, S1, 0.0);
!   Sum6 := ;

  ImSum6  := ImSum6 + Sum6;
  ImSum7  := ImSum7 + Sum7;
  ImSum8  := ImSum8 + Sum8;
  ImSum9  := ImSum9 + Sum9;
  ImSum10 := ImSum10 + Sum10;
  ImSum11 := ImSum11 + Sum11;
  ImSum12 := ImSum12 + Sum12;
  ImSum13 := ImSum13 + Sum13;
  ImSum14 := ImSum14 + Sum14;
  ImSum15 := ImSum15 + Sum15;
  ImSum16 := ImSum16 + Sum16;
  ImSum17 := ImSum17 + Sum17;
  ImSum18 := ImSum18 + Sum18;
  ImSum19 := ImSum19 + Sum19;
  ImSum20 := ImSum20 + Sum20;
  ImSum21 := ImSum21 + Sum21;
  ImSum22 := ImSum22 + Sum22;
  ImSum23 := ImSum23 + Sum23;
  ImSum24 := ImSum24 + Sum24;
  ImSum25 := ImSum25 + Sum25;
end.
.fields
  NPP if(longint(dPost)<>0,DateToStr(dPost,'DD/MM/YYYY'),'')
   if(IsPlatNDS,SubStr(NomSF,1,12),'X') if(IsComeFromNotUkr,SubStr(KontrCountry+','+KontrName,1,24),SubStr(KontrName,1,24))
   if(IsComeFromNotUkr or ltrim(rtrim(KontrINN,' '),' ')='','X',SubStr(KontrINN,1,12))
   Sum6 Sum7 Sum8 Sum9 Sum10 Sum11 Sum12 Sum13 Sum14 Sum15 Sum16 Sum17
.endfields
!ÿวฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤดÿ
ÿบ&~&&&ณ@~@@@@@@@@ณ@~@@@@@@@@@@ณ@@@@@@@@@@@@@@@@@@@@@@@@ณ@~@@@@@@@@@@ณ&#&&&&&&&.&&ณ&#&&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณÿ
.if NnTotalMonth
.fields
   ImSum6 ImSum7 ImSum8 ImSum9 ImSum10 ImSum11 ImSum12 ImSum13 ImSum14 ImSum15 ImSum16 ImSum17
.endfields
ÿฬอออออฯออออออออออฯออออออออออออฯออออออออออออออออออออออออฯออออออออออออุออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออตÿ
ÿบ แ์ฎฃฎ ง  ฌiแ๏ๆ์                                                  ณ&#&&&&&&&.&&ณ&#&&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณÿ
ÿฬอออออัออออออออออัออออออออออออัออออออออออออออออออออออออัออออออออออออุออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออตÿ
.begin
  IqSum6  := IqSum6 + ImSum6;
  IqSum7  := IqSum7 + ImSum7;
  IqSum8  := IqSum8 + ImSum8;
  IqSum9  := IqSum9 + ImSum9;
  IqSum10 := IqSum10 + ImSum10;
  IqSum11 := IqSum11 + ImSum11;
  IqSum12 := IqSum12 + ImSum12;
  IqSum13 := IqSum13 + ImSum13;
  IqSum14 := IqSum14 + ImSum14;
  IqSum15 := IqSum15 + ImSum15;
  IqSum16 := IqSum16 + ImSum16;
  IqSum17 := IqSum17 + ImSum17;
  IqSum18 := IqSum18 + ImSum18;
  IqSum19 := IqSum19 + ImSum19;
  IqSum20 := IqSum20 + ImSum20;
  IqSum21 := IqSum21 + ImSum21;
  IqSum22 := IqSum22 + ImSum22;
  IqSum23 := IqSum23 + ImSum23;
  IqSum24 := IqSum24 + ImSum24;
  IqSum25 := IqSum25 + ImSum25;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;
  ImSum24 := 0.0;
  ImSum25 := 0.0;
end.
.end
.if NnTotalQuartal
.fields
   IqSum6 IqSum7 IqSum8 IqSum9 IqSum10 IqSum11 IqSum12 IqSum13 IqSum14 IqSum15 IqSum16 IqSum17
.endfields
ÿฬอออออฯออออออออออฯออออออออออออฯออออออออออออออออออออออออฯออออออออออออุออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออตÿ
ÿบ แ์ฎฃฎ ง  ชข เโ ซ                                                 ณ&#&&&&&&&.&&ณ&#&&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณ&#&&&&&&&.&&ณÿ
ÿฬอออออัออออออออออัออออออออออออัออออออออออออออออออออออออัออออออออออออุออออออออออออุอออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออุออออออออออออตÿ
.begin
  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
  IqSum24 := 0.0;
  IqSum25 := 0.0;
end.
.end
.[f
ÿศอออออฯออออออออออฯออออออออออออฯออออออออออออออออออออออออฯออออออออออออฯออออออออออออฯอออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออฯออออออออออออพÿ
.]f
.}
.endform

#doc
ญจฃ  ฏฎชใฏฎช (ญฅ็ฅโญ ๏ แโเ ญจๆ )
#end
.linkform 'NnBkPZF_23' prototype is 'NnBkPZF'
.NameInList 'ญจฃ  ฏฎชใฏฎช (ญฅ็ฅโญ ๏ แโเ ญจๆ )'
.Group ' ชใฏชจ'
.defo landscape
.P 50
.var
  NPP: longint;
  Sum6 : double;
  Sum7 : double;
  Sum8 : double;
  Sum9 : double;
  Sum10: double;
  Sum11: double;
  Sum12: double;
  Sum13: double;
  Sum14: double;
  Sum15: double;
  Sum16: double;
  Sum17: double;
  Sum18: double;
  Sum18_1: double;
  Sum18_2: double;
  Sum19: double;
  Sum20: double;
  Sum21: double;
  Sum21_1: double;
  Sum21_2: double;
  Sum22: double;
  Sum22_1: double;
  Sum22_2: double;
  Sum23: double;
  Sum24: double;
  Sum24_1: double;
  Sum24_2: double;
  Sum25: double;
  Sum25_1: double;
  Sum25_2: double;

  ImSum6 : double;
  ImSum7 : double;
  ImSum8 : double;
  ImSum9 : double;
  ImSum10: double;
  ImSum11: double;
  ImSum12: double;
  ImSum13: double;
  ImSum14: double;
  ImSum15: double;
  ImSum16: double;
  ImSum17: double;
  ImSum18: double;
  ImSum19: double;
  ImSum20: double;
  ImSum21: double;
  ImSum22: double;
  ImSum23: double;
  ImSum24: double;
  ImSum25: double;

  IqSum6 : double;
  IqSum7 : double;
  IqSum8 : double;
  IqSum9 : double;
  IqSum10: double;
  IqSum11: double;
  IqSum12: double;
  IqSum13: double;
  IqSum14: double;
  IqSum15: double;
  IqSum16: double;
  IqSum17: double;
  IqSum18: double;
  IqSum19: double;
  IqSum20: double;
  IqSum21: double;
  IqSum22: double;
  IqSum23: double;
  IqSum24: double;
  IqSum25: double;
.endvar
.fields
  CommonFormHeader

  CommonFormHeader
.endfields
.[h skip
 ÿ^ÿ                                                                       จแโ @NP@( )
ÿษอออออออออออออออออัอออออออออออออออออออออัออออออออออออออออออออออออออออออัออออออออออออออัออออออออออออออัออออออออออออออัออออออออออออออออัอออออออออออออออัออออออออออออออออัออออออออออัออออออออออัออออออออออัออออออออออัอออออออออปÿ
ÿบ       18        ณ          19         ณ               20             ณ      21      ณ      22      ณ      23      ณ        24      ณ       25      ณ       26       ณ    27    ณ    28    ณ    29    ณ    30    ณ    31   บÿ
ÿวฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤถÿ
.]h
 ÿ^ÿ                                                                       จแโ 1   ( )
ÿีออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออปÿ
ÿณ                                          เจคก ญญ๏ โฎข เiข (ญ  ฌจโญiฉ โฅเจโฎเi๕ “ชเ ๕ญจ โ  iฌฏฎเโญจๅ)                                              ณ              เฎขฅคฅญญ๏ เฎงเ ๅใญชiข ง  ฏเจคก ญi โฎข เจ               บÿ
ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถÿ
ÿณ                                                กฅง ฏเ ข  ขชซ๎็ฅญญ๏ คฎ ฏฎค โชฎขฎฃฎ ชเฅคจโใ                                                          ณญ  ฌจโญiฉ โฅเจโฎเi๕ “ชเ ๕ญจณ      iฌฏฎเโฎข ญi (ค ญi ฏเฎ ฎฏซ โใ )   บÿ
ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถÿ
ÿณ                  โฎข เจ, ้ฎ ขiคญฎแ๏โ์แ๏ คฎ แชซ คใ ข ซฎขจๅ ขจโเ โ โ  ฏiคซ๏ฃ ๎โ์  ฌฎเโจง ๆi๕                        ณ  โฎข เจ, ้ฎ ญฅ ขiคญฎแ๏โ์แ๏ คฎ  ณ                ณ          ณ          ณ  ฎไฎเฌซฅญญ๏ ฎฏซ โจ ขฅชแฅซฅฌ   บÿ
ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ   แชซ คใ ข ซฎขจๅ ขจโเ โ โ  ญฅ  ณ  ไฎเฌ  ฎฏซ โจ  ณ          ณ          รฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถÿ
ÿณ                   ญ  ฌจโญiฉ โฅเจโฎเi๕ “ชเ ๕ญจ                        ณ                  iฌฏฎเโญi                  ณ   ฏiคซ๏ฃ ๎โ์  ฌฎเโจง ๆi๕       ณ   (เฎง/เ ๅ.,   ณ   ค โ    ณ   ค โ    ณ          ณ   ค โ  ฏฎฃ ่ฅญญ๏   บÿ
ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด    ก เโฅเ,     ณ  ฎฏซ โจ  ณ  ฎฏซ โจ  ณ   ค โ    ณ      ขฅชแฅซ๏       บÿ
ÿณง  งคiฉแญฅญญ๏ ณ                      กฅง                        ณ  แฏซ ็ฅญฎ ณ           ณงขiซ์ญฅญฎ ขiค ณ    ญ  ฌiโญiฉ   ณ               ณ    ฃฎโiขช ,    ณ          ณง เฎง/เ ๅ.ณ  ขจค ็i  รฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤถÿ
ÿณญฅฎฏฎค โชฎขใข ญจๅรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด ฏเจ ฌจโญฎฌใ  ณ   แฏซ ็ฅญฎ   ณฎฏฎค โชใข ญญ๏ ณ    โฅเจโฎเi๕   ณ  iฌฏฎเโฎข ญi  ณ     iญ่ฅ)      ณ          ณ          ณ  ขฅชแฅซ๏ ณขช ง ญ  ใ ณ         บÿ
ÿณ ฎฏฅเ ๆiฉ (ฏ.3.2,ณ คซ๏ งคiฉแญฅญญ๏ ฎฏฎ- ณคซ๏ งคiฉแญฅญญ๏ ญฅฎฏฎค โชฎขใข -ณ  ฎไฎเฌซฅญญi  ณ   ขฅชแฅซฅฌ   ณ (ฏ.5.1, 5.3, ณ     “ชเ ๕ญจ    ณ               ณ                ณ          ณ          ณ          ณ ขฅชแฅซi  ณไ ชโจ็ญ  บÿ
ÿณ   แโ.3, แโ.5)   ณค โชฎขใข ญจๅ ฎฏฅเ ๆจฉณญจๅ ฎฏฅเ ๆiฉ(ฏ.3.2,แโ.3,แโ.5) ณ              ณ              ณ    แโ.5)     ณ                ณ               ณ                ณ          ณ          ณ          ณ          ณ         บÿ
ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤถÿ
ÿณ       18        ณ          19         ณ               20             ณ      21      ณ      22      ณ      23      ณ        24      ณ       25      ณ       26       ณ    27    ณ    28    ณ    29    ณ    30    ณ    31   บÿ
ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤถÿ
.begin
   NPP := 0;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;
  ImSum24 := 0.0;
  ImSum25 := 0.0;

  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
  IqSum24 := 0.0;
  IqSum25 := 0.0;
end.
.{CheckEnter NnBkPrZkMain
.begin
   NPP := NPP + 1;
! 104.1876   Sum25_1 := if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr, S1 + S4, 0.0);
   Sum25_1 := if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr, S1 + S4+S10+S11, 0.0);

   Sum25_2 := if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr, S2 + S5, 0.0);
   Sum25 := Sum25_1 + Sum25_2;
! 104.1876   Sum24_1 := if (IsNotInclInNalKred and IsNotInclInValRas and not IsComeFromNotUkr, S1 + S4, 0.0);
   Sum24_1 := if (IsNotInclInNalKred and IsNotInclInValRas and not IsComeFromNotUkr, S1 + S4+S10+S11, 0.0);
   Sum24_2 := if (IsNotInclInNalKred and IsNotInclInValRas and not IsComeFromNotUkr, S2 + S5, 0.0);
   Sum24 := Sum24_1 + Sum24_2;
! 104.1876   Sum23 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and (IsForNotOblOpr or IsFreeNalObl), S10 + S11, 0.0);
   Sum23 := 0.0;
   if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr)
    {
      Sum23 := S10;
      if (IsForNotOblOpr or IsFreeNalObl)
        Sum23:= Sum23 + S11
    }
   Sum22_1 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and IsImpWithNalVeks and IsForNotOblOpr, S1 + S4, 0.0);
   Sum22_2 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and IsImpWithNalVeks and IsForNotOblOpr, S2 + S5, 0.0);
   Sum22 := Sum22_1 + Sum22_2;
   Sum21_1 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and not IsImpWithNalVeks and IsForNotOblOpr, S1 + S4, 0.0);
   Sum21_2 := if (IsNotInclInNalKred and not IsNotInclInValRas and IsComeFromNotUkr and not IsImpWithNalVeks and IsForNotOblOpr, S2 + S5, 0.0);
   Sum21 := Sum21_1 + Sum21_2;
   Sum20 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr and IsForNotOblOpr, S10 + S11, 0.0);
   Sum19 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr and not IsForNotOblOpr, S10 + S11, 0.0);
   Sum18_1 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr, S1 + S4, 0.0);
   Sum18_2 := if (IsNotInclInNalKred and not IsNotInclInValRas and not IsComeFromNotUkr, S2 + S5, 0.0);
   Sum18 := Sum18_1 + Sum18_2;
   Sum17 := if (not IsNotInclInNalKred, S2 + S5, 0.0);
   Sum16 := if (not IsNotInclInNalKred and IsRK, S1 + S4, 0.0);
!   Sum15 := ;
   Sum14 := if (not IsNotInclInNalKred and IsComeFromNotUkr, S1 + S4, 0.0);
   Sum13 := if (not IsNotInclInNalKred and not IsComeFromNotUkr, S1 + S4, 0.0);
   Sum12 := Sum17 + Sum18_2 + Sum21_2 + Sum22_2 + Sum24_2 + Sum25_2;
   Sum11 := Sum13 + Sum14 + Sum15 + Sum16 + Sum18_1 + Sum19 + Sum20 + Sum21_1 + Sum22_1 + Sum23 + Sum24_1 + Sum25_1;
   Sum10 := if (IsWorkFromNerez, S2, 0.0);
! 104.1876   Sum9 := if (IsWorkFromNerez, S1, 0.0);
   Sum9 := 0.0;
   if (IsWorkFromNerez)
    {
      Sum9 := S1;
      if (IsNotInclInNalKred and IsNotInclInValRas and IsComeFromNotUkr)
       {
         Sum9 := Sum9+S10+S11;
       }
    };

   Sum8 := if (IsImpWithNalVeks, S2, 0.0);
   Sum7 := if (IsImpWithNalVeks, S1, 0.0);
!   Sum6 := ;

  ImSum6  := ImSum6 + Sum6;
  ImSum7  := ImSum7 + Sum7;
  ImSum8  := ImSum8 + Sum8;
  ImSum9  := ImSum9 + Sum9;
  ImSum10 := ImSum10 + Sum10;
  ImSum11 := ImSum11 + Sum11;
  ImSum12 := ImSum12 + Sum12;
  ImSum13 := ImSum13 + Sum13;
  ImSum14 := ImSum14 + Sum14;
  ImSum15 := ImSum15 + Sum15;
  ImSum16 := ImSum16 + Sum16;
  ImSum17 := ImSum17 + Sum17;
  ImSum18 := ImSum18 + Sum18;
  ImSum19 := ImSum19 + Sum19;
  ImSum20 := ImSum20 + Sum20;
  ImSum21 := ImSum21 + Sum21;
  ImSum22 := ImSum22 + Sum22;
  ImSum23 := ImSum23 + Sum23;
  ImSum24 := ImSum24 + Sum24;
  ImSum25 := ImSum25 + Sum25;
end.
.fields
  Sum18 Sum19 Sum20 Sum21 Sum22 Sum23 Sum24 Sum25
   SubStr(FormRascTxt,1,16)
   if(longint(dOpl)=0 or IsComeFromNotUkr,'',DateToStr(dOpl,'DD/MM/YYYY'))
   if(longint(dOpl)=0 or not IsComeFromNotUkr,'',DateToStr(dOpl,'DD/MM/YYYY'))
.endfields
!ÿรฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤถÿ
ÿณ&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&.&&ณ@@@@@@@@@@@@@@@@ณ@~@@@@@@@@ณ@~@@@@@@@@ณ          ณ          ณ         บÿ
.if NnTotalMonth
.fields
  ImSum18 ImSum19 ImSum20 ImSum21 ImSum22 ImSum23 ImSum24 ImSum25
.endfields
ÿฦอออออออออออออออออุอออออออออออออออออออออุออออออออออออออออออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออออุอออออออออออออออุออออออออออออออออุออออออออออุออออออออออุออออออออออุออออออออออุอออออออออนÿ
ÿณ&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&.&&ณ        X       ณ     X    ณ     X    ณ          ณ          ณ         บÿ
ÿฦอออออออออออออออออุอออออออออออออออออออออุออออออออออออออออออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออออุอออออออออออออออุออออออออออออออออุออออออออออุออออออออออุออออออออออุออออออออออุอออออออออนÿ
.begin
  IqSum6  := IqSum6 + ImSum6;
  IqSum7  := IqSum7 + ImSum7;
  IqSum8  := IqSum8 + ImSum8;
  IqSum9  := IqSum9 + ImSum9;
  IqSum10 := IqSum10 + ImSum10;
  IqSum11 := IqSum11 + ImSum11;
  IqSum12 := IqSum12 + ImSum12;
  IqSum13 := IqSum13 + ImSum13;
  IqSum14 := IqSum14 + ImSum14;
  IqSum15 := IqSum15 + ImSum15;
  IqSum16 := IqSum16 + ImSum16;
  IqSum17 := IqSum17 + ImSum17;
  IqSum18 := IqSum18 + ImSum18;
  IqSum19 := IqSum19 + ImSum19;
  IqSum20 := IqSum20 + ImSum20;
  IqSum21 := IqSum21 + ImSum21;
  IqSum22 := IqSum22 + ImSum22;
  IqSum23 := IqSum23 + ImSum23;
  IqSum24 := IqSum24 + ImSum24;
  IqSum25 := IqSum25 + ImSum25;

  ImSum6  := 0.0;
  ImSum7  := 0.0;
  ImSum8  := 0.0;
  ImSum9  := 0.0;
  ImSum10 := 0.0;
  ImSum11 := 0.0;
  ImSum12 := 0.0;
  ImSum13 := 0.0;
  ImSum14 := 0.0;
  ImSum15 := 0.0;
  ImSum16 := 0.0;
  ImSum17 := 0.0;
  ImSum18 := 0.0;
  ImSum19 := 0.0;
  ImSum20 := 0.0;
  ImSum21 := 0.0;
  ImSum22 := 0.0;
  ImSum23 := 0.0;
  ImSum24 := 0.0;
  ImSum25 := 0.0;
end.
.end
.if NnTotalQuartal
.fields
  IqSum18 IqSum19 IqSum20 IqSum21 IqSum22 IqSum23 IqSum24 IqSum25
.endfields
ÿฦอออออออออออออออออุอออออออออออออออออออออุออออออออออออออออออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออออุอออออออออออออออุออออออออออออออออุออออออออออุออออออออออุออออออออออุออออออออออุอออออออออนÿ
ÿณ&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&&&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&.&&ณ&&&&&&&&&&&&&.&&ณ&&&&&&&&&&&&.&&ณ        X       ณ     X    ณ     X    ณ     X    ณ     X    ณ    X    บÿ
ÿฦอออออออออออออออออุอออออออออออออออออออออุออออออออออออออออออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออุออออออออออออออออุอออออออออออออออุออออออออออออออออุออออออออออุออออออออออุออออออออออุออออออออออุอออออออออนÿ
.begin
  IqSum6  := 0.0;
  IqSum7  := 0.0;
  IqSum8  := 0.0;
  IqSum9  := 0.0;
  IqSum10 := 0.0;
  IqSum11 := 0.0;
  IqSum12 := 0.0;
  IqSum13 := 0.0;
  IqSum14 := 0.0;
  IqSum15 := 0.0;
  IqSum16 := 0.0;
  IqSum17 := 0.0;
  IqSum18 := 0.0;
  IqSum19 := 0.0;
  IqSum20 := 0.0;
  IqSum21 := 0.0;
  IqSum22 := 0.0;
  IqSum23 := 0.0;
  IqSum24 := 0.0;
  IqSum25 := 0.0;
end.
.end
.[f
ÿิอออออออออออออออออฯอออออออออออออออออออออฯออออออออออออออออออออออออออออออฯออออออออออออออฯออออออออออออออฯออออออออออออออฯออออออออออออออออฯอออออออออออออออฯออออออออออออออออฯออออออออออฯออออออออออฯออออออออออฯออออออออออฯอออออออออผÿ
.]f
.}
.endform