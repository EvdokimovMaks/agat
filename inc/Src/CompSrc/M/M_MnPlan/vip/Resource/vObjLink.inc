/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2001 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Управление ресурсами                                      ║
 ║ Версия        : 7.10                                                      ║
 ║ Назначение    : Описание таблиц отображения связей                        ║
 ║ Ответственный : Дмитрий Владимирович Скороход                             ║
 ║ Параметры     : есть                                                      ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

Table STRUCT LeftLink "Связь для окна справа"
(
  NRec          : comp       "Уникальная ссылка",
  cDocument     : comp       "Ссылка на первичный док",
  Kind          : word       "Тип МЦ\Усл",
  PrMc          : word       "Признак Мц\Усл",
  cMcUsl        : comp       "Ссылка Мц\Усл",
  Name          : string[40] "Переменная для Наименования",
  BarCode       : string[20] "Переменная для Бар кода",
  Kol           : double     "Количество",
  OtpEd         : string[5]  "Отпускная единица",
  Price         : double     "Цена",
  Summa         : double     "Итоговая сумма позиции"
)

With Index
(
  LeftLink01 = NRec (Surrogate, Unique)
)
;

Table STRUCT RightLink "Связь для окна справа"
(
  NRec          : comp       "Уникальная ссылка",
  cDocument     : comp       "Ссылка на первичный док",
  cLink         : comp       "Ссылка на ссылку",
  sType         : string[20] "Тип документа",
  dDoc          : date       "Дата документа",
  noDoc         : string[15] "Номер документа",
  Summa         : double     "Сумма документа",
  Val           : string[5]  "Валюта документа",
  SummaVal      : double     "Сумма в валюте",
  Direction     : word       "Направление связи"
)

With Index
(
  RightLink01 = NRec (Surrogate, Unique)
)
;

Table STRUCT BottomLink "Связь для окна справа"
(
  NRec          : comp       "Уникальная ссылка",
  cDocument     : comp       "Ссылка на первичный док",
  cLink         : comp       "Ссылка на ссылку",
  cLeft         : comp       "Ссылка к левому",
  cRight        : comp       "Ссылка к правому",
  Kol           : double     "Количество спецификации",
  OtpEd         : string[5]  "Отпускная единица",
  Price         : double     "Цена",
  Summa         : double     "Сумма позиции",
  KolNeed       : double     "Количество необходимого",
  KolFact       : double     "Количество фактически"
)

With Index
(
  BottomLink01 = NRec (Surrogate, Unique),
  BottomLink02 = cLeft,
  BottomLink03 = cRight
)
;

