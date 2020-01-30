/////////////////////////////////////////////////////////////////////
// таблица для контрагентов
table struct mt_KatOrg
(
  cOrg :comp,
  SumBill :double,            // сумма отгрузок/поставок контрагента
  SumPay :double,             // сумма платежей контрагента
  SumNakl :double,
  SumOplSp :double,
  State :word,
  Name : string[80],
  Selected : word
)
with index
(
  mt_KatOrg00 = cOrg,
  mt_KatOrg01 = Selected + cOrg,
  mt_KatOrg02 = Name
);
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// таблица платежей
// Поле State
// 0 -  платеж не привязан, не распределен
// 1 -  платеж привязан к ДО
// 2 -  сумма платежа распределена по спецификации  ДО

table struct mt_BaseFin
(
  NRec : comp,
  cBaseFin : comp,                  // платеж
  cSoprDoc : comp,                  // первичный документ
  TiDkGal : word,                   // тип документа (system)
  TipDoc  : word,                   // тип документа (user)
  cOrg : comp,                      // контрагент
  cBaseDoc : comp,                  // ДО
  cPredoplDO : comp,                // предопл ДО
  DateOpl : date,
  NoDoc : string,
  DogNoDoc : string[20],         //Номер договора
  Summa : double,
  SumVal : double,
  cVal   : comp,
  SumToDistr : double,
  SumVToDistr : double,
  SumToDistrFst : double,
  SumVToDistrFst : double,
  State : word,                     // Состояние платежа
                                    // 0 - операций нет.  1 - распределен по ДО (договору)  2 - оплачена спецификация
                                    // 0 - не обработан  1 - обработан частично  2 - обработан полностью
  Tip_Sf  : word,                   // тип СФ
  cDogovor: comp,
  cAppDogovor: comp,
  cCalPlan: comp,
#ifdef __USG__
  cPlDgDist: comp,
#end
  Selected : word,
  isLeaf : word,
  cNode : comp
)
with index
(
  mt_BaseFin00 = NRec (Unique, Surrogate),
  mt_BaseFin01 = cBaseFin,
  mt_BaseFin02 = cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl + NoDoc, // по документам-основаниям + договор
  mt_BaseFin03 = TiDkGal + cSoprDoc + cBaseDoc + cDogovor + cAppDogovor + cCalPlan,     // по первичному документу
  mt_BaseFin04 = cOrg + cBaseFin,      // по контрагентам + платежам
  mt_BaseFin05 = cDogovor + cCalPlan,
  mt_BaseFin06 = cDogovor + cAppDogovor + cCalPlan,
  mt_BaseFin07 = Selected + cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl + NoDoc,
  mt_BaseFin07_1 = Selected + cOrg + isLeaf,
  mt_BaseFin08 = TiDkGal + cSoprDoc + cNode + cOrg,
  mt_BaseFin09 = cOrg + cNode + DateOpl,
  mt_BaseFin10 = cNode,
  mt_BaseFin10_1 = Selected + cNode
#ifdef __USG__
  ,mt_BaseFin11 = cPlDgDist
#end
  ,mt_BaseFin12 = Selected + cOrg + cBaseDoc + cDogovor + DateOpl + NoDoc
  ,mt_BaseFin13 = cOrg + cBaseDoc + cDogovor + DateOpl + NoDoc
  ,mt_BaseFin14 = Selected + cOrg + cBaseDoc + DateOpl + NoDoc
  ,mt_BaseFin15 = cOrg + cBaseDoc + DateOpl + NoDoc
  ,mt_BaseFin16 = cSoprDoc + DateOpl + NRec

);
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// Документы основания
table struct mt_BaseDoc
(
  NRec : comp,
  cBaseDoc : comp,
  cDogovor: comp,
  cAppDogovor: comp,
  cCalPlan: comp,
  cOrg : comp,
  SumOpl : double,
  SumDolg : double,
  SumPay : double,            // сумма платежей
  SumShip : double,           // сумма отгрузок
  SumARel : double,           // сумма Актов на реализацию
  Selected : word,
  Nodoc : string[20],           //номер ДО
  DogNoDoc : string[20],         //номер договора
  AppDogNoDoc : string[20],
  dDoc  : Date,
  Total : double,
  cRepcDoc : comp,
  cSF      : comp,            // счетфактура первой накладной
  SFNum   : tDocNumber,       // номер счетфактуры
  SFDFact  : date,            // дата счетфактуры
  wViewDOMode : word,          // режим отображения ДО (видимое невидимое)
  bPreDO      : boolean       // ДО на предоплату
)
with index
(
  mt_BaseDoc00 = NRec,
  mt_BaseDoc01 = cBaseDoc,
  mt_BaseDoc02 = wViewDOMode + cOrg + dDoc + cBaseDoc,
  mt_BaseDoc03 = cDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc04 = cDogovor + cAppDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc05 = wViewDOMode + Selected + cOrg + dDoc + cBaseDoc,       // по контрагентам + документам-основаниям
  mt_BaseDoc06 = cRepcDoc + cBaseDoc,
  mt_BaseDoc07 = wViewDOMode + cOrg + SFDFact + SFNum + cBaseDoc,
  mt_BaseDoc08 = wViewDOMode + Selected + cOrg + SFDFact + SFNum + cBaseDoc,
  mt_BaseDoc09 = wViewDOMode + bPreDO + cOrg + dDoc + cBaseDoc,
  mt_BaseDoc10 = wViewDOMode + bPreDO + Selected + cOrg + dDoc + cBaseDoc,
  mt_BaseDoc11 = wViewDOMode + bPreDO + cOrg + SFDFact + SFNum + cBaseDoc,
  mt_BaseDoc12 = wViewDOMode + bPreDO + Selected + cOrg + SFDFact + SFNum + cBaseDoc
);
/////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////
// Договоры
table struct mt_Dogovor
(
  NoDoc : string[20],
  NRec : comp,
  cDogovor : comp,
  cOrg : comp,
  SumOpl : double,
  SumDolg : double,
  Selected : word

)
with index
(
  mt_Dogovor00 = NRec (Unique, Surrogate),
  mt_Dogovor01 = cDogovor,
  mt_Dogovor02 = cOrg,
  mt_Dogovor03 = Selected + cOrg + cDogovor,       // по выбранным по контрагентам + документам-основаниям
  mt_Dogovor04 = cOrg + cDogovor       // по контрагентам + документам-основаниям
);

table struct mt_log
(
  Nrec  : comp,
  ind : longint,
  cRec1 : comp,
  cRec2 : comp,
  cUser : comp, //ссылка на пользователя
  wnum : word
)
with index
(
  mt_log00 = NRec (Unique, Surrogate),
  mt_log01 = cRec1,
  mt_log02 = wnum + cRec1,
  mt_log03 = ind (autoinc)
);

table struct mt_ulog
(
  cUser     : comp,   // пользователь
  lRound    : longint,// номер операции
  lSetRound : longint,// сессия операции отмены
  cRec1     : comp,   // ссылка на mt_Basefin.NRec
  cRec2     : comp,   // либо договор либо ДО
  cOrg      : comp,   // контрагент хозоперации
  cBaseFin  : comp,   // хозоперация
  cSoprDoc  : comp,   // первичный документ
  cBaseDoc  : comp,   // ДО
  cDogovor  : comp,   // Договор
  cAppDog   : comp,   // уточняющее соглашение
  cKatSopr  : comp,   // накладная
  Summa     : double, // Сумма
  SumVal    : double, // в валюте
  cVal      : comp,   // валюта
  wTypeOper : word    // вид операции
)
with index
(
  mt_ulog01 = cRec1,
  mt_ulog02 = cUser + lRound,
  mt_ulog03 = cUser + lSetRound
);

table struct t_KatSopr
(
  cRec  : comp,
  cRec1 : comp,
  cRec2 : comp,
  Sums   : tSumma_x02,  // 1 - оплаченная сумма 2 - задолженность по оплате
  SumVal : tSumma_x02,  // 1 - оплаченная сумма 2 - задолженность по оплате
  cVal   : comp,
  kTbl  : word,
  wList : word,
  cBaseDoc : comp,
  Selected : word,
  dOpr     : date,
  dSopr    : date,
  cDogovor : comp,      // ссылка на договор
  cAppDogovor: comp,    // ссылка на приложение
  cCalPlan: comp,       // ссылка на пункт календарного плана
  SFNum   : tDocNumber, // номер счетфактуры
  SFDFact : date,       // дата счетфактуры
  dPercent : double,    // процент зачета аванса
  dSumCred : double,    // сумма зачета аванса
  bProcessed : boolean  // полностью обработана
)
with index
(
  t_KatSopr01 = cRec,
  t_KatSopr02 = cRec1,
  t_KatSopr03 = cRec2,
  t_KatSopr04 = wList,
  t_KatSopr05 = kTbl + cRec + dSopr + cRec1,
  t_KatSopr06 = wList + cRec,
  t_KatSopr07 = wList + cRec1,
  t_KatSopr08 = cBaseDoc + dSopr + cRec1,
  t_KatSopr09 = Selected + cRec + dSopr + cRec1, // по выбранным + по контрагентам (сортировка по дате + NREC)
  t_KatSopr10 = kTbl + cRec + dOpr + cRec1,
  t_KatSopr11 = kTbl + cRec + SFDFact + SFNum + cRec1
);

table struct mt_MagOper = MagOper;
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// Отчеты консигнатора
table struct mt_RepcDoc
(
  NRec     : comp,
  cRepcDoc : comp,
  NoDoc    : string,
  dDoc     : date,
  State    : word,
  cOrg     : comp,
  cVal     : comp,              // валюта документа
  BegDate  : date,
  EndDate  : date,
  SumOpl   : double,            // оплата по документу
  SumDolg  : double,            // неоплаченный остаток
  SumPay   : double,            // сумма по документу
  Selected : word
)
with index
(
  mt_RepcDoc00 = NRec(Unique, Surrogate),
  mt_RepcDoc01 = cRepcDoc,
  mt_RepcDoc02 = cOrg + dDoc,
  mt_RepcDoc03 = Selected + cOrg + dDoc
);

/////////////////////////////////////////////////////////////////////
table struct KatH // в KatH хранится сложная привязка ТХО.
(
  Nrec      : comp       "Nrec",
  cNode     : comp       "cNode",
  Name      : string[80] "Name",
  Mode      : word       "Режим разноски", // wModeXXXX
  Priority  : word       "Приоритет регистра учета",
  cPlansSch : comp       "регистр учета",
  cHozOper  : comp       "типовая операция",
  Oper      : word       "Операция",
  CorParam  : word       "Признак корректировки",
  TiDkGal   : word       "Тип документа"
)
with index
(
  KatH01 = Nrec,
  KatH02 = cNode + Priority,
  KatH03 = cNode + Name,
  KatH04 = Priority,
  KatH05 = Name,
  KatH06 = Mode + Priority,
  KatH07 = Mode + cPlansSch,
  KatH08 = TiDkGal
);
/////////////////////////////////////////////////////////////////////
table struct TXObyTiDk // привязка ТХО в разрезе типов докумекнтов
(
  Nrec      : comp       "Nrec",
  cTune     : comp       "ссылка на настройк тхо",
  TiDk      : word       "TiDk",
  cHozOper  : comp       "типовая операция"
)
with index
(
  TXObyTiDk00 = NRec(Unique, Surrogate),
  TXObyTiDk01 = cTune + TiDk
);


/////////////////////////////////////////////////////////////////////
Table Struct tmp_KatSopr // Для отборов
( Nrec     : comp,
  cNote    : comp,
  cBaseDoc : comp,
  cStepDoc : comp,
  dOpr     : date,
  dSopr    : date,
  cDogovor : comp,      // ссылка на договор
  cAppDogovor: comp,    // ссылка на приложение
  cCalPlan : comp,       // ссылка на пункт календарного плана
  SFNum    : tDocNumber, // номер счетфактуры
  SFDFact  : date,       // дата счетфактуры
  cOrg     : comp,
  Vidsopr  : word,
  Summa    : tSumma,
  SumVal   : tSumma,
  cValSP   : comp,
  SumOpl   : tSumma,
  SumOplV  : tSumma

)
with index
( tmp_KatSopr01 = Nrec
 ,tmp_KatSopr02 = cBaseDoc +DSopr
 ,tmp_KatSopr03 = cOrg + DSopr

);
