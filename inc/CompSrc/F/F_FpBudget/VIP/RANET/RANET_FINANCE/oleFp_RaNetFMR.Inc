//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - модуль "Управление бюджетом"
// Интерфейс взаимодействия : "Финоперации по заявкам RaNet"
//------------------------------------------------------------------------------

//==============================================================================
Const    
  lc_DateFormat = 'DD/MM/YYYY';
  lc_FinDocNodeName = 'FinanceDocument';
  lc_OborotNodeName = 'BudgetAllocation';
end;


//==============================================================================
Type TXmlDocAttr  = record
  Number               : string;
  Description          : string;
  RanetId              : string;
  TiDkGal              : string;
  OperationDate        : string;
  Register             : string;
end;
//------------------------------------------------------------------------------
Type TXmlBudAttr  = record
  ResponsibilityCenter : string;
  BudgetItem           : string;
  Amount               : string;
  Currency             : string;
end;

//------------------------------------------------------------------------------
Type TGalDocAttr  = record
  Number               : string;
  Description          : string;
  RanetId              : comp;
  TiDkGal              : word;
  OperationDate        : date;
  Register             : word;
end;
//------------------------------------------------------------------------------
Type TGalBudAttr  = record
  ResponsibilityCenter : comp;
  BudgetItem           : comp;
  Amount               : double;
  Currency             : comp;
end;

