/*

 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2004 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ ‘จแโฅฌ        : €€’€                                                 บ
 บ เฎฅชโ        : คเฎ                                                      บ
 บ ฅเแจ๏        : 5.84                                                      บ
 บ  งญ ็ฅญจฅ    : ญฅ่ญจฅ ฏเฎๆฅคใเ๋ จ ไใญชๆจจ จง G_LastNumD.dll             บ
 บ โขฅโแโขฅญญ๋ฉ : ฅเฌ ญ เจฉ คใ เคฎขจ็                                    บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

//------------------------------------------------------------------------------
// LastNum.pas
function  GetLastNumD__       (Word,String,Byte)      : String;  external 'G_LastNumD.dll';
function  GetLastNumD_        (Word,String)           : String;  external 'G_LastNumD.dll';
function  GetLastNumD         (Word)                  : String;  external 'G_LastNumD.dll';
procedure DelLastNumD_        (Word,String,String)            ;  external 'G_LastNumD.dll';
procedure DelLastNumD         (Word,String)                   ;  external 'G_LastNumD.dll';
function  GetLNDname          (Word)                  : String;  external 'G_LastNumD.dll';




