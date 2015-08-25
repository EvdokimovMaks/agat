//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Типы данных сущности : "Шаблон Экспорт/Импорта"
//------------------------------------------------------------------------------

#ifndef __FpIETempl_Inc__
#define __FpIETempl_Inc__

#ifdef  GAL8_1
#define __FpSpecPostRuNewDict__
#endif//GAL8_1

Type TAttrFpImpTemplater = record
  wPackageFormat : word;
end;

Type TFpIEAn = record
  wAnType  : word;
  KodGrKau : word;
end;
Type TFpIEAnMean = record
  IEAn  : TFpIEAn;
  cMean : comp;
end;


#ifndef __FpSpecPostRuNewDict__
#GalPublic type TPFpIEHeadFld  = record as Table IeHFlds with x$position;
#GalPublic type TPFpIEBodyFld  = record as Table IeSFlds with x$position;
#else
#GalPublic type TPFpIEHeadFld  = record as Table FpIEHeadFld with x$position;
#GalPublic type TPFpIEBodyFld  = record as Table FpIEBodyFld with x$position;
#endif

#endif//__FpIETempl_Inc__
