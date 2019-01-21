//------------------------------------------------------------------------------
//                                                      (c) Корпорация Галактика
// Галактика ERP 8.10 - Логистика
// Структура для хранения значений фильтров сопроводительных документов
//------------------------------------------------------------------------------

#ifndef _SoprType_vpp_
#define _SoprType_vpp_

#doc
структура для передачи параметров фильтрации
#end
type
  TFilterInDoc = record
    Filter   : longint;
    cDog     : comp;
    cAppDog  : comp;
    cCalPlan : comp;
    cDO      : comp;
    cNazna   : comp;
    cOrgBase : comp;
    Descr    : string[20];
    Desgr    : string[4];
    wSort    : word;
    wRestore : word;
    FilterD  : word;
    bDate    : date;
    eDate    : date;
    WD       : word;
    NoDOpr   : word;
    w1       : word;
    cGruzTo  : comp;
    cPayment : comp;
    Status   : word;
    cOtvPodr : comp;
    cUks     : comp;
    cGrSopr  : comp;
    cNote    : comp;
    cPodrFrom: comp;
    cMolFrom : comp;
    cPodrTo  : comp;
    cMolTo   : comp;
  end;
#endif