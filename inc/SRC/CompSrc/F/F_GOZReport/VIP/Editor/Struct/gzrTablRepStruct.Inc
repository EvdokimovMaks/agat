//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность ГОЗ"
// Табличный объект : "Структура отчета"
//------------------------------------------------------------------------------

#ifndef __gzrTablRepStruct_Inc__
#define __gzrTablRepStruct_Inc__

const
  // Null значение
  lc_NullValue : string = '';

  // типы значений
  lc_ValueTypeString   : word = 0;  // строка
  lc_ValueTypeNumber   : word = 1;  // число
  lc_ValueTypeDate     : word = 2;  // дата
  lc_ValueTypeDateTime : word = 3;  // дата время
  lc_ValueTypeBoolean  : word = 4;  // логический (да/нет)

  // формат даты и времени по умолчанию
  lc_DefaultDateFormat     = 'YYYY-MM-DD';//'YYYY-MM-DD+03:00'
  lc_DefaultDateTimeFormat = 'YYYY-MM-DD HH:NN:SS';
//lc_XMLDateTimeFormat     = 'YYYY-MM-DDTHH:NN:SS';

  // способ модификации поля
  lc_ModifyOwner_Def : word = 0;  // по умолчанию
  lc_ModifyOwner_Usr : word = 1;  // пользователь
  lc_ModifyOwner_Alg : word = 2;  // алгоритм
  lc_ModifyOwner_Frm : word = 3;  // формула

  // обязательность заполнения поля
  lc_NeedMode_NotRequired    : word = 0;  // не обязательное
  lc_NeedMode_StrongRequired : word = 1;  // обязательное

  // режимы расчета
  lc_CalcModeAlg_Bit : word = 1;  // рассчитывается по алгоритму

  // режимы запрета расчета
  lc_NotCalcAlg_Bit : word = 1;  // не использовать расчет по алгоритму
  lc_NotCalcFrm_Bit : word = 2;  // не использовать расчет по формуле

  // наименование поля со значением текстовой вершины
  lc_StructTextValueFieldName = 'Value';

end; // const

#endif//__gzrTablRepStruct_Inc__
