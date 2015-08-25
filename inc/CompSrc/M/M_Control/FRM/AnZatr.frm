/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ‘เ ขญฅญจฅ ง โเ โ ฏฎ แโ โ์๏ฌ                               บ
 บ โขฅโแโขฅญญ๋ฉ : ฅคขฅค์ .. (MEDVED)                                     บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'AnZatr'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
   ParamUser
   TitleRep
   ParamRep
   NmParamRep
   MinOtkl
   KoefCom
   NamePodr
   NameAnObj
   NameAmount
   AmountObj
   NmShap1
   NmShap2
   NameColumn
   NmShap3

   NameZatrLevel1or2
   SummaLevel1or2

   NameZatrLevel3
   SummaLevel3

   NameZatrLevel4
   SummaLevel4

   NameZatrLevel0
   SummaLevel0
.EndFields
^

‘เ ขญฅญจฅ ฏฎ แโ โ์๏ฌ ^

.{
^ .{.?stParam_RAnZatr; ^.}
.}
จญจฌ ซ์ญฎฅ ฏฎเฎฃฎขฎฅ ฎโชซฎญฅญจฅ: ^
ฎํไไจๆจฅญโ แเ ขญฅญจ๏: ^

.{
งฃฎโฎขจโฅซ์:	^
.{
^
^        .{.?stObj_RAnZatr;   ^.}

         .{.?stShap1_RAnZatr; ^.}
         .{.?stShap2_RAnZatr; ^.}
‘โ โ์๏ ^ .{.?stShap3_RAnZatr; ^.}
.{
.case
.when IsSum_RAnZatr1Or2LevelIer
^	 .{.?stSum_RAnZatrLevel1or2; ^.}
.when IsSum_RAnZatr3LevelIer
^	 .{.?stSum_RAnZatrLevel3; ^.}
.when IsSum_RAnZatr4LevelIer
^	 .{.?stSum_RAnZatrLevel4; ^.}
.else
^	 .{.?stSum_RAnZatrLevel0; ^.}
.end
.}
.}

.}
.endform


