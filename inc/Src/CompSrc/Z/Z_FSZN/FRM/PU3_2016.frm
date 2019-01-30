//------------------------------------------------------------------------------
//                                                      (c) ™Æ‡ØÆ‡†Ê®Ô É†´†™‚®™†
// É†´†™‚®™† 9.10 - ìØ‡†¢´•≠®• Ø•‡·Æ≠†´Æ¨
// é‚Á•‚≠Æ·‚Ï ¢ èî ê•·Ø„°´®™® Å•´†‡„·Ï. îÆ‡¨† èì-3
//------------------------------------------------------------------------------
#doc
é‚Á•‚≠Æ·‚Ï ¢ èî ê•·Ø„°´®™® Å•´†‡„·Ï.
îÆ‡¨† èì-3
#end
.set name = 'PU3_2016'
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
  // ç†Á®·´•≠Æ
  Pach_NachItog :double     // ë„¨¨† ≠†Á®·´•≠®© ØÆ Ø†Á™•
  Pach_BolnItog :double     // ë„¨¨† °Æ´Ï≠®Á≠ÎÂ ØÆ Ø†Á™•
  Pach_UdItog   :double     // ë„¨¨† „§•‡¶†≠®Ô (1%) ØÆ Ø†Á™•
  Pach_28VzItog :double     // ë„¨¨† Ø•≠·®Æ≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) ØÆ Ø†Á™•
  Pach_6VzItog  :double     // ë„¨¨† ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•
  // ìØ´†Á•≠Æ
  Pach_UdUplItog:double     // ë„¨¨† „Ø´†Á•≠≠Æ£Æ „§•‡¶†≠®Ô (1%) ØÆ Ø†Á™•
  Pach_28VzUplItog:double   // ë„¨¨† „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) ØÆ Ø†Á™•
  Pach_6VzUplItog:double    // ë„¨¨† „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•

  î†¨®´®Ô
  à¨Ô
  é‚Á•·‚¢Æ
  CharF :word
  CharF1
  CharF2

  ™¢†‡‚†´ :word
  str™¢†‡‚†´
  MagtinKvartal:string

  God :word
  CharF3
  CharF4

  Fone_org
  RealInn
  RegPFNum
  Pred
  KPP
  curdate
  HP
  çÄÖå
  Val1
  SummUd1 : double
  KolStag : word
  Okrug : word

  KolNach : word

  ISum1     : double
  ISum2     : double
  ISumUd1   : double
  ISum28Vz  : double
  ISum6Vz   : double
  ISumUdUpl1: double
  ISumVzUpl : double
  //------------------------------------------------------------------------------
  // Ñ†≠≠Î• ØÆ ®ß¨•≠•≠®Ô¨ ‡†ß¨•‡† Ø‡ÆÊ•≠‚Æ¢ (‚†°´®Ê† "ê†ß¨•‡ ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢, Ø‡ÆÊ•≠‚Æ¢")
  Per28 :double
  Per6  :double
  Per1  :double
  PerScaleChange
  PerScaleChangeRTF
  //------------------------------------------------------------------------------
  // Ñ†≠≠Î• ØÆ ¨•·ÔÊ†¨ (‚†°´®Ê† "1. ë¢•§•≠®Ô Æ ·„¨¨• ¢ÎØ´†‚, „Á®‚Î¢†•¨ÎÂ Ø‡® ≠†ß≠†Á•≠®® Ø•≠·®®")
  Mes MesText
  PrizPrint:boolean
  PrizPrintSymb:boolean
  PrizSum1: word
  ProcUd1:double
  ProcNach281:double
  ProcNach61:double
  Sum11:double
  Sum12:double
  SumUd1:double
  Sum28Vz:double
  Sum6Vz:double
  Sum1UdUpl:double
  SumVzUpl:double
  DateChangePer
  //------------------------------------------------------------------------------
  //====== ·‚†¶® ======
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
  ItogUd1:double
  Itog28Vz:double
  Itog6Vz:double
  ItogUdUpl:double
  Itog28VzUpl:double
  Itog6VzUpl:double
  Dolg_ruk_èì4
  îàé_‡„™Æ¢Æ§®‚•´Ô_èì4
  ó®·´Æ_èì4 å•·ÔÊ_èì4 ÉÆ§_èì4
.endfields
.{ CheckEnter PU3_2016
  PersonsNumb ^
  PachNumBegin ^
  AllCounter ^
  RabCounter ^
  ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡ ^
  TabN ^
  Dog_Num ^
  Dog_Date ^
  // ç†Á®·´•≠Æ
  Pach_NachItog ^
  Pach_BolnItog ^
  Pach_UdItog ^
  Pach_28VzItog ^
  Pach_6VzItog ^
  // ìØ´†Á•≠Æ
  Pach_UdUplItog ^
  Pach_28VzUplItog ^
  Pach_6VzUplItog ^

  î†¨®´®Ô ^
  à¨Ô ^
  é‚Á•·‚¢Æ ^
  CharF ^
  CharF1 ^
  CharF2 ^

  ™¢†‡‚†´ ^
  str™¢†‡‚†´ ^
  MagtinKvartal ^

  God ^
  CharF3 ^
  CharF4 ^
  Fone_org ^
  RealInn ^
  RegPFNum ^
  Pred ^
  KPP ^
  curdate ^
  HP ^
  çÄÖå ^
  Val1 ^
  SummUd1 ^
  KolStag ^
  Okrug ^
  KolNach ^
  ISum1 ^
  ISum2 ^
  ISumUd1 ^
  ISum28Vz ^
  ISum6Vz ^
  ISumUdUpl1 ^
  ISumVzUpl ^
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ë¢•§•≠®Ô Æ ¢•´®Á®≠• ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢                                                     ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.{ CheckEnter PU3_2016_PerScale
  Per28 ^
  Per6 ^
  Per1 ^
  PerScaleChange ^
  PerScaleChangeRTF ^
.}
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ë¢•§•≠®Ô Æ ·„¨¨†Â ≠†Á®·´•≠®©, °Æ´Ï≠®Á≠ÎÂ, „§•‡¶†≠®© ® ¢ß≠Æ·Æ¢                             ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.{ CheckEnter PU3_2016_NACH
   Mes ^  MesText ^  PrizPrint ^  PrizPrintSymb ^  PrizSum1 ^   ProcUd1 ^  ProcNach281 ^  ProcNach61 ^ Sum11 ^   Sum12 ^  SumUd1 ^   Sum28Vz ^  Sum6Vz ^  Sum1UdUpl ^  SumVzUpl ^  DateChangePer ^
.}
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ë¢•§•≠®Ô Æ ·‚†¶†Â                                                                         ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.{ CheckEnter PU3_2016_Stages
  ç†®¨_·‚†¶† ^
  nppSt^
  ç†Á_·‚†¶† ^
  äÆ≠_·‚†¶† ^
  ç†Á_·‚†¶†_‡‚‰ ^
  äÆ≠_·‚†¶†_‡‚‰ ^
  ProfCode ^
  VidDeyal ^
  Dop_Pokazat ^
  Dop_Rned ^
.}
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
  Dolg_ruk ^
  îàé_‡„™Æ¢Æ§®‚•´Ô ^
  Fio_Buh ^
  ó®·´Æ ^ å•·ÔÊ ^ ÉÆ§ ^
.{ CheckEnter PU_2016_PR4
  Adv10_Prz ^
  îàé_®·ØÆ´≠®‚•´Ô ^
  ‚•´_®·ØÆ´≠®‚•´Ô ^
  FIO_KP ^
  CodeOKPO ^
  itognach_èì4 ^
  itogVremNetr ^
  ItogUd1 ^
  Itog28Vz ^
  Itog6Vz ^
  ItogUdUpl ^
  Itog28VzUpl ^
  Itog6VzUpl ^
  Dolg_ruk_èì4 ^
  îàé_‡„™Æ¢Æ§®‚•´Ô_èì4 ^
  ó®·´Æ_èì4 ^ å•·ÔÊ_èì4 ^ ÉÆ§_èì4 ^
.if PU_2016_DeadLine
.end
.}
.}
.endform

!!!!!! é‚´†§ÆÁ≠Î© Æ‚Á•‚ !!!!!!!!
.linkform 'PU3_TEST' prototype is 'PU3_2016'
.group 'é‚´†§™†'
.nameinlist 'é‚´†§™† èì-3 (·¢•§•≠®Ô Æ ¢Î£‡„¶†•¨ÎÂ §†≠≠ÎÂ)'
.{ CheckEnter PU3_2016
.fields
  PersonsNumb
  PachNumBegin
  AllCounter
  RabCounter
  ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡
  TabN
  Dog_Num

  Dog_Date
  // ç†Á®·´•≠Æ
  Pach_NachItog                 // ë„¨¨† ≠†Á®·´•≠®© ØÆ Ø†Á™•
  Pach_BolnItog                 // ë„¨¨† °Æ´Ï≠®Á≠ÎÂ ØÆ Ø†Á™•
  Pach_UdItog                   // ë„¨¨† „§•‡¶†≠®Ô (1%) ØÆ Ø†Á™•
  Pach_28VzItog                 // ë„¨¨† Ø•≠·®Æ≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) ØÆ Ø†Á™•
  Pach_6VzItog                  // ë„¨¨† ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•
  // ìØ´†Á•≠Æ
  Pach_UdUplItog                // ë„¨¨† „Ø´†Á•≠≠Æ£Æ „§•‡¶†≠®Ô (1%) ØÆ Ø†Á™•
  Pach_28VzUplItog              // ë„¨¨† „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) ØÆ Ø†Á™•
  Pach_6VzUplItog               // ë„¨¨† „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•

  î†¨®´®Ô
  à¨Ô
  é‚Á•·‚¢Æ
  CharF CharF1
  CharF2
  ™¢†‡‚†´  str™¢†‡‚†´
  MagtinKvartal
  God CharF3 CharF4
  Fone_org

  RealInn
  RegPFNum
  Pred
  KPP
  curdate
  HP çÄÖå
  Val1
  SummUd1
  KolStag
  Okrug
  KolNach
  ISum1
  ISum2
  ISumUd1
  ISum28Vz
  ISum6Vz
  ISumUdUpl1
  ISumVzUpl
.endfields
  PersonsNumb ^
  PachNumBegin ^
  AllCounter ^
  RabCounter ^
  ë‚‡†ÂÆ¢Æ©_≠Æ¨•‡ ^
  TabN ^
  Dog_Num ^
  Dog_Date ^
   // ç†Á®·´•≠Æ
  Pach_NachItog ^                // ë„¨¨† ≠†Á®·´•≠®© ØÆ Ø†Á™•
  Pach_BolnItog ^                // ë„¨¨† °Æ´Ï≠®Á≠ÎÂ ØÆ Ø†Á™•
  Pach_UdItog ^                  // ë„¨¨† „§•‡¶†≠®Ô (1%) ØÆ Ø†Á™•
  Pach_28VzItog ^                // ë„¨¨† Ø•≠·®Æ≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) ØÆ Ø†Á™•
  Pach_6VzItog ^                 // ë„¨¨† ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•
  // ìØ´†Á•≠Æ
  Pach_UdUplItog ^               // ë„¨¨† „Ø´†Á•≠≠Æ£Æ „§•‡¶†≠®Ô (1%) ØÆ Ø†Á™•
  Pach_28VzUplItog ^             // ë„¨¨† „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) ØÆ Ø†Á™•
  Pach_6VzUplItog ^              // ë„¨¨† „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•

  î†¨®´®Ô ^
  à¨Ô ^
  é‚Á•·‚¢Æ ^
  CharF ^
  CharF1 ^
  CharF2 ^

  ™¢†‡‚†´ ^
  str™¢†‡‚†´ ^
  MagtinKvartal ^

  God ^
  CharF3 ^
  CharF4 ^
  Fone_org ^
  RealInn ^
  RegPFNum ^
  Pred ^
  KPP ^
  curdate ^
  HP ^
  çÄÖå ^
  Val1 ^
  SummUd1 ^
  KolStag ^
  Okrug ^
  KolNach ^
  ISum1 ^
  ISum2 ^
  ISumUd1 ^
  ISum28Vz ^
  ISum6Vz ^
  ISumUdUpl1 ^
  ISumVzUpl ^
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ë¢•§•≠®Ô Æ ‡†ß¨•‡• ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢                                                      ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.{ CheckEnter PU3_2016_PerScale
.fields
  Per28
  Per6
  Per1
  PerScaleChange
  PerScaleChangeRTF
.endfields
  Per28 ^
  Per6 ^
  Per1 ^
  PerScaleChange ^
  PerScaleChangeRTF ^
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.}
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ë¢•§•≠®Ô Æ ·„¨¨†Â ≠†Á®·´•≠®©, °Æ´Ï≠®Á≠ÎÂ, „§•‡¶†≠®© ® ¢ß≠Æ·Æ¢                             ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.{ CheckEnter PU3_2016_NACH
.fields
  Mes  MesText
  PrizPrint
  PrizPrintSymb
  PrizSum1
  ProcUd1
  ProcNach281
  ProcNach61
  Sum11
  Sum12
  SumUd1
  Sum28Vz
  Sum6Vz
  Sum1UdUpl
  SumVzUpl
  DateChangePer
.endfields
   Mes ^  MesText ^  PrizPrint ^  PrizPrintSymb ^  PrizSum1 ^   ProcUd1 ^  ProcNach281 ^  ProcNach61 ^ Sum11 ^   Sum12 ^  SumUd1 ^   Sum28Vz ^  Sum6Vz ^  Sum1UdUpl ^  SumVzUpl ^   DateChangePer ^
.}
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
  ⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø
  ≥  ë¢•§•≠®Ô Æ ·‚†¶†Â                                                                         ≥
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.{ CheckEnter PU3_2016_Stages
.fields
  //====== ·‚†¶® ======
  ç†®¨_·‚†¶†
  nppSt
  ç†Á_·‚†¶† äÆ≠_·‚†¶†
  ç†Á_·‚†¶†_‡‚‰ äÆ≠_·‚†¶†_‡‚‰
  ProfCode VidDeyal
  Dop_Pokazat Dop_Rned
.endfields
  ç†®¨_·‚†¶† ^
  nppSt^
  ç†Á_·‚†¶† ^
  äÆ≠_·‚†¶† ^
  ç†Á_·‚†¶†_‡‚‰ ^
  äÆ≠_·‚†¶†_‡‚‰ ^
  ProfCode ^
  VidDeyal ^
  Dop_Pokazat ^
  Dop_Rned ^
  ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ
.}
.fields
  Dolg_ruk
  îàé_‡„™Æ¢Æ§®‚•´Ô
  Fio_Buh
  ó®·´Æ å•·ÔÊ ÉÆ§
.endfields
  Dolg_ruk ^
  îàé_‡„™Æ¢Æ§®‚•´Ô ^
  Fio_Buh ^
  ó®·´Æ ^ å•·ÔÊ ^ ÉÆ§ ^
.{ CheckEnter PU_2016_PR4
.fields
  Adv10_Prz
  îàé_®·ØÆ´≠®‚•´Ô
  ‚•´_®·ØÆ´≠®‚•´Ô
  FIO_KP
  CodeOKPO
  itognach_èì4
  itogVremNetr
  ItogUd1
  Itog28Vz
  Itog6Vz
  ItogUdUpl
  Itog28VzUpl
  Itog6VzUpl
  Dolg_ruk_èì4
  îàé_‡„™Æ¢Æ§®‚•´Ô_èì4
  ó®·´Æ_èì4 å•·ÔÊ_èì4 ÉÆ§_èì4
.endfields
  Adv10_Prz ^
  îàé_®·ØÆ´≠®‚•´Ô ^
  ‚•´_®·ØÆ´≠®‚•´Ô ^
  FIO_KP ^
  CodeOKPO ^
  itognach_èì4 ^
  itogVremNetr ^
  ItogUd1 ^
  Itog28Vz ^
  Itog6Vz ^
  ItogUdUpl ^
  Itog28VzUpl ^
  Itog6VzUpl ^
  Dolg_ruk_èì4 ^
  îàé_‡„™Æ¢Æ§®‚•´Ô_èì4 ^
  ó®·´Æ_èì4 ^ å•·ÔÊ_èì4 ^ ÉÆ§_èì4 ^
.if PU_2016_DeadLine
.end
.}
.}
.endform

!!!!!!!!!!!!!!!!!!!!!!!!èì-3-2016!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'PU3_2016_LMAGNIT' prototype is 'PU3_2016'
.group 'èì-3'
.group 'é‚´†§™†'
.nameinlist 'îÆ‡¨† èì-3 (‰†©´ §´Ô ¨†£≠®‚≠ÎÂ ≠Æ·®‚•´•©)'
.var
 pach_nmb   : word
 nomer      : word
 Initial1, Initial2,
 EndLineStr : string[1];
 _cnt       : word;
 TrueType   : string[1];
.endvar
!=============================================================================
!   î„≠™Ê®Ô , ™Æ‚Æ‡†Ô °„§•‚ ÆØ‡•§•´Ô‚Ï ≠„¶≠Æ ´® ¢Î¢Æ§®‚Ï ß†™‡Î¢†ÓÈ„Ó
!   ·™Æ°™„ ®´® ≠•‚
!=============================================================================
.function PriznForLastChar : string;
begin
 PriznForLastChar := '';
 if (KolStag = 0) and (( PrizPrintSymb )) then
   PriznForLastChar := '>';
end.
!=============================================================================
.function WriteInForm(_sum : double; prizn: word) : string;
begin
   WriteInForm := '0,00';
   if (_sum <> 0)
     WriteInForm := DoubleToStr(_sum,'[|-]36666666666667,88')
   else if (_sum = 0) and (prizn = 1 or prizn = 0)
     WriteInForm := '0,00';
   // „Ø´†Á•≠≠Î• ¢ß≠Æ·Î §´Ô ´Ó°Æ£Æ ‚®Ø† ·Æ‚‡„§≠®™† ¢Î¢Æ§Ô‚·Ô Á®·´Æ¨
   else if (_sum = 0) and (prizn = 2)
     WriteInForm := '0,00';
end.
.function WriteInFormPr(_sum : double; prizn: word) : string;
begin
  WriteInFormPr := string(0);
  if (_sum <> 0)
    WriteInFormPr := DoubleToStr(_sum,'[|-]36666666666667')
  else if (_sum = 0) and (prizn = 1)
    WriteInFormPr := string(0)
end.
!=============================================================================
.function SapceOfZeroForTotal(_categ: string): string;
begin
  SapceOfZeroForTotal := ' ';
   if trim( _categ) = '01'
   or trim( _categ) = '02'
   or trim( _categ) = '07'
     if CharF <> 2
       SapceOfZeroForTotal := string(0);
end.
.begin
  pach_nmb:= word(PachNumBegin);
  nomer   := 0;
end.
.{ CheckEnter PU3_2016
.begin
   Initial1 := à¨Ô;
   Initial2 := é‚Á•·‚¢Æ;
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
.{?internal;(KolNach > 0) or (KolStag > 0)
.{?internal;(nomer=0)or(nomer=AllCounter)
.fields
if(Trim(RealInn)<>'',Trim(RealInn),' ')
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(Pred)<>'',UpCase(Trim(Pred)),' ')
LPadCh(string(pach_nmb),'0',9)
if(Trim(string(PersonsNumb))<>'',Trim(string(PersonsNumb)),' ')
if(CharF<>2, DoubleToStr(Pach_NachItog,'[|-]36666666666667,88'),'0,00')
if(CharF<>2, DoubleToStr(Pach_BolnItog,'[|-]36666666666667,88'),'0,00')
if(CharF<>2, DoubleToStr(Pach_UdItog+Pach_28VzItog+Pach_6VzItog,'[|-]36666666666667,88'), '0,00') // ë„¨¨† „§•‡¶†≠®Ô (1%) + Ø•≠·®Æ≠≠ÎÂ ¢ß≠Æ·Æ¢ (28%) + ·‚‡†ÂÆ¢ÎÂ ¢ß≠Æ·Æ¢ (6%) ØÆ Ø†Á™•
if(CharF<>2, DoubleToStr(Pach_UdUplItog+Pach_28VzUplItog+Pach_6VzUplItog,'[|-]36666666666667,88'), '0,00') // ë„¨¨† „Ø´†Á•≠≠Æ£Æ „§•‡¶†≠®Ô (1%) + „Ø´†Á•≠≠ÎÂ ¢ß≠Æ·Æ¢ 34%(28+6) ØÆ Ø†Á™•
.endfields
áÉãÇ=1.6=
<èÄóä=^=^=^=^= = =1=
íàèÑ=èì-3=^=^=^=^=^=>
.}
.begin
  nomer:= nomer + 1;
  _cnt    := 0;
  case CharF of
   0: TrueType:= 'à'
   1: TrueType:= 'ä'
   2: TrueType:= 'é'
   3: TrueType:= 'è'
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
if((CharF <> 2)and(ISum1      <> 0),DoubleToStr(ISum1,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2)and(ISum2      <> 0),DoubleToStr(ISum2,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2)and(ISumUd1    <> 0),DoubleToStr(ISumUd1,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2)and(ISum28Vz   <> 0),DoubleToStr(ISum28Vz,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2)and(ISum6Vz    <> 0),DoubleToStr(ISum6Vz,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2)and(ISumUdUpl1 <> 0),DoubleToStr(ISumUdUpl1,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2)and(ISumVzUpl  <> 0),DoubleToStr(ISumVzUpl,'[|-]36666666666667,88'), if((CharF <> 2), '0,00', ' '))
if((CharF <> 2),string(KolNach),' ')
if((CharF <> 2),string(KolStag),' ')
curdate
God
if(Trim(Fone_org)<>'',Trim(Fone_org),' ')
if ( TrueType = 'é','>','')
.endfields
<èì-3=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^= =^=^=^
.}
.{ CheckEnter PU3_2016_PerScale
.}
.{ CheckEnter PU3_2016_NACH
.fields
  Mes
  WriteInForm(Sum11,         PrizSum1)
  WriteInForm(Sum12,         PrizSum1)
  WriteInForm(SumUd1,        PrizSum1)
  WriteInForm(Sum28Vz,       PrizSum1)
  WriteInForm(Sum6Vz,        PrizSum1)
  WriteInForm(Sum1UdUpl, PrizSum1)
  WriteInForm(SumVzUpl,  PrizSum1)
  WriteInFormPr(ProcUd1,     PrizSum1)
  WriteInFormPr(ProcNach281, PrizSum1)
  WriteInFormPr(ProcNach61,  PrizSum1)
  if (DateChangePer <> '', DateChangePer, ' ')
  PriznForLastChar
.endfields
.{?internal;(PrizPrint=true)and(CharF<>2)
çóëã=^=^=^=^=^=^=^=^=^=^=^=^=^
.}
.}
.{ CheckEnter PU3_2016_Stages
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
.{ CheckEnter PU_2016_PR4
.if PU_2016_DeadLine
.fields
pach_nmb
.endfields
___END ^ èÄóäà
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
end.
.end
.}
.}
.endform
