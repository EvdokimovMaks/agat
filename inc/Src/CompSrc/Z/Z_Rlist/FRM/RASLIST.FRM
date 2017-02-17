//------------------------------------------------------------------------------
//                                                      (c) ª®à¯®à æ¨ï ƒ « ªâ¨ª 
// ƒ « ªâ¨ª  ERP 5.00 - ‡ à ¡®â­ ï ¯« â 
//  áç¥â­ë¥ «¨áâª¨ ¤«ï  «£®à¨â¬  0
//------------------------------------------------------------------------------

#doc
 áç¥â­ë¥ «¨áâª¨ ¤«ï  «£®à¨â¬  0
#end
.set name = 'RasList'
.hide
.fields
 zagol
 zagol2
 NPred
 Mes God
 Podr
 needShowShortInfo : boolean
 Tabn LschetB FIO
 N1 Okl

 Msro NYEARK
 Koldn Kolch Kod  Nopl Summaop
 Nachisl
 FondStr FondDn FondCh
 FondTime2 : boolean
 FondStr_2 FondDn_2 FondCh_2
 FaktDn FaktCh
 PlanStr PlanDn PlanCh
 PlanTime2 : boolean
 PlanStr_2 PlanDn_2 PlanCh_2
 PaidStr PaidDn PaidCh
 TypeUd
 Msru UYEARK
 Kodud Nudr Summaud
 Uder
 Str_Dolg1 Dolg1
 Str_Dolg2 Dolg2

 Msrn NEYEARK
 Kodn Nudn Summan
 Nenach
.endfields
 ^ ^
 ^
.{
.if cc0
  ^ ^
  ^
  ^
  ^ ^ ^
  ^ ^
.{
.if cc1
  ^ ^ ^ ^ ^ ^ ^
.end
.}
 ^ 
 ^ ^ ^ 
 ^  
 ^ ^ ^
 ^ ^
.if CPlanDays
 ^ ^ ^ 
 ^
 ^ ^ ^
.end
.if CPaidDays
 ^ ^ ^
.end
.{
.if cc2
^
^ ^ ^ ^ ^
.end
.}
 ^
 ^ ^
 ^ ^
.{
.if cc3
 ^ ^ ^ ^ ^
.end
.}
.if nene
 ^
.end
.if CAllNalogFOT
.fields
  FOT_NALCODE  FOT_NALNAME   FOT_NALSUM
.endfields
.{ AllFOTLoop CheckEnter
 ^^^
.}
.end
.fields
  paymentDate
  paymentSum
  paymentComment
  totalShortSum
.endfields
.if NeedShortInfo
.{ Short_Info CheckEnter
   .@@@@@@@@@   ^   ^
.}
    ¨â®£® ^
.end
.end
.fields
 FCH
 MonthRL
 EmailLine
.endfields
 ^
 ^
 ^
.}
.begin
 RasList.fExit;
end.
.endform
!
!
!
.linkform 'RasList_01' prototype is 'RasList'
.group 'fullone_new'
.nameinlist'®«­ ï ä®à¬  à áç¥â­®£® «¨áâª '
.var
  PeriodStr, sFio : string;
  PrintUd,PrintPerech : boolean;
  CurUd : word;
  Itogo : double;
.endvar
.fields
CommonFormHeader
.endfields
^
.fields
 NPred
 PeriodStr
 Podr sFio
 N1 Okl : "p:l"
 Msro Koldn Kolch Kod Nopl Summaop
 Nachisl
 FondDn FondCh
 FondStr : "p:r"
 FondDn FondCh
 FondStr_2 : "p:r"
 FondDn_2 FondCh_2
 FaktDn FaktCh
 PlanDn PlanCh
 PlanStr : "p:r"
 PlanDn PlanCh
 PlanStr_2 : "p:r"
 PlanDn_2 PlanCh_2
 PaidDn PaidCh
 Itogo
 Msru Kodud Nudr Summaud
 Itogo
 Itogo
 Str_Dolg1 Dolg1
 Str_Dolg2 Dolg2
 Msrn Kodn Nudn Summan
 Nenach
.endfields

ÿˆ à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.if cc0
.begin
  PrintUd := false;
  PrintPerech := false;
  Itogo := 0;
  CurUd := 1;
  sFio := Tabn + ' / ' + FIO;
  PeriodStr :='§  '+Mes+' ¬¥áïæ '+String(God)+' £.'
end.
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ ÿ¥à¨®¤ÿ                ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
³ ÿ®¤à §¤¥«¥­¨¥ÿ         ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
³ ÿ’ ¡.­®¬¥à/”ˆŽÿ         ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
³ ÿ„®«¦­®áâìÿ             ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
³ ÿ’ à¨ä­ ï áâ ¢ª /Žª« ¤ ÿ³ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
ÃÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÁÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ÿŒ-æÿ³ÿŠ®«.¤­ÿ ³ ÿ— á®¢ÿ ³ ÿŠ®¤ÿ³  ÿ ¨¬¥­®¢ ­¨¥ ¢¨¤  ®¯« âÿ           ³  ÿ‘“ŒŒ€ÿ           ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{
.if cc1
³ &&³&#&&.&&³&#&&&&&³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&&&³
.end
.}
³   ³       ³       ³    ³                        ÿ€—ˆ‘‹…Ž...³&'&&&&&&&&&&&&&&&&³ÿ
ÃÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{?Internal; FondTime2 = false
³                                              ”Ž„ ‚…Œ…ˆ...³&&.&& „.&&&.&& —.³
.}
.{?Internal; FondTime2 = true
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&&.&& „.&&&.&& —.³
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&&.&& „.&&&.&& —.³
.}
³                             ”€Š’ˆ—…‘Šˆ Ž’€Ž’€Ž ‚…Œ…ˆ...³&&.&& „.&&&.&& —.³
.if CPlanDays
.{?Internal; PlanTime2 = false
³                                            ‹€Ž‚Ž… ‚…ŒŸ...³&&.&& „.&&&.&& —.³
.}
.{?Internal; PlanTime2 = true
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&&.&& „.&&&.&& —.³
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&&.&& „.&&&.&& —.³
.}
.end
.if CPaidDays
³                                        Ž‹€—ˆ‚€…ŒŽ… ‚…ŒŸ...³&&.&& „.&&&.&& —.³
.end
ÃÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ÿŒ-æÿ³ÿŠ®«.¤­ÿ ³ ÿ— á®¢ÿ ³ ÿŠ®¤ÿ³  ÿ ¨¬¥­®¢ ­¨¥ ¢¨¤  ã¤¥à¦ ­¨©     ÿ  ³  ÿ‘“ŒŒ€ÿ           ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{
.if cc2
.begin
  if TypeUd = 1
    PrintUd := true;
  if TypeUd = 2
    PrintPerech := true;
end.
.{?internal; TypeUd <> curUd;
³   ³       ³       ³    ³                         ÿ“„…†€Ž...³&'&&&&&&&&&&&&&.&&ÿ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ÿŒ-æÿ³ÿŠ®«.¤­ÿ ³ ÿ— á®¢ÿ ³ ÿŠ®¤ÿ³  ÿ ¨¬¥­®¢ ­¨¥ ¢¨¤  ¯¥à¥ç¨á«¥­¨©  ÿ  ³    ÿ‘“ŒŒ€ÿ         ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.}
.begin
  if  CurUd = TypeUd
    Itogo := Itogo + double(Summaud)
  else
  {
    curUd := integer(TypeUd);
    Itogo := double(Summaud)
  }
end.
³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&&&³
.end
.}
.{?internal;  PrintPerech = false;
³   ³       ³       ³    ³                         ÿ“„…†€Ž...³&'&&&&&&&&&&&&&.&&ÿ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ÿŒ-æÿ³ÿŠ®«.¤­ÿ ³ ÿ— á®¢ÿ ³ ÿŠ®¤ÿ³  ÿ ¨¬¥­®¢ ­¨¥ ¢¨¤  ¯¥à¥ç¨á«¥­¨©  ÿ  ³    ÿ‘“ŒŒ€ÿ         ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.begin
  Itogo := 0
end.
.}
³   ³       ³       ³    ³            ÿ……—ˆ‘‹…Ž\‚›‹€—…Ž...³&'&&&&&&&&&&&&&.&&ÿ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³   ³       ³       ³    ³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&&&³ÿ
³   ³       ³       ³    ³                     ÿ@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&&&³ÿ
.{
.if cc3
³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&&&³
.end
.}
.if nene
³   ³       ³       ³    ³              ÿ…€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„...³&'&&&&&&&&&&&&&&&&³ÿ
.end
ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.if CAllNalogFOT
.fields
  FOT_NALCODE  FOT_NALNAME   FOT_NALSUM
.endfields
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ ®¬¥à ­ «®£    ¨¬¥­®¢ ­¨¥ ­ «®£                                ‘ã¬¬   «®£    ³
.{ AllFOTLoop CheckEnter
³   @@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&&&&³
.}
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
----------------------------------------------------------------------------------
.end
.}
ÿˆ
.endform
!
!
!
.linkform 'RasList_01_old' prototype is 'RasList'
.group 'fullone'
.nameinlist'®«­ ï, ¡¥§ à §¤¥«  ¯¥à¥ç¨á«¥­¨©'
.fields
CommonFormHeader
.endfields
^
.fields
 NPred
 Mes God
 Podr Tabn FIO
 N1 Okl: "p:r"
 Msro Koldn Kolch Kod Nopl Summaop
 Nachisl
 FondDn FondCh
 FondStr : "p:r"
 FondDn FondCh
 FondStr_2 : "p:r"
 FondDn_2 FondCh_2
 FaktDn FaktCh
 PlanDn PlanCh
 PlanStr : "p:r"
 PlanDn PlanCh
 PlanStr_2 : "p:r"
 PlanDn_2 PlanCh_2
 PaidDn PaidCh
 Msru Kodud Nudr Summaud
 Uder
 Str_Dolg1 Dolg1
 Str_Dolg2 Dolg2
 Msrn Kodn Nudn Summan
 Nenach
.endfields

ÿˆ à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.if cc0
ÚÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³®¤à §¤. ³’ ¡.­®¬¥à ³  ” ¬¨«¨ï ˆ.Ž.                 §  &&&&&&&& ¬¥áïæ  &&&& £.  ³
³@@@@@@@@@³&&&&&&&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
ÃÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ³ ’ à¨ä­ ï áâ ¢ª /Žª« ¤  @@@@@@@@@@@@@³
ÃÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³Œ-æ³Š®«.¤­ ³ — á®¢ ³ Š®¤³   ¨¬¥­®¢ ­¨¥ ¢¨¤  ®¯« â(ã¤¥à¦ ­¨©)  ³  ‘“ŒŒ€         ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{
.if cc1
³ &&³&#&&.&&³&#&&&&&³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³
.end
.}
³   ³       ³       ³    ³                         ÿ€—ˆ‘‹…Ž....³&'&&&&&&&&&&&&&&³ÿ
.{?Internal;  FondTime2 = false
³                                               ÿ”Ž„ ‚…Œ…ˆ...&&.&& „.&&&.&& —.³ÿ
.}
.{?Internal;  FondTime2 = true
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
.}
³                              ÿ”€Š’ˆ—…‘Šˆ Ž’€Ž’€Ž ‚…Œ…ˆ...&&.&& „.&&&.&& —.³ÿ
.if CPlanDays
.{?Internal;  PlanTime2 = false
³                              ÿ               ‹€Ž‚Ž… ‚…ŒŸ...&&.&& „.&&&.&& —.³ÿ
.}
.{?Internal;  PlanTime2 = true
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
.}
.end
.if CPaidDays
³                              ÿ           Ž‹€—ˆ‚€…ŒŽ… ‚…ŒŸ...&&.&& „.&&&.&& —.³ÿ
.end
.{
.if cc2
³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³
.end
.}
³   ³       ³       ³    ³                          ÿ“„…†€Ž....³&'&&&&&&&&&&&&&&³ÿ
³   ³       ³       ³    ³ ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³ÿ
³   ³       ³       ³    ³                       ÿ@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³ÿ
ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.{
.if cc3
³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³
.end
.}
.if nene
³   ³       ³       ³    ³                ÿ…€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„...³&'&&&&&&&&&&&&&&³ÿ
ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if CAllNalogFOT
.fields
  FOT_NALCODE  FOT_NALNAME   FOT_NALSUM
.endfields
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ ®¬¥à ­ «®£    ¨¬¥­®¢ ­¨¥ ­ «®£                                ‘ã¬¬   «®£    ³
.{ AllFOTLoop CheckEnter
³   @@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&&&&³
.}
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
----------------------------------------------------------------------------------
.end
.}
ÿˆ
.endform
!
!
.linkform 'RasList_02' prototype is 'RasList'
.group 'simpleone'
.nameinlist'‘®ªà é¥­­ ï ä®à¬  à áç¥â­®£® «¨áâª '
.fields
CommonFormHeader
.endfields
^
.fields
 Npred
 Mes God
 Tabn FIO
 Msro Koldn Kolch Kod  Summaop
 Nachisl
 Msru Kodud  Summaud
 Uder
 Str_Dolg1 Dolg1
 Msrn Kodn Summan
 Nenach
.endfields

 à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.if cc0
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³§  &&&&&&&& &&&& £.  â ¡. &&&&&&&&&&  ³
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
ÃÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³Œ.³Š.¤­.  ³ — á®¢ ³Š®¤ ³  ‘“ŒŒ€       ³
ÃÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{
.if cc1
³&&³&#&&.&&³&#&&&&&³&&&&³&'&&&&&&&&&&&&³
.end
.}
³      ÿ€—ˆ‘‹…Ž........³&'&&&&&&&&&&&&³ÿ
.if CPlanDays
.end
.if CPaidDays
.end
.{
.if cc2
³&&³       ³       ³&&&&³&'&&&&&&&&&&&&³
.end
.}
³     ÿ “„…†€Ž.........³&'&&&&&&&&&&&&³ÿ
³  ÿ@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&³ÿ
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.{
.if cc3
³&&³       ³       ³&&&&³&'&&&&&&&&&&&&³
.end
.}
.if nene
³    ÿ…€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„³&'&&&&&&&&&&&&³ÿ
ÀÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if CAllNalogFOT
.{ AllFOTLoop CheckEnter
.}
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
----------------------------------------
.end
.}
.endform

.linkform 'RasList_03' prototype is 'RasList'
.group 'simpletwo'
.nameinlist'‘®ªà é¥­­ ï ä®à¬  à áç¥â­®£® «¨áâª  á ¤ã¡«¨à®¢ ­¨¥¬'
.fields
CommonFormHeader
.endfields
^
.fields
 Npred
 Mes God  Tabn Mes God  Tabn
 FIO FIO
 Msro Koldn Kolch Kod  Summaop Msro Koldn Kolch Kod  Summaop
 Nachisl Nachisl
 Msru Kodud  Summaud Msru Kodud  Summaud
 Uder Uder
 Str_Dolg1 Dolg1 Str_Dolg1 Dolg1
 Msrn Kodn Summan Msrn Kodn Summan
 Nenach Nenach
.endfields
ÿˆ à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.if cc0
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³§  &&&&&&&& &&&& £.  â ¡. &&&&&&&&&&  ³   ³§  &&&&&&&& &&&& £.  â ¡. &&&&&&&&&&  ³
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³   ³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
ÃÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   ÃÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³Œ.³Š.¤­.  ³ — á®¢ ³Š®¤ ³  ‘“ŒŒ€       ³   ³Œ.³Š.¤­.  ³ — á®¢ ³Š®¤ ³  ‘“ŒŒ€       ³
ÃÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   ÃÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{
.if cc1
³&&³&#&&.&&³&#&&&&&³&&&&³&'&&&&&&&&&&&&³   ³&&³&#&&.&&³&#&&&&&³&&&&³&'&&&&&&&&&&&&³
.end
.}
³      ÿ€—ˆ‘‹…Ž........³&'&&&&&&&&&&&&³   ³      €—ˆ‘‹…Ž........³&'&&&&&&&&&&&&³ÿ
.if CPlanDays
.end
.if CPaidDays
.end
.{
.if cc2
³&&³       ³       ³&&&&³&'&&&&&&&&&&&&³   ³&&³       ³       ³&&&&³&'&&&&&&&&&&&&³
.end
.}
³      ÿ“„…†€Ž.........³&'&&&&&&&&&&&&³   ³      “„…†€Ž.........³&'&&&&&&&&&&&&³ÿ
³   ÿ@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&³   ³   @@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&³ÿ
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.{
.if cc3
³&&³       ³       ³&&&&³&'&&&&&&&&&&&&³   ³&&³       ³       ³&&&&³&'&&&&&&&&&&&&³
.end
.}
.if nene
³    ÿ…€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„³&'&&&&&&&&&&&&³   ³    …€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„³&'&&&&&&&&&&&&³ÿ
ÀÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ   ÀÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if CAllNalogFOT
.{ AllFOTLoop CheckEnter
.}
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
----------------------------------------   ----------------------------------------
.end
.}
ÿˆ
.endform

.linkform 'RasList_04' prototype is 'RasList'
.group 'fulltwo'
.nameinlist'®«­ ï ä®à¬  à áç¥â­®£® «¨áâª  á ¤ã¡«¨à®¢ ­¨¥¬'
.fields
CommonFormHeader
.endfields
^
.fields
 NPred
 Mes God Mes God
 Podr Tabn FIO Podr Tabn FIO
 N1 Okl: "p:r" N1 Okl: "p:r"
 Msro Koldn Kolch Kod Nopl Summaop Msro Koldn Kolch Kod Nopl Summaop
 Nachisl Nachisl
 FondDn FondCh FondDn FondCh
 FondStr : "p:r" 
 FondDn FondCh 
 FondStr : "p:r" FondDn FondCh
 FondStr_2 : "p:r" 
 FondDn_2 FondCh_2 
 FondStr_2 : "p:r" FondDn_2 FondCh_2
 FaktDn FaktCh FaktDn FaktCh
 PlanDn PlanCh PlanDn PlanCh
 PlanStr : "p:r" 
 PlanDn PlanCh 
 PlanStr : "p:r" 
 PlanDn PlanCh
 PlanStr_2 : "p:r" 
 PlanDn_2 PlanCh_2 
 PlanStr_2 : "p:r" 
 PlanDn_2 PlanCh_2
 PaidDn PaidCh PaidDn PaidCh
 Msru Kodud Nudr Summaud Msru Kodud Nudr Summaud
 Uder Uder
 Str_Dolg1 Dolg1 Str_Dolg1 Dolg1
 Str_Dolg2 Dolg2 Str_Dolg2 Dolg2
 Msrn Kodn Nudn Summan Msrn Kodn Nudn Summan
 Nenach Nenach
.endfields

ÿ˜ à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.if cc0
ÚÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³®¤à §¤. ³’ ¡.­®¬¥à ³  ” ¬¨«¨ï ˆ.Ž.                 §  &&&&&&&& ¬¥áïæ  &&&& £.  ³   ³®¤à §¤. ³’ ¡.­®¬¥à ³  ” ¬¨«¨ï ˆ.Ž.                 §  &&&&&&&& ¬¥áïæ  &&&& £.  ³
³@@@@@@@@@³&&&&&&&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³   ³@@@@@@@@@³&&&&&&&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³
ÃÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   ÃÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ³ ’ à¨ä­ ï áâ ¢ª /Žª« ¤  @@@@@@@@@@@@@³   ³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ³ ’ à¨ä­ ï áâ ¢ª /Žª« ¤  @@@@@@@@@@@@@³
ÃÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   ÃÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³Œ-æ³Š®«.¤­ ³  — á®¢³ Š®¤³   ¨¬¥­®¢ ­¨¥ ¢¨¤  ®¯« â(ã¤¥à¦ ­¨©)  ³  ‘“ŒŒ€         ³   ³Œ-æ³Š®«.¤­ ³ — á®¢ ³ Š®¤³   ¨¬¥­®¢ ­¨¥ ¢¨¤  ®¯« â(ã¤¥à¦ ­¨©)  ³  ‘“ŒŒ€         ³
ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´   ÃÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.{
.if cc1
³ &&³&#&&.&&³&#&&&&&³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³   ³ &&³&#&&.&&³&#&&&&&³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³
.end
.}
³   ³       ³       ³    ³                         ÿ€—ˆ‘‹…Ž....³&'&&&&&&&&&&&&&&³ÿ   ³   ³       ³       ³    ³                         ÿ€—ˆ‘‹…Ž....³&'&&&&&&&&&&&&&&³ÿ
.{?Internal;  FondTime2 = false
³                                               ÿ”Ž„ ‚…Œ…ˆ...&&.&& „.&&&.&& —.³ÿ   ³                                               ÿ”Ž„ ‚…Œ…ˆ...&&.&& „.&&&.&& —.³ÿ
.}
.{?Internal;  FondTime2 = true
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ   ³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ   ³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
.}
³                              ÿ”€Š’ˆ—…‘Šˆ Ž’€Ž’€Ž ‚…Œ…ˆ...&&.&& „.&&&.&& —.³ÿ   ³                              ÿ”€Š’ˆ—…‘Šˆ Ž’€Ž’€Ž ‚…Œ…ˆ...&&.&& „.&&&.&& —.³ÿ
.if CPlanDays
.{?Internal;  PlanTime2 = false
³                                   ÿ          ‹€Ž‚Ž… ‚…ŒŸ...&&.&& „.&&&.&& —.³ÿ   ³                              ÿ               ‹€Ž‚Ž… ‚…ŒŸ...&&.&& „.&&&.&& —.³ÿ
.}
.{?Internal;  PlanTime2 = true
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ   ³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ   ³ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&.&& „.&&&.&& —.³ÿ
.}
.end
.if CPaidDays
³                              ÿ           Ž‹€—ˆ‚€…ŒŽ… ‚…ŒŸ...&&.&& „.&&&.&& —.³ÿ   ³                              ÿ           Ž‹€—ˆ‚€…ŒŽ… ‚…ŒŸ...&&.&& „.&&&.&& —.³ÿ
.end
.{
.if cc2
³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³   ³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³
.end
.}
³   ³       ³       ³    ³                          ÿ“„…†€Ž....³&'&&&&&&&&&&&&&&³ÿ   ³   ³       ³       ³    ³                          ÿ“„…†€Ž....³&'&&&&&&&&&&&&&&³ÿ
³   ³       ³       ³    ³ ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³ÿ   ³   ³       ³       ³    ³ ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³ÿ
³   ³       ³       ³    ³                       ÿ@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³ÿ   ³   ³       ³       ³    ³                       ÿ@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³ÿ
ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ   ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.{
.if cc3
³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³   ³ &&³       ³       ³&&&&³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@³&'&&&&&&&&&&&&&&³
.end
.}
.if nene
³   ³       ³       ³    ³                ÿ…€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„...³&'&&&&&&&&&&&&&&³ÿ   ³   ³       ³       ³    ³                ÿ…€—ˆ‘‹Ÿ…Œ›‰ „Ž•Ž„...³&'&&&&&&&&&&&&&&³ÿ
ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ   ÀÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if CAllNalogFOT
.fields
  FOT_NALCODE  FOT_NALNAME   FOT_NALSUM    FOT_NALCODE  FOT_NALNAME   FOT_NALSUM
.endfields
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿   ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ ®¬¥à ­ «®£    ¨¬¥­®¢ ­¨¥ ­ «®£                                ‘ã¬¬   «®£    ³   ³ ®¬¥à ­ «®£    ¨¬¥­®¢ ­¨¥ ­ «®£                                ‘ã¬¬   «®£    ³
.{ AllFOTLoop CheckEnter
³   @@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&&&&³   ³   @@@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&&&&³
.}
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ   ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
----------------------------------------------------------------------------------   ----------------------------------------------------------------------------------
.end
.}
ÿ˜
.endform
!
!
!
.linkform 'RasList_reestr' prototype is 'RasList'
.group 'reestr5'
.nameinlist'¥¥áâà à áç¥â­ëå «¨áâª®¢ (á £àã¯¯¨à®¢ª®© ¯® ¯®¤à §¤¥«¥­¨ï¬)'
.var
  s,d : string;
  i,t: integer;
.endvar
.begin
  s := '';
  i := 0;
  d := '';
  t := 0;
end.
.{
.fields
NPred
zagol
.endfields
.[H
à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    ^
ÚÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ü ¯/¯ ³’ ¡.­®¬¥à ³ ” ¬¨«¨ï ˆ¬ï Žâç¥áâ¢®                      ³ ®¤¯¨áì      ³
.]H
.if cc0
.{?internal; d<>Podr ;
.begin
d:=Podr;
i:=0;
t:=0;
end.
.fields
Podr
.endfields
ÃÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
|®¤à §¤¥«¥­¨¥: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ |
ÃÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.}
.{?internal; s<>Tabn ;
.begin
  s := Tabn;
  i := i+1;
end.
.fields
i Tabn FIO
.endfields
.{?internal; t=1;
ÃÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
.}
.begin
  t:=1;
end.
|&&&&& | @@@@@@@@ | @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ |              |
.}
.{
.if cc1
.end
.}
.if CPlanDays
.end
.if CPaidDays
.end
.{
.if cc2
.end
.}
.{
.if cc3
.end
.}
.if nene
.end
.if CAllNalogFOT
.{ AllFOTLoop CheckEnter
.}
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
.end
.[f
ÀÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.]f
.}
.endform
!
!
!
.linkform 'RasList_reestr6' prototype is 'RasList'
.group 'reestr6'
.nameinlist'¥¥áâà à áç¥â­ëå «¨áâª®¢ (¡¥§ £àã¯¯¨à®¢ª¨ ¯® ¯®¤à §¤¥«¥­¨ï¬)'
.var
  s : string;
  i: integer;
.endvar
.begin
  s := '';
  i := 0;
end.
.fields
NPred
zagol
zagol2
.endfields
.[H

à¥¤¯à¨ïâ¨¥ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    ^

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

ÚÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ü ¯/¯ ³’ ¡.­®¬¥à ³ ” ¬¨«¨ï ˆ¬ï Žâç¥áâ¢®                      ³ ®¤¯¨áì      ³
.]H
.{
.if cc0
.{?internal; s<>Tabn ;
.begin
  s := Tabn;
  i := i+1;
end.
.fields
i Tabn FIO
.endfields
ÃÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
|&&&&& | @@@@@@@@ | @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ |              |
.}
.{
.if cc1
.end
.}
.if CPlanDays
.end
.if CPaidDays
.end
.{
.if cc2
.end
.}
.{
.if cc3
.end
.}
.if nene
.end
.if CAllNalogFOT
.{ AllFOTLoop CheckEnter
.}
.end
.if NeedShortInfo
.{ Short_Info CheckEnter
.}
.end
.end
.[f
ÀÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
.]f
.}
.endform
