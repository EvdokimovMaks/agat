
#ifndef _DEF_TYPE_DS_INC
#define _DEF_TYPE_DS_INC

!#ifdef ComponentVersion
!#component "M_Dvs"
!#end

Type StructAgrInfo = record
  Otpusk      : double;
  Per         : double;
  Vozv        : double;
  OstVh       : double;
  OstIsh      : double;

  Otpusk_Sum  : double;
  Per_Sum     : double;
  Vozv_Sum    : double;
  OstVh_Sum   : double;
  OstIsh_Sum  : double;
end;

type SectionVarDvDS = record
  NumCon   : word;
  wFlag    : word;
  TabNrec  : comp;
  TabNrec1 : comp;
  TabNrec2 : comp;
end;

!type StructInfoHead = record
!  TypeObj : word;
!  TabNrec : comp;
!  wList   : word;
!  TblCode : word;
!  dSect   : Double;
!  cSect   : comp;
!  Flag    : Word;
!end;

!type StructInfoMC = record
!  cMC     : comp;
!  cEd     : comp;
!  PrMC    : word;
!  cParty  : comp;
!  Kol     : double;
!  Price   : double;
!  ProcUb  : Double;
!end;

type StructInfoDoc = record
  Direct  : word;
  Status  : word;
  Name    : string;
  NDoc    : s20;
  DDoc    : date;
  cOrg    : comp;
  cGrPol  : comp;
  cGrOtp  : comp;
  Summa   : Double;
end;

!type Struct_IR = record
! TopTab      : comp;
! IndexLewel  : comp;
! Count       : comp;
!end;

Type StructWordForTab = record
 w1 : word;
 w2 : word;
 w3 : word;
 w4 : word;
 w5 : word;
end;

!type StructInfoMCExt = record
! cMasVid    : comp;
! cAltED     : comp;
! cPriceList : comp;
!
! SumNDS     : Double;
! wMcProp    : word;
! ManualTax  : word;
! PrVoz      : word;
!end;

!type StructInfoMCTNP = record
! cOtpEdGrM  : comp;
! cCellVal   : comp;
! cResOtgr   : comp;
!
! SumAvt     : Double;
! KolGrM     : Double;
! nVagon     : string;
! nKvit      : string;
!end;


!type StructInfoDocExt = record
! cVal         : comp;      //    "код валюты",
! cPerson      : comp;      //    "Исполнитель нашей фирмы",
! cDover       : comp;      //    "ссылка на доверенность",
! cPayment     : comp;      //    "форма оплаты",
!
! SumVal       : Double;    //    "сумма в валюте",
! Status       : Word;      //    "статус",
! VhodNal      : Word;      //    "налоги в цену : 1-включены,2-нет",
! dPrice       : Date;      //    "дата курса цен",
! nSertif    : string;
!end;

!type StructInfoDocTNP = record
! cTransp      : comp;
! nVagon       : string;
! nKvit        : string;
!end;

//  Type varMnPlan      = record as table MnPlan;
//  Type varSpMnPl      = record as table SpMnPl;
//  Type varSpMnPlan    = record as table SpMnPlan;
//  Type varIndent      = record as table Indent;
//  Type varClaim       = record as table Claim;
//  Type varBaseDoc     = record as table BaseDoc;        //Убарть это надо будет потом ??????? zzzzzzzzz
//  Type varKatSopr     = record as table KatSopr;
//  Type varSpSopr      = record as table SpSopr;
//  Type varSpStep      = record as table SpStep;
//  Type varObjAcct     = record as table ObjAcct;
//  Type varSpObjAcc    = record as table SpObjAcc;

#endif
