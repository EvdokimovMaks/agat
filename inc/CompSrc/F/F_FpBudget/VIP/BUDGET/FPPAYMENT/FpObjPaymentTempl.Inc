//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - модуль "Управление бюджетом"
// Базовый объект : "Шаблон формирования платежных документов"
//------------------------------------------------------------------------------

#ifndef __FpObjPaymentTempl_Inc__
#define __FpObjPaymentTempl_Inc__

#include FpObjEMailPayTempl.Inc  // // константы объекта ObjFpEMailPayTempl

Const
  lcFpPayMaxSMACount  =  10;
end;

Const  
  lcFp_TitleTemplSpNpp  = 1;
end;   

Const
  AlgVarApostraph  = '%';
  UserKeyStBudVar  = 'KSt';

  OrgNRecVar       = 'cOrg';
  DogNRecVar       = 'cDog';
  OrgNameVar       = 'sOrg';
  DogNameVar       = 'sDog';

  KauNameVar       = 'sKau';

  DateDebtsVar     = 'Dt';
  SummDebtsVar     = 'Sum';

  NewStrVar        = 'chr(13)';
  TFInfoVar        = '_TFInfo_';

  TFStBudNameVar   = 'StName';
  TFStBudSummVar   = 'StSum';
end;

#endif//__FpObjPaymentTempl_Inc__
