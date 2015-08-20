//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Базовый объект : "Оси куба"
//------------------------------------------------------------------------------

Type TCubeSpAxis = record
  NRec      : comp;
  XY        : word;
  ItemID    : LongInt;
  isDDLeaf  : boolean;
  SMAID     : LongInt;
  cNode     : comp;
  cKauNode  : comp;
  KodGrKau  : word;
  cMean     : comp;
  Name      : s80;
end;
