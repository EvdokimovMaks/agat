//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Константы функционала : "Присоединенные документы ОС"
//------------------------------------------------------------------------------

#ifndef __TROSDocInfo_Inc__
#define __TROSDocInfo_Inc__

const
  // пустая дата
  lc_dEmpty : date = Date(0, 0, 0);

  lc_OSDocInfo_KlsTiDK  : word = (              1516);  // KlassOS.TiDK для DocInfo
  lc_OSDocInfo_DocType  : word = (cgOs_15_OS mod 100);  // "Тип документа"  для DocInfo
  lc_OSDocInfo_InfoType : word = (                 4);  // "Тип информации" для DocInfo
end; // const

#endif//__TROSDocInfo_Inc__
