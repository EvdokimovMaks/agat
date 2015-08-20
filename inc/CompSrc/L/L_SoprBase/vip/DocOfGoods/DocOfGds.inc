//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Логистика
// Документы, поставляемые с грузом. Таблицы в памяти
//******************************************************************************

#component "L_SoprBase"

// Наименования документов
Table Struct TmpDocOfGds
(
  Npp         : word
, wCode       : word   "Код таблицы"
, NameDoc     : string "наименование документа"
)
with index
(
  TmpDocOfGds01 = Npp
);

//*****************************************************************************
// Значения документов
Table Struct TmpDocOfGdsVal
(
  Npp         : word
, cSpSopr     : comp
, cMCUsl      : comp
, cParty      : comp
, Value       : string "Значение атрибута"
)
with index
(
  TmpDocOfGds01 = cSpSopr + Npp
, TmpDocOfGds02 = Npp + cMCUsl
, TmpDocOfGds03 = Npp + cParty
);
