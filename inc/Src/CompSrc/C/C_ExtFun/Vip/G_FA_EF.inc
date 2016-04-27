/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2002 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ ‘จแโฅฌ        : €€’€                                                 บ
 บ เฎฅชโ        : ”จญ ญแฎข๋ฉ ชฎญโใเ                                         บ
 บ ฅเแจ๏        : 5.85.02                                                   บ
 บ  งญ ็ฅญจฅ    : ญฅ่ญจฅ ฏเฎๆฅคใเ๋ จ ไใญชๆจจ จง G_FA.dll                   บ
 บ โขฅโแโขฅญญ๋ฉ : ฅเฌ ญ เจฉ คใ เคฎขจ็                                    บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

//------------------------------------------------------------------------------
// FaVipIfc.pas
//  แ็ฅโ ฎโ็ฅโฎข
function  FaInitService                                      : Boolean; external 'G_FA.dll';
function  FaPickPeriod         (Comp,Word,String,String,String)
                                                             : Comp;    external 'G_FA.dll';
function  FaGetLastError                                     : String;  external 'G_FA.dll';
function  FaCheckSession       (Comp)                        : Boolean; external 'G_FA.dll';
function  FaCalculateReport    (Comp,Comp,Comp,Comp,Comp,Comp,Comp,Word)
                                                             : Boolean; external 'G_FA.dll';
function  FaDoneService                                      : Boolean; external 'G_FA.dll';
function  FaConversPValues     (Comp)                        : Boolean; external 'G_FA.dll';
//------------------------------------------------------------------------------
