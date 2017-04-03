//********************************************************************************
//                                                        (c) ª®à¯®à æ¨ï ƒ « ªâ¨ª 
// ƒ « ªâ¨ª  7.12 - “¯à ¢«¥­¨¥ ¯à®¨§¢®¤áâ¢¥­­®© «®£¨áâ¨ª®©
// ”®à¬  ¨¥à àå¨ç¥áª®£® à¥¥áâà  ­ ª« ¤­ëå ¨  ªâ®¢
//********************************************************************************

.form 'KSOPHRST'
.hide
.fields
 wPrintForm    : word    //01
 strReestrName : string  //02
 pVidSopr      : word    //03
 dSoprBeg      : string  //04
 dSoprEnd      : string  //05
 dOprBeg       : string  //06
 dOprEnd       : string  //07
 Descr         : string  //08
 GrDescr       : string  //09
 PodrFrom      : string
 MolFrom       : string
 PodrTo        : string
 MolTo         : string
 Nazna         : string
 sMc           : string
 sVidSopr      : string
 RepName       : string
 flgFilters    : word    //10 - UserDeskRep.ResWord[20]
 flgRepStyles  : word    //11 - UserDeskRep.ResWord[21]
 flgSpFilters  : word    //12 - UserDeskRep.ResWord[22]
.endfields
                   1
 123456789          01
 ^^^^^^^^^^^^^^^^^ ^^^
.{ //main cycle
.{ CheckEnter GroupHeaderKS
.fields
 GroupHeaderName : string  //12
 GroupSum        : double  //13
.endfields
 1
 23
 ^^
.} // CheckEnter GroupHeaderKS
.fields
  ccKatSopr  : comp   //14
  KSdSopr    : string //15
  KSdOpr     : string //16
  KSName     : string //17
  KSPodrFrom : string
  KSPodrTo   : string
  DocIt      : double //25
.endfields
  1
  456789
  ^^^^^^^
//.if PrnSpecKS
//.end //if
.{ CheckEnter PrnSpecKS
.fields
  ccSpSopr    : comp   //18
  McUslName   : string //19
  McUslBarKod : string //20
  McUslParty  : string
  McUslOtpEd  : string //21
  McUslKol    : double //22
  McUslPrice  : double //23
  McUslSum    : double //24
.endfields
  12345678
  ^^^^^^^^
.} // CheckEnter PrnSpecKS
.{ CheckEnter GroupTotalKS
.fields
  GroupTotalName : string  //26
  GroupSum2      : double  //27
.endfields
 11
 67
 ^^
.} // CheckEnter GroupTotalKS
.} // end of main cycle
.if PrintAllSumsKS
.fields
  sAllTotalsHeader : string //28
.endfields
 1
 7
 ^
.end //if
.endform
!
!
!
.linkform 'KSOPHRST_Reestr01' prototype is 'KSOPHRST'
.group '……‘’ €Š‹€„›•'
.p 55
.defo landscape
.NameInList '……‘’ €Š‹€„›•'
! ----------------------------------------------------------------------
.var
  boIsFilter    : Boolean;       //ä« £ ãáâ ­®¢«¥­­ëå ä¨«ìâà®¢
!----- ¨â®£®¢ë¥ áã¬¬ë à¥¥áâà ---
  ReeIt         : double;
!-------------------------------
  strWarning    : string;
  strNameDoc    : string;
  boNeedSpecif  : boolean;
.endvar
.begin
 boNeedSpecif := ((flgRepStyles and 1 ) <> 0);
!----- ¨­¨æ¨ «¨§ æ¨ï ¨â®£®¢ëå áã¬¬ à¥¥áâà ---
 ReeIt     := 0;
!--------------------------------------------
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
ÿ@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(1)) = 1);
.Fields
 dSoprBeg
 dSoprEnd
.EndFields
      §  ¯¥à¨®¤ á ÿ^ÿ  ¯®  ÿ^ÿ
.}
!------------------------------------------------------------------------
.Fields
 RepName
.EndFields
      áä®à¬¨à®¢ ­ ¯® ­ áâà®©ª¥ - ÿ^ÿ
!------------------------------------------------------------------------
.Fields
 sVidSopr
.EndFields
      ÿ^ÿ
!------------------------------------------------------------------------
.begin
 if ( ((flgFilters and   word(2)) =   2)
   OR ((flgFilters and   word(4)) =   4)
   OR ((flgFilters and   word(8)) =   8)
   OR ((flgFilters and  word(16)) =  16)
   OR ((flgFilters and  word(32)) =  32)
   OR ((flgFilters and  word(64)) =  64)
   OR ((flgFilters and word(128)) = 128)
   OR ((flgFilters and word(256)) = 256)
   OR ((flgSpFilters and word(1)) =   1)
    ) boIsFilter := True
 else boIsFilter := False;
end.
.{ ?INTERNAL; boIsFilter;
      ˆá¯®«ì§ãîâáï ä¨«ìâàë:
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(2) ) = 2 ));
.Fields
 dOprBeg dOprEnd
.EndFields
      ¯® ¤ â¥ ®¯à¨å®¤®¢ ­¨ï (®â¯ãáª ) - ÿá ^ ¯® ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(4) ) = 4 ));
.Fields
 Descr
.EndFields
      ¯® ¤¥áªà¨¯â®àã - ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(8) ) = 8 ));
.Fields
 GrDescr
.EndFields
      ¯® £àã¯¯¥ ¤¥áªà¨¯â®à®¢ - ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(16) ) = 16 ));
.Fields
 PodrFrom
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(32) ) = 32 ));
.Fields
 MolFrom
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(64) ) = 64 ));
.Fields
 PodrTo
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(128) ) = 128 ));
.Fields
 MolTo
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgFilters and word(256) ) = 256 ));
.Fields
 Nazna
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgSpFilters and word(1) ) = 1 ));
.Fields
 sMc
.EndFields
      ÿ^ÿ
.}
!------------------------------------------------------------------------
.} // ?INTERNAL; ( boIsFilter );
.{ ?internal; (not boNeedSpecif);
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
      ®¬¥à ­ ª« ¤­®©                                                        ³   „ â    ³ „ â  ®â¯.³        âªã¤       ³        Šã¤         ³       ‘ã¬¬ 
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; (not boNeedSpecif);
!------------------------------------------------------------------------
.{ //MAIN CYCLE ON KATSOPR's
!------------------------------------------------------------------------
.[h SKIP
.fields
 CommonFormHeader
 strReestrName
.endfields

 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ ‹¨áâ N @Np@

.]h //HEADER end
!------------------------------------------------------------------------
.{ CheckEnter GroupHeaderKS; ((flgRepStyles and word(2)) = 2);
.Fields GroupHeaderName:'T:-' .EndFields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ
.}//CheckEnter GroupHeaderKS; ((flgRepStyles and word(2)) = 2);
.{ ?internal; boNeedSpecif;
.fields
   KSName
   KSdSopr
 .endfields
  ª« ¤­ ï Nÿ ^ÿ ®âÿ ^ÿ
                        ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
                              ¨¬¥­®¢ ­¨¥ â®¢ à /ãá«ã£¨          ³®¬¥­ª« âãà­ë©³        àâ¨ï       ³ …¤.  ³  Š®«¨ç¥áâ¢®  ³      –¥­       ³   ‘â®¨¬®áâì
                                                                 ³    ­®¬¥à     ³                    ³ ¨§¬. ³              ³                ³
                        ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; (not boNeedSpecif);
.fields
   KSName
   KSdSopr
   KSdOpr
   KSPodrFrom
   KSPodrTo
   DocIt
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&&
.} //.{ ?internal; (not boNeedSpecif);
.{ CheckEnter PrnSpecKS; ((flgRepStyles and word(1)) = 1);
.fields
  McUslName
  McUslBarKod
  McUslParty
  McUslOtpEd
  McUslKol
  McUslPrice
  McUslSum
.endfields
                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @~@@@@ &'&&&&&&&&.&&& &'&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&
.} //CheckEnter PrnSpecKS; ((flgRepStyles and word(1)) = 1);
.begin
  ReeIt     := ReeIt  + DocIt;
end.
.{ ?internal; boNeedSpecif;
                        ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
  DocIt
.endfields
                 ÿ       ˆâ®£® ¯® ­ ª« ¤­®©:                                                                                                 &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ CheckEnter GroupTotalKS; ((flgRepStyles and 2) = 2);
.{ ?internal; boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                        &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; not boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum2
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                        &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; not boNeedSpecif;
.} //CheckEnter GroupTotalKS; ((flgRepStyles and 2) = 2);
.} //MAIN CYCLE ON KATSOPR's
.if PrintAllSumsKS
.{ ?internal; boNeedSpecif;
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
 sAllTotalsHeader
 ReeIt
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                          &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; NOT boNeedSpecif;
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
 sAllTotalsHeader
 ReeIt
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                          &'&&&&&&&&&&&&&&.&&ÿ
.} //.{ ?internal; NOT boNeedSpecif;
.end//if
ÿ
.endform
