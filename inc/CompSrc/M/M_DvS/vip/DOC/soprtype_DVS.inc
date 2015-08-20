#doc
структура для передачи параметров фильтрации
#end


#ifndef _SOPR_TYPE_DVS_INC_
#define _SOPR_TYPE_DVS_INC_

const
 cntFltNKL_DVS_dSopr = 1;
 cntFltNKL_DVS_dOpr  = 2;
end;

const
 cntFltNKL_DVS_cStepDoc   = 001H;
 cntFltNKL_DVS_cDog       = 002H;
 cntFltNKL_DVS_cAppDog    = 004H;
 cntFltNKL_DVS_cCalPlan   = 008H;
 cntFltNKL_DVS_cOrgBase   = 010H;
 cntFltNKL_DVS_Descr      = 020H;
 cntFltNKL_DVS_Desgr      = 040H;
 cntFltNKL_DVS_cGruzFrom  = 080H;
 cntFltNKL_DVS_cGruzTo    = 100H;
 cntFltNKL_DVS_cPodr      = 200H;
 cntFltNKL_DVS_cMol       = 400H;
 cntFltNKL_DVS_cHozOper   = 800H;
end;



type
  StructFltInDoc = record
    Flt_Ref          : word;
    cDog             : comp;
    cAppDog          : comp;
    cCalPlan         : comp;
    cStepDoc         : comp;
    cNazna           : comp;
    cOrgBase         : comp;
    Descr            : string[20];
    Desgr            : string[4];
    FilterD          : word;
    Start_dSopr      : date;
    End_dSopr        : date;
    Start_dOpr       : date;
    End_dOpr         : date;
    Flt_Date         : word;
    cGruzTo          : comp;
    cGruzFrom        : comp;
    cPayment         : comp;
    cPodr            : comp;
    cMol             : comp;
    Status           : word;
    cHozOper         : comp;
    cUks             : comp;
    FlagUse_ListPick : word;
  end;
#endif
