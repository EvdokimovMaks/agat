/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2002 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ ‘จแโฅฌ        : €€’€                                                 บ
 บ เฎฅชโ        : ใๅฃ ซโฅเแชจฉ ชฎญโใเ                                      บ
 บ ฅเแจ๏        : 5.84                                                      บ
 บ  งญ ็ฅญจฅ    : ญฅ่ญจฅ ฏเฎๆฅคใเ๋ จ ไใญชๆจจ จง G_Kau.dll                  บ
 บ โขฅโแโขฅญญ๋ฉ : ฅเฌ ญ เจฉ คใ เคฎขจ็                                    บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/

//---------------------------------------------------------------------------------
// SkVipIfc.pas
// ServKau.pas ญฅ จงฌฅญฅญญ๋ฅ
#ifNdef Gal8_1
!!! ฅ ฏใกซจชฎข โ์ ํโจ ไใญชๆจจ ญจ ฏเจ ช ชจๅ ฎกแโฎ๏โฅซ์แโข ๅ ข 8.1 จ ข๋่ฅ [Gera]
function  InitServKau                              : Boolean; external 'G_Kau.dll';
procedure DoneServKau                                       ; external 'G_Kau.dll';
#end
function  CheckKodOneKau        (Word,Comp)        : boolean; external 'G_Kau.dll';
function  GetAnyKau             (Word,Word,Comp)   : Boolean; external 'G_Kau.dll';
function  GivenAnName           (Word)             : String;  external 'G_Kau.dll';
function  GetKauEd              (Word,Comp)        : Comp;    external 'G_Kau.dll';
function  FindSoprDoc           (Word,Comp)        : Boolean; external 'G_Kau.dll';
function  GetOrgDocX            (Comp)             : Comp;    external 'G_Kau.dll';
function  GetSodrDocX           (Comp)             : String;  external 'G_Kau.dll';
function  GetSodrDocX_Ex        (Comp, Boolean)    : String;  external 'G_Kau.dll';
function  GetSodrOborot         (Comp)             : String;  external 'G_Kau.dll';
function  GetDateHozDoc         (Word,Comp)        : Date;    external 'G_Kau.dll';
function  GetNumHozDoc          (word, comp)       : string;  external 'G_Kau.dll';
function  GetAnalitikName       (Word)             : String;  external 'G_Kau.dll';
function  GetBaseAnalitik       (Word)             : Word;    external 'G_Kau.dll';
function  GetKauSysNum          (Word)             : Word;    external 'G_Kau.dll';
function  GetKontrSaldo         (Date,Comp)        : Double;  external 'G_Kau.dll';
function  GetKauCoTable         (Word)             : Word;    external 'G_Kau.dll';
function  GetKauIsHier          (Word)             : Boolean; external 'G_Kau.dll';
function  GetExistKauCode       (Word)             : Boolean; external 'G_Kau.dll';
// ServKau.pas คซ๏ คฎแโใฏ  ช ขญฅ่ญจฌ €“ จง ชฎญไจฃใเ โฎเ  จ CompileExpression- 
function GetKauReffNrec         (string,comp,word) : comp;    external 'G_Kau.dll';
function GetKauReffName         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffStrKod       (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffAbbr         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffCode         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffArrayKatalog (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayName    (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayStrKod  (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayAbbr    (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayCode    (string,comp)      : string;  external 'G_Kau.dll';

function ShowKauPrn             (word, comp, date) : string;  external 'G_Kau.dll';
function ShowKauArrayPrn        (var array, var array, date)
                                                   : string;  external 'G_Kau.dll';
//---------------------------------------------------------------------------------
