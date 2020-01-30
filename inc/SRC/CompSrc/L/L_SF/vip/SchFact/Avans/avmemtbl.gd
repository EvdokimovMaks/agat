//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Логистика
// Пакетная регистрация авансовых платежей (таблицы памяти)
//******************************************************************************
#ifNdef __AVMEMTBL_VPP
#define __AVMEMTBL_VPP

// таблицы памяти для хранения авансовых документов
Table struct sPlatTips
(
  Owner: comp,
  Name  : string,
  TipDoc: word,
  nSel  : longint
)
with index
(
  sPlatTips00 = TipDoc,
  sPlatTips01 = Owner
);

Table struct sPlatDocs
(
  NRec    : comp,
  cPlat   : comp,  //ссылка на документ
  TipDoc  : word,  //тип документа системный
  TipDocUs: word,  //тип документа пользователя
  DatOb   : Date,
  cPlPor  : comp,
  NoDoc   : string,
  NameTXO : string,
  Summa   : double,
  SumValut: double,
  Valuta  : string,
  SfNum   : string,
  cOrg    : comp,
  cOrg2   : comp,
  cOwner  : comp,
  isLeaf  : word, //boolean,
  regStat : string,
  NoSf    : string,
  cSf     : comp,
  nSel    : longint
)
with index
(
  sPlatDocs00 = NRec  ( Surrogate), //(Unique, Surrogate),
  sPlatDocs01 = cPlat,
  sPlatDocs02 = TipDoc + cOwner + DatOb,
  sPlatDocs03 = cOwner + DatOb,
  sPlatDocs04 = isLeaf,
  sPlatDocs05 = cOwner + isLeaf + TipDoc + cPlat,
  sPlatDocs06 = cPlPor
);

// Для формирования сводных СФ
table struct sSvSchFact
(
  NRec     : Comp,
  dSF      : Date    "Дата сводного СФ",
  dSFBeg   : Date    "Начальная дата", // с которой платежи попадают в данный сводный СФ
  dSFEnd   : Date    "Конечная дата",  // до которой платежи попадают в данный сводный СФ
  TypeDoc  : Word    "Тип платежного документа",
  cOrg     : Comp    "Контрагент",
  Direct   : Word    "Направление",
  cStepDoc : Comp    "Документ-основание, этап",
  cDogovor : Comp    "Договор",
  KolSH    : Integer "Количество сопрхозов в сводном СФ",
  cSF      : Comp    "Ссылка на сводный СФ (SchFact)"
)
with index
(
  sSvSchFact00 = NRec (Unique, Surrogate),
  sSvSchFact01 = TypeDoc + cOrg + cStepDoc + cDogovor,
  sSvSchFact02 = TypeDoc + cOrg + cDogovor
);

table struct sLink_SF_SH
(
  NRec       : Comp,
  cSvSchFact : Comp  "Сводный СФ",
  cSoprHoz   : Comp  "Сопрхоз, который входит в сводный СФ",
  cPlPor     : Comp  "Платеж сопрхоза" // нужен, чтобы избежать лишних GetFirst'ов при добавлении папок сводных СФ в дерево
)
with index
(
  sLink_SF_SH00 = NRec (Unique, Surrogate),
  sLink_SF_SH01 = cSvSchFact,
  sLink_SF_SH02 = cSoprHoz
);

#end
