//-----------------------------------------------------------------------------
// Галактика 8.10 - заработная плата                   (c) корпорация ГАЛАКТИКА
// XML форма на формирование реестров В ФСС
//-----------------------------------------------------------------------------
#doc
XML форма на формирование реестров В ФСС
#end

.set name = 'rXMLtoFSS'
.hide
.set filler = '-'
.fields
  Version           // Версия реестра
  VersionSoftware   // Версия программы
  Author            // ФИО составителя
  Phone             // Телефон составителя
  Email             // Email Составителя
  Kpp               // EMPL_KPP
  Inn               // EMPL_INN
  OGRN              // EMPL_OGRN
  RegNo             // EMPL_REG_NO
.endfields
^^^^^^^^^
.fields            // поля по циклу
  FileName         //  Имя файла
  GetDocType       //  Тип реестра
  DateReesForm     //  Дата формирования реестра
  SNILS            //  СНИЛС
  InnPerson        //  ИНН сотрудника
  SurName          //  Фамилия
  FirstName        //  Имя
  SecName          //  Отчество
  RezOrNoRez       //  Резидент
  ResidentCode     //  Код страны
  IdType           //  Код документа
  IdNo             //  Номер документа
  IdDt             //  Дата документа
  IdDept           //  Кем выдан
  PaymentType      //  Тип оплаты
//- адрес проживания ----
  AddrKladr        //  Адрес по КЛАДР
  AddrA1           //  Субъект
  AddrA2           //  Район
  AddrA3           //  Город
  AddrA4           //  Населенный пункт
  AddrA5           //  Улица
  AddrHouse        //  Номер дома
  PostIndex        //  Индекс
  AddrBuilding     //  Корпус
  AddrFlat         //  Квартира
  VidReestr        //  Вид реестра
//- адрес регистрации ----
  Addr2            //  Адрес регистрации
  Addr2Kladr       //  Адрес по КЛАДР
  Addr2A1          //  Субъект
  Addr2A2          //  Район
  Addr2A3          //  Город
  Addr2A4          //  Населенный пункт
  Addr2A5          //  Улица
  PostIndex2       //  Индекс
  Addr2House       //  Номер дома
  Addr2Building    //  Корпус
  Addr2Flat        //  Квартира
  DublicateFlag    //  Дубликат б/л
  ReasonEmpl       //  Пострадавший на другом предприятии
  OwnerFlag        //  Получатель пособия
  SurName2         //  Фамилия
  FirstName2       //  Имя
  SecName2         //  Отчество
  Id2Type          //  Код документа
  Id2No            //  Номер документа
  Id2Dt            //  Дата документа
  Id2Dept          //  Кем выдан
  AccountBic       //  БИК
  AccountName      //  Наименование банка
  Account          //  Номер счета
//-- Данные страхователя
  Employer         //  Страхователь
  EmplFlag         //  Вид работы
  EmplOgrn         //  ОГРН страхователя
  EmplRegNo        //  Pег № страхователя
  EmplParentNo     //  Код подчиненности
  EmplKpp          //  КПП страхователя
  EmplInn          //  ИНН страхователя
//------------Руководство-------------
  FIO_Boss         //  ФИО руководителя
  Post_Boss        //  Должность руководителя
  FIO_Buh          //  ФИО бухгалтера
  RecalcReasonCode //  Причина перерасчета
  YearChangeFlag   //  Признак замены годов
  Year1Old         //  Год 1 изменения
  Year2Old         //  Год 2 изменения
!-------расчетный период--------------
  Year1            //  Год на кот заменили 1
  Year2            //  Год на кот заменили 2
  BaseSum1         //  Сумма заработка за год 1
  BaseSum2         //  Сумма заработка за год 2
  CalcPeriodStart  //  Расчетный период для пособий по материнству
  CalcPeriodFinish //  Расчетный период для пособий по материнству
  MseDt1           //  Дата направления в бюро МСЭ
  MseDt2           //  Дата регистрации документов в бюро МСЭ
  MseDt3           //  Дата освидетельствования в бюро МСЭ
  MseInvalidGroup  //  Установлена/изменена группа инвалидности
  MseInvaliDays    //  кол-во календарных дней, используемых в текущем году по нетрудоспособности
  MseResult        //  Изменение статуса нетрудоспособного
  OtherStateDt     //  Дата изменения состояния нетрудоспособного
  ReturnDateLpu    //  Дата выхода на работу
  BaseAvgSal       //  Средний заработок
  RoleWage         //  Должностной оклад
  BaseCalcDays     //  Число календарных дней
  InsurYY          //  Стаж страховой год
  InsurMM          //  Стаж страховой месяц
  NotInsurYY       //  Стаж не страховой год
  NotInsurMM       //  Стаж не страховой месяц
  LiveCodeFlag     //  Признак условия проживания
  LiveCode         //  Код условия проживания
  RefNpayOtherNo   //  справка от другого родителя о неполучении пособия номер
  RefNpayOtherDt   //  справка от другого родителя о неполучении пособия дата
  RefNpayFatherNo  //  справка о неполучении пособия от отца номер
  RefNpayFatherDt  //  справка о неполучении пособия от отца дата
  RefNpayMotherNo  //  справка о неполучении пособия от матери номер
  RefNpayMotherDt  //  справка о неполучении пособия от матери дата
  WardRefFlag      //  усыновление/опека
  WardRefNo        //  усыновление/опека
  WardRefDt        //  усыновление/опека
  RefFamilyNo      //  договор о передаче в приемную семью номер
  RefFamilyDt      //  договор о передаче в приемную семью дата
  Multipatr        //  одновременный уход за несколькими детьми
  AvgSal           //  среднемесячный заработок
//--------- Свидетельство о рождении ---------------------------
  CertType         //  тип документа
  oCertNo          //  Иной документ подтверждающий  рождение номер
  oCertDt          //  Иной документ подтверждающий  рождение  дата
  CertNo           //  номер документа
  CertDt           //  дата документа
  CertBr           //  дата рождения
  CertSurName      //  фамилия
  CertName         //  имя
  CertPatronimic   //  отчество
//------- Справка о рождении
  Ref24No          //  справка о рождении номер
  Ref24Dt          //  справка о рождении дата
//------- Трудовой договор
  WorkConStart     //  дата начала
  WorkConFinish    //  дата окончания
//------- Данные об отпуске
  HolidOrdNo       //  номер приказа
  HolidOrdDt       //  дата приказа
  HolidDtSt        //  дата начала отпуска
  HolidDtFn        //  дата окончания отпуска
  Dt2Fact          //  Дата фактического окончания периода выплаты пособия
  ChildSer         //  Очередность рождения
  MhOut            //  Отметка о лишении материнства
  OtherChildBr     //  Наличие док о др ребенке о рождении
  OtherChildDt     //  Наличие док о др ребенке о смерти
//------- условия исчисления
  CalcCondition1   //  условия исчисления 1
  CalcCondition2   //  условия исчисления 2
  CalcCondition3   //  условия исчисления 3
// --- Больничный лист
  LnCode           //  № больничного
  LnDate           //  Дата начала больничного
  Reason1          //  Код причины нетрудоспособности
  Reason2          //  Доп код причины нетрудоспособности
  Reason3          //  Код изменения причины нетрудоспособности
  Date1            //  Дата изменения причины
  Date2            //  Дата
  VoucherNo        //  Номер путевки в санаторий
  VoucherOgrn      //  Огрн санатория
  CalcDays         //  Количество дней болезни
  Form1Dt          //  Дата формы Н -1
  Serv1            //  Nrec родственника
  Serv1Age         //  Возраст лет
  Serv1Mm          //  Возраст мес
  Serv1RelCode     //  Код родственной связи
  Serv1Fio         //  ФИО родственника
  Serv2            //  Nrec родственника
  Serv2Age         //  Возраст лет
  Serv2Mm          //  Возраст мес
  Serv2RelCode     //  Код родственной связи
  Serv2Fio         //  ФИО родственника
  HospitalDT1      //  Дата пребывания в госпитале
  HospitalDT2      //  Дата пребывания в госпитале
  FssPayFlag       //  Флаг периода оплаты за счет ФСС
  DT1              //  Дата периода расчета
  DT2              //  Дата периода расчета
  PrimaryFlag      //  Первичный или продолжение
  PrevLnCode       //  Номер первичного больничного
  BlProd           //  Признак наличия продолжающегося больничного
  NextLnCode       //  Номер продолжающегося больничного
  CalcMetod        //  Расчет по закону
  LpuName          //  Наименование ЛПУ
  LpuAdress        //  адрес ЛПУ
  LpuOgrn          //  ОГРН ЛПУ
  Birthday         //  Дата рождения
  Gender           //  Пол
  HospitalBrCode   //  Код нарушения режима
  HospitalBrDt     //  Дата нарушения режима
// ---- ОПЛАТА -------------------
  EmplPayment      //  Сумма за счет предприятия
  FssPayment       //  Сумма за счет ФСС
//------ данные о враче ---------------
  Treat1Dt1
  Treat1Dt2
  Treat1DocRole
  Treat1Doctor
  Treat1DocId
  Treat1Doc2Role
  Treat1Chairman
  Treat1Doc2Id
//----------------------------------------------------------
  Treat2Dt1
  Treat2Dt2
  Treat2DocRole
  Treat2Doctor
  Treat2DocId
  Treat2Doc2Role
  Treat2Chairman
  Treat2Doc2Id
//-----------------------------------------------------------
  Treat3Dt1
  Treat3Dt2
  Treat3DocRole
  Treat3Doctor
  Treat3DocId
  Treat3Doc2Role
  Treat3Chairman
  Treat3Doc2Id
// Постановка на учет в ранние сроки беременности
  Pregn12WFlag              // Признак постановки на учет
  Ref12WeekNo               // Номер справки
  Ref12WeekDt               // Дата справки
  KfReg                     // Районный коэффициент
  KfShortDay                // Коэф. неполного раб. дня
  BaseAvgDailySal           // Среднедневной заработок
  Payment                   // Фактически выплаченная сумма
! поля по простоям
  prProstoi                 // признак наличия простоев
//-------------------------------------------
  StartDate
  EndDate
  IdleAverage
.endfields
.{ rXMLtoFSS_Persons CheckEnter
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
!
.{ rXMLtoFSS_Prostoi CheckEnter
   ^^^
.}
!
.}
!
.begin
 rXMLtoFSS.fExit;
end.
.endform
!
!
!
!
.Linkform 'rXMLtoFSS_1.7.3' prototype 'rXMLtoFSS'
.nameinlist 'XML форма на формирование реестров В ФСС'
.F 'rXMLtoFSS_1.6.xml'
!
.var
  Npp,                 //  Номер по порядку
  TypeInfo : word;     //  Признак перерасчета
.endvar
!
.fields
  Version           // Версия реестра
  VersionSoftware   // Версия программы
  Author            // ФИО составителя
  Phone             // Телефон составителя
  Email             // Email Составителя
  Kpp               // EMPL_KPP
  Inn               // EMPL_INN
  OGRN              // EMPL_OGRN
  RegNo             // EMPL_REG_NO
.endfields
!
<?xml version="1.0" encoding="windows-1251"?>
<ROWSET version="^" software="Galaktika"
        version_software ="^"
        author="^"
        phone="^"
        email="^"
.{?INTERNAL; ( Kpp <> '' )
        EMPL_KPP="^"
.}
        EMPL_INN="^"
.{?INTERNAL; ( OGRN <> '' )
        EMPL_OGRN="^"
.}
        EMPL_REG_NO="^">
!---------------------
.begin
  Npp := 0;
end.
!
.fields            // поля по циклу
  FileName         //  Имя файла
  Npp              //  Номер по порядку
  TypeInfo         //  Признак перерасчета
  RecalcReasonCode //  Причина перерасчета
  GetDocType       //  Тип реестра
  DateReesForm     //  Дата формирования реестра
  SNILS            //  СНИЛС
  InnPerson        //  ИНН сотрудника
  SurName          //  Фамилия
  FirstName        //  Имя
  SecName          //  Отчество
  RezOrNoRez       //  Резидент
  ResidentCode     //  Код страны
  IdType           //  Код документа
  IdNo             //  Номер документа
  IdDt             //  Дата документа
  IdDept           //  Кем выдан
  //- адрес проживания ----
  AddrKladr        //  Адрес по КЛАДР
  AddrA1           //  Субъект
  AddrA2           //  Район
  AddrA3           //  Город
  AddrA4           //  Населенный пункт
  AddrA5           //  Улица
  AddrHouse        //  Номер дома
  AddrBuilding     //  Корпус
  AddrFlat         //  Квартира
  PostIndex        //  Индекс
  OwnerFlag        //  Получатель пособия
  PaymentType      //  Тип оплаты
  AccountBic       //  БИК
  AccountName      //  Наименование банка
  Account          //  Номер счета
  SurName2         //  Фамилия
  FirstName2       //  Имя
  SecName2         //  Отчество
  Id2Type          //  Код документа
  Id2No            //  Номер документа
  Id2Dt            //  Дата документа
  Id2Dept          //  Кем выдан
 //- адрес регистрации ----
  Addr2            //  Адрес регистрации
  Addr2Kladr       //  Адрес по КЛАДР
  Addr2A1          //  Субъект
  Addr2A2          //  Район
  Addr2A3          //  Город
  Addr2A4          //  Населенный пункт
  Addr2A5          //  Улица
  Addr2House       //  Номер дома
  Addr2Building    //  Корпус
  Addr2Flat        //  Квартира
  PostIndex2       //  Индекс
  Employer         //  Страхователь
  EmplFlag         //  Вид работы
  EmplOgrn         //  ОГРН страхователя
  EmplRegNo        //  Pег № страхователя
  EmplParentNo     //  Код подчиненности
  EmplKpp          //  КПП страхователя
  EmplInn          //  ИНН страхователя
//------------Руководство-------------
  FIO_Boss         //  ФИО руководителя
  Post_Boss        //  Должность руководителя
  FIO_Buh          //  ФИО бухгалтера
//------- Трудовой договор
  WorkConStart     //  дата начала
  WorkConFinish    //  дата окончания
  RoleWage         //  Должностной оклад
  BaseCalcDays     //  Число календарных дней
  BaseCalcDays     //  Число календарных дней
  BaseAvgSal       //  Средний заработок
  AvgSal           //  среднемесячный заработок
  Multipatr        //  одновременный уход за несколькими детьми
  BaseAvgDailySal  // Среднедневной заработок
  YearChangeFlag   //  Признак замены годов
  Year1Old         //  Год 1 изменения
  Year2Old         //  Год 2 изменения
!-------расчетный период--------------
  Year1            //  Год на кот заменили 1
  Year2            //  Год на кот заменили 2
  BaseSum1         //  Сумма заработка за год 1
  BaseSum2         //  Сумма заработка за год 2
  KfReg            //  Районный коэффициент
  KfShortDay       //  Коэф. неполного раб. дня
  LiveCodeFlag     //  Признак условия проживания
  LiveCode         //  Код условия проживания
  CalcPeriodStart  //  Расчетный период для пособий по материнству
  CalcPeriodFinish //  Расчетный период для пособий по материнству
  InsurYY          //  Стаж страховой год
  InsurMM          //  Стаж страховой месяц
  NotInsurYY       //  Стаж не страховой год
  NotInsurMM       //  Стаж не страховой месяц
 // --- Больничный лист
  LnCode           //  № больничного
  PrevLnCode       //  Номер первичного больничного
  PrimaryFlag      //  Первичный или продолжение
  DublicateFlag    //  Дубликат б/л
  LnDate           //  Дата начала больничного
  LpuName          //  Наименование ЛПУ
  LpuAdress        //  адрес ЛПУ
  LpuOgrn          //  ОГРН ЛПУ
  Birthday         //  Дата рождения
  Gender           //  Пол
  Reason1          //  Код причины нетрудоспособности
  Reason2          //  Доп код причины нетрудоспособности
  Reason3          //  Код изменения причины нетрудоспособности
  LnCode           //  № больничного на основном месте работы
  Date1            //  Дата изменения причины
  Date2            //  Дата
  VoucherNo        //  Номер путевки в санаторий
  VoucherOgrn      //  Огрн санатория
  Serv1Age         //  Возраст лет
  Serv1Mm          //  Возраст мес
  Serv1RelCode     //  Код родственной связи
  Serv1Fio         //  ФИО родственника
  Serv2Age         //  Возраст лет
  Serv2Mm          //  Возраст мес
  Serv2RelCode     //  Код родственной связи
  Serv2Fio         //  ФИО родственника
! Постановка на учет в ранние сроки беременности
  Pregn12WFlag     //  Признак постановки на учет
  HospitalDT1      //  Дата пребывания в госпитале
  HospitalDT2      //  Дата пребывания в госпитале
  HospitalBrCode   //  Код нарушения режима
  HospitalBrDt     //  Дата нарушения режима
!
  MseDt1           //  Дата направления в бюро МСЭ
  MseDt2           //  Дата регистрации документов в бюро МСЭ
  MseDt3           //  Дата освидетельствования в бюро МСЭ
  MseInvalidGroup  //  Установлена/изменена группа инвалидности
  MseInvaliDays    //  кол-во календарных дней, используемых в текущем году по нетрудоспособности
  MseResult        //  Изменение статуса нетрудоспособного
//------ данные о враче ---------------
  Treat1Dt1
  Treat1Dt2
  Treat1DocRole
  Treat1Doctor
  Treat1DocId
  Treat1Doc2Role
  Treat1Chairman
  Treat1Doc2Id
//----------------------------------------------------------
  Treat2Dt1
  Treat2Dt2
  Treat2DocRole
  Treat2Doctor
  Treat2DocId
  Treat2Doc2Role
  Treat2Chairman
  Treat2Doc2Id
//-----------------------------------------------------------
  Treat3Dt1
  Treat3Dt2
  Treat3DocRole
  Treat3Doctor
  Treat3DocId
  Treat3Doc2Role
  Treat3Chairman
  Treat3Doc2Id
  OtherStateDt     //  Дата изменения состояния нетрудоспособного
  ReturnDateLpu    //  Дата выхода на работу
  NextLnCode       //  Номер продолжающегося больничного
  CalcMetod        //  Расчет по закону
//------- условия исчисления
  CalcCondition1   //  условия исчисления 1
  CalcCondition2   //  условия исчисления 2
  CalcCondition3   //  условия исчисления 3
  Form1Dt          //  Дата формы Н -1
  FssPayFlag       //  Флаг периода оплаты за счет ФСС
  DT1              //  Дата периода расчета
  DT2              //  Дата периода расчета
  CalcDays         //  Количество дней болезни
  Dt2Fact          //  Дата фактического окончания периода выплаты пособия
 // ---- ОПЛАТА -------------------
  EmplPayment      //  Сумма за счет предприятия
  FssPayment       //  Сумма за счет ФСС
  Payment          // Фактически выплаченная сумма
//--------- Свидетельство о рождении ---------------------------
  CertType         //  тип документа
  CertNo           //  номер документа
  CertDt           //  дата документа
  CertBr           //  дата рождения
  CertSurName      //  фамилия
  CertName         //  имя
  CertPatronimic   //  отчество
  Ref24No          //  справка о рождении номер
  Ref24Dt          //  справка о рождении дата
  oCertNo          //  Иной документ подтверждающий  рождение номер
  oCertDt          //  Иной документ подтверждающий  рождение  дата
  ChildSer         //  Очередность рождения
  MhOut            //  Отметка о лишении материнства
//------- Данные об отпуске
  HolidOrdNo       //  номер приказа
  HolidOrdDt       //  дата приказа
  HolidDtSt        //  дата начала отпуска
  HolidDtFn        //  дата окончания отпуска
  RefNpayOtherNo   //  справка от другого родителя о неполучении пособия номер
  RefNpayOtherDt   //  справка от другого родителя о неполучении пособия дата
  WardRefFlag      //  усыновление/опека
  WardRefNo        //  усыновление/опека
  WardRefDt        //  усыновление/опека
  RefFamilyNo      //  договор о передаче в приемную семью номер
  RefFamilyDt      //  договор о передаче в приемную семью дата
  OtherChildBr     //  Наличие док о др ребенке о рождении
  OtherChildDt     //  Наличие док о др ребенке о смерти
  RefNpayFatherNo  //  справка о неполучении пособия от отца номер
  RefNpayFatherDt  //  справка о неполучении пособия от отца дата
  RefNpayMotherNo  //  справка о неполучении пособия от матери номер
  RefNpayMotherDt  //  справка о неполучении пособия от матери дата
// Постановка на учет в ранние сроки беременности
  Ref12WeekNo      // Номер справки
  Ref12WeekDt      // Дата справки
  ReasonEmpl       //  Пострадавший на другом предприятии
! поля по простоям
  StartDate
  EndDate
  IdleAverage
.endfields
!
.{ rXMLtoFSS_Persons CheckEnter
!
.begin
  Inc(Npp);
  // Признак перерасчета
  if (RecalcReasonCode <> '' )
    TypeInfo := 1
  else
    TypeInfo := 0;
end.
!
  <ROW>
    <BATCH_NO>^:^</BATCH_NO>
!----- Причина перерасчета
    <TYPE_INFO>^</TYPE_INFO>
.{?INTERNAL; ( TypeInfo = 1 )
    <RECALC_REASON_CODE>^</RECALC_REASON_CODE>
.}
    <DOC_TYPE>^</DOC_TYPE>
    <DOC_DT1>^</DOC_DT1>
    <SNILS>^</SNILS>
.{?INTERNAL; ( InnPerson <> '' )
    <INN_PERSON>^</INN_PERSON>
.}
    <SURNAME>^</SURNAME>
    <NAME>^</NAME>
.{?INTERNAL; ( SecName <> '' )
    <PATRONIMIC>^</PATRONIMIC>
.}
    <RESIDENT_FLAG>^</RESIDENT_FLAG>
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
.{?INTERNAL; ( RezOrNoRez = 0 ) or ( RezOrNoRez = 2 )
    <RESIDENT_CODE>^</RESIDENT_CODE>
.}
.}
!
    <ID_TYPE>^</ID_TYPE>
    <ID_NO>^</ID_NO>
    <ID_DT>^</ID_DT>
    <ID_DEPT>^</ID_DEPT>
! если тип оплаты 0 - Почтовый перевод
.{?INTERNAL; ( PaymentType = '0' )
    <ADDR_KLADR>^</ADDR_KLADR>
.{?INTERNAL; ( AddrA1 <> '' )
    <ADDR_A1>^</ADDR_A1>
.}
.{?INTERNAL; ( AddrA2 <> '' )
    <ADDR_A2>^</ADDR_A2>
.}
.{?INTERNAL; ( AddrA3 <> '' )
    <ADDR_A3>^</ADDR_A3>
.}
.{?INTERNAL; ( AddrA4 <> '' )
    <ADDR_A4>^</ADDR_A4>
.}
.{?INTERNAL; ( AddrA5 <> '' )
    <ADDR_A5>^</ADDR_A5>
.}
.{?INTERNAL; ( AddrHouse <> '' )
    <ADDR_HOUSE>^</ADDR_HOUSE>
.}
!
.{?INTERNAL; ( AddrBuilding <> '' )
    <ADDR_BUILDING>^</ADDR_BUILDING>
.}
!
.{?INTERNAL; ( AddrFlat <> '' )
    <ADDR_FLAT>^</ADDR_FLAT>
.}
    <POST_INDEX>^</POST_INDEX>
.} // ( PaymentType = '0' )!
    <OWNER_FLAG>^</OWNER_FLAG>
    <PAYMENT_TYPE>^</PAYMENT_TYPE>
! Если оплата через банк
.{?INTERNAL; ( PaymentType = 1 )
    <ACCOUNT_BIC>^</ACCOUNT_BIC>
    <ACCOUNT_NAME>^</ACCOUNT_NAME>
    <ACCOUNT>^</ACCOUNT>
.}
! Если получатель пособия 0- уполномоченный представитель
.{?INTERNAL; ( OwnerFlag = '0' )
    <SURNAME2>^</SURNAME2>
    <NAME2>^</NAME2>
.{?INTERNAL; ( SecName2 <> '' )
    <PATRONIMIC2>^</PATRONIMIC2>
.}
.{?INTERNAL; ( Id2Type <> '' )
    <ID2_TYPE>^</ID2_TYPE>
.{?INTERNAL; ( Id2No <> '' )
    <ID2_NO>^</ID2_NO>
.}
.{?INTERNAL; ( Id2Dt <> '' )
    <ID2_DT>^</ID2_DT>
.}
.{?INTERNAL; ( Id2Dept <> '' )
    <ID2_DEPT>^</ID2_DEPT>
.}
.}
.}
!
.{?INTERNAL; ( Addr2 <> '' )
    <ADDR2>^</ADDR2>
.}
.{?INTERNAL; ( Addr2Kladr <> '' )
    <ADDR2_KLADR>^</ADDR2_KLADR>
.}
.{?INTERNAL; ( Addr2A1 <> '' )
    <ADDR2_A1>^</ADDR2_A1>
.}
.{?INTERNAL; ( Addr2A2 <> '' )
    <ADDR2_A2>^</ADDR2_A2>
.}
.{?INTERNAL; ( Addr2A3 <> '' )
    <ADDR2_A3>^</ADDR2_A3>
.}
.{?INTERNAL; ( Addr2A4 <> '' )
    <ADDR2_A4>^</ADDR2_A4>
.}
.{?INTERNAL; ( Addr2A5 <> '' )
    <ADDR2_A5>^</ADDR2_A5>
.}
.{?INTERNAL; ( Addr2House <> '' )
    <ADDR2_HOUSE>^</ADDR2_HOUSE>
.}
.{?INTERNAL; ( Addr2Building <> '' )
    <ADDR2_BUILDING>^</ADDR2_BUILDING>
.}
.{?INTERNAL; ( Addr2Flat <> '' )
    <ADDR2_FLAT>^</ADDR2_FLAT>
.}
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
.{?INTERNAL; ( PostIndex2 <> '' )
    <POST_INDEX2>^</POST_INDEX2>
.}
.}
!-- Данные страхователя
    <EMPLOYER>^</EMPLOYER>
    <EMPL_FLAG>^</EMPL_FLAG>
.{?INTERNAL; ( EmplOgrn <> '' )
    <EMPL_OGRN>^</EMPL_OGRN>
.}
    <EMPL_REG_NO>^</EMPL_REG_NO>
    <EMPL_PARENT_NO>^</EMPL_PARENT_NO>
.{?INTERNAL; ( EmplKpp <> '' )
    <EMPL_KPP>^</EMPL_KPP>
.}
    <EMPL_INN>^</EMPL_INN>
!------------Руководство-------------
    <APPROVE1>^</APPROVE1>
.{?INTERNAL; ( Post_Boss <> '' )
    <APPROVE1_ROLE>^</APPROVE1_ROLE>
.}
.{?INTERNAL; ( FIO_Buh <> '' )
    <APPROVE2>^</APPROVE2>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! Трудовой договор
    <WORK_CONTRACT_START_DT>^</WORK_CONTRACT_START_DT>
    <WORK_CONTRACT_FINISH_DT>^</WORK_CONTRACT_FINISH_DT>
.}
!----------------  Должностной оклад
.{?INTERNAL; ( BaseAvgSal = 0 ) and ( CalcMetod = 0 )
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <ROLE_WAGE>^</ROLE_WAGE>
.}
.}
!----------- Число календарных дней --------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
!----------- средний заработок ---------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_AVG_SAL>^</BASE_AVG_SAL>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
.{?INTERNAL; ( Multipatr = '1' )
    <AVG_SAL>^</AVG_SAL>
.}
    <MULTPATR>^</MULTPATR>
.}
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
.{?INTERNAL; ( BaseAvgDailySal > 0 )
    <BASE_AVG_DAILY_SAL>^</BASE_AVG_DAILY_SAL>
.}
!------------Отметка о замене годов для расчета
.{?INTERNAL; ( CalcMetod = 1 )
!
.{?INTERNAL; ( YearChangeFlag <> '' )
    <YEAR_CHANGE_FLAG>^</YEAR_CHANGE_FLAG>
!
.{?INTERNAL; ( YearChangeFlag = 1 )
    <YEAR1_OLD>^</YEAR1_OLD>
    <YEAR2_OLD>^</YEAR2_OLD>
.}
.}
!-------расчетный период--------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild )
    <YEAR1>^</YEAR1>
    <YEAR2>^</YEAR2>
.}
.} // ( CalcMetod = 1 )
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_SUM1>^</BASE_SUM1>
    <BASE_SUM2>^</BASE_SUM2>
.}
.}  // cn_vpYhodChild  cn_vpNetrud  cn_vpBerem  cn_vpTravma  cn_vpRanBerem
    <KF_REG>^</KF_REG>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <KF_SHORT_DAY>^</KF_SHORT_DAY>
.}
!------Условия проживания\работы-------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) and ( LiveCode <> '' )
    <LIVE_COND_FLAG>^</LIVE_COND_FLAG>
    <LIVE_COND>^</LIVE_COND>
.}
!
.{?INTERNAL; ( CalcMetod = 0 )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <CALC_MH_PERIOD_START>^</CALC_MH_PERIOD_START>
    <CALC_MH_PERIOD_FINISH>^</CALC_MH_PERIOD_FINISH>
.}
.}
!------------ Стаж ---------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <INSUR_YY>^</INSUR_YY>
    <INSUR_MM>^</INSUR_MM>
.{?INTERNAL; ( NotInsurYY > 0 )
    <NOT_INSUR_YY>^</NOT_INSUR_YY>
.}
.{?INTERNAL; ( NotInsurMM > 0 )
    <NOT_INSUR_MM>^</NOT_INSUR_MM>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! Больничный лист
    <LN_CODE>^</LN_CODE>
! номер первичного больничного
.{?INTERNAL; ( PrimaryFlag = '0' )
    <PREV_LN_CODE>^</PREV_LN_CODE>
.}
!
    <PRIMARY_FLAG>^</PRIMARY_FLAG>
    <DUPLICATE_FLAG>^</DUPLICATE_FLAG>
    <LN_DATE>^</LN_DATE>
    <LPU_NAME>^</LPU_NAME>
.{?INTERNAL; ( LpuAdress <> '' )
    <LPU_ADDRESS>^</LPU_ADDRESS>
.}
    <LPU_OGRN>^</LPU_OGRN>
.} // Больничный лист
!
    <BIRTHDAY>^</BIRTHDAY>
    <GENDER>^</GENDER>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <REASON1>^</REASON1>
.{?INTERNAL; ( Reason2 > '' )
    <REASON2>^</REASON2>
.}
.{?INTERNAL; ( Reason3 > '' )
    <REASON3>^</REASON3>
.}
!
.{?INTERNAL; ( EmplFlag = 0 )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <PARENT_CODE>^</PARENT_CODE>
.}
.}
!
.{?INTERNAL; ( Date1 <> '' )
    <DATE1>^</DATE1>
.}
.{?INTERNAL; ( Date2 <> '' )
    <DATE2>^</DATE2>
.{?INTERNAL; ( VoucherNo <> '' )
    <VOUCHER_NO>^</VOUCHER_NO>
.}
    <VOUCHER_OGRN>^</VOUCHER_OGRN>
.}
!
.{?INTERNAL; ( Serv1 <> '' )
    <SERV1_AGE>^</SERV1_AGE>
    <SERV1_MM>^</SERV1_MM>
    <SERV1_RELATION_CODE>^</SERV1_RELATION_CODE>
    <SERV1_FIO>^</SERV1_FIO>
.}
.{?INTERNAL; ( Serv2 <> '' )
    <SERV2_AGE>^</SERV2_AGE>
    <SERV2_MM>^</SERV2_MM>
    <SERV2_RELATION_CODE>^</SERV2_RELATION_CODE>
.{?INTERNAL; ( Serv2Fio <> '' )
    <SERV2_FIO>^</SERV2_FIO>
.}
.}
.} // ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
!
.{?INTERNAL; ( VidReestr = cn_vpBerem )
    <PREGN12W_FLAG>^</PREGN12W_FLAG>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
!
.{?INTERNAL; ( HospitalDt1 <> '' )
    <HOSPITAL_DT1>^</HOSPITAL_DT1>
    <HOSPITAL_DT2>^</HOSPITAL_DT2>
.}
!
! нарушение режима
.{?INTERNAL; ( HospitalBrCode <> 0 )
    <HOSPITAL_BREACH_CODE>^</HOSPITAL_BREACH_CODE>
    <HOSPITAL_BREACH_DT>^</HOSPITAL_BREACH_DT>
.}
.{?INTERNAL; ( MseDt1 <> '' )
    <MSE_DT1>^</MSE_DT1>
.}
.{?INTERNAL; ( MseDt2 <> '' )
    <MSE_DT2>^</MSE_DT2>
.}
.{?INTERNAL; ( MseDt3 <> '' )
    <MSE_DT3>^</MSE_DT3>
.}
.{?INTERNAL; ( MseInvalidGroup > 0 )
    <MSE_INVALID_GROUP>^</MSE_INVALID_GROUP>
.}
.{?INTERNAL; ( MseInvaliDays > 0 )
    <MSE_INVALID_DAYS>^</MSE_INVALID_DAYS>
.}
.{?INTERNAL; ( MseResult <> '' )
    <MSE_RESULT>^</MSE_RESULT>
.}
! данные о враче
.{?INTERNAL; ( Treat1Doctor <> '' )
    <TREAT1_DT1>^</TREAT1_DT1>
    <TREAT1_DT2>^</TREAT1_DT2>
    <TREAT1_DOCTOR_ROLE>^</TREAT1_DOCTOR_ROLE>
    <TREAT1_DOCTOR>^</TREAT1_DOCTOR>
.{?INTERNAL; ( Treat1DocId <> '' )
    <TREAT1_DOC_ID>^</TREAT1_DOC_ID>
.}
.{?INTERNAL; ( Treat1Doc2Role <> '' )
    <TREAT1_DOCTOR2_ROLE>^</TREAT1_DOCTOR2_ROLE>
.}
.{?INTERNAL; ( Treat1Chairman <> '' )
    <TREAT1_CHAIRMAN_VK>^</TREAT1_CHAIRMAN_VK>
.}
.{?INTERNAL; ( Treat1Doc2Id <> '' )
    <TREAT1_DOC2_ID>^</TREAT1_DOC2_ID>
.}
.}
!----------------------------------------------------------
.{?INTERNAL; ( Treat2Doctor <> '' )
    <TREAT2_DT1>^</TREAT2_DT1>
    <TREAT2_DT2>^</TREAT2_DT2>
    <TREAT2_DOCTOR_ROLE>^</TREAT2_DOCTOR_ROLE>
    <TREAT2_DOCTOR>^</TREAT2_DOCTOR>
.{?INTERNAL; ( Treat2DocId <> '' )
    <TREAT2_DOC_ID>^</TREAT2_DOC_ID>
.}
.{?INTERNAL; ( Treat2Doc2Role <> '' )
    <TREAT2_DOCTOR2_ROLE>^</TREAT2_DOCTOR2_ROLE>
.}
.{?INTERNAL; ( Treat2Chairman <> '' )
    <TREAT2_CHAIRMAN_VK>^</TREAT2_CHAIRMAN_VK>
.}
.{?INTERNAL; ( Treat2Doc2Id <> '' )
    <TREAT2_DOC2_ID>^</TREAT2_DOC2_ID>
.}
.}
!-----------------------------------------------------------
.{?INTERNAL; ( Treat3Doctor <> '' )
    <TREAT3_DT1>^</TREAT3_DT1>
    <TREAT3_DT2>^</TREAT3_DT2>
    <TREAT3_DOCTOR_ROLE>^</TREAT3_DOCTOR_ROLE>
    <TREAT3_DOCTOR>^</TREAT3_DOCTOR>
.{?INTERNAL; ( Treat3DocId <> '' )
    <TREAT3_DOC_ID>^</TREAT3_DOC_ID>
.}
.{?INTERNAL; ( Treat3Doc2Role <> '' )
    <TREAT3_DOCTOR2_ROLE>^</TREAT3_DOCTOR2_ROLE>
.}
.{?INTERNAL; ( Treat3Chairman <> '' )
    <TREAT3_CHAIRMAN_VK>^</TREAT3_CHAIRMAN_VK>
.}
.{?INTERNAL; ( Treat3Doc2Id <> '' )
    <TREAT3_DOC2_ID>^</TREAT3_DOC2_ID>
.}
.}
.{?INTERNAL; ( OtherStateDt <> '' )
    <OTHER_STATE_DT>^</OTHER_STATE_DT>
.}
!  дата выхода на работу
.{?INTERNAL; ( MseResult = '' )
    <RETURN_DATE_LPU>^</RETURN_DATE_LPU>
.}
!
.{?INTERNAL; ( BlProd = '1' ) and ( MseResult = '31' )
    <NEXT_LN_CODE>^</NEXT_LN_CODE>
.}
.}// ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <CALC_METHOD>^</CALC_METHOD>
!------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! условия исчисления
.{?INTERNAL; ( CalcCondition1 <> '' )
    <CALC_CONDITION1>^</CALC_CONDITION1>
.}
.{?INTERNAL; ( CalcCondition2 <> '' )
    <CALC_CONDITION2>^</CALC_CONDITION2>
.}
.{?INTERNAL; ( CalcCondition3 <> '' )
    <CALC_CONDITION3>^</CALC_CONDITION3>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
!
.{?INTERNAL; ( Form1Dt <> '' )
    <FORM1_DT>^</FORM1_DT>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <FSS_PAYMENT_FLAG>^</FSS_PAYMENT_FLAG>
.}
!
.{?INTERNAL; ( FssPayFlag = 1 )
    <DT1>^</DT1>
    <DT2>^</DT2>
.}
.}// ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
!
.{?INTERNAL; ( VidReestr = cn_vpOtpusk )
    <CALC_DAYS>^</CALC_DAYS>
.}
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <DT2_FACT>^</DT2_FACT>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ОПЛАТА
.{?INTERNAL; ( EmplPayment > 0 )
    <EMPL_PAYMENT>^</EMPL_PAYMENT>
.}
.{?INTERNAL; ( FssPayment > 0 )
    <FSS_PAYMENT>^</FSS_PAYMENT>
.}
.}//( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
!
.{?INTERNAL; ( VidReestr = cn_vpPogreb ) or ( VidReestr = cn_vpDopDay )
    <PAYMENT>^</PAYMENT>     //фактически выплаченная сумма
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! свидетельство о рождении
.{?INTERNAL; ( VidReestr = cn_vpBornChild ) and ( CertType <> '' )
    <REF_TYPE>^</REF_TYPE>
.}
!
.{?INTERNAL; ( CertNo <> '' )
    <CERT_NO>^</CERT_NO>
    <CERT_DT>^</CERT_DT>
.}
    <CERT_BR>^</CERT_BR>
    <CERT_SURNAME>^</CERT_SURNAME>
    <CERT_NAME>^</CERT_NAME>
.{?INTERNAL; ( CertPatronimic <> '' )
    <CERT_PATRONIMIC>^</CERT_PATRONIMIC>
.}
.{?INTERNAL; ( Ref24No <> '' )
! справка о рождении
    <REF_24_NO>^</REF_24_NO>
    <REF_24_DT>^</REF_24_DT>
.}
!
.{?INTERNAL; ( oCertNo <> '' )
! справка о рождении
    <O_CERT_NO>^</O_CERT_NO>
    <O_CERT_DT>^</O_CERT_DT>
.}
.}// ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <CHILD_SER>^</CHILD_SER>
    <MH_OUT>^</MH_OUT>
! Данные об отпуске
    <HOLID_ORD_NO>^</HOLID_ORD_NO>
    <HOLID_ORD_DT>^</HOLID_ORD_DT>
    <HOLID_DT_ST>^</HOLID_DT_ST>
    <HOLID_DT_FN>^</HOLID_DT_FN>
.}
! справка от другого родителя о неполучении пособия
.{?INTERNAL; ( RefNpayOtherNo <> '' ) and  ( VidReestr = cn_vpBornChild )
    <REF_NPAY_OTHER_NO>^</REF_NPAY_OTHER_NO>
    <REF_NPAY_OTHER_DT>^</REF_NPAY_OTHER_DT>
.} // ( RefNpayOtherNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! усыновление/опека
.{?INTERNAL; ( WardRefNo <> '' )
    <WARD_FLAG>^</WARD_FLAG>
    <WARD_REF_NO>^</WARD_REF_NO>
    <WARD_REF_DT>^</WARD_REF_DT>
.}
! договор о передаче в приемную семью
.{?INTERNAL; ( RefFamilyNo <> '' ) and  ( VidReestr = cn_vpBornChild )
    <REF_FAMILY_NO>^</REF_FAMILY_NO>
    <REF_FAMILY_DT>^</REF_FAMILY_DT>
.} // ( RefFamilyNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! Данные об отпуске
.{?INTERNAL; ( ChildSer > 1 )
    <OTHER_CHILD_FLAG_BR>^</OTHER_CHILD_FLAG_BR>
    <OTHER_CHILD_FLAG_DT>^</OTHER_CHILD_FLAG_DT>
.}
! справка от отца
.{?INTERNAL; ( RefNpayFatherNo <> '' )
    <REF_NPAY_FATHER_NO>^</REF_NPAY_FATHER_NO>
    <REF_NPAY_FATHER_DT>^</REF_NPAY_FATHER_DT>
.}
! справка от матери
.{?INTERNAL; ( RefNpayMotherNo <> '' )
    <REF_NPAY_MOTHER_NO>^</REF_NPAY_MOTHER_NO>
    <REF_NPAY_MOTHER_DT>^</REF_NPAY_MOTHER_DT>
.}
.}// ( VidReestr = cn_vpYhodChild )
!
.} // ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! Постановка на учет в ранние сроки беременности
.{?INTERNAL; ( VidReestr = cn_vpRanBerem ) or ( VidReestr = cn_vpBerem )
.{?INTERNAL; ( Pregn12WFlag = '1' )
    <REF_12WEEK_NO>^</REF_12WEEK_NO>
    <REF_12WEEK_DT>^</REF_12WEEK_DT>
.}
.}// ( VidReestr = cn_vpRanBerem ) or ( VidReestr = cn_vpBerem )
!
.{?INTERNAL; ( VidReestr = cn_vpTravma )  or ( VidReestr = cn_vpOtpusk )
.{?INTERNAL; ( ReasonEmpl <> '' )
    <REASON_EMPL>^</REASON_EMPL>
.}
.}
!---------- ПРОСТОЙ -------------------
.{?INTERNAL; ( prProstoi = 1 )
    <PERIODS>
.}
.{ rXMLtoFSS_Prostoi CheckEnter
.{?INTERNAL; ( StartDate <> '' )
      <PERIOD>
        <START_DATE>^</START_DATE>
        <END_DATE>^</END_DATE>
        <IDLE_AVERAGE>^</IDLE_AVERAGE>
      </PERIOD>
.}
.}
.{?INTERNAL; ( prProstoi = 1 )
    </PERIODS>
.}
!--------------------------------------
  </ROW>
.}
</ROWSET>

.begin
 rXMLtoFSS.fExit;
end.
.endform
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!-------------------------------------------------------------------------------------------------------------
.Linkform 'rXMLtoFSS_1.7.2' prototype 'rXMLtoFSS'
.nameinlist 'XML форма на формирование реестров в ФСС_TAXNET'
.F 'rXMLtoFSS_1.6.xml'
!
.var
  Npp,                 //  Номер по порядку
  TypeInfo : word;     //  Признак перерасчета
.endvar
!
.fields
  Version           // Версия реестра
  VersionSoftware   // Версия программы
  Author            // ФИО составителя
  Phone             // Телефон составителя
  Email             // Email Составителя
  Kpp               // EMPL_KPP
  Inn               // EMPL_INN
  OGRN              // EMPL_OGRN
  RegNo             // EMPL_REG_NO
.endfields
!
<?xml version="1.0" encoding="windows-1251"?>
<ROWSET version="^" software="Galaktika"
        version_software ="^"
        author="^"
        phone="^"
        email="^"
.{?INTERNAL; ( Kpp <> '' )
        EMPL_KPP="^"
.}
        EMPL_INN="^"
.{?INTERNAL; ( OGRN <> '' )
        EMPL_OGRN="^"
.}
        EMPL_REG_NO="^">
!---------------------
.begin
  Npp := 0;
end.
!
.fields            // поля по циклу
  FileName         //  Имя файла
  Npp              //  Номер по порядку
  TypeInfo         //  Признак перерасчета
  RecalcReasonCode //  Причина перерасчета
  GetDocType       //  Тип реестра
  DateReesForm     //  Дата формирования реестра
  SNILS            //  СНИЛС
  InnPerson        //  ИНН сотрудника
  SurName          //  Фамилия
  FirstName        //  Имя
  SecName          //  Отчество
  RezOrNoRez       //  Резидент
  ResidentCode     //  Код страны
  IdType           //  Код документа
  IdNo             //  Номер документа
  IdDt             //  Дата документа
  IdDept           //  Кем выдан
  //- адрес проживания ----
  AddrKladr        //  Адрес по КЛАДР
  AddrA1           //  Субъект
  AddrA2           //  Район
  AddrA3           //  Город
  AddrA4           //  Населенный пункт
  AddrA5           //  Улица
  AddrHouse        //  Номер дома
  AddrBuilding     //  Корпус
  AddrFlat         //  Квартира
  PostIndex        //  Индекс
  OwnerFlag        //  Получатель пособия
  PaymentType      //  Тип оплаты
  AccountBic       //  БИК
  AccountName      //  Наименование банка
  Account          //  Номер счета
  SurName2         //  Фамилия
  FirstName2       //  Имя
  SecName2         //  Отчество
  Id2Type          //  Код документа
  Id2No            //  Номер документа
  Id2Dt            //  Дата документа
  Id2Dept          //  Кем выдан
 //- адрес регистрации ----
  Addr2            //  Адрес регистрации
  Addr2Kladr       //  Адрес по КЛАДР
  Addr2A1          //  Субъект
  Addr2A2          //  Район
  Addr2A3          //  Город
  Addr2A4          //  Населенный пункт
  Addr2A5          //  Улица
  Addr2House       //  Номер дома
  Addr2Building    //  Корпус
  Addr2Flat        //  Квартира
  PostIndex2       //  Индекс
  Employer         //  Страхователь
  EmplFlag         //  Вид работы
  EmplOgrn         //  ОГРН страхователя
  EmplRegNo        //  Pег № страхователя
  EmplParentNo     //  Код подчиненности
  EmplKpp          //  КПП страхователя
  EmplInn          //  ИНН страхователя
//------------Руководство-------------
  FIO_Boss         //  ФИО руководителя
  Post_Boss        //  Должность руководителя
  FIO_Buh          //  ФИО бухгалтера
//------- Трудовой договор
  WorkConStart     //  дата начала
  WorkConFinish    //  дата окончания
  RoleWage         //  Должностной оклад
  BaseCalcDays     //  Число календарных дней
  BaseCalcDays     //  Число календарных дней
  BaseAvgSal       //  Средний заработок
  AvgSal           //  среднемесячный заработок
  Multipatr        //  одновременный уход за несколькими детьми
  BaseAvgDailySal  // Среднедневной заработок
  YearChangeFlag   //  Признак замены годов
  Year1Old         //  Год 1 изменения
  Year2Old         //  Год 2 изменения
!-------расчетный период--------------
  Year1            //  Год на кот заменили 1
  Year2            //  Год на кот заменили 2
  BaseSum1         //  Сумма заработка за год 1
  BaseSum2         //  Сумма заработка за год 2
  KfReg            // Районный коэффициент
  KfShortDay       // Коэф. неполного раб. дня
  LiveCodeFlag     //  Признак условия проживания
  LiveCode         //  Код условия проживания
  CalcPeriodStart  //  Расчетный период для пособий по материнству
  CalcPeriodFinish //  Расчетный период для пособий по материнству
  InsurYY          //  Стаж страховой год
  InsurMM          //  Стаж страховой месяц
  NotInsurYY       //  Стаж не страховой год
  NotInsurMM       //  Стаж не страховой месяц
 // --- Больничный лист
  LnCode           //  № больничного
  PrevLnCode       //  Номер первичного больничного
  PrimaryFlag      //  Первичный или продолжение
  DublicateFlag    //  Дубликат б/л
  LnDate           //  Дата начала больничного
  LpuName          //  Наименование ЛПУ
  LpuAdress        //  адрес ЛПУ
  LpuOgrn          //  ОГРН ЛПУ
  Birthday         //  Дата рождения
  Gender           //  Пол
  Reason1          //  Код причины нетрудоспособности
  Reason2          //  Доп код причины нетрудоспособности
  Reason3          //  Код изменения причины нетрудоспособности
  LnCode           //  № больничного на основном месте работы
  Date1            //  Дата изменения причины
  Date2            //  Дата
  VoucherNo        //  Номер путевки в санаторий
  VoucherOgrn      //  Огрн санатория
  Serv1Age         //  Возраст лет
  Serv1Mm          //  Возраст мес
  Serv1RelCode     //  Код родственной связи
  Serv1Fio         //  ФИО родственника
  Serv2Age         //  Возраст лет
  Serv2Mm          //  Возраст мес
  Serv2RelCode     //  Код родственной связи
  Serv2Fio         //  ФИО родственника
 // Постановка на учет в ранние сроки беременности
  Pregn12WFlag     //  Признак постановки на учет
  HospitalDT1      //  Дата пребывания в госпитале
  HospitalDT2      //  Дата пребывания в госпитале
  HospitalBrCode   //  Код нарушения режима
  HospitalBrDt     //  Дата нарушения режима
!
  MseDt1           //  Дата направления в бюро МСЭ
  MseDt2           //  Дата регистрации документов в бюро МСЭ
  MseDt3           //  Дата освидетельствования в бюро МСЭ
  MseInvalidGroup  //  Установлена/изменена группа инвалидности
  MseInvaliDays    //  кол-во календарных дней, используемых в текущем году по нетрудоспособности
  MseResult        //  Изменение статуса нетрудоспособного
//------ данные о враче ---------------
  Treat1Dt1
  Treat1Dt2
  Treat1DocRole
  Treat1Doctor
  Treat1DocId
  Treat1Doc2Role
  Treat1Chairman
  Treat1Doc2Id
//----------------------------------------------------------
  Treat2Dt1
  Treat2Dt2
  Treat2DocRole
  Treat2Doctor
  Treat2DocId
  Treat2Doc2Role
  Treat2Chairman
  Treat2Doc2Id
//-----------------------------------------------------------
  Treat3Dt1
  Treat3Dt2
  Treat3DocRole
  Treat3Doctor
  Treat3DocId
  Treat3Doc2Role
  Treat3Chairman
  Treat3Doc2Id
  OtherStateDt     //  Дата изменения состояния нетрудоспособного
  ReturnDateLpu    //  Дата выхода на работу
  NextLnCode       //  Номер продолжающегося больничного
  CalcMetod        //  Расчет по закону
//------- условия исчисления
  CalcCondition1   //  условия исчисления 1
  CalcCondition2   //  условия исчисления 2
  CalcCondition3   //  условия исчисления 3
  Form1Dt          //  Дата формы Н -1
  FssPayFlag       //  Флаг периода оплаты за счет ФСС
  DT1              //  Дата периода расчета
  DT2              //  Дата периода расчета
  CalcDays         //  Количество дней болезни
  Dt2Fact          //  Дата фактического окончания периода выплаты пособия
 // ---- ОПЛАТА -------------------
  EmplPayment      //  Сумма за счет предприятия
  FssPayment       //  Сумма за счет ФСС
  Payment          // Фактически выплаченная сумма
//--------- Свидетельство о рождении ---------------------------
  CertType         //  тип документа
  CertNo           //  номер документа
  CertDt           //  дата документа
  CertBr           //  дата рождения
  CertSurName      //  фамилия
  CertName         //  имя
  CertPatronimic   //  отчество
  Ref24No          //  справка о рождении номер
  Ref24Dt          //  справка о рождении дата
  oCertNo          //  Иной документ подтверждающий  рождение номер
  oCertDt          //  Иной документ подтверждающий  рождение  дата
  ChildSer         //  Очередность рождения
  MhOut            //  Отметка о лишении материнства
//------- Данные об отпуске
  HolidOrdNo       //  номер приказа
  HolidOrdDt       //  дата приказа
  HolidDtSt        //  дата начала отпуска
  HolidDtFn        //  дата окончания отпуска
!------------------------------------------------------------------------------
  RefNpayOtherNo   //  справка от другого родителя о неполучении пособия номер  для версии 1.7.2
  RefNpayOtherDt   //  справка от другого родителя о неполучении пособия дата
  WardRefFlag      //  усыновление/опека
  WardRefNo        //  усыновление/опека
  WardRefDt        //  усыновление/опека
!------------------------------------------------------------------------------
  RefFamilyNo      //  договор о передаче в приемную семью номер  для версии 1.7.2
  RefFamilyDt      //  договор о передаче в приемную семью дата
  OtherChildBr     //  Наличие док о др ребенке о рождении
  OtherChildDt     //  Наличие док о др ребенке о смерти
  RefNpayFatherNo  //  справка о неполучении пособия от отца номер
  RefNpayFatherDt  //  справка о неполучении пособия от отца дата
  RefNpayMotherNo  //  справка о неполучении пособия от матери номер
  RefNpayMotherDt  //  справка о неполучении пособия от матери дата
// Постановка на учет в ранние сроки беременности
  Ref12WeekNo      // Номер справки
  Ref12WeekDt      // Дата справки
  ReasonEmpl       //  Пострадавший на другом предприятии
! поля по простоям
  StartDate
  EndDate
  IdleAverage
.endfields
!
.{ rXMLtoFSS_Persons CheckEnter
!
.begin
  Inc(Npp);
  // Признак перерасчета
  if (RecalcReasonCode <> '' )
    TypeInfo := 1
  else
    TypeInfo := 0;
end.
!
  <ROW>
    <BATCH_NO>^:^</BATCH_NO>
!----- Причина перерасчета
    <TYPE_INFO>^</TYPE_INFO>
.{?INTERNAL; ( TypeInfo = 1 )
    <RECALC_REASON_CODE>^</RECALC_REASON_CODE>
.}
    <DOC_TYPE>^</DOC_TYPE>
    <DOC_DT1>^</DOC_DT1>
    <SNILS>^</SNILS>
.{?INTERNAL; ( InnPerson <> '' )
    <INN_PERSON>^</INN_PERSON>
.}
    <SURNAME>^</SURNAME>
    <NAME>^</NAME>
.{?INTERNAL; ( SecName <> '' )
    <PATRONIMIC>^</PATRONIMIC>
.}
    <RESIDENT_FLAG>^</RESIDENT_FLAG>
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <RESIDENT_CODE>^</RESIDENT_CODE>
.}
!
    <ID_TYPE>^</ID_TYPE>
    <ID_NO>^</ID_NO>
    <ID_DT>^</ID_DT>
    <ID_DEPT>^</ID_DEPT>
! если тип оплаты 0 - Почтовый перевод
    <ADDR_KLADR>^</ADDR_KLADR>
.{?INTERNAL; ( AddrA1 <> '' )
    <ADDR_A1>^</ADDR_A1>
.}
.{?INTERNAL; ( AddrA2 <> '' )
    <ADDR_A2>^</ADDR_A2>
.}
.{?INTERNAL; ( AddrA3 <> '' )
    <ADDR_A3>^</ADDR_A3>
.}
.{?INTERNAL; ( AddrA4 <> '' )
    <ADDR_A4>^</ADDR_A4>
.}
.{?INTERNAL; ( AddrA5 <> '' )
    <ADDR_A5>^</ADDR_A5>
.}
.{?INTERNAL; ( AddrHouse <> '' )
    <ADDR_HOUSE>^</ADDR_HOUSE>
.}
!
.{?INTERNAL; ( AddrBuilding <> '' )
    <ADDR_BUILDING>^</ADDR_BUILDING>
.}
!
.{?INTERNAL; ( AddrFlat <> '' )
    <ADDR_FLAT>^</ADDR_FLAT>
.}
    <POST_INDEX>^</POST_INDEX>
    <OWNER_FLAG>^</OWNER_FLAG>
    <PAYMENT_TYPE>^</PAYMENT_TYPE>
! Если оплата через банк
.{?INTERNAL; ( PaymentType = 1 )
    <ACCOUNT_BIC>^</ACCOUNT_BIC>
    <ACCOUNT_NAME>^</ACCOUNT_NAME>
    <ACCOUNT>^</ACCOUNT>
.}
! Если получатель пособия 0- уполномоченный представитель
.{?INTERNAL; ( OwnerFlag = '0' )
    <SURNAME2>^</SURNAME2>
    <NAME2>^</NAME2>
.{?INTERNAL; ( SecName2 <> '' )
    <PATRONIMIC2>^</PATRONIMIC2>
.}
.{?INTERNAL; ( Id2Type <> '' )
    <ID2_TYPE>^</ID2_TYPE>
.{?INTERNAL; ( Id2No <> '' )
    <ID2_NO>^</ID2_NO>
.}
.{?INTERNAL; ( Id2Dt <> '' )
    <ID2_DT>^</ID2_DT>
.}
.{?INTERNAL; ( Id2Dept <> '' )
    <ID2_DEPT>^</ID2_DEPT>
.}
.}
.}
!
.{?INTERNAL; ( Addr2 <> '' )
    <ADDR2>^</ADDR2>
.}
.{?INTERNAL; ( Addr2Kladr <> '' )
    <ADDR2_KLADR>^</ADDR2_KLADR>
.}
.{?INTERNAL; ( Addr2A1 <> '' )
    <ADDR2_A1>^</ADDR2_A1>
.}
.{?INTERNAL; ( Addr2A2 <> '' )
    <ADDR2_A2>^</ADDR2_A2>
.}
.{?INTERNAL; ( Addr2A3 <> '' )
    <ADDR2_A3>^</ADDR2_A3>
.}
.{?INTERNAL; ( Addr2A4 <> '' )
    <ADDR2_A4>^</ADDR2_A4>
.}
.{?INTERNAL; ( Addr2A5 <> '' )
    <ADDR2_A5>^</ADDR2_A5>
.}
.{?INTERNAL; ( Addr2House <> '' )
    <ADDR2_HOUSE>^</ADDR2_HOUSE>
.}
.{?INTERNAL; ( Addr2Building <> '' )
    <ADDR2_BUILDING>^</ADDR2_BUILDING>
.}
.{?INTERNAL; ( Addr2Flat <> '' )
    <ADDR2_FLAT>^</ADDR2_FLAT>
.}
.{?INTERNAL; ( PostIndex2 <> '' )
    <POST_INDEX2>^</POST_INDEX2>
.}
!-- Данные страхователя
    <EMPLOYER>^</EMPLOYER>
    <EMPL_FLAG>^</EMPL_FLAG>
.{?INTERNAL; ( EmplOgrn <> '' )
    <EMPL_OGRN>^</EMPL_OGRN>
.}
    <EMPL_REG_NO>^</EMPL_REG_NO>
    <EMPL_PARENT_NO>^</EMPL_PARENT_NO>
.{?INTERNAL; ( EmplKpp <> '' )
    <EMPL_KPP>^</EMPL_KPP>
.}
    <EMPL_INN>^</EMPL_INN>
!------------Руководство-------------
    <APPROVE1>^</APPROVE1>
.{?INTERNAL; ( Post_Boss <> '' )
    <APPROVE1_ROLE>^</APPROVE1_ROLE>
.}
.{?INTERNAL; ( FIO_Buh <> '' )
    <APPROVE2>^</APPROVE2>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! Трудовой договор
    <WORK_CONTRACT_START_DT>^</WORK_CONTRACT_START_DT>
    <WORK_CONTRACT_FINISH_DT>^</WORK_CONTRACT_FINISH_DT>
.}
!----------------  Должностной оклад
.{?INTERNAL; ( BaseAvgSal = 0 ) and ( CalcMetod = 0 )
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <ROLE_WAGE>^</ROLE_WAGE>
.}
.}
!----------- Число календарных дней --------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpTravma )
    <BASE_CALC_DAYS>^</BASE_CALC_DAYS>
.}
!----------- средний заработок ---------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_AVG_SAL>^</BASE_AVG_SAL>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
.{?INTERNAL; ( Multipatr = '1' )
    <AVG_SAL>^</AVG_SAL>
.}
    <MULTPATR>^</MULTPATR>
.}
.{?INTERNAL; ( BaseAvgDailySal > 0 )
    <BASE_AVG_DAILY_SAL>^</BASE_AVG_DAILY_SAL>
.}
.{?INTERNAL; ( CalcMetod = 1 )
!
    <YEAR_CHANGE_FLAG>^</YEAR_CHANGE_FLAG>
!
.{?INTERNAL; ( YearChangeFlag = 1 )
    <YEAR1_OLD>^</YEAR1_OLD>
    <YEAR2_OLD>^</YEAR2_OLD>
.}
!-------расчетный период--------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild )
    <YEAR1>^</YEAR1>
    <YEAR2>^</YEAR2>
.}
.} // ( CalcMetod = 1 )
!------------ Отметка о замене годов для расчета
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma )
    <BASE_SUM1>^</BASE_SUM1>
    <BASE_SUM2>^</BASE_SUM2>
.}
    <KF_REG>^</KF_REG>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
    <KF_SHORT_DAY>^</KF_SHORT_DAY>
.}
!------Условия проживания\работы-------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) and ( LiveCode <> '' )
    <LIVE_COND_FLAG>^</LIVE_COND_FLAG>
    <LIVE_COND>^</LIVE_COND>
.}
!
.{?INTERNAL; ( CalcMetod = 0 )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <CALC_MH_PERIOD_START>^</CALC_MH_PERIOD_START>
    <CALC_MH_PERIOD_FINISH>^</CALC_MH_PERIOD_FINISH>
.}
.}
!
!------------ Стаж ---------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpRanBerem )
    <INSUR_YY>^</INSUR_YY>
    <INSUR_MM>^</INSUR_MM>
.{?INTERNAL; ( NotInsurYY > 0 )
    <NOT_INSUR_YY>^</NOT_INSUR_YY>
.}
.{?INTERNAL; ( NotInsurMM > 0 )
    <NOT_INSUR_MM>^</NOT_INSUR_MM>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! Больничный лист
    <LN_CODE>^</LN_CODE>
! номер первичного больничного
.{?INTERNAL; ( PrimaryFlag = '0' )
    <PREV_LN_CODE>^</PREV_LN_CODE>
.}
!
    <PRIMARY_FLAG>^</PRIMARY_FLAG>
    <DUPLICATE_FLAG>^</DUPLICATE_FLAG>
    <LN_DATE>^</LN_DATE>
    <LPU_NAME>^</LPU_NAME>
.{?INTERNAL; ( LpuAdress <> '' )
    <LPU_ADDRESS>^</LPU_ADDRESS>
.}
    <LPU_OGRN>^</LPU_OGRN>
.} // Больничный лист
!
    <BIRTHDAY>^</BIRTHDAY>
    <GENDER>^</GENDER>
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! Больничный лист
    <REASON1>^</REASON1>
.{?INTERNAL; ( Reason2 > '' )
    <REASON2>^</REASON2>
.}
.{?INTERNAL; ( Reason3 > '' )
    <REASON3>^</REASON3>
.}
.} // Больничный лист
!
.{?INTERNAL; ( EmplFlag = 0 )
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <PARENT_CODE>^</PARENT_CODE>
.}
.}
! Больничный лист
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
.{?INTERNAL; ( Date1 <> '' )
    <DATE1>^</DATE1>
.}
.{?INTERNAL; ( Date2 <> '' )
    <DATE2>^</DATE2>
.{?INTERNAL; ( VoucherNo <> '' )
    <VOUCHER_NO>^</VOUCHER_NO>
.}
    <VOUCHER_OGRN>^</VOUCHER_OGRN>
.}
.}
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! Больничный лист
!
.{?INTERNAL; ( Serv1 <> '' )
    <SERV1_AGE>^</SERV1_AGE>
    <SERV1_MM>^</SERV1_MM>
    <SERV1_RELATION_CODE>^</SERV1_RELATION_CODE>
    <SERV1_FIO>^</SERV1_FIO>
.}
.{?INTERNAL; ( Serv2 <> '' )
    <SERV2_AGE>^</SERV2_AGE>
    <SERV2_MM>^</SERV2_MM>
    <SERV2_RELATION_CODE>^</SERV2_RELATION_CODE>
.{?INTERNAL; ( Serv2Fio <> '' )
    <SERV2_FIO>^</SERV2_FIO>
.}
.}
.{?INTERNAL; ( VidReestr = cn_vpBerem )
    <PREGN12W_FLAG>^</PREGN12W_FLAG>
.}
!
.{?INTERNAL; ( HospitalDt1 <> '' )
    <HOSPITAL_DT1>^</HOSPITAL_DT1>
    <HOSPITAL_DT2>^</HOSPITAL_DT2>
.}
!
! нарушение режима
.{?INTERNAL; ( HospitalBrCode <> 0 )
    <HOSPITAL_BREACH_CODE>^</HOSPITAL_BREACH_CODE>
    <HOSPITAL_BREACH_DT>^</HOSPITAL_BREACH_DT>
.}
.{?INTERNAL; ( MseDt1 <> '' )
    <MSE_DT1>^</MSE_DT1>
.}
.{?INTERNAL; ( MseDt2 <> '' )
    <MSE_DT2>^</MSE_DT2>
.}
.{?INTERNAL; ( MseDt3 <> '' )
    <MSE_DT3>^</MSE_DT3>
.}
.{?INTERNAL; ( MseInvalidGroup > 0 )
    <MSE_INVALID_GROUP>^</MSE_INVALID_GROUP>
.}
.{?INTERNAL; ( MseInvaliDays > 0 )
    <MSE_INVALID_DAYS>^</MSE_INVALID_DAYS>
.}
.{?INTERNAL; ( MseResult <> '' )
    <MSE_RESULT>^</MSE_RESULT>
.}
! данные о враче
.{?INTERNAL; ( Treat1Doctor <> '' )
    <TREAT1_DT1>^</TREAT1_DT1>
    <TREAT1_DT2>^</TREAT1_DT2>
    <TREAT1_DOCTOR_ROLE>^</TREAT1_DOCTOR_ROLE>
    <TREAT1_DOCTOR>^</TREAT1_DOCTOR>
.{?INTERNAL; ( Treat1DocId <> '' )
    <TREAT1_DOC_ID>^</TREAT1_DOC_ID>
.}
.{?INTERNAL; ( Treat1Doc2Role <> '' )
    <TREAT1_DOCTOR2_ROLE>^</TREAT1_DOCTOR2_ROLE>
.}
.{?INTERNAL; ( Treat1Chairman <> '' )
    <TREAT1_CHAIRMAN_VK>^</TREAT1_CHAIRMAN_VK>
.}
.{?INTERNAL; ( Treat1Doc2Id <> '' )
    <TREAT1_DOC2_ID>^</TREAT1_DOC2_ID>
.}
.}
!----------------------------------------------------------
.{?INTERNAL; ( Treat2Doctor <> '' )
    <TREAT2_DT1>^</TREAT2_DT1>
    <TREAT2_DT2>^</TREAT2_DT2>
    <TREAT2_DOCTOR_ROLE>^</TREAT2_DOCTOR_ROLE>
    <TREAT2_DOCTOR>^</TREAT2_DOCTOR>
.{?INTERNAL; ( Treat2DocId <> '' )
    <TREAT2_DOC_ID>^</TREAT2_DOC_ID>
.}
.{?INTERNAL; ( Treat2Doc2Role <> '' )
    <TREAT2_DOCTOR2_ROLE>^</TREAT2_DOCTOR2_ROLE>
.}
.{?INTERNAL; ( Treat2Chairman <> '' )
    <TREAT2_CHAIRMAN_VK>^</TREAT2_CHAIRMAN_VK>
.}
.{?INTERNAL; ( Treat2Doc2Id <> '' )
    <TREAT2_DOC2_ID>^</TREAT2_DOC2_ID>
.}
.}
!-----------------------------------------------------------
.{?INTERNAL; ( Treat3Doctor <> '' )
    <TREAT3_DT1>^</TREAT3_DT1>
    <TREAT3_DT2>^</TREAT3_DT2>
    <TREAT3_DOCTOR_ROLE>^</TREAT3_DOCTOR_ROLE>
    <TREAT3_DOCTOR>^</TREAT3_DOCTOR>
.{?INTERNAL; ( Treat3DocId <> '' )
    <TREAT3_DOC_ID>^</TREAT3_DOC_ID>
.}
.{?INTERNAL; ( Treat3Doc2Role <> '' )
    <TREAT3_DOCTOR2_ROLE>^</TREAT3_DOCTOR2_ROLE>
.}
.{?INTERNAL; ( Treat3Chairman <> '' )
    <TREAT3_CHAIRMAN_VK>^</TREAT3_CHAIRMAN_VK>
.}
.{?INTERNAL; ( Treat3Doc2Id <> '' )
    <TREAT3_DOC2_ID>^</TREAT3_DOC2_ID>
.}
.}
.{?INTERNAL; ( OtherStateDt <> '' )
    <OTHER_STATE_DT>^</OTHER_STATE_DT>
.}
!  дата выхода на работу
.{?INTERNAL; ( MseResult = '' )
    <RETURN_DATE_LPU>^</RETURN_DATE_LPU>
.}
!
.{?INTERNAL; ( BlProd = '1' ) and ( MseResult = '31' )
    <NEXT_LN_CODE>^</NEXT_LN_CODE>
.}
.} // больничные
!
    <CALC_METHOD>^</CALC_METHOD>
!------------------------------------------------------
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! условия исчисления
.{?INTERNAL; ( CalcCondition1 <> '' )
    <CALC_CONDITION1>^</CALC_CONDITION1>
.}
.{?INTERNAL; ( CalcCondition2 <> '' )
    <CALC_CONDITION2>^</CALC_CONDITION2>
.}
.{?INTERNAL; ( CalcCondition3 <> '' )
    <CALC_CONDITION3>^</CALC_CONDITION3>
.}
!
.{?INTERNAL; ( Form1Dt <> '' )
    <FORM1_DT>^</FORM1_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma )
    <FSS_PAYMENT_FLAG>^</FSS_PAYMENT_FLAG>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
.{?INTERNAL; ( FssPayFlag = 1 )
    <DT1>^</DT1>
    <DT2>^</DT2>
.}
.{?INTERNAL; ( VidReestr = cn_vpOtpusk )
    <CALC_DAYS>^</CALC_DAYS>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <DT2_FACT>^</DT2_FACT>
.}
!
.{?INTERNAL; ( VidReestr = cn_vpNetrud ) or ( VidReestr = cn_vpBerem ) or ( VidReestr = cn_vpTravma ) or ( VidReestr = cn_vpRanBerem )
! ОПЛАТА
.{?INTERNAL; ( EmplPayment > 0 )
    <EMPL_PAYMENT>^</EMPL_PAYMENT>
.}
.{?INTERNAL; ( FssPayment > 0 )
    <FSS_PAYMENT>^</FSS_PAYMENT>
.}
.}
.{?INTERNAL; ( VidReestr = cn_vpPogreb ) or ( VidReestr = cn_vpDopDay )
    <PAYMENT>^</PAYMENT>     //фактически выплаченная сумма
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
! свидетельство о рождении
.{?INTERNAL; ( VidReestr = cn_vpBornChild ) and ( CertType <> '' )
    <REF_TYPE>^</REF_TYPE>
.}
!
.{?INTERNAL; ( CertNo <> '' )
    <CERT_NO>^</CERT_NO>
    <CERT_DT>^</CERT_DT>
.}
    <CERT_BR>^</CERT_BR>
    <CERT_SURNAME>^</CERT_SURNAME>
    <CERT_NAME>^</CERT_NAME>
.{?INTERNAL; ( CertPatronimic <> '' )
    <CERT_PATRONIMIC>^</CERT_PATRONIMIC>
.}
.{?INTERNAL; ( Ref24No <> '' )
! справка о рождении
    <REF_24_NO>^</REF_24_NO>
    <REF_24_DT>^</REF_24_DT>
.}
!
.{?INTERNAL; ( oCertNo <> '' )
! справка о рождении
    <O_CERT_NO>^</O_CERT_NO>
    <O_CERT_DT>^</O_CERT_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
    <CHILD_SER>^</CHILD_SER>
    <MH_OUT>^</MH_OUT>
! Данные об отпуске
    <HOLID_ORD_NO>^</HOLID_ORD_NO>
    <HOLID_ORD_DT>^</HOLID_ORD_DT>
    <HOLID_DT_ST>^</HOLID_DT_ST>
    <HOLID_DT_FN>^</HOLID_DT_FN>
.}
!
.{?INTERNAL; ( RefNpayOtherNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpBornChild )
    <REF_NPAY_OTHER_NO>^</REF_NPAY_OTHER_NO>
    <REF_NPAY_OTHER_DT>^</REF_NPAY_OTHER_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild ) or ( VidReestr = cn_vpBornChild )
!
! усыновление/опека
.{?INTERNAL; ( WardRefNo <> '' )
    <WARD_FLAG>^</WARD_FLAG>
    <WARD_REF_NO>^</WARD_REF_NO>
    <WARD_REF_DT>^</WARD_REF_DT>
.}
! договор о передаче в приемную семью
.{?INTERNAL; ( RefFamilyNo <> '' )
.{?INTERNAL; ( VidReestr = cn_vpBornChild )
    <REF_FAMILY_NO>^</REF_FAMILY_NO>
    <REF_FAMILY_DT>^</REF_FAMILY_DT>
.}
.} // ( RefFamilyNo <> '' )
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
.{?INTERNAL; ( ChildSer > 1 )
    <OTHER_CHILD_FLAG_BR>^</OTHER_CHILD_FLAG_BR>
    <OTHER_CHILD_FLAG_DT>^</OTHER_CHILD_FLAG_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpYhodChild )
! справка от отца
.{?INTERNAL; ( RefNpayFatherNo <> '' )
    <REF_NPAY_FATHER_NO>^</REF_NPAY_FATHER_NO>
    <REF_NPAY_FATHER_DT>^</REF_NPAY_FATHER_DT>
.}
!  справка от матери
.{?INTERNAL; ( RefNpayMotherNo <> '' )
    <REF_NPAY_MOTHER_NO>^</REF_NPAY_MOTHER_NO>
    <REF_NPAY_MOTHER_DT>^</REF_NPAY_MOTHER_DT>
.}
!
.}//( VidReestr = cn_vpYhodChild )
.}
! Постановка на учет в ранние сроки беременности
.{?INTERNAL; ( VidReestr = cn_vpRanBerem ) or ( VidReestr = cn_vpBerem )
.{?INTERNAL; ( Pregn12WFlag = '1' )
    <REF_12WEEK_NO>^</REF_12WEEK_NO>
    <REF_12WEEK_DT>^</REF_12WEEK_DT>
.}
.}
!
.{?INTERNAL; ( VidReestr = cn_vpTravma )  or ( VidReestr = cn_vpOtpusk )
.{?INTERNAL; ( ReasonEmpl <> '' )
    <REASON_EMPL>^</REASON_EMPL>
.}
.}
!---------- ПРОСТОЙ -------------------
.{?INTERNAL; ( prProstoi = 1 )
    <PERIODS>
.}
.{ rXMLtoFSS_Prostoi CheckEnter
.{?INTERNAL; ( StartDate <> '' )
      <PERIOD>
        <START_DATE>^</START_DATE>
        <END_DATE>^</END_DATE>
        <IDLE_AVERAGE>^</IDLE_AVERAGE>
      </PERIOD>
.}
.}
.{?INTERNAL; ( prProstoi = 1 )
    </PERIODS>
.}
!--------------------------------------
  </ROW>
.}
</ROWSET>

.begin
 rXMLtoFSS.fExit;
end.
.endform
