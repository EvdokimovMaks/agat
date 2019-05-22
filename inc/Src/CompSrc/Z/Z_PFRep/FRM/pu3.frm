/*
 …ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕª
 ∫                     (c) 1994,2000 ™Æ‡ØÆ‡†Ê®Ô ÉÄãÄäíàäÄ                    ∫
 ∫ è‡Æ•™‚        : ÉÄãÄäíàäÄ                                                 ∫
 ∫ ë®·‚•¨†       : á†‡†°Æ‚≠†Ô Ø´†‚†                                          ∫
 ∫ Ç•‡·®Ô        : 5.70                                                      ∫
 ∫ ç†ß≠†Á•≠®•    : é‚Á•‚≠Æ·‚Ï ¢ èîê                                          ∫
 ∫ é‚¢•‚·‚¢•≠≠Î© : å•´•Â Ç†·®´®© Ö¢£•≠Ï•¢®Á                                  ∫
 »ÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕÕº
*/
#doc
é‚Á•‚≠Æ·‚Ï ¢ èîê
#end
.set name = 'PU3'
.hide
.fields
 PersonsNumb : integer
 PachNumBegin: integer
 AllCounter  : word
 RabCounter  : word
 ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡
 TabN
 Dog_Num
 Dog_Date : date
 Pach_UplItog :double
 Pach_NachItog:double
 Pach_BolnItog:double
 Pach_VzItog:double
 î†¨®´®Ô
 à¨Ô CharF:word CharF1
 é‚Á•·‚¢Æ CharF2
 ™¢†‡‚†´:word  str™¢†‡‚†´
 MagtinKvartal:string
 God: word CharF3 CharF4
 Fone_org

 RealInn
 RegPFNum
 Pred
 KPP
 curdate
 HP çÄÖå
 ProcPens28
 Val1
 Procent
 SumNeoblagDoh:double
 KolStag : word
 Okrug : word
 PrizSum1: word   ProcSum1:double  Sum11:double   Sum12:double  Sum13:double   Sum14:double
 PrizSum2: word   ProcSum2:double  Sum21:double   Sum22:double  Sum23:double   Sum24:double
 PrizSum3: word   ProcSum3:double  Sum31:double   Sum32:double  Sum33:double   Sum34:double
 PrizSum4: word   ProcSum4:double  Sum41:double   Sum42:double  Sum43:double   Sum44:double
 PrizSum5: word   ProcSum5:double  Sum51:double   Sum52:double  Sum53:double   Sum54:double
 PrizSum6: word   ProcSum6:double  Sum61:double   Sum62:double  Sum63:double   Sum64:double
 PrizSum7: word   ProcSum7:double  Sum71:double   Sum72:double  Sum73:double   Sum74:double
 PrizSum8: word   ProcSum8:double  Sum81:double   Sum82:double  Sum83:double   Sum84:double
 PrizSum9: word   ProcSum9:double  Sum91:double   Sum92:double  Sum93:double   Sum94:double
 PrizSum10: word  ProcSum10:double Sum101:double  Sum102:double Sum103:double  Sum104:double
 PrizSum11: word  ProcSum11:double Sum111:double  Sum112:double Sum113:double  Sum114:double
 PrizSum12: word  ProcSum12:double Sum121:double  Sum122:double Sum123:double  Sum124:double
 ISum1:double  ISum2:double ISum3:double ISum4:double
 çÆ¨•‡ÑÆ£Æ¢Æ‡†
 Ñ•≠Ïá†™
!: integer
 å•·ÔÊá†™
!: word
 ÉÆ§á†™
!: integer
 Ç®§ÇÎØ´†‚Î
! ====== ·‚†¶®, ØÆ™†¨•·‚ ß†™Æ¨•≠‚†‡®¨ ======
 ç†®¨_·‚†¶†
 nppSt
 ç†Á_·‚†¶† äÆ≠_·‚†¶†
 ç†Á_·‚†¶†_‡‚‰ äÆ≠_·‚†¶†_‡‚‰
 ProfCode VidDeyal
 Dop_Pokazat Dop_Rned

 Dolg_ruk
 îàé_‡„™Æ¢Æ§®‚•´Ô
 Fio_Buh
 ó®·´Æ å•·ÔÊ ÉÆ§

 Adv10_Prz:word
 îàé_®·ØÆ´≠®‚•´Ô
 ‚•´_®·ØÆ´≠®‚•´Ô
 FIO_KP
 CodeOKPO
 itognach_èì4:double
 itogVremNetr:double
 itogVz:double
 ItogVzUpl:double
 Dolg_ruk_èì4
 îàé_‡„™Æ¢Æ§®‚•´Ô_èì4
 ó®·´Æ_èì4 å•·ÔÊ_èì4 ÉÆ§_èì4
.endfields
.{ CheckEnter PU3
   ^^^^^^^
   äÆ≠‰®§•≠Ê®†´Ï≠Æ·‚Ï ®≠‰Æ‡¨†Ê®® £†‡†≠‚®‡„•‚·Ô ØÆ´„Á†‚•´•¨
   îÆ‡¨† ëáÇ-1         äÆ§ ØÆ éäìÑ
                      à≠§®¢®§„†´Ï≠Î•   ·¢•§•≠®Ô
       Æ ‚‡„§Æ¢Æ¨ ·‚†¶•, ß†‡†°Æ‚™• (¢Æß≠†£‡†¶§•≠®®), §ÆÂÆ§•
       ® ≠†Á®·´•≠≠ÎÂ ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·†Â ß†·‚‡†ÂÆ¢†≠≠Æ£Æ ´®Ê†
   ë‚‡†ÂÆ¢Æ© ≠Æ¨•‡ @@@@@@@@@@@@@@@@@@@@  ^              ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
   î†¨®´®Ô         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@≥     í®Ø ‰Æ‡¨Î      ≥
   à¨Ô             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@≥ @ ®·ÂÆ§≠†Ô ^       ≥
   é‚Á•·‚¢Æ        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@≥ @ ™Æ‡‡•™‚®‡„ÓÈ†Ô   ≥
   é‚Á•‚≠Î© Ø•‡®Æ§ && @@@@@@@ &&&& £Æ§  ^               ≥ @ Æ‚¨•≠ÔÓÈ†Ô       ≥
   ë¢•§•≠®Ô Æ ‡†°Æ‚Æ§†‚•´•                              ≥ @ ≠†ß≠†Á•≠®• Ø•≠·®®≥
   ê•£®·‚‡†Ê®Æ≠≠Î© ≠Æ¨•‡ @@@@@@@@@@@@@@                 ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
   ç†®¨•≠Æ¢†≠®• @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^ ^ ^ ^ ^^ ^ ^
   ä†‚•£Æ‡®Ô Ø´†‚•´ÏÈ®™† ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢: ™Æ§ ^ ≠†®¨•≠Æ¢†≠®• ^
   ë„¨¨† ≠†Á®·´•≠≠ÎÂ ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢:
   „Ø´†Á®¢†•¨ÎÂ ‡†°Æ‚Æ§†‚•´•¨  :                   &'&&&&&&&&&&&&.&& (@@@@)
   „Ø´†Á®¢†•¨ÎÂ ®ß ß†‡†°Æ‚™† ß†·‚‡†ÂÆ¢†≠≠Æ£Æ ´®Ê†: &'&&&&&&&&&&&&.&& (‡„°.)
   ë¢•§•≠®Ô Æ ß†‡†°Æ‚™• (¢Æß≠†£‡†¶§•≠®®), §ÆÂÆ§• ß† Æ‚Á•‚≠Î© Ø•‡®Æ§: ^
   ^
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥               ≥         Æ°È®• ≠†Á®·´•≠®Ô, „Á®‚Î¢†•¨Î• Ø‡® ≠†ß≠†Á•≠®® Ø•≠·®®             ≥
  ≥ å•·ÔÊ         √ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥
  ≥               ≥           ¢·•£Æ                 ≥¢ ‚Æ¨ Á®·´• ØÆ °Æ´Ï≠®Á≠Î¨ ´®·‚†¨       ≥
  ≥               ≥                                 ≥  (´®·‚™†¨ ≠•‚‡„§Æ·ØÆ·Æ°≠Æ·‚®)         ≥
  ≥               ≥                                 ≥          ® ·‚®Ø•≠§®®                  ≥
  √ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥
  ≥ ü≠¢†‡Ï        ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ î•¢‡†´Ï       ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ å†‡‚          ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ ÄØ‡•´Ï        ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ å†©           ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ àÓ≠Ï          ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ àÓ´Ï          ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ Ä¢£„·‚        ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ ë•≠‚Ô°‡Ï      ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ é™‚Ô°‡Ï       ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ çÆÔ°‡Ï        ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
  ≥ Ñ•™†°‡Ï       ≥& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.≥
^^^^^^^^^^^^
^^^^^^^^^^^^
^^^^^^^^^^^^
  √ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¥
  ≥  à‚Æ£Æ        ≥ ^                               ≥^     ^              ^                 ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
   çÆ¨•‡ §Æ£Æ¢Æ‡†  @#@@@@@@@@@@@@@@@@@@@@@@
   Ñ†‚† ß†™´ÓÁ•≠®Ô "@#@@" @#@@@@@@@@ @#@@ £Æ§†
   Ç®§ ¢ÎØ´†‚Î     @#@@@@@@@@@@@@@@@@@@@@@@
   ë‚†¶ ‡†°Æ‚Î ß† Æ‚Á•‚≠Î© Ø•‡®Æ§:
^
  ⁄ƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ≥    ç†Á†´Æ     ≥    äÆ≠•Ê      ≥í•‡‡®‚Æ-≥é·Æ°Î• ≥ à·Á®·´Ô•¨Î© ‚‡„§Æ¢Æ© ≥      ÇÎ·´„£† ´•‚       ≥
  ≥  ≥               ≥               ≥‡®†´Ï≠Î•≥„·´Æ¢®Ô≥        ·‚†¶          ≥                        ≥
  ≥ N≥    Ø•‡®Æ§†    ≥   Ø•‡®Æ§†     ≥„·´Æ¢®Ô ≥ ‚‡„§† √ƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒ¥
  ≥  ≥               ≥               ≥        ≥       ≥Æ·≠Æ¢†≠®•≥§ÆØÆ´≠®‚•´Ï-≥ Æ·≠Æ¢†≠®• ≥§ÆØÆ´≠®‚•´Ï-≥
  ≥  ≥(§•≠Ï,¨•·.,£Æ§)≥(§•≠Ï,¨•·.,£Æ§)≥ (™Æ§)  ≥ (™Æ§) ≥  (™Æ§)  ≥≠Î• ·¢•§•≠®Ô≥   (™Æ§)   ≥≠Î• ·¢•§•≠®Ô≥
  √ƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒƒƒ¥
.{ CheckEnter PU_Stages
^^^^^^^^
^^
.}
  ¿ƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒŸ

   ç†®¨•≠Æ¢†≠®• §Æ´¶≠Æ·‚® ‡„™Æ¢Æ§®‚•´Ô            èÆ§Ø®·Ï                 ê†·Ë®‰‡Æ¢™† ØÆ§Ø®·®

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   Ñ†‚† "&&" @@@@@@@@ &&&& £Æ§†                    å.è.
.{ CheckEnter PUPR4
^
 ^^^^^^^^^^^
 ^^
.if PUDeadLine
.end
.}
.}
.endform
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'PU3_LMAGNIT1' prototype is 'PU3'
.nameinlist 'îÆ‡¨† èì-3 (‰†©´ §´Ô ¨†£≠®‚≠ÎÂ ≠Æ·®‚•´•©)'
.var
 pach_nmb   : word
 nomer      : word
 KolNach    : integer
 Initial1, Initial2,
 EndLineStr : string[1];
 _cnt       : word;
 SumNach    : double
 SumBoln    : double
 SumVz      : double
 TrueType   : string[1];
 InPrizSum1, InPrizSum2, InPrizSum3,InPrizSum4,
 InPrizSum5, InPrizSum6, InPrizSum7, InPrizSum8,
 InPrizSum9, InPrizSum10, InPrizSum11, InPrizSum12 : boolean;
.endvar
!=============================================================================
!   î„≠™Ê®Ô , ™Æ‚Æ‡†Ô °„§•‚ ÆØ‡•§•´Ô‚Ï ≠„¶≠Æ ´® ¢Î¢Æ§®‚Ï ß†™‡Î¢†ÓÈ„Ó
!   ·™Æ°™„ ®´® ≠•‚
!=============================================================================
.function PriznForLastChar(_index : word) : string;
begin
 PriznForLastChar := '';
 case _index of
   1:{
      if  (KolStag = 0)and
          (
              (CharF=2)
            or (
             ( not InPrizSum2 )and
             ( not InPrizSum3 )and
             ( not InPrizSum4 )and
             ( not InPrizSum5 )and
             ( not InPrizSum6 )and
             ( not InPrizSum7 )and
             ( not InPrizSum8 )and
             ( not InPrizSum9 )and
             ( not InPrizSum10)and
             ( not InPrizSum11)and
             ( not InPrizSum12)
             )
            ) then PriznForLastChar := '>';
     }
   2:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum3 )and
           ( not InPrizSum4 )and
           ( not InPrizSum5 )and
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
           )
          ) then PriznForLastChar := '>';
     }
   3:{
      if  (KolStag = 0)and
          ((CharF=2)
          or (
           ( not InPrizSum4 )and
           ( not InPrizSum5 )and
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
           )
          ) then PriznForLastChar := '>';
   }
   4:{
      if  (KolStag = 0)and
          ((CharF=2)
           or (
           ( not InPrizSum5 )and
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   5:{
      if  (KolStag = 0)and
          ((CharF=2)
           or (
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          )then PriznForLastChar := '>';
   }
   6:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          )then PriznForLastChar := '>';
   }
   7:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   8:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   9:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
  10:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
  }
  11:{
      if  (KolStag = 0)and
          ((CharF=2)or ( not InPrizSum12 )) then PriznForLastChar := '>';
  }
  12:{ if (KolStag = 0) PriznForLastChar := '>'}
 end;
end.
!=============================================================================
.function WriteInForm(_sum : double; prizn: word) : string;
begin
   WriteInForm := ' ';
   if (_sum <> 0)
     WriteInForm := DoubleToStr(_sum,'[|-]366666666666')
   else if (_sum = 0) and (prizn = 1)
     WriteInForm := DoubleToStr(0,'[|-]366666666666')
end.
.function WriteInFormPr(_sum : double; prizn: word) : string;
begin
   WriteInFormPr := ' ';
   if (_sum <> 0)
     WriteInFormPr := DoubleToStr(_sum,'[|-]366666666666~99')
   else if (_sum = 0) and (prizn = 1)
     WriteInFormPr := DoubleToStr(0,'[|-]366666666666~99')
end.
!=============================================================================
.function SapceOfZeroForTotal(_categ: string): string;
begin
  SapceOfZeroForTotal := ' ';
   if trim( _categ) = '01'
   or trim( _categ) = '02'
   or trim( _categ) = '07'
     if CharF <> 2
       SapceOfZeroForTotal := 0;
end.
.begin
  pach_nmb:= PachNumBegin
  nomer   := 0
  KolNach := 0
  SumNach := 0
  SumBoln := 0
  SumVz   := 0
end.
.{ CheckEnter PU3
.begin
   Initial1 := à¨Ô;
   Initial2 := é‚Á•·‚¢Æ;
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
.{?internal;(nomer=0)or(nomer=AllCounter)
.fields
if(Trim(RealInn)<>'',Trim(RealInn),' ')
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(Pred)<>'',UpCase(Trim(Pred)),' ')
pach_nmb
if(Trim(PersonsNumb)<>'',Trim(PersonsNumb),' ')
if(CharF<>2, DoubleToStr(Pach_NachItog,'[|-]3666666666666'),' ')
if(CharF<>2, DoubleToStr(Pach_BolnItog,'[|-]3666666666666'),' ')
if(CharF<>2, DoubleToStr(Pach_VzItog,'[|-]3666666666666'),' ')
.endfields
áÉãÇ=1.4=
<èÄóä=^=^=^=^= = =1=
íàèÑ=èì-3=^=^=^=^=>
.}
.begin
  nomer:= nomer + 1;
  KolNach:= 0
  SumNach:= 0
  SumBoln:= 0
  SumVz  := 0
  _cnt    := 0;
  case CharF of
   0: TrueType:= 'à'
   1: TrueType:= 'ä'
   2: TrueType:= 'é'
   3: TrueType:= 'è'
  end;


  InPrizSum1 := false; InPrizSum2 := false;
  InPrizSum3 := false; InPrizSum4 := false;
  InPrizSum5 := false; InPrizSum6 := false;
  InPrizSum7 := false; InPrizSum8 := false;
  InPrizSum9 := false; InPrizSum10 := false;
  InPrizSum11 := false; InPrizSum12 := false;
 if (Sum11 <> 0)
 or (Sum12 <> 0)
 or (Sum13 <> 0)
 or (PrizSum1 = 1)  then
  begin
    SumNach:= SumNach + Trunc(double(Sum11));
    SumBoln:= SumBoln + Trunc(Sum12);
    SumVz  := SumVz + Trunc(Sum13);
    KolNach:= KolNach+1;
    InPrizSum1 := true;
  end;
 if (Sum21 <> 0)
 or (Sum22 <> 0)
 or (Sum23 <> 0)
 or (PrizSum2 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum21);
    SumBoln:= SumBoln + Trunc(Sum22);
    SumVz  := SumVz +   Trunc(Sum23);
    KolNach:= KolNach+1;
    InPrizSum2 := true;
  end;
 if (Sum31 <> 0)
 or (Sum32 <> 0)
 or (Sum33 <> 0)
 or (PrizSum3 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum31);
    SumBoln:= SumBoln + Trunc(Sum32);
    SumVz  := SumVz +   Trunc(Sum33);
    KolNach:= KolNach+1;
    InPrizSum3 := true;
  end;
 if (Sum41 <> 0)
 or (Sum42 <> 0)
 or (Sum43 <> 0)
 or (PrizSum4 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum41);
    SumBoln:= SumBoln + Trunc(Sum42);
    SumVz  := SumVz +   Trunc(Sum43);
    KolNach:= KolNach+1;
    InPrizSum4 := true;
  end;
 if (Sum51 <> 0)
 or (Sum52 <> 0)
 or (Sum53 <> 0)
 or (PrizSum5 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum51);
    SumBoln:= SumBoln + Trunc(Sum52);
    SumVz  := SumVz +   Trunc(Sum53);
    KolNach:= KolNach+1;
    InPrizSum5 := true;
  end;
 if (Sum61 <> 0)
 or (Sum62 <> 0)
 or (Sum63 <> 0)
 or (PrizSum6 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum61);
    SumBoln:= SumBoln + Trunc(Sum62);
    SumVz  := SumVz +   Trunc(Sum63);
    KolNach:= KolNach+1;
    InPrizSum6 := true;
  end;
 if (Sum71 <> 0)
 or (Sum72 <> 0)
 or (Sum73 <> 0)
 or (PrizSum7 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum71);
    SumBoln:= SumBoln + Trunc(Sum72);
    SumVz  := SumVz +   Trunc(Sum73);
    KolNach:= KolNach+1;
    InPrizSum7 := true;
  end;
 if (Sum81 <> 0)
 or (Sum82 <> 0)
 or (Sum83 <> 0)
 or (PrizSum8 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum81);
    SumBoln:= SumBoln + Trunc(Sum82);
    SumVz  := SumVz +   Trunc(Sum83);
    KolNach:= KolNach+1;
    InPrizSum8 := true;
  end;
 if (Sum91 <> 0)
 or (Sum92 <> 0)
 or (Sum93 <> 0)
 or (PrizSum9 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum91);
    SumBoln:= SumBoln + Trunc(Sum92);
    SumVz  := SumVz +   Trunc(Sum93);
    KolNach:= KolNach+1;
    InPrizSum9 := true;
  end;
 if (Sum101 <> 0)
 or (Sum102 <> 0)
 or (Sum103 <> 0)
 or (PrizSum10 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum101);
    SumBoln:= SumBoln + Trunc(Sum102);
    SumVz  := SumVz +   Trunc(Sum103);
    KolNach:= KolNach+1;
    InPrizSum10 := true;
  end;
 if (Sum111 <> 0)
 or (Sum112 <> 0)
 or (Sum113 <> 0)
 or (PrizSum11 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum111);
    SumBoln:= SumBoln + Trunc(Sum112);
    SumVz  := SumVz +   Trunc(Sum113);
    KolNach:= KolNach+1;
    InPrizSum11 := true;
  end;
 if (Sum121 <> 0)
 or (Sum122 <> 0)
 or (Sum123 <> 0)
 or (PrizSum12 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum121);
    SumBoln:= SumBoln + Trunc(Sum122);
    SumVz  := SumVz +   Trunc(Sum123);
    KolNach:= KolNach+1;
    InPrizSum12 := true;
  end;
end.
.fields
TrueType
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡)<>'',Trim(ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡),' ')
if(Trim(î†¨®´®Ô)<>'' ,UpCase(Trim(î†¨®´®Ô)),' ')
if(Trim(Initial1)<>'',UpCase(Trim(Initial1)),' ')
if(Trim(Initial2)<>'',UpCase(Trim(Initial2)),' ')
if(Trim(HP)<>'',UpCase(Trim(HP)),' ')
if(Trim(Dog_Num)<>'',Trim(Dog_Num),' ')
if(day(Dog_Date)<>0,DateToStr(Dog_Date,'DD/MM/YYYY'),' ')
if((CharF <> 2)and(ISum1 <> 0),DoubleToStr(ISum1,'[|-]3666666666666'), SapceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum2 <> 0),DoubleToStr(ISum2,'[|-]3666666666666'), SapceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum3 <> 0),DoubleToStr(ISum3,'[|-]3666666666666'), SapceOfZeroForTotal(HP))
if(CharF <> 2,KolNach,' ')
if(CharF <> 2,KolStag,' ')
curdate
God
if(Trim(Fone_org)<>'',Trim(Fone_org),' ')
if ( TrueType = 'é','>','')
.endfields
<èì-3=^=^=^=^=^=^=^=^=^= = =^=^=^=^=^=^= =^=^=^
.fields
WriteInForm(Sum11, PrizSum1) WriteInForm(Sum12, PrizSum1) WriteInForm(Sum13, PrizSum1) WriteInFormPr(ProcSum1, PrizSum1) PriznForLastChar(1)
WriteInForm(Sum21, PrizSum2) WriteInForm(Sum22, PrizSum2) WriteInForm(Sum23, PrizSum2) WriteInFormPr(ProcSum2, PrizSum2) PriznForLastChar(2)
WriteInForm(Sum31, PrizSum3) WriteInForm(Sum32, PrizSum3) WriteInForm(Sum33, PrizSum3) WriteInFormPr(ProcSum3, PrizSum3) PriznForLastChar(3)
WriteInForm(Sum41, PrizSum4) WriteInForm(Sum42, PrizSum4) WriteInForm(Sum43, PrizSum4) WriteInFormPr(ProcSum4, PrizSum4) PriznForLastChar(4)
WriteInForm(Sum51, PrizSum5) WriteInForm(Sum52, PrizSum5) WriteInForm(Sum53, PrizSum5) WriteInFormPr(ProcSum5, PrizSum5) PriznForLastChar(5)
WriteInForm(Sum61, PrizSum6) WriteInForm(Sum62, PrizSum6) WriteInForm(Sum63, PrizSum6) WriteInFormPr(ProcSum6, PrizSum6) PriznForLastChar(6)
WriteInForm(Sum71, PrizSum7) WriteInForm(Sum72, PrizSum7) WriteInForm(Sum73, PrizSum7) WriteInFormPr(ProcSum7, PrizSum7) PriznForLastChar(7)
WriteInForm(Sum81, PrizSum8) WriteInForm(Sum82, PrizSum8) WriteInForm(Sum83, PrizSum8) WriteInFormPr(ProcSum8, PrizSum8) PriznForLastChar(8)
WriteInForm(Sum91, PrizSum9) WriteInForm(Sum92, PrizSum9) WriteInForm(Sum93, PrizSum9) WriteInFormPr(ProcSum9, PrizSum9) PriznForLastChar(9)
WriteInForm(Sum101, PrizSum10) WriteInForm(Sum102, PrizSum10) WriteInForm(Sum103, PrizSum10) WriteInFormPr(ProcSum10, PrizSum10) PriznForLastChar(10)
WriteInForm(Sum111, PrizSum11) WriteInForm(Sum112, PrizSum11) WriteInForm(Sum113, PrizSum11) WriteInFormPr(ProcSum11, PrizSum11) PriznForLastChar(11)
WriteInForm(Sum121, PrizSum12) WriteInForm(Sum122, PrizSum12) WriteInForm(Sum123, PrizSum12) WriteInFormPr(ProcSum12, PrizSum12) PriznForLastChar(12)
.endfields
.{?internal;(InPrizSum1=true)and(CharF<>2)
çóëã=1=^=^=^=^=^
.}
.{?internal;(InPrizSum2=true)and(CharF<>2)
çóëã=2=^=^=^=^=^
.}
.{?internal;(InPrizSum3=true)and(CharF<>2)
çóëã=3=^=^=^=^=^
.}
.{?internal;(InPrizSum4=true)and(CharF<>2)
çóëã=4=^=^=^=^=^
.}
.{?internal;(InPrizSum5=true)and(CharF<>2)
çóëã=5=^=^=^=^=^
.}
.{?internal;(InPrizSum6=true)and(CharF<>2)
çóëã=6=^=^=^=^=^
.}
.{?internal;(InPrizSum7=true)and(CharF<>2)
çóëã=7=^=^=^=^=^
.}
.{?internal;(InPrizSum8=true)and(CharF<>2)
çóëã=8=^=^=^=^=^
.}
.{?internal;(InPrizSum9=true)and(CharF<>2)
çóëã=9=^=^=^=^=^
.}
.{?internal;(InPrizSum10=true)and(CharF<>2)
çóëã=10=^=^=^=^=^
.}
.{?internal;(InPrizSum11=true)and(CharF<>2)
çóëã=11=^=^=^=^=^
.}
.{?internal;(InPrizSum12=true)and(CharF<>2)
çóëã=12=^=^=^=^=^
.}
.{ CheckEnter PU_Stages
.fields
ç†Á_·‚†¶† äÆ≠_·‚†¶†
if(Trim(ProfCode)<>'',UpCase(Trim(ProfCode)),' ')
if(Trim(VidDeyal)<>'',UpCase(Trim(VidDeyal)),' ')
if(Trim(Dop_Pokazat)<>'',UpCase(Trim(Dop_Pokazat)),' ')
if((Trim(Dop_Rned)<>'') ,UpCase(Trim(Dop_Rned)),' ')
EndLineStr
.endfields
.{?internal;(CharF<>2)or((CharF=2)and(Trim(HP)='03'))
.begin
  EndLineStr := '';
  _cnt       := _cnt + 1;
  if (_cnt = KolStag) EndLineStr := '>';
end.
ëíÄÜ=^=^=^=^=^=^=^
.}
.}
.{ CheckEnter PUPR4
.if PUDeadLine
.fields
pach_nmb
.endfields
___äéçÖñ ^ èÄóäà
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
  KolNach := 0
  SumNach := 0
  SumBoln := 0
  SumVz   := 0
end.
.end
.}
.}
.endform
!!!!!!!!!!!!!!!!!!!!!!!!èì-3-2013!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'PU3_LMAGNIT2' prototype is 'PU3'
.nameinlist 'îÆ‡¨† èì-3 Æ‚ 01.01.2013 (‰†©´ §´Ô ¨†£≠®‚≠ÎÂ ≠Æ·®‚•´•©)'
.var
 pach_nmb   : word
 nomer      : word
 KolNach    : integer
 Initial1, Initial2,
 EndLineStr : string[1];
 _cnt       : word;
 SumUpl     : double;
 SumNach    : double
 SumBoln    : double
 SumVz      : double
 TrueType   : string[1];
 InPrizSum1, InPrizSum2, InPrizSum3,InPrizSum4,
 InPrizSum5, InPrizSum6, InPrizSum7, InPrizSum8,
 InPrizSum9, InPrizSum10, InPrizSum11, InPrizSum12 : boolean;
.endvar
!=============================================================================
!   î„≠™Ê®Ô , ™Æ‚Æ‡†Ô °„§•‚ ÆØ‡•§•´Ô‚Ï ≠„¶≠Æ ´® ¢Î¢Æ§®‚Ï ß†™‡Î¢†ÓÈ„Ó
!   ·™Æ°™„ ®´® ≠•‚
!=============================================================================
.function PriznForLastChar(_index : word) : string;
begin
 PriznForLastChar := '';
 case _index of
   1:{
      if  (KolStag = 0)and
          (
              (CharF=2)
            or (
             ( not InPrizSum2 )and
             ( not InPrizSum3 )and
             ( not InPrizSum4 )and
             ( not InPrizSum5 )and
             ( not InPrizSum6 )and
             ( not InPrizSum7 )and
             ( not InPrizSum8 )and
             ( not InPrizSum9 )and
             ( not InPrizSum10)and
             ( not InPrizSum11)and
             ( not InPrizSum12)
             )
            ) then PriznForLastChar := '>';
     }
   2:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum3 )and
           ( not InPrizSum4 )and
           ( not InPrizSum5 )and
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
           )
          ) then PriznForLastChar := '>';
     }
   3:{
      if  (KolStag = 0)and
          ((CharF=2)
          or (
           ( not InPrizSum4 )and
           ( not InPrizSum5 )and
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
           )
          ) then PriznForLastChar := '>';
   }
   4:{
      if  (KolStag = 0)and
          ((CharF=2)
           or (
           ( not InPrizSum5 )and
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   5:{
      if  (KolStag = 0)and
          ((CharF=2)
           or (
           ( not InPrizSum6 )and
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          )then PriznForLastChar := '>';
   }
   6:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum7 )and
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          )then PriznForLastChar := '>';
   }
   7:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum8 )and
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   8:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum9 )and
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   9:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum10)and
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
  10:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           ( not InPrizSum11)and
           ( not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
  }
  11:{
      if  (KolStag = 0)and
          ((CharF=2)or ( not InPrizSum12 )) then PriznForLastChar := '>';
  }
  12:{ if (KolStag = 0) PriznForLastChar := '>'}
 end;
end.
!=============================================================================
.function WriteInForm(_sum : double; prizn: word) : string;
begin
   WriteInForm := ' ';
   if (_sum <> 0)
     WriteInForm := DoubleToStr(_sum,'[|-]366666666666')
   else if (_sum = 0) and (prizn = 1)
     WriteInForm := DoubleToStr(0,'[|-]366666666666')
   // „Ø´†Á•≠≠Î• ¢ß≠Æ·Î §´Ô ´Ó°Æ£Æ ‚®Ø† ·Æ‚‡„§≠®™† ¢Î¢Æ§Ô‚·Ô Á®·´Æ¨
   else if (_sum = 0) and (prizn = 2)
     WriteInForm := DoubleToStr(0,'[|-]366666666666')
end.
.function WriteInFormPr(_sum : double; prizn: word) : string;
begin
   WriteInFormPr := ' ';
   if (_sum <> 0)
     WriteInFormPr := DoubleToStr(_sum,'[|-]366666666666~99')
   else if (_sum = 0) and (prizn = 1)
     WriteInFormPr := DoubleToStr(0,'[|-]366666666666~99')
end.
!=============================================================================
.function SapceOfZeroForTotal(_categ: string): string;
begin
  SapceOfZeroForTotal := ' ';
   if trim( _categ) = '01'
   or trim( _categ) = '02'
   or trim( _categ) = '07'
     if CharF <> 2
       SapceOfZeroForTotal := 0;
end.
.begin
  pach_nmb:= PachNumBegin
  nomer   := 0
  KolNach := 0
  SumUpl  := 0
  SumNach := 0
  SumBoln := 0
  SumVz   := 0
end.
.{ CheckEnter PU3
.begin
   Initial1 := à¨Ô;
   Initial2 := é‚Á•·‚¢Æ;
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
.{?internal;(nomer=0)or(nomer=AllCounter)
.fields
if(Trim(RealInn)<>'',Trim(RealInn),' ')
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(Pred)<>'',UpCase(Trim(Pred)),' ')
if(Year(StrToDate(curdate,'DD/MM/YYYY'))>2012, LPadCh(pach_nmb,'0',9), LPadCh(pach_nmb,'0',5))
if(Trim(PersonsNumb)<>'',Trim(PersonsNumb),' ')
if(CharF<>2, DoubleToStr(Pach_NachItog,'[|-]3666666666666'),0)
if(CharF<>2, DoubleToStr(Pach_BolnItog,'[|-]3666666666666'),0)
if(CharF<>2, DoubleToStr(Pach_VzItog,'[|-]3666666666666'),0)
if(CharF<>2, if(God>2012, DoubleToStr(Pach_UplItog,'[|-]3666666666666'), 0),0)
.endfields
áÉãÇ=1.5=
<èÄóä=^=^=^=^= = =1=
íàèÑ=èì-3=^=^=^=^=^=>
.}
.begin
  nomer:= nomer + 1;
  KolNach:= 0
  SumUpl := 0
  SumNach:= 0
  SumBoln:= 0
  SumVz  := 0
  _cnt    := 0;
  case CharF of
   0: TrueType:= 'à'
   1: TrueType:= 'ä'
   2: TrueType:= 'é'
   3: TrueType:= 'è'
  end;


  InPrizSum1 := false; InPrizSum2 := false;
  InPrizSum3 := false; InPrizSum4 := false;
  InPrizSum5 := false; InPrizSum6 := false;
  InPrizSum7 := false; InPrizSum8 := false;
  InPrizSum9 := false; InPrizSum10 := false;
  InPrizSum11 := false; InPrizSum12 := false;
 if (Sum11 <> 0)
 or (Sum12 <> 0)
 or (Sum13 <> 0)
 or (Sum14 <> 0)
 or (PrizSum1 = 1)  then
  begin
    SumNach:= SumNach + Trunc(double(Sum11));
    SumBoln:= SumBoln + Trunc(Sum12);
    SumVz  := SumVz   + Trunc(Sum13);
    SumUpl := SumUpl  + Trunc(Sum14);
    KolNach:= KolNach+1;
    InPrizSum1 := true;
  end;
 if (Sum21 <> 0)
 or (Sum22 <> 0)
 or (Sum23 <> 0)
 or (Sum24 <> 0)
 or (PrizSum2 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum21);
    SumBoln:= SumBoln + Trunc(Sum22);
    SumVz  := SumVz   + Trunc(Sum23);
    SumUpl := SumUpl  + Trunc(Sum24);
    KolNach:= KolNach+1;
    InPrizSum2 := true;
  end;
 if (Sum31 <> 0)
 or (Sum32 <> 0)
 or (Sum33 <> 0)
 or (Sum34 <> 0)
 or (PrizSum3 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum31);
    SumBoln:= SumBoln + Trunc(Sum32);
    SumVz  := SumVz   + Trunc(Sum33);
    SumUpl := SumUpl  + Trunc(Sum34);
    KolNach:= KolNach+1;
    InPrizSum3 := true;
  end;
 if (Sum41 <> 0)
 or (Sum42 <> 0)
 or (Sum43 <> 0)
 or (Sum44 <> 0)
 or (PrizSum4 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum41);
    SumBoln:= SumBoln + Trunc(Sum42);
    SumVz  := SumVz   + Trunc(Sum43);
    SumUpl := SumUpl  + Trunc(Sum44);
    KolNach:= KolNach+1;
    InPrizSum4 := true;
  end;
 if (Sum51 <> 0)
 or (Sum52 <> 0)
 or (Sum53 <> 0)
 or (Sum54 <> 0)
 or (PrizSum5 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum51);
    SumBoln:= SumBoln + Trunc(Sum52);
    SumVz  := SumVz   + Trunc(Sum53);
    SumUpl := SumUpl  + Trunc(Sum54);
    KolNach:= KolNach+1;
    InPrizSum5 := true;
  end;
 if (Sum61 <> 0)
 or (Sum62 <> 0)
 or (Sum63 <> 0)
 or (Sum64 <> 0)
 or (PrizSum6 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum61);
    SumBoln:= SumBoln + Trunc(Sum62);
    SumVz  := SumVz   + Trunc(Sum63);
    SumUpl := SumUpl  + Trunc(Sum64);
    KolNach:= KolNach+1;
    InPrizSum6 := true;
  end;
 if (Sum71 <> 0)
 or (Sum72 <> 0)
 or (Sum73 <> 0)
 or (Sum74 <> 0)
 or (PrizSum7 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum71);
    SumBoln:= SumBoln + Trunc(Sum72);
    SumVz  := SumVz   + Trunc(Sum73);
    SumUpl := SumUpl  + Trunc(Sum74);
    KolNach:= KolNach+1;
    InPrizSum7 := true;
  end;
 if (Sum81 <> 0)
 or (Sum82 <> 0)
 or (Sum83 <> 0)
 or (Sum84 <> 0)
 or (PrizSum8 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum81);
    SumBoln:= SumBoln + Trunc(Sum82);
    SumVz  := SumVz   + Trunc(Sum83);
    SumUpl := SumUpl  + Trunc(Sum84);
    KolNach:= KolNach+1;
    InPrizSum8 := true;
  end;
 if (Sum91 <> 0)
 or (Sum92 <> 0)
 or (Sum93 <> 0)
 or (Sum94 <> 0)
 or (PrizSum9 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum91);
    SumBoln:= SumBoln + Trunc(Sum92);
    SumVz  := SumVz   + Trunc(Sum93);
    SumUpl := SumUpl  + Trunc(Sum94);
    KolNach:= KolNach+1;
    InPrizSum9 := true;
  end;
 if (Sum101 <> 0)
 or (Sum102 <> 0)
 or (Sum103 <> 0)
 or (Sum104 <> 0)
 or (PrizSum10 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum101);
    SumBoln:= SumBoln + Trunc(Sum102);
    SumVz  := SumVz   + Trunc(Sum103);
    SumUpl := SumUpl  + Trunc(Sum104);
    KolNach:= KolNach+1;
    InPrizSum10 := true;
  end;
 if (Sum111 <> 0)
 or (Sum112 <> 0)
 or (Sum113 <> 0)
 or (Sum114 <> 0)
 or (PrizSum11 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum111);
    SumBoln:= SumBoln + Trunc(Sum112);
    SumVz  := SumVz   + Trunc(Sum113);
    SumUpl := SumUpl  + Trunc(Sum114);
    KolNach:= KolNach+1;
    InPrizSum11 := true;
  end;
 if (Sum121 <> 0)
 or (Sum122 <> 0)
 or (Sum123 <> 0)
 or (Sum124 <> 0)
 or (PrizSum12 = 1) then
  begin
    SumNach:= SumNach + Trunc(Sum121);
    SumBoln:= SumBoln + Trunc(Sum122);
    SumVz  := SumVz   + Trunc(Sum123);
    SumUpl := SumUpl  + Trunc(Sum124);
    KolNach:= KolNach+1;
    InPrizSum12 := true;
  end;
end.
.fields
TrueType
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡)<>'',Trim(ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡),' ')
if(Trim(î†¨®´®Ô)<>'' ,UpCase(Trim(î†¨®´®Ô)),' ')
if(Trim(Initial1)<>'',UpCase(Trim(Initial1)),' ')
if(Trim(Initial2)<>'',UpCase(Trim(Initial2)),' ')
if(Trim(HP)<>'',UpCase(Trim(HP)),' ')
if(Trim(Dog_Num)<>'',Trim(Dog_Num),' ')
if(day(Dog_Date)<>0,DateToStr(Dog_Date,'DD/MM/YYYY'),' ')
if((CharF <> 2)and(ISum1 <> 0),DoubleToStr(ISum1,'[|-]3666666666666'), SapceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum2 <> 0),DoubleToStr(ISum2,'[|-]3666666666666'), SapceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum3 <> 0),DoubleToStr(ISum3,'[|-]3666666666666'), SapceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum4 <> 0),if(God>2012,DoubleToStr(ISum4,'[|-]3666666666666'), ' '), if(God>2012, 0, ' '))
if(CharF <> 2,KolNach,' ')
if(CharF <> 2,KolStag,' ')
curdate
God
if(Trim(Fone_org)<>'',Trim(Fone_org),' ')
if ( TrueType = 'é','>','')
.endfields
<èì-3=^=^=^=^=^=^=^=^=^= = =^=^=^=^=^=^=^= =^=^=^
.fields
WriteInForm(Sum11,  PrizSum1)   WriteInForm(Sum12,  PrizSum1)   WriteInForm(Sum13,  PrizSum1)   if(God>2012, WriteInForm(Sum14,  PrizSum1), ' ')   WriteInFormPr(ProcSum1,  PrizSum1)   PriznForLastChar(1)
WriteInForm(Sum21,  PrizSum2)   WriteInForm(Sum22,  PrizSum2)   WriteInForm(Sum23,  PrizSum2)   if(God>2012, WriteInForm(Sum24,  PrizSum2), ' ')   WriteInFormPr(ProcSum2,  PrizSum2)   PriznForLastChar(2)
WriteInForm(Sum31,  PrizSum3)   WriteInForm(Sum32,  PrizSum3)   WriteInForm(Sum33,  PrizSum3)   if(God>2012, WriteInForm(Sum34,  PrizSum3), ' ')   WriteInFormPr(ProcSum3,  PrizSum3)   PriznForLastChar(3)
WriteInForm(Sum41,  PrizSum4)   WriteInForm(Sum42,  PrizSum4)   WriteInForm(Sum43,  PrizSum4)   if(God>2012, WriteInForm(Sum44,  PrizSum4), ' ')   WriteInFormPr(ProcSum4,  PrizSum4)   PriznForLastChar(4)
WriteInForm(Sum51,  PrizSum5)   WriteInForm(Sum52,  PrizSum5)   WriteInForm(Sum53,  PrizSum5)   if(God>2012, WriteInForm(Sum54,  PrizSum5), ' ')   WriteInFormPr(ProcSum5,  PrizSum5)   PriznForLastChar(5)
WriteInForm(Sum61,  PrizSum6)   WriteInForm(Sum62,  PrizSum6)   WriteInForm(Sum63,  PrizSum6)   if(God>2012, WriteInForm(Sum64,  PrizSum6), ' ')   WriteInFormPr(ProcSum6,  PrizSum6)   PriznForLastChar(6)
WriteInForm(Sum71,  PrizSum7)   WriteInForm(Sum72,  PrizSum7)   WriteInForm(Sum73,  PrizSum7)   if(God>2012, WriteInForm(Sum74,  PrizSum7), ' ')   WriteInFormPr(ProcSum7,  PrizSum7)   PriznForLastChar(7)
WriteInForm(Sum81,  PrizSum8)   WriteInForm(Sum82,  PrizSum8)   WriteInForm(Sum83,  PrizSum8)   if(God>2012, WriteInForm(Sum84,  PrizSum8), ' ')   WriteInFormPr(ProcSum8,  PrizSum8)   PriznForLastChar(8)
WriteInForm(Sum91,  PrizSum9)   WriteInForm(Sum92,  PrizSum9)   WriteInForm(Sum93,  PrizSum9)   if(God>2012, WriteInForm(Sum94,  PrizSum9), ' ')   WriteInFormPr(ProcSum9,  PrizSum9)   PriznForLastChar(9)
WriteInForm(Sum101, PrizSum10)  WriteInForm(Sum102, PrizSum10)  WriteInForm(Sum103, PrizSum10)  if(God>2012, WriteInForm(Sum104, PrizSum10),' ')   WriteInFormPr(ProcSum10, PrizSum10)  PriznForLastChar(10)
WriteInForm(Sum111, PrizSum11)  WriteInForm(Sum112, PrizSum11)  WriteInForm(Sum113, PrizSum11)  if(God>2012, WriteInForm(Sum114, PrizSum11),' ')   WriteInFormPr(ProcSum11, PrizSum11)  PriznForLastChar(11)
WriteInForm(Sum121, PrizSum12)  WriteInForm(Sum122, PrizSum12)  WriteInForm(Sum123, PrizSum12)  if(God>2012, WriteInForm(Sum124, PrizSum12),' ')   WriteInFormPr(ProcSum12, PrizSum12)  PriznForLastChar(12)
.endfields
.{?internal;(InPrizSum1=true)and(CharF<>2)
çóëã=1=^=^=^=^=^=^
.}
.{?internal;(InPrizSum2=true)and(CharF<>2)
çóëã=2=^=^=^=^=^=^
.}
.{?internal;(InPrizSum3=true)and(CharF<>2)
çóëã=3=^=^=^=^=^=^
.}
.{?internal;(InPrizSum4=true)and(CharF<>2)
çóëã=4=^=^=^=^=^=^
.}
.{?internal;(InPrizSum5=true)and(CharF<>2)
çóëã=5=^=^=^=^=^=^
.}
.{?internal;(InPrizSum6=true)and(CharF<>2)
çóëã=6=^=^=^=^=^=^
.}
.{?internal;(InPrizSum7=true)and(CharF<>2)
çóëã=7=^=^=^=^=^=^
.}
.{?internal;(InPrizSum8=true)and(CharF<>2)
çóëã=8=^=^=^=^=^=^
.}
.{?internal;(InPrizSum9=true)and(CharF<>2)
çóëã=9=^=^=^=^=^=^
.}
.{?internal;(InPrizSum10=true)and(CharF<>2)
çóëã=10=^=^=^=^=^=^
.}
.{?internal;(InPrizSum11=true)and(CharF<>2)
çóëã=11=^=^=^=^=^=^
.}
.{?internal;(InPrizSum12=true)and(CharF<>2)
çóëã=12=^=^=^=^=^=^
.}
.{ CheckEnter PU_Stages
.fields
ç†Á_·‚†¶† äÆ≠_·‚†¶†
if(Trim(ProfCode)<>'',UpCase(Trim(ProfCode)),' ')
if(Trim(VidDeyal)<>'',UpCase(Trim(VidDeyal)),' ')
if(Trim(Dop_Pokazat)<>'',UpCase(Trim(Dop_Pokazat)),' ')
if((Trim(Dop_Rned)<>'') ,UpCase(Trim(Dop_Rned)),' ')
EndLineStr
.endfields
.{?internal;(CharF<>2)or((CharF=2)and(Trim(HP)='03'))
.begin
  EndLineStr := '';
  _cnt       := _cnt + 1;
  if (_cnt = KolStag) EndLineStr := '>';
end.
ëíÄÜ=^=^=^=^=^=^=^
.}
.}
.{ CheckEnter PUPR4
.if PUDeadLine
.fields
pach_nmb
.endfields
___äéçÖñ ^ èÄóäà
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
  KolNach := 0
  SumNach := 0
  SumBoln := 0
  SumVz   := 0
  SumUpl  := 0
end.
.end
.}
.}
.endform
