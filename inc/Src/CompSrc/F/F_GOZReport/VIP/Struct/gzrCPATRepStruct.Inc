//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Библиотека функций : "Расчет ПАТ формул структуры отчета"
//------------------------------------------------------------------------------

#ifndef __gzrCPATRepStruct_Inc__
#define __gzrCPATRepStruct_Inc__

const
  // константы ПАТ сервера
  Key_Ident   = 0;
  Key_ExprNde = 1;
  Key_ExprVal = 2;
  Key_ExprKol = 3;
  Key_DataNde = 4;
  Key_DataVal = 5;
  Key_DataKol = 6;

  // формат даты ПАТ сервера по умолчанию
  lc_DefaultPATDateFormat = 'DD.MM.YYYY';
end; // const

#endif//__gzrCPATRepStruct_Inc__
