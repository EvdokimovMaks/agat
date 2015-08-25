!
!  (c) 1987 корпорация ГАЛАКТИКА
!
!  Проект        : ГАЛАКТИКА
!  Система       : Оперативный контур
!  Версия        : 5.20
!
!  Назначение    : печать реестра сводных накладных
!
!  Ответственный : Александр Валерьевич Крахотко
!
!  Параметры     : НЕТ
!
!--------------------------------------------------------------------
!  Изменения :
!       Автор:                                         Дата:
!       Цель :
!
!--------------------------------------------------------------------
#doc
Печать реестра сводных накладных
#end
.Form GrSopr_frm_main
.hide
.fields
!.{
    GrSopr_nRec: comp
    GrSopr_вид
    GrSopr_номер
    GrSopr_дата
    GrSopr_дескриптор
    GrSopr_группа_дескрипторов
    GrSopr_строка // ? может быть примечание (не заполняется в интерфейсе)
    // контрагент
    GrSopr_Имя                 // KatOrg.Name
    GrSopr_Код                 // KatOrg.TipOrg
    GrSopr_Адрес               // KatOrg.Addr
    GrSopr_ОКПО                // KatOrg.OKpo
    GrSopr_ОКОНХ               // KatOrg.OKONH
    GrSopr_ТЕЛ                 // KatOrg.TEL
    GrSopr_КонтИнф             // KatOrg.CONTAKTS      Контактная информация
    GrSopr_Email               // KatOrg.EMAIL         Электронный почтовый адрес
    GrSopr_OKATO               // PodrInfo.OKATO       Код по общероссийскому классификатору административно-территориального деления
    GrSopr_KBK                 // PodrInfo.KBK         Код бюджетной классификации
    GrSopr_OGRN                // PodrInfo.OGRN        Основной государственный регистрационный номер
    GrSopr_РегНом_в_ПФ         // PodrInfo.REGNOMPFR   Регистрационный номер в ПФ
    GrSopr_РегНом_Страхователя // PodrInfo.POlE3S      Регистрационный номер страхователя
    GrSopr_Орган_Исполн_Власти // PodrInfo.INSNAME     Орган исполнительной власти
    GrSopr_Форма_Собственности // FormSobs.Name        Форма собственности
    GrSopr_Вид_Деятельности    // FormSobs.VidD        Вид деятельности
    GrSopr_СТАРАНА_КОД         // KatState.KOD
    GrSopr_СТРАНА_ИМЯ          // KatState.Name
    GrSopr_СТРАНА_НАЛОГИ       // KatState.IsNal
    GrSopr_ГОРОД_КОД           // KatCity.KOD
    GrSopr_ГОРОД_ИМЯ           // KatCity.Name
    GrSopr_ГОРОД_ТЕЛ           // KatCity.TEL
    GrSopr_ГОРОД_СТРАНА_КОД    // KatState.KOD
    GrSopr_ГОРОД_СТРАНА_ИМЯ    // KatState.Name
    GrSopr_ГОРОД_СТРАНА_НАЛОГИ // KatState.IsNal
    GrSopr_КОРПОРАЦИЯ          // KatOrg.CorpoIn
    GrSopr_УНН                 // KatOrg.UNN
    GrSopr_КПП                 // KatOrg.KODPLATNDS       =  28 ПОЛЕЙ
        GrSopr_БАНК_Имя
        GrSopr_БАНК_Коментарий
        GrSopr_БАНК_Адрес
        GrSopr_БАНК_Мфо
        GrSopr_БАНК_Ркц
        GrSopr_БАНК_Счет
        GrSopr_БАНК_Счет_Ркц
        GrSopr_БАНК_Счет_Плат  // счет для платежных документов
        GrSopr_БАНК_Тип_Счета  // 0 расчетный, 1-текущий
        GrSopr_БАНК_Вид_Счета  // 1-активн 0-неакт        = 10 полей
    // Склад  PrintPodr      (GrSopr.cPodr   ) ; // tnRec    "склад",
    GrSopr_KatPodr_Kod
    GrSopr_KatPodr_Name
    GrSopr_KatPodr_Addr
    GrSopr_KatPodr_FIO
    GrSopr_KatPodr_nBase
    // МОЛ PrintMol       (GrSopr.cMOL    ) ; // tnRec    "мол",
    GrSopr_KatMol_Kod
    GrSopr_KatMol_Name
    // PrintParty     (GrSopr.cParty  ) ; // tnRec    "партия",
    GrSopr_KatParty_Kod
    GrSopr_KatParty_Name
    GrSopr_KatParty_nSertif
    GrSopr_KatParty_dSertif
    // PrintAuto      (GrSopr.Auto    , GrSopr.cAuto   ) ; // tnRec    "код автопредприятия",
    GrSopr_Auto_Имя                 // KatOrg.Name
    GrSopr_Auto_Код                 // KatOrg.TipOrg
    GrSopr_Auto_Адрес               // KatOrg.Addr
    GrSopr_Auto_ОКПО                // KatOrg.OKpo
    GrSopr_Auto_ОКОНХ               // KatOrg.OKONH
    GrSopr_Auto_ТЕЛ                 // KatOrg.TEL
    GrSopr_Auto_КонтИнф             // KatOrg.CONTAKTS      Контактная информация
    GrSopr_Auto_Email               // KatOrg.EMAIL         Электронный почтовый адрес
    GrSopr_Auto_OKATO               // PodrInfo.OKATO       Код по общероссийскому классификатору административно-территориального деления
    GrSopr_Auto_KBK                 // PodrInfo.KBK         Код бюджетной классификации
    GrSopr_Auto_OGRN                // PodrInfo.OGRN        Основной государственный регистрационный номер
    GrSopr_Auto_РегНом_в_ПФ         // PodrInfo.REGNOMPFR   Регистрационный номер в ПФ
    GrSopr_Auto_РегНом_Страхователя // PodrInfo.POlE3S      Регистрационный номер страхователя
    GrSopr_Auto_Орган_Исполн_Власти // PodrInfo.INSNAME     Орган исполнительной власти
    GrSopr_Auto_Форма_Собственности // FormSobs.Name        Форма собственности
    GrSopr_Auto_Вид_Деятельности    // FormSobs.VidD        Вид деятельности
    GrSopr_Auto_СТАРАНА_КОД         // KatState.KOD
    GrSopr_Auto_СТРАНА_ИМЯ          // KatState.Name
    GrSopr_Auto_СТРАНА_НАЛОГИ       // KatState.IsNal
    GrSopr_Auto_ГОРОД_КОД           // KatCity.KOD
    GrSopr_Auto_ГОРОД_ИМЯ           // KatCity.Name
    GrSopr_Auto_ГОРОД_ТЕЛ           // KatCity.TEL
    GrSopr_Auto_ГОРОД_СТРАНА_КОД    // KatState.KOD
    GrSopr_Auto_ГОРОД_СТРАНА_ИМЯ    // KatState.Name
    GrSopr_Auto_ГОРОД_СТРАНА_НАЛОГИ // KatState.IsNal
    GrSopr_Auto_КОРПОРАЦИЯ          // KatOrg.CorpoIn
    GrSopr_Auto_УНН                 // KatOrg.UNN
    GrSopr_Auto_КПП                 // KatOrg.KODPLATNDS       =  28 ПОЛЕЙ
        GrSopr_Auto_БАНК_Имя
        GrSopr_Auto_БАНК_Коментарий
        GrSopr_Auto_БАНК_Адрес
        GrSopr_Auto_БАНК_Мфо
        GrSopr_Auto_БАНК_Ркц
        GrSopr_Auto_БАНК_Счет
        GrSopr_Auto_БАНК_Счет_Ркц
        GrSopr_Auto_БАНК_Счет_Плат  // счет для платежных документов
        GrSopr_Auto_БАНК_Тип_Счета  // 0 расчетный, 1-текущий
        GrSopr_Auto_БАНК_Вид_Счета  // 1-активн 0-неакт        = 10 полей
    // PrintCar       (GrSopr.Car     , GrSopr.cCar    ) ; // tnRec    "код автомобиля",
    GrSopr_Transp_Nomer
    GrSopr_Transp_Marka
    // PrintDriver    (GrSopr.Driver  , GrSopr.cDriver ) ; // tnRec    "код водителя",
    GrSopr_KlDriver_Name
    // PrintWay       (GrSopr.Way     , GrSopr.cWay    ) ; // tnRec    "код маршрута",
    GrSopr_Avt_KodMarch
    GrSopr_Avt_MMarAvt
    // PrintPunkt     (GrSopr.PunktP  , GrSopr.cPunktP ) ; // tnRec    "код пункта погрузки",
    GrSopr_PunktsP_Name
    GrSopr_PunktsP_Addr
    GrSopr_PunktsP_KoefW
    GrSopr_PunktsP_Normat
    GrSopr_PunktsP_Distantion
    GrSopr_PunktsP_Time
    // PrintPunkt     (GrSopr.PunktR  , GrSopr.cPunktR ) ; // tnRec    "код пункта разгрузки",
    GrSopr_PunktsR_Name
    GrSopr_PunktsR_Addr
    GrSopr_PunktsR_KoefW
    GrSopr_PunktsR_Normat
    GrSopr_PunktsR_Distantion
    GrSopr_PunktsR_Time
    // PrintDover ;
    GrSopr_Dover_NoDoc
    GrSopr_Dover_dDoc
    // PrintDovFio ;
    GrSopr_DovFio_Name
    GrSopr_DovFio_PasSer
    GrSopr_DovFio_PasNumb
    GrSopr_DovFio_WhereVid
    GrSopr_DovFio_DatVid
    // frmGrSopr.Write(GrSopr.dOpr    ) ; // date     "дата оприходования"
    GrSopr_дата_оприходования // например дата выдачи
!.{
      KatDoc_Name
      KatSopr_nRec
      KatSopr_nSopr
      KatSopr_dSopr
      KatSopr_Summa: double
      KatVal
      Dogovor_NoDoc
      Dogovor_dDoc
      CalPlan_NoDoc
      CalPlan_Name
      //PrintOrg(KatSopr.cOrgBase ) ;
      KatSopr_Имя                 // KatOrg.Name
      KatSopr_Код                 // KatOrg.TipOrg
      KatSopr_Адрес               // KatOrg.Addr
      KatSopr_ОКПО                // KatOrg.Okpo
      KatSopr_ОКОНХ               // KatOrg.OKONH
      KatSopr_ТЕЛ                 // KatOrg.TEL
      KatSopr_КонтИнф             // KatOrg.CONTAKTS      Контактная информация
      KatSopr_Email               // KatOrg.EMAIL         Электронный почтовый адрес
      KatSopr_OKATO               // PodrInfo.OKATO       Код по общероссийскому классификатору административно-территориального деления
      KatSopr_KBK                 // PodrInfo.KBK         Код бюджетной классификации
      KatSopr_OGRN                // PodrInfo.OGRN        Основной государственный регистрационный номер
      KatSopr_РегНом_в_ПФ         // PodrInfo.REGNOMPFR   Регистрационный номер в ПФ
      KatSopr_РегНом_Страхователя // PodrInfo.POlE3S      Регистрационный номер страхователя
      KatSopr_Орган_Исполн_Власти // PodrInfo.INSNAME     Орган исполнительной власти
      KatSopr_Форма_Собственности // FormSobs.Name        Форма собственности
      KatSopr_Вид_Деятельности    // FormSobs.VidD        Вид деятельности
      KatSopr_СТАРАНА_КОД         // KatState.KOD
      KatSopr_СТРАНА_ИМЯ          // KatState.Name
      KatSopr_СТРАНА_НАЛОГИ       // KatState.IsNal
      KatSopr_ГОРОД_КОД           // KatCity.KOD
      KatSopr_ГОРОД_ИМЯ           // KatCity.Name
      KatSopr_ГОРОД_ТЕЛ           // KatCity.TEL
      KatSopr_ГОРОД_СТРАНА_КОД    // KatState.KOD
      KatSopr_ГОРОД_СТРАНА_ИМЯ    // KatState.Name
      KatSopr_ГОРОД_СТРАНА_НАЛОГИ // KatState.IsNal
      KatSopr_КОРПОРАЦИЯ          // KatOrg.CorpoIn
      KatSopr_УНН                 // KatOrg.UNN
      KatSopr_КПП                 // KatOrg.KODPLATNDS       =  28 ПОЛЕЙ
          KatSopr_БАНК_Имя
          KatSopr_БАНК_Коментарий
          KatSopr_БАНК_Адрес
          KatSopr_БАНК_Мфо
          KatSopr_БАНК_Ркц
          KatSopr_БАНК_Счет
          KatSopr_БАНК_Счет_Ркц
          KatSopr_БАНК_Счет_Плат  // счет для платежных документов
          KatSopr_БАНК_Тип_Счета  // 0 расчетный, 1-текущий
          KatSopr_БАНК_Вид_Счета  // 1-активн 0-неакт        = 10 полей
!.{
        SpSopr_nRec
        SpSopr_PrMC // признак МЦ или услуга
        SpSopr_Name
        SpSopr_Kod
        SpSopr_Kol :double// в отпускных ед изимерения
        SpSopr_OtpEd  // отпускная ед измерения
        SpSopr_Sum  // Сумм
        SpPrice
        SpSopr_Price :double // v НДС

!.}
!.}
!.}
.endfields

.{ GrSopr_main_GrSopr CheckEnter
    GrSopr_nRec = ^
    GrSopr_вид = ^
    GrSopr_номер = ^
    GrSopr_дата = ^
    GrSopr_дескриптор = ^
    GrSopr_группа_дескрипторов = ^
    GrSopr_строка = ^
    GrSopr_Имя = ^
    GrSopr_Код = ^
    GrSopr_Адрес = ^
    GrSopr_ОКПО = ^
    GrSopr_ОКОНХ = ^
    GrSopr_ТЕЛ = ^
    GrSopr_КонтИнф = ^
    GrSopr_Email = ^
    GrSopr_OKATO = ^
    GrSopr_KBK = ^
    GrSopr_OGRN = ^
    GrSopr_РегНом_в_ПФ = ^
    GrSopr_РегНом_Страхователя = ^
    GrSopr_Орган_Исполн_Власти = ^
    GrSopr_Форма_Собственности = ^
    GrSopr_Вид_Деятельности = ^
    GrSopr_СТАРАНА_КОД = ^
    GrSopr_СТРАНА_ИМЯ = ^
    GrSopr_СТРАНА_НАЛОГИ = ^
    GrSopr_ГОРОД_КОД = ^
    GrSopr_ГОРОД_ИМЯ = ^
    GrSopr_ГОРОД_ТЕЛ = ^
    GrSopr_ГОРОД_СТРАНА_КОД = ^
    GrSopr_ГОРОД_СТРАНА_ИМЯ = ^
    GrSopr_ГОРОД_СТРАНА_НАЛОГИ = ^
    GrSopr_КОРПОРАЦИЯ = ^
    GrSopr_УНН = ^
    GrSopr_КПП = ^
        GrSopr_БАНК_Имя = ^
        GrSopr_БАНК_Коментарий = ^
        GrSopr_БАНК_Адрес = ^
        GrSopr_БАНК_Мфо = ^
        GrSopr_БАНК_Ркц = ^
        GrSopr_БАНК_Счет = ^
        GrSopr_БАНК_Счет_Ркц = ^
        GrSopr_БАНК_Счет_Плат = ^
        GrSopr_БАНК_Тип_Счета = ^
        GrSopr_БАНК_Вид_Счета = ^
    GrSopr_KatPodr_Kod = ^
    GrSopr_KatPodr_Name = ^
    GrSopr_KatPodr_Addr = ^
    GrSopr_KatPodr_FIO = ^
    GrSopr_KatPodr_nBase = ^

    GrSopr_KatMol_Kod = ^
    GrSopr_KatMol_Name = ^

    GrSopr_KatParty_Kod = ^
    GrSopr_KatParty_Name = ^
    GrSopr_KatParty_nSertif = ^
    GrSopr_KatParty_dSertif = ^

    GrSopr_Auto_Имя = ^
    GrSopr_Auto_Код = ^
    GrSopr_Auto_Адрес = ^
    GrSopr_Auto_ОКПО = ^
    GrSopr_Auto_ОКОНХ = ^
    GrSopr_Auto_ТЕЛ = ^
    GrSopr_Auto_КонтИнф = ^
    GrSopr_Auto_Email = ^
    GrSopr_Auto_OKATO = ^
    GrSopr_Auto_KBK = ^
    GrSopr_Auto_OGRN = ^
    GrSopr_Auto_РегНом_в_ПФ = ^
    GrSopr_Auto_РегНом_Страхователя = ^
    GrSopr_Auto_Орган_Исполн_Власти = ^
    GrSopr_Auto_Форма_Собственности = ^
    GrSopr_Auto_Вид_Деятельности = ^
    GrSopr_Auto_СТАРАНА_КОД = ^
    GrSopr_Auto_СТРАНА_ИМЯ = ^
    GrSopr_Auto_СТРАНА_НАЛОГИ = ^
    GrSopr_Auto_ГОРОД_КОД = ^
    GrSopr_Auto_ГОРОД_ИМЯ = ^
    GrSopr_Auto_ГОРОД_ТЕЛ = ^
    GrSopr_Auto_ГОРОД_СТРАНА_КОД = ^
    GrSopr_Auto_ГОРОД_СТРАНА_ИМЯ = ^
    GrSopr_Auto_ГОРОД_СТРАНА_НАЛОГИ = ^
    GrSopr_Auto_КОРПОРАЦИЯ = ^
    GrSopr_Auto_УНН = ^
    GrSopr_Auto_КПП = ^
        GrSopr_Auto_БАНК_Имя = ^
        GrSopr_Auto_БАНК_Коментарий = ^
        GrSopr_Auto_БАНК_Адрес = ^
        GrSopr_Auto_БАНК_Мфо = ^
        GrSopr_Auto_БАНК_Ркц = ^
        GrSopr_Auto_БАНК_Счет = ^
        GrSopr_Auto_БАНК_Счет_Ркц = ^
        GrSopr_Auto_БАНК_Счет_Плат = ^
        GrSopr_Auto_БАНК_Тип_Счета = ^
        GrSopr_Auto_БАНК_Вид_Счета = ^

    GrSopr_Transp_Nomer = ^
    GrSopr_Transp_Marka = ^

    GrSopr_KlDriver_Name = ^

    GrSopr_Avt_KodMarch = ^
    GrSopr_Avt_MMarAvt = ^

    GrSopr_PunktsP_Name = ^
    GrSopr_PunktsP_Addr = ^
    GrSopr_PunktsP_KoefW = ^
    GrSopr_PunktsP_Normat = ^
    GrSopr_PunktsP_Distantion = ^
    GrSopr_PunktsP_Time = ^

    GrSopr_PunktsR_Name = ^
    GrSopr_PunktsR_Addr = ^
    GrSopr_PunktsR_KoefW = ^
    GrSopr_PunktsR_Normat = ^
    GrSopr_PunktsR_Distantion = ^
    GrSopr_PunktsR_Time = ^

    GrSopr_Dover_NoDoc = ^
    GrSopr_Dover_dDoc = ^

    GrSopr_DovFio_Name  = ^
    GrSopr_DovFio_PasSer  = ^
    GrSopr_DovFio_PasNumb  = ^
    GrSopr_DovFio_WhereVid  = ^
    GrSopr_DovFio_DatVid  = ^

    GrSopr_дата_оприходования = ^
.{ GrSopr_main_KatSopr CheckEnter
      KatDoc_Name = ^
      KatSopr_nRec = ^
      KatSopr_nSopr = ^
      KatSopr_dSopr = ^
      KatSopr_Summa = ^
      KatVal = ^
      Dogovor_NoDoc = ^
      Dogovor_dDoc = ^
      CalPlan_NoDoc = ^
      CalPlan_Name = ^

      KatSopr_Имя = ^
      KatSopr_Код = ^
      KatSopr_Адрес = ^
      KatSopr_ОКПО = ^
      KatSopr_ОКОНХ = ^
      KatSopr_ТЕЛ = ^
      KatSopr_КонтИнф = ^
      KatSopr_Email = ^
      KatSopr_OKATO = ^
      KatSopr_KBK = ^
      KatSopr_OGRN = ^
      KatSopr_РегНом_в_ПФ = ^
      KatSopr_РегНом_Страхователя = ^
      KatSopr_Орган_Исполн_Власти = ^
      KatSopr_Форма_Собственности = ^
      KatSopr_Вид_Деятельности = ^
      KatSopr_СТАРАНА_КОД = ^
      KatSopr_СТРАНА_ИМЯ = ^
      KatSopr_СТРАНА_НАЛОГИ = ^
      KatSopr_ГОРОД_КОД = ^
      KatSopr_ГОРОД_ИМЯ = ^
      KatSopr_ГОРОД_ТЕЛ = ^
      KatSopr_ГОРОД_СТРАНА_КОД = ^
      KatSopr_ГОРОД_СТРАНА_ИМЯ = ^
      KatSopr_ГОРОД_СТРАНА_НАЛОГИ = ^
      KatSopr_КОРПОРАЦИЯ = ^
      KatSopr_УНН = ^
      KatSopr_КПП = ^
          KatSopr_БАНК_Имя = ^
          KatSopr_БАНК_Коментарий = ^
          KatSopr_БАНК_Адрес = ^
          KatSopr_БАНК_Мфо = ^
          KatSopr_БАНК_Ркц = ^
          KatSopr_БАНК_Счет = ^
          KatSopr_БАНК_Счет_Ркц = ^
          KatSopr_БАНК_Счет_Плат = ^
          KatSopr_БАНК_Тип_Счета = ^
          KatSopr_БАНК_Вид_Счета = ^
.{ GrSopr_main_SpSopr CheckEnter
        SpSopr_nRec = ^
        SpSopr_PrMC = ^
        SpSopr_Name = ^
        SpSopr_Kod = ^
        SpSopr_Kol = ^
        SpSopr_OtpEd = ^
        SpSopr_Sum = ^
        SpPrice = ^
        SpSopr_Price = ^
.}
---------------
.}
---------------
.}
--------END
.endform

#doc
Реестр объединенных в сводную накладных
#end
.linkform 'GrSopr_frm_main 01' prototype is GrSopr_frm_main
.NameInList 'Реестр объединенных в сводную накладных'
.fields
!.{
    GrSopr_номер
    GrSopr_дата

    GrSopr_Auto_Имя                 // KatOrg.Name
    GrSopr_Auto_ОКПО                // KatOrg.OKpo

    GrSopr_Transp_Nomer
    GrSopr_Transp_Marka

    GrSopr_KlDriver_Name

    GrSopr_PunktsP_Name
    GrSopr_PunktsP_Addr
    GrSopr_PunktsR_Name
    GrSopr_PunktsR_Addr

    GrSopr_Dover_NoDoc
    GrSopr_Dover_dDoc

    GrSopr_DovFio_Name
    GrSopr_DovFio_PasSer
    GrSopr_DovFio_PasNumb
    GrSopr_DovFio_WhereVid
    GrSopr_DovFio_DatVid
!.{
      KatDoc_Name
      KatSopr_nSopr
      KatSopr_dSopr
      KatSopr_Summa
      KatSopr_Имя                 // KatOrg.Name
      KatSopr_ОКПО                // KatOrg.Okpo
!.{
        SpSopr_Name
        SpSopr_Kod
        SpSopr_Kol // в отпускных ед изимерения
        SpSopr_OtpEd  // отпускная ед измерения
        SpSopr_Price  // цена в НДС
        SpSopr_Kol*SpSopr_Price
!.}
!.}
!.}
.endfields
.{ GrSopr_main_GrSopr CheckEnter

  БСВОДНАЯ НАКЛАДНАЯ № ^ от ^ Б

  БАвтопредприятие: Б  Р^ ^ Р
  БТранспорт: Б  Р^ ^ Р
  БВодитель: Б  Р^ Р
  БПункт погрузки: Б  Р^ ^ Р
  БПункт разгрузки: Б  Р^ ^ Р
  БДоверенность: Б № ^  Бот Б ^
  БДоверенное лицо: Б ^,  Бпаспорт Б  ССерия С ^,  Сномер С ^,  Свыдан С ^ ^

.{ GrSopr_main_KatSopr CheckEnter
 Р   --------------------------------------------------------------------------------------------------------------------------
    С^ №  Б^ Б от  Б^ Р

    БНа сумму: Б  Р^ Р
   Контрагент: ^ ^
   ─────────────────────────────────────────────────────────────────┬────────────┬───────┬────────────────┬──────────────────
    Наименование и номенклатурный номер                             │ Количество │Ед.Изм.│ Цена в НДЕ     │ Сумма в НДЕ
   ─────────────────────────────────────────────────────────────────┴────────────┴───────┴────────────────┴────────────────── Р
.{ GrSopr_main_SpSopr CheckEnter
 Р   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@ &&&&&&&&&.&& @@@@@@@ &&&&&&&&&&&&&.&& &&&&&&&&&&&&&&&.&& Р
.}
.}
 Р............................................................................................................................. Р
.}
.endform
!
!
!
#doc
Краткий реестр объединенных в сводную накладных
#end
.linkform 'GrSopr_frm_main 02' prototype is GrSopr_frm_main
.NameInList 'Краткий реестр объединенных в сводную накладных'
.var
  count_of_spsopr : word
.endvar
.fields
!.{
    GrSopr_номер
    GrSopr_дата

    GrSopr_Auto_Имя                 // KatOrg.Name
    GrSopr_Auto_ОКПО                // KatOrg.OKpo

    GrSopr_Transp_Nomer
    GrSopr_Transp_Marka

    GrSopr_KlDriver_Name

    GrSopr_PunktsP_Name
    GrSopr_PunktsP_Addr
    GrSopr_PunktsR_Name
    GrSopr_PunktsR_Addr

    GrSopr_Dover_NoDoc
    GrSopr_Dover_dDoc

    GrSopr_DovFio_Name
    GrSopr_DovFio_PasSer
    GrSopr_DovFio_PasNumb
    GrSopr_DovFio_WhereVid
    GrSopr_DovFio_DatVid
!.{
      KatSopr_nSopr
      KatSopr_dSopr
      KatSopr_Имя +' ОКПО '+KatSopr_ОКПО                // KatOrg.Okpo
      KatSopr_Summa
      count_of_spsopr
!.{
!.}
!.}
!.}
.endfields
.{ GrSopr_main_GrSopr CheckEnter

  БСВОДНАЯ НАКЛАДНАЯ № Б ^  Бот Б ^

 Б Автопредприятие:  Б^ ^ Б
 Транспорт      :  Б^ ^ Б
 Водитель       :  Б^ Б
 Пункт погрузки :  Б^ ^ Б
 Пункт разгрузки:  Б^ ^ Б
 Доверенность   : №  Б^ Б от  Б^ Б
 Доверенное лицо:  Б^ Б, паспорт  РСерия Р ^,  Рномер Р ^,  Рвыдан Р  Р^ ^ С

───────────┬──────────┬─────────────────────────────────┬────────────────┬────────
   Номер   │   Дата   │ Контрагент                      │ Сумма          │ позиций
───────────┴──────────┴─────────────────────────────────┴────────────────┴────────
.{ GrSopr_main_KatSopr CheckEnter
.begin
  count_of_spsopr := 0;
 end.
.{ GrSopr_main_SpSopr CheckEnter
.begin
  count_of_spsopr++;
 end.
.}
@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#&&&&&&&&&&&.&& &#&&&&&
.}
.................................................................................
.}
.endform
