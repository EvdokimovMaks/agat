//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Зачет авансовых платежей
//******************************************************************************

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
  cNode : comp,
  cInvestor : comp,                 // инвестор
  cKatStroy : comp                  // обьект строительства
)
with index
(
  mt_BaseFin00 = NRec (Unique, Surrogate),
  mt_BaseFin01 = cBaseFin,
  mt_BaseFin02 = cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl, // по документам-основаниям + договор
  mt_BaseFin03 = TiDkGal + cSoprDoc + cBaseDoc + cDogovor + cAppDogovor + cCalPlan,     // по первичному документу
  mt_BaseFin04 = cOrg + cBaseFin,      // по контрагентам + платежам
  mt_BaseFin05 = cDogovor + cCalPlan,
  mt_BaseFin06 = cDogovor + cAppDogovor + cCalPlan,
  mt_BaseFin07 = Selected + cOrg + cBaseDoc + cDogovor + cAppDogovor + cCalPlan + DateOpl,
  mt_BaseFin07_1 = Selected + cOrg + isLeaf + cNode,
  mt_BaseFin08 = TiDkGal + cSoprDoc + cNode + cOrg,
  mt_BaseFin09 = cOrg + cNode + DateOpl,
  mt_BaseFin10 = cNode
#ifdef __USG__
  ,mt_BaseFin11 = cPlDgDist
#end
  ,mt_BaseFin12 = Selected + cOrg + cBaseDoc + cDogovor + DateOpl
  ,mt_BaseFin13 = cOrg + cBaseDoc + cDogovor + DateOpl

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
  Nodoc : string[20],         //номер ДО
  DogNoDoc : string[20],      //номер договора
  AppDogNoDoc : string[20],
  dDoc  : Date,
  Total : double,
  wViewDOMode : word          // режим отображения ДО (видимое невидимое)
)
with index
(
  mt_BaseDoc00 = NRec,
  mt_BaseDoc01 = cBaseDoc,
  mt_BaseDoc02 = wViewDOMode + cOrg + dDoc,
  mt_BaseDoc03 = cDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc04 = cDogovor + cAppDogovor + cCalPlan + cBaseDoc,
  mt_BaseDoc05 = wViewDOMode + Selected + cOrg + dDoc + cBaseDoc       // по контрагентам + документам-основаниям
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

/////////////////////////////////////////////////////////////////////
// Логи
table struct mt_log
(
  Nrec  : comp,     //
  ind   : longint,  //
  cRec1 : comp,     // BaseFin
  cRec2 : comp,     // BaseDoc
  cRec3 : comp,     // KatSopr
  cRec4 : comp,     // KatStroy
  cUser : comp,     // ссылка на пользователя
  wnum  : word,     // номер сессии
  wErr  : word      // код ошибки
)
with index
(
  mt_log00 = NRec (Unique, Surrogate),
  mt_log01 = cRec1,
  mt_log02 = wnum + cRec1,
  mt_log03 = ind (autoinc),
  mt_log04 = cRec1 + cRec2 + cRec3 + wErr
);

table struct mt_ulog
(
  cRec1 : comp,
  cRec2 : comp
)
with index
(
  mt_ulog01 = cRec1
);

/////////////////////////////////////////////////////////////////////
// Накладные
table struct t_KatSopr
(
  cRec       : comp,
  cRec1      : comp,
  cRec2      : comp,
  Sums       : tSumma_x02, // 1 - оплаченая сума 2 - задолженость по оплате
  kTbl       : word,
  wList      : word,
  cBaseDoc   : comp,
  Selected   : word,
  dOpr       : date,
  dSopr      : date,
  cDogovor   : comp,       // ссылка на договор
  cAppDogovor: comp,       // ссылка на приложение
  cCalPlan   : comp,       // ссылка на пункт календарного плана
  doPercent  : double      // зачет аванса на процент (округление до 2 знаков)
)
(
  t_KatSopr01 = cRec,
  t_KatSopr02 = cRec1,
  t_KatSopr03 = cRec2,
  t_KatSopr04 = wList,
  t_KatSopr05 = kTbl + cRec + cDogovor + dSopr,
  t_KatSopr06 = wList + cRec,
  t_KatSopr07 = wList + cRec1,
  t_KatSopr08 = cBaseDoc,
  t_KatSopr09 = Selected + cRec, // по выбранным + по контрагентам
  t_KatSopr10 = kTbl + cRec + dSopr,
  t_KatSopr11 = cRec + cCalPlan + dSopr,
  t_KatSopr12 = kTbl + cRec + cAppDogovor + dSopr
);

/////////////////////////////////////////////////////////////////////
// Позиции накладной
table struct mt_SpSopr
(
  cSpSopr       : comp,
  cKatSopr      : comp,
  cInvestor     : comp,
  cKatStroy     : comp,
  cVal          : comp,
  dSumma        : double,
  dDistrSum     : double,
  dSummaVal     : double,
  dDistrSumVal  : double,
  dDistrOst     : double,
  sKSInfo       : string,
  sMCUslName    : string,
  dSopr         : date
)
(
  mt_SpSopr01 = cInvestor + cKatStroy + dSopr,
  mt_SpSopr02 = cKatSopr + cInvestor,
  mt_SpSopr03 = cSpSopr
);

/////////////////////////////////////////////////////////////////////
// Инвесторы
table struct mt_Investor
(
  cInvestor    : comp,
  cAFPKP       : comp,
  dAllSumma    : double,
  dAllDistrSum : double,
  dAllPlanSum  : double   
)
(
  mt_Investor01 = cAFPKP + cInvestor,
  mt_Investor02 = cInvestor
);

/////////////////////////////////////////////////////////////////////
// Обьекты строительства
table struct mt_Obj
(
  cInvestor  : comp,
  cAFPKP     : comp,
  cKatStroy  : comp,
  dAllSumma  : double,
  dDistrSum  : double,
  dPercent   : double
)
(
  mt_Obj01 = cInvestor,
  mt_Obj02 = cAFPKP + cInvestor + cKatStroy,
  mt_Obj03 = cInvestor + cKatStroy
);

/////////////////////////////////////////////////////////////////////
// Иерархия инвестор - объект строительства - накладная - позиция накладной
table struct mt_IerSopr
(
  NRec       : comp,
  cNode      : comp,
  cInvestor  : comp,
  cKatStroy  : comp,
  cKatSopr   : comp,
  cSpSopr    : comp,
  sNameRec   : string,
  NumAFPKP   : string,
  dSumma     : double,
  dDistrSum  : double,
  dPlanSum   : double,
  dPercent   : double,
  isLeaf     : word,
  dDolya     : double
)
(
  mt_IerSopr01 = NRec(Unique, AutoInc),
  mt_IerSopr02 = cNode,
  mt_IerSopr03 = cInvestor + cKatStroy + cKatSopr + cSpSopr,
  mt_IerSopr04 = cInvestor + cNode
);


/////////////////////////////////////////////////////////////////////
// ТXО
table struct mt_MagOper = MagOper;
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// Договоры зачета аванса
table struct mt_DogCred
(
  cDogovor   : comp,       // ссылка на договор
  cAppDogovor: comp,       // уточняющее соглашение
  cAFPKP     : comp,       // авансовый финансовый ПКП
  AdvProc    : double,     // процент зачета
  dCredAdv   : double,     // уже зачтено
  dCredAdvOst: double,     // осталось к зачету
  bManyAFPKP : boolean,    // признак нескольких авансовых ФПКП
  SumAvFPKP  : double,     // сумма авансового финансового ПКП
  wType      : word        // 0 - зачет аванса на процент
                           // 1 - зачет аванса на сумму
)
with index
(
  mt_Dogovor00 = cDogovor + cAppDogovor + cAFPKP,
  mt_Dogovor01 = cAFPKP
);

