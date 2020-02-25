//Глобальные константы Агата.
//Необходимо перенести сюда все константы агата из всех локальных доработок,
//т.к. в них объявлены одни и те же константы по несколько раз

const
  //Коды пользовательских аналитик
  KODGRKAU_RS                                   : word = 10545; //2015 Номер расчетного счета
  KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU : word = 10879; //Виды расходов приказа на командировку
  KODGRKAU_KORPORATIVNIE_KARTI                  : word = 10880; //Корпоративные карты
  KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA           : word = 10695; //Режим использования счета
  KODGRKAU_IGK                                  : word = 10527; //2015 Идентификатор государственного контракта
  KODGRKAU_PODGR                                : word = 10057; //Подгруппа персонала (НВП/ПТП/...)
  KODGRKAU_CATEG                                : word = 10036; //Категории (руководители/специалисты/...)
  KODGRKAU_DDS                                  : word = 10009; //Классификатор ДДС
  KODGRKAU_PRINADLEJNOST_AVANSU                 : word = 10008; //Платежи: принадлежность к авансу
  KODGRKAU_RBP                                  : word = 163;   //2005. Расходы будущих периодов
  KODGRKAU_SROCHNAYA_LICENSIYA                  : word = 10753; //2016 Срочная/бессрочная лицензия

  //внешние атрибуты для Партий
  ATTRNAM_NREC_KATPARTY_GOD_VIPUSKA               : comp = 0001000000001E99h;

  //внешние атрибуты для лицевых счетов
  ATTRNAM_NREC_LSCHET_KORPORATIVNAYA_KARTA        : comp = 0001000000000F16h;

  //внешние атрибуты для приказов на командировки
  ATTRNAM_NREC_PRIKAZ_ZAKAZ_ZATRAT                : comp = 0001000000000F17h; //Заказ затрат - ссылка на системную аналитику Заказ
  ATTRNAM_NREC_PRIKAZ_VID_RASHODOV                : comp = 0001000000000F18h; //Вид расходов - ссылка на польз. аналитику KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU

  //внешние атрибуты для расшифровки командировок, АО, РКО
  ATTRNAM_NREC_RASHDOC_RS_SPISANIYA               : comp = 0001000000000F19h; //Расчетный счет списания - ссылка на пользовательскую аналитику KODGRKAU_RS
  ATTRNAM_NREC_RASHDOC_REJIM_ISPOLZOVANIYA_SCHETA : comp = 0001000000000F1Ah; //Режим использования счета - ссылка на пользовательскую аналитику KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_RASHDOC_ZAKAZ_VIBITIYA             : comp = 0001000000000F1Bh; //Заказ выбытия - ссылка на системную аналитику Объекты строительства
  ATTRNAM_NREC_RASHDOC_STATYA_STRUKTURI_CENI      : comp = 0001000000000F1Ch; //Статья структуры цены - ссылка на системную аналитику Статьи затрат объектов строительства
  ATTRNAM_NREC_RASHDOC_KONTRAGENT                 : comp = 0001000000000F1Dh; //Контрагент - ссылка на системную аналитику Организации
  ATTRNAM_NREC_RASHDOC_DOGOVOR                    : comp = 0001000000000F1Eh; //Договор контрагента - ссылка на системную аналитику Договоры

  //внешние атрибуты для договора
  ATTRNAM_NREC_DOGOVOR_STZ                        : comp = 00010000000000B3h; //Статья расходов (коммерческих, накладных) - ссылка на пользовательскую аналитику
  ATTRNAM_NREC_DOGOVOR_ZAKAZ                      : comp = 00010000000000ABh; //Номер заказа - ссылка на объект строительства

  //внешние атрибуты для ДО
  ATTRNAM_NREC_BASEDOC_ISPOLNITEL_DOGOVORA        : comp = 000100000000005Bh; //Исполнитель договора - ссылка на подразделение
  ATTRNAM_NREC_BASEDOC_DDS                        : comp = 000100000000008Fh; //Статья ДДС - ссылка на польз. аналитику "Классификатор ДДС"
  ATTRNAM_NREC_BASEDOC_AVANS                      : comp = 000100000000008Dh; //Аванс/ок. расчет - ссылка на польз. аналитику "Платежи: принадлежность к авансу"
  ATTRNAM_NREC_BASEDOC_NAZNPL                     : comp = 000100000000010Dh; //Назначение платежа - строка

  //внешние атрибуты для строк ДО
  ATTRNAM_NREC_SPSTEP_ZAKAZ_VIBITIYA              : comp = 0001000000000A87h; //Заказ выбытия - ссылка на системную аналитику Объекты строительства
  ATTRNAM_NREC_SPSTEP_RS_SPISANIYA                : comp = 0001000000000A86h; //Расчетный счет списания - ссылка на пользовательскую аналитику KODGRKAU_RS
  ATTRNAM_NREC_SPSTEP_REJIM_ISPOLZOVANIYA_SCHETA  : comp = 000100000000079Eh; //Режим использования счета - ссылка на пользовательскую аналитику KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_SPSTEP_STATIA_VIBITIYA             : comp = 0001000000000A88h; //Статья структуры цены по заказу выбытия - ссылка на системную аналитику 73 - Статьи затрат объектов строительства
  ATTRNAM_NREC_SPSTEP_RASHDOC_NREC                : comp = 0001000000000F1Fh; //яяяRashdoc.nrec - строка, nrec на позицию расшифровки приказа, связанную с позицией ДО
  ATTRNAM_NREC_SPSTEP_VID_LICENSII                : comp = 00010000000003E3h; //_Вид лицензии - ссылка на пользовательскую аналитику 2005. Расходы будущих периодов
  ATTRNAM_NREC_SPSTEP_SROCHNAYA_LICENSIYA         : comp = 0001000000000ADAh; //2016 Срочная/бессрочная лицензия - ссылка на пользовательскую аналитику 2016 Срочная/бессрочная лицензия
  ATTRNAM_NREC_SPSTEP_RASHIFROVKA_STZATR          : comp = 0001000000001FABh; //Расшифровка статьи затрат - ссылка на пользовательскую аналитику Расшифровка статьи затрат

  //внешние атрибуты платежных документов
  ATTRNAM_NREC_PLPOR_NOMER_V_BANKE                : comp = 00010000000014D2h; //яНомерДокументаВБанке - при импорте исходящих платежек из клиент-банка им присваивается свой номер.
                                                                              //для нахождения соответствия с документом банка в этом атрибуте хранится банковский номер документа
  ATTRNAM_NREC_PLPOR_REJIM_ISPOLZOVANIYA_SCHETA   : comp = 000100000000077Ah; //Режим использования счета - ссылка на пользовательскую аналитику KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_PLPOR_DDS                          : comp = 0001000000000090h; //Статья ДДС

  //внешние атрибуты заявок
  ATTRNAM_NREC_CLAIM_TU                           : comp = 0001000000000421h; //Технические условия - строка с комментарием к позиции заявки

  //внешние атрибуты РБП
  ATTRNAM_NREC_NALREGDC_KOLLIC                    : comp = 0001000000000A85h; //Количество лицензий
  ATTRNAM_NREC_NALREGDC_SRBESSR                   : comp = 0001000000000A4Ah; //Срочная/бессрочная лицензия
  ATTRNAM_NREC_NALREGDC_RBP                       : comp = 0001000000001674h; //Наименование расхода

  //внешние атрибуты объектов строительства
  ATTRNAM_NREC_KATSTROY_IGK                       : comp = 00010000000004CCh; //Идентификатор гос.контракта
  ATTRNAM_NREC_KATSTROY_KREDIT                    : comp = 0001000000002028h; //Кредитный заказ
  ATTRNAM_NREC_KATSTROY_PERSON                    : comp = 00010000000000D9h; //Сотрудник

  //внешние атрибуты в каталоге банков организаций
  ATTRNAM_NREC_KATBANK_IGK                        : comp = 00010000000009BFh; //Идентификатор гос.контракта, ссылается на exclassseg

  //внешние атрибуты в списке категорий
  ATTRNAM_NREC_KLKATEGO_PODGR                     : comp = 0001000000001B5Bh; //Подгруппа персонала - пользовательская аналитика KODGRKAU_PODGR
  ATTRNAM_NREC_KLKATEGO_CATEG                     : comp = 0001000000001B5Ch; //Категория персонала - пользовательская аналитика KODGRKAU_CATEG

  //предопределенные услуги
  KATUSL_NREC_SUTOCHNIE                           : comp = 00010000000003FEh; //Суточные

  //целевой учет
  SALDTUNE_NREC_DEFAULT                           : comp = 0001000000000001h; //Настройка целевого учета по умолчанию

  //статусы ДО
  KATNOTES_NREC_BASEDOC_OFORML                    : comp = 40009D44C1790C6Bh; //оформляемый
  KATNOTES_NREC_BASEDOC_ISPOLN                    : comp = 400056A46A9AD669h; //исполняемый
  KATNOTES_NREC_BASEDOC_OPLACH                    : comp = 0001000000000077h; //оплачен
  KATNOTES_NREC_BASEDOC_REESTR                    : comp = 000100000000007Eh; //в реестре
  KATNOTES_NREC_BASEDOC_OTLOJ                     : comp = 0001000000000150h; //Отложен
  KATNOTES_NREC_BASEDOC_ZAKR                      : comp = 4000485AB57C8F9Dh; //закрытый

  //Виды договоров
  VIDDOG_NREC_D_SCHETA_GAR_PISMA                  : comp = 0001000000000051h; //Д_Счета, гарантийные письма (без договора)

  //Значения КАУ
  SPKAU_NREC_REJIM_ISPOLZOVANIYA_SCHETA_3MLN      : comp = 000100000000139Eh;  //ссылка на пользовательскую аналитику KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
                                                                               //2.8_в соответсвии с пп. З п. 2 ст. 8.3 ФЗ  № 275 для оплаты иных расходов на сумму не более 3 мл ( ИГК -> Общий 3 мил.)
  SPKAU_NREC_PRINADL_AVANS_AVANS                  : comp = 00010000000001DEh;  //ссылка на пользовательскую аналитику Платежи: принадлежность к авансу = "Аванс"
  SPKAU_NREC_PRINADL_AVANS_OKRASCH                : comp = 00010000000001DFh;  //ссылка на пользовательскую аналитику Платежи: принадлежность к авансу = "Окончательный расчет"
  SPKAU_NREC_STATUS_SOGLASOVANIYA_SOGLASOVANO     : comp = 00010000000001CEh;  //ссылка на пользовательскую аналитику "Статусы согласования" = "Согласовано" (виза в ДО)
  SPKAU_NREC_CWS_TRAVEL_HOURS                     : comp = 0001000000001AB1h;  //ссылка на пользовательскую аналитику "Статьи сводного наряда" = "Часов в пути в|рабочий день (командировка)"
  SPKAU_NREC_CWS_TRAVEL_SUM                       : comp = 0001000000001AB2h;  //ссылка на пользовательскую аналитику "Статьи сводного наряда" = "Оплата за время в пути|в рабочий день (командировка)"
  SPKAU_NREC_CWS_TRAVEL_HOURS_WEEKEND             : comp = 0001000000001AB3h;  //ссылка на пользовательскую аналитику "Статьи сводного наряда" = "Часов в пути в|выходной день (командировка)"
  SPKAU_NREC_CWS_TRAVEL_SUM_WEEKEND               : comp = 0001000000000F58h;  //ссылка на пользовательскую аналитику "Статьи сводного наряда" = "Оплата за время в пути|в выходной день (командировка)"
  //Планы счетов
  PLANSSCH_NREC_2013                              : comp = 000100000000000Eh;  //План счетов 2013 г
  PLANSSCH_NREC_TEHN                              : comp = 40017E58EB0A93F3h;  //Технический план счетов
  //КАУ
  cgKau_Claim       : word = 5191;  //Строка заявки
  cgKau_SrBessr     : word = 10753; //2016 Срочная/бессрочная лицензия
  cgKau_ContractId  : word = 10527; //Идентификатор госконтракта
  cgKau_RBP         : word = 163;   //2005. Расходы будущих периодов
  cgKau_StZ2013     : word = 10016; //2013 Статьи затрат
  cgKau_TipOper     : word = 11273; //тип операции
  cgKau_PrinadlAvans: word = 10008; //Платежи: принадлежность к авансу
  cgKau_RashStZatr  : word = 11309; //Расшифровка статьи затрат
  cgKau_CWSCostItem : word = 10029; //Статьи сводного наряда

  //Настройки подписантов
  FEESIGNERS_CONSTREP_FINDIR_SLZAP                : word = 9091; //Настройка подписантов в отчете к ДО "Финансовая дирекция. Служебная записка"

  //Статусы позиций заявок
  ClaimStateMadeoutTop       = 0001000000000043h;  //Папка - оформляемый
  ClaimStateMadeout          = 00010000000000F3h;  //Оформлена
  ClaimStateMadeoutReplacing = 00010000000000FCh;  //Заменяющая
  ClaimStateAcceptTop        = 0001000000000044h;  //Папка - исполняемый
  ClaimStateAccept           = 00010000000000F8h;  //Принята к исполнению
  ClaimStateAcceptReplacing  = 0001000000000119h;  //Заменяющая.Принята к исполнению

  //Группы ДО
  GROUPSCH_NREC_USERSETS     = 000100000000013Bh;  //Пользовательские наборы

  //Коды таблиц соответствий
  FPKATIMP_CODE_STZ2013_STZSTROY                   : string = '20'; //Договора. 2013 Статьи затрат - Статьи затрат объектов строительства

  STATLOG_TIPDOC_INDENT = 30000;

  //Типы настроек в таблице FormPl
  FORMPL_TYPEALG_ROWS             : word = 28000;
  FORMPL_TYPEALG_CELLSCHEMAS      : word = 28001;
  FORMPL_TYPEALG_ROWSCHEMAS       : word = 28002;
  FORMPL_TYPEALG_CHANGE_STATUS_TXO: word = 28003;

  //Типы операций
  TYPOPER_REZERV                  : comp = 000100000000186Dh;
  TYPOPER_FACT                    : comp = 000100000000186Fh;

  //Типы связей DocRef
  DOCREF_STAFFSTRUCT              : word = 65001;
  DOCREF_STAFFSTRUCT_TYPE_PEREMESH: word = 0; //тип связи в штатке - единица перемещена из другой ШЕ
  DOCREF_STAFFSTRUCT_TYPE_PEREDANO: word = 1; //тип связи в штатке - единица передана из другого подразделения
  DOCREF_STAFFSTRUCT_TYPE_PEREMESH_REPR: string = 'Перемещение';
  DOCREF_STAFFSTRUCT_TYPE_PEREDANO_REPR: string = 'Передача из другого подразделения';

  WAYACCOU_CWS: comp = 0001000000000088h;


  cgAG_Report_50501: word = 50501;
end;
