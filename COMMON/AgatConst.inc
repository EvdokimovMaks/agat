//Глобальные константы Агата.
//Необходимо перенести сюда все константы агата из всех локальных доработок,
//т.к. в них объявлены одни и те же константы по несколько раз

const
  //Коды пользовательских аналитик
  KODGRKAU_RS                                   : word = 10545; //2015 Номер расчетного счета
  KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU : word = 10879; //Виды расходов приказа на командировку
  KODGRKAU_KORPORATIVNIE_KARTI                  : word = 10880; //Корпоративные карты
  KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA           : word = 10695; //Режим использования счета

  //внешние атрибуты для лицевых счетов
  ATTRNAM_NREC_LSCHET_KORPORATIVNAYA_KARTA : comp = 0001000000000F16h;

  //внешние атрибуты для приказов на командировки
  ATTRNAM_NREC_PRIKAZ_ZAKAZ_ZATRAT         : comp = 0001000000000F17h; //Заказ затрат - ссылка на системную аналитику Заказ
  ATTRNAM_NREC_PRIKAZ_VID_RASHODOV         : comp = 0001000000000F18h; //Вид расходов - ссылка на польз. аналитику KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU

  //внешние атрибуты для расшифровки командировок, АО, РКО
  ATTRNAM_NREC_RASHDOC_RS_SPISANIYA               : comp = 0001000000000F19h; //Расчетный счет списания - ссылка на пользовательскую аналитику KODGRKAU_RS
  ATTRNAM_NREC_RASHDOC_REJIM_ISPOLZOVANIYA_SCHETA : comp = 0001000000000F1Ah; //Режим использования счета - ссылка на пользовательскую аналитику KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_RASHDOC_ZAKAZ_VIBITIYA             : comp = 0001000000000F1Bh; //Заказ выбытия - ссылка на системную аналитику Объекты строительства
  ATTRNAM_NREC_RASHDOC_STATYA_STRUKTURI_CENI      : comp = 0001000000000F1Ch; //Статья структуры цены - ссылка на системную аналитику Статьи затрат объектов строительства
  ATTRNAM_NREC_RASHDOC_KONTRAGENT                 : comp = 0001000000000F1Dh; //Контрагент - ссылка на системную аналитику Организации
  ATTRNAM_NREC_RASHDOC_DOGOVOR                    : comp = 0001000000000F1Eh; //Договор контрагента - ссылка на системную аналитику Договоры

  //внешние атрибуты для строк ДО
  ATTRNAM_NREC_SPSTEP_ZAKAZ_VIBITIYA              : comp = 0001000000000A87h; //Заказ выбытия - ссылка на системную аналитику Объекты строительства
  ATTRNAM_NREC_SPSTEP_RS_SPISANIYA                : comp = 0001000000000A86h; //Расчетный счет списания - ссылка на пользовательскую аналитику KODGRKAU_RS
  ATTRNAM_NREC_SPSTEP_REJIM_ISPOLZOVANIYA_SCHETA  : comp = 000100000000079Eh; //Режим использования счета - ссылка на пользовательскую аналитику KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_SPSTEP_RASHDOC_NREC                : comp = 0001000000000F1Fh; //яяяRashdoc.nrec - строка, nrec на позицию расшифровки приказа, связанную с позицией ДО

  //предопределенные услуги
  KATUSL_NREC_SUTOCHNIE : comp = 00010000000003FEh; //Суточные

  //целевой учет
  SALDTUNE_NREC_DEFAULT : comp = 0001000000000001h; //Настройка целевого учета по умолчанию
end;
