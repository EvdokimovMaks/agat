//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
// Печать книг продаж/покупок. Временные таблицы.
//******************************************************************************

// Временная таблица для печати книги. Список валют.
table struct tmpListVal
(
  cVal : Comp,
  Sum  : array [1..40] of Double
  // Sum[1..20]  - итоговые суммы по валюте
  // Sum[21..40] - начальные итоговые суммы по валюте для доп.листа
)
with index
(
  tmpListVal01 = cVal
);

// Временная таблица для печати книги. Записи регистрации.
table struct tmpBook
(
  cVal                : Comp         "Ссылка на валюту",
  TypeRec             : Word         "Тип записи во временной таблице",
  cBookPrZk           : Comp         "Ссылка на запись в книге продаж/покупок",
  cCorrected_BookPrZk : Comp         "Ссылка на корректирующую запись",
  cIspr_BookPrZk      : Comp         "Ссылка на исправительную запись",
  wDouble             : Word         "Признак дублирующей записи",
  wTipUsers           : Comp         "Тип записи",
  sTipUsersName       : String [80]  "Наименование типа записи",
  cPodr               : Comp         "Ссылка на подразделение",
  sPodrName           : String [80]  "Наименование подразделения",
  cStroyObject        : Comp         "Ссылка на объект строительства",
  sStroyName          : String [200] "Наименование объекта строительства",
  DesGr               : String       "Группа дескрипторов",
  sSortName           : String [250] "Для сортировки",
  wCorrZk_Dop         : Word         "Включение в доплист записи книги покупок",
  wNotLink            : Word         "Непривязанная корректирующая запись", // ссылка на основной период во внешнем атрибуте
  dReg                : Date         "Дата регистрации (копия из BookPrZk)",
  SubTip              : Word         "Подтип записи (копия из BookPrZk)",
  cKatOrg             : Comp         "Ссылка на подразделение",
  sKatOrgName         : String [80]  "Наименование подразделения",
  sKodOp              : String       "Код операции",
  SF_Dop              : Comp         "Ссылка на СФ",
  KO_Med              : Comp         "Атрибут Посредник из СФ"
)
with index
(
  tmpBook01 = cVal + TypeRec + wTipUsers + cPodr + cStroyObject + DesGr + cKatOrg + sSortName, // Для печати отчета
  tmpBook02 = cVal + TypeRec + cBookPrZk + wCorrZk_Dop,
  tmpBook03 = cVal + TypeRec + cCorrected_BookPrZk + sSortName,
  tmpBook04 = cVal + wDouble,
  tmpBook05 = cVal + TypeRec + wCorrZk_Dop,
  tmpBook06 = cBookPrZk
);

// Временная таблица для печати книги. Номер ГТД
table struct tmpGTDN
(
  wSortName : word,
  sNum      : string,
  sCountry  : string
)
with index
(
  tmpGTDN01 = wSortName,
  tmpGTDN02 = sNum + sCountry,
  tmpGTDN03 = sCountry
)
;

// Временная таблица для печати книги. Страна ГТД
table struct tmpGTDC
(
  wSortName : word,
  sCountry  : string,
  sKod      : string
)
with index
(
  tmpGTDC01 = wSortName,
  tmpGTDC02 = sCountry
);

// Временная таблица для номеров и стран ГТД, пригодных для печати без дополнительных проверок
table struct tmpGTD_ForPrint
(
  Npp  : Word,
  Name : string
)
with index
(
  tmpGTD_ForPrint01 = Npp
);

// Временная таблица для печати книги. Код операции
table struct tmpListKodOp
(
  cVal   : Comp,
  bKodOp : Byte,
  Sum    : array [1..4] of Double
)
with index
(
  tmpListKodOp01 = cVal + bKodOp
);

// Временная таблица для печати книги. Центры ответственности
table struct tmpListPodr
(
  sPodrName : String,
  Sum       : array [1..4] of Double
);

// Временная таблица для печати книги. ТН ВЭД
table struct tmpTNVED
(
  Npp   : Word,
  sCode : String
)
with index
(
  tmpTNVED01 = Npp,
  tmpTNVED02 = sCode
);
