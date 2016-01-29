
#ifndef _DOCBUF_INC
#define _DOCBUF_INC

#ifdef ComponentVersion
#component "L_MAKENAKL"
#endif

! Универсальный буфер для формирования шапки документа
! если для конкретной таблицы имя поля не совпадает с
! его наименованием в буфере, то Таблица.Поле указаны
! справа в комментарии. В противном случае либо у Таблицы
! нет соответствующего поля, либо его название совпадает
! с насванием его в буфере.

Table STRUCT SDocBuf "Буфер для формирования шапки документа"

(
  NRec          : comp       , // просто так, непонятно почему
  wTypeDoc      : word       "буфер SOURCE-таблицы",
                             // 1 - Dogovor
                             // 2 - CalPlan
                             // 3 - BaseDoc
                             // 4 - KatSopr
  cOwner        : comp       "владелец уровня (для иерархии)",

  cKatSopr      : comp       "ссылка на накладную, если шапка уже есть",
  Name          : string     "наименование",
  Descr         : string[20] "дескриптор к номеру документа",
  DesGr         : string[4]  "код группы пользователей",
  cMyOrg        : comp       "собственная организация ", // KatSopr.cOrg
  cOrg          : comp       "контрагент к взаиморасчетам", // KatSopr.cOrgBase
  cPlatBank     : comp       "банк плательщика", // BaseDoc.cBank, Dogovor.cBankPlat
  cPolBank      : comp       "банк получателя",  // BaseDoc.cMyBank, Dogovor.cBankPol
  cNazna        : comp       "назначение ссылка", // Dogovor.cProg и Dogovor.cNazna (!!!)
  NoDoc         : tDocNumber "Номер документа <внутренний>", // NoDoc_Ext пока не нужен
  TipMoney      : word       "тип документа по отношению к валюте",
  cVal          : comp       "код валюты", // KatSopr.cValut вычисляется по TipMoney и cVal
  cStepDoc      : comp       "Ссылка на счет",
  VidDoc        : word       "тип ДО",
  VidSopr       : word       "вид сопроводительного док-та",
  VidDog        : word       "вид договора",
  cVidDog       : comp       "Ссылка на вид договора",
  Direct        : word       "0-внут операция,1 - продажа,2 - закупка", // CalPlan.DirectMC
                             // KatSopr.TipSopr=2 - Direct=1 - Отпуск товаров и услуг
                             // KatSopr.TipSopr=1 - Direct=2 - Прием  товаров и услуг
  DirectPlat    : word       "Направление платежей",
!  cNoteSource   : comp       "ссылка на статус формирующего документа", // для контроля остатков
  Status        : word       "статус",
  cNote         : comp       "пояснение к статусу",
  cDogovor      : comp       "Ссылка на договор",
  cAppDogovor   : comp       "Ссылка на приложение",
  cCalPlan      : comp       "Ссылка на пункт календарного плана",
  cBaseDoc      : comp       "Ссылка на ДО",

  dDoc          : date       "дата вступления в силу", // KatSopr.dSopr, CalPlan.dCond
  dForm         : date       "дата формирования", // CalPlan.dInput,Dogovor.dInput
  //dPrice        : date       "дата курса цен",
  dValCurse     : date       "Дата курса валюты",
  ValCurse      : #TSumma    "курс валюты для вал-руб ДО",
  // если задан ValCurse, то и dValCurse ДОЛЖЕН быть корректным !!
  DopProc       : double     "доп.процент к курсу для вал-руб док-осн",

  cCompl        : comp       "комплект ссылка", // (BaseDoc,KatSopr)
  KolKompl      : double     "кол-во комплектов",

  cGrOtpr       : comp       "Ссылка на грузоотправителя", // KatSopr.cGruzFrom,Dogovor.cGrOtp,CalPlan.cGrOtp
  cGrPol        : comp       "Ссылка на грузополучателя",  // KatSopr.cGruzTo
  cPodrFrom     : comp       "Подразделение-отправитель",
  cPodrTo       : comp       "Подразделение-получатель",
  cMolFrom      : comp       "МОЛ-отправитель",
  cMolTo        : comp       "МОЛ-получатель",
  cPerson       : comp       "Исполнитель нашей фирмы", // AttrDog.cCont_My
  cOtvPodr      : comp       "Ответственное подразделение",

  VhodNal       : word       "налоги в цену : 1-включены,2-нет",
  cPayment      : comp       "форма оплаты",
  ManualTTNInfo : word       "способ формирования ТТН",
                             // 1-ТТН заполн-ся вручную; 0-копир-е станд. ф-цией
  wTableSource  : word       "coTable формирующей таблицы для ТТН", // use при ManualTTNInfo=0
  cRecSource    : comp       "NRec формирующей записи для ТТН", // use при ManualTTNInfo=0
  cShipment     : comp       "Ссылка на условия отгрузки",
  cTipOtg       : comp       "Ссылка на базис поставки",
  cPunktP       : comp       "Ссылка на пункт погрузки",
  cPunktR       : comp       "Ссылка на пункт разгрузки",

  cParty        : comp       "партия для учета консигнации", // (BaseDoc)
  cSklad        : comp       "склад отгрузки", // (BaseDoc)
  cZakaz        : comp       "?",

  Skidka        : Double     "скидка от суммы счета",
  VhSkid        : Word       "вариант скидки:1-%,2-сумма",
  nVagon        : string     "Номер ед. подв. состава",
  TypeDoc       : word       "тип документа: 0-на маршрут, 1-на вагон",
  cCellVal      : comp       "ед. подвижного состава",
  cTransp       : comp       "Ссылка на ед.подв. состава", // (SpSopr,SpStep)
  cIzd          : comp       "объект производства ", // (BaseDoc, KatSopr)
  TaraVoz       : word       "Признак возвратности тары",
  Rezerv        : word       "Признак для резервирования",    //1 - резервировать, 0 - нет
  cWayMove      : comp       "Ссылка на способ транспортировки",
  cDover        : comp       "Ссылка на доверенность",
  dDover        : date       "Дата доверенности",
  nDover        : string     "Номер доверенности",
  sDover        : string     "Доверенное лицо",
  cDovFio       : comp       "Ссылка на доверенное лицо",
  ProcOpl       : Double     "процент предоплаты"
)
;

#end // _DOCBUF_INC
