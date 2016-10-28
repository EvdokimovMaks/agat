#ifndef _tPrLsCommonParameters_inc_
#define _tPrLsCommonParameters_inc_

Type
  tRoundPrLs = record
    wParam: word;
    Rnd   : double;
  end;

  tPrLsRecurParameters = record
    Header         : string;
    pKlPrice       : comp;
    KodVal_1       : comp;
    dPrice_1       : date;
    dCurse_1       : date;
    dOrderFrom     : date;
    CursVal_1      : double;
    Switch_Price   : word;
    CalcOst        : word;
    FormRepPrice   : word;
    vToAll         : word;
    NeedNalNac     : word;
    GrParty        : word;
    ParSklad       : word;
    vSkl           : comp;
    pBasePrice     : comp;
    pOrg_Switch    : comp;
    NeedFilters    : word;
    NewPriceZero   : word;
    KoeffRas       : double;
    RoundParameters: array[1..2] of tRoundPrLs;
  end;
                  
  tPrLsCommonParameters = record
    RecurParameters: tPrLsRecurParameters;

    CreateOnParty: boolean;
    CreateOnGroup: boolean;
    IsUpdating   : boolean;
    FltPodr      : comp;
    FltMol       : comp;
  end;
#end // _tPrLsCommonParameters_inc_
