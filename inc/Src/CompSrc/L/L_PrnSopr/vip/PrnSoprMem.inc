//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Логистика
// Таблицы для печати ТТН
//******************************************************************************

#ifdef ComponentVersion
#component "L_PRNSOPR"
#end

Table Struct KatSoprMemTTN "Накладные и пр."
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
, nSertif     : s20              "Сертификат качества"
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
, coTable     : Word             "Код таблицы-источника"
)
With Index
(
  KatSoprMemTTN01   =  NRec(Unique, Surrogate)
, KatSoprMemTTN02   =  VidSopr + dSopr + NSopr
);


//******************************************************************************
Table Struct SpSoprMemTTN "Спецификация накладных и пр."
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
, nSertif      : s20            "Сертификат качества"
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
, coTable      : Word           "Код таблицы-источника"
, MarkDelete   : boolean        "Отметка к удалению"
)
With Index
(
  SpSoprMemTTN01  =  NRec(Unique, Surrogate)
, SpSoprMemTTN02  =  cSopr + Npp
, SpSoprMemTTN03  =  cSopr + PrMC + Npp
, SpSoprMemTTN04  =  cMcUsl + PrMC + cGrNal + cOtpEd
, SpSoprMemTTN05  =  MarkDelete
);


//******************************************************************************
Table Struct SpDocNalMemTTN "Налоги документов"
(
  NRec      : tNRec          "Номер записи"
, cSpDoc    : tNRec          "Позиция документа"
, cDoc      : tNRec          "Ссылка на документ"
, TipDoc    : Word           "Тип документа"
, cGrNal    : comp           "Ссылка на GrNal"
, cNalog    : comp           "Ссылка на налог ( Katnalog )"
, Nalog     : tSumma         "Ставка налога"
, SumNal    : tSumma         "Сумма налога в вал. налога"
, cVal      : comp           "Валюта налога"
, SumVal    : tSumma         "Сумма налога в валюте документа"
, Summa     : tSumma         "Сумма налога в НДЕ"
, IsAgreg   : boolean        "Агрегировать по ставкам - да/нет"
, cOrg      : comp           "Ссылка на получателя налога"
, ValCurse  : tSumma         "Курс уплаты налога к НДЕ"
, CrosCurse : tSumma         "Курс уплаты налога к SumVal"
, Npp       : tNpp           "Порядок для сортировки"
, IsCustom  : Word           "Копия из SpGrNal"                         //  +1 - таможня
, rSumma    : tSumma         "Сумма налога в НДЕ (неокруг.)"
, rSumVal   : tSumma         "Сумма налога в валюте док-та (неокруг.)"
, rSumNal   : tSumma         "Сумма налога в вал. налога (неокруг.)"
, dCurseVal : Date           "Дата курса валют"
, coTable   : Word           "Код таблицы-источника"
)
With Index
(
  SpDocNalMemTTN01  =  NRec(Unique, Surrogate)
, SpDocNalMemTTN02  =  cSpDoc + TipDoc + Npp + cNalog
, SpDocNalMemTTN03  =  cSpDoc + TipDoc + cNalog
, SpDocNalMemTTN04  =  cDoc + TipDoc + cNalog
, SpDocNalMemTTN05  =  cDoc + TipDoc + Npp + cNalog
, SpDocNalMemTTN06  =  cNalog                             // Ссылочная целостность - не дополнять
);

Table Struct SpSoprMemTTNGR = SpSoprMemTTN;

//******************************************************************************
Table Struct TTNDocMemTTN "ТТИ"
(
  NRec       : tNRec    "Номер записи"
, FilialNo   : Longint  "FilialNo"
, wTable     : Word     "Код таблицы словаря"
, TiDk       : Word     "Вид документа"
, cDoc       : tNRec    "ссылка на владельца"
, cDoc1      : tNRec    "связанный документ 1"
, cDoc2      : tNRec    "связанный документ 2"
, cOrgAvt    : tNRec    "автопредприятие"
, cMarAvt    : tNRec    "маршрут"
, Speed      : tSumma   "сред.скорость по маршруту"
, cSpeed     : tNRec    "тип скорости для ж/д"
, cTipOtg    : tNRec    "Базис поставки"
, cShipment  : tNRec    "способ отгрузки (WayMove-TipOtg)"
, cPunktR    : tNRec    "пункт разгрузки"
, dPunrBeg   : Date     "дата начала разгрузки"
, tPunrBeg   : Time     "время начала разгрузки"
, dPunrEnd   : Date     "дата окончания разгрузки"
, tPunrEnd   : Time     "время окончания разгрузки"
, cPunrOrg   : tNRec    "организация разгрузки"
, cPunrMet   : tNRec    "способ разгрузки"
, sPunrDop   : s100     "дополнительные операции р"
, dPunrDop   : tSumma   "кол-во доп.операций р"
, tPunrDop   : Time     "время доп.операций р"
, cPunktP    : tNRec    "пункт погрузки"
, dPunpBeg   : Date     "дата начала погрузки"
, tPunpBeg   : Time     "время начала погрузки"
, dPunpEnd   : Date     "дата окончания погрузки"
, tPunpEnd   : Time     "время окончания погрузки"
, cPunpOrg   : tNRec    "организация погрузки"
, cPunpMet   : tNRec    "способ погрузки"
, sPunpDop   : s100     "дополнительные операции"
, dPunpDop   : tSumma   "кол-во доп.операций"
, tPunpDop   : Time     "время доп.операций"
, SumAvt     : tSumma   "стоимость доставки груза"
, cValAvt    : tNRec    "валюта для стоимости доставки"
, cPList     : tNRec    "путевой лист"
, sPList     : s30      "номер путевого листа"
, cDriver    : tNRec    "код водителя"
, transp     : Word     "1-транспорт предпр., 0 - нет"
, cTransp    : tNRec    "код автомобиля"
, cTransp1   : tNRec    "код 1-прицепа"
, cTransp2   : tNRec    "код 2-прицепа"
, cTransp3   : tNRec    "код 3-прицепа"
, cForWork1  : tNRec    "ТН,ТТН-1"
, cForWork2  : tNRec    "ТН,ТТН-1"
, cForWork3  : tNRec    "ТН,ТТН-1"
, cForWork4  : tNRec    "ТН,ТТН-1"
, cForWork5  : tNRec    "ТН,ТТН-1"
, cForWork6  : tNRec    "ТН,ТТН-1"
, cForWork7  : tNRec    "ТН,ТТН-1"
, cForWork8  : tNRec    "ТН,ТТН-1"
, cForWork9  : tNRec    "ТН,ТТН-1"
, cForWork10 : tNRec    "ТН,ТТН-1"
, DopInfo1   : s80      "ТН,ТТН-1"
, DopInfo2   : s80      "ТН,ТТН-1"
, DopInfo3   : s80      "ТН,ТТН-1"
, DopInfo4   : s80      "ТН,ТТН-1"
, DopInfo5   : s80      "ТН,ТТН-1"
, DopInfo6   : s80      "ТН,ТТН-1"
, DopInfo7   : s80      "ТН,ТТН-1"
, DopInfo8   : s80      "ТН,ТТН-1"
, DopInfo9   : s80      "ТН,ТТН-1"
, DopInfo10  : s80      "ТН,ТТН-1"
, DopSum1    : tSumma   "ТН,ТТН-1"
, DopSum2    : tSumma   "ТН,ТТН-1"
, DopSum3    : tSumma   "ТН,ТТН-1"
, DopSum4    : tSumma   "ТН,ТТН-1"
, DopDate1   : Date     "ТН,ТТН-1"
, DopDate2   : Date     "ТН,ТТН-1"
, DopDate3   : Date     "ТН,ТТН-1"
, DopDate4   : Date     "ТН,ТТН-1"
, Descr      : tDescr   "дескриптор к номеру документа"
, DesGr      : tDesGr   "код группы пользователей"
, coTable    : Word     "Код таблицы-источника"
)
With Index
(
  TTNDocMemTTN01  =  NRec(Unique, Surrogate)
, TTNDocMemTTN02  =  wTable + cDoc + Descr
, TTNDocMemTTN03  =  wTable + cDoc1
);


//******************************************************************************
Table Struct AttrValMemTTN "Значения внешних атрибутов"
(
  NRec       : tNRec    "Номер записи"
, wTable     : Word     "Внутренний тип объекта"
, cRec       : comp     "Код записи в таблице-объекте БД"
, cAttrNam   : comp     "Код названия аттрибута,ссылка на AttrNam"
, vString    : string   "string-значение  атрибута"
, vDouble    : double   "double-значение  атрибута"
, vDate      : date     "date-значение атрибута"
, vTime      : time     "time-значение атрибута"
, vComp      : comp     "comp-значение атрибута"
, vLongint   : longint  "int32-значение атрибута"
, coTable    : Word     "Код таблицы-источника"
)
With index
(
  AttrValMemTTN0 = NRec(Unique, Surrogate)
, AttrValMemTTN2 = cAttrNam
, AttrValMemTTN3 = wTable(unique) + cRec + cAttrNam
);


//******************************************************************************
Table Struct AttrNamMemTTN = AttrNam;


//******************************************************************************
Table Struct ExClassNameMemTTN = ExClassName;


//******************************************************************************
Table Struct ExClassSegMemTTN = ExClassSeg;


//******************************************************************************
Table Struct ExClassValMemTTN "Классификационные коды"
(
  NRec       : tNRec    "Номер записи"
, wTable     : Word     "Код таблицы"
, cRec       : comp     "Код записи в таблице БД"
, ClassCode  : Word     "Код классификации, ссылка на ClassNam"
, cClassSeg  : comp     "Ссылка на сегмент"
, coTable    : Word     "Код таблицы-источника"
)
With index
(
  ExClassValMemTTN00 = NRec (Unique, Surrogate)
, ExClassValMemTTN01 = wTable + cRec
, ExClassValMemTTN02 = ClassCode + wTable + cRec
, ExClassValMemTTN03 = ClassCode + cClassSeg
, ExClassValMemTTN04 = cRec + ClassCode + cClassSeg
);


//******************************************************************************
//  Для сбора какой нибудь информации
Table Struct tmpSoprAgr "Для сбора какой нибудь информации"
(
  NmForm   : string[100]  "Наименование формы"
, NmGroup  : string[100]  "Наименование сбора"
, SortName : string   "Ключ сортировки"
, sFld1    : Array [1..20] of string   "строчные значения"
, fFld1    : Array [1..20] of double   "числовые значения"
)
With index
(
  tmpSoprAgr00 = NmForm + NmGroup + SortName
);


!Type type$KatSoprMemTTN  = record as table KatSoprMemTTN;
!Type type$SpSoprMemTTN   = record as table SpSoprMemTTN;
!Type type$SpDocNalMemTTN = record as table SpDocNalMemTTN;
