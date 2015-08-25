//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Базовый объект : "Построитель иерархических отчетов"
//------------------------------------------------------------------------------

// временная таблица для настроек (массивы сокращены)
Table struct TblSpRepOne
(
  nRec                 : comp,
  cUserDesk            : comp                     "Ссылка на объект",
  Npp                  : word                     "Номер позиции",
  wGroup               : word                     "Группировка/фильтр",
  wType                : word                     "Тип позиции",
  wKod                 : word                     "Код позиции",
  wFilter              : word                     "Тип фильтра",
  wNode                : word                     "Иерархия или нет",
  ResWord              : Array [1..2] of word     "Разные Word уровня",
  ResComp              : Array [1..2] of comp     "Разные Comp уровня",
  ResName              : Array [1..2] of string[80] "Разные String уровня",
  mark                 : LongInt,
  MarkNum              : LongInt      // количество маркеров
)
with index
(
  TblSpRepOne01 =  NRec, //(Unique, Surrogate),
  TblSpRepOne02 =  cUserDesk + wGroup + Npp,
  TblSpRepOne03 =  cUserDesk + wGroup + wType + wKod,
  TblSpRepOne04 =  cUserDesk + wGroup + wKod
);

// параметры отчета, которые могут быть временно переустановлены
Type TTmpParam = record
  Setted_wKodReg  : boolean;
  Setted_cVariant : boolean;
  Setted_cFilter  : boolean;
  Setted_DopParam : boolean;
  Setted_wTable   : boolean;
  Setted_cBudVar  : boolean;
  Setted_TreeFpVal : boolean;
  wKodReg   : word;
  cVariant  : comp;
  cFilter   : comp;
  DopParam  : word;      // общие параметры, младший бит - какую аналитику брать 0 - операции или 1 - статьи
  wTable    : word;
  cBudVar   : comp;      // ссылка на вариант (для расчета по прогнозному курсу)
  TreeFpVal : tFpValPrm; // валюта дерева
end;

// поля таблицы, используемой при построении иерархии
Type TDoc = record
  wTable  : word; // cgFpTable_Oborot or cgFpTable_Values
  nRec    : comp;
  TiDkGal : word;
  dDoc    : date;
  cSoprDoc: comp;
  CommonParam: word;
  cHashDoc: comp;
  cHashBud: comp; // у Values нет
  cCO     : comp;
  cPeriod : comp;
  cStBud  : comp;
  LeafName: string; // лист
  LeafSort: string; //
  HasLeaf : word; // 1 - есть листы, 0 - нет
  cHozOper : comp; // ссылка на ТФО

//!!Kol если обороты и валюес вместе - надо и валюту в разные поля
  cVal    : comp;
  // fpOborot
  ObEd    : comp;
  ObSumKol: double;
  ObSum   : double;
  ObSumTr : double;
  ObSumSt : double; // в валюте статьи
  // fpValues
  VlEd    : comp;
  VlSumKol: double;
  VlSum   : double;
  VlSumTr : double;
//(план-факт анализ)
  VlColEd : comp;
  VlCol1Sum  : double;
  VlCol2Sum  : double;
  VlCol3Sum  : double;
  VlCol4Sum  : double;
  VlCol5Sum  : double;
  VlCol6Sum  : double;
  VlCol7Sum  : double;
  VlCol8Sum  : double;
  VlCol9Sum  : double;
  VlCol10Sum : double;
  VlCol11Sum : double;
  VlCol12Sum : double;
  VlCol13Sum : double;
  VlCol14Sum : double;
  VlCol15Sum : double;
  VlCol16Sum : double;
  VlCol17Sum : double;
  VlCol18Sum : double;
  VlCol19Sum : double;
  VlCol20Sum : double;
  VlCol21Sum : double;
  VlCol22Sum : double;
  VlCol23Sum : double;
  VlCol24Sum : double;
  VlCol25Sum : double;
end;
