//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Электронная отчетность"
// Базовый объект : "Универсальное хранилище"
//------------------------------------------------------------------------------

#ifndef __FpAddFld_Inc__
#define __FpAddFld_Inc__

Type rcFpEntity = record
  w: Word;
  c: Comp;
end;

Table struct FpAreaBoxRec
( cRec : comp )
with index
( FpAreaBoxRec01 = cRec (Unique)
);

#endif //__FpAddFld_Inc__
