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

#ifdef ComponentVersion
#Component "M_Scripts"
#end

Table STRUCT BlackField "Множестов полей таблицы"
(
  Name          : s50        "Наименование",
  id            : word       "Идентификатор переменной",
  idTab         : word       "Идентификатор таблицы",
  Number        : tNRec      "Номер по порядку",
  bNumber       : tNRec      "Для дерева",
  wType         : word       "Тип переменной",
  wType_        : word       "Подтип переменной",
  wMode         : word       "Тип доступа к переменной",
  wOrder        : word       "Переменная для сохранения порядка"
)

With Index
(
  BlackField01 = Number (Unique, Surrogate, Journal),
  BlackField02 = idTab + bNumber + wOrder,
  BlackField03 = idTab + wType,
  BlackField04 = idTab + id
)
;

Table STRUCT BlackBound "Множестов ограничений таблицы"
(
  Name          : s50        "Наименование",
  id            : word       "Идентификатор ограничения",
  idTab         : word       "Идентификатор таблицы",
  Number        : tNRec      "Номер по порядку",
  bNumber       : tNRec      "Для дерева",
  wType         : word       "Тип результата",
  Param         : word       "Количество параметров"
)
With Index
(
  BlackBound01 = Number (Unique, Surrogate, Journal),
  BlackBound02 = idTab + bNumber,
  BlackBound03 = idTab + id
)
;


Table STRUCT BlackBoundField "Множестов полей ограничения"
(
  Name          : s50        "Наименование",
  id            : word       "Идентификатор переменной",
  idBou         : word       "Идентификатор ограничения",
  idTab         : word       "Идентификатор таблицы",
  wType         : word       "Тип переменной",
  wOrder        : word       "Переменная для сохранения порядка"
)

With Index
(
  BlackBoundField01 = idTab + idBou + wOrder,
  BlackBoundField02 = id
)
;

Table STRUCT BlackConst "Константы документа"
(
  Name          : s50        "Наименование",
  id            : word       "Номер переменной",
  idTab         : word       "Идентификатор таблицы",
  idType        : word       "coTable таблицы ссылки",
  Number        : tNRec      "Номер по порядку",
  bNumber       : tNRec      "Для дерева",
  wDefault      : tNRec      "Значение константы по умолчанию"
)

With Index
(
  BlackConst01 = Number (Unique, Surrogate, Journal),
  BlackConst02 = idTab + bNumber,
  BlackConst03 = idTab + id
)
;

Table STRUCT BlackTable "Множество таблиц документа"
(
  Name          : s50        "Наименование",
  id            : word       "Номер переменной",
  Number        : tNRec      "Номер по порядку",
  bNumber       : tNRec      "Для дерева",
  InterMain     : s50        "Интерфейс исполнения",
  InterReg      : s50        "Интерфейс резистрации"
)

With Index
(
  BlackTable01 = Number (Unique, Surrogate, Journal),
  BlackTable02 = id,
  BlackTable03 = bNumber
)
;
