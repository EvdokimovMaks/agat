//Глобальные константы Агата.
//Необходимо перенести сюда все константы агата из всех локальных доработок,
//т.к. в них объявлены одни и те же константы по несколько раз

const
  //Коды пользовательских аналитик
  KODGRKAU_RS = 10545; //2015 Номер расчетного счета
  KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU = 10783; //Виды расходов приказа на командировку
  KODGRKAU_KORPORATIVNIE_KARTI = 10784; //Корпоративные карты

  //нреки внешних атрибутов для лицевых счетов
  ATTRNAM_NREC_LSCHET_KORPORATIVNAYA_KARTA = 0001000000000BB4h;

  //нреки внешних атрибутов для приказов на командировки
  ATTRNAM_NREC_PRIKAZ_ZAKAZ_ZATRAT = 0001000000000BAEh;    //Заказ затрат - ссылка на системную аналитику Заказ
  ATTRNAM_NREC_PRIKAZ_VID_RASHODOV = 0001000000000BAFh;    //Вид расходов - ссылка на польз. аналитику KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU
  ATTRNAM_NREC_PRIKAZ_KORPORATIVNAYA_KARTA = 0001000000000BB0h; //Корпоративная карта - ссылка на польз. аналитику KODGRKAU_KORPORATIVNIE_KARTI

  //нреки внешних атрибутов для расшифровки командировок, АО, РКО
  ATTRNAM_NREC_RASHDOC_RS_SPISANIYA = 0001000000000BA9h; //РасчетныйСчетСписания - ссылка на пользовательскую аналитику KODGRKAU_RS
end;
