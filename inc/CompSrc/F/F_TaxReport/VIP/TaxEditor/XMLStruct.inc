//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - модуль "Электронная отчетность"
// Функциональный интерфейс : "Структура документа"
//------------------------------------------------------------------------------

#ifndef __XMLStruct_Inc__
#define __XMLStruct_Inc__

const
  // наименования служебных атрибутов Namespace
  lc_NamespaceAttrName_xmlns = 'xmlns:xsi';
  lc_NamespaceAttrName_noNSL = 'xsi:noNamespaceSchemaLocation';

  // пути на данные
  lc_FileID_NodePath : string = 'Файл/ИдФайл';
  lc_Schema_NodePath : string = 'Файл/'+lc_NamespaceAttrName_noNSL;

  // Null значение
  lc_NullValue : string = '';

  // пустая дата
  lc_dEmpty : date = Date(0, 0, 0);

  // типы значений
  lc_ValueTypeString = 0;  // строка
  lc_ValueTypeNumber = 1;  // число
  lc_ValueTypeDate   = 2;  // дата

  // длина поля Value
  lc_ValueLength = 100;

  // экспорт в XML
  lc_ExpToXml_3XSrv_Yes = True ;  // сохранять файл на 3Х сервере
  lc_ExpToXml_3XSrv_Not = False;  // НЕ сохранять файл на 3Х сервере

  // способ модификации поля
  lc_ModifyOwner_Def : word = 0;  // по умолчанию
  lc_ModifyOwner_Usr : word = 1;  // пользователь
  lc_ModifyOwner_Alg : word = 2;  // алгоритм

  // признак выгружаемый
  lc_XMapVis_Yes     : word = 0;  // выгружаемый
  lc_XMapVis_Not     : word = 1;  // НЕ выгружаемый

  // значения XMap.Prot
  lc_XMapProt_NotUseAlg : word = 1;  // не использовать алгоритм для данного поля

  // идентификатор дополнительного сегмента "длинной строки"
  lc_XMapMultyStrSegID = '_Add';
end; // const

const
  bxCompElement = 0;
  bxSimpElement = 1;
  bxSimpAttr = 2;
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
