//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - модуль "Платежный календарь"
// Константы алгоритмов для вычисления полей модуля
//------------------------------------------------------------------------------

Const

  // документы ПК (только для сортировки)
  noDoc0821 = 1; // Финансовое обязательство контрагента
  noDoc0822 = 2; // Финансовое обязательство предприятия
  noDoc0801 = 3; // Заявка на расходование средств
  noDoc0804 = 4; // Заявка на приходование средств
  noDoc0802 = 5; // Заявка на периодический расход средств
  noDoc0810 = 6; // Заявка на периодический приход средств
  noDoc0803 = 7; // Заявка на получение кредита

  nAlg_wRegim    = 1; // режим формирования
  nAlg_wPrior    = 2; // приоритет
  nAlg_dInput    = 3; // дата документа
  nAlg_dBegPlat  = 4; // период оплаты
  nAlg_dEndPlat  = 5; // период оплаты
  nAlg_dFirst    = 6; // первоначальная дата
  nAlg_dDoc      = 7; // планируемая дата погашения
  nAlg_doSumma   = 8; // сумма
  nAlg_cKatOrg   = 9; // организация
  nAlg_cKatStroy = 10;// объект строительства
  nAlg_cCO       = 11;// центр ответственности
  nAlg_cStBud    = 12;// статья бюджета
  nAlg_cCurator  = 13;// куратор
  nAlg_cPurpose  = 14;// назначение
  nAlg_wComment  = 15;// примечание
  nAlg_wVidPlat  = 16;// вид платежа
  nAlg_wStatus   = 17;// статус
  nAlg_cAktSum   = 18;// сводное обязательство
  nAlg_cNalog    = 19;// группа налогов
  nAlg_wCurse    = 20;// учет платежей
  nAlg_wReMake   = 21;// Переформировывать существующие
  nAlg_wGroup    = 22;// группировка
  nAlg_dDocCl    = 23;// планируемая дата погашения ФОП
  nAlg_doSummaCl = 24;// сумма ФОП

  // поля интерфейса групповой модификации
  cgGrPos_Descr     = 0;
  cgGrPos_DesGr     = 1;
  cgGrPos_cDogovor  = 2;
  cgGrPos_cAppDog   = 3;
  cgGrPos_cCalPlan  = 4;
  cgGrPos_cBaseDoc  = 5;
  cgGrPos_cDocReq   = 6;
  cgGrPos_cCredit   = 6;
  cgGrPos_wPrior    = 7;
  cgGrPos_dInput    = 8;
  cgGrPos_dDate1    = 9;
  cgGrPos_dDate2    = 10;
  cgGrPos_doSumma   = 11;
  cgGrPos_cKatOrg   = 12;
  cgGrPos_cKatStroy = 13;
  cgGrPos_cCO       = 14;
  cgGrPos_cStBud    = 15;
  cgGrPos_cCurator  = 16;
  cgGrPos_cPurpose  = 17;
  cgGrPos_wComment  = 18;
  cgGrPos_cNalog    = 19;
  cgGrPos_wCurse    = 20;
  cgGrPos_wVidPlat  = 21;
  cgGrPos_cGroupOFP = 22;

  // поля интерфейса формирования ФОБ на основании ПД
  cgBySHPos_Descr     = 0;
  cgBySHPos_DesGr     = 1;
  cgBySHPos_wVidPlat  = 2;
  cgBySHPos_wStatus   = 3;
  cgBySHPos_wPrior    = 4;
  cgBySHPos_dInput    = 5;
  cgBySHPos_dDate1    = 6;
  cgBySHPos_dDate2    = 7;
  cgBySHPos_doSumma   = 8;
  cgBySHPos_cKatOrg   = 9;
  cgBySHPos_cKatStroy = 10;
  cgBySHPos_cCO       = 11;
  cgBySHPos_cStBud    = 12;
  cgBySHPos_cCurator  = 13;
  cgBySHPos_cPurpose  = 14;
  cgBySHPos_wComment  = 15;
  cgBySHPos_cGroupOFP = 16;
  cgBySHPos_cAktSum   = 17;

  // parMode
  cgAllAlg   = 0; // все алгоритмы
  cgNoGetAlg = 1; // исключить алгоритмы "выбора из каталога"

  sNoAlg  = '<не изменять>'; // не изменять поле
  wAlg_No = 0;               // не применять алгоритм
  // Режимы запуска алгоритмов (1 - 3)
  wAlgRegim_Auto = 1; // "автоматически"
  wAlgRegim_Sel  = 2; // "по запросу"
  wAlgRegim_No   = 3; // "не применять"

  // DATE ( 4 - 99 )
  wAlgDate_CurDate                 = 4;    // текущая дата
  wAlgDate_OpenDate                = 5;    // дата открытого периода
  wAlgDate_AktOfp_dInput           = 6;    // дата формирования документа
  wAlgDate_AktOfp_dFirst           = 7;    // первоначальная дата погашения
  wAlgDate_AktOfp_dInput_AddSrok   = 8;    // дата формирования документа + срок погашения
  wAlgDate_AktOfp_dFirst_AddSrok   = 9;    // первоначальная дата погашения + срок погашения
  wAlgDate_AktOfp_dDoc             = 10;   // дата документа
  wAlgDate_DocReq_dDoc             = 11;   // дата создания заявки
  wAlgDate_DocReq_dBegPlat         = 12;   // планируемая дата начала оплаты заявки
  wAlgDate_DocReq_dEndPlat         = 13;   // планируемая дата окончания оплаты заявки
  wAlgDate_DocReq_dValCurse        = 14;   // дата курса заявки
  wAlgDate_DocReq_dDoc_AddMinAge   = 15;   // дата создания заявки + минимальный возраст задолженности по договору
  wAlgDate_DocReq_dDoc_AddMaxAge   = 16;   // дата создания заявки + максимальный возраст задолженности по договору
  wAlgDate_BaseDoc_dDoc            = 17;   // дата ДО
  wAlgDate_BaseDoc_dDoc_AddSrok    = 18;   // дата ДО + "на срок"
  wAlgDate_BaseDoc_dForm           = 19;   // дата формирования ДО
  wAlgDate_BaseDoc_dEnd            = 20;   // дата окончания срока действия
  wAlgDate_BaseDoc_dValCurse       = 21;   // дата курса ДО
  wAlgDate_BaseDoc_dPrice          = 22;   // дата цен ДО
  wAlgDate_BaseDoc_dOplMax         = 23;   // дата из "оплатить до"
  wAlgDate_CalPlan_dInput          = 24;   // дата создания ПКП
  wAlgDate_CalPlan_dFrom           = 25;   // дата начала отгрузки ПКП
  wAlgDate_CalPlan_dTo             = 26;   // дата окончания отгрузки ПКП
  wAlgDate_Dogovor_dInpit          = 27;   // дата создания договора
  wAlgDate_Dogovor_dDoc            = 28;   // дата заключения договора
  wAlgDate_Dogovor_dBeg            = 29;   // дата начала действия договора
  wAlgDate_Dogovor_dEnd            = 30;   // дата окончания действия договора
  wAlgDate_SoprHoz_DatOb           = 31;   // дата хозяйственной операции
  wAlgDate_PlPor_DatVip            = 32;   // дата выписки платежного документа
  wAlgDate_PlPor_DatOb             = 33;   // дата оплаты платежного документа
  wAlgDate_AktOfp_dInput_AddAgeOrg = 34;   // дата формирования ФОБ + максимальный возраст задолженности по контрагенту
  wAlgDate_AktOfp_dFirst_AddAgeOrg = 35;   // первоначальная дата погашения ФОБ + максимальный возраст задолженности по контрагенту
  wAlgDate_DocReq_dDoc_AddAgeOrg   = 36;   // дата формирования заявки + максимальный возраст задолженности по контрагенту
  wAlgDate_DocReq_dBegPl_AddAgeOrg = 37;   // первоначальная дата погашения заявки + максимальный возраст задолженности по контрагенту
  wAlgDate_AktOfp_dValCurse        = 38;   // дата курса ФОБ
  // DOUBLE ( 100 - 199 )
  wAlgSumma_DocReq_Summa           = 100;  // Сумма заявки
  wAlgSumma_BaseDoc_Summa          = 101;  // Сумма по ДО
  wAlgSumma_BaseDoc_DolgOtgr       = 102;  // Долг по отгрузкам
  wAlgSumma_BaseDoc_DolgPlat       = 103;  // Долг по платежам
  wAlgSumma_BaseDoc_DolgPlOtgr     = 104;  // Долг по платежам с учетом отгрузок
  wAlgSumma_BaseDoc_User           = 105;  // Сумма ДО, по пользовательскому алгоритму
  wAlgSumma_CalPlan_Summa          = 106;  // Сумма по ПКП
  wAlgSumma_CalPlan_DolgOtgr       = 107;  // Долг по отгрузкам
  wAlgSumma_CalPlan_DolgPlat       = 108;  // Долг по платежам
  wAlgSumma_CalPlan_DolgPlOtgr     = 109;  // Долг по платежам с учетом отгрузок
  wAlgSumma_Dogovor_Summa          = 110;  // Сумма по договору
  wAlgSumma_Dogovor_DolgOtgr       = 111;  // Долг по отгрузкам
  wAlgSumma_Dogovor_DolgPlat       = 112;  // Долг по платежам
  wAlgSumma_Dogovor_DolgPlOtgr     = 113;  // Долг по платежам с учетом отгрузок
  wAlgSumma_Dogovor_NoOpl          = 115;  // Остаток к исполнению по договору
  wAlgSumma_CalPlan_NoOpl          = 116;  // Остаток к исполнению по ПКП
  wAlgSumma_CalPlan_NoOpl_Shem     = 117;  // Остаток к исполнению по ПКП  через схему платежей
  wAlgSumma_DocReq_Summa_Prd       = 118;  // алгоритм с контролем сумм для периодических заявок
  wAlgSumma_DocReq_ByMaxSumma      = 119;  // Сумма заявке по максимальной сумме
  wAlgSumma_DocReq_ByReqSumma      = 120;  // Максимальная сумма заявки по сумме
  wAlgSumma_AktOfp_SumClearing     = 121;  // Сумма финансовых операций
  // 121 свободно
  wAlgSumma_SoprHoz_toAlloc        = 122;  // сумма к распределению по ХО
  // COMP ( 200 - 299 )
  wAlgRef_Def_CO                   = 200;  // ЦО по умолчанию (из настройки)
  wAlgRef_Def_Person               = 201;  // Куратор по умолчанию
  wAlgRef_DocReq_SoprHoz           = 202;  // хозоперация заявки
  wAlgRef_DocReq_Org               = 203;  // контрагент по заявке
  wAlgRef_DocReq_Bank              = 204;  // банк контрагента по заявке
  wAlgRef_DocReq_KatStroy          = 205;  // объект строительства из заявки
  wAlgRef_DocReq_CO                = 206;  // ЦО Заявки
  wAlgRef_DocReq_StBud             = 207;  // на основании разноски заявки
  wAlgRef_DocReq_Person            = 208;  // Куратор Заявки
  wAlgRef_DocReq_Nazna             = 209;  // назначение Заявки
  wAlgRef_BaseDoc_SoprHoz          = 210;  // хозоперация ДО
  wAlgRef_BaseDoc_Org              = 211;  // контрагент по ДО
  wAlgRef_BaseDoc_PlatZa           = 212;  // плательщик (получатель платежей) за контрагента по договору из ДО
  wAlgRef_BaseDoc_Bank             = 213;  // банк контрагента по ДО
  wAlgRef_BaseDoc_CO               = 214;  // ЦО ДО
  wAlgRef_BaseDoc_Nazna            = 215;  // назначение ДО
  wAlgRef_BaseDoc_MTR_Org          = 216;  // организация из целевого учета ДО
  wAlgRef_BaseDoc_MTR_KatStroy     = 217;  // объект строительства из целевого учета ДО
  wAlgRef_BaseDoc_MTR_CO           = 218;  // центр ответственности из целевого учета ДО
  wAlgRef_BaseDoc_MTR_StBud        = 219;  // статья бюджета из целевого учета ДО
  wAlgRef_BaseDoc_MTR_Person       = 220;  // сотрудник из целевого учета ДО
  wAlgRef_CalPlan_SoprHoz          = 221;  // хозоперация ПКП
  wAlgRef_CalPlan_CO               = 222;  // ЦО ПКП
  wAlgRef_CalPlan_Nazna            = 223;  // назначение ПКП
  wAlgRef_CalPlan_MTR_Org          = 224;  // организация из целевого учета ПКП
  wAlgRef_CalPlan_MTR_KatStroy     = 225;  // объект строительства из целевого учета ПКП
  wAlgRef_CalPlan_MTR_CO           = 226;  // центр ответственности из целевого учета ПКП
  wAlgRef_CalPlan_MTR_StBud        = 227;  // статья бюджета из целевого учета ПКП
  wAlgRef_CalPlan_MTR_Person       = 228;  // сотрудник из целевого учета ПКП
  wAlgRef_Dogovor_SoprHoz          = 229;  // хозоперация договора
  wAlgRef_Dogovor_Org              = 230;  // контрагент по договору
  wAlgRef_Dogovor_PlatZa           = 231;  // плательщик (получатель платежей) за контрагента по договору
  wAlgRef_Dogovor_Bank             = 232;  // банк контрагента по договору
  wAlgRef_Dogovor_CO               = 233;  // ЦО договора
  wAlgRef_Dogovor_Person           = 234;  // Куратор договора/соглашения
  wAlgRef_Dogovor_Nazna            = 235;  // назначение договора
  wAlgRef_Dogovor_MTR_Org          = 236;  // организация из целевого учета договора/соглашения
  wAlgRef_Dogovor_MTR_KatStroy     = 237;  // объект строительства из целевого учета договора/соглашения
  wAlgRef_Dogovor_MTR_CO           = 238;  // центр ответственности из целевого учета договора/соглашения
  wAlgRef_Dogovor_MTR_StBud        = 239;  // статья бюджета из целевого учета договора/соглашения
  wAlgRef_Dogovor_MTR_Person       = 240;  // сотрудник из целевого учета договора/соглашения
  wAlgRef_Get_KatStroy             = 241;  // выбор из каталога объектов строительства
  wAlgRef_Get_CO                   = 242;  // выбор из каталога центров ответственности
  wAlgRef_Get_StBud                = 243;  // выбор из каталога статей бюджета (одиночный)
  wAlgRef_Get_Person               = 244;  // выбор из каталога сотрудников предприятия
  wAlgRef_Get_Purpose              = 245;  // выбор из каталога назначений ПК
  wAlgRef_Get_Nazna                = 246;  // выбор из каталога назначений сопроводительных документов
  wAlgRef_UpDateCO_StBud           = 247;  // обновить ЦО в разноске
  wAlgRef_AktSum_Form              = 248;  // формировать ФОБ
  wAlgRef_AktSum_Def               = 249;  // задать сводное ФОБ явно
  wAlgRef_SoprHoz_Org              = 250;  // контрагент по хозоперации
  wAlgRef_SoprHoz_Bank             = 251;  // банк контрагента по ДО
  wAlgRef_PlPor_CO                 = 252;  // центр ответственности по платежному документу
  wAlgRef_PlPor_Person             = 253;  // сотрудник по платежному документу
  wAlgRef_PlPor_SoprHoz            = 254;  // хозоперация (исполнение)
  wAlgRef_BaseDoc_Comment          = 255;  // примечание ДО
  wAlgRef_DocReq_Nalog             = 256;  // группа налогов из Заявки
  wAlgRef_PlPor_NamePlat1          = 257;  // назначения платежа 1
  wAlgRef_PlPor_NamePlat2          = 258;  // назначения платежа 2
  wAlgRef_PlPor_NamePlat3          = 259;  // назначения платежа 3
  wAlgRef_PlPor_NamePlat4          = 260;  // назначения платежа 4
  wAlgRef_PlPor_NamePlat5          = 261;  // назначения платежа 5
  wAlgRef_PlPor_NamePlat6          = 262;  // назначения платежа 6
  // WORD ( 300 - 399 )
  wAlgWord_Def_Vid_Avans           = 300;  // явно - аванс
  wAlgWord_Def_Vid_Fakt            = 301;  // явно - факт
  wAlgWord_Def_Prior               = 302;  // приоритет из системной настройки
  wAlgWord_AktOfp_Purpose_Prior    = 303;  // приоритет из назначения ФОБ
  wAlgWord_DocReq_Comment          = 304;  // примечание заявки
  wAlgWord_DocReq_Prior            = 305;  // приоритет из назначения заявки
  wAlgWord_DocReq_Purpose_Prior    = 306;  // приоритет из назначения заявки
  wAlgWord_BaseDoc_Comment         = 307;  // примечание ДО
  wAlgWord_BaseDoc_Vid             = 308;  // на основании ДО
  wAlgWord_CalPlan_Vid             = 309;  // на основании ПКП
  wAlgWord_Dogovor_MinDebtsAge     = 310;  // минимальный срок задолженности по договору
  wAlgWord_Dogovor_MaxDebtsAge     = 311;  // максимальный срок задолженности по договору
  wAlgWord_Get_Comment             = 312;  // выбор из каталога примечаний ПК
  wAlgWord_Get_Prior               = 313;  // выбор из каталога приоритетов ПК
  wAlgWord_Status_Oform            = 314;  // явно - оформляемый
  wAlgWord_Status_Ispoln           = 315;  // явно - исполняемый
  wAlgWord_BaseDoc_Nazna           = 316;  // назначение ДО
  wAlgWord_KatOrg_MaxDayDebts      = 317;  // максимальный срок задолженности по контрагенту
  wAlgWord_KatOrg_EdDebts          = 318;  // срок задолженности по контрагенту в днях/месяцах
  wAlgWord_Status_Otloj            = 319;  // явно - отложенный
  wAlgWord_Status_Otmen            = 320;  // явно - отмененный
  wAlgWord_Status_Zakr             = 321;  // явно - закрытый
  wAlgWord_DocReq_Curse            = 322;  // курс из заявки
  wAlgWord_BaseDoc_Curse           = 323;  // курс из ДО
  wAlgWord_Dogovor_Curse           = 324;  // курс из договора
  wAlgWord_Def_Curse_Opl           = 325;  // явно по курсу на дату получения платежа
  wAlgWord_Def_Curse_Vip           = 326;  // явно по курсу на дату перечисления платежа
  wAlgWord_ReMake                  = 327;  // переформировывать
  wAlgWord_MakeNew                 = 328;  // формировать новое
  wAlgWord_Skip                    = 329;  // пропускать
  wAlgWord_Ask                     = 330;  // по запросу
  wAlgWord_Break                   = 331;  // прервать процесс
  wAlgWord_GroupNo                 = 332;  // не группировать
  wAlgWord_KatOrg                  = 333;  // по контрагенту
  wAlgWord_Dogovor                 = 334;  // по договору
  wAlgWord_PKP                     = 335;  // по ПКП
  // шаблоны для настройки ( 400 - 499 )
  wAlgDate_Manual_Date             = 400;  // дата документа явно
  wAlgSumm_Manual_Summa            = 401;  // сумма явно
  wAlgRef_Manual_KatOrg            = 402;  // явно из каталога организаций
  wAlgRef_Manual_KatStroy          = 403;  // явно из каталога объектов строительства
  wAlgRef_Manual_CO                = 404;  // явно из каталога центров ответственности
  wAlgRef_Manual_StBud             = 405;  // явно из каталога статей бюджета (одиночный)
  wAlgRef_Manual_Person            = 406;  // явно из каталога сотрудников предприятия
  wAlgRef_Manual_Purpose           = 407;  // явно из каталога назначений ПК
  wAlgWord_Manual_Comment          = 408;  // явно из каталога примечаний ПК
  wAlgWord_Manual_Prior            = 409;  // явно из каталога приоритетов
  wAlgDate_ExtAttr_Date            = 410;  // внешний атрибут дата
  wAlgSumm_ExtAttr_Summa           = 411;  // внешний атрибут сумма
  wAlgRef_ExtAttr_KatOrg           = 412;  // внешний атрибут организация (ссылка)
  wAlgRef_ExtAttr_KatStroy         = 413;  // внешний атрибут объект строительства (ссылка)
  wAlgRef_ExtAttr_CO               = 414;  // внешний атрибут центр ответственности (ссылка)
  wAlgRef_ExtAttr_StBud            = 415;  // внешний атрибут статья бюджета (ссылка)
  wAlgRef_ExtAttr_Person           = 416;  // внешний атрибут сотрудник предприятия (ссылка)
  wAlgRef_ExtAttr_Purpose          = 417;  // внешний атрибут назначение (строка -> ссылка)
  wAlgWord_ExtAttr_Comment         = 418;  // внешний атрибут примечание (строка -> число)
  wAlgRef_ExtClass_Purpose         = 419;  // внешняя классификация назначение (строка -> ссылка)
  wAlgWord_ExtClass_Comment        = 420;  // внешняя классификация примечание (строка -> число)
  wAlgRef_KFO_StBud                = 421;  // разноска по статьям на основании КФО документа
  wAlgRef_Soot_KatOrg              = 422;  // из каталога соответствий организация
  wAlgRef_Soot_KatStroy            = 423;  // из каталога соответствий объект строительства
  wAlgRef_Soot_CO                  = 424;  // из каталога соответствий центр ответственности
  wAlgRef_Soot_StBud               = 425;  // из каталога соответствий статья бюджета
  wAlgRef_Soot_Person              = 426;  // из каталога соответствий сотрудник предприятия
  wAlgRef_Soot_Nazna               = 427;  // из каталога соответствий назначение
  wAlgRef_MTR_Soot_StBud           = 428;  // разноска по статьям бюджета из целевого учета, через каталог соответствий
  wAlgRef_MTR_Manual_StBud         = 430;  // разноска по статьям бюджета на основании спецификации, статья явно
  wAlgRef_Manual_Nalog             = 431;  // явно из каталога групп налогов
  wAlgDate_Manual_Curse            = 432;  // явно дата курса
  wAlgRef_Oborot_Soot_StBud        = 433;  // разноска по статьям бюджета из оборотов, через каталог соответствий
  // настраиваемые алгоритмы
  wNumAlg_Nastr_min      = 1000;
  wNumAlg_Nastr_max      = 4999;
  // настраиваемые алгоритмы DATE   ( 1000 - 1999 )
  wNumAlg_Date_Nastr_min = 1000;
  wNumAlg_Date_Nastr_max = 1999;
  // настраиваемые алгоритмы DOUBLE ( 2000 - 2999 )
  wNumAlg_Summ_Nastr_min = 2000;
  wNumAlg_Summ_Nastr_max = 2999;
  // настраиваемые алгоритмы COMP   ( 3000 - 3999 )
  wNumAlg_Comp_Nastr_min = 3000;
  wNumAlg_Comp_Nastr_max = 3999;
  // настраиваемые алгоритмы WORD   ( 4000 - 4999 )
  wNumAlg_Word_Nastr_min = 4000;
  wNumAlg_Word_Nastr_max = 4999;
  // пользовательские алгоритмы     ( 5000 - ...  )
  wNumAlg_User           = 5000;
End;
