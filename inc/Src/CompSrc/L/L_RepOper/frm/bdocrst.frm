//------------------------------------------------------------------------------
//                                                      (c) ª®à¯®à æ¨ï ƒ « ªâ¨ª 
// ƒ « ªâ¨ª  5.71 - âç¥âë ª®­âãà  «®£¨áâ¨ª¨
// ”®à¬  ¤«ï ¨¥à àå¨ç¥áª¨å à¥¥áâà®¢ „
//------------------------------------------------------------------------------

#doc
”®à¬  ¤«ï ¨¥à àå¨ç¥áª¨å à¥¥áâà®¢ „
#end
.form 'BDOCRST'
.hide
.fields
 wPrintForm    : word    //01
 strReestrName : string  //01a
 boGrpDOActive : boolean //02
 pVidDoc       : word    //03
 MyOrg         : string  //04
 MyInn         : string  //05
 Currency      : string  //06
 KontrAgent    : string  //07
 dBegin        //: date    //08
 dEnd          //: date    //09
 Descr         : string  //10
 GrDescr       : string  //10a
 Sost          : string  //11
 OtvPodr       : string  //11a
 GroupDO       : string
 flgFilters    : word    //12 - UserDeskRep.ResWord[20]
 wFiltOnExecDoc: word    //13
 flgRepStyles  : word    //14
 wFiltPaidDoc  : word    //15
 ValNDE        : string  //16
 ValTar        : string  //17
 DogovorNum    : string  //18
.endfields
           1
 1a23456789.0a1¡234567
 ^^^^^^^^^^ ^^^^^^^^^^
 ^^
.{ //main cycle
.{ CheckEnter GroupHeader
.fields
 GroupHeaderName : string  //19
 GroupSum2       : double  //20
 GroupSumV2      : double  //21
 GroupPercentNDE : double  //22
.endfields
 1  2
 89.01
 ^^ ^^
.} // CheckEnter GroupHeader
.fields
  ccBaseDoc : comp
  CurrencyDO : string      //37
!  sumPaidNDE : double      //38
 .endfields
  ccBaseDoc - ^
  CurrencyDO - ^
!  sumPaidNDE - ^
.if PrnBDocSpec
.end //if
.fields
  DocIt     : double        //49
  DocItV    : double        //50
  DocSum    : double        //51
  DocBez20  : double        //52
  DocNDS20  : double        //53
  DocBez10  : double        //54
  DocNDS10  : double        //55
  DocNetNDS : double        //56
  DocPaidNDE: double        //56a
  DocBez18  : double        //56b
  DocNDS18  : double        //56c
 .endfields
  4.5
  9.0123456abc
  ^ ^^^^^^^^^^
.{ CheckEnter GroupTotal
.fields
  GroupTotalName : string  //57
  GroupSum       : double  //58
  GroupSumV      : double  //59
  GroupDocSum    : double  //60
  GroupDocBez20  : double  //61
  GroupDocNDS20  : double  //62
  GroupDocBez10  : double  //63
  GroupDocNDS10  : double  //64
  GroupDocNetNDS : double  //65
  GroupDocPaidNDE: double  //66
  GroupDocBez18  : double  //66a
  GroupDocNDS18  : double  //66b
.endfields
 5   6
 789.0123456ab
 ^^^ ^^^^^^^^^
.} // CheckEnter GroupTotal
.} // end of main cycle
.if PrintAllSums
.fields
  sAllTotalsHeader : string //67
.endfields
67
 ^
.end //if
.endform
!
!
!
#doc
……‘’ „Š“Œ…’‚-‘‚€ˆ‰
#end
.linkform 'BDOCRST_Reestr01' prototype is 'BDOCRST'
!à¥¥áâàë „ á pVidDoc = 201, 211, 510 (‘ ‘…–ˆ”ˆŠ€–ˆ…‰)
.group '……‘’ „'
.p 55
.defo landscape
.NameInList '……‘’ „Š“Œ…’‚-‘‚€ˆ‰'
! ----------------------------------------------------------------------
#include vBDReest.frn
! ----------------------------------------------------------------------
.var
  boIsFilter    : Boolean;       //ä« £ ãáâ ­®¢«¥­­ëå ä¨«ìâà®¢
  strMustPaid   : string;
  strKolRes     : string;
  strReeItV     : string;
  strGroupSumV  : string;
!----- ¨â®£®¢ë¥ áã¬¬ë à¥¥áâà ---
  ReeIt, ReeItV : double;
!-------------------------------
  strWarning    : string;
  strNameDoc    : string;
  strRekvKontr  : string;
  strCurrencyDO : string;
  boNeedSpecif,
  boCalcInValOtch  : boolean;
.endvar
.begin
 boNeedSpecif := ((flgRepStyles and 1 ) <> 0);
 boCalcInValOtch := ((flgRepStyles and 2) <> 0);
!----- ¨­¨æ¨ «¨§ æ¨ï ¨â®£®¢ëå áã¬¬ à¥¥áâà ---
 ReeIt     := 0;
 ReeItV    := 0;
!--------------------------------------------
 strWarning := if( wPrintForm = 1, '***** ‚ˆŒ€ˆ…! ……‘’ ‹“—…, €—ˆ€Ÿ ‘ ’…Š“™…ƒ “‚Ÿ „……‚€ ***** „‹Ÿ ‹“—…ˆŸ ‹ƒ ……‘’€ ‚‘‹œ‡“‰’…‘œ <CTRL>+<P> *****', '');
end.
.fields
 CommonFormHeader
 strWarning
.endfields
ÿ^   ^
.{ ?internal; (pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510);
.fields
 strReestrName
.endfields
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}// .{ ?internal; (pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510);
.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510);
.fields
 strReestrName
.endfields
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}// .{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510);
.{ ?INTERNAL; ((flgFilters and word(32)) = 32);
.fields
 Sost
.endfields
      ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(4)) = 4);
.Fields
 dBegin
 dEnd
.EndFields
      §  ¯¥à¨®¤ á ÿ^ÿ  ¯®  ÿ^ÿ
.}
!------------------------------------------------------------------------
.begin
 if ( ((flgFilters and  word(1))  =  1)
   OR ((flgFilters and  word(2))  =  2)
   OR ((flgFilters and  word(8))  =  8)
   OR ((flgFilters and word(16))  = 16)
   OR ((flgFilters and word(64))  = 64)
   OR ((flgFilters and word(1024))= 1024)
    ) boIsFilter := True
 else boIsFilter := False;
end.
.{ ?INTERNAL; boIsFilter;
      ˆá¯®«ì§ãîâáï ä¨«ìâàë:
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(1) ) = 1));
.Fields
 Currency
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(2) ) = 2));
.Fields
 KontrAgent
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(8) ) = 8));
.Fields
 Descr
.EndFields
      ¯® ¤¥áªà¨¯â®àã - ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(16) ) = 16));
.Fields
 GrDescr
.EndFields
      ¯® £àã¯¯¥ ¤¥áªà¨¯â®à®¢ - ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(64) ) = 64));
.Fields
 OtvPodr
.EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(128) ) = 128));
.Fields
 GroupDO
.EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(1024) ) = 1024));
.Fields
 DogovorNum
.EndFields
      ÿ^ÿ
.}
.} // ?INTERNAL; ( (flgFilters and word(11)) > 0 );
.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.fields ValNDE ValTar .endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
      „ â  ¨ ­®¬¥à      ³                                  ³  ‘à®ª   ³ ¥®¡å®¤¨¬®³                 ˆâ®£®
       ¤®ªã¬¥­â -       ³            Š®­âà £¥­â            ³¤¥©áâ¢¨ï,³®¯« â¨âì ¤®³ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
       ®á­®¢ ­¨ï        ³                                  ³  ¤­¥©   ³           ³     ¢ @@@@@@      ³     ¢ @~@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; (not boNeedSpecif) and (not boCalcInValOtch);
.fields ValNDE ValTar .endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ
      „ â  ¨ ­®¬¥à      ³                                  ³  ‘à®ª   ³ ¥®¡å®¤¨¬®³                 ˆâ®£®                 ³
       ¤®ªã¬¥­â -       ³            Š®­âà £¥­â            ³¤¥©áâ¢¨ï,³®¯« â¨âì ¤®³ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³  ‚ «îâ  „
       ®á­®¢ ­¨ï        ³                                  ³  ¤­¥©   ³           ³     ¢ @@@@@@      ³     ¢ @~@@@@@@@@  ³
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (not boNeedSpecif) and (not boCalcInValOtch);
!------------------------------------------------------------------------
.{ //MAIN CYCLE ON BASEDOC's
!------------------------------------------------------------------------
.[h SKIP
.{ ?internal; (pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510);
.fields
 CommonFormHeader
 strReestrName
.endfields

 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@

.} //.{ ?internal; (pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510);
.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510);
.fields
 CommonFormHeader
 strReestrName
.endfields

 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@

.} //.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510);
.]h //HEADER end
!------------------------------------------------------------------------
.{ CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4);
.Fields GroupHeaderName:'T:-' .EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}//CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4);
.{ table 'vBaseDocRee.BaseDoc'
.begin
  strMustPaid := if(  ( longint(StepDoc.dOplMax) = 0)
                     , ''
                     , ', ®¯« â¨âì ¤® ' + DateToStr( StepDoc.dOplMax, 'DD/MM/YYYY' )
                    );
   strRekvKontr := if( boNeedSpecif, ', ª®­âà £¥­â: ', '' ) + KatOrg.Name + if( Trim( KatOrg.Tel ) <> '' , ', â/ä.' + KatOrg.Tel, '' );
   strCurrencyDO := if( boCalcInValOtch, '', ', ¢ «îâ  „: ' + CurrencyDO );
end.
.{ ?internal; boNeedSpecif;
.fields
!  DecNo
   PrintNumber( vBaseDocRee.BaseDoc.Descr, vBaseDocRee.BaseDoc.nodoc )
!  dDoc
   BaseDoc.dDoc
!  Koldn
   BaseDoc.KolDn
   strMustPaid
   strRekvKontr
   strCurrencyDO
 .endfields
 „ Nÿ ^ÿ ®âÿ ^ÿ, ¤¥©áâ¢¨â¥«¥­ÿ ^ÿ ¤­.^^^
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.fields
!   dDoc
   BaseDoc.dDoc
!   DecNo
   PrintNumber( vBaseDocRee.BaseDoc.Descr, vBaseDocRee.BaseDoc.nodoc )
   strRekvKontr
!   Koldn
   BaseDoc.Koldn
   StepDoc.dOplMax
   DocIt
   DocItV
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@ @~@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; (not boNeedSpecif) and (not boCalcInValOtch);
.fields
!   dDoc
   BaseDoc.dDoc
!   DecNo
   PrintNumber( vBaseDocRee.BaseDoc.Descr, vBaseDocRee.BaseDoc.nodoc )
   strRekvKontr
!   Koldn
   BaseDoc.Koldn
   StepDoc.dOplMax
   DocIt
   DocItV
   CurrencyDO
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@ @~@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& @~@@@@@@@@@@@
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; ((pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510) and boNeedSpecif);
.fields
  ValNDE
  ValTar
.endfields
                   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ
                         ¨¬¥­®¢ ­¨¥         ³®¬¥­ª« âãà­ë©³ …¤.  ³  Š®«¨ç¥áâ¢®  ³            ‚ @@@@@@                ³              ‚ @~@@@@@@@@          ³  Š®«¨ç¥áâ¢®  ³   ‘à®ª
                       â®¢ à /ãá«ã£¨         ³    ­®¬¥à     ³ ¨§¬. ³              ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   à¥§¥à¢     ³ ¤¥©áâ¢¨ï
                                             ³              ³      ³              ³      –¥­       ³   ‘â®¨¬®áâì       ³      –¥­       ³   ‘â®¨¬®áâì       ³              ³  à¥§¥à¢ 
                   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; ((pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510) and boNeedSpecif);
.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510 and boNeedSpecif);
.fields
  ValNDE
  ValTar
.endfields
                   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                           ¨¬¥­®¢ ­¨¥       ³®¬¥­ª« âãà­ë©³ …¤.  ³  Š®«¨ç¥áâ¢®  ³            ‚ @@@@@@                ³             ‚ @~@@@@@@@@
                         â®¢ à /ãá«ã£¨       ³    ­®¬¥à     ³ ¨§¬. ³              ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                                             ³              ³      ³              ³      –¥­       ³   ‘â®¨¬®áâì       ³      –¥­       ³   ‘â®¨¬®áâì
                   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510 and boNeedSpecif);
.if PrnBDocSpec
.{ table 'vBaseDocRee.SpStep'
.begin
#include vBDProc.frn
end.
.{ ?internal; (pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510);
.fields
!   NameMC
    if( SpStep.PrMC = 1, KatMC.Name, KatUsl.Name )
!   Nomenkl
    if( SpStep.PrMC = 1, KatMC.BarKod, KatUsl.Kod )
!   Ed
!    KatOtpEd.Name
    KatOtpEd.Abbr
!   Kol
    SpStep.Kol
!   Price
    dblPriceNDE
!   Summa
    dblSumNDE
!   VPrice
    dblPriceVal
!   VSumma
    dblSumVal
.endfields
.fields
!   strKolRes
    SpStep.Reserv
!   SrokRes
    SpStep.SrokRes
.endfields
                   @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @~@@@@ &'&&&&&&&&.&&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&.&&& @@@@@@@@@@@
.} //.{ ?internal; (pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510);
.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510);
.fields
!   NameMC
    if( SpStep.PrMC = 1, KatMC.Name, KatUsl.Name )
!   Nomenkl
    if( SpStep.PrMC = 1, KatMC.BarKod, KatUsl.Kod )
!   Ed
    KatOtpEd.Abbr
!   Kol
    SpStep.Kol
!   Price
    dblPriceNDE
!   Summa
    dblSumNDE
!   VPrice
    dblPriceVal
!   VSumma
    dblSumVal
.endfields
                   @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @~@@@@ &'&&&&&&&&.&&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&
.} //.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510);
.} //table
.end //if
.} //table BaseDoc
.begin
  ReeIt     := ReeIt  + DocIt;
  ReeItV    := ReeItV + DocItV;
end.
.{ ?internal; boNeedSpecif;
                   ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
  DocIt
  DocItV
.endfields
                ÿ   ˆâ®£® ¯® ¤®ªã¬¥­âã-®á­®¢ ­¨î:                                                    &'&&&&&&&&&&&&&&.&&                  &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ CheckEnter GroupTotal; ((flgRepStyles and 4) = 4);
.begin
  strGroupSumV := if( boCalcInValOtch, DoubleToStr( GroupSumV, '\2p[|-]36`666`666`666`666`666.88' ),'');
end.
.{ ?internal; boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&&                  &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; not boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; not boNeedSpecif;
.} //CheckEnter GroupTotal; ((flgRepStyles and 4) = 4);
.} //MAIN CYCLE ON BASEDOC's
.begin
  strReeItV := if(((flgRepStyles and 2 )=2), DoubleToStr( ReeItV, '\2p[|-]36`666`666`666`666`666.88' ),'');
end.
.if PrintAllSums
.{ ?internal; boNeedSpecif;
.{ ?internal; ((pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510) and boNeedSpecif);
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.}//.{ ?internal; ((pVidDoc = 201 or pVidDoc = 211 or pVidDoc = 510) and boNeedSpecif);
.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510 and boNeedSpecif);
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.}//.{ ?internal; (pVidDoc <> 201 and pVidDoc <> 211 and pVidDoc <> 510 and boNeedSpecif);
.fields
 sAllTotalsHeader
 ReeIt
 strReeItV
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&&&&.&&                  &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; NOT boNeedSpecif;
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
 sAllTotalsHeader
 ReeIt
 strReeItV
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; NOT boNeedSpecif;
.end//if
ÿ
.endform
!
!
!
#doc
Šˆƒ€ Š“Š/„€†
#end
.linkform 'BDOCRST_Book' prototype is 'BDOCRST'
.p 55
.defo landscape
.group 'Šˆƒˆ'
.NameInList 'Šˆƒ€ Š“Š/„€†'
! ----------------------------------------------------------------------
#include vBDReest.frn
! ----------------------------------------------------------------------
.var
       boIsFilter  : Boolean;       //ä« £ ãáâ ­®¢«¥­­ëå ä¨«ìâà®¢
       strBookName : string;
       strOrgType1 : string;
       strOrgType2 : string;
       strMargin   : string;
       strMarginLine:string;
!----- ¨â®£®¢ë¥ áã¬¬ë à¥¥áâà ---
       ADocSum, ADocBez20, ADocNDS20, ADocBez10, ADocNDS10,
       ADocBez18, ADocNDS18, ADocNetNDS : double;
!-------------------------------
       strWarning    : string;
       strFiltPaidDoc: string;
       boFiltPaidActive : boolean;
!-------------------------------
.endvar
.begin
!----- ¨­¨æ¨ «¨§ æ¨ï ¨â®£®¢ëå áã¬¬ à¥¥áâà ---
 boFiltPaidActive := (( flgRepStyles and word(8) ) = 8 ) and ( wFiltPaidDoc <> 0 );
 ADocSum    := 0;
 ADocBez20  := 0;
 ADocNDS20  := 0;
 ADocBez18  := 0;
 ADocNDS18  := 0;
 ADocBez10  := 0;
 ADocNDS10  := 0;
 ADocNetNDS := 0;
 strWarning := if( wPrintForm = 1, '***** ‚ˆŒ€ˆ…! ……‘’ ‹“—…, €—ˆ€Ÿ ‘ ’…Š“™…ƒ “‚Ÿ „……‚€ ***** „‹Ÿ ‹“—…ˆŸ ‹ƒ ……‘’€ ‚‘‹œ‡“‰’…‘œ <CTRL>+<P> *****', '');
 if ( pVidDoc >= 101 ) and ( pVidDoc <= 111 )
   strBookName := 'Šˆƒ€ Š“Š';
 else
   strBookName := 'Šˆƒ€ „€†';
 if boFiltPaidActive
 {
   strFiltPaidDoc := '';
   if ( (wFiltPaidDoc and 1) <> 0 )
     strFiltPaidDoc := 'ç áâ¨ç­® ®¯« ç¥­­ë¥ „';
   if ( (wFiltPaidDoc and 2) <> 0 )
     strFiltPaidDoc := if (strFiltPaidDoc <> '',
                             strFiltPaidDoc + ', ',
                             ''
                          ) + '¯®«­®áâìî ®¯« ç¥­­ë¥ „';
   if ( (wFiltPaidDoc and 4) <> 0 )
     strFiltPaidDoc := if (strFiltPaidDoc <> '',
                             strFiltPaidDoc + ', ',
                             ''
                          )  + '­¥®¯« ç¥­­ë¥ „';
 }
end.
.fields
  CommonFormHeader
  strWarning
.endfields
ÿ^   ^
.fields
  strBookName
.endfields
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.{ ?INTERNAL; ( pVidDoc >= 101 ) and ( pVidDoc <= 111 );
.fields
  MyOrg
  MyINN
.endfields
     «®£®¯« â¥«ìé¨ª -  ¯®ªã¯ â¥«ì ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
    ˆ¤¥­â¨ä¨ª æ¨®­­ë© ­®¬¥à ­ «®£®¯« â¥«ìé¨ª  - ¯®ªã¯ â¥«ï ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.} //?INTERNAL; ( pVidDoc >= 101 ) and ( pVidDoc <= 111 );
.{ ?INTERNAL; ( pVidDoc >= 201 ) and ( pVidDoc <= 211 );
.fields
  MyOrg
  MyINN
.endfields
     «®£®¯« â¥«ìé¨ª - ¯à®¤ ¢¥æ ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
    ˆ¤¥­â¨ä¨ª æ¨®­­ë© ­®¬¥à ­ «®£®¯« â¥«ìé¨ª  - ¯à®¤ ¢æ  ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.} //?INTERNAL; ( pVidDoc >= 201 ) and ( pVidDoc <= 211 );
.{ ?INTERNAL; ((flgFilters and word(4)) = 4);
.fields dBegin dEnd .endfields
    à®¤ ¦  §  ¯¥à¨®¤ á ÿ@@@@@@@@@@@ÿ £. ¯® ÿ@@@@@@@@@@@ÿ £.
.}
!------------------------------------------------------------------------
.begin
 if ( ((flgFilters and  word(1))  =  1)
   OR ((flgFilters and  word(2))  =  2)
   OR ((flgFilters and  word(8))  =  8)
   OR ((flgFilters and word(16))  = 16)
   OR ((flgFilters and word(64))  = 64)
   OR ((flgFilters and word(128))  = 128)
    ) boIsFilter := True
 else boIsFilter := False;
end.
.{ ?INTERNAL; ( ( boIsFilter ) or (((flgRepStyles and word(8) ) = 8) and ( wFiltPaidDoc <> 0 )) );
    ˆá¯®«ì§ãîâáï ä¨«ìâàë:
.{ ?INTERNAL; ((flgFilters and word(1) ) = 1);
.Fields Currency .EndFields
    ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(2) ) = 2);
.Fields KontrAgent .EndFields
    ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(8) ) = 8);
.Fields Descr .EndFields
    ¯® ¤¥áªà¨¯â®àã - ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(16) ) = 16);
.Fields GrDescr .EndFields
    ¯® £àã¯¯¥ ¤¥áªà¨¯â®à®¢ - ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(64) ) = 64);
.Fields OtvPodr .EndFields
    ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(128) ) = 128);
.Fields
 GroupDO
.EndFields
    ÿ^ÿ
.}
.{ ?INTERNAL; (boFiltPaidActive);
.Fields strFiltPaidDoc .EndFields
    ¯® á®áâ®ï­¨î ®¯« ç¥­­®áâ¨ - ÿ^ÿ
.} // ?INTERNAL;
.} // ?INTERNAL;
.{ ?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ „ â  ¨ ­®¬¥à     ³  ¨¬¥­®¢ ­¨¥      ³ˆ¤¥­â¨ä¨-³„ â       ³   ‚á¥£® ¯à®¤ ¦,³                                                       ‚ â®¬ ç¨á«¥                                                            ³
   ³ ¤®ªã¬¥­â -       ³ ¯®ªã¯ â¥«ï        ³ª æ¨®­-  ³®¯« âë    ³   ¢ª«îç ï „‘  ³                                                                                                                              ³
   ³ ®á­®¢ ­¨ï        ³                   ³­ë©      ³¤®ªã¬¥­â -³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³                  ³                   ³­®¬¥à    ³®á­®¢ ­¨ï ³                ³                         ¯à®¤ ¦¨, ®¡« £ ¥¬ë¥ ­ «®£®¬                                           ³        ¯à®¤ ¦¨, ­¥           ³
   ³                  ³                   ³¯®ªã¯ -  ³          ³                ³                                 ¯® áâ ¢ª¥                                                     ³      ®¡« £ ¥¬ë¥ ­ «®£®¬      ³
   ³                  ³                   ³â¥«ï     ³          ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³                  ³                   ³         ³          ³                ³        18 ¯à®æ¥­â®¢           ³          10 ¯à®æ¥­â®¢         ³          20 ¯à®æ¥­â®¢         ³     ¢á¥£®     ³   ¨§ ­¨å     ³
   ³                  ³                   ³         ³          ³                ³             (5)               ³                (6)            ³                (7)            ³               ³   íªá¯®àâ    ³
   ³                  ³                   ³         ³          ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³                  ³                   ³         ³          ³                ³   áâ®¨¬®áâì   ³     áã¬¬      ³   áâ®¨¬®áâì   ³     áã¬¬      ³   áâ®¨¬®áâì   ³     áã¬¬      ³               ³              ³
   ³                  ³                   ³         ³          ³                ³    ¯à®¤ ¦     ³      „‘      ³    ¯à®¤ ¦     ³      „‘      ³    ¯à®¤ ¦     ³      „‘      ³               ³              ³
   ³                  ³                   ³         ³          ³                ³   ¡¥§ „‘     ³               ³   ¡¥§ „‘     ³               ³   ¡¥§ „‘     ³               ³               ³              ³
   ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³        (1)       ³        (2)        ³   (3)   ³   (3 )   ³       (4)      ³     (5 )      ³     (5¡)      ³     (6 )      ³     (6¡)      ³     (7 )      ³     (7¡)      ³      (8)      ³     (8 )     ³
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.}
.{ ?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³ „ â  ¨ ­®¬¥à     ³„ â       ³„ â       ³„ â       ³  ¨¬¥­®¢ ­¨¥      ³ˆ¤¥­â¨ä¨-³ ‚á¥£® ¯®ªã¯®ª, ³                                               ‚ â®¬ ç¨á«¥                                                ³
   ³ ¤®ªã¬¥­â -       ³¯®áâã¯«¥- ³®¯« âë    ³®¯à¨å®¤®- ³ ¯®áâ ¢é¨ª         ³ª æ¨®­-  ³  ¢ª«îç ï „‘   ³                                                                                                          ³
   ³ ®á­®¢ ­¨ï        ³«¥­¨ï     ³¤®ªã¬¥­â -³¢ ­¨ï     ³                   ³­ë© ­®¬¥à³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³                  ³¤®ªã¬¥­â -³®á­®¢ ­¨ï ³­ ª« ¤­®© ³                   ³¯®áâ ¢é¨-³                ³                                 ¯®ªã¯ª¨, ®¡« £ ¥¬ë¥ ­ «®£®¬                             ³¯®ªã¯ª¨, ­¥ ®¡- ³
   ³                  ³®á­®¢ ­¨ï ³          ³          ³                   ³ª        ³                ³                                         ¯® áâ ¢ª¥                                       ³« £ ¥¬ë¥ ­ «®£®¬³
   ³                  ³¯®áâ ¢é¨ª ³          ³          ³                   ³         ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³                  ³          ³          ³          ³                   ³         ³                ³         18 ¯à®æ¥­â®¢        ³        10 ¯à®æ¥­â®¢         ³        20 ¯à®æ¥­â®¢         ³     ¢á¥£®      ³
   ³                  ³          ³          ³          ³                   ³         ³                ³             (7)             ³             (8)             ³             (9)             ³                ³
   ³                  ³          ³          ³          ³                   ³         ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³                  ³          ³          ³          ³                   ³         ³                ³   áâ®¨¬®áâì  ³    áã¬¬      ³   áâ®¨¬®áâì  ³     áã¬¬     ³   áâ®¨¬®áâì  ³     áã¬¬     ³                ³
   ³                  ³          ³          ³          ³                   ³         ³                ³    ¯®ªã¯®ª   ³     „‘      ³    ¯®ªã¯®ª   ³      „‘     ³    ¯®ªã¯®ª   ³      „‘     ³                ³
   ³                  ³          ³          ³          ³                   ³         ³                ³    ¡¥§ „‘   ³              ³    ¡¥§ „‘   ³              ³    ¡¥§ „‘   ³              ³                ³
   ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
   ³        (1)       ³   (2)    ³    (3)   ³   (3 )   ³        (4)        ³   (5)   ³      (6)       ³      (7 )    ³     (7¡)     ³     (8 )     ³     (8¡)     ³     (9 )     ³     (9¡)     ³      (10)      ³
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.}
.{
.[H SKIP
.fields CommonFormHeader strBookName .endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@
.{ ?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³        (1)       ³        (2)        ³   (3)   ³   (3 )   ³       (4)      ³     (5 )      ³     (5¡)      ³     (6 )      ³     (6¡)      ³     (7 )      ³     (7¡)      ³      (8)      ³     (8 )     ³
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.} //?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
.{ ?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
   ³        (1)       ³   (2)    ³    (3)   ³   (3 )   ³        (4)        ³   (5)   ³      (6)       ³      (7 )    ³     (7¡)     ³     (8 )     ³     (8¡)     ³     (9 )     ³     (9¡)     ³      (10)      ³
   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.} //?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
.]H
.{ CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4)
.Fields GroupHeaderName:'T:-' .EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}
.{ table 'vBaseDocRee.BaseDoc'
.{ ?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
.fields
     BaseDoc.dDoc
     BaseDoc.NoDoc
     KatOrg.Name
     KatOrg.Unn
     BaseFin.dDoc

     DocSum
     DocBez18
     DocNDS18
     DocBez10
     DocNDS10
     DocBez20
     DocNDS20
     DocNetNDS
.endfields
    @@@@@@@@@@@ @@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&&
.}
.{ ?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
.fields
  BaseDoc.dDoc
  BaseDoc.NoDoc
  BaseDoc.dDoc
  BaseFin.dDoc
  KatSopr.dOpr
  KatOrg.Name
  KatOrg.Unn

  DocSum
  DocBez18
  DocNDS18
  DocBez10
  DocNDS10
  DocBez20
  DocNDS20
  DocNetNDS
.endfields
    @@@@@@@@@@@ @@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&&&.&&
.}
.if PrnBDocSpec
.end //if
.begin
!----------------- áã¬¬¨à®¢ ­¨¥ ---------------------------
  ADocSum    := ADocSum    + DocSum;
  ADocBez20  := ADocBez20  + DocBez20;
  ADocNDS20  := ADocNDS20  + DocNDS20;
  ADocBez18  := ADocBez18  + DocBez18;
  ADocNDS18  := ADocNDS18  + DocNDS18;
  ADocBez10  := ADocBez10  + DocBez10;
  ADocNDS10  := ADocNDS10  + DocNDS10;
  ADocNetNDS := ADocNetNDS + DocNetNDS;
end.
.} //table
.{ CheckEnter GroupTotal; ((flgRepStyles and word(4)) = 4);
.fields
        GroupTotalName:'T:-'
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.{ ?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
.fields
        GroupDocSum
        GroupDocBez18
        GroupDocNDS18
        GroupDocBez10
        GroupDocNDS10
        GroupDocBez20
        GroupDocNDS20
        GroupDocNetNDS
.endfields
ÿ                                                                &'&&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&&ÿ
.} //?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
.{ ?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
.fields
        GroupDocSum
        GroupDocBez18
        GroupDocNDS18
        GroupDocBez10
        GroupDocNDS10
        GroupDocBez20
        GroupDocNDS20
        GroupDocNetNDS
.endfields
ÿ                                                                                      &'&&&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&&&.&&ÿ
.} //?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
.} //CheckEnter GroupTotal;
.}
.if PrintAllSums
.{ ?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
.fields
   sAllTotalsHeader
   ADocSum
   ADocBez18
   ADocNDS18
   ADocBez10
   ADocNDS10
   ADocBez20
   ADocNDS20
   ADocNetNDS
.endfields
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&&ÿ
.} //?INTERNAL; ((pVidDoc >= 201) and (pVidDoc <= 211));
.{ ?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));
.fields
   sAllTotalsHeader
   ADocSum
   ADocBez18
   ADocNDS18
   ADocBez10
   ADocNDS10
   ADocBez20
   ADocNDS20
   ADocNetNDS
.endfields
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                        &'&&&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&&&.&&ÿ
.} //?INTERNAL; ((pVidDoc >= 101) and (pVidDoc <= 111));

                                                    ÿ ƒ« ¢­ë© ¡ãå£ «â¥àÿÿ
.end //if
.endform
!
!
!
#doc
ˆ’ƒ‚›‰ ……‘’
#end
.linkform 'BDOCRST_Reestr07' prototype is 'BDOCRST'
.group 'ˆ’ƒ‚›‰ ……‘’'
.p 55
.defo landscape
.NameInList 'ˆ’ƒ‚›‰ ……‘’ „Š“Œ…’‚-‘‚€ˆ‰'
! ----------------------------------------------------------------------
#include vBDReest.frn
! ----------------------------------------------------------------------
.var
    strReeItV     : string;
    strGroupSumV  : string;
!----- ¨â®£®¢ë¥ áã¬¬ë à¥¥áâà ---
    ReeIt, ReeItV : double;
    strWarning    : string;
    strRekvKontr  : string;
    i             : word;
.endvar
.begin
!----- ¨­¨æ¨ «¨§ æ¨ï ¨â®£®¢ëå áã¬¬ à¥¥áâà ---
 ReeIt  := 0;
 ReeItV := 0;
 i := 0; //áç¥âç¨ª ª®«-¢  áâà®ª ¢ ä®à¬¥
end.
.fields
 CommonFormHeader
.endfields
ÿ^
.fields
 strReestrName
.endfields
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.{ ?INTERNAL; ((flgFilters and word(32)) = 32);
.Fields Sost .EndFields
      ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(4)) = 4);
.Fields dBegin dEnd .EndFields
      §  ¯¥à¨®¤ á ÿ^ÿ  ¯®  ÿ^ÿ
.}
.{ ?INTERNAL; ( (flgFilters and word(27)) > 0 );
      ˆá¯®«ì§ãîâáï ä¨«ìâàë:
.{ ?INTERNAL; ((flgFilters and word(1) ) = 1);
.Fields Currency .EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(2) ) = 2);
.Fields KontrAgent .EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(8) ) = 8);
.Fields Descr .EndFields
      ¯® ¤¥áªà¨¯â®àã - ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(16) ) = 16);
.Fields GrDescr .EndFields
      ¯® £àã¯¯¥ ¤¥áªà¨¯â®à®¢ - ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(128) ) = 128);
.Fields
 GroupDO
.EndFields
    ÿ^ÿ
.}
.} // ?INTERNAL; ( (flgFilters and word(11)) > 0 );
.fields ValNDE ValTar .endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ
                                                                                                         ³                 ˆâ®£®                 ³    ‚ %
                                  ¨¬¥­®¢ ­¨¥ ãà®¢­ï £àã¯¯¨à®¢ª¨                                         ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´ ª ®¡é¥¬ã
                                                                                                         ³     ¢ @@@@@@      ³    ¢ @~@@@@@@@@   ³   ¨â®£ã
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ
.{ //MAIN CYCLE ON BASEDOC's
.[h SKIP

.fields CommonFormHeader strReestrName .endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@

.]h //HEADER end
.{ CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4);
.Fields                              GroupHeaderName:'T:-'                                                  GroupSum2            GroupSumV2    GroupPercentNDE .EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&  &&&.&&ÿ
.{ ?INTERNAL; ( i = 0 );
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //
.begin
  i++;
end.
.}//CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4);
.if PrnBDocSpec
!.{ table 'vBaseDocRee.SpStep'
!.} //table SpStep
.end //if
.{ CheckEnter GroupTotal; ((flgRepStyles and 4) = 4);
.} //CheckEnter GroupTotal; ((flgRepStyles and 4) = 4);
.} //MAIN CYCLE ON BASEDOC's
.if PrintAllSums
.end //if
ÿ
.endform
!
!
!
#doc
……‘’ ‹€—…‘’ˆ „
#end
.linkform 'BDOCRST_Reestr04' prototype is 'BDOCRST'
!à¥¥áâàë ¯® ®¯« ç¥­­®áâ¨ „
.group '……‘’ ‹€—…‘’ˆ „'
.p 55
.defo landscape
.NameInList '……‘’ ‹€—…‘’ˆ „Š“Œ…’‚-‘‚€ˆ‰'
! ----------------------------------------------------------------------
#include vBDReest.frn
! ----------------------------------------------------------------------
.var
    strReeItV     : string;
    strGroupSumV  : string;
!----- ¨â®£®¢ë¥ áã¬¬ë à¥¥áâà ---
    ReeIt, ReeItV : double;
    dblDocPaidIt  : double;
!-------------------------------
    strWarning    : string;
    strRekvKontr  : string;
    strFiltPaidDoc: string;
    boFiltPaidActive : boolean;
    boNeedSpecif,                    //shaf
    boCalcInValOtch  : boolean;
.endvar
.begin
 boNeedSpecif := ((flgRepStyles and 1 ) <> 0);     //shaf
 boCalcInValOtch := ((flgRepStyles and 2) <> 0);
!----- ¨­¨æ¨ «¨§ æ¨ï ¨â®£®¢ëå áã¬¬ à¥¥áâà ---
 ReeIt     := 0;
 ReeItV    := 0;
 dblDocPaidIt := 0;
!--------------------------------------------
 strWarning := if( wPrintForm = 1, '***** ‚ˆŒ€ˆ…! ……‘’ ‹“—…, €—ˆ€Ÿ ‘ ’…Š“™…ƒ “‚Ÿ „……‚€ ***** „‹Ÿ ‹“—…ˆŸ ‹ƒ ……‘’€ ‚‘‹œ‡“‰’…‘œ <CTRL>+<P> *****', '');
 boFiltPaidActive := ( ( flgRepStyles and word(8) ) = 8 ) and ( wFiltPaidDoc <> 0 );
 if boFiltPaidActive
 {
   strFiltPaidDoc := '';
   if ( (wFiltPaidDoc and 1) <> 0 )
     strFiltPaidDoc := 'ç áâ¨ç­® ®¯« ç¥­­ë¥ „';
   if ( (wFiltPaidDoc and 2) <> 0 )
     strFiltPaidDoc := if (strFiltPaidDoc <> '',
                             strFiltPaidDoc + ', ',
                             ''
                          ) + '¯®«­®áâìî ®¯« ç¥­­ë¥ „';
   if ( (wFiltPaidDoc and 4) <> 0 )
     strFiltPaidDoc := if (strFiltPaidDoc <> '',
                             strFiltPaidDoc + ', ',
                             ''
                          )  + '­¥®¯« ç¥­­ë¥ „';
 }
end.
.fields
 CommonFormHeader strWarning
.endfields
ÿ^   ^
.fields
 strReestrName
.endfields
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.{ ?INTERNAL; ((flgFilters and word(32)) = 32);
.Fields Sost .EndFields
      ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(4)) = 4);
.Fields dBegin dEnd .EndFields
      §  ¯¥à¨®¤ á ÿ^ÿ  ¯®  ÿ^ÿ
.}
.{ ?INTERNAL; ( ( (flgFilters and word(27)) > 0 ) or (((flgRepStyles and word(8) ) = 8) and ( wFiltPaidDoc <> 0 )) );
      ˆá¯®«ì§ãîâáï ä¨«ìâàë:
.{ ?INTERNAL; ((flgFilters and word(1) ) = 1);
.Fields Currency .EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(2) ) = 2);
.Fields KontrAgent .EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(8) ) = 8);
.Fields Descr .EndFields
      ¯® ¤¥áªà¨¯â®àã - ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(16) ) = 16);
.Fields GrDescr .EndFields
      ¯® £àã¯¯¥ ¤¥áªà¨¯â®à®¢ - ÿ^ÿ
.}
.{ ?INTERNAL; ((flgFilters and word(128) ) = 128);
.Fields
 GroupDO
.EndFields
      ÿ^ÿ
.}
.{ ?INTERNAL; (boFiltPaidActive);
.Fields strFiltPaidDoc .EndFields
      ¯® á®áâ®ï­¨î ®¯« ç¥­­®áâ¨ - ÿ^ÿ
.} // ?INTERNAL;
.} // ?INTERNAL; ( (flgFilters and word(11)) > 0 );
.{ ?internal; boCalcInValOtch;
.fields
  ValNDE
  ValTar
  ValNDE
.endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
      „ â  ¨ ­®¬¥à      ³                                  ³  ‘à®ª   ³ ¥®¡å®¤¨¬®³                 ˆâ®£®                 ³     ‘ã¬¬  ®¯« â
       ¤®ªã¬¥­â -       ³            Š®­âà £¥­â            ³¤¥©áâ¢¨ï,³®¯« â¨âì ¤®³ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³    ¯® ¤ ­­®¬ã „
       ®á­®¢ ­¨ï        ³                                  ³  ¤­¥©   ³           ³     ¢ @@@@@@      ³     ¢ @~@@@@@@@   ³     ¢ @@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; boCalcInValOtch;
.{ ?internal; (not boCalcInValOtch);
.fields
  ValNDE
  ValTar
  ValNDE
.endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ
      „ â  ¨ ­®¬¥à      ³                                  ³  ‘à®ª   ³ ¥®¡å®¤¨¬®³                 ˆâ®£®                 ³     ‘ã¬¬  ®¯« â   ³
       ¤®ªã¬¥­â -       ³            Š®­âà £¥­â            ³¤¥©áâ¢¨ï,³®¯« â¨âì ¤®³ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³    ¯® ¤ ­­®¬ã „  ³   ‚ «îâ  „
       ®á­®¢ ­¨ï        ³                                  ³  ¤­¥©   ³           ³     ¢ @@@@@@      ³     ¢ @~@@@@@@@   ³     ¢ @@@@@@@@@   ³
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (not boCalcInValOtch);
.{ //MAIN CYCLE ON BASEDOC's
.[h SKIP
.{ ?internal; boCalcInValOtch;
.fields
 CommonFormHeader
 strReestrName
.endfields

 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@

.} //.{ ?internal; boCalcInValOtch;
.{ ?internal; (not boCalcInValOtch);
.fields
 CommonFormHeader
 strReestrName
.endfields

 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@

.} //.{ ?internal; (not boCalcInValOtch);
.]h //HEADER end
.{ CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4);
.Fields
 GroupHeaderName:'T:-'
.EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}//CheckEnter GroupHeader; ((flgRepStyles and word(4)) = 4);
.{ table 'vBaseDocRee.BaseDoc'
.begin
!----------------- áã¬¬¨à®¢ ­¨¥ ---------------------------
   ReeIt     := ReeIt  + DocIt;
   ReeItV    := ReeItV + DocItV;
   dblDocPaidIt := dblDocPaidIt + DocPaidNDE;
   strRekvKontr := KatOrg.Name + if( Trim( KatOrg.Tel ) <> '', ', â/ä. ' + KatOrg.Tel, '' )
!   strDocItV := if( boCalcInValOtch, DoubleToStr( DocItV, '\2p[|-]36`666`666`666`666`666.88' ),'' );
end.
.{ ?internal; boCalcInValOtch;
.fields
  BaseDoc.dDoc
  PrintNumber( vBaseDocRee.BaseDoc.Descr, vBaseDocRee.BaseDoc.nodoc )
  strRekvKontr
  BaseDoc.Koldn
  StepDoc.dOplMax
  DocIt
  DocItV
  DocPaidNDE
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@ @~@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&
.} //.{ ?internal; boCalcInValOtch;
.{ ?internal; not boCalcInValOtch;
.fields
  BaseDoc.dDoc
  PrintNumber( vBaseDocRee.BaseDoc.Descr, vBaseDocRee.BaseDoc.nodoc )
  strRekvKontr
  BaseDoc.Koldn
  StepDoc.dOplMax
  DocIt
  DocItV
  DocPaidNDE
  CurrencyDO
 .endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@ @~@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& @~@@@@@@@@@@@
.} //.{ ?internal; not boCalcInValOtch;
.{ ?internal; boNeedSpecif;
.fields
  ValNDE
  ValTar
.endfields
  ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
  ³       ¨¬¥­®¢ ­¨¥       ³®¬¥­ª« âãà­ë©³ …¤.  ³  Š®«¨ç¥áâ¢®  ³            ‚ @@@@@@                ³             ‚ @~@@@@@@@@           ³
  ³     â®¢ à /ãá«ã£¨       ³    ­®¬¥à     ³ ¨§¬. ³              ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
  ³                         ³              ³      ³              ³      –¥­       ³   ‘â®¨¬®áâì       ³      –¥­       ³   ‘â®¨¬®áâì       ³
  ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.} //?internal; boNeedSpecif;
.if PrnBDocSpec
.{ table 'vBaseDocRee.SpStep'
.begin
#include vBDProc.frn
end.
.fields
!   NameMC
    if( SpStep.PrMC = 1, KatMC.Name, KatUsl.Name )
!   Nomenkl
    if( SpStep.PrMC = 1, KatMC.BarKod, KatUsl.Kod )
!   Ed
    KatOtpEd.Abbr
!   Kol
    SpStep.Kol
!   Price
    dblPriceNDE
!   Summa
    dblSumNDE
!   VPrice
    dblPriceVal
!   VSumma
    dblSumVal
.endfields
  ³@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @~@@@@ &'&&&&&&&&.&&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&³
.} //table
.end //if
.} //table
.{ ?internal; boNeedSpecif;
  ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

.} //.{ ?internal; boNeedSpecif;
.{ CheckEnter GroupTotal; ((flgRepStyles and 4) <> 0);
.begin
  strGroupSumV := if( boCalcInValOtch, DoubleToStr( GroupSumV, '\2p[|-]36`666`666`666`666`666.88' ),'');
end.
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
  GroupDocPaidNDE
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&ÿ
.} //CheckEnter GroupTotal; ((flgRepStyles and 4) = 4);
.} //MAIN CYCLE ON BASEDOC's
.begin
  strReeItV := if( boCalcInValOtch, DoubleToStr( ReeItV, '\2p[|-]36`666`666`666`666`666.88' ),'');
end.
.if PrintAllSums
.{?internal; (boCalcInValOtch);
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (boCalcInValOtch);
.{?internal; (not boCalcInValOtch);
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (not boCalcInValOtch);
.fields
  sAllTotalsHeader
  ReeIt
  strReeItV
  dblDocPaidIt
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&ÿ
.end //if
ÿ
.endform
