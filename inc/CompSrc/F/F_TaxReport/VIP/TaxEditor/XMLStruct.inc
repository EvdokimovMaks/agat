//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Функциональный интерфейс : "Структура документа"
//------------------------------------------------------------------------------

#ifndef __XMLStruct_Inc__
#define __XMLStruct_Inc__

const
  // типы значений
  lc_ValueTypeString = 0;  // строка
  lc_ValueTypeNumber = 1;  // число
  lc_ValueTypeDate   = 2;  // дата

  // Null
  lc_NullValue = '';
end;

const
  bxCompElement = 0;
  bxSimpElement = 1;
  bxSimpAttr = 2;
  isLog = true;
end;

const
  cmNoRw     = 1;
  cmNoAllRw  = 2;
  cmYesRw    = 3;
  cmYesAllRw = 4;
end;

const
  NODE_INVALID = 0;
  NODE_ELEMENT = 1;
  NODE_ATTRIBUTE = 2;
  NODE_TEXT = 3;
  NODE_CDATA_SECTION = 4;
  NODE_ENTITY_REFERENCE = 5;
  NODE_ENTITY = 6;
  NODE_PROCESSING_INSTRUCTION = 7;
  NODE_COMMENT = 8;
  NODE_DOCUMENT = 9;
  NODE_DOCUMENT_TYPE = 10;
  NODE_DOCUMENT_FRAGMENT = 11;
  NODE_NOTATION = 12;
end;

Const
  Key_Ident   = 0;
  Key_ExprNde = 1;
  Key_ExprVal = 2;
  Key_ExprKol = 3;
  Key_DataNde = 4;
  Key_DataVal = 5;
  Key_DataKol = 6;
End;

const
  lkk_RootExpr = 0;
  lkk_AvgExpr  = 1;
  lkk_Term     = 2;
end;

#endif//__XMLStruct_Inc__
