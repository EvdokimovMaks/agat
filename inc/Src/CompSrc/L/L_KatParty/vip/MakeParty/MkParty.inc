//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Формирование партий (накладные на приход,вн.перемещение)
//******************************************************************************

#ifndef __MkParty_inc__
#define __MkParty_inc__

#doc
структура для формирования новой партии

!!! Не добавлять новые поля
#end
type
  tNewPartyRec = record
    KatSopr_VidSopr  : word;
    KatSopr_DSopr    : date;
    KatSopr_NSopr    : string;
    KatSopr_Name     : string;
    KatSopr_cOrgBase : comp;
    KatSopr_cVal     : comp;
    KatOrg_Name      : string;
    KatOrg_UNN       : string;
    KatOrg_Code      : string;
    SpSopr_nSertif   : string;
    Sopr_Cena        : double;
    Sopr_Valuta      : string;
    SklOrder_DOrd    : date;
    OrdB_Cena        : double;
    OrdB_Valuta      : string;
    _OtpEdKoef       : double;
    Tip_kons         : word;
    FactoryPrice     : string;
    FactoryProcNac   : string;
    Sopr_cUKS        : comp;
    KatMC_NRec       : comp;
    KatMC_Name       : string;
    KatMC_BarKod     : string;
    KatSopr_NVagon   : string;
    KatSopr_DPrice   : date;
  end;

#end