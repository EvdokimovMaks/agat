//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Визуальный интерфейс : "Настройка фильтра для протоколов"
//------------------------------------------------------------------------------


#ifndef _FPDOCIMPOBFLT_INC
#define _FPDOCIMPOBFLT_INC

type TDocImpFiltVal = record
      cTempl     : comp;       // шаблон
      sNote      : string;     // примечание
      wStatus    : word;       // статус
      DatObLEq   : date;       // начальная дата
      DatObGEq   : date;       // конечная дата
end;

Const
  BndTempl   = 1;
  BndNote    = 2;
  BndStatus  = 4;
  BndDOpLEq  = 8;
  BndDOpGeq  = 16;
end;


#endif//_FPDOCIMPOBFLT_INC
