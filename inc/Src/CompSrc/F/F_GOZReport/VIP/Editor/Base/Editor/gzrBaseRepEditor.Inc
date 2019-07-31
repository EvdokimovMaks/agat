//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Абстрактный интерфейс редактирования: "Редактор отчета"
//------------------------------------------------------------------------------

#ifndef __gzrBaseRepEditor_Inc__
#define __gzrBaseRepEditor_Inc__

const
  // пустая дата
  lc_dEmpty : date = To_Date(0, 0, 0);

  lc_MessageType_Err : word = 0;  // ошибка
  lc_MessageType_Wrn : word = 1;  // предупреждение

  lc_XMLPath_ExternalHelpURL = 'Документация/URL';

end; // const

#endif//__gzrBaseRepEditor_Inc__
