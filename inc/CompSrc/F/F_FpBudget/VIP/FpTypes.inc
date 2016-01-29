//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Все типы данных FP
//------------------------------------------------------------------------------

#ifndef _FPTYPES_VPP
#define _FPTYPES_VPP

#include FpValues.Inc
#include FpOborot.Inc
#include FpMeanTF.Inc

type TFiltValues = record
      cCO        : comp;
      cPeriod    : comp;
      cStBud     : comp;
      TiDk       : word;
      DatObLEq   : date;
      DatObGEq   : date;
      NoDoc      : tNoDok;
      Descr      : String[20];
      DesGr      : String[20];
      cFilter    : comp;
end;
type TExportBudStruct = record
      fName       : string;
      fType       : integer;
      fWidth      : integer;
      fDecWidth   : integer;
end;
type TArrayExportBudStruct = array[0..0] of TExportBudStruct;
type TFpValPrm = record
  fValMode  : word;
  fcVal     : comp;
  fForecast : word;
  fVariant  : comp;
end;

type TFpRegPrm = record
  KodReg    : word;
  RegMode   : word;
  BuhMode   : word;
end;

type TFpBudEditCellInfo = record
  cBudCO      : comp;     // ЦО бюджета (почти не используется ???)
  cBudPeriod  : comp;     // Период бюджета
  cValues     : comp;     // ссылка на FpValues.NRec
  wKodReg     : word;     // код регистра
  cBudVar     : comp;     // копия бюджета
  cCO         : comp;     // ЦО бюджета (тоже, причем чаще используется именно cCO ???)
  cStBud      : comp;     // статья бюджета
  cPeriod     : comp;     // период показателя
  cHashAn     : comp;     // ссылка на FpValues.cHashAn
  cBudVariant : comp;     // вариант бюджета

  cAlgVariant : comp;     // вариант расчета формул

  wValMode    : word;     // режим работы с валютой
  cVal        : comp;     // ссылка на валюту
  wForecast   : word;     // режим использования прогнозного курсв
  cValVariant : comp;     // вариант прогнозного курсв

  CAn         : TPtr;     // ID контейнера аналитик показателя (ячейки???)
  CAnCube     : TPtr;     // ID контейнера аналитик куба

  Summa       : double;   // сумма показателя
end;

#endif//_FPTYPES_VPP
