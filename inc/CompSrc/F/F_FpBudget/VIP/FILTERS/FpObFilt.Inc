//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Универсальный интерфейс : "Фильтры пользователя"
//------------------------------------------------------------------------------

Const
  BndCO      = 1;
  BndPP      = 2;
  BndStB     = 4;
  BndTiD     = 8;
  BndDOpLEq  = 16;
  BndDOpGeq  = 32;
  BndNoDoc   = 64;
  BndDescr   = 128;
  BndDesGr   = 256;
  BndMultiCO = 512;
  BndMultiSB = 1024;
  BndMultiPP = 2048;
end;

Const
  NameAlgDate     = '%DT%';
  NameAlgNumDoc   = '%ND%';
  NameAlgSumma    = '%SUM%';
  NameAlgKol      = '%KOL%';
  NameAlgCast     = '%SOD%';
  NameAlgDescr    = '%DSC%';
  NameAlgGrDescr  = '%GDSC%';
  NameAPIObFlt    = 'pAPIFlt.CheckBuff(cFixFilter, FpOborot.BufferP)';
end;
