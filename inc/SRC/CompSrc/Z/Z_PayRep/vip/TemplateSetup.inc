//------------------------------------------------------------------------------
// Галактика 9.1 - Заработная плата
// Константы настройки шаблона для выгрузки реестров в банк
//------------------------------------------------------------------------------
const
  // количество полей в шаблоне
  cnField_Count                = 89;
  // поля шаблона выгрузки
  cnUnLoad_Numpp               = 0;  //+ Номер по порядку
  cnUnLoad_FullFIO             = 1;  //+ Полное ФИО
  cnUnLoad_Surname             = 2;  //+ Фамилия
  cnUnLoad_Name                = 3;  //+ Имя
  cnUnLoad_Patronymic          = 4;  //+ Отчество
  cnUnLoad_TabN                = 5;  //+ Табельный номер
  cnUnLoad_Account             = 6;  //+ Номер счета
  cnUnLoad_SummaUder           = 7;  //- Сумма удержания
  cnUnLoad_SummaPer            = 8;  //- Сумма перечисления
  cnUnLoad_SummaSbor           = 9;  //- Сумма сбора
  cnUnLoad_DocumentType        = 10; //+ Тип документа
  cnUnLoad_SeriesofDocum       = 11; //+ Серия документа
  cnUnLoad_DocumentNumber      = 12; //+ Номер документа
  cnUnLoad_DateofissueDoc      = 13; //+ Дата выдачи документа
  cnUnLoad_WhoissuedDoc        = 14; //+ Кем выдан документ
  cnUnLoad_NameofOrg           = 15; //+ Наименование организации
  cnUnLoad_DateofBirth         = 16; //+ Дата рождения
  cnUnLoad_RegAddress          = 17; //+ Адрес регистрации
  cnUnLoad_ResidentAddress     = 18; //+ Адрес проживания
  cnUnLoad_AddrRegandRes       = 19; //+ Адрес регистрации+ Адрес проживания
  cnUnLoad_RegAddress2         = 20; //+ Адрес регистрации
  cnUnLoad_PhoneWork           = 21; //+ Телефон рабочий
  cnUnLoad_PhoneHome           = 22; //+ Телефон домашний
  cnUnLoad_DocSeriesNumber     = 23; //+ Серия и номер документа
  cnUnLoad_INN                 = 24; //+ ИНН
  cnUnLoad_KodGNI              = 25; //+ Код ГНИ
  cnUnLoad_CustomValue         = 26; //+ Пользовательское значение
  cnUnLoad_ConstValue1         = 27; //+ Пост. значение 1
  cnUnLoad_ConstValue2         = 28; //+ Пост. значение 2
  cnUnLoad_ConstValue3         = 29; //+ Пост. значение 3
  cnUnLoad_ConstValue4         = 30; //+ Пост. значение 4
  cnUnLoad_ConstValue5         = 31; //+ Пост. значение 5
  cnUnLoad_ConstValue6         = 32; //+ Пост. значение 6
  cnUnLoad_ConstValue7         = 33; //+ Пост. значение 7
  cnUnLoad_ConstValue8         = 34; //+ Пост. значение 8
  cnUnLoad_ConstValue9         = 35; //+ Пост. значение 9
  cnUnLoad_ConstValue10        = 36; //+ Пост. значение 10
  cnUnLoad_NumberCard          = 37; //+ Номер карточки
  cnUnLoad_AddrRegCountry      = 38; //+ Адрес регистрации (страна)
  cnUnLoad_AddrRegInd          = 39; //+ Адрес регистрации (индекс)
  cnUnLoad_AddrRegCity         = 40; //+ Адрес регистрации (город)
  cnUnLoad_AddrRegStreet       = 41; //+ Адрес регистрации (улица)
  cnUnLoad_AddrRegHouse        = 42; //+ Адрес регистрации (дом)
  cnUnLoad_AddrRegCorpus       = 43; //+ Адрес регистрации (корпус)
  cnUnLoad_AddrRegKvart        = 44; //+ Адрес регистрации (квартира)
  cnUnLoad_TotalSumUder        = 45; //- Итоговая сумма удержания по файлу
  cnUnLoad_TotalSumPer         = 46; //- Итоговая сумма перечисления по файлу
  cnUnLoad_TotalSumSbor        = 47; //- Итоговая сумма сбора по файлу
  cnUnLoad_DatePaymentOrd      = 48; //+ Дата формирования платежного поручения
  cnUnLoad_NumbPaymentOrd      = 49; //+ Номер платежного поручения
  cnUnLoad_DateFormReesr       = 50; //+ Дата формирования реестра
  cnUnLoad_RegistryNumber      = 51; //+ Номер реестра
  cnUnLoad_SessionNumber       = 52; //+ Номер сеанса
  cnUnLoad_SummaUdInWords      = 53; //- Сумма удержания прописью
  cnUnLoad_SummaPerInWords     = 54; //- Сумма перечисления прописью
  cnUnLoad_SummaSborInWords    = 55; //- Сумма сбора прописью
  cnUnLoad_TotalSumUderInWords = 56; //- Сумма удержания по файлу прописью
  cnUnLoad_TotalSumPerInWords  = 57; //- Сумма перечисления по файлу прописью
  cnUnLoad_TotalSumSborInWords = 58; //- Сумма сбора по файлу прописью
  cnUnLoad_CountRec            = 59; //+ Количество записей в файле
  cnUnLoad_CountRecInfo        = 60; //+ Количество информационных строк
  cnUnLoad_RegAddrCountryCode  = 61; //+ Адрес регистрации (код страны)
  cnUnLoad_RegAddrRegion       = 62; //+ Адрес регистрации (область/район)
  cnUnLoad_RegAddrTypeStreet   = 63; //+ Адрес регистрации (тип улицы)
  cnUnLoad_BankDepartment      = 64; //+ Отделение банка
  cnUnLoad_FilialBankDep       = 65; //+ Филиал отделения банка
  cnUnLoad_TypeofDeposit       = 66; //+ Вид вклада
  cnUnLoad_CategoryofPop       = 67; //+ Категория населения
  cnUnLoad_CheckingInformation = 68; //+ Контрольная информация
  cnUnLoad_ContractNumberBank  = 69; //+ Номер договора с банком
  cnUnLoad_ContractDateBank    = 70; //+ Дата договора с банком
  cnUnLoad_AnalyticsName       = 71; //+ Аналитика (наименование)
  cnUnLoad_DopAnalyticsName    = 72; //+ Допаналитика (наименование)
  cnUnLoad_AnalyticsValueCode  = 73; //+ Аналитика (код значения)
  cnUnLoad_DopAnalyticsValCode = 74; //+ Допаналитика (код значения)
  cnUnLoad_IIN_AlimRecipient   = 75; //+ ИИН получателя алиментов
// Beg добавлялось для Транснефти - спец
  cnUnLoad_PrzMobilBank        = 76; // Признак подключения мобильного банка
  cnUnLoad_PrzEmailReport      = 77; // Признак рассылки отчетов по электронной почте
  cnUnLoad_IDBonusProgram      = 78; // Идентификатор бонусной программы
  cnUnLoad_NumberofpartBonusPr = 79; // Номер участника в бонусной программе
// End добавлялось для Транснефти - спец
  cnUnLoad_NameInLatinLetters  = 80; //+ Имя Фамилия латинскими буквами
  cnUnLoad_PlaceofBirth        = 81; //+ Место рождения
  cnUnLoad_DepartmentCodeDocum = 82; //+ Код подразделения документа
  cnUnLoad_SNILS               = 83; //+ СНИЛС
  cnUnLoad_CurrentAccountofOrg = 84; //+ Расчетный счет организации
  cnUnLoad_BIKOrganizations    = 85; //+ БИК организации
  cnUnLoad_PaymentDetails      = 86; //+ Детали платежа
  cnUnLoad_Gender              = 87; //+ Пол
  cnUnLoad_DateofEmployment    = 88; //+ Дата приема
  cnUnLoad_Position            = 89; //+ Должность
end;
