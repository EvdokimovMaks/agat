//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Распределение платежных документов с учетом рекламации и возвратов платежей
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
  cNode : comp
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
  mt_BaseFin07_1 = Selected + cOrg + isLeaf,
  mt_BaseFin08 = TiDkGal + cSoprDoc + cNode + cOrg,
  mt_BaseFin09 = cOrg + cNode + DateOpl,
  mt_BaseFin10 = cNode
#ifdef __USG__
  ,mt_BaseFin11 = cPlDgDist
#end
  ,mt_BaseFin12 = Selected + cOrg + cBaseDoc + cDogovor + DateOpl
  ,mt_BaseFin13 = cOrg + cBaseDoc + cDogovor + DateOpl
  ,mt_BaseFin14 = Selected + cOrg + cBaseDoc + DateOpl
  ,mt_BaseFin15 = cOrg + cBaseDoc + DateOpl
);
/////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// Документы основания
table struct mt_BaseDoc
(
  NRec : comp,
  cBaseDoc : comp,
  cDogovor : comp,
  cAppDogovor: comp,
  cCalPlan: comp,
  cOrg : comp,
  SumOpl : double,
  SumDolg : double,
  SumPay : double,            // сумма платежей
  SumShip : double,           // сумма отгрузок
  SumActRec : double,         // сумма возвратов
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

table struct mt_log
(
  Nrec  : comp,
  ind   : longint,
  cRec1 : comp,
  cRec2 : comp,
  cUser : comp, //ссылка на пользователя
  wnum  : word
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
  cRec1 : comp,
  cRec2 : comp
)
with index
(
  mt_ulog01 = cRec1
);
table struct t_KatSopr
(
  cRec  : comp,
  cRec1 : comp,
  cRec2 : comp,
  Sums  : tSumma_x02,  // 1 - оплаченая сума 2 - задолженость по оплате
  kTbl  : word,
  wList : word,
  cBaseDoc : comp,
  Selected : word,
  dOpr     : date,
  dSopr    : date,
  wSort    : word,
  bRetOk   : boolean,  // возврат был обработан в процессе
  bActOk   : boolean,  // рекламация была обработана в процессе
  cBaseFin : comp,     // ссылка на возврат
  wTypeRec : word,     // Тип записи. 0 - накладная, 1 - рекламиция, 2 - возврат
  cDogovor : comp      // ссылка на договор
)
(
  t_KatSopr01 = cRec,
  t_KatSopr02 = cRec1,
  t_KatSopr03 = cRec2,
  t_KatSopr04 = wList,
  t_KatSopr05 = kTbl + cRec + dSopr + wSort,
  t_KatSopr06 = wList + cRec,
  t_KatSopr07 = wList + cRec1,
  t_KatSopr08 = cBaseDoc,
  t_KatSopr09 = Selected + cRec, // по выбранным + по контрагентам
  t_KatSopr10 = kTbl + cRec + dOpr + wSort,
  t_KatSopr11 = wTypeRec + dOpr,
  t_KatSopr12 = wTypeRec + cBaseDoc + dOpr
);

table struct mt_MagOper = MagOper;
/////////////////////////////////////////////////////////////////////
