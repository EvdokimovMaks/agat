//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.1 - Производство
// Константы для планового движения МЦ
//------------------------------------------------------------------------------

Const

! Глубина иерархии плановых операций
  MAX_HIER_DEPTH  : word = 8;

! Нулевая ссылка типа COMP
  COMP_NULL       : comp = comp(0);

! Нулевая дата
  EMPTY_DATE      : date = date(0, 0, 0);

! Успешное выполнение функции
  SUCCESS         : word =  0;  // Нет ошибок

! Предупреждения
  WARN_NOT_NEED   : word = 0FFFFh;  // Вставка ордера не требуется

! Ошибки выполнения
  ERR_UNKNOWN     : word =  1;  // Неизвестная ошибка
  ERR_INSERT_PS   : word =  2;  // Ошибка вставки записи в таблицу PlanSlit
  ERR_UPDATE_PS   : word =  3;  // Ошибка модификации записи в таблице PlanSlit
  ERR_DELETE_PS   : word =  4;  // Ошибка удаления записи из таблицы PlanSlit
  ERR_INSERT_PM   : word =  5;  // Ошибка вставки записи в таблицу PlanMove
  ERR_UPDATE_PM   : word =  6;  // Ошибка модификации записи в таблице PlanMove
  ERR_DELETE_PM   : word =  7;  // Ошибка удаления записи из таблицы PlanMove
  ERR_INSERT_TR   : word = 11;  // Ошибка вставки записи в таблицу MoveTree
  ERR_UPDATE_TR   : word = 12;  // Ошибка модификации записи в таблице MoveTree
  ERR_DELETE_TR   : word = 13;  // Ошибка удаления записи из таблицы MoveTree
  ERR_INSERT_PI   : word = 14;  // Ошибка вставки записи в таблицу PlanInfo
  ERR_UPDATE_PI   : word = 15;  // Ошибка модификации записи в таблице PlanInfo
  ERR_DELETE_PI   : word = 16;  // Ошибка удаления записи из таблицы PlanInfo
  ERR_BAD_PARAM   : word = 17;  // Неверный параметр функции
  ERR_BAD_POSITION: word = 18;  // Неверная позиция
  ERR_DEL_ON_FIXED: word = 19;  // Попытка удаления операции, имеющей фиксированную разноску
  ERR_TAKE_FACT   : word = 20;  // Ошибка разноски операции отпуска на фактическое наличие
  ERR_TAKE_PRIH   : word = 21;  // Ошибка разноски операции отпуска на операцию поступления
  ERR_ACCUMULATE  : word = 22;  // Ошибка расчета поступлений и отпусков с накоплением
  ERR_EDIT_LOCK   : word = 23;  // Другой пользователь уже заблокировал доступ к операциям ПД
  ERR_NOT_REALIZ  : word = 24;  // Операция не реализована
  ERR_NOT_REGISTER: word = 25;  // Операция ПД не зарегистрирована
  ERR_NOT_FOUND   : word = 26;  // Операция ПД не найдена
  ERR_BAD_DIRECT  : word = 27;  // Не совпадает вид (приход/расход) заданной вышестоящей операции

!Удаление фиксированных разносок
  DEL_FIXED       : boolean = true;
  NO_DEL_FIXED    : boolean = false;

! Режим интерфейса "Плановое движение МЦ"
  IS_VIEW         : word = 1;  // Просмотр
  IS_SORT         : word = 3;  // Фильтр / сортировка

! Ссылка на операцию в разноске
  NO_OPER         : comp = -1; // Нет ссылки на операцию (разноска фактического наличия)

! Вид операции движения МЦ
  IS_RASH         : word = 0;  // Для операции отпуска
  IS_PRIH         : word = 1;  // Для операции поступления

! Статус операции движения МЦ
  NO_TEST         : word = 0;  // Включена в план
  IS_TEST         : word = 1;  // Тестируется
  IS_FACT         : word = 2;  // Для фактического наличия
  IS_LIMIT        : word = 3;  // Для лимитов

! Признак "Склад"/"Производство" для складского ордера
  IS_SKLAD        : word = 0;  // Склад
  IS_PROIZV       : word = 1;  // Производство

! Тип записи во временной таблице PlanInfo
  IS_MOVE         : word = 0;  // Операция планового движения
  IS_REST         : word = 1;  // Плановое наличие по разрезу

! Тип разноски
  NO_FIXED        : word = 0;  // Не фиксированная
  IS_FIXED        : word = 1;  // Фиксированная

! Активная закладка интерфейса "Разноски"
  IS_INFO         : word = 0;  // Разноска операции
! IS_FACT         : word = 2;  // Разноска фактич. наличия

! Тип модификации спецификации складского ордера
  IS_INSERT       : word = 0;
  IS_UPDATE       : word = 1;
  IS_DELETE       : word = 2;

! Значение поля wList таблицы Pick
  LIST_PICK_ORGAN : word = 6;
  LIST_PICK_MC    : word = 7;
  LIST_PICK_MOL   : word = 8;
  LIST_PICK_PARTY : word = 10;
  LIST_PICK_PODR  : word = 11;
  LIST_PICK_CLAIM : word = 999; // ? - уточнить
  LIST_PICK_TYPE  : word = 998; // ? - уточнить
  LIST_PICK_DOC   : word = 997; // ? - уточнить

! Параметры вызова интерфейса "GetSome_Any"
  GET_SA_PODR     : word = 1;
  GET_SA_MOL      : word = 2;
  GET_SA_PARTY    : word = 4;
  GET_SA_MC       : word = 8;
  GET_SA_ORGAN    : word = 16;
  GET_SA_ATTR_MC  : word = 32;
  GET_SA_DATE     : word = 64;  // Ввод даты
  GET_SA_PERIOD   : word = 128; // Ввод периода

! Для имен маркеров, хранящих "Выбор условий фильтрации"
  MARK_SLIT       : word = 0;
  MARK_MC         : word = 1;
  MARK_PODR       : word = 2;
  MARK_PARTY      : word = 3;
  MARK_MOL        : word = 4;
  MARK_TYPE       : word = 5;
  MARK_DOC        : word = 6;

! Значение, возвращаемое окном "Выбор условий фильтрации"
  FILTER_OK       : word = 300; // Фильтр выбран (нажата кнопка "Да")
  FILTER_CANCEL   : word = 301; // Нажата кнопка "Отменить"
  FILTER_BAD      : word = 302; // Нет записей по фильтру (нажата кнопка "Да")
  FILTER_CLEAR    : word = 303; // Ничего не выбрано (нажата кнопка "Да")
  FILTER_RESET    : word = 306; // Нажата кнопка "Сброс"
  FILTER_EASY     : word = 304; // Выгрузка не требуется
  FILTER_DEBUG    : word = 305; // Включен режим отладки

! Способ сортировки
  ORD_NONE        : word = 0FFFFh;
  ORD_MC          : word = 0;
  ORD_PODR        : word = 1;
  ORD_MOL         : word = 2;
  ORD_PARTY       : word = 3;
  ORD_DATE        : word = 4;

! Индикатор сортировки в заголовке таблицы
  SORT_DOWN       = -1;  // Треугольник вниз - сортировка по возрастанию
  SORT_NONE       =  0;  // Треугольник отсутствует
  SORT_UP         =  1;  // Треугольник вверх - сортировка по убыванию

! Типы документов в плановом движении
  DOC_ORDER       : word =  1;  // Срецификация ордера
  DOC_EMPTY       : word = 10;  // Неопределён
  DOC_SOPR        : word = 20;  // Срецификация накладной
  DOC_BASE        : word = 30;  // Срецификация ДО
  DOC_CLAIM       : word = 40;  // Срецификация заявки
  DOC_PROIZ       : word = 50;  // Срецификация производственного заказа
  DOC_POTREB      : word = 60;  // Срецификация потребности в материалах
  DOC_LIMIT       : word = 70;  // Лимиты
  DOC_PLANSN      : word = 80;  // План снабжения
  Doc_PLANSB      : word = 90;  // План сбыта
	DOC_PLAN        : word = 4;   // производственный план
	DOC_RSVOPER     : word = 100;

! Методика выполнения авторазноски
  TUNE            : word = 0FFFFh; // по настройке
  LIFO            : word = 0;
  FIFO            : word = 1;

! Видимые по умолчанию поля интерфейса "Плановое движение МЦ"
  FLD_PM_VISIBLE  : word = 0000000100010001b;
! Константы настройки видимости полей
  FLD_PM_PODR     : word = 0000000000100000b;
  FLD_PM_MOL      : word = 0000000001000000b;
  FLD_PM_PARTY    : word = 0000000010000000b;

End;
