/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 2001 ชฎเฏฎเ ๆจ๏ €€’€                         บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฎญโเฎซซจญฃ                                               บ
 บ ฅเแจ๏        : 7.1                                                       บ
 บ  งญ ็ฅญจฅ    : ฆจค ฅฌ๋ฉ ไ ชโ                                            บ
 บ โขฅโแโขฅญญ๋ฉ : ฅเญฅฉชฎ                                                  บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
.set name = 'RWaitFact'
.nameinlist ' งฎข ๏ ไฎเฌ '
.hide
.fields
ParamUser


ParamRep
NmParamRep
NmParamRep2
NmParamRep3

NmShap

NmNaimDoxod
NmSumDoxod

SummaDox

NmNaimRasxod
NmSumRasxod


NmItogZatr

NmPribZatr
.endfields

^  ชฎฃค  จ ชฅฌ ข๋ค ญ ฎโ็ฅโ
.{
^^^^
.}

  .{.?stShapRWait;	^.}   ฏช  ฎโ็ฅโ 

.{
^ .{.?stNmSumDoxodRWait;	^.}  
.}
  
  .{.?stSummaDoxRWait;  ^.}  จโฎฃ คฎๅฎคฎข


.{
^ .{.?stNmSumRasxodRWait;	^.}  
.}

  .{.?stItogZatrRWait; ^.}  จโฎฃ เ แๅฎคฎข

  .{.?stPribZatrRWait; ^.}  ฏเจก๋ซ์ ใก๋โชจ

.endform
