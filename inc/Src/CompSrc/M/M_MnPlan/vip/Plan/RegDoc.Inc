//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12-8.10 - Производственный контур
// Регламент работы с документами. Константы
//------------------------------------------------------------------------------
//'by Aleksis

Const
 //--------------------------------'Типы свойств объекта "Строка плана"
 reglLine                     = Word(1);    //'вся строка целиком
 reglSpMnPlan                 = Word(2);    //'объект планирования
 reglSpMnPl                   = Word(3);    //'позиция

 reglNormDoc                  = Word(4);    //'документ  //Siktivkar

 reglSpMnPlan_Number          = Word(11);   //'номер
 reglSpMnPlan_TypeIzd         = Word(12);   //'тип
 reglSpMnPlan_cIzd            = Word(13);   //'наименование
 reglSpMnPlan_cOtpEd          = Word(14);   //'единица измерения
 reglSpMnPlan_cStatus         = Word(15);   //'статус
 reglSpMnPlan_StartDate       = Word(16);   //'дата начала
 reglSpMnPlan_EndDate         = Word(17);   //'дата окончания
 reglSpMnPlan_cAnVal1         = Word(18);   //'аналитика 1
 reglSpMnPlan_cAnVal2         = Word(19);   //'аналитика 2
 reglSpMnPlan_cAnVal3         = Word(20);   //'аналитика 3
 reglSpMnPlan_cAnVal4         = Word(21);   //'доп.аналитика 1
 reglSpMnPlan_cAnVal5         = Word(22);   //'доп.аналитика 2
 reglSpMnPlan_CodTar          = Word(23);   //'признак продукта
 reglSpMnPlan_Razr            = Word(24);   //'признак продуктов выхода
 reglSpMnPlan_Prior           = Word(25);   //'приоритет
 reglSpMnPlan_StartDateFact   = Word(26);   //'дата начала фактическая
 reglSpMnPlan_EndDateFact     = Word(27);   //'дата окончания фактическая
 //'для потребности в трудовых
 reglSpMnPlan_Razr_Tr         = Word(28);   //'разряд
 reglSpMnPlan_CodTar_Tr       = Word(29);   //'код тарифа
 reglSpMnPlan_SisOpl          = Word(30);   //'система оплаты
 reglSpMnPlan_EdTime          = Word(31);   //'ед.изм. трудоемкости

 reglSpMnPl_Field1            = Word(51);   //'поле 1 позиции
 reglSpMnPl_Field2            = Word(52);   //'поле 2 позиции
 reglSpMnPl_Field3            = Word(53);   //'поле 3 позиции
 reglSpMnPl_Field4            = Word(54);   //'поле 4 позиции
 reglSpMnPl_Field5            = Word(55);   //'поле 5 позиции
 reglSpMnPl_Field6            = Word(56);   //'поле 6 позиции
 reglSpMnPl_Field7            = Word(57);   //'поле 7 позиции
 reglSpMnPl_Field8            = Word(58);   //'поле 8 позиции
 reglSpMnPl_Field9            = Word(59);   //'поле 9 позиции
 reglSpMnPl_Field10           = Word(60);   //'поле 10 позиции
 reglSpMnPl_Field11           = Word(61);   //'поле 11 позиции
 reglSpMnPl_Field12           = Word(62);   //'поле 12 позиции
 reglSpMnPl_Field13           = Word(63);   //'поле 13 позиции
 reglSpMnPl_Field14           = Word(64);   //'поле 14 позиции

 reglSpMnPlan_CalcField1      = Word(65);   //'выч.поле 1 строки
 reglSpMnPlan_CalcField2      = Word(66);   //'выч.поле 2 строки
 reglSpMnPlan_CalcField3      = Word(67);   //'выч.поле 3 строки
 reglSpMnPlan_CalcField4      = Word(68);   //'выч.поле 4 строки
 reglSpMnPlan_CalcField5      = Word(69);   //'выч.поле 5 строки
 reglSpMnPlan_CalcField6      = Word(70);   //'выч.поле 6 строки

 reglSpMnPlan_ExtAttr         = Word(71);   //'внешние атрибуты для SpMnPlan и SpMnPl

 reglTemplDoc                 = Word(100);  //'шаблон документа
 reglParSpec                  = Word(101);  //'параметры спецификации
 reglParMK                    = Word(102);  //'параметры маршрута
 reglHeader                   = Word(103);  //'Шапка (заголовок)
 reglvParPos                  = Word(104);  //'вкладка Параметры позиции
 reglvDopParDoc               = Word(105);  //'Дополнительные параметры документа
 reglMatNormMarsh_Sp          = Word(106);  //'Материальные Нормы позиции
 reglWorkNormMarsh_Sp         = Word(107);  //'Трудовые Нормы позиции
 reglInstrNormMarsh_Sp        = Word(108);  //'Инструментальные Нормы позиции
 reglEqNormMarsh_Sp           = Word(109);  //'Нормы оборудования позиции
 reglvDescriptPos             = Word(110);  //'вкладка Описание/Примечание позиции
 reglvDocMarsh_Sp             = Word(111);  //'вкладка документы позиции
 reglvMKPS_Lines              = Word(112);  //'вкладка МК для позиции
 reglvSpecNormPS_Lines        = Word(113);  //'вкладка Специфицированные Нормы для позиции
 reglNormMarsh_Sp             = Word(114);  //'Нормы позиции (не выбирается)
//меню
 //шапка
 reglMenu                     = Word(115);  //'меню шапки (не выбирается)
 reglMenuHdrCopyDoc           = Word(116);  //'Копирование
 reglMenuHdrCreateSprav       = Word(117);  //'Формирование справочника норм времени и расценок по МК'
 reglMenuHdrCorrectReserv     = Word(118);  //'Корректировка данных в журнале резервирования'
 reglMenuHdrCorrectEdNorm     = Word(119);  //'Корректировка единиц нормирования маршрута'
 reglMenuHdrCorrectOperDp     = Word(120);  //'Корректировка исполнителей позиций маршрута'
 reglMenuHdrLinkPSMK          = Word(121);  //'Связи с ресурсами спецификации'
 reglMenuHdrFormulas          = Word(122);  //'Выполнить формулу расчета'
 //спецификация
 reglMenuSpecCopyOperToMk     = Word(123);  //'Копирование операций в маршруты
 reglMenuSpecCopyNorm         = Word(124);  //'Копирование норм в маршруты
 reglMenuSpecLinkPSMK         = Word(125);  //'Связи с ресурсами спецификации'
 reglMenuSpecFormulas         = Word(126);  //'Выполнить формулу расчета'
 reglMenuSpecCopyOperFromMk   = Word(127);  //'Копирование операций в маршруты
 reglMenuSpecReNumOper        = Word(128);  //'Работа по перенумерации операций
 //--------------------------------'Разрешения для объекта "Строка плана"
 reglEdit                     = Word(1);    //'редактирование
 reglDelete                   = Word(2);    //'удаление
 reglFullAccess               = Word(3);    //'полный доступ (просмотр-редактирование)
 reglUse                      = Word(4);    //'использование
 //-------------------------'Типы данных для объекта "Позиция журнала резервирования"
 //-------------------------'Некоторые свойства состояния регламента для позиции
 reglRsv_wState               = Word(1);    //'Состояние позиции
 reglRsv_wStatus              = Word(2);    //'Статус позиции
 //--------------------------------'Типы свойств объекта "Строка плана"
 reglLineRsvOper              = Word(1);    //'вся позиция целиком
 //---------------------------------'Раскройная ведомость для сивельги
 reglModel                    = Word(201);
 reglSize                     = Word(202);
 reglKolPair                  = Word(203);
 reglSquare                   = Word(204);
 reglBrutto                   = Word(205);
 reglCMC                      = Word(206);
 reglEdIzd                    = Word(207);
 reglFAnal1                   = Word(208);
 reglFAnal2                   = Word(209);
 reglFAnal3                   = Word(210);
 reglKolMC                    = Word(211);
 reglKolKo                    = Word(212);
 reglNzad                     = Word(213);
End
