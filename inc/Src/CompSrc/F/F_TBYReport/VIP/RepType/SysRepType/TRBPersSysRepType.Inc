//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность РБ"
// Persistent Object Manager : "Системные типы отчетов"
//------------------------------------------------------------------------------

#ifndef __TRBPersSysRepType_Inc__
#define __TRBPersSysRepType_Inc__

const
  // группы отчетов
  lc_TRBRepGroupName_All  = 'ВСЕ';
  lc_TRBRepGroupName_0001 = 'Налоговая отчетность';
  lc_TRBRepGroupName_0002 = 'Статистическая отчетность';
  lc_TRBRepGroupCode_All  : word = 0;
  lc_TRBRepGroupCode_0001 : word = 1;
  lc_TRBRepGroupCode_0002 : word = 2;

  // типы электронных отчетов
  lc_TRBRepID_NDS         : word =  1;  // Декларация по НДС

  // префиксы
  lc_RepInfo_ComponentPrefix = '#(__COMPONENT__)::';
  lc_RepInfo_IfcPrefix  = 'TRBRepInfo_';
  lc_RepInfo_ObjIfcName = lc_RepInfo_ComponentPrefix+'ITRBBaseRepInfo';
end; // const

#endif//__TRBPersSysRepType_Inc__
