//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.1 - Логистика
// Основные константы и функции СФ
//******************************************************************************

#ifndef __SFCONST_INC
#define __SFCONST_INC

const
  // Направление
  cwDirect_Sell  : Word = 1;
  cwDirect_Buy   : Word = 2;

  cwBrowserView  : Word = 0;
  cwEditDocView1 : Word = 1;
  cwEditDocView2 : Word = 2;
  cwSpecifView   : Word = 3;

  csAttrAddress        : String = 'Юридический адрес';
  csAttrHeadOrg        : String = 'Головная организация';
  csAttrCalcNalogsInAO : String = 'Пересчет налогов в АО';
  csAttrPricipal       : String = 'Принципал';
  csAttrPost           : String = 'Поставщик';
  csAttrSpDopol        : String = 'Дополнение к спецификации';  
  csAttrIPInfo         : String = 'Реквизиты ИП';
  csClass_AO_NotJourn  : String = 'Учет в журнале СФ';
  csAttrNoAgent        : String = 'Печать СФ без агентов';
  csAttrKodOp          : String = 'Код операции';
  csAttrMediator       : String = 'Посредник';
  csAttrSubContr       : String = 'Субподрядчик';
  csAttrNumDateOpl     : String = 'Номер и дата оплаты НДС';  // В 2-х местах проверка
  csAttrCustomsNum     : String = 'Номер документа на таможне';
  csAttrImportSrcSF    : String = 'Импорт корр., исходный СФ';
  csClassKodViewTrans  : String = 'Код вида сделки';
  csAttrSignEDO        : String = 'ЭЦП счета-фактуры';

  cnstNullDouble : Double = 0.001;
  cnstKop        : Double = 0.01;
  cnstKopRound   : Double = 0.0101;   // Для обработки сумм типа 0.010000000218
  cnstNotDelta   : Double = 0.02;     // Для провери ситуации, когда разница между суммами не является погрешностью
  cnstNullKoeff  : Double = 0.000001; // Для проверки на 0 коэффициентов

  // Формат для дат
  dtFormat : String = 'DD.MM.YYYY';


  // Признак работы некоторых функций, с выводом сообщений или без.
  cbIsMessage      : Boolean = True;
  cbIiNotMessage   : Boolean = False;

  // Константы для статусов счетов-фактур
  stSF_Registered           = 0;  // Зарегистрирован

  stSF_Not_Paid_Otgr        = 1;  // Не оплачен
  stSF_Not_Storno_Plat      = 2;  // Не все сторно

  stSF_Not_Reg_Plat         = 3;  // Не зарегистрированный платеж
  stSF_Not_Reg_Otgr         = 4;  // Не зарегистрированная отгрузка
  stSF_Not_Reg_Plat_Vozvrat = 5;  // Не зарегистрированный возврат платежа
  stSF_Not_Reg_Otgr_Vozvrat = 6;  // Не зарегистрированный возврат отгрузки

  stSF_Corrected            = 10; // СФ с корректирующими записями

  // Способ отображения статуса
  stSF_ShortStr = 0; // В виде одной буквы
  stSF_LongStr  = 1; // В виде строки

  // Константы для методов учета
  muByOtgr = 0;
  muByPlat = 1;

  // Константы для глобальных номеров в документах системы
  cwGlobal_Razdel          : Word = 10; // для выборки по полю UsersDoc.Razdel, для СФ и записей регистрации

  cwGlobalCodeSF_Sell      : Word = 72; // Счет-фактура наша
  cwGlobalCodeSF_Buy       : Word = 73; // Счет-фактура поставщика
  cwGlobalCodeBK_Sell      : Word = 74; // Запись в книге продаж
  cwGlobalCodeBK_Buy       : Word = 75; // Запись в книге покупок

  // Украина, константы для глобальных номеров в документах системы
  cw_Ukr_GlobalCodeNN_Sell : Word = 76; // Налоговая накладная наша
  cw_Ukr_GlobalCodeNN_Buy  : Word = 77; // Налоговая накладная поставщика
  cw_Ukr_GlobalCodeBK_Sell : Word = 78; // Запись в книге продаж
  cw_Ukr_GlobalCodeBK_Buy  : Word = 79; // Запись в книге покупок

  // Записи книг продаж/покупок, регистрируемые и нерегистрируемые
  cwBK_Reg     : Word = 0;
  cwBK_Not_Reg : Word = 1;

  // Константы для расчета сумм по регистрации
  clcOtgr_Reg                : Word = 1; // Отгрузочный СФ. Суммы незарегистрированности по отгрузке.
  clcOtgr_Storno             : Word = 2; // Отгрузочный СФ. Суммы несторнированности.
  clcOtgr_Oplata             : Word = 3; // Отгрузочный СФ. Суммы оплаты.
  clcOtgr_RegOsnovnSr        : Word = 4; // Отгрузочный СФ. Суммы незарегистрированности по основным средствам.
  clcOtgr_RegOsnovnSr_Storno : Word = 5; // Отгрузочный СФ. Суммы несторнированнос по основным средствам.
                                         // Это суммы, которые уже можно зарегистрировать, они прошли проверку на ввод в эксплуатацию

  // Общая сумма по основным средствам СФ, которую еще нельзя регистрировать.
  // Выделяю в отдельную, чтобы не путать с другими суммами clcOtgr_Not_Reg. Нужна только для установки статуса.
  clcOtgr_Not_Reg_OS_Total : Word = 10;

  clcPlat_RegAvans         : Word = 21;  // Платежный СФ. Суммы незарегистрированности по авансу.
  clcPlat_Storno           : Word = 22;  // Платежный СФ. Суммы несторнированности.
  clcPlat_Oplata           : Word = 23;  // Платежный СФ. Суммы оплаты.
  clcPlat_AvansByCorr      : Word = 24;  // Платежный СФ. Авансовые суммы по корректирующей аванс записи

  clcOtgr_Not_Reg          : Word = 50; // Отгрузочный СФ. Суммы, которые регистрировать не надо.
  clcAvans_NotSelfSp       : Word = 51; // Суммы авансов по несобственным позициям спецификации, попадают в нерегистрируемые записи
  clcOtgr_NotSelfSp        : Word = 52; // Суммы отгрузок по несобственным позициям спецификации, попадают в нерегистрируемые записи
  clcRest_ForPartNDS       : Word = 53; // Нерегистрируемый остаток по раздельному учету
  clcRest_ForPartNDS_OS    : Word = 54; // Нерегистрируемый остаток по раздельному учету ОС
  clcRest_ForDelayReg      : Word = 55; // Отложенная регистрация
  clcRest_ForPartNDS_Self  : Word = 56; // Нерегистрируемый остаток по раздельному учету, режим себестоимость (отдельная нерегистрируемая запись)

  clcAll                   : Word = 100; // Константа для всех сумм. Используется, например, при удалении.
  clcOtgr                  : Word = 101; // Константа для всех сумм по отгрузкам.
  clcPlat                  : Word = 102; // Константа для всех сумм по платежам.

  // Константы для сумм (какая сумма по счету что значит)
  smMaxCount  : Word = 16;    // Количество каждого вида сумм для расчетов, 0..16
  smTotal     : Word = 0;     // Общая сумма
  smNoNDSMain : Word = 1;     // Сумма без НДС по основной ставке
  smNDSMain   : Word = 2;     // НДС по основной ставке
  smNoNDSDop  : Word = 4;     // Сумма без НДС по дополнительной ставке
  smNDSDop    : Word = 5;     // НДС по дополнительной ставке
  smNoNDSExp  : Word = 11;    // Сумма без НДС по экспортной ставке, в базе соответствует поле Sum[23]
  smNDSExp    : Word = 8;     // НДС по экспортной ставке
  smNotNDS    : Word = 7;     // Сумма без НДС
  smDrNal     : Word = 10;    // Сумма других налогов, с которых не берется НДС
  smSumExp    : Word = 12;    // Сумма экспорта, в базе соответствует поле SumIn[1]
  smSumAkz    : Word = 13;    // Сумма экспорта, в базе соответствует поле SumIn[2]
  smTaraNoNDS : Word = 14;    // Сумма тары без НДС (розница), в базе соответствует поле SumIn[3]
  smTaraNDS   : Word = 15;    // Сумма тары с НДС (розница), в базе соответствует поле SumIn[4]
  smNalProd   : Word = 16;    // Сумма налога с продаж, в базе соответствует поле SumIn[11]

  // Константы для задания графиков регистрации
  cwls1_UseGraf          : Word = 1;
  cwls1_IncludeDay       : Word = 2;
  cwls1_NextPeriod       : Word = 4;
  cwls1_GrafMonth        : Word = 8;
  cwls1_GrafKvart        : Word = 16;
  cwls1_GrafYear         : Word = 32;
  cwls1_GrafNow          : Word = 64;
  cwls1_ValidDate        : Word = 128;
  cwls1_BegDataReg       : Word = 256;
  cwls1_GrafMonthPropDay : Word = 512;

  // Константы для поля w_Mode, работа с ОСами, BookZkOS.vip
  cwMode_Usual     : Word = 0;  // Обычный поиск введенного в эксплуатацию количества ОС, учитывая уже зарегистрированное количество.
  cwMode_NotUseReg : Word = 10; // Поиск введенного в эксплуатацию количества ОС, без учета уже зарегистрированного.

  csMessageAboutClosePeriod = 'Закрытый период. Модификация документов запрещена.';

  // Максимальная дата в системе. Не маловато ли?
  Max_Date : Date = Date(1, 1, 2100);

  //---------------------------------------------------------------------------------------------
  // Поле SchFact.TipUser
  //---------------------------------------------------------------------------------------------
  // Сбыт, наши СФ, SchFact.TipUser
  //---------------------------------------------------------------------------------------------

  cwTypeSF_Sell_Otgr               : Word = 7200;  // Счет-фактура, отгрузка (Россия / Беларусь)
  cwTypeSF_Sell_Avans              : Word = 7218;  // Счет-фактура, оплата, предоплата
  cwTypeSF_Sell_Avans_Old          : Word = 7216;  // Счет-фактура, аванс
  cwTypeSF_Sell_LentaKKM           : Word = 7220;  // Ленты ККМ (Россия / Беларусь)
  cwTypeSF_Sell_Dohod              : Word = 7219;  // Счет-фактура, прочие доходы / Платеж, прочие доходы (Беларусь)
  cwTypeSF_Sell_VvExpl             : Word = 7201;  // Счет-фактура (ввод в эксплуатацию)
  cwTypeSF_Sell_SelfNeeds          : Word = 7204;  // Счет-фактура, ТМЦ на собственные нужды
  cwTypeSF_Sell_NalAgent_Imp       : Word = 7228;  // Счет-фактура налогового агента (импортная операция)
  cwTypeSF_Sell_NalAgent_GosIm     : Word = 7229;  // Счет-фактура налогового агента (гос.имущество)
  cwTypeSF_Sell_NalAgent_Bankrot   : Word = 7230;  // Счет-фактура налогового агента (операции с банкротами)
  cwTypeSF_Sell_VozvrAvans         : Word = 7209;  // Возврат оплаты, предоплаты от поставщика
  cwTypeSF_Sell_Bel_FreePlat       : Word = 7215;  // Высвобождение платежа, продажи (Беларусь)
  cwTypeSF_Sell_CorrV              : Word = 7241;  // Корректировочный счет-фактура
  cwTypeSF_Sell_IsprOtgr           : Word = 7242;  // Исправление СФ, отгрузка
  cwTypeSF_Sell_IsprAvans          : Word = 7243;  // Исправление СФ, оплата, предоплата
  cwTypeSF_Sell_IsprCorrV          : Word = 7244;  // Исправление корректировочного СФ
  cwTypeSF_Sell_VozvrMC            : Word = 7208;  // Возврат товара от покупателя
  cwTypeSF_Sell_VozvrMCRozn        : Word = 7210;  // Возврат товара поставщику (розница)
  cwTypeSF_Sell_Peny               : Word = 7245;  // Счет-фактура по штрафам
  cwTypeSF_Sell_IsprPeny           : Word = 7246;  // Исправление СФ по штрафам
  cwTypeSF_Sell_Otgr_FullNach      : Word = 7205;  // Счет-фактура, отгрузка, полное начисление
  cwTypeSF_Sell_ReNDS_Plat         : Word = 7206;  // Счет-фактура, восстановление
  cwTypeSF_Sell_Otgr_Commiss       : Word = 7207;  // Счет-фактура, отгрузка, комиссия
  cwTypeSF_Sell_Avans_Commiss      : Word = 7211;  // Счет-фактура, оплата, предоплата, комиссия
  cwTypeSF_Sell_Consumer           : Word = 7212;  // Счет-фактура заказчика
  cwTypeSF_Sell_Consumer_Avans     : Word = 7214;  // Счет-фактура заказчика, аванс
  cwTypeSF_Sell_Return             : Word = 7213;  // Счет-фактура, отгрузка, возврат
  cwTypeSF_Sell_CorrV_Consumer     : Word = 7224;  // Корректировочный счет-фактура заказчика
  cwTypeSF_Sell_Ispr_Consumer      : Word = 7225;  // Исправление СФ заказчика
  cwTypeSF_Sell_IsprCorrV_Consumer : Word = 7226;  // Исправление корректировочного СФ заказчика
  cwTypeSF_Sell_Consumer_Sv        : Word = 7222;  // Сводный счет-фактура заказчика
  cwTypeSF_Sell_CMP                : Word = 7235;  // СМР на собственные нужды
  cwTypeSF_Sell_FreeOtgr           : Word = 7236;  // Безвозмездная отгрузка
  cwTypeSF_Sell_Summa              : Word = 7237;  // Передача, учет по стоимости с налогами
  cwTypeSF_Sell_Summa_Avans        : Word = 7238;  // Предоплата передачи, учет по стоимости с налогами
  cwTypeSF_Sell_Physical           : Word = 7239;  // Счет-фактура по физическим лицам
  cwTypeSF_Sell_Consumer_Build     : Word = 7247;  // Счет-фактура заказчика-застройщика
  cwTypeSF_Sell_Physical_Avans     : Word = 7248;  // Счет-фактура, оплата, предоплата по физическим лицам

  //---------------------------------------------------------------------------------------------
  // Снабжение, СФ поставщика, SchFact.TipUser
  //---------------------------------------------------------------------------------------------

  cwTypeSF_Buy_Otgr                 : Word = 7300;  // Счет-фактура поставщика, отгрузка (Россия / Беларусь)
  cwTypeSF_Buy_Avans                : Word = 7324;  // Счет-фактура, предоплата поставщику
  cwTypeSF_Buy_ByPribyl             : Word = 7302;  // Счет-фактура поставщика (за счет прибыли)
  cwTypeSF_Buy_Plat_PrRash          : Word = 7319;  // Платеж, прочие расходы
  cwTypeSF_Buy_Plat_PrRash_NotJourn : Word = 7320;  // Платеж, прочие расходы (не учитывается в журнале)
  cwTypeSF_Buy_GTD                  : Word = 7331;  // ГТД
  cwTypeSF_Buy_Bel_Compens          : Word = 7333;  // Возмещение затрат (Беларусь)
  cwTypeSF_Buy_Bel_PayCompens       : Word = 7334;  // Возмещение затрат, оплата (Беларусь)
  cwTypeSF_Buy_VozvrAvans           : Word = 7309;  // Возврат оплаты, предоплаты покупателю
  cwTypeSF_Buy_Bel_FreePlat         : Word = 7315;  // Высвобождение платежа, покупки (Беларусь)
  cwTypeSF_Buy_BankUsl              : Word = 7335;  // Счет-фактура по банковским услугам
  cwTypeSF_Buy_Bel_PlatCalcStavka   : Word = 7318;  // Платеж по расчетной ставке  (Беларусь)
  cwTypeSF_Buy_Bel_OtgrCalcStavka   : Word = 7304;  // Накладная поставщика по расчетной ставке (Беларусь)
  cwTypeSF_Buy_Bel_FutureRash       : Word = 7329;  // Расходы будущих периодов (Беларусь)
  cwTypeSF_Buy_CorrV                : Word = 7341;  // Корректировочный счет-фактура поставщика
  cwTypeSF_Buy_VozvrMC              : Word = 7308;  // Возврат товара поставщику
  cwTypeSF_Buy_IsprOtgr             : Word = 7342;  // Исправление СФ поставщика, отгрузка
  cwTypeSF_Buy_IsprAvans            : Word = 7343;  // Исправление СФ поставщика, предоплата
  cwTypeSF_Buy_IsprCorrV            : Word = 7344;  // Исправление корректировочного СФ поставщика
  cwTypeSF_Buy_Otgr_FullNach        : Word = 7305;  // Счет-фактура поставщика, полное начисление
  cwTypeSF_Buy_Principal            : Word = 7345;  // СФ принципала
  cwTypeSF_Buy_Otgr_Commiss         : Word = 7306;  // Счет-фактура поставщика, комиссия
  cwTypeSF_Buy_Avans_Commiss        : Word = 7307;  // Счет-фактура, предоплата поставщику, комиссия
  cwTypeSF_Buy_Mediator             : Word = 7311;  // Счет-фактура посредника
  cwTypeSF_Buy_Mediator_Avans       : Word = 7313;  // Счет-фактура посредника, аванс
  cwTypeSF_Buy_Return               : Word = 7312;  // Счет-фактура поставщика, возврат
  cwTypeSF_Buy_CorrV_Mediator       : Word = 7314;  // Корректировочный счет-фактура посредника
  cwTypeSF_Buy_Ispr_Mediator        : Word = 7316;  // Исправление СФ посредника
  cwTypeSF_Buy_IsprCorrV_Mediator   : Word = 7321;  // Исправление корректировочного СФ посредника
  cwTypeSF_Buy_Mediator_Sv          : Word = 7325;  // Сводный счет-фактура посредника
  cwTypeSF_Buy_Otgr_Mediator_Sv     : Word = 7326;  // Сводный счет-фактура поставщика, от посредника
  cwTypeSF_Buy_ReOrg                : Word = 7337;  // Реорганизация (учет у правопреемника)
  cwTypeSF_Buy_FreeOtgr             : Word = 7338;  // Безвозмездное получение
  cwTypeSF_Buy_Summa                : Word = 7339;  // Приобретение, учет по стоимости с налогами
  cwTypeSF_Buy_Summa_Avans          : Word = 7346;  // Предоплата приобретения, учет по стоимости с налогами
  cwTypeSF_Buy_Builder              : Word = 7347;  // Счет-фактура застройщика
  cwTypeSF_Buy_Physical             : Word = 7348;  // Счет-фактура поставщика по физическим лицам
  cwTypeSF_Buy_Mediator_Build       : Word = 7349;  // Счет-фактура посредника-застройщика

  //---------------------------------------------------------------------------------------------
  // Поле BookPrZk.TipUser
  //---------------------------------------------------------------------------------------------
  // Сбыт, книга продаж, BookPrZk.TipUser
  //---------------------------------------------------------------------------------------------

  cwTypeBK_Sell_OtgrRegistr             : Word = 7402;  // Регистрация СФ (учет по отгрузке) / Регистрация накладной (учет по отгрузке), Беларусь
  cwTypeBK_Sell_RegAvans                : Word = 7406;  // Регистрация оплаты, предоплаты
  cwTypeBK_Sell_StornoAvansInMomentOtgr : Word = 7403;  // Сторно по авансу в момент отгрузки
  cwTypeBK_Sell_RegAvansInMomentOtgr    : Word = 7405;  // Регистрация аванса поставщику в момент отгрузки
  cwTypeBK_Sell_RegExportConfirmAfter   : Word = 7432;  // Регистрация позднего подтверждения реального экспорта
  cwTypeBK_Sell_Correcting              : Word = 7441;  // Корректирующая запись (книга продаж)
  cwTypeBK_Sell_CorrStorno              : Word = 7442;  // Корректирующая запись - сторно (книга продаж)
  cwTypeBK_Sell_CorrAvans               : Word = 7443;  // Корректирующая оплату, предоплату запись
  cwTypeBK_Sell_CorrPeny                : Word = 7444;  // Корректирующая запись по штрафам
  cwTypeBK_Sell_CorrNotConfirm          : Word = 7445;  // Регистрация неподтверждения реального экспорта (книга продаж)
  cwTypeBK_Sell_CorrExportConfirmAfter  : Word = 7446;  // Корректирующая запись, позднее подтверждение реального экспорта
  cwTypeBK_Sell_RegistrByPlat           : Word = 7407;  // Регистрация СФ по платежу
  cwTypeBK_Sell_ReNDS_Hand              : Word = 7450;  // Восстановление НДС
  cwTypeBK_Sell_RegAvans_Old            : Word = 7401;  // Регистрация аванса, дохода
  cwTypeBK_Sell_RestNDS                 : Word = 7422;  // Нерегистрируемый остаток по раздельному учету (книга продаж)
  cwTypeBK_Sell_RegVozvrAvans           : Word = 7414;  // Регистрация возврата оплаты, предоплаты
  cwTypeBK_Sell_RegSumRazn_MUO          : Word = 7424;  // Регистрация суммовой разницы (отгрузка)
  cwTypeBK_Sell_SumRazn_NotReg          : Word = 7427;  // Суммовая разница (нерегистрируемая, МУО)
  cwTypeBK_Sell_NotRegMUO               : Word = 7420;  // Оплата СФ (нерегистрируемая, МУО)
  cwTypeBK_Sell_CorrV_Plus              : Word = 7428;  // Корректировочная запись, увеличение реализации
  cwTypeBK_Sell_CorrV_Minus             : Word = 7429;  // Корректировочная запись, уменьшение закупки
  cwTypeBK_Sell_NotReg_Avans            : Word = 7408;  // Нерегистрируемая оплата, предоплата
  cwTypeBK_Sell_RegOtgr_Ispr            : Word = 7412;  // Регистрация СФ (исправление)
  cwTypeBK_Sell_RegAvans_Ispr           : Word = 7413;  // Регистрация оплаты, предоплаты (исправление)
  cwTypeBK_Sell_Peny                    : Word = 7415;  // Регистрация штрафов
  cwTypeBK_Sell_Peny_Ispr               : Word = 7416;  // Регистрация штрафов (исправление)
  cwTypeBK_Sell_OtgrByPlat              : Word = 7404;  // Регистрация СФ (учет по платежу) / Регистрация накладной (учет по платежу), Беларусь
  cwTypeBK_Sell_ReNDS_Plat              : Word = 7417;  // Восстановление НДС по платежу
  cwTypeBK_Sell_Reg_NalAgent            : Word = 7418;  // Регистрация СФ налогового агента
  cwTypeBK_Sell_Return                  : Word = 7430;  // Регистрация СФ, возврат
  cwTypeBK_Sell_CMP                     : Word = 7435;  // Регистрация СФ СМР на собственные нужды
  cwTypeBK_Sell_FreeOtgr                : Word = 7436;  // Регистрация СФ Безвозмездная отгрузка
  cwTypeBK_Sell_Summa                   : Word = 7437;  // Регистрация СФ Передача, учет по стоимости с налогами
  cwTypeBK_Sell_Summa_Avans             : Word = 7438;  // Регистрация СФ Предоплата передачи, учет по стоимости с налогами
  cwTypeBK_Sell_Physical                : Word = 7439;  // Регистрация СФ по физическим лицам
  cwTypeBK_Sell_Commiss                 : Word = 7447;  // Регистрация СФ, комиссия
  cwTypeBK_Sell_OtgrExport              : Word = 7448;  // Регистрация СФ, экспорт

  //---------------------------------------------------------------------------------------------
  // Снабжение, книга покупок, BookPrZk.TipUser
  //---------------------------------------------------------------------------------------------

  cwTypeBK_Buy_OtgrRegistr             : Word = 7504;  // Регистрация СФ поставщика / Регистрация накладной поставщика (Беларусь)
  cwTypeBK_Buy_RegAvansInMomentOtgr    : Word = 7503;  // Регистрация аванса в момент отгрузки
  cwTypeBK_Buy_RegAvans                : Word = 7515;  // Регистрация предоплаты поставщика
  cwTypeBK_Buy_NotRegMUO               : Word = 7520;  // Оплата СФ поставщика (нерегистрируемая, МУО)
  cwTypeBK_Buy_StornoAvansInMomentOtgr : Word = 7516;  // Сторно по авансу поставщику в момент отгрузки
  cwTypeBK_Buy_RashByObject            : Word = 7507;  // Вычет расходов на объект строительства  (Россия / Беларусь)
  cwTypeBK_Buy_OtpuskByObject          : Word = 7517;  // Вычет по данным отпуска на объект строительства (Россия / Беларусь)
  cwTypeBK_Buy_ByObjectForSelf         : Word = 7506;  // Вычет по строительству для собственного потребления
  cwTypeBK_Buy_StornoVozvrAvans        : Word = 7509;  // Сторно по возврату аванса (книга покупок)
  cwTypeBK_Buy_StornoByPribyl          : Word = 7512;  // Сторно СФ поставщика за счет прибыли
  cwTypeBK_Buy_StornoVozvrAvansDohod   : Word = 7513;  // Сторно по возврату аванса, дохода (книга покупок)
  cwTypeBK_Buy_DelayExport             : Word = 7521;  // Отложенная регистрация по экспортным отгрузкам (нерегистрируемая)
  cwTypeBK_Buy_RestNDS                 : Word = 7522;  // Нерегистрируемый остаток по раздельному учету (книга покупок)
  cwTypeBK_Buy_RestNDS_OS              : Word = 7524;  // Нерегистрируемый остаток по раздельному учету ОС (книга покупок)
  cwTypeBK_Buy_RestNDS_Self            : Word = 7554;  // Нерегистрируемый остаток по раздельному учету, себестоимость (книга покупок)
  cwTypeBK_Buy_DelayPlat               : Word = 7551;  // Отложенная регистрация по платежам (нерегистрируемая)
  cwTypeBK_Buy_ReNDS                   : Word = 7508;  // Восстановление НДС (вклад в уставной капитал), только суммы НДС заносятся
  cwTypeBK_Buy_ReNDS_Plat              : Word = 7518;  // Восстановление НДС по платежу (книга покупок), основная, стандартная запись
  cwTypeBK_Buy_ReNDS_Otgr              : Word = 7535;  // Восстановление НДС по отгрузке (книга покупок), основная, стандартная запись
  cwTypeBK_Buy_Correcting              : Word = 7541;  // Корректирующая запись (книга покупок)
  cwTypeBK_Buy_CorrAvans               : Word = 7549;  // Корректирующая предоплату поставщику запись
  cwTypeBK_Buy_CorrStorno              : Word = 7542;  // Корректирующая запись - сторно (книга покупок)
  cwTypeBK_Buy_CorrNDSBack             : Word = 7543;  // Корректирующая запись, возврат НДС (книга покупок)
  cwTypeBK_Buy_NDSBack                 : Word = 7544;  // Регистрация возврата НДС
  cwTypeBK_Buy_CorrNotConfirm          : Word = 7545;  // Регистрация неподтверждения реального экспорта (книга покупок)
  cwTypeBK_Buy_RegRash                 : Word = 7501;  // Регистрация расхода
  cwTypeBK_Buy_RegVozvrPlat            : Word = 7511;  // Регистрация возврата платежа (без возврата МЦ/услуг)
  cwTypeBK_Buy_RegVozvrAvans           : Word = 7514;  // Регистрация возврата оплаты, предоплаты
  cwTypeBK_Buy_RegCommissVoznagr       : Word = 7530;  // Регистрация комиссионного вознаграждения
  cwTypeBK_Buy_Bel_Reg_MUO_Compens     : Word = 7531;  // Регистрация возмещения затрат (учет по отгрузке), Беларусь
  cwTypeBK_Buy_Bel_Reg_MUP_Compens     : Word = 7532;  // Регистрация возмещения затрат (учет по оплате), Беларусь
  cwTypeBK_Buy_CorrV_Plus              : Word = 7528;  // Корректировочная запись поставщика, увеличение закупки
  cwTypeBK_Buy_CorrV_Minus             : Word = 7529;  // Корректировочная запись поставщика, уменьшение реализации
  cwTypeBK_Buy_RegOtgr_Ispr            : Word = 7519;  // Регистрация СФ поставщика (исправление)
  cwTypeBK_Buy_RegAvans_Ispr           : Word = 7527;  // Регистрация предоплаты  поставщику (исправление)
  cwTypeBK_Buy_NalogSub                : Word = 7534;  // Налоговый вычет
  cwTypeBK_Buy_RegGTD                  : Word = 7505;  // Регистрация ГТД в книге покупок
  cwTypeBK_Buy_Return                  : Word = 7536;  // Регистрация СФ поставщика, возврат
  cwTypeBK_Buy_ReOrg                   : Word = 7537;  // Регистрация СФ Реорганизация (учет у правопреемника)
  cwTypeBK_Buy_FreeOtgr                : Word = 7538;  // Регистрация СФ Безвозмездное получение
  cwTypeBK_Buy_Summa                   : Word = 7539;  // Регистрация СФ Приобретение, учет по стоимости с налогами
  cwTypeBK_Buy_Summa_Avans             : Word = 7546;  // Регистрация СФ Предоплата приобретения, учет по стоимости с налогами
  cwTypeBK_Buy_Builder                 : Word = 7547;  // Регистрация СФ застройщика
  cwTypeBK_Buy_Physical                : Word = 7548;  // Регистрация СФ поставщика по физическим лицам
  cwTypeBK_Buy_Commiss                 : Word = 7550;  // Регистрация СФ, комиссия
  cwTypeBK_Buy_Export_Out              : Word = 7552;  // Регистрация СФ поставщика на внешний рынок
  cwTypeBK_Buy_Correcting_NotReg       : Word = 7553;  // Нерегистрируемая корректирующая запись (книга покупок)
  cwTypeBK_Buy_DelayGTD                : Word = 7555;  // Отложенная регистрация ГТД
  cwTypeBK_Buy_OtgrRegistr_Mediator    : Word = 7556;  // Регистрация СФ поставщика, от посредника

  //---------------------------------------------------------------------------------------------
  // Поле BookPrZk.SubTip
  //---------------------------------------------------------------------------------------------

  cwTotal_TypeBK_RegAvans          : Word =    1;  // Регистрация аванса, суммовой разницы, расхода, комиссионного вознаграждения
  cwTotal_TypeBK_AvansInMomentOtgr : Word =    3;  // Регистрация аванса в момент отгрузки и Сторно по авансу в момент отгрузки
  cwTotal_TypeBK_RegVozvratAvans   : Word =    9;  // Регистрация возврата оплаты, предоплаты (аванса)
  cwTotal_TypeBK_RegOtgr           : Word =    2;  // Регистрация СФ (учет по отгрузке).
  cwTotal_TypeBK_RegOtgr_ByPlat    : Word =    4;  // Регистрация СФ (учет по платежу). (Используется до сих пор, т.к. ранее в снабжение регистрация отгрузок была только по платежу.)
  cwTotal_TypeBK_RegGTD            : Word =    5;  // Регистрация ГТД в книге покупок
  cwTotal_TypeBK_Correcting        : Word =   32;  // Корректирующая запись
  cwTotal_TypeBK_RegVozvratPlat    : Word =   11;  // Регистрация возврата платежа (без возврата МЦ/услуг)
  cwTotal_TypeBK_StornoVozvratMC   : Word =   10;  // Сторно по возврату товара
  cwTotal_TypeBK_OplataSF_NotReg   : Word =   20;  // Оплата СФ (нерегистрируемая, МУО)
  cwTotal_TypeBK_LinkVozvratOtgr   : Word =   26;  // Связь возврата товара с СФ (МУП)
  cwTotal_TypeBK_LinkVozvratPlat   : Word =   25;  // Связь возврата платежа с исходным
  cwTotal_TypeBK_NotReg            : Word =   21;  // Отложенная регистрация по экспортным отгрузкам (нерегистрируемая) и Нерегистрируемый остаток по раздельному учету
  cwTotal_TypeBK_RegCorrSF         : Word =   18;  // Регистрация корректирующего СФ, старый функционал, сейчас не используется
  cwTotal_TypeBK_HandCorr          : Word =    0;  // Ручная корректировка
  cwTotal_TypeBK_MinusObj          : Word =    7;  // Вычет по данным отпуска на объект строительства
  cwTotal_TypeBK_MinusSelfUse      : Word =    6;  // Вычет по строительству для собственного потребления
  cwTotal_TypeBK_NotReg_Avans      : Word =   17;  // Нерегистрируемая оплата, предоплата

  bitSubTipBK_NotReg : Word = 16;  // Бит для определения нерегистрируемого типа записи

  //---------------------------------------------------------------------------------------------
  // Поле SchFact.SubTip
  // Формирование типа.
  //  0 - отгрузка - 0.
  //  8 - возврат отгрузки
  // 16 - платеж, аванс
  // 17 - 16 + бит 1, оплата СФ по отгрузке (метод МУП)
  // 19 - 16 + бит 3 (1+2), платеж без последующего сторно, подлежит регистрации на всю сумму
  // 27 - 16 + бит 8 + бит 3 (1+2), возврат платежа
  // бит 1 - bitSubTipSF_NotStorno
  // бит 3 = bitSubTipSF_TotalReg_NotStorno
  // бит 8 = bitSubTip_Vozvrat
  //---------------------------------------------------------------------------------------------

  bitSubTipSF_Plat               : Word = 16;  // Бит для определения платежного СФ
  bitSubTipSF_NotStorno          : Word =  1;  // Бит для определения платежного СФ без последующего сторно
  bitSubTipSF_TotalReg_NotStorno : Word =  3;  // Бит для определения платежного СФ с регистрацией на всю сумму без последующего сторно
  bitSubTipSF_TotalReg           : Word =  2;  // Бит для определения (bitSubTipSF_TotalReg_NotStorno - bitSubTipSF_NotStorno) (Для РБ зачем-то используется)

  cwTotal_TypeSF_Otgr         : Word =  0;  // Отгрузочный СФ
  cwTotal_TypeSF_Avans        : Word = 16;  // Авансовый СФ
  cwTotal_TypeSF_SummRazn     : Word = 23;  // Суммовая разница
  cwTotal_TypeSF_Vozvrat_MC   : Word =  8;  // Возврат товара
  cwTotal_TypeSF_Vozvrat_Plat : Word = 27;  // Возврат платежей
  cwTotal_TypeSF_Kazah        : Word = 32;  // Счет-фактура для Казахстана
  cwTotal_TypeSF_Correct      : Word = 64;  // Корректирующий счет-фактура, текущим законодательством не используется
  cwTotal_TypeSF_Plat         : Word = 17;  // Платеж по счету-фактуре, Оплата СФ поставщика
  cwTotal_TypeSF_PlatNoStorno : Word = 19;  // Платеж, прочие расходы и т.п.

  //---------------------------------------------------------------------------------------------
  // Поля SchFact.SubTip и BookPrZk.SubTip, общие константы
  //---------------------------------------------------------------------------------------------

  bitSubTip_Vozvrat : Word = 8;  // Бит для определения возвратов (СФ и записи регистрации)

  // Название атрибута 'Коэффициент льготного НДС' для регистрации СФ Беларуси по льготному НДС, снабжение
  sAttrNameBenefitsKoef = 'Коэффициент льготного НДС';

  // Атрибут для каталога организаций, по умолчанию - пустая строка = да.
  // Устанавливается 'нет' для иностранных предприятий, которые не платят налоги на территории страны
  sAttrKatOrg_Resident  = 'Резидент';
  sNotResident          = 'НЕТ';

  // Код стран
  sKod_Russ = '643';
  sKod_Bel  = '112';

  // Резервирование номеров. Разделитель по умолчанию между основной и дополнительной частью номера.
  Slash_Default = '\';

  csSymbol_NalAkt_SF : String = 'Н'; // Символ, с которого начинается номер налогового акта в снабжении

  // Беларусь, метод по оплате, сбыт, регистрация суммовых разниц
  cwSumRaznica_ForOtgr = 1;
  cwSumRaznica_ForPlat = 2;

  // Статус "начисление" сопроводительных документов. Для отслеживания нюансов формирования и регистрации СФ по таким сопрдокам.
  cwStatus_KS_Nachisl : Word = 5;

  // Режим создания СФ по корректирующему сопрдоку
  cwModeKN_Otgr      : Word = 0; // обычный СФ отгрузка
  cwModeKN_Ispr      : Word = 1; // СФ исправление
  cwModeKN_CorrV     : Word = 2; // корректировочный СФ
  cwModeKN_IsprCorrV : Word = 3; // исправление корректировочного СФ

  // Разделитель для номеров СФ-исправлений, вида 000111_001.
  Separator_NumIspr = '_';

  // Константы для UsersDoc.Flags
  clUD_NumShablon : LongInt = 1; // Признак нумерации типа по шаблону
  clUD_Ispr       : LongInt = 2; // Признак исправительного типа
  clUD_PickOppos  : LongInt = 4; // Выбор в СФ противоположного направления

  // Режимы (aMode) для функции Get_List_SF_Src_CorrV - поиска исходных СФ сводного корректировочного СФ
  cw_PrintOneSF : Word =   1;  // Печать первого СФ, по умолчанию
  cw_PrintAllSF : Word =   2;  // Печать всех СФ

  cw_PrintSF    : Word =  32;  // Печать СФ
  cw_PrintBK    : Word =  64;  // Печать книг
  cw_PrintJourn : Word = 128;  // Печать журнала

  cw_PrintZero  : Word = 1024; // Печатать начальные нули в номерах
  cw_Zak2014    : Word = 2048; // Законодательство 2014г., печатается сначала номер, потом дата

  cs_Razdelit_Num : String = ', '; // Разделитель для номеров исходных СФ
  cb_Razdelit_Len : Byte = 2;      // Длина разделителя, чтобы каждый раз не вычислять

  // Печать, поиск информации об оплате, номеров и дат платежей
  cw_FindByDO : Word = 4;   // информации по ДО, если нет по распределению и сторно
                            // 1-2 - cwDirect_Sell/Buy, печать книги продаж/покупок

  // Const для поля DocInfo.InfoType.
  cw_NumSF : Word = 1; // использование записи DocInfo для хранения ссылки на пользователя, который ищет новый номер СФ с использованием семафоров

  // коды ошибок, ForPrint.vip
  cresOK            : Word =  0;
  cresNoFindSF      : Word = 10;
  cresNoFind_Src_SF : Word = 11;
  // Источник кода операции
  cwCodeFromPrim    : Word = 1;
  cwCodeFromBK      : Word = 2;
  cwCodeFromSF      : Word = 3;
  cwCodeForVozvrat  : Word = 4;
  // Поиск кода операции в классификаторе первичного документа
  cwGetKodKS : Word = 1;  // сопрдока
  cwGetKodPl : Word = 2;  // платежа

  // константы для поиска списка грузо для сводных посреднических СФ
  cwSv_GruzTo   : Word = 1;
  cwSv_GruzFrom : Word = 2;
  cwSv_GruzAll  : Word = 0;

  csCodeSrcSF    : String = 'исх.СФ';         // Код операции из исходного СФ
  csMarkerLinkSF : String = 'PickMediators';  // Наименование маркера для хранения выбранных СФ при связи СФ посредника/заказчика

  // Const для кода операции, Беларусь
  cb_KodOp_Bel        : Byte = 1;   // страна контрагента - Беларусь, код 112
  cb_KodOp_NDS_NalOrg : Byte = 2;   // взимание НДС через налоговые органы
  cb_KodOp_NDS_TamOrg : Byte = 3;   // взимание НДС через таможенные органы
  cb_KodOp_NeverNDS   : Byte = 4;   // контрагенты не состоят на учете в налоговых органах РБ
  cb_KodOp_Vozvr      : Byte = 5;   // регистрация возвратов

  // Фильтрация СФ по типам
  cwST_All            : Word = 100;
  cwST_Concr          : Word = 101;
  cwTU_Consumer_Otgr  : Word = 91;
  cwTU_Consumer_Avans : Word = 92;
  cwTU_Mediator_Otgr  : Word = 93;
  cwTU_Mediator_Avans : Word = 94;

  // Пользовательские типы
  cwUserType_Min : Word = 10000;

  cwGroupTipsSf_Standard : Word = 0;
  cwGroupTipsSf_CorrV    : Word = 1;
  cwGroupTipsSf_Ispr     : Word = 2;
  cwGroupTipsSf_IsprCorr : Word = 3;
end;


#define SFTYPE_SUMDIF    if( vSF.Dir = cwDirect_Sell, 7223, 7323)
#define REGSFTYPE_SUMDIF if( vSF.Dir = cwDirect_Sell, 7423, 7523)

#define SFTYPE_KOMISS if( vSF.Dir = cwDirect_Buy, 7330, 0)
#define BKTYPE_KOMISS if( vSF.Dir = cwDirect_Buy, 7530, 0)

#define SFTYPE_Correct if (vSf.TuneCountry <> ccRus, 0, if (vSF.Dir = cwDirect_Sell, 7240, 7340))
#define BKTYPE_Correct if (vSf.TuneCountry <> ccRus, 0, if (vSF.Dir = cwDirect_Sell, 7440, 7540))


// Вычисление строки со статусом СФ
// aTypeRes = stSF_ShortStr - краткий вариант, одна буква
//            stSF_LongStr  - полный вариант, строка с пояснением вида статуса
function GetStatusStr(aStatus, aTypeRes : Word) : String;
{
  Result := '';

  case aStatus of
    stSF_Corrected       : Result := if (aTypeRes = stSF_ShortStr, 'К', 'Скорректирован');
    stSF_Registered      : Result := if (aTypeRes = stSF_ShortStr, 'З', 'Зарегистрирован');
    stSF_Not_Paid_Otgr   : Result := if (aTypeRes = stSF_ShortStr, 'О', 'Не оплачен');
    stSF_Not_Storno_Plat : Result := if (aTypeRes = stSF_ShortStr, 'С', 'Не все сторно');
  else
                           Result := if (aTypeRes = stSF_ShortStr, 'Н', 'Не зарегистрирован');
  end;
}

// Проверка, является ли СФ налоговым агентом
function Is_NalAgent(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_NalAgent_Imp    ) or
             (aTipUser = cwTypeSF_Sell_NalAgent_GosIm  ) or
             (aTipUser = cwTypeSF_Sell_NalAgent_Bankrot));
}

// Проверка, является ли СФ корректировочным
function Is_CorrV_SF(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_CorrV             ) or (aTipUser = cwTypeSF_Buy_CorrV              ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV         ) or (aTipUser = cwTypeSF_Buy_IsprCorrV          ) or
             (aTipUser = cwTypeSF_Sell_CorrV_Consumer    ) or (aTipUser = cwTypeSF_Buy_CorrV_Mediator     ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV_Consumer) or (aTipUser = cwTypeSF_Buy_IsprCorrV_Mediator));
}

// Проверка, является ли запись регистрации корректировочной
function Is_CorrV_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_CorrV_Plus) or (aTipUser = cwTypeBK_Sell_CorrV_Minus) or
             (aTipUser = cwTypeBK_Buy_CorrV_Plus ) or (aTipUser = cwTypeBK_Buy_CorrV_Minus ));
}

// Проверка, является ли СФ исправлением
function Is_IsprSF(aTipUser : Word; aFlags : Longint) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_IsprOtgr          ) or (aTipUser = cwTypeSF_Sell_IsprAvans        ) or
             (aTipUser = cwTypeSF_Buy_IsprOtgr           ) or (aTipUser = cwTypeSF_Buy_IsprAvans         ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV         ) or (aTipUser = cwTypeSF_Buy_IsprCorrV         ) or
             (aTipUser = cwTypeSF_Sell_IsprPeny          ) or
             (aTipUser = cwTypeSF_Sell_Ispr_Consumer     ) or (aTipUser = cwTypeSF_Buy_Ispr_Mediator     ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV_Consumer) or (aTipUser = cwTypeSF_Buy_IsprCorrV_Mediator) or
             ((aFlags and clUD_Ispr) <> 0)); // Пользовательские СФ-исправления
}

// Проверка, является ли СФ исправлением с неотрицательными суммами
function Is_IsprSF_PlusSum(aTipUser : Word; aFlags : Longint) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_IsprOtgr) or (aTipUser = cwTypeSF_Sell_IsprAvans) or
             (aTipUser = cwTypeSF_Buy_IsprOtgr ) or (aTipUser = cwTypeSF_Buy_IsprAvans ) or
             (aTipUser = cwTypeSF_Sell_IsprPeny) or
             ((aFlags and clUD_Ispr) <> 0)); // Пользовательские СФ-исправления
}

// Проверка, является ли запись регистрации исправительной
function Is_IsprBK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_RegOtgr_Ispr ) or (aTipUser = cwTypeBK_Buy_RegOtgr_Ispr ) or
             (aTipUser = cwTypeBK_Sell_RegAvans_Ispr) or (aTipUser = cwTypeBK_Buy_RegAvans_Ispr) or
             (aTipUser = cwTypeBK_Sell_Peny_Ispr    ));
}

// Проверка, является ли запись регистрации исправительной, по отгрузке
function Is_IsprBK_Otgr(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_RegOtgr_Ispr) or (aTipUser = cwTypeBK_Buy_RegOtgr_Ispr));
}

// Проверка, является ли СФ исправлением корректировки
function Is_IsprCorrV_SF(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_IsprCorrV         ) or (aTipUser = cwTypeSF_Buy_IsprCorrV         ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV_Consumer) or (aTipUser = cwTypeSF_Buy_IsprCorrV_Mediator));
}

// Проверка, является ли запись регистрации стандартной регистрацией отгрузки
function Is_RegOtgr_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_OtgrRegistr) or (aTipUser = cwTypeBK_Buy_OtgrRegistr));
}

// Проверка, является ли запись регистрации стандартной регистрацией отгрузки. Регистрация на внешний и внутренний рынки.
function Is_RegOtgr_Export_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_OtgrRegistr) or (aTipUser = cwTypeBK_Buy_OtgrRegistr) or
             (aTipUser = cwTypeBK_Buy_Export_Out));
}

// Проверка, является ли СФ штрафом
function Is_Peny_SF(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Peny) or (aTipUser = cwTypeSF_Sell_IsprPeny));
}

// Проверка, является ли запись регистрацией штрафов
function Is_Peny_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_Peny) or (aTipUser = cwTypeBK_Sell_Peny_Ispr));
}

// Проверка, является ли запись аннулируемой при исправлениях
function Is_Annul_BK(aTipUser, aSubTip : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_OtgrRegistr) or (aTipUser = cwTypeBK_Buy_OtgrRegistr) or
             (aTipUser = cwTypeBK_Sell_RegAvans   ) or (aTipUser = cwTypeBK_Buy_RegAvans   ) or
             (aTipUser = cwTypeBK_Sell_Correcting ) or (aTipUser = cwTypeBK_Buy_Correcting ) or
             (aTipUser = cwTypeBK_Sell_CorrAvans  ) or (aTipUser = cwTypeBK_Buy_CorrAvans  ) or
             (aTipUser = cwTypeBK_Sell_Peny       ) or (aTipUser = cwTypeBK_Sell_Physical));

  // Проверка на пользовательские типы. По полю SubTip проверку не провожу, т.к. много лишних записей могут попасть.
  if ((not Result) and (aTipUser >= cwUserType_Min))
    Result := ((aSubTip = cwTotal_TypeBK_RegOtgr) or (aSubTip = cwTotal_TypeBK_RegOtgr_ByPlat) or
               (aSubTip = cwTotal_TypeBK_RegAvans));
}

// Проверка, является ли запись восстановлением НДС по платежу
function Is_ReNDS_Plat_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Buy_ReNDS_Plat) or (aTipUser = cwTypeBK_Sell_ReNDS_Plat));
}

// Проверка на тип СФ заказчика
function Is_Consumer(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Consumer          ) or (aTipUser = cwTypeSF_Sell_Consumer_Avans) or
             (aTipUser = cwTypeSF_Sell_CorrV_Consumer    ) or (aTipUser = cwTypeSF_Sell_Ispr_Consumer ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV_Consumer) or (aTipUser = cwTypeSF_Sell_Consumer_Sv   ) or
             (aTipUser = cwTypeSF_Sell_Consumer_Build));
}

// Проверка на тип СФ посредника
function Is_Mediator(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Buy_Mediator          ) or (aTipUser = cwTypeSF_Buy_Mediator_Avans) or
             (aTipUser = cwTypeSF_Buy_CorrV_Mediator    ) or (aTipUser = cwTypeSF_Buy_Ispr_Mediator ) or
             (aTipUser = cwTypeSF_Buy_IsprCorrV_Mediator) or (aTipUser = cwTypeSF_Buy_Mediator_Sv)    or
             (aTipUser = cwTypeSF_Buy_Mediator_Build));
}


// Проверка на сводный тип СФ посредника/заказчика
function Is_Sv_MedCons(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Consumer_Sv) or (aTipUser = cwTypeSF_Buy_Mediator_Sv));
}

// Проверка на авансовый посреднический тип СФ
function Is_MedCons_Avans(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Consumer_Avans) or (aTipUser = cwTypeSF_Buy_Mediator_Avans));
}

// Проверка на отгрузочный посреднический тип СФ
function Is_MedCons_Otgr(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Consumer)      or (aTipUser = cwTypeSF_Sell_CorrV_Consumer)     or
             (aTipUser = cwTypeSF_Sell_Ispr_Consumer) or (aTipUser = cwTypeSF_Sell_IsprCorrV_Consumer) or
             (aTipUser = cwTypeSF_Sell_Consumer_Sv)   or (aTipUser = cwTypeSF_Sell_Consumer_Build)     or
             (aTipUser = cwTypeSF_Buy_Mediator)       or (aTipUser = cwTypeSF_Buy_CorrV_Mediator)      or
             (aTipUser = cwTypeSF_Buy_Ispr_Mediator)  or (aTipUser = cwTypeSF_Buy_IsprCorrV_Mediator)  or
             (aTipUser = cwTypeSF_Buy_Mediator_Sv)    or (aTipUser = cwTypeSF_Buy_Mediator_Build));
}

// Проверка на тип СФ заказчика, отгрузка
function Is_Consumer_Otgr(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Consumer          ) or
             (aTipUser = cwTypeSF_Sell_CorrV_Consumer    ) or (aTipUser = cwTypeSF_Sell_Ispr_Consumer ) or
             (aTipUser = cwTypeSF_Sell_IsprCorrV_Consumer) or (aTipUser = cwTypeSF_Sell_Consumer_Sv   ) or
             (aTipUser = cwTypeSF_Sell_Consumer_Build));
}

// Проверка на тип СФ заказчика, аванс
function Is_Consumer_Avans(aTipUser : Word) : Boolean;
{
  Result := (aTipUser = cwTypeSF_Sell_Consumer_Avans);
}

// Проверка на тип СФ посредника, отгрузка
function Is_Mediator_Otgr(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Buy_Mediator          ) or
             (aTipUser = cwTypeSF_Buy_CorrV_Mediator    ) or (aTipUser = cwTypeSF_Buy_Ispr_Mediator ) or
             (aTipUser = cwTypeSF_Buy_IsprCorrV_Mediator) or (aTipUser = cwTypeSF_Buy_Mediator_Sv)    or
             (aTipUser = cwTypeSF_Buy_Mediator_Build));
}

// Проверка на тип СФ посредника, аванс
function Is_Mediator_Avans(aTipUser : Word) : Boolean;
{
  Result := (aTipUser = cwTypeSF_Buy_Mediator_Avans);
}

// Счет-фактура по физическим лицам
function Is_PhysicalSF(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeSF_Sell_Physical) or (aTipUser = cwTypeSF_Buy_Physical) or
             (aTipUser = cwTypeSF_Sell_Physical_Avans));
}

// Проверка, является ли запись корректирующей-сторно
function Is_CorrStorno_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_CorrStorno) or (aTipUser = cwTypeBK_Buy_CorrStorno));
}

// Проверка, является ли запись корректирующей аванс
function Is_CorrAvans_BK(aTipUser : Word) : Boolean;
{
  Result := ((aTipUser = cwTypeBK_Sell_CorrAvans) or (aTipUser = cwTypeBK_Buy_CorrAvans));
}

// Рассматриваемые группы типов СФ: корректировочная, исправления, исправления корректировки, стандартная
function GetGroup4TipSF(TipSF, wFlag : Word) : Word;
{
  if (Is_IsprCorrV_SF(TipSF))
  {
    result := cwGroupTipsSf_IsprCorr;
    Exit;
  }

  if (Is_IsprSF(TipSF, wFlag))
  {
    result := cwGroupTipsSf_Ispr;
    Exit;
  }

  if (Is_CorrV_SF(TipSF))
  {
    result := cwGroupTipsSf_CorrV;
    Exit;
  }

  result := cwGroupTipsSf_Standard;
}

// Для новых типов СФ заводить коды операций.
#end
