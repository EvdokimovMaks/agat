

#ifndef __TCVSTR_INC__
#define __TCVSTR_INC__

const
  cntFlagUse_MP_Vh  = 1;
  cntFlagUse_S_Vh   = 2;
  cntFlagUse_MP_Ish = 4;
  cntFlagUse_S_Ish  = 8;
end;

const
  cntTCVClnFlag_RspVhDoc_for_SaveDoc = 1;
end

const
  cntFlagLoadFrmTCV_Vh      = 1;
  cntFlagLoadQualityTCV_Vh  = 2;
  cntFlagLoadTmplTCV_Vh     = 4;
  cntFlagAgrTmplTCV_Vh      = 8;
end;

const
  cntFlag_NotParty = 0;
  cntFlag_Party    = 1;
end;

const
  cntFlagOperIO_Obnov  = 0;
  cntFlagOperIO_Dobavl = 1;
  cntFlagOperIO_Zamena = 2;
  cntFlagOperIO_NewRec = 3;
end;

const
  cntFlagModeDoc_OwnerDoc       = 1;
  cntFlagModeDoc_AnotherDoc     = 2;
  cntFlagModeDoc_DefaultDoc     = 3;
//  cntFlagModeDoc_VhDoc         = 4;
  cntFlagModeDoc_NotUsedDoc     = 5;
  cntFlagModeDoc_NormDocOwn     = 6;
  cntFlagModeDoc_NewDoc         = 7;
  cntFlagModeDoc_NewDoc_Modif   = 8;
  cntFlagModeDoc_AnlSpDocOwn    = 9;

end;

const
 cntFlagSortTCVStr_Number  = 0;
 cntFlagSortTCVStr_NameRes = 1;
 cntFlagSortTCVStr_BarKod  = 2;
 cntFlagSortTCVStr_Obozn   = 3;
end;

const
	cntNumPage_InfoTCVStr = 0;
	cntNumPage_AnlTCVStr  = 1000;
end;

const
 cntNumPageTmpGrN_Kol  = 1;
 cntNumPageTmpGrN_Sum  = 2;
end;

const
 cntNumPageSpWayAc_Cln      = 0;
 cntNumPageSpWayAc_Anl      = 1;
 cntNumPageSpWayAc_Rzr      = 2;
 cntNumPageSpWayAc_Flt      = 3;
 cntNumPageSpWayAc_Frm      = 5;
 cntNumPageSpWayAc_RuleCalc = 6;
 cntNumPageSpWayAc_Alg      = 10;
end;


const
 cntFlagKatPodrTCV_AllSklad  =  0;
 cntFlagKatPodrTCV_AllCeh    = -1;
 cntFlagKatPodrTCV_AllPodr   = -2;

 cntFlagKatMolTCV_AllMOL     = -1;
end;

const
 cntTypeOperTCV_CalcSvOst = 1;
end;

const
 cntFieldTCV_Analitika = 0;
 cntFieldTCV_KatPodr   = 1;
 cntFieldTCV_KatMOL    = 2;
 cntFieldTCV_KatParty  = 3;
 cntFieldTCV_GP_Res    = 4;
end;

const
 cntTCV_NameDocNew_Izd    = 01;
 cntTCV_NameDocNew_GP     = 02;
 cntTCV_NameDocNew_Anl_1  = 03;
 cntTCV_NameDocNew_Anl_2  = 04;
 cntTCV_NameDocNew_Anl_3  = 05;
end;

const
 cntIndexFldSpDoc_Anl_1            = 1;
 cntIndexFldSpDoc_Anl_2            = 2;
 cntIndexFldSpDoc_Anl_3            = 3;
 cntIndexFldSpDoc_Anl_4            = 4;
 cntIndexFldSpDoc_Anl_5            = 5;
 cntIndexFldSpDoc_Anl_Last         = 100;

 cntIndexFldHeadDoc_Anl_1            = 1+cntIndexFldSpDoc_Anl_Last;
 cntIndexFldHeadDoc_Anl_2            = 2+cntIndexFldSpDoc_Anl_Last;
 cntIndexFldHeadDoc_Anl_3            = 3+cntIndexFldSpDoc_Anl_Last;
 cntIndexFldHeadDoc_Anl_4            = 4+cntIndexFldSpDoc_Anl_Last;
 cntIndexFldHeadDoc_Anl_5            = 5+cntIndexFldSpDoc_Anl_Last;
 cntIndexFldHeadDoc_Anl_Last         = 100+cntIndexFldSpDoc_Anl_Last;       //   100 + 100 = 200

 cntIndexFldSpTCV_Anl_1            = 1+cntIndexFldHeadDoc_Anl_Last;
 cntIndexFldSpTCV_Anl_2            = 2+cntIndexFldHeadDoc_Anl_Last;
 cntIndexFldSpTCV_Anl_3            = 3+cntIndexFldHeadDoc_Anl_Last;
 cntIndexFldSpTCV_Anl_Last         = 200+cntIndexFldHeadDoc_Anl_Last;       //    200 + 200 = 400

 cntIndexFldSpTCV_Anl_CopyGP       = 1+cntIndexFldSpTCV_Anl_Last;
 cntIndexFldSpTCV_Anl_Ext_Last     = 100+cntIndexFldSpTCV_Anl_Last;         //    100 + 400 = 500

 cntIndexFldDoc_Izgotovitel_Org  = 1+cntIndexFldSpTCV_Anl_Ext_Last;
 cntIndexFldDoc_Izgotovitel_Podr = 2+cntIndexFldSpTCV_Anl_Ext_Last;
 cntIndexFldDoc_Ispolnitel_Org   = 3+cntIndexFldSpTCV_Anl_Ext_Last;
 cntIndexFldDoc_Ispolnitel_Podr  = 4+cntIndexFldSpTCV_Anl_Ext_Last;
 cntIndexFldDoc_Potrebitel_Org   = 5+cntIndexFldSpTCV_Anl_Ext_Last;
 cntIndexFldDoc_Potrebitel_Podr  = 6+cntIndexFldSpTCV_Anl_Ext_Last;

end;

const
 cntReportTCV_FastReport = 0;
 cntReportTCV_Syr        = 1;
end;

const
 cntFlag_NotRspRes    = 0;
 cntFlag_VhDocRspRes  = 1;
end;

const
  cnt_MaxColumn                   = 28;
  cnt_ArrFlagEdit_IndMin          = 01;
  cnt_ArrFlagEdit_IndClnNum_Start = 01;
  cnt_ArrFlagEdit_IndClnNum_End   = 28;
  cnt_ArrFlagEdit_IndFld_Start    = 29;
  cnt_ArrFlagEdit_IndFld_End      = 50;
  cnt_ArrFlagEdit_IndMax          = 50;
  cntSize_ArrFlagEdit             = 50;
end;

const
 cntFlagTCVStr_Edit    = 1;
end;

const
 cntFlagConv_Mnf_Gr_Res_GP = 0001;
! cntFlag_RspKolNZP         = 0002;
! cntFlagLoadKolNkl_MC_GP   = 0004;
! cntFlagLoadKolNkl_MC_S    = 0008;
! cntFlagLoadKolNkl_Usl_GP  = 0016;
! cntFlagLoadKolNkl_Usl_S   = 0032;
 cntFlagConv_Mnf_Gr_Res_S  = 0064;
! cntFlagSrcDataGP          = 0128;
 cntFlag_UchetKoefPoter    = 0256;
end;

const
 cntFlag_KolNormVid     = 1;
end;

const
 cnt_FldNameDoc_Vh     = 001;
 cnt_FldNameDoc_Ish    = 002;
 cnt_TCVStr_Number     = 003;
 cnt_TCVStr_TypeIzd    = 004;
 cnt_FldNamePos_TRK    = 005;
 cnt_FldBarKod         = 006;
 cnt_FldObozn          = 007;
 cnt_KatParty_Name     = 008;
 cnt_FldEdIzm          = 009;
 cnt_V_KatPodr_Name    = 010;
 cnt_V_KatMOL_Name     = 011;
 cnt_TCVStr_wKodGrPer  = 012;

 cnt_FldAnl1           = 013;
 cnt_FldAnl2           = 014;
 cnt_FldAnl3           = 015;

 cnt_Fld1              = 016;
 cnt_Fld2              = 017;
 cnt_Fld3              = 018;
 cnt_Fld4              = 019;
 cnt_Fld5              = 020;
 cnt_Fld6              = 021;
 cnt_Fld7              = 022;
 cnt_Fld8              = 023;
 cnt_Fld9              = 024;

  cnt_Fld10            = 025;
  cnt_Fld11            = 026;
  cnt_Fld12            = 027;
  cnt_Fld13            = 028;
  cnt_Fld14            = 029;
  cnt_Fld15            = 030;
  cnt_Fld16            = 031;
  cnt_Fld17            = 032;
  cnt_Fld18            = 033;
  cnt_Fld19            = 034;

  cnt_Fld20            = 035;
  cnt_Fld21            = 036;
  cnt_Fld22            = 037;
  cnt_Fld23            = 038;
  cnt_Fld24            = 039;
  cnt_Fld25            = 040;
  cnt_Fld26            = 041;
  cnt_Fld27            = 042;
  cnt_Fld28            = 043;
end;

const
 cntVidTCV_NormDoc    = 0;
 cntVidTCV_WorkRecept = 1;
end;

const
 cnt_ScrHeadListTCVStr_Embeded = 0;
 cnt_ScrHeadListTCVStr_View    = 1;
 cnt_ScrHeadListTCVStr_Select  = 2;
end;

const
  cnt_Switch_KategoryRes_BuyRes      =  01;
  cnt_Switch_KategoryRes_MnfRes      =  02;
  cnt_Switch_KategoryRes_FuntomRes   =  04;
  cnt_Switch_KategoryRes_SubPodrRes  =  08;
end;


// Структура для описания параметров вх/вых данных

  Type  StructTCVPrmIO = record
    FlagRspRes          : word;              // Флаг загрузки данных  0 - из документа TypeDoc, cDoc,  1 - фактическое движение
    FlagLoadTRK         : word;              // Импорт(Экспорт) данных из таблиц расчета
    FldModeRef_Doc      : word;              // константы cntFlagModeDoc_ в этом же файле (Видимо этот флажок можно исрользовать только для ингридиетов)
    TypeDoc             : word;              // Тип документа
    cDoc                : comp;              // ссылка на документ
    cTmplDoc            : comp;              // ссылка на шаблон документа
    cTCVHead            : comp;              // ссылка на документ
    TypeRecFld          : word;
  end; // type StructTCVPrmIO

  Type  StructTCVPrmIO_Ext = record
    wLoadForAll         : word;              // загрузка данных для всех или для текущей
    cOwnerTCVStr        : comp;
    wLevel              : word;              // уровень разузлования (по всем, по первому)
    TypeOperDoc_IO      : word;
    cDocSpecFltr        : comp;              // Фильтр на позиции документа
    FlagLoadZeroKol     : word;              // Разрешить формирование спецификации документа по строкам ТРК с нулевыми количествами
    Conv_Mnf_Gr_Res     : word;
  end; // type StructTCVPrmIO_Ext

Type  StructFldDoc_For_TCV = record
   NField_TCV       : word;
   NameField_TCV    : string;
   TypeDS           : word;
   TypeVal          : word;
   TypeEI           : word;
   Flag_RspVh_S_Ish : word;
   NFld_VhRsp_GP    : word;
end;

Type StructIndexDS_For_TCV = record
   IndDS_MP_Vh   : comp;
   IndDS_S_Vh    : comp;
   IndDS_MP_Ish  : comp;
   IndDS_S_Ish   : comp;
end;


Type  StructRazrezTCV = record
   FlagRspRes_MP_Vh   : word;
   TypeDoc_MP_Vh      : word;
   RefTmpl_MP_Vh      : comp;

   FlagRspRes_S_Vh    : word;
   TypeDoc_S_Vh       : word;
   RefTmpl_S_Vh       : comp;

   FlagRspRes_MP_Ish  : word;
   TypeDoc_MP_Ish     : word;
   RefTmpl_MP_Ish     : comp;

   FlagRspRes_S_Ish   : word;
   TypeDoc_S_Ish      : word;
   RefTmpl_S_Ish      : comp;
end; // type StructRazrezTCV

  Type StructFltNklReadData = record
   VidSopr            : word;
   DateOpr_Start      : date;
   DateOpr_End        : date;
   DateForm_Start     : date;
   DateForm_End       : date;
	 Marker_BaseDoc     : string;
	 Marker_FromKatOrg  : string;
   Marker_FromKatPodr : string;
   Marker_FromKatMol  : string;
   Marker_ToKatPodr   : string;
   Marker_ToKatMol    : string;
   cKatNazna          : comp;
  end;

  Type  StructNstReadData = record
   FlagConv_Mnf_Gr_Res_GP  : word;
   FlagConv_Mnf_Gr_Res_S   : word;
	 LoadDate                : date;
	 StartDate_UP            : date;
	 EndDate_UP              : date;
	 RefMaskaConv_Mnf_Gr_Res : comp;
  end; // type StructNstReadData

  Type  StructNstSaveData = record
	 Flag_KolNormVid     : word;
	 StartDate_NormDoc   : date;
	 EndDate_NormDoc     : date;
  end; // type StructNstSaveData


  Type StructTCVStr_IR = record
    RefTCVHead     : comp;
    RefTopTCVStr   : comp;
  end;

  Type StructTCVStr_Res = record
    TypeIzd      : word;
    RefIzd       : comp;
    RefOtpED     : comp;                 //?????????????
    FlagParty    : word;                 //?????????????
    RefParty     : comp;                 //?????????????
    Flag_V0_N1   : word;
  end;

// Оследить ситуации когда для S_TCVStr_Vh_S.TypeHeadDoc <> 0 a S_TCVPrmIO_S.TyeDoc = 0 !!!!!!!!!!!!!!!!! iiiiiiiiiiiiiii
  Type StructTCVStr_VhIshDoc = record
    FlagRspRes    : word;               // Флаг загрузки данных  0 - из документа TypeDoc, cDoc,  1 - фактическое движение
    TypeHeadDoc   : word;
    RefHeadDoc    : comp;
    TypeSpecifDoc : word;
    RefSpecifDoc  : comp;
  end;

  Type StructTCVStr_An = record
    RefRoleAn    : comp;
    TypeKodGr    : word;
    RefAnVal     : comp;
  end;


  Type StructInfoFldRef = record
    IndexField : word;
    NAnl       : word;
    cKatRole   : comp;
    wKodGrKau  : word;
  end;

#endif
