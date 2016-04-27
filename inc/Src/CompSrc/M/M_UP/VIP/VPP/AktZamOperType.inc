/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,98 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        : ฏฅเ โจขญ๋ฉ ชฎญโใเ                                        บ
 บ ฅเแจ๏        : 5.70                                                      บ
 บ  งญ ็ฅญจฅ    : ญโฅเไฅฉแ ใโฎ็ญฅญจ๏ ง ฌฅญ ญ  ฌ โฅเจ ซ์ญ๋ฅ ๆฅญญฎแโจ        บ
 บ โขฅโแโขฅญญ๋ฉ : ฅข็ฅญชฎ €ญคเฅฉ €ซฅชแ ญคเฎขจ็(Andrew)                     บ
 บ  เ ฌฅโเ๋     : ฅแโ์                                                      บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/


#ifndef _AKTZAMOPER_TYPE_
#define _AKTZAMOPER_TYPE_

!#include DebugObj.vih

Type StructMCZam = record
  cTTInfoRes  : comp;
  prMC        : word;
  RefMC       : comp;
  RefParty    : comp;
  cSaldTune   : comp;
  cKitKau     : comp;
  RefTab_NBS  : comp;
  Diskret_ED  : word;
end;

Type StructMCZam_Ext = record
  RefTopTab         : comp;

  RefSpOrder        : comp;
  RefPodr           : comp;
  RefMol            : comp;

  NumSort           : longInt;
  SrokGodn          : Date;

  Flags             : longInt;
  Kol_NeedZam       : double;
  Kol               : double;
end;


Type StructInfoRsp = record
  cSrc        : comp  ;
  cDst        : comp  ;
  KoefKol_Dst : double;
  KolMove     : double;
  KoefKol_Src : double;
end;

#endif
