

#ifndef __SPZAMPARTY_INC__
#define __SPZAMPARTY_INC__

const
  cntFlag220_AskDate               =   00000000000000000000001b;
  cntFlag220_NotWrMess_SE          =   00000000000000000000010b;
  cntFlag220_DelPosNotZam          =   00000000000000000000100b;
  cntFlag220_AvtoFillParty         =   00000000000000000001000b;
	cntFlag220_AvtoFill_Full         =   00000000000000000010000b;
	cntFlag220_NotReadSvOst          =   00000000000000000100000b;
	cntFlag220_ImpNumberSpecif       =   00000000000000001000000b;
	cntFlag220_CreateReport          =   00000000000000010000000b;
	cntFlag220_NeedZamAllPos         =   00000000000000100000000b;
	cntFlag220_SectParty_NZam        =   00000000000001000000000b;
	cntFlag220_PriceList             =   00000000000010000000000b;
  cntFlag220_NotWrMess_War         =   00000000000100000000000b;
  cntFlag220_ResetZamIFError       =   00000000001000000000000b;
  cntFlag220_CopyParOldSpecif      =   00000000010000000000000b;
	cntFlag220_AvtoFillMC            =   00000000100000000000000b;
	cntFlag220_UseRspDoc_for_Add     =   00000001000000000000000b;
	cntFlag220_UchetOstLimKol        =   00000010000000000000000b;
	cntFlag220_SetFullListParty      =   00000100000000000000000b;
	cntFlag220_AddParty_In_Ceh       =   00001000000000000000000b;
	cntFlag220_CopyAnlMC_for_Party   =   00010000000000000000000b;
  cntFlag220_ZamenaErrGP           =   00100000000000000000000b;
  cntFlag220_DoubleTTPossibleZam   =   01000000000000000000000b;
  cntFlag220_Flt_Atribute_Value   =   10000000000000000000000b;
end;

const
  cnt_ZamRes_RefGP_VhDoc_SpDocRes  = 0;
  cnt_ZamRes_RefGP_TekDoc_SpDocAnl = 1;
  cnt_ZamRes_RefGP_VhDoc_SpDocAnl  = 2;
end;

const
 cnt_ZamRes_Uchet_OgrGP_Y     = 0;
 cnt_ZamRes_Uchet_OgrGP_N     = 1;
 cnt_ZamRes_Uchet_OgrGP_N_IF  = 2;
end;

const
  cntKolNeedZam_Ninus_Nal_Party_CU   = 1;
  cntKolNeedZam_Ninus_Nal_Party_CU_N = 2;
end;

const
	cnt_Flag_Use_CU_Zero = 1;
end;

const
 cnt_Flag_Read  = 1;
 cnt_Flag_Write = 2;
end;

const
 cnt_FlagMC    = 0;
 cnt_FlagNabor = 1;
end;

const
 cntMode_FuncErr_Zam_RetZam       = 0;
 cntMode_FuncErr_Zam_NeedCorrect  = 1;
 cntMode_FuncErr_Zam_RunZam       = 2;
 cntMode_FuncErr_Zam_OtmenaZam    = 4;
 cntMode_FuncErr_Zam_All          = cntMode_FuncErr_Zam_NeedCorrect + cntMode_FuncErr_Zam_RunZam + cntMode_FuncErr_Zam_OtmenaZam;
end;

// cnt_ErrPrecision_Doc               = 8192;
const
 cnt_ValidPartyZam                  =  000000001b;
 cnt_ValidMCZam_S                   =  000000010b;
 cnt_ValidMCZam_M                   =  000000100b;
 cnt_OKTTNeedZam_NumZamFull         =  000001000b;
 cnt_ErrTTNaZamenu_Kol_NeedZamReal  =  000010000b;
 cnt_ErrTTNaZamenu_KolReal_DiskED   =  000100000b;
 cnt_ErrTTDocZam_Wrk_NotBalanceKol  =  001000000b;
 cntOverLimKol_NedZam               =  010000000b;
 cnt_ErrTTNaZamenu_KolReal_NRound   =  100000000b;
end;

const
 cnt_CorrectData_KolReal            = 01;
end;

const
 cnt_Used_PriceList      = 0001;
 cnt_Used_UPrice         = 0002;
end;

const
	cntFlagKol_NeedZam     = 0001;
	cntFlagKol_NZam        = 0002;
end;

!const
! cnt_War_NumZam_L  = 1;
! cnt_War_NumZam_H  = 2;
!end;

const
  cntActZam_TabFlt  = 1;
  cntActZam_TabDel  = 2;
  cntActZam_TabAdd  = 3;
  cntActZam_TabProd = 4;
end;

const
 cntRzlt_WndZamMC_Wrk_NotDef     = 0;
 cntRzlt_WndZamMC_Wrk_OK         = 1;
 cntRzlt_WndZamMC_Wrk_NO         = 2;
end;

const
	cntTypeDoc_for_DEI = 61;
end;

const
 cnt_ZamRes_TypeED_Act  = 0;
 cnt_ZamRes_TypeED_Mnf  = 1;
 cnt_ZamRes_TypeED_Uch  = 2;
end;

const
 cnt_ZamRes_DelHistZam_Z = 0;
 cnt_ZamRes_DelHistZam_Y = 1;
 cnt_ZamRes_DelHistZam_N = 2;
end;

const
 cntRound_ListNZam_All     = 0;
 cntRound_ListNZam_NeedZam = 1;
 cntRound_ListNZam_NZam    = 2;
end;

const
 cntFlagMode_Round_NRound  = 0;
 cntFlagMode_Round_MinR    = 1;
 cntFlagMode_Round_MaxR    = 2;
 cntFlagMode_Round_MatR    = 4;
end;

const
	cntMarker_for_NoteBene = 'Marker_for_NoteBene';
end;

const
 cnt_NameMarker_ForAvtoRan_Alg23 = 'AutoRunAlg23';
 cntList_SpMnPlan_ForAvtoRan     = 'List_SpMnPlan';
end;

const                                                    //0001001001001001b
 cnt220_CodErr_FlagUse_VarZam_Net_SpDoc_VarZam           = 0000000000000000001b;
 cnt220_CodErr_FlagUse_VarZam_Net_DelAddSpDoc_VarZam     = 0000000000000000010b;
 cnt220_CodErr_FlagUse_VarZam_Period                     = 0000000000000000100b;
 cnt220_CodErr_FlagUse_VarZam_NoteBene_State_Err         = 0000000000000001000b;
 cnt220_CodErr_FlagUse_VarZam_Equal_MCNeedZam_MCNaZam    = 0000000000000010000b;
 cnt220_CodErr_FlagUse_VarZam_UnCorrect_RspGP            = 0000000000000100000b;
 cnt220_CodErr_FlagUse_VarZam_NFind_SpDocsMC_in_VarZam   = 0000000000001000000b;
 cnt220_CodErr_FlagUse_VarZam_NFind_DelMC_in_ListNeedZam = 0000000000010000000b;
 cnt220_CodErr_FlagUse_VarZam_NFind_DelMC_in_SpDocs      = 0000000000100000000b;
 cnt220_CodErr_FlagUse_VarZam_OverLim_AktZam             = 0000000001000000000b;
 cnt220_CodErr_FlagUse_VarZam_OverLim_DO                 = 0000000010000000000b;
 cnt220_CodErr_FlagUse_VarZam_OstLim_DO_Zero             = 0000000100000000000b;
 cnt220_CodErr_FlagUse_VarZam_NeedKol_WasZam_All         = 0000001000000000000b;
 cnt220_CodErr_FlagUse_VarZam_NoFind_MC_NaZamenu         = 0000010000000000000b;
 cnt220_CodErr_FlagUse_VarZam_NFind_GP_in_Rsp            = 0000100000000000000b;
 cnt220_CodErr_FlagUse_VarZam_RoundSvOst_Zero            = 0001000000000000000b;
 cnt220_CodErr_FlagUse_VarZam_RoundKol_Zero              = 0010000000000000000b;
 cnt220_CodErr_FlagUse_VarZam_Atribute_Value             = 0100000000000000000b;
end;

const
 cntHistZam_Flags_Storno = 000000001b;
end;

#endif
