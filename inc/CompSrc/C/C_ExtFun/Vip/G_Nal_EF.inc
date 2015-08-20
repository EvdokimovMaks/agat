/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2003 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ ‘จแโฅฌ        : €€’€                                                 บ
 บ เฎฅชโ        : ฏฅเ โจขญ๋ฉ ชฎญโใเ                                        บ
 บ ฅเแจ๏        : 5.84                                                      บ
 บ  งญ ็ฅญจฅ    : ญฅ่ญจฅ ฏเฎๆฅคใเ๋ จ ไใญชๆจจ จง G_Nalog.dll                บ
 บ โขฅโแโขฅญญ๋ฉ : ขจญแชจฉ ‘ฅเฃฅฉ ฅฎญจคฎขจ็                                บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

//------------------------------------------------------------------------------
// NalServ.pas
Function InitNalServ                          : boolean; external 'G_Nalog.dll';
Function DoneNalServ                          : boolean; external 'G_Nalog.dll';
Procedure FreeNalServ;                                   external 'G_Nalog.dll';
Function MTNalServ                            : boolean; external 'G_Nalog.dll';
Procedure SetCountOnlyVhNals (boolean);                  external 'G_Nalog.dll';
Procedure SetForRussia (boolean);                        external 'G_Nalog.dll';
Function CountNalogPrice(comp,comp,word,comp,comp,double,comp,date,comp,double,
                         double,double,comp)  : boolean; external 'G_Nalog.dll';
Function CountBasePrice (comp,comp,word,comp,comp,double,comp,date,comp,double,
                         double,double,comp)  : boolean; external 'G_Nalog.dll';
Function CountBasePriceN(comp,comp,word,comp,comp,double,comp,date,comp,double,
                         double,double,comp,word): boolean; external 'G_Nalog.dll';
Function GetBasePrice                         : double;  external 'G_Nalog.dll';
Function GetBaseValPrice                      : double;  external 'G_Nalog.dll';
Function GetNalogPrice                        : double;  external 'G_Nalog.dll';
Function GetNalogValPrice                     : double;  external 'G_Nalog.dll';
Function GetNalogSumma                        : double;  external 'G_Nalog.dll';
Function GetNalogSumVal                       : double;  external 'G_Nalog.dll';
Function GetNalStatus                         : word;    external 'G_Nalog.dll';
Function CountNalogs (word,comp,comp,string)  : boolean; external 'G_Nalog.dll';
Function CountNalogsNRec (word,comp,comp,comp): boolean; external 'G_Nalog.dll';
Function CountNalogsNpp (word,comp,comp,word) : boolean; external 'G_Nalog.dll';
Function CheckFormula (string)                : boolean; external 'G_Nalog.dll';
Function CountFormula_ (string)               : double;  external 'G_Nalog.dll';
//------------------------------------------------------------------------------
