//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Объект по просмотру списка документов
//******************************************************************************

table struct mt_DocInfo
(
  cDocInfo       : comp     // DocInfo.NRec
               
  // подтверждает передачу объекта в аренду
, dArendStart    : date     // Дата начала аренды
, dArendEnd      : date     // Дата окончания аренды
, cArendator     : comp     // Организация арендатор
, cDogovor       : comp     // Договор
, cMove          : comp     // Операция
, inArend        : TSumma   // Передано в аренду
, cEd            : comp     // Единицы измерения

  // кадастровая информация
, sCadNum        : TName    // Кадастровый номер
, sCadNumAdd     : TName    // Кадастровый номер помещения
, sUslNum        : TName    // Условный номер
, sTerrType      : TName    // Категория земель
, doCadStoim     : TSumma   // Кадастровая стоимость
, TaxRate        : TSumma   // Налоговая ставка
, TaxpayerShare  : TSumma   // Доля налогоплательщика
, sDoljaNPChsl   : s10      // Доля налогоплательщика (числитель)
, sDoljaNPZnam   : s10      // Доля налогоплательщика (знаменатель)
, sDoljaPravSob  : TName    // Доля в праве общей собственности
, sDolja_6_378_2 : TName    // Доля кадастровой стоимости здания в соответствии с п. 6 ст. 378.2 НК РФ
, IsNotObjTax    : boolean  // Не является объектом налогообложения для земельного налога

  // учет в налоговом органе
, wFNSOrg        : word     // Режим учета в налоговом органе
, sFNSOKTMO      : TName    // ОКТМО налогового органа ФНС
, sFNSCode       : TName    // Код налогового органа ФНС
, IsSmenaNM      : boolean  // Сменить ИФНС с начала месяца

  // налог на недвижимость
, IsImNotTax     : boolean  // Не подлежит налогообложению
, wImMovable     : word     // Тип имущества (движимое/недвижимое)
, wImTaxBase     : word     // Налоговая база недвижимого имущества (среднегодовая/кадастровая стоимость)
, ImNotTaxSum    : TSumma   // Не облагаемая кадастровая стоимость
, wImVidCode     : word     // Код вида имущества (для н/б среднегодовая стоимость)
, cImKatRate     : comp     // ссылка на "Каталог ставок и льгот"
, wImFeatures    : word     // Особенности налогообложения

  // налог на имущество - адрес
, sElPlanStr_Tip  : TName   // Тип элемента планировочной структуры
, sElPlanStr_Naim : TName   // Наименование элемента планировочной структуры
, sElDrUlSet_Tip  : TName   // Тип элемента улично-дорожной сети
, sElDrUlSet_Naim : TName   // Наименование элемента улично-дорожной сети
, sPomZdanie_Tip  : TName   // Тип помещения в пределах здания, сооружения / машино-место
, sPomZdanie_Nomer: TName   // Номер помещения в пределах здания, сооружения / машино-место
, sPomKvart_Tip   : TName   // Тип помещения в пределах квартиры
, sPomKvart_Nomer : TName   // Номер помещения в пределах квартиры

  // налог на имущество - здания/сооружения
, sZdan_Tip    : TName
, sZdan_Naim   : TName
, sZdan_Tip_1  : TName
, sZdan_Naim_1 : TName
, sZdan_Tip_2  : TName
, sZdan_Naim_2 : TName
, sZdan_Tip_3  : TName
, sZdan_Naim_3 : TName
, sZdan_Tip_4  : TName
, sZdan_Naim_4 : TName

)
with index
(
  mt_DocInfo01 = cDocInfo
, mt_DocInfo02 = inArend + cEd
, mt_DocInfo03 = dArendStart + dArendEnd + cArendator
);
