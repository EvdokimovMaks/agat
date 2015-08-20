!
!  (c) 1987 корпорация ГАЛАКТИКА
!
!  Проект        : ГАЛАКТИКА
!  Система       : Оперативный контур
!  Версия        : 5.20
!
!  Назначение    : печать сводной накладной с сортировакой по МЦ
!
!  Ответственный : Глушаков Дмитрий Сергеевич
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
Печать сводной накладной с сортировакой по МЦ
#end
.Form GrSopr_frm_Quarta
.hide
.fields
  GrSopr_nRec                      :comp
  GrSopr_вид
  GrSopr_номер
  GrSopr_дата                      :date
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
      GrSopr_БАНК_Вид_Счета  // 1-активн 0-неакт        _ 10 полей
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
      GrSopr_Auto_БАНК_Вид_Счета  // 1-активн 0-неакт        _ 10 полей
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
  GrSopr_Dover_dDoc          : date
  // PrintDovFio ;
  GrSopr_DovFio_Name
  GrSopr_DovFio_PasSer
  GrSopr_DovFio_PasNumb
  GrSopr_DovFio_WhereVid
  GrSopr_DovFio_DatVid
  // frmGrSopr.Write(GrSopr.dOpr    ) ; // date     "дата оприходования"
  GrSopr_дата_оприходования // например дата выдачи

!.{ // МЦ
   мц_нрек                   : comp
   мц_Признак                : word
   мц_имя
   мц_код
   мц_отпЕд_нрек             : comp
   мц_учЕд                            // вставил Nazgul

!   КолФ                      : double // вставил Nazgul
!   КолУч                     : double // вставил Nazgul
!   ЦНацУч                    : double // вставил Nazgul
!   СтНац                     : double // вставил Nazgul
!   Цена_ордера_нац           : double // вставил Nazgul
! не имеют смысла, т.к. при нескольких одинаковых МЦ в отчет попадают данные
! только из первой !

   мц_отпЕд_имя
   мц_отпЕд_коеф             : double
   мц_используемаяЕд_имя // Отпускная или Учетная
!.{ // Организация
   получатель_нрек           : comp
   Получатель_Имя                 // KatOrg.Name
   Получатель_Код                 // KatOrg.TipOrg
   Получатель_Адрес               // KatOrg.Addr
   Получатель_ОКПО                // KatOrg.OKpo
   Получатель_ОКОНХ               // KatOrg.OKONH
   Получатель_ТЕЛ                 // KatOrg.TEL
   Получатель_КонтИнф             // KatOrg.CONTAKTS      Контактная информация
   Получатель_Email               // KatOrg.EMAIL         Электронный почтовый адрес
   Получатель_OKATO               // PodrInfo.OKATO       Код по общероссийскому классификатору административно-территориального деления
   Получатель_KBK                 // PodrInfo.KBK         Код бюджетной классификации
   Получатель_OGRN                // PodrInfo.OGRN        Основной государственный регистрационный номер
   Получатель_РегНом_в_ПФ         // PodrInfo.REGNOMPFR   Регистрационный номер в ПФ
   Получатель_РегНом_Страхователя // PodrInfo.POlE3S      Регистрационный номер страхователя
   Получатель_Орган_Исполн_Власти // PodrInfo.INSNAME     Орган исполнительной власти
   Получатель_Форма_Собственности // FormSobs.Name        Форма собственности
   Получатель_Вид_Деятельности    // FormSobs.VidD        Вид деятельности 
   Получатель_СТАРАНА_КОД         // KatState.KOD
   Получатель_СТРАНА_ИМЯ          // KatState.Name
   Получатель_СТРАНА_НАЛОГИ       // KatState.IsNal
   Получатель_ГОРОД_КОД           // KatCity.KOD
   Получатель_ГОРОД_ИМЯ           // KatCity.Name
   Получатель_ГОРОД_ТЕЛ           // KatCity.TEL
   Получатель_ГОРОД_СТРАНА_КОД    // KatState.KOD
   Получатель_ГОРОД_СТРАНА_ИМЯ    // KatState.Name
   Получатель_ГОРОД_СТРАНА_НАЛОГИ // KatState.IsNal
   Получатель_КОРПОРАЦИЯ          // KatOrg.CorpoIn
   Получатель_УНН                 // KatOrg.UNN        
   Получатель_КПП                 // KatOrg.KODPLATNDS       =  28 ПОЛЕЙ
       Получатель_БАНК_Имя
       Получатель_БАНК_Коментарий
       Получатель_БАНК_Адрес
       Получатель_БАНК_Мфо
       Получатель_БАНК_Ркц
       Получатель_БАНК_Счет
       Получатель_БАНК_Счет_Ркц
       Получатель_БАНК_Счет_Плат  // счет для платежных документов
       Получатель_БАНК_Тип_Счета  // 0 расчетный, 1-текущий
       Получатель_БАНК_Вид_Счета  // 1-активн 0-неакт        _ 10 полей
!.{ // накладная                            //:comp
   накладная_нрек      :comp   // KatSopr.nRec
   накладная_номер     // KatSopr.nSopr
   накладная_дата      :date   // KatSopr.dSopr
   накладная_сумма_НДС :double // KatSopr.Summa
   накладная_имя
!.{ // спецификация
   спецификация_нрек   // comp
   КолФОтпЕд           :double // спецификация_количество_в_используемаяЕд
   ЦенаОтпЕд           :double // спецификация_цена_в_используемаяЕд_НДС

   КолУч               :double
   ЦНацУч              :double
   СтНац               :double
   Цена_ордера_нац     :double
!.} // спецификация
!.} // накладная
!.} // Организация
!.} // МЦ

.endfields

  GrSopr_nRec                                ^
  GrSopr_вид                                 ^
  GrSopr_номер                               ^
  GrSopr_дата                                ^
  GrSopr_дескриптор                          ^
  GrSopr_группа_дескрипторов                 ^
  GrSopr_строка                              ^

  GrSopr_Имя                                 ^
  GrSopr_Код                                 ^
  GrSopr_Адрес                               ^
  GrSopr_ОКПО                                ^
  GrSopr_ОКОНХ                               ^
  GrSopr_ТЕЛ                                 ^
  GrSopr_КонтИнф                             ^
  GrSopr_Email                               ^
  GrSopr_OKATO                               ^
  GrSopr_KBK                                 ^
  GrSopr_OGRN                                ^
  GrSopr_РегНом_в_ПФ                         ^
  GrSopr_РегНом_Страхователя                 ^
  GrSopr_Орган_Исполн_Власти                 ^
  GrSopr_Форма_Собственности                 ^
  GrSopr_Вид_Деятельности                    ^
  GrSopr_СТАРАНА_КОД                         ^
  GrSopr_СТРАНА_ИМЯ                          ^
  GrSopr_СТРАНА_НАЛОГИ                       ^
  GrSopr_ГОРОД_КОД                           ^
  GrSopr_ГОРОД_ИМЯ                           ^
  GrSopr_ГОРОД_ТЕЛ                           ^
  GrSopr_ГОРОД_СТРАНА_КОД                    ^
  GrSopr_ГОРОД_СТРАНА_ИМЯ                    ^
  GrSopr_ГОРОД_СТРАНА_НАЛОГИ                 ^
  GrSopr_КОРПОРАЦИЯ                          ^
  GrSopr_УНН                                 ^
  GrSopr_КПП                                 ^
      GrSopr_БАНК_Имя                        ^
      GrSopr_БАНК_Коментарий                 ^
      GrSopr_БАНК_Адрес                      ^
      GrSopr_БАНК_Мфо                        ^
      GrSopr_БАНК_Ркц                        ^
      GrSopr_БАНК_Счет                       ^
      GrSopr_БАНК_Счет_Ркц                   ^
      GrSopr_БАНК_Счет_Плат                  ^
      GrSopr_БАНК_Тип_Счета                  ^
      GrSopr_БАНК_Вид_Счета                  ^

  GrSopr_KatPodr_Kod                         ^
  GrSopr_KatPodr_Name                        ^
  GrSopr_KatPodr_Addr                        ^
  GrSopr_KatPodr_FIO                         ^
  GrSopr_KatPodr_nBase                       ^

  GrSopr_KatMol_Kod                          ^
  GrSopr_KatMol_Name                         ^

  GrSopr_KatParty_Kod                        ^
  GrSopr_KatParty_Name                       ^
  GrSopr_KatParty_nSertif                    ^
  GrSopr_KatParty_dSertif                    ^

  GrSopr_Auto_Имя                            ^
  GrSopr_Auto_Код                            ^
  GrSopr_Auto_Адрес                          ^
  GrSopr_Auto_ОКПО                           ^
  GrSopr_Auto_ОКОНХ                          ^
  GrSopr_Auto_ТЕЛ                            ^
  GrSopr_Auto_КонтИнф                        ^
  GrSopr_Auto_Email                          ^
  GrSopr_Auto_OKATO                          ^
  GrSopr_Auto_KBK                            ^
  GrSopr_Auto_OGRN                           ^
  GrSopr_Auto_РегНом_в_ПФ                    ^
  GrSopr_Auto_РегНом_Страхователя            ^
  GrSopr_Auto_Орган_Исполн_Власти            ^
  GrSopr_Auto_Форма_Собственности            ^
  GrSopr_Auto_Вид_Деятельности               ^
  GrSopr_Auto_СТАРАНА_КОД                    ^
  GrSopr_Auto_СТРАНА_ИМЯ                     ^
  GrSopr_Auto_СТРАНА_НАЛОГИ                  ^
  GrSopr_Auto_ГОРОД_КОД                      ^
  GrSopr_Auto_ГОРОД_ИМЯ                      ^
  GrSopr_Auto_ГОРОД_ТЕЛ                      ^
  GrSopr_Auto_ГОРОД_СТРАНА_КОД               ^
  GrSopr_Auto_ГОРОД_СТРАНА_ИМЯ               ^
  GrSopr_Auto_ГОРОД_СТРАНА_НАЛОГИ            ^
  GrSopr_Auto_КОРПОРАЦИЯ                     ^
  GrSopr_Auto_УНН                            ^
  GrSopr_Auto_КПП                            ^
      GrSopr_Auto_БАНК_Имя                   ^
      GrSopr_Auto_БАНК_Коментарий            ^
      GrSopr_Auto_БАНК_Адрес                 ^
      GrSopr_Auto_БАНК_Мфо                   ^
      GrSopr_Auto_БАНК_Ркц                   ^
      GrSopr_Auto_БАНК_Счет                  ^
      GrSopr_Auto_БАНК_Счет_Ркц              ^
      GrSopr_Auto_БАНК_Счет_Плат             ^
      GrSopr_Auto_БАНК_Тип_Счета             ^
      GrSopr_Auto_БАНК_Вид_Счета             ^

  GrSopr_Transp_Nomer                        ^
  GrSopr_Transp_Marka                        ^

  GrSopr_KlDriver_Name                       ^

  GrSopr_Avt_KodMarch                        ^
  GrSopr_Avt_MMarAvt                         ^

  GrSopr_PunktsP_Name                        ^
  GrSopr_PunktsP_Addr                        ^
  GrSopr_PunktsP_KoefW                       ^
  GrSopr_PunktsP_Normat                      ^
  GrSopr_PunktsP_Distantion                  ^
  GrSopr_PunktsP_Time                        ^

  GrSopr_PunktsR_Name                        ^
  GrSopr_PunktsR_Addr                        ^
  GrSopr_PunktsR_KoefW                       ^
  GrSopr_PunktsR_Normat                      ^
  GrSopr_PunktsR_Distantion                  ^
  GrSopr_PunktsR_Time                        ^

  GrSopr_Dover_NoDoc                         ^
  GrSopr_Dover_dDoc                          ^

  GrSopr_DovFio_Name                         ^
  GrSopr_DovFio_PasSer                       ^
  GrSopr_DovFio_PasNumb                      ^
  GrSopr_DovFio_WhereVid                     ^
  GrSopr_DovFio_DatVid                       ^

  GrSopr_дата_оприходования                  ^

.{ GrSopr_Quarta_MC // МЦ
MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_MC_
   мц_нрек                                   ^
   мц_Признак                                ^
   мц_имя                                    ^
   мц_код                                    ^
   мц_отпЕд_нрек                             ^
   мц_учЕд                                   ^

!   КолФ                                      ^ // вставил Nazgul
!   КолУч                                     ^ // вставил Nazgul
!   ЦНацУч                                    ^ // вставил Nazgul
!   СтНац                                     ^ // вставил Nazgul
!   Цена_ордера_нац                           ^ // вставил Nazgul
!
   мц_отпЕд_имя                              ^
   мц_отпЕд_коеф                             ^
   мц_используемаяЕд_имя                     ^
.{ GrSopr_Quarta_Org // Организация
Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_Org_
   получатель_нрек                           ^
   Получатель_Имя                            ^
   Получатель_Код                            ^
   Получатель_Адрес                          ^
   Получатель_ОКПО                           ^
   Получатель_ОКОНХ                          ^
   Получатель_ТЕЛ                            ^
   Получатель_КонтИнф                        ^
   Получатель_Email                          ^
   Получатель_OKATO                          ^
   Получатель_KBK                            ^
   Получатель_OGRN                           ^
   Получатель_РегНом_в_ПФ                    ^
   Получатель_РегНом_Страхователя            ^
   Получатель_Орган_Исполн_Власти            ^
   Получатель_Форма_Собственности            ^
   Получатель_Вид_Деятельности               ^
   Получатель_СТАРАНА_КОД                    ^
   Получатель_СТРАНА_ИМЯ                     ^
   Получатель_СТРАНА_НАЛОГИ                  ^
   Получатель_ГОРОД_КОД                      ^
   Получатель_ГОРОД_ИМЯ                      ^
   Получатель_ГОРОД_ТЕЛ                      ^
   Получатель_ГОРОД_СТРАНА_КОД               ^
   Получатель_ГОРОД_СТРАНА_ИМЯ               ^
   Получатель_ГОРОД_СТРАНА_НАЛОГИ            ^
   Получатель_КОРПОРАЦИЯ                     ^
   Получатель_УНН                            ^
   Получатель_КПП                            ^
       Получатель_БАНК_Имя                   ^
       Получатель_БАНК_Коментарий            ^
       Получатель_БАНК_Адрес                 ^
       Получатель_БАНК_Мфо                   ^
       Получатель_БАНК_Ркц                   ^
       Получатель_БАНК_Счет                  ^
       Получатель_БАНК_Счет_Ркц              ^
       Получатель_БАНК_Счет_Плат             ^
       Получатель_БАНК_Тип_Счета             ^
       Получатель_БАНК_Вид_Счета             ^
.{ GrSopr_Quarta_Nakl // накладная
Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_Sopr_
   накладная_нрек                            ^
   накладная_номер                           ^
   накладная_дата                            ^
   накладная_сумма_НДС                       ^
   накладная_имя                             ^
.{ GrSopr_Quarta_Sample // спецификация
Sample_Sample_Sample_Sample_Sample_Sample_Sample_Sample_Sample_Sample_Sample_
   спецификация_нрек                         ^
   КолФОтпЕд                                 ^
   ЦенаОтпЕд                                 ^
   КолУч                                     ^
   ЦНацУч                                    ^
   СтНац                                     ^
   Цена_ордера_нац                           ^
.} // спецификация
.} // накладная
.} // Организация
.} // МЦ

.endform


!

#doc
Сводная накладная с группировкой по МЦ
#end
.linkform 'GrSopr_frm_Quarta 01' prototype is GrSopr_frm_Quarta
.NameInList 'Сводная накладная с группировкой по МЦ'
.var
  nkol, ncena, nsumma,
  okol, ocena, osumma,
  mkol, mcena, msumma,
  jkol, jcena, jsumma : double
  NumberNakl,DateNakl : string
.endvar
.fields
  GrSopr_номер
  DateToStr(GrSopr_дата,'DD mon YYYY г.')
  GrSopr_Transp_Nomer + ' ' + GrSopr_Transp_Marka
  GrSopr_Dover_NoDoc
  GrSopr_KlDriver_Name
!.{ // МЦ
   мц_имя
   мц_код
   мц_используемаяЕд_имя // Отпускная или Учетная
!.{ // Организация
   Получатель_Имя+
   if (Получатель_ОКПО<>'', ' ОКПО '+Получатель_ОКПО ,'')
!.{ // накладная
!.{ // спецификация
   NumberNakl
   DateNakl
   КолФОтпЕд
   ЦенаОтпЕд
   КолФОтпЕд*ЦенаОтпЕд
!.} // спецификация
!.} // накладная
!.} // Организация
!.} // МЦ
.endfields
.p 50
.begin
  jkol := 0 ; jcena := 0 ; jsumma := 0 ;
end.
 Й
                     ПРОПУСК-СВОДНАЯ НАКЛАДНАЯ № ^ от ^

Транспорт ср-во № ^ п./лист(доверенность) № ^
Водитель ^
Время въезда через КПП: ___________________________________________________________________
Точка погрузки: Склад готовой продукции ___________________________________________________
Время выезда через КПП: ___________________________________________________________________ Й


.{ GrSopr_Quarta_MC // МЦ
.[h
 И──────────────────────────────────────────────────┬───────────┬─────────────┬──────────────
 Наименование                                     │ Кол-во    │ Цена        │ Сумма
──────────────────────────────────────────────────┴───────────┴─────────────┴──────────────
 И
.]h
.begin
  mkol := 0 ; mcena := 0 ; msumma := 0 ;
end.
 ИМЦ ^ № ^ измеряется в ^ И
.{ GrSopr_Quarta_Org // Организация
.begin
  okol := 0 ; ocena := 0 ; osumma := 0 ;
end.
 И    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.{ GrSopr_Quarta_Nakl // накладная
.begin
  nkol := 0 ; ncena := 0 ; nsumma := 0 ;
  NumberNakl := накладная_номер ;
  DateNakl   := DateToStr(накладная_дата,'DD/MM/YYYY') ;
end.
.{ GrSopr_Quarta_Sample // спецификация
.begin

  nkol   := nkol   + КолФОтпЕд ;
  okol   := okol   + КолФОтпЕд ;
  mkol   := mkol   + КолФОтпЕд ;
  jkol   := jkol   + КолФОтпЕд ;

  ncena  := ncena  + ЦенаОтпЕд ;
  ocena  := ocena  + ЦенаОтпЕд ;
  mcena  := mcena  + ЦенаОтпЕд ;
  jcena  := jcena  + ЦенаОтпЕд ;

  nsumma := nsumma + КолФОтпЕд*ЦенаОтпЕд ;
  osumma := osumma + КолФОтпЕд*ЦенаОтпЕд ;
  msumma := msumma + КолФОтпЕд*ЦенаОтпЕд ;
  jsumma := jsumma + КолФОтпЕд*ЦенаОтпЕд ;

 end. //                                dd/mm/gggg
 И            Накладная № @@@@@@@@@@ от @@@@@@@@@@   &&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&&&.&& И
.} // спецификация
.fields
  nkol
  ncena
  nsumma
.endfields
 И              Итого по накладной                   &&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&&&.&& И
.} // накладная
.fields
  okol
  ocena
  osumma
.endfields
 И    Итого по организации                           &&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&&&.&& И
.} // Организация
.fields
  mkol
  mcena
  msumma
.endfields
 ИИтого по МЦ                                        &&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&&&.&&
 И
.} // МЦ
.fields
  jkol
  jcena
  jsumma
.endfields
 ЙВсего по отчету                                    &&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&&&.&& Й
 И
Отпуск продукции разрешил: ________________________________________________________________
Продукцию отпустил МОЛ: ___________________________________________________________________
Груз для доставки принял: _________________________________________________________________
Отметка о проверке груза на КПП ___________________________________________________________
 И
.endform
