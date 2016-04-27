#ifndef _WORK_DS_CNT
#define _WORK_DS_CNT

const
 cntDog_Type_MC_S   = 4;
 cntDog_Type_Usl_S  = 2;
 cntDog_Type_MC_GP  = 5;
 cntDog_Type_Usl_GP = 3;
end;

const
  conReadTab = 1;
end;

Const
  tabDocument = 100;
end;

const
  MinDate = date(1,1,1900);
  MaxDate = date(1,1,2050);
end;

const
 cntFlagSect_FltOneRec0_FltListRec1 = 1;  // флаги для SectionVarDvDS.wFlag
end;

const
 cntLast_NNorm_DsNastr_wVid = 4;
end;

const
  ResetAllSection = 0;
  SpSoprDvDS  = 1;
  SpStepDvDS  = 2;
  DsioDvDS    = 3;

  DogovorDvDS = 1 + tabDocument;
  AppDogDvDS  = 2 + tabDocument;
  CalPlanDvDS = 3 + tabDocument;
  KatOrgDvDS  = 4 + tabDocument;
  BaseDocDvDS = 5 + tabDocument;
  KatSoprDvDS = 6 + tabDocument;
  KatDSNorDvDS= 9 + tabDocument;
  CancelSection = 65535;
end;

const
  toSpDoc_MY         =  1;
  toSpStep_MY        =  2;
  toDsgOtpr_MY       =  3;
  toDsNorm_MY        =  4;
  toKatSopr_MY       =  5;
  toSpSopr_MY        =  6;
  toTAgrInfo_MCParty =  7;
  toPickList_MY      =  8;

  toDogovor_MY     =  100;
  toAppDogovor_MY  =  101;
  toCalPlan_MY     =  102;
  toBaseDoc_MY     =  103;
  toKatOrg_MY      =  104;
  toKatDsNor_MY    =  105;

//  toListDoc_MY   =  32767;
//  toListMC_MY    =  65535;
end;

const
	cntMode_DsNormRed_Pick      = 1;
	cntMode_DsNormRed_ReturnKol = 2;
end;

const
  cntMode_ListMCInter_MltPick               = 0001h;
  cntMode_ListMCInter_ReturnKol             = 0002h;
  cntMode_ListMCInter_SelAll                = 0004h;
  cntMode_ListMCInter_VisibleReserv         = 0008h;
  cntMode_ListMCInter_use_SoprOrdB          = 0010h;
end;

const
 cntListMC_Flag_Reserv_Flt_AllMC       = 0;
 cntListMC_Flag_Reserv_Flt_ReservMC    = 1;
 cntListMC_Flag_Reserv_Flt_NotReservMC = 2;
end;

const
	cnt_SetUslNkl_to_Akt  = 0;
	cnt_SetUslNkl_to_Nkl  = 1;
end;

const
  Extern_PassObj    =  1;
  CntBoxFuncsDSObj  =  2;
  CntKatSoprObj     =  4;
  CntMovDSObj       =  8;
  CntSpSoprObj      = 16;
  CntSpStepObj      = 32;
  CntIR_Obj         = 64;
//  ConObj  =
//  ConObj  =
//  ConObj  =
//  ConObj  =
//  ConObj  =
end;

const
  cntNAK521CorrectPricePoOrder = 'NAK521.CorrectPricePoOrder';
end;


#endif
