//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.1 - Производственный контур
//------------------------------------------------------------------------------
// напрямую к аналитикам не обращаться, только через константу
const

  // функциональные назначения аналитик SpMnBrief
  arnOST = word(1);  // ОСТ (организация системы Транснефть)
  arnPRO = word(2);  // Программа
  arnRGZ = word(3);  // Регион заправки// PID
  arnGRU = word(4);  // Грузополучатель
  arnGR2 = word(5);  // Грузополучатель2 (филиал)
  arnSPO = word(6);  // Способ доставки
  arnOTD = word(7);  // Отдел-заявитель
  arnPOD = word(8);  // Подразделение заказчика
  arnPAO = word(9);  // Подразделение ПАО
  arnLOT = word(10); // Лот
  arnDSI = word(11); // Принадлежность к ДСИ
  arnVNU = word(12); // Признак группового контрагента
  arnIZG = word(13); // Завод-изготовитель
  arnCAT = word(14); // Катагория закупки//поставки
  arnOBJ = word(15); // Объект
  arnSEG = word(16); // Сегмент НФ и НП
  arnBDR = word(17); // Статья БДР
  arnZAT = word(18); // Статья затрат
  arnMTR = word(19); // Группа МТР
  arnOPR = word(20); // Опросный лист
  arnCLA = word(21); // Класс АСУ НСИ
  arnKPR = word(22); // Код производителя    //
  arnVID = word(23); // Вид заявки
  arnOTV = word(24); // Ответственный сотрудник ОМТС
  arnPCZ = word(25); // Центр ответственности - Аналитика для подразделения (после центра затрат)
  arnGST = word(26); // ГОСТ
  arnGNA = word(27); // Группа налога
  arnTRS = word(28); // Тип объекта рэн-сырье
  arnOZA = word(29); // Организатор закупки (вид поставки)
  arnPLO = word(30); // Позиция лота
  arnTOS = word(31); // Объекта сторонних ОСТ
  arnFIL = word(32); // Филиал
  arnOPE = word(33); // Операция
  arnYEA = word(34); // Год
  arnKOR = word(35); // Номер корректировки
  arnSVD = word(36); // Связанный документ
  arnPID = word(37); // PID
  arnUNI = word(38); // Внешний номер потребности
  arnMON = word(39); // Месяц поставки
  arnKVL = word(40); // Объект КВЛ в ЦУ
  arnNTT = word(41); // Наличие техники ТСиСТ
  arnPOL = word(42); // Причины отклонения
  arnASU = word(43); // Идентификатор отправки запроса в АСУ Закупки
  arnVDS = word(44); // Вариант доставки
  arnIDC = word(45); // Идентификатор цены
  arnSPP = word(46); // СПП-Элемент

  arnUSR = word(51); // Для создания документа
  arnUSS = word(52); // Для редактирования документа



  arstrOST = 'ОСТ';
  arstrPRO = 'Программа';
  arstrRGZ = 'Регион заправки';//'PID';
  arstrGRU = 'Грузополучатель';
  arstrGR2 = 'Грузополучатель2 ';
  arstrSPO = 'Способ доставки';
  arstrOTD = 'Отдел-заявитель';
  arstrPOD = 'Подразделение заказчика';
  arstrPAO = 'Подразделение ПАО';
  arstrLOT = 'Лот';
  arstrDSI = 'Принадлежность к ДСИ';
  arstrVNU = 'Признак группового контрагента';
  arstrIZG = 'Завод-изготовитель';
  arstrCAT = 'Катагория закупки';//поставки';
  arstrOBJ = 'Объект';
  arstrSEG = 'Сегмент НФ и НП';
  arstrBDR = 'Статья БДР';
  arstrZAT = 'Статья затрат';
  arstrMTR = 'Группа МТР';
  arstrOPR = 'Опросный лист';
  arstrCLA = 'Класс АСУ НСИ';
  arstrKPR = 'Код производителя';//;
  arstrVID = 'Вид заявки';
  arstrOTV = 'Ответственный сотрудник ОМТС';
  arstrPCZ = 'Центр ответственности';

  arstrGST = 'ГОСТ';
  arstrGNA = 'Группа налога';
  arstrTRS = 'Тип объекта рэн-сырье';
  arstrOZA = 'Организатор закупки (вид поставки)';
  arstrPLO = 'Позиция лота';
  arstrTOS = 'Объект сторонних ОСТ';
  arstrFIL = 'Филиал';
  arstrOPE = 'Операция';
  arstrYEA = 'Год';
  arstrKOR = 'Номер корректировки';
  arstrSVD = 'Связанный документ';
  arstrPID = 'PID';
  arstrUNI = 'Внешний номер потребности';
  arstrMON = 'Месяц поставки';
  arstrKVL = 'Объект КВЛ в ЦУ';
  arstrNTT = 'Наличие техники ТСиСТ';
  arstrPOL = 'Причины отклонения';
  arstrASU = 'Идентификатор отправки запроса в АСУ Закупки';
  arstrVDS = 'Вариант доставки';
  arstrIDC = 'Идентификатор цены';
  arstrSPP = 'СПП-Элемент';


  arstcOST = Chr(3)+'ОСТ';
  arstcPRO = Chr(3)+'Программа';
  arstcRGZ = Chr(3)+'Регион'+Chr(13)+Chr(3)+'заправки';//Chr(3)+'PID';
  arstcGRU = Chr(3)+'Грузополучатель';
  arstcGR2 = Chr(3)+'Грузополучатель2'+Chr(13)+Chr(3)+'(филиал)';
  arstcSPO = Chr(3)+'Способ'+Chr(13)+Chr(3)+'доставки';
  arstcOTD = Chr(3)+'Отдел-'+Chr(13)+Chr(3)+'заявитель';
  arstcPOD = Chr(3)+'Подразделение'+Chr(13)+Chr(3)+'заказчика/филиал';
  arstcPAO = Chr(3)+'Подразделение'+Chr(13)+Chr(3)+'ПАО';
  arstcLOT = Chr(3)+'Лот';
  arstcDSI = Chr(3)+'Принадлежность'+Chr(13)+Chr(3)+'к ДСИ';
  arstcVNU = Chr(3)+'Признак группового'+Chr(13)+Chr(3)+'контрагента';
  arstcIZG = Chr(3)+'Завод-'+Chr(13)+Chr(3)+'изготовитель';
  arstcCAT = Chr(3)+'Катагория'+Chr(13)+Chr(3)+'закупки';//'поставки';
  arstcOBJ = Chr(3)+'Объект';
  arstcSEG = Chr(3)+'Сегмент'+Chr(13)+Chr(3)+'НФ и НП';
  arstcBDR = Chr(3)+'Статья'+Chr(13)+Chr(3)+'БДР';
  arstcZAT = Chr(3)+'Статья'+Chr(13)+Chr(3)+'затрат';
  arstcMTR = Chr(3)+'Группа'+Chr(13)+Chr(3)+'МТР';
  arstcOPR = Chr(3)+'Опросный'+Chr(13)+Chr(3)+'лист';
  arstcCLA = Chr(3)+'Класс'+Chr(13)+Chr(3)+'АСУ НСИ';
  arstcKPR = Chr(3)+'Код'+Chr(13)+Chr(3)+'производителя';//Chr(3)+'Код'+Chr(13)+Chr(3)+'МН';
  arstcVID = Chr(3)+'Вид'+Chr(13)+Chr(3)+'заявки';
  arstcOTV = Chr(3)+'Ответственный'+Chr(13)+Chr(3)+'сотрудник ОМТС';
  arstcPCZ = Chr(3)+'Центр'+Chr(13)+Chr(3)+'ответственности';
  arstcGST = Chr(3)+'ГОСТ';
  arstcGNA = Chr(3)+'Группа налога';
  arstcTRS = Chr(3)+'Тип объекта'+Chr(13)+Chr(3)+'рэн-сырье';
  arstcOZA = Chr(3)+'Организатор закупки' +Chr(13)+Chr(3)+ '(вид поставки)';
  arstcPLO = Chr(3)+'Позиция лота';
  arstcTOS = Chr(3)+'Объект'+Chr(13)+Chr(3)+'сторонних ОСТ';
  arstcFIL = Chr(3)+'Филиал';
  arstcOPE = Chr(3)+'Операция';
  arstcYEA = Chr(3)+'Год';
  arstcKOR = Chr(3)+'Номер'+Chr(13)+Chr(3)+'корректировки';
  arstcSVD = Chr(3)+'Связанный'+Chr(13)+Chr(3)+'документ';
  arstcPID = Chr(3)+'PID';
  arstcUNI = Chr(3)+'Внешний номер'+ Chr(13)+Chr(3)+'потребности';
  arstcMON = Chr(3)+'Месяц'+Chr(13)+Chr(3)+'поставки';
  arstcKVL = Chr(3)+'Объект'+Chr(13)+Chr(3)+'КВЛ в ЦУ';
  arstcNTT = Chr(3)+'Наличие техники ТСиСТ';
  arstcPOL = Chr(3)+'Причины'+Chr(13)+Chr(3)+'отклонения';
  arstcASU = Chr(3)+'Идентификатор отправки'+Chr(13)+Chr(3)+' запроса в АСУ Закупки';
  arstcVDS = Chr(3)+'Вариант доставки';
  arstcIDC = Chr(3)+'Идентификатор цены';
  arstcSPP = Chr(3)+'СПП-Элемент';




  acnShowOST = 1b;  //
  acnShowPRO = 10b;  //
  acnShowRGZ = 100b;  //
  acnShowGRU = 1000b;  //
  acnShowGR2 = 10000b;  //
  acnShowSPO = 100000b;  //
  acnShowOTD = 1000000b;  //
  acnShowPOD = 10000000b;  //
  acnShowPAO = 100000000b;  //
  acnShowLOT = 1000000000b; //
  acnShowDSI = 10000000000b; //
  acnShowVNU = 100000000000b; //
  acnShowIZG = 1000000000000b; //
  acnShowCAT = 10000000000000b; //
  acnShowOBJ = 100000000000000b; //
  acnShowSEG = 1000000000000000b; //
  acnShowBDR = 10000000000000000b; //
  acnShowZAT = 100000000000000000b; //
  acnShowMTR = 1000000000000000000b; //
  acnShowOPR = 10000000000000000000b; //
  acnShowCLA = 100000000000000000000b; //
  acnShowKPR = 1000000000000000000000b; //
  acnShowVID = 10000000000000000000000b; //
  acnShowOTV = 100000000000000000000000b; //
  acnShowPCZ = 1000000000000000000000000b; //

  acnShowGST = 10000000000000000000000000b; //
  acnShowGNA = 100000000000000000000000000b; //
  acnShowTRS = 1000000000000000000000000000b; //
  acnShowOZA = 10000000000000000000000000000b; //
  acnShowPLO = 100000000000000000000000000000b; //
  acnShowTOS = 1000000000000000000000000000000b; //
  acnShowFIL = 10000000000000000000000000000000b; //

  acnShowOPE = 1b;  //
  acnShowYEA = 10b; //
  acnShowKOR = 100b; //
  acnShowSVD = 1000b; //
  acnShowPID = 10000b; //
  acnShowUNI = 100000b; //
  acnShowMON = 1000000b; //
  acnShowKVL = 10000000b; //
  acnShowNTT = 100000000b; //
  acnShowPOL = 1000000000b; //
  acnShowASU = 10000000000b; //
  acnShowVDS = 100000000000b; //
  acnShowIDC = 1000000000000b; //
  acnShowSPP = 10000000000000b; //

  // пока никак не используется
  arnHd1 = word(1001); // аналитика MnPlan 1
  arnHd2 = word(1002); // аналитика MnPlan 2
  arnHd3 = word(1003); // аналитика MnPlan 3
  arnHd4 = word(1004); // аналитика MnPlan 4
  arnHd5 = word(1005); // аналитика MnPlan 5
  arnHd6 = word(1006); // аналитика MnPlan 6
  arnHd7 = word(1007); // аналитика MnPlan 7

  arnSp1 = word(2001);  // аналитика SpMnPlan 1
  arnSp2 = word(2002);  // аналитика SpMnPlan 2
  arnSp3 = word(2003);  // аналитика SpMnPlan 3
  arnSp4 = word(2004);  // аналитика SpMnPlan 4
  arnSp5 = word(2005);  // аналитика SpMnPlan 5

  // типы алгоритмов
  ctaButton    = 1; // алгоритмы кнопок
  ctaPreEdit   = 2; // алгоритмы перед изменением полей
  ctaPostEdit  = 3; // алгоритмы после изменения полей
  ctaExtSpMenu = 4; // дополнительные алгоритмы локального меню

  // константы для кнопок в шапке
  btnSendApprove       = 1; // кнопка "Согласовать"
  btnSendReject        = 2; // кнопка "Отклонить"
  btnSendRejectRequest = 3; // кнопка "Запросить отклонение"
  btnSendDelete        = 4; // кнопка "Удалить"
  btnRefresh           = 5; // кнопка "Обновить"
  btnRefreshAll        = 6; // кнопка "Обновить все"
  btnSendPriceRequest  = 7; // кнопка "Получение цены"

  btnPlanScr01         = 1;
  btnPlanScr02         = 2;
  btnPlanScr03         = 3;
  btnPlanScr04         = 4;
  btnPlanScr05         = 5;
  btnPlanScr06         = 6;
  btnPlanScr07         = 7;
  btnPlanScr08         = 8;
  btnPlanScr09         = 9;
  btnPlanScr10         = 10;
  btnPlanScr11         = 11;
  btnPlanScr12         = 12;

  btnPlanScrMax        = 12;

  btnPlanSpFormPlTune  = 5002;
  // константы для полей


end;


