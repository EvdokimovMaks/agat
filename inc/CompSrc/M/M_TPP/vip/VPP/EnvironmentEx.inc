//******************************************************************************
//                                                      (c) корпорация ГАЛАКТИКА
// ГАЛАКТИКА 7.12 Производственный контур/Спецификации продуктов
//                Описание таблицы, хранящейих переменные окружения JavaScript
//******************************************************************************

#ifndef EnviromentEx_Inc

#define EnviromentEx_Inc

Table STRUCT EnvironmentExSt "Переменные окружения"
(
  sParName      : tName     "Наименование параметра",
  wParType      : word      "Тип документа",
  cParValue     : comp      "ссылка на позицию документа",
  chSeparator   : char      "разделтель wParType и cParValue"
)

With Index
(
  EnvironmentExSt01 = sParName (Unique)
)
;

#endif
