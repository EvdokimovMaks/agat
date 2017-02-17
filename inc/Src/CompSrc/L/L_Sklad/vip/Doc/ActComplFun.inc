//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 8.10 - Складской учет
// Структуры для актов на (разу)комплектование/(рас)пакетирование
//********************************************************************************

#ifdef ComponentVersion
#component "L_SKLAD"
#end

Table Struct KatSoprActCompl "Накладные и пр."
(
  NRec        : tNRec            "Номер записи"
, FilialNo    : Longint          "FilialNo"
, Name        : s255             "наименование накладной"
, Descr       : tDescr           "дескриптор к номеру документа"
, DesGr       : tDesGr           "код группы пользователей"
, cOrg        : tNRec            "контрагент к взаиморасчетам"
, Summa       : tSumma           "общая сумма по накладной"
, cVal        : tNRec            "код валюты"
, SumVal      : tSumma           "сумма в валюте"
, VhodNal     : Word             "налоги в цену : 1-включены,2-нет"
, dPrice      : Date             "дата курса цен"
, cCompl      : tNRec            "комплект ссылка"
, KolKompl    : tSumma           "кол-во комплектов"
, RndR        : tSumma           "округление РУБ документа до..."
, RndV        : tSumma           "округление ВАЛ документа до..."
, cNazna      : tNRec            "назначение ссылка"
, cDogovor    : tNRec            "Ссылка на договор"
, cAppDogovor : tNRec            "Ссылка на приложение"
, cCalPlan    : tNRec            "Ссылка на пункт календарного плана"
, cPerson     : tNRec            "Исполнитель нашей фирмы"
, cDover      : tNRec            "Ссылка на доверенность"
, nDover      : s20              "номер доверенности"
, dDover      : Date             "дата доверенности"
, sDover      : tName            "доверенное лицо"
, cDovFio     : tNRec            "Ссылка на доверенное лицо"
, Status      : Word             "статус"
, cNote       : tNRec            "пояснение к статусу"
, cPayment    : tNRec            "форма оплаты"
, cTransp     : tNRec            "cсылка на транспорт"
, nVagon      : s20              "Номер ед.подв.состава"
, nKvit       : s20              "Номер ж/д квитанции"
, nSertif     : string           "Сертификат качества"
, cMasEd      : tNRec            "единица веса KatED"
, cMasVid     : tNRec            "способ определения веса"
, Netto       : tSumma           "вес нетто"
, mTara       : tSumma           "вес тары"
, cStepDoc    : tNRec            "Ссылка на счет"
, TipSopr     : Word             "0 - наш документ, 1 - поставщика"
, dSopr       : Date             "дата накладной"
, YearSopr    : Word             "год(dSopr)"
, NSopr       : tDocNumber       "номер накладной"
, VidSopr     : Word             "вид накл как сопр.док-та в зав от оп"
, cPodrFrom   : tNRec            "Подразделение-отправитель"
, cPodrTo     : tNRec            "Подразделение-получатель"
, cMolFrom    : tNRec            "МОЛ-отправитель"
, cMolTo      : tNRec            "МОЛ-получатель"
, cGruzFrom   : tNRec            "код грузоотправителя"
, cGruzTO     : tNRec            "код грузополучателя"
, cOrgBase    : tNRec            "код контрагента"
, dOpr        : Date             "д оприх./списания (если 0 - скл.оп нет)"
, cHozOper    : tNRec            "типовая хоз.операция"
, SoprHoz     : Word             "разнесена(1) или нет(0) на хоз.оп"
, Reserved    : Word             "произведено резерв. 0 - нет, 1 - да"
, SrokRes     : Date             "Срок, до которого установлен резерв"
, cKatSopr    : tNRec            "Ссылка на формирующую накладную"
, cValut      : tNRec            "Ссылка на валюту спецификации"
, cSchFact    : tNRec            "Ссылка на счет-фактуру"
, UserField   : tName            "Поле пользователя"
, cGrSopr     : tNRec            "ссылка на сводную накладную"
, sNalogs     : tSumma           "Сумма налогов по док. НДЕ"
, svNalogs    : tSumma           "Сумма налогов по док. вал."
, transp      : Word             "1 или 0 = копия из ТТН"
, cNZakaz     : tNRec            "ссылка на наряд-заказ"
, cOtgOrder   : tNRec            "ссылка на распоряжение на отгрузку"
, wADoc       : Word             "Дескриминатор абстрактного документа"
, cADoc       : tNRec            "Ссылка на абстрактный документ"
, cIzd        : tNRec            "объект производства"
, wcIzd       : Word             "тип объект производства"
, cZakaz      : tNRec            "ссылка на производственный заказ"
, cPriceAlg   : tNRec            "ссылка на алгоритм расчета цен"
, TypeDoc     : Word             "тип документа 0-на маршрут,1-на вагон"
, cCellVal    : tNRec            "ед.подвижного состава MoveCell"
, cNMoveCell  : tNRec            "Номер ед.подв. состава"
, TaraVoz     : Word             "возвратность тары"
, cOrgPlat    : tNRec            "подразделение-плательщик"
, TipOtvPodr  : Word             "Тип ответственного подразделения"
, cOtvPodr    : tNRec            "Ссылка на ответственное подразделение"
, cUKS        : tNRec            "Ссылка на объект строительства"
, coTable     : word             "Код таблицы-источника"
, cKatSoprSrc : comp             "NRec таблицы-источника"
)
With Index
(
  KatSoprActCompl01  =  NRec(Unique, Surrogate)
, KatSoprActCompl02  =  VidSopr + dSopr + NSopr
, KatSoprActCompl03  =  coTable + cKatSoprSrc
);


//******************************************************************************
Table Struct SpSoprActCompl "Спецификация накладных и пр."
(
  NRec         : tNRec          "Номер записи"
, FilialNo     : Longint        "FilialNo"
, cSpSopr      : tNRec          "ссылка на вышестоящую(основ) спец-ю"
, Npp          : tNpp           "номер по порядку"
, PrMC         : Word           "признак товара или услуги"
, cMCUSL       : tNRec          "код товара(услуги)"
, cOtpED       : tNRec          "код отпускной ед.измерения"
, cAltEd       : tNRec          "Альт.единица измерения"
, cParty       : tNRec          "код партии"
, cVAL         : tNRec          "код валюты"
, cPriceList   : tNRec          "Ссылка на прайс-лист"
, Kol          : tSumma         "количество"
, KolOpl       : tSumma         "количество оплаченного"
, OstKol       : tSumma         "Кол-во не списанного"
, Price        : tPrice         "цена за единицу"
, ProcUb       : tSumma         "% естественной убыли"
, cPersons     : tNRec          "Сотрудник, выполняющий услугу"
, ManualTax    : Word           "Ручные налоги"
, cGrNal       : tNRec          "ссылка на группу налогов"
, cCellVal     : tNRec          "ед.подвижного состава MoveCell"
, cTransp      : tNRec          "ссылка на транспорт"
, nVagon       : s20            "Номер ед.подв.состава"
, nKvit        : s20            "Номер ж/д квитанции"
, nSertif      : string         "Сертификат качества"
, SumAvt       : tSumma         "сумма ж/д тарифа"
, cValAvt      : tNRec          "валюта 2"
, cMasEd       : tNRec          "единица веса KatED"
, cMasVid      : tNRec          "способ определения веса"
, Netto        : tSumma         "вес нетто"
, mTara        : tSumma         "вес тары"
, cResOtgr     : tNRec          "ресурс отгрузки"
, cSpDocs      : tNRec          "ссылка на вышестоящую спецификацию"
, cSopr        : tNRec          "код ТТН"
, dSopr        : Date           "копия из ТТН"
, dOprTTN      : Date           "копия из ТТН"
, VidSopr      : Word           "копия из ТТН"
, Kol2         : tSumma         "количество2(базовое кач-во)"
, VPrice       : tPrice
, KolFact      : tSumma         "количество фактическое"
, KolFact2     : tSumma         "количество фактическое2"
, KolNorma     : tSumma         "количество по норме"
, OilPlot      : tPrice         "плотность топлива"
, OilTemper    : tSumma         "температура топлива"
, cSpOrder     : tNRec          "Ссылка на специф. ордера по кот. воз."
, ProcNac      : tSumma         "Процент наценки для розн. торг."
, cSpStep      : tNRec          "Ссылка на позицию ДО"
, SumNDS       : tSumma         "Сумма нал. НДЕ к контр. по позиции"
, SumVNDS      : tSumma         "Сумма нал. вал. к контр. по позиции"
, RPrice       : tPrice         "округленная цена за единицу"
, RVPrice      : tPrice         "округленная цена в вал. за единицу"
, cSpNZakaz    : tNRec          "Ссылка на позицию заказа"
, cSpSchF      : tNRec          "Ссылка на спецификацию СФ"
, wADocSp      : Word           "Дескриминатор абстрактного документа"
, cADocSp      : tNRec          "Ссылка на абстрактный документ"
, cZakVol      : tNRec          "Ссылка на позицию производ.заказа"
, KolGrM       : tSumma         "количество грузовых мест"
, cOtpEdGrM    : tNRec          "отпускная ед для кол-ва грузовых мест"
, cNMoveCell   : tNRec          "Номер ед.подв. состава"
, cOwner       : tNRec          "Ссылка на Спецификация накладных и пр."
, PrVoz        : Word
, KolPov       : tSumma         "Кол-во поврежденной тары"
, cGPSopr      : tNRec          "ссылка на накладн с Гот.Продукт"
, kolDop       : tSumma         "кол-во в доп.ед.изм."
, cUKS         : tNRec          "Ссылка на объект строительства"
, wMcProp      : Word           "Доп. св-во товара/услуги"
, priceN       : tSumma         "цена для нал.учета"
, vPriceN      : tPrice         "цена для нал.учета в вал."
, manualNalUch : Word           "расч./ручн. цена для нал.уч."
, cPodr        : tNRec          "ссылка на подр."
, cMOL         : tNRec          "ссылка на МОЛ"
, LastDate     : Date           "дата замера топлива"
, LastTime     : Time           "время замера топлива"
, reserve      : tSumma         "кол-во резерва"
, cDogovor     : tNrec          "Ссылка на договор"
, cAppDogovor  : tNrec          "Ссылка на приложение"
, cCalPlan     : tNrec          "Ссылка на пункт календарного плана"
, SummN        : tSumma         "Сумма для налогового учета"
, vSummN       : tSumma         "Сумма в валюте для налогового учета"
, coTable      : word           "Код таблицы-источника"
, cSpSoprSrc   : comp           "NRec таблицы-источника"
)
With Index
(
  SpSoprActCompl01  =  NRec(Unique, Surrogate)
, SpSoprActCompl02  =  cSopr + Npp
, SpSoprActCompl03  =  cSopr + PrMC + Npp
, SpSoprActCompl04  =  coTable + cSpSoprSrc
);


//******************************************************************************
Table Struct SoprOrdAActCompl "Разноска по актам комплектации"
(
  NRec         : tNRec          "Номер записи"
, cSpSopr      : tNRec          "Ссылка на акт комплектации"
, cPodr        : tNRec          "Ссылка на склад"
, cMOL         : tNRec          "Ссылка на МОЛ"
, cMC          : tNRec          "Ссылка на МЦ"
, cSoprDoc     : tNRec          "Ссылка на накладную"
, cOtpEd       : tNRec          "Ссылка на отпускную единицу измерения"
, cParty       : tNRec          "Ссылка на партию"
, Price        : tSumma         "Цена оприходования товара"
, Kol          : tSumma         "Количество оприходованого товара"
, VPrice       : tSumma         "Валютная цена товара"
, cVal         : tNRec          "Ссылка на валюту"
, coTable      : word           "Код таблицы-источника"
, cSoprOrdASrc : comp           "NRec таблицы-источника"
)
With Index
(
  SoprOrdAActCompl01  =  NRec(Unique, Surrogate, Journal)
, SoprOrdAActCompl02  =  cSoprDoc + cMC
, SoprOrdAActCompl03  =  cSoprDoc + cPodr + cMOL
, SoprOrdAActCompl04  =  cSpSopr
, SoprOrdAActCompl05  =  coTable + cSoprOrdASrc
);
