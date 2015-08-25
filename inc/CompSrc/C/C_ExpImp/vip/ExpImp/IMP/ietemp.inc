  // ВНЕШНИЕ АТРИБУТЫ
  iExAttr   :iExtAttr;
  refImpDef : ImpDefine;    // функции для импорта
  fun  : ieFun;             // функции для экспорта-импорта
  m_objManipulation  : Manipulation; // встраиваемые вкладки

  cIEHead               : Comp;
  cIELog                : Comp;
  cCurFieldNRec         : Comp;
  Radio1                : Word;
  cCurrentHeader        : Comp;    // nRec текущего документа - заголовка
  cCurrentSpecification : Comp;    // nRec текущего документа - спецификации
  lDocumentsImported    : Longint; // количество импортированных документов
  wWarningResult        : Word;    // здесь хранится результат ответа на предупреждение о повторном импорте
  wDupWarningResult     : Word;
  wAbsWarningResult     : Word;
  wErrorResult          : Word;    // а здесь - о нарушении уникальности ключа при импорте
  wCantImportResult     : Word;    // результат ответа на невозможность импора
  hMarker               : Longint;
  lMarker               : Longint;
//  sCurFieldName         : String;
  wErrorsCount          : word;    // Число ошибок вставки документов в БД

  sImportField : string; // ДЛЯ ФОРМУЛ ИМПОРТА

  hMarkerInsRecs         : Longint;    // маркер вставленных записей

  bAddMC   : boolean;//создание МЦ
  bNeedLog : boolean;//Вывод дубликатов в лог
