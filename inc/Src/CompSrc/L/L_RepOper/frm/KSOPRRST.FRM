//------------------------------------------------------------------------------
//                                                      (c) ª®à¯®à æ¨ï ƒ « ªâ¨ª 
// ƒ « ªâ¨ª  5.73 - âç¥âë ª®­âãà  «®£¨áâ¨ª¨
// ˆ¥à àå¨ç¥áª¨¥ à¥¥áâàë ¤®ªã¬¥­â®¢
//------------------------------------------------------------------------------

#include Responsible.frn

#doc
”®à¬  ¤«ï ¨¥à àå¨ç¥áª¨å à¥¥áâà®¢ ­ ª« ¤­ëå
#end
.form 'KSoprRst'
.hide
.{
.fields
 wPrintForm    : word
 wTuneVal      : word
 strReestrName : string
 sOrgName      : string
 dBegin        : string
 dEnd          : string
 flgRepStyles  : word
 ValNDE        : string
 ValTar        : string
.endfields
 wPrintForm    ^
 wTuneVal      ^
 strReestrName ^
 sOrgName      ^
 dBegin        ^
 dEnd          ^
 flgRepStyles  ^
 ValNDE        ^
 ValTar        ^

.{ CheckEnter Filter
.fields
 Filter     : string
 Znach      : string
.endfields
 Filter     ^
 Znach      ^
.{ CheckEnter Znach
.fields
 MultiZnach : string
.endfields
 MultiZnach ^
.} // CheckEnter Znach
.} // CheckEnter Filter

.fields
#ResponsibleFields
.endfields
#ResponsibleBody(KSOPRRST)

.{ //main cycle
.{ CheckEnter GroupHeader_KS
.fields
 GroupHeaderName : string
 GroupSum2       : double
 GroupSumV2      : double
 GroupPercentNDE : double
.endfields
 GroupHeaderName ^
 GroupSum2       ^
 GroupSumV2      ^
 GroupPercentNDE ^

.} // CheckEnter GroupHeader_KS

.fields
  nKatSopr   : comp
  CurrencyKS : string
  SpSoprVal
  strDocName2: string
  DocIt      : double
  DocItV     : double
.endfields
  nKatSopr    ^
  CurrencyKS  ^
  SpSoprVal   ^
  strDocName2 ^
  DocIt       ^
  DocItV      ^

.if PrnKSoprSpec
.{CheckEnter PrnKSoprSpec2
.fields
  SpSoprNRec     : comp
  SpSoprName
  SpSoprKod
  KatOtpEdName
  KatOtpEdAbbr
  SpSoprKolOpl   : double
  SpSoprPriceNDE : double
  SpSoprSumNDE   : double
  SpSoprPriceVal : double
  SpSoprSumVal   : double
  SpSoprUks
  SpSoprZatr
.endfields
  SpSoprNRec     ^
  SpSoprName     ^
  SpSoprKod      ^
  KatOtpEdName   ^
  KatOtpEdAbbr   ^
  SpSoprKolOpl   ^
  SpSoprPriceNDE ^
  SpSoprSumNDE   ^
  SpSoprPriceVal ^
  SpSoprSumVal   ^
  SpSoprUks      ^
  SpSoprZatr     ^

.}//CheckEnter PrnKSoprSpec2
.end //if

.{ CheckEnter GroupTotal_KS
.fields
  GroupTotalName : string
  GroupSum       : double
  GroupSumV      : double
.endfields
  GroupTotalName ^
  GroupSum       ^
  GroupSumV      ^

.} // CheckEnter GroupTotal_KS
.} // end of main cycle
.}
.endform


!======================================================================
#doc
€‹ƒ‚›‰ …ƒˆ‘’
#end
.linkform 'KSOPRRST_Reestr03' prototype is 'KSOPRRST'
!======================================================================
.group '€‹ƒ‚›‰ …ƒˆ‘’'
.p 55
.defo landscape
.NameInList '€‹ƒ‚›‰ …ƒˆ‘’'
! ----------------------------------------------------------------------
#include vKSReest.frn
! ----------------------------------------------------------------------
.var
  strGroupSumV    : string;
  strWarning      : string;
  strRekvKontr    : string;
  sBlank          : string;
  boNeedSpecif,
  boCalcInValOtch : boolean;
  i               : integer;
.endvar
#ResponsibleLinkVar
.{
.begin
 boNeedSpecif := ((flgRepStyles and 1 ) <> 0);
 boCalcInValOtch := ((flgRepStyles and 2) <> 0);
 strWarning := if( wPrintForm = 1, '***** ‚ˆŒ€ˆ…! ……‘’ ‹“—…, €—ˆ€Ÿ ‘ ’…Š“™…ƒ “‚Ÿ „……‚€ ***** „‹Ÿ ‹“—…ˆŸ ‹ƒ ……‘’€ ‚‘‹œ‡“‰’…‘œ <CTRL>+<P> *****', '');
end.
.fields
 CommonFormHeader
 strWarning
.endfields
ÿ^   ^
.fields
 strReestrName
.endfields
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgRepStyles and word(8)) = 8);
.begin
  if Length(sOrgName) <= 42
  {
    For (i := 1; i < 42 - (Length(sOrgName)); i := i + 1)
       sBlank := sBlank + ' ';

    sOrgName := sOrgName + sBlank;
  }
end.
.fields
 sOrgName
.endfields

 ÿE^ÿE
  (­ ¨¬¥­®¢ ­¨¥ ®à£ ­¨§ æ¨¨, ¯à¥¤¯à¨ïâ¨ï)
.}
!------------------------------------------------------------------------
.{ CheckEnter Filter
.{ CheckEnter Znach
.}
.}
!------------------------------------------------------------------------
.fields
  ValNDE
  ValTar
.endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 “á«®¢¨ï ¯®«ãç¥­¨ï ³ ‚¨¤ à áå®¤   ³    ¨¬¥­®¢ ­¨¥    ³   „ â  ®¯¥à æ¨¨  ³  á­®¢ ­¨¥ ¯®«ãç¥­¨ï ³        ¨¬¥­®¢ ­¨¥        ³ …¤.  ³  Š®«¨ç¥áâ¢®    ³    ‚ @@@@@@        ³   ‚ @~@@@@@@@@     ³      „ â      ³  á­®¢ ­¨¥
  ¨¬ãé¥áâ¢ ,à ¡®â, ³              ³     ®¯¥à æ¨¨      ³                  ³   ¨¬ãé¥áâ¢ , à ¡®â,  ³      ®¡ê¥ªâ  ãç¥â         ³ ¨§¬. ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³   ¯à¨§­ ­¨ï   ³ ¤«ï ¯à¨§­ ­¨ï
    ãá«ã£, ¯à ¢    ³              ³                   ³                  ³      ãá«ã£, ¯à ¢     ³                           ³      ³                ³      ‘ã¬¬          ³      ‘ã¬¬          ³ ®¡ê¥ªâ  ãç¥â  ³ ®¡ê¥ªâ  ãç¥â 
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
#ResponsibleLinkInit(KSOPRRST)
.{ //MAIN CYCLE ON KATSOPR's
!------------------------------------------------------------------------
.[h SKIP
.fields
 CommonFormHeader
 strReestrName
  ValNDE
  ValTar
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 “á«®¢¨ï ¯®«ãç¥­¨ï ³ ‚¨¤ à áå®¤   ³    ¨¬¥­®¢ ­¨¥    ³   „ â  ®¯¥à æ¨¨  ³  á­®¢ ­¨¥ ¯®«ãç¥­¨ï ³        ¨¬¥­®¢ ­¨¥        ³ …¤.  ³  Š®«¨ç¥áâ¢®    ³    ‚ @@@@@@        ³   ‚ @~@@@@@@@@     ³      „ â      ³  á­®¢ ­¨¥
  ¨¬ãé¥áâ¢ ,à ¡®â, ³              ³     ®¯¥à æ¨¨      ³                  ³   ¨¬ãé¥áâ¢ , à ¡®â,  ³      ®¡ê¥ªâ  ãç¥â         ³ ¨§¬. ³                ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³   ¯à¨§­ ­¨ï   ³ ¤«ï ¯à¨§­ ­¨ï
    ãá«ã£, ¯à ¢    ³              ³                   ³                  ³      ãá«ã£, ¯à ¢     ³                           ³      ³                ³      ‘ã¬¬          ³      ‘ã¬¬          ³ ®¡ê¥ªâ  ãç¥â  ³ ®¡ê¥ªâ  ãç¥â 
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.]h //HEADER end
!------------------------------------------------------------------------
.{ CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.Fields GroupHeaderName:'T:-' .EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}//CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.{ table 'vKatSoprRee.KatSopr'
.begin
   strRekvKontr := if( boNeedSpecif, ', ª®­âà £¥­â: ', '' ) + KatOrg.Name + if( Trim( KatOrg.Tel ) <> '' , ', â/ä.' + KatOrg.Tel, '' );
end.
.{ ?internal; boNeedSpecif;
.fields
   strDocName2
   PrintNumber( vKatSoprRee.KatSopr.Descr, vKatSoprRee.KatSopr.nSopr )
   KatSopr.dSopr
   '„ ü ' + vKatSoprRee.BaseDoc.NoDoc + ' ®â ' + DateToStr(vKatSoprRee.BaseDoc.dDoc, 'DD mon YYYY £.')
 .endfields
                                    ^ üÿ ^ÿ ®âÿ ^ÿÿ ^ÿ.
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.fields
   KatSopr.dSopr
   PrintNumber( vKatSoprRee.KatSopr.Descr, vKatSoprRee.KatSopr.nSopr )
   strRekvKontr
   DocIt
   DocItV
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; (not boNeedSpecif) and (not boCalcInValOtch);
.fields
   KatSopr.dSopr
   PrintNumber( vKatSoprRee.KatSopr.Descr, vKatSoprRee.KatSopr.nSopr )
   strRekvKontr
   DocIt
   DocItV
   CurrencyKS
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& @~@@@@@@@@@@@
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; boNeedSpecif;

.} //?internal; boNeedSpecif;
.if PrnKSoprSpec
.{CheckEnter PrnKSoprSpec2
.}
.{ table 'vKatSoprRee.SpSopr'
.begin
#include vKSProc.frn
end.
.fields
    NalogExClass1
    NalogExClass2
    NalogAttr1
    if( SpSopr.PrMC = 1, KatMC.Name, KatUsl.Name )
//    if( SpSopr.PrMC = 1, KatMC.BarKod, KatUsl.Kod )
    KatOtpEd.Abbr
    SpSopr.KolFact
//    dblPriceNDE
    dblSumNDE
//    dblPriceVal
    dblSumVal
    NalogAttr2
    NalogAttr3
.endfields
 @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@                       @@@@@@@@@@@@@@@                          @@@@@@@@@@@@@@@@@@@@@@@@@@  @~@@@@ &'&&&&&&&&.&&&    &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&  @@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@
.} //table
.end //if
.} //table KatSopr
.{ ?internal; boNeedSpecif;
                                                                                                 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
  DocIt
  DocItV
.endfields
                ÿ   ˆâ®£® ¯® ¤®ªã¬¥­âã:                                                                                                              &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ CheckEnter GroupTotal_KS; ((flgRepStyles and 4) = 4);
.begin
  strGroupSumV := if( boCalcInValOtch, DoubleToStr( GroupSumV, '[|-]36`666`666`666`666`666.88' ),'');
end.
.{ ?internal; boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                 &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; not boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                         &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; not boNeedSpecif;
.} //CheckEnter GroupTotal_KS; ((flgRepStyles and 4) = 4);
.} //MAIN CYCLE ON KATSOPR's
.{While (®¬¥à_®â¢¥âáâ¢¥­­®£®_«¨æ  < Š®«¨ç¥áâ¢®_®â¢¥âáâ¢¥­­ëå_«¨æ)
.begin
 ®¬¥à_®â¢¥âáâ¢¥­­®£®_«¨æ  := ®¬¥à_®â¢¥âáâ¢¥­­®£®_«¨æ  + 1;
end.
.fields
  Œ áá¨¢_â¢¥âáâ¢¥­­®¥_«¨æ®_„®«¦­®áâì [®¬¥à_®â¢¥âáâ¢¥­­®£®_«¨æ ]
  Œ áá¨¢_â¢¥âáâ¢¥­­®¥_«¨æ®_”ˆ       [®¬¥à_®â¢¥âáâ¢¥­­®£®_«¨æ ]
.endfields

ÿ@@@@@@@@@@@@@@@@@@@@@@@@@ÿ  ____________________    ÿ„@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ„
                                (¯®¤¯¨áì)                            (ˆ..” ¬¨«¨ï)
.}
.}
ÿ
.endform

!======================================================
#doc
ˆ’ƒ‚›‰ ……‘’ €Š‹€„›•/€Š’‚
#end
.linkform 'KSoprRST_Reestr01' prototype is 'KSoprRST'
!======================================================
.group 'ˆ’ƒ‚›‰ ……‘’'
.group 'ˆ’ƒ‚›‰ ……‘’_“Š‘'
.group 'ˆ’ƒ‚›‰ ……‘’_‘›’'
.group 'ˆ’ƒ‚›‰ ……‘’_‘€'
.p 55
.defo landscape
.NameInList 'ˆ’ƒ‚›‰ ……‘’ €Š‹€„›•/€Š’‚'
.var
 i: word;
.endvar
#ResponsibleLinkVar
.{
.begin
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
!------------------------------------------------------------------------
.{ CheckEnter Filter
.{ CheckEnter Znach
.}
.}
!------------------------------------------------------------------------
.fields
  ValNDE
  ValTar
.endfields
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ
                                                                                                         ³                 ˆâ®£®                 ³    ‚ %
                                  ¨¬¥­®¢ ­¨¥ ãà®¢­ï £àã¯¯¨à®¢ª¨                                         ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´ ª ®¡é¥¬ã
                                                                                                         ³     ¢ @@@@@@      ³    ¢ @~@@@@@@@@   ³   ¨â®£ã
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄ
#ResponsibleLinkInit(KSOPRRST)
.{ //MAIN CYCLE ON KATSOPR's
.[h SKIP

.fields CommonFormHeader strReestrName .endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ ü @Np@

.]h //HEADER end
.{ CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.Fields                              GroupHeaderName:'T:-'                                                  GroupSum2            GroupSumV2    GroupPercentNDE .EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&  &&&.&&ÿ
.{ ?INTERNAL; ( i = 0 );
  ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //
.begin
  i := i + 1;
end.
.}//CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.if PrnKSoprSpec
.{CheckEnter PrnKSoprSpec2
.}
.end //if
.{ CheckEnter GroupTotal_KS
.} // CheckEnter GroupTotal_KS
.} //MAIN CYCLE ON KATSOPR's
.}
ÿ
.endform

//à¥¥áâà ¯® ­ ª« ¤­ë¬\ ªâ ¬
#include KSopr01.frn
//à¥¥áâà ¯® ­ ª« ¤­ë¬\ ªâ ¬ á ®¡ê¥ªâ ¬¨ áâà®¨â¥«ìáâ¢  ¨ áâ âìï¬¨ § âà â
#define KSoprRst_UKS
#include KSopr01.frn
#undef KSoprRst_UKS
