//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Логистика
// Таблицы в памяти, идентичные прототипу TOVN
//******************************************************************************

//******************************************************************************
// Контрагенты
Table Struct MPrnSoprOrg
(
  KatSoprNRec         /*                                */ : comp
, SpSoprNRec          /*                                */ : comp
, PrOrg               /*                                */ : word      "1-Пост,2-ГрОтп,3-ГрПол,4-Получ,5-Плат"
                      //6-ЗакПлат,7-Авто,8-ПунктР_Орг,9-ПунктП_Орг,10-СпПунктР_Орг,11-СпПунктП_Орг
, KatOrg_Name         /* организация                    */ : tNameOrg  "KatOrg.Name"
, KatOrg_TipOrg       /* организацияКод                 */ : s20       "KatOrg.TipOrg"
, KatOrg_Addr         /* организация_Адрес              */ : tAddrName "KatOrg.Addr"
, KatOrg_OKPO         /* организация_ОКПО               */ : s20       "KatOrg.OKPO"
, KatOrg_OKONH        /* организация_ОКОНХ              */ : s20       "KatOrg.OKONH"
, KatOrg_TEL          /* организация_ТЕЛ                */ : tName     "KatOrg.TEL"
, KatOrg_CONTAKT      /* организация_КонтИнф            */ : tName     "KatOrg.CONTAKTS, Контактная информация"
, KatOrg_EMAIL        /* организация_Email              */ : tName     "KatOrg.EMAIL, Электронный почтовый адрес"
, KatOrg_OKATO        /* организация_OKATO              */ : s20       "KatOrg.OKATO,код класс. террит.деления"
, KatOrg_KBK          /* организация_KBK                */ : s20       "KatOrg.KBK,код бюджетной классификации"
, KatOrg_OGRN         /* организация_OGRN               */ : s20       "KatOrg.OGRN, основной гос.рег. номер"
, KatOrg_REGNO        /* организация_РегНом_в_ПФ        */ : s20       "KatOrg.REGNOMPFRm, Рег. № в ПФ"
, KatOrg_REGNOS       /* организация_РегНом_Страхователя*/ : s30       "KatOrg.REGNOMSTRAX, Рег. № страхователя"
, KatOrg_INSNA        /* организация_Орган_Исполн_Власти*/ : string    "KatOrg.INSNAME, Орган исп. власти"
, FormSobs_Name       /* организация_Форма_Собственности*/ : tName     "FormSobs.Name, Форма собственности"
, FormSobs_VidD       /* организация_Вид_Деятельности   */ : string    "FormSobs.VidD, Вид деятельности"
, KatState_KOD        /* организация_СТАРАНА_КОД        */ : s20       "KatState.KOD"
, KatState_Name       /* организация_СТРАНА_ИМЯ         */ : tName     "KatState.Name"
, KatState_IsNal      /* организация_СТРАНА_НАЛОГИ      */ : word      "KatState.IsNal"
, KatCity_KOD         /* организация_ГОРОД_КОД          */ : s20       "KatCity.KOD"
, KatCity_Name        /* организация_ГОРОД_ИМЯ          */ : tName     "KatCity.Name"
, KatCity_TEL         /* организация_ГОРОД_ТЕЛ          */ : tName     "KatCity.TEL"
, KatStateS_KOD       /* организация_ГОРОД_СТРАНА_КОД   */ : s20       "KatState.KOD"
, KatStateS_Name      /* организация_ГОРОД_СТРАНА_ИМЯ   */ : tName     "KatState.Name"
, KatStateS_IsNal     /* организация_ГОРОД_СТРАНА_НАЛОГИ*/ : word      "KatState.IsNal"
, KatOrg_CorpoIn      /* организация_КОРПОРАЦИЯ         */ : word      "KatOrg.CorpoIn"
, KatOrg_UNN          /* организацияУНН                 */ : s20       "KatOrg.UNN"
, KatOrg_KODPLAT      /* организацияКПП                 */ : s20       "KatOrg.KODPLATNDS = 28 ПОЛЕЙ"
, KatB_Name           /* организация_БАНК_Имя           */ : string    "KatB.Name"
, KatB_Remark         /* организация_БАНК_Коментарий    */ : string    "KatB.Remark"
, KatB_Addr           /* организация_БАНК_Адрес         */ : tAddrName "KatB.Addr"
, KatB_MFO1           /* организация_БАНК_Мфо           */ : s20       "KatB.MFO1"
, KatB_MFO2           /* организация_БАНК_Ркц           */ : s20       "KatB.MFO2"
, KatB_Schet1         /* организация_БАНК_Счет          */ : s40       "KatB.Schet1"
, KatB_Schet2         /* организация_БАНК_Счет_Ркц      */ : s40       "KatB.Schet2"
, KatB_Schet3         /* организация_БАНК_Счет_Плат     */ : s40       "KatB.Schet3  счет для плат. документов"
, KatB_TipSchet       /* организация_БАНК_Тип_Счета     */ : word      "KatB.TipSchet 0 расчетный, 1-текущий"
, KatB_Aktiv          /* организация_БАНК_Вид_Счета     */ : word      "KatB.Aktiv 1-активн 0-неакт   = 10 полей"
, KatOrg_UrAddr       /* организация_ЮрАдрес            */ : string    "Юридический адрес  =  1"
)
with index
(
  MPrnSoprOrg01 = KatSoprNRec + PrOrg
, MPrnSoprOrg02 = SpSoprNRec + PrOrg
);

Type TMPrnSoprOrg = record as Table MPrnSoprOrg;


//******************************************************************************
// накладные
Table Struct MPrnSoprNakl
(
  KatSoprNRec         /*                                */ : comp
, UNN                 /* unn_inn                        */ : s20       "УНН - если Настр.= Беларусь.Иначе ИНН"
, KolSpSopr           /* количество_SpSopr              */ : word      "Кол-во позиций. Только МЦ."
, TypeParentDoc       /* тип_родительского_документа    */ : word
, LicPost             /* Лицензия_Поставщик             */ : string    "Значение класс. ЛИЦЕНЗИЯ к KATORG"
, LicGrouzOtp         /* Лицензия_Грузоотправитель      */ : string
, LicGrouzPol         /* Лицензия_Грузополучатель       */ : string
, LicPol              /* Лицензия_Получатель            */ : string
, LicPlat             /* Лицензия_Плательщик            */ : string
, LicZakPlat          /* Лицензия_Заказчик_Плательщик   */ : string
, grotp_gl_name       /* Грузоотправитель_Головная_Орг_Наимен */ : string
, grpol_gl_name       /* Грузополучатель_Головная_Орг_Наимен */  : string
, PriceList           /* ПрейскурантЦен                 */ : string    "Значение класс. ПРЕЙСКУРАНТ к KATSOPR"
, Director            /* Директор                       */ : string    "Значение настр. ..Руководитель"
, DirectorTabNom      /* Директор_ТабНом                */ : string
, DirectorApp         /* Директор_Должность             */ : string
, GBuhName            /* Главный_Бухгалтер              */ : string    "Значение настройки ..Главный бухгалтер"
, GbuhNom             /* Главный_Бухгалтер_ТабНом       */ : string
, GbuhApp             /* Главный_Бухгалтер_Должность    */ : string
, KatSopr_NSopr       /* Номер                          */ : tDocNumber"KatSopr.NSopr"
, KatSopr_Descr       /* ОператорЭВМ                    */ : tDescr    "KatSopr.Descr"
, KatSopr_DescNum     /* Номер_с_дескриптором           */ : string    "PrintNumber(KatSopr.Descr,KatSopr.NSopr)"
, KatSopr_UserField   /* ПолеПользователя               */ : tName     "KatSopr.UserField"
, Dogovor_NoDoc       /* Номер_Договора                 */ : tDocNumber"Dogovor.NoDoc"
, Dogovor_dDoc        /* Дата_Договора                  */ : date      "Dogovor.dDoc"
, Dogovor_NoDoc_Ext   /* Номер_Договора_Ext             */ : tDocNumber"Dogovor.NoDoc_Ext"
, KatSopr_dSopr       /* Дата                           */ : date      "KatSopr.dSopr"
, Day_KatSopr_dSopr   /* ДатаДень                       */ : s10       "day(KatSopr.dSopr)"
, Mon_KatSopr_dSopr   /* ДатаМесяц                      */ : s20       "datetostr(KatSopr.dSopr,'mon')"
, Year_KatSopr_dSopr  /* ДатаГод                        */ : s10       "datetostr(KatSopr.dSopr,'YY')"
, KatSopr_dOpr        /* Дата_Отгрузки                  */ : date      "KatSopr.dOpr"
, KatSopr_nDover      /* НомерДовер                     */ : tDocNumber"KatSopr.nDover"
, KatSopr_dDover      /* ДатаДовер                      */ : date      "KatSopr.dDover"
, KatSopr_sDover      /* ФИОДовер                       */ : tName     "KatSopr.sDover"
, DovFIO_Name         /* ДовЛицо                        */ : tName     "DovFIO.Name"
, DovFIO_Post         /* ДовЛицоДолжность               */ : tName     "DovFIO.Post"
, DovFIO_PasSer       /* ДовЛицоПаспСерия               */ : s20       "DovFIO.PasSer"
, DovFIO_PasNumb      /* ДовЛицоПаспНомер               */ : s20       "DovFIO.PasNumb"
, DovFIO_WhereVid     /* ДовЛицоПаспГде                 */ : tName     "DovFIO.WhereVid"
, DovFIO_DatVid       /* ДовЛицоПаспКогда               */ : s20       "DovFIO.DatVid"
, DoverOrgNRec        /* ОргДоверNRec                   */ : comp      "организация, выдавшая дов. (из довер.)"
, DoverOrgName        /* ОргДовер                       */ : string    "организация, выдавшая дов. (из довер.)"
, KatSopr_Name        /* Назван_накладной               */ : string    "KatSopr.Name"
, KatPodr_Name        /* Склад                          */ : string    "KatPodr.Name"
, KatPodr_Addr        /* Склад_Адрес                    */ : tAddrName "KatPodr.Addr"
, KatPodrTo_Name      /* Склад_Пол                      */ : string    "KatPodrTo.Name"
, KatPodrTo_Addr      /* Склад_Пол_Адрес                */ : tAddrName "KatPodrTo.Addr"
, KatMol_Name         /* МОЛ                            */ : string    "KatMol.Name"
, MolTabNom           /* Мол_ТабНом                     */ : tName     ""
, MolApp              /* МолДолжность                   */ : tName     "Catalogs.Name через KatMol.cPersons"
, SkladBoss           /* СкладРуководитель              */ : tName     "KatPodr.FIO"
, KatMolTo_Name       /* МОЛ_Пол                        */ : string    "KatMolTo.Name"
, MolPolTabNom        /* Мол_Пол_ТабНом                 */ : tName
, MolPolApp           /* МолДолжность_Пол               */ : tName     "Catalogs.Name через KatMol.cPersons"
, SkladBossPol        /* СкладРуководитель_Пол          */ : string    "KatPodrTo.FIO"
, TXO_Name            /* Назван_ТХО                     */ : string    "название хозоперации"
, Class_OsnOtp        /* Основание_отпуска              */ : string    "класс. ОСНОВАНИЕ ОТПУСКА к KATSOPR"
, Class_CelPriobr     /* Цель_приобретения              */ : string    "кл.ЦЕЛЬ ПРИОБРЕТЕНИЯ ПРОДУКЦИИ(ТОВАРА)"
, SchFact_NRec        /* СчФакт_НРек                    */ : comp      "SchFact.NRec"
, SchFact_Num         /* СчФакт_Номер                   */ : tDocNumber"SchFact.Num"
, BaseDoc_NoDoc       /* Основание                      */ : tDocNumber"BaseDoc.NoDoc"
, BaseDoc_DDoc        /* ДатаОснования                  */ : date      "BaseDoc.dDoc"
, KatNazna_Name       /* Назначение                     */ : string    "KatNazna.Name"
, NZakaz_NoDoc        /* НарядЗаказНомер                */ : tDocNumber"NZakaz.NoDoc"
, NZakaz_DDoc         /* НарядЗаказДата                 */ : date      "NZakaz.DDoc"
, NakSymbol           /* НакСимвол                      */ : s20       "Символ валюты накладной"
, NacSymbol           /* НацСимвол                      */ : s20       "Значение настройки НДЕ"
, ValSymbol           /* ВалСимвол                      */ : s20       "KlVal.SimvolV через KatSopr.cValut"
, CurseSpis           /* Курс_списания                  */ : s20       "Курс на дату SklOrder.dOrd"
, Attr_SdalOptApp     /* сдал_отправитель_должность     */ : string    "атр. СДАЛ ОТПРАВИТЕЛЬ ДОЛЖНОСТЬ. TTNDOC"
, Attr_SdalOptFIO     /* сдал_отправитель               */ : string    "атр. СДАЛ ОТПРАВИТЕЛЬ. TTNDOC"
, Attr_OptRazApp      /* отпуск_разрешил_должность      */ : string    "атр. ОТПУСК РАЗРЕШИЛ ДОЛЖНОСТЬ. TTNDOC"
, Attr_OptRazFIO      /* отпуск_разрешил                */ : string    "атр. ОТПУСК РАЗРЕШИЛ. TTNDOC"
, Attr_OptRazApp2     /* отпуск_разрешил_должность2     */ : string    "атр. ОТПУСК РАЗРЕШИЛ ДОЛЖНОСТЬ 2. TTNDOC"
, Attr_OptRazFIO2     /* отпуск_разрешил2               */ : string    "атр. ОТПУСК РАЗРЕШИЛ 2. TTNDOC"
, Attr_OptRazApp3     /* отпуск_разрешил_должность3     */ : string    "атр. ОТПУСК РАЗРЕШИЛ ДОЛЖНОСТЬ 3. TTNDOC"
, Attr_OptRazFIO3     /* отпуск_разрешил3               */ : string    "атр. ОТПУСК РАЗРЕШИЛ 3. TTNDOC"
, Attr_Driver         /* водитель                       */ : string    "атр. ВОДИТЕЛЬ. TTNDOC"
, Attr_Forw           /* экспедитор                     */ : string    "атр. ЭКСПЕДИТОР. TTNDOC"
, Attr_MyAuto         /* собственный_транспорт          */ : string    "атр. СОБСТВЕННЫЙ ТРАНСПОРТ. TTNDOC"
, Attr_AutoName       /* Автопредприятие_назв           */ : string    "атр. НАИМЕНОВАНИЕ АВТОПРЕДПРИЯТИЯ.TTNDOC"
, MetLoad_Name        /* ТТН_ПунктП_Метод_2             */ : string    "METLOAD.NAME через TTNDoc.cPunPMet"
, Attr_Auto           /* автомобиль                     */ : string    "атр. АВТОМОБИЛЬ. TTNDOC"
, Attr_MetTrans       /* способ_транспортировки         */ : string    "атр. СПОСОБ ТРАНСПОРТИРОВКИ. TTNDOC"
, Attr_KolEzd         /* количество_ездок               */ : double    "атр. КОЛИЧЕСТВО ЕЗДОК"
, TranspUsl1          /* транспортная_услуга_1          */ : string
, TranspUsl2          /* транспортная_услуга_2          */ : string
, KatSopr_cVal        /* Валюта_нрек                    */ : comp      "KatSopr.cVal"
, StrAstNakSN1        /* стр_АСтНакСН1                  */ : string
, bNalProd            /* bNalProd                       */ : boolean
, bFixGrMC            /* bFixGrMC                       */ : boolean
, bAutoGrM            /* bAutoGrM                       */ : boolean
, TaraVoz             /* TaraVoz                        */ : string
, ANaim               /* АНаименований                  */ : double
, StrANaim            /* стр_АНаименований              */ : string
, AKolF               /* АКолФ                          */ : double
, StrAKolf            /* стр_АКолФ                      */ : string
, AKolUth             /* АКолУч                         */ : double
, StrAKolUth          /* стр_АКолУч                     */ : string
, AKolVes             /* АКолВес                        */ : double
, StrAKolVes          /* стр_АКолВес                    */ : string
, AKolOb              /* АКолОб                         */ : double
, StrAKolOb           /* стр_АКолОб                     */ : string
, AStNak              /* АСтНак                         */ : double
, StrAStNak           /* стр_АСтНак                     */ : string
, AStOpl              /* АСтОпл                         */ : double
, StrAStOpl           /* стр_АСтОпл                     */ : string
, AStNac              /* АСтНац                         */ : double
, StrAStNac           /* стр_АСтНац                     */ : string
, AStNacSDost         /* АСтНацСДост                    */ : double
, StrAStNacSDost      /* стр_АСтНацСДост                */ : string
, AStVal              /* АСтВал                         */ : double
, StrAStVal           /* стр_АСтВал                     */ : string
, AStNakBN            /* АСтНакБН                       */ : double
, StrAStNakBN         /* стр_АСтНакБН                   */ : string
, AStNacBN0           /* АСтНацБН0                      */ : double
, StrAStNacBN         /* стр_АСтНацБН                   */ : string
, AStValBN            /* АСтВалБН                       */ : double
, StrAStValBN         /* стр_АСтВалБН                   */ : string
, AStNakSN            /* АСтНакСН                       */ : double
, StrAStNakSN         /* стр_АСтНакСН                   */ : string
, AStNacSN0           /* АСтНацСН0                      */ : double
, StrAStNacSN         /* стр_АСтНацСН                   */ : string
, AStValSN            /* АСтВалСН                       */ : double
, StrAStValSN         /* стр_АСтВалСН                   */ : string
, ANDSNak             /* АНДСНак                        */ : double
, StrANDSNak          /* стр_АНДСНак                    */ : string
, AEciseNak           /* ААкцизНак                      */ : double
, StrAEciseNak        /* стр_ААкцизНак                  */ : string
, ANProdNak           /* АНПродНак                      */ : double
, StrANProdNak        /* стр_АНПродНак                  */ : string
, ANalNak             /* АНАЛНак                        */ : double
, StrANalNak          /* стр_АНАЛНак                    */ : string
, ANDSNac0            /* АНДСНац0                       */ : double
, StrANDSNac          /* стр_АНДСНац                    */ : string
, AEciseNac           /* ААкцизНац                      */ : double
, StrAEciseNac        /* стр_ААкцизНац                  */ : string
, ANProdNac           /* АНПродНац                      */ : double
, StrANProdNac        /* стр_АНПродНац                  */ : string
, ANalNac             /* АНАЛНац                        */ : double
, StrANalNac          /* стр_АНАЛНац                    */ : string
, ANDSVal             /* АНДСВал                        */ : double
, StrANDSVal          /* стр_АНДСВал                    */ : string
, AEciseVal           /* ААкцизВал                      */ : double
, StrAEciseVal        /* стр_ААкцизВал                  */ : string
, ANProdVal           /* АНПродВал                      */ : double
, StrANProdVal        /* стр_АНПродВал                  */ : string
, ANalVal             /* АНАЛВал                        */ : double
, StrANalVal          /* стр_АНАЛВал                    */ : string
, APrNDS              /* АПрНДС                         */ : double
, APrEcise            /* АПрАкциз                       */ : double
, APrNProd            /* АПрНПрод                       */ : double
, APrNal              /* АПрНАЛ                         */ : double
, Signer1             /* Подписант1                     */ : string
, SignerApp1          /* Подписант_Должность1           */ : string
, Signer2             /* Подписант2                     */ : string
, SignerApp2          /* Подписант_Должность2           */ : string
, Signer3             /* Подписант3                     */ : string
, SignerApp3          /* Подписант_Должность3           */ : string
, Signer4             /* Подписант4                     */ : string
, SignerApp4          /* Подписант_Должность4           */ : string
, Signer5             /* Подписант5                     */ : string
, SignerApp5          /* Подписант_Должность5           */ : string
, AllDoc1             /* все_документы1                 */ : string
, AllDoc2             /* все_документы2                 */ : string
, AllDoc3             /* все_документы3                 */ : string
, AllDoc4             /* все_документы4                 */ : string
, AllDoc5             /* все_документы5                 */ : string
, AllCert1            /* все_сертификаты1               */ : string
, AllCert2            /* все_сертификаты2               */ : string
, AllCert3            /* все_сертификаты3               */ : string
, AllCert4            /* все_сертификаты4               */ : string
, AllCert5            /* все_сертификаты5               */ : string
, sPrice              /* все_прайслисты                 */ : string
, SpSymbol            /* спецсимвол                     */ : s10
, BarCode             /* штрих-код                      */ : string
)
with index
(
  MPrnSoprNakl01 = KatSoprNRec
);

Type TMPrnSoprNakl = record as Table MPrnSoprNakl;


//******************************************************************************
// товарно-транспортная информация
Table Struct MPrnSoprTTI
(
  KatSoprNRec         /* KatSoprNRec                    */ : comp
, MarKod              /* ТТН_Маршрут_Код                */ : tName
, MarName             /* ТТН_Маршрут_Имя                */ : tName
, MarSpKod            /* ТТН_Маршрут_СпособТран_Код     */ : tName
, MarSpName           /* ТТН_Маршрут_СпособТран_Имя     */ : tName
, MarRasst            /* ТТН_Маршрут_Расст              */ : s20
, MarSpeed            /* ТТН_Маршрут_Скорость           */ : s20
, SpeedKod            /* ТТН_Скорость_Код               */ : tName
, SpeedName           /* ТТН_Скорость_Имя               */ : tName
, SpeedMin            /* ТТН_Скорость_Мин               */ : s20
, SpeedMax            /* ТТН_Скорость_Макс              */ : s20
, Speed               /* ТТН_Скорость                   */ : s20
, BasisKod            /* ТТН_Базис_Код                  */ : tName
, BasisName           /* ТТН_Базис_Имя                  */ : tName
, SpOtgrKod           /* ТТН_СпособОтгр_Код             */ : tName
, SpOtgrName          /* ТТН_СпособОтгр_Имя             */ : tName
, SpOtgrBasisKod      /* ТТН_СпособОтгр_Базис_Код       */ : tName
, SpOtgrBasisName     /* ТТН_СпособОтгр_Базис_Имя       */ : tName
, SpTransKod          /* ТТН_СпособОтгр_СпособТран_Код  */ : tName
, SpTransName         /* ТТН_СпособОтгр_СпособТран_Имя  */ : tName
, PunktRNormRazgr     /* ТТН_ПунктР_Норматив_Разгр      */ : string
, PunktRNormMar       /* ТТН_ПунктР_Расст_Маршрут       */ : double
, PunktRName          /* ТТН_ПунктР_Имя                 */ : string
, PunktRRasst         /* ТТН_ПунктР_Расст               */ : double
, PunktRCountryKod    /* ТТН_ПунктР_СТРАНА_КОД          */ : s20
, PunktRCountryName   /* ТТН_ПунктР_СТРАНА_ИМЯ          */ : tName
, PunktRCountryNal    /* ТТН_ПунктР_СТРАНА_НАЛОГИ       */ : s10
, PunktRSityKod       /* ТТН_ПунктР_ГОРОД_КОД           */ : s20
, PunktRSityName      /* ТТН_ПунктР_ГОРОД_ИМЯ           */ : tName
, PunktRSityTel       /* ТТН_ПунктР_ГОРОД_ТЕЛ           */ : tName
, PunktRSCountryKod   /* ТТН_ПунктР_ГОРОД_СТРАНА_КОД    */ : s20
, PunktRSCountryName  /* ТТН_ПунктР_ГОРОД_СТРАНА_ИМЯ    */ : tName
, PunktRSCountryNal   /* ТТН_ПунктР_ГОРОД_СТРАНА_НАЛОГИ */ : s10
, PunktRAddr          /* ТТН_ПунктР_Адрес               */ : tAddrName
, PunktRDateIn        /* ТТН_ПунктР_Дата_С              */ : date
, PunktRTimeIn        /* ТТН_ПунктР_Время_С             */ : s20
, PunktRDateOut       /* ТТН_ПунктР_Дата_По             */ : date
, PunktRTimeOut       /* ТТН_ПунктР_Время_По            */ : s20
, PunktRMet           /* ТТН_ПунктР_Метод               */ : tName
, PunktRDopName       /* ТТН_ПунктР_Доп_Имя             */ : tName
, PunktRDopKol        /* ТТН_ПунктР_Доп_Колич           */ : double
, PunktRDopTime       /* ТТН_ПунктР_Доп_Время           */ : s20
, PunktPNormRazgr     /* ТТН_ПунктП_Норматив_Погр       */ : tName
, PunktPNormMar       /* ТТН_ПунктП_Расст_Маршрут       */ : double
, PunktPName          /* ТТН_ПунктП_Имя                 */ : string
, PunktPRasst         /* ТТН_ПунктП_Расст               */ : double
, PunktPCountryKod    /* ТТН_ПунктП_СТРАНА_КОД          */ : s20
, PunktPCountryName   /* ТТН_ПунктП_СТРАНА_ИМЯ          */ : tName
, PunktPCountryNal    /* ТТН_ПунктП_СТРАНА_НАЛОГИ       */ : word
, PunktPSityKod       /* ТТН_ПунктП_ГОРОД_КОД           */ : s20
, PunktPSityName      /* ТТН_ПунктП_ГОРОД_ИМЯ           */ : tName
, PunktPSityTel       /* ТТН_ПунктП_ГОРОД_ТЕЛ           */ : tName
, PunktPSCountryKod   /* ТТН_ПунктП_ГОРОД_СТРАНА_КОД    */ : s20
, PunktPSCountryName  /* ТТН_ПунктП_ГОРОД_СТРАНА_ИМЯ    */ : tName
, PunktPSCountryNal   /* ТТН_ПунктП_ГОРОД_СТРАНА_НАЛОГИ */ : word
, PunktPAddr          /* ТТН_ПунктП_Адрес               */ : tAddrName
, PunktPDateIn        /* ТТН_ПунктП_Дата_С              */ : date
, PunktPTimeIn        /* ТТН_ПунктП_Время_С             */ : s20
, PunktPDateOut       /* ТТН_ПунктП_Дата_По             */ : date
, PunktPTimeOut       /* ТТН_ПунктП_Время_По            */ : s20
, PunktPMet           /* ТТН_ПунктП_Метод               */ : tName
, PunktPDopName       /* ТТН_ПунктП_Доп_Имя             */ : tName
, PunktPDopKol        /* ТТН_ПунктП_Доп_Колич           */ : double
, PunktPDopTime       /* ТТН_ПунктП_Доп_Время           */ : s20
, Summa               /* ТТН_Сумма                      */ : s20
, Val                 /* ТТН_Валюта                     */ : s10
, Putlst_Kformpl      /* ТТН_ПЛист_Код                  */ : s10       "Putlst.Kformpl"
, Putlst_NPL          /* ТТН_ПЛист_Номер                */ : s20       "Putlst.NPL"
, Putlst_Nseria       /* ТТН_ПЛист_Серия                */ : s20       "Putlst.Nseria"
, Putlst_Nomer        /* ТТН_ПЛист_ГосНомер             */ : s15       "Putlst.Nomer"
, Putlst_DatPl        /* ТТН_ПЛист_ДатаВыдачи           */ : s20       "Putlst.DatPl"
, Putlst_ExitDn       /* ТТН_ПЛист_ДатаВыезда           */ : s20       "Putlst.ExitDn"
, Putlst_ReturnDn     /* ТТН_ПЛист_ДатаВозврата         */ : s20       "Putlst.ReturnDn"
, TTNDoc_sPList       /* ТТН_Номер_ПЛист                */ : s30       "TTNDoc.sPList"
, KnDriver_TABN       /* ТТН_Водитель_Табель            */ : s20       "KnDriver.TABN"
, KnDriver_Name       /* ТТН_Водитель_Имя               */ : s50       "KnDriver.Name"
, KnDriver_Klassv     /* ТТН_Водитель_Класс             */ : s10       "KnDriver.Klassv"
, KnDriver_KatgA      /* ТТН_Водитель_КатA              */ : s1        "KnDriver.KatgA"
, KnDriver_KatgB      /* ТТН_Водитель_КатB              */ : s1        "KnDriver.KatgB"
, KnDriver_KatgC      /* ТТН_Водитель_КатC              */ : s1        "KnDriver.KatgC"
, KnDriver_KatgD      /* ТТН_Водитель_КатD              */ : s1        "KnDriver.KatgD"
, KnDriver_KatgE      /* ТТН_Водитель_КатE              */ : s1        "KnDriver.KatgE"
, KnDriver_StagVd     /* ТТН_Водитель_Стаж              */ : s20       "KnDriver.StagVd"
, KnDriver_Nudov      /* ТТН_Водитель_НомерУдост        */ : s20       "KnDriver.Nudov"
, KnForwarder_TABN    /* ТТН_Экспедитор_Табель          */ : s20       "KnDriver.TABN"
, KnForwarder_Name    /* ТТН_Экспедитор_Имя             */ : s50       "KnDriver.Name"
, KnForwarder_Klassv  /* ТТН_Экспедитор_Класс           */ : s10       "KnDriver.Klassv"
, KnForwarder_KatgA   /* ТТН_Экспедитор_КатA            */ : s1        "KnDriver.KatgA"
, KnForwarder_KatgB   /* ТТН_Экспедитор_КатB            */ : s1        "KnDriver.KatgB"
, KnForwarder_KatgC   /* ТТН_Экспедитор_КатC            */ : s1        "KnDriver.KatgC"
, KnForwarder_KatgD   /* ТТН_Экспедитор_КатD            */ : s1        "KnDriver.KatgD"
, KnForwarder_KatgE   /* ТТН_Экспедитор_КатE            */ : s1        "KnDriver.KatgE"
, KnForwarder_StagVd  /* ТТН_Экспедитор_Стаж            */ : s20       "KnDriver.StagVd"
, KnForwarder_Nudov   /* ТТН_Экспедитор_НомерУдост      */ : s20       "KnDriver.Nudov"
, Transp_Nomer        /* ТТН_Авто_Номер                 */ : s15       "Transp.Nomer"
, Transp_Marka        /* ТТН_Авто_Марка                 */ : tName     "Transp.Marka"
, Transp_Volume       /* ТТН_Авто_ОбъемЦ                */ : s20       "Transp.Volume"
, Transp_Passport     /* ТТН_Авто_НомерТС               */ : s20       "Transp.Passport"
, Transp_nPassp       /* ТТН_Авто_НомерЦ                */ : s20       "Transp.nPassp"
, Transp_INNUM        /* ТТН_Авто_ИнвНомер              */ : s15       "Transp.INNUM"
, Transp_Godv         /* ТТН_Авто_ДатаВыпуска           */ : s10       "Transp.Godv"
, Transp_GarNom       /* ТТН_Авто_НомерГараж            */ : s15       "Transp.GarNom"
, Transp_Nomdvig      /* ТТН_Авто_НомерДвигатель        */ : s20       "Transp.Nomdvig"
, Transp_Nomchas      /* ТТН_Авто_НомерШасси            */ : s20       "Transp.Nomchas"
, Transp_ForceLs      /* ТТН_Авто_МощностьЛС            */ : s20       "Transp.ForceLs"
, Transp_NomKuz       /* ТТН_Авто_НомерКузов            */ : s20       "Transp.NomKuz"
, Transp_GruzPod      /* ТТН_Авто_Груз                  */ : s20       "Transp.GruzPod"
, Transp_Weight       /* ТТН_Авто_Вес                   */ : double    "Transp.Weight"
, Transp1_Nomer       /* ТТН_Прицеп1_Номер              */ : s15       "Transp.Nomer"
, Transp1_Marka       /* ТТН_Прицеп1_Марка              */ : tName     "Transp.Marka"
, Transp1_Volume      /* ТТН_Прицеп1_ОбъемЦ             */ : s20       "Transp.Volume"
, Transp1_Passport    /* ТТН_Прицеп1_НомерТС            */ : s20       "Transp.Passport"
, Transp1_nPassp      /* ТТН_Прицеп1_НомерЦ             */ : s20       "Transp.nPassp"
, Transp1_INNUM       /* ТТН_Прицеп1_ИнвНомер           */ : s15       "Transp.INNUM"
, Transp1_Godv        /* ТТН_Прицеп1_ДатаВыпуска        */ : s10       "Transp.Godv"
, Transp1_GarNom      /* ТТН_Прицеп1_НомерГараж         */ : s15       "Transp.GarNom"
, Transp1_Nomdvig     /* ТТН_Прицеп1_НомерДвигатель     */ : s20       "Transp.Nomdvig"
, Transp1_Nomchas     /* ТТН_Прицеп1_НомерШасси         */ : s20       "Transp.Nomchas"
, Transp1_ForceLs     /* ТТН_Прицеп1_МощностьЛС         */ : s20       "Transp.ForceLs"
, Transp1_NomKuz      /* ТТН_Прицеп1_НомерКузов         */ : s20       "Transp.NomKuz"
, Transp1_GruzPod     /* ТТН_Прицеп1_Груз               */ : s20       "Transp.GruzPod"
, Transp1_Weight      /* ТТН_Прицеп1_Вес                */ : s20       "Transp.Weight"
, Transp2_Nomer       /* ТТН_Прицеп2_Номер              */ : s15       "Transp.Nomer"
, Transp2_Marka       /* ТТН_Прицеп2_Марка              */ : tName     "Transp.Marka"
, Transp2_Volume      /* ТТН_Прицеп2_ОбъемЦ             */ : s20       "Transp.Volume"
, Transp2_Passport    /* ТТН_Прицеп2_НомерТС            */ : s20       "Transp.Passport"
, Transp2_nPassp      /* ТТН_Прицеп2_НомерЦ             */ : s20       "Transp.nPassp"
, Transp2_INNUM       /* ТТН_Прицеп2_ИнвНомер           */ : s15       "Transp.INNUM"
, Transp2_Godv        /* ТТН_Прицеп2_ДатаВыпуска        */ : s10       "Transp.Godv"
, Transp2_GarNom      /* ТТН_Прицеп2_НомерГараж         */ : s15       "Transp.GarNom"
, Transp2_Nomdvig     /* ТТН_Прицеп2_НомерДвигатель     */ : s20       "Transp.Nomdvig"
, Transp2_Nomchas     /* ТТН_Прицеп2_НомерШасси         */ : s20       "Transp.Nomchas"
, Transp2_ForceLs     /* ТТН_Прицеп2_МощностьЛС         */ : s20       "Transp.ForceLs"
, Transp2_NomKuz      /* ТТН_Прицеп2_НомерКузов         */ : s20       "Transp.NomKuz"
, Transp2_GruzPod     /* ТТН_Прицеп2_Груз               */ : s20       "Transp.GruzPod"
, Transp2_Weight      /* ТТН_Прицеп2_Вес                */ : s20       "Transp.Weight"
, Transp3_Nomer       /* ТТН_Прицеп3_Номер              */ : s15       "Transp.Nomer"
, Transp3_Marka       /* ТТН_Прицеп3_Марка              */ : tName     "Transp.Marka"
, Transp3_Volume      /* ТТН_Прицеп3_ОбъемЦ             */ : s20       "Transp.Volume"
, Transp3_Passport    /* ТТН_Прицеп3_НомерТС            */ : s20       "Transp.Passport"
, Transp3_nPassp      /* ТТН_Прицеп3_НомерЦ             */ : s20       "Transp.nPassp"
, Transp3_INNUM       /* ТТН_Прицеп3_ИнвНомер           */ : s15       "Transp.INNUM"
, Transp3_Godv        /* ТТН_Прицеп3_ДатаВыпуска        */ : s10       "Transp.Godv"
, Transp3_GarNom      /* ТТН_Прицеп3_НомерГараж         */ : s15       "Transp.GarNom"
, Transp3_Nomdvig     /* ТТН_Прицеп3_НомерДвигатель     */ : s20       "Transp.Nomdvig"
, Transp3_Nomchas     /* ТТН_Прицеп3_НомерШасси         */ : s20       "Transp.Nomchas"
, Transp3_ForceLs     /* ТТН_Прицеп3_МощностьЛС         */ : s20       "Transp.ForceLs"
, Transp3_NomKuz      /* ТТН_Прицеп3_НомерКузов         */ : s20       "Transp.NomKuz"
, Transp3_GruzPod     /* ТТН_Прицеп3_Груз               */ : s20       "Transp.GruzPod"
, Transp3_Weight      /* ТТН_Прицеп3_Вес                */ : s20       "Transp.Weight"
)
with index
(
  MPrnSoprTTI01 = KatSoprNRec
);

Type TMPrnSoprTTI = record as Table MPrnSoprTTI;


//******************************************************************************
// внешние атрибуты накладной
Table Struct MPrnSoprAttr
(
  KatSoprNRec         /* KatSoprNRec                    */ : comp
, SpSoprNRec          /* SpSoprNRec                     */ : comp
, wTable              /* wTable                         */ : word
, AttrVal             /* атр1                           */ : array [1..10] of string
)
with index
(
  TmpAttr01 = KatSoprNRec + SpSoprNRec + wTable
);


Type TMPrnSoprAttr = record as Table MPrnSoprAttr;


//******************************************************************************
// спецификация накладной
Table Struct MPrnSoprSpNakl
(
  KatSoprNRec         /* KatSoprNRec                    */ : comp
, SpSoprNRec          /* SpSoprNRec                     */ : comp
, PrMc                /* Признак_МЦ                     */ : word
, Npp                 /* Номер_пп                       */ : s10
, NVEND               /* ТНВЭД                          */ : s20
, ResName             /* Ресурс_хранения                */ : string
, GroupKod            /* код_группы                     */ : s20
, GroupName           /* название_группы                */ : string
, MCFullName          /* ДлНазвание                     */ : string
, MCKod               /* КодМЦ                          */ : tBarKod
, MCName              /* Название                       */ : string
, DopInfo             /* Дополнительная_информация      */ : string
, GrouzKod            /* КодГруза                       */ : s20
, GrouzClass          /* КлассГруза                     */ : s20
, StroyObj            /* Объект_строительства           */ : string
, StZatr              /* Статья_затрат                  */ : string
, ExciseMark          /* акцизные_марки                 */ : string
, CustomSolution      /* таможенные_разрешения          */ : string
, CountryIn           /* страна_ввоза                   */ : string
, GigienReg           /* удост_госгигиен_регистрации    */ : string
, RNakl               /* Pнакладная                     */ : string
, Descr               /* Дескриптор_рнакладной          */ : string
, RDescr              /* Рнакладная_с_дескриптором      */ : string
, KoefGodn            /* Коэффициент_годности           */ : string
, VhodProc            /* Вход_процент                   */ : double
, IshodProc           /* Исход_процент                  */ : double
, StrSkidka           /* Скидка_Надбавка_cтрока         */ : string
, ZavCena             /* Завод_Цена                     */ : double
, ZavCenaOtp          /* Завод_Цена_Отп                 */ : double
, ZavCenaNak          /* Завод_ЦенаНак                  */ : double
, ZavCenaNakOtp       /* Завод_ЦенаНак_Отп              */ : double
, ZavCenaVal          /* Завод_ЦенаВал                  */ : double
, ZavCenaValOtp       /* Завод_ЦенаВал_Отп              */ : double
, GrMKol              /* КОЛ_ГРУЗОВЫХ_МЕСТ              */ : double
, GrMEd               /* ЕД_ИЗМЕРЕНИЯ_ГРУЗОВЫХ_МЕСТ     */ : s10
, GrMKoef             /* КОЭФФИЦИЕНТ_ГРУЗОВЫХ_МЕСТ      */ : double
, KolOneGrM           /* KolOneGrM                      */ : string
, McPrim              /* KatMC_примечание               */ : string
, McNote              /* ПримМЦ                         */ : string
, OtpEd               /* ОтпЕд                          */ : tName
, OtpEdKod            /* ОтпЕд_Код                      */ : tBarKod
, MaxProcNac          /* МаксПроцНаценки                */ : double
, MassaMC             /* МассаМЦ                        */ : double
, MassaTar            /* МассаТарыМЦ                    */ : double
, MCVolume            /* ОбъемМЦ                        */ : double
, MCSizeX             /* SizeX                          */ : double
, MCSizeY             /* SizeY                          */ : double
, MCSizeZ             /* SizeZ                          */ : double
, UthEd               /* УчЕд                           */ : tName
, KolDO               /* КолДО                          */ : double
, KolF                /* КолФ                           */ : double
, StrKolF             /* стр_КолФ                       */ : string
, KolOpl              /* КолОпл                         */ : double
, ProcUb              /* ПроцУб                         */ : double
, KolUth              /* КолУч                          */ : double
, KolVes              /* КолВес                         */ : double
, KolOb               /* КолОб                          */ : double
, KolBrak             /* Брак                           */ : double
, KolBoy              /* Бой                            */ : double
, CNak                /* ЦНак                           */ : double
, CNac                /* ЦНац                           */ : double
, CVal                /* ЦВал                           */ : double
, CNakUth             /* ЦНакУч                         */ : double
, CNacUth             /* ЦНацУч                         */ : double
, CValUth             /* ЦВалУч                         */ : double
, StNak               /* СтНак                          */ : double
, StOpl               /* СтОпл                          */ : double
, StNac               /* СтНац                          */ : double
, StVal               /* СтВал                          */ : double
, Nalog1              /* Налог1Р                        */ : double
, Nalog1V             /* Налог1В                        */ : double
, Nalog2              /* Налог2Р                        */ : double
, Nalog2V             /* Налог2В                        */ : double
, Nalog3              /* Налог3Р                        */ : double
, Nalog3V             /* Налог3В                        */ : double
, Nalog4              /* Налог4Р                        */ : double
, Nalog4V             /* Налог4В                        */ : double
, Nalog5              /* Налог5Р                        */ : double
, Nalog5V             /* Налог5В                        */ : double
, Nalog6              /* Налог6Р                        */ : double
, Nalog6V             /* Налог6В                        */ : double
, NalogOth            /* Налог_прочие_Р                 */ : double
, NalogOthV           /* Налог_прочие_В                 */ : double
, CNakBN              /* ЦНакБН                         */ : double
, CNacBN              /* ЦНацБН                         */ : double
, CValBN              /* ЦВалБН                         */ : double
, CNakBNUth           /* ЦНакБНУч                       */ : double
, CNacBNUth           /* ЦНацБНУч                       */ : double
, CValBNUth           /* ЦВалБНУч                       */ : double
, CNakSN              /* ЦНакСН                         */ : double
, CNacSN              /* ЦНацСН                         */ : double
, CValSN              /* ЦВалСН                         */ : double
, CNakSNUth           /* ЦНакСНУч                       */ : double
, CNacSNUth           /* ЦНацСНУч                       */ : double
, CValSNUth           /* ЦВалСНУч                       */ : double
, PrNDS               /* ПризнакНДС                     */ : word
, StNDS               /* ставка_первого_налога          */ : double
, CNDSNak             /* ЦНДСНак                        */ : double
, CExciseNak          /* ЦАкцизНак                      */ : double
, CProdNak            /* ЦНПродНак                      */ : double
, CNalNak             /* ЦНАЛНак                        */ : double
, CNDSNac             /* ЦНДСНац                        */ : double
, CExciseNac          /* ЦАкцизНац                      */ : double
, CNProdNac           /* ЦНПродНац                      */ : double
, CNalNac             /* ЦНАЛНац                        */ : double
, CNDSVal             /* ЦНДСВал                        */ : double
, CExiseVal           /* ЦАкцизВал                      */ : double
, CNProdVal           /* ЦНПродВал                      */ : double
, CNalVal             /* ЦНАЛВал                        */ : double
, StNakBN             /* СтНакБН                        */ : double
, StNacBN0            /* СтНацБН0                       */ : double
, StValBN             /* СтВалБН                        */ : double
, StNakSN             /* СтНакСН                        */ : double
, StNacSN0            /* СтНацСН0                       */ : double
, StValSN             /* СтВалСН                        */ : double
, StNDSNak            /* СтНДСНак                       */ : double
, StExciseNak         /* СтАкцизНак                     */ : double
, StNProdNak          /* СтНПродНак                     */ : double
, StNalNak            /* СтНАЛНак                       */ : double
, StNDSNac0           /* СтНДСНац0                      */ : double
, StExciseNac         /* СтАкцизНац                     */ : double
, StNProdNac          /* СтНПродНац                     */ : double
, StNalNac            /* СтНАЛНац                       */ : double
, StNDSVal            /* СтНДСВал                       */ : double
, StExciseVal         /* СтАкцизВал                     */ : double
, StNProdVal          /* СтНПродВал                     */ : double
, StNalVal            /* СтНАЛВал                       */ : double
, CenaDO              /* ЦенаДО                         */ : double
, SummaDO             /* СуммаДО                        */ : double
, Kol_DO              /* Кол_ДО                         */ : double
, Kol_DOOpl           /* Кол_ДО_Опл                     */ : double
, ProcNDS             /* ПрНДС                          */ : double
, ProcExcise          /* ПрАкциз                        */ : double
, ProcNProd           /* ПрНПрод                        */ : double
, ProcNal             /* ПрНАЛ                          */ : double
, Volume              /* Объем                          */ : double
, Plotn               /* Плотность                      */ : double
, Temper              /* Температура                    */ : double
, GroupParty          /* Группа_Партии                  */ : string
, PartyName           /* Партия                         */ : tPartyName
, PartyPrim           /* KatParty_примечание            */ : string
, PartyZavCena        /* Цена_изготовителяНац           */ : double
, PartyZavCenaV       /* Цена_изготовителяВалНак        */ : double
, GrouzDoc            /* с_грузом_след_док              */ : string
, GrouzDocDop         /* с_грузом_след_док_доп          */ : string
, GrouzDocDop2        /* с_грузом_след_док_доп2         */ : string
, CertNomer           /* Номер_сертификата              */ : string
, CertDate            /* Дата_сертификата               */ : s20
, CertWho             /* Ктовыдал_сертификат            */ : tName
, PartyOrg            /* Производитель_партии           */ : string
, PartyCountry        /* Страна_производителя_партии    */ : tName
, PartyAttr           /* Атрибут_Партии_Число           */ : double
, PartyDateAnaliz     /* Дата_анализа                   */ : s20
, PartyNumAnaliz      /* Номер_анализа                  */ : s20
, PartyVal            /* Валюта_партии                  */ : tName
, PartyKodVal         /* КодВалюты_партии               */ : comp
, PartySrokGodn       /* Срок_годности                  */ : s20
, PartyTimeCreate     /* Время_создания                 */ : _datetime
, PartyTimeGodn       /* Время_годности                 */ : _datetime
, CenaOrd             /* Цена_ордера_нац                */ : double
, CenaOrdVal          /* Цена_ордера_вал                */ : double
, AltEd               /* Альтернативная_единица_название*/ : tName
, AltEd2              /* Альтернативная_единица_соотношение*/ :double
, DEIName             /* ДЕИ_Наим                       */ : tName
, DEIKol              /* ДЕИ_Кол                        */ : double
, DEICena             /* ДЕИ_Цена                       */ : double
, MCFullName2         /* ДлНазвание2                    */ : string
, MCName2             /* Название2                      */ : string
, MCKod2              /* КодМЦ2                         */ : tBarKod
, MCVolume2           /* Объем2                         */ : double
, MCPlot2             /* Плотность2                     */ : double
, KolF2               /* КолФ2                          */ : double
, KolBrak2            /* Брак2                          */ : double
, KolBoy2             /* Бой2                           */ : double
, CNac2               /* ЦНац2                          */ : double
, CNDSNac2            /* ЦНДСНац2                       */ : double
, CNDSVal2            /* ЦНДСВал2                       */ : double
, ProcNDS2            /* ПрНДС2                         */ : double
, CExciseNac2         /* ЦАкцизНац2                     */ : double
, CExciseVal2         /* ЦАкцизВал2                     */ : double
, ProcExise2          /* ПрАкциз2                       */ : double
, CNProdNac2          /* ЦНПродНац2                     */ : double
, CNProdVal2          /* ЦНПродВал2                     */ : double
, ProcNProd2          /* ПрНПрод2                       */ : double
, StNac2              /* СтНац2                         */ : double
, StNavOpl2           /* СтНацОпл2                      */ : double
, StNacBN2            /* СтНацБН2                       */ : double
, StNacBNOpl2         /* СтНацБНОпл2                    */ : double
, StNacSN2            /* СтНацCН2                       */ : double
, StNacSNOpl2         /* СтНацCНОпл2                    */ : double
, StNalNac2           /* СтНалНац2                      */ : double
, MassaMC2            /* МассаМЦ2                       */ : double
, MassaTar2           /* МассаТарыМЦ2                   */ : double
, KolUth2             /* КолУч2                         */ : double
, KolOpl2             /* КолОпл2                        */ : double
, OtpEdAbbr2          /* ОтпЕдАббр2                     */ : tName
, SpOprVes2           /* СпособОпрВеса2                 */ : tName
, CertNomer2          /* Номер_сертификата2             */ : string
, CertDate2           /* Дата_сертификата2              */ : s20
, CertWho2            /* Ктовыдал_сертификат2           */ : string
, GigienReg2          /* удост_госгигиен_регистрации2   */ : string
, CustomSolution2     /* таможенные_разрешения2         */ : string
, ExciseMarkNode      /* акцизные_марки_узел            */ : string
, ExciseMark1         /* акцизные_марки1                */ : string
, ExciseMark2         /* акцизные_марки2                */ : string
, ExciseMark3         /* акцизные_марки3                */ : string
, ExciseMark4         /* акцизные_марки4                */ : string
, ExciseMark5         /* акцизные_марки5                */ : string
, ExciseMark6         /* акцизные_марки6                */ : string
, ExciseMark7         /* акцизные_марки7                */ : string
, ExciseMark8         /* акцизные_марки8                */ : string
, ExciseMark9         /* акцизные_марки9                */ : string
, ExciseMark10        /* акцизные_марки10               */ : string
, DEIName2            /* ДЕИ2_Наим                      */ : string
, DEIKol2             /* ДЕИ2_Кол                       */ : double
, DEICena2            /* ДЕИ2_Цена                      */ : double
, sPrim               /* sPrimechanie                   */ : string
, sPrimV              /* sPrimechanieV                  */ : string
, CHTN_dOpr                                                : string
)
with index
(
  MPrnSoprSpNakl01 = KatSoprNRec + SpSoprNRec
, MPrnSoprSpNakl02 = KatSoprNRec + PrMc
);

Type TMPrnSoprSpNakl = record as Table MPrnSoprSpNakl;


//******************************************************************************
// ТТИ в спецификации
Table Struct MPrnSoprSpTTI
(
  SpSoprNRec          /* SpSoprNRec                     */ : comp
, PunktRDateIn        /* СпТТН_ПунктР_Дата_С            */ : date
, PunktRTimeIn        /* СпТТН_ПунктР_Время_С           */ : s20
, PunktRDateOut       /* СпТТН_ПунктР_Дата_По           */ : date
, PunktRTimeOut       /* СпТТН_ПунктР_Время_По          */ : s20
, PunktRDopName       /* СпТТН_ПунктР_Доп_Имя           */ : string
, PunktRDopKol        /* СпТТН_ПунктР_Доп_Колич         */ : double
, PunktRDopTime       /* СпТТН_ПунктР_Доп_Время         */ : s20
, PunktPDateIn        /* СпТТН_ПунктП_Дата_С            */ : date
, PunktPTimeIn        /* СпТТН_ПунктП_Время_С           */ : s20
, PunktPDateOut       /* СпТТН_ПунктП_Дата_По           */ : date
, PunktPTimeOut       /* СпТТН_ПунктП_Время_По          */ : s20
, PunktPDopName       /* СпТТН_ПунктП_Доп_Имя           */ : string
, PunktPDopKol        /* СпТТН_ПунктП_Доп_Колич         */ : double
, PunktPDopTime       /* СпТТН_ПунктП_Доп_Время         */ : s20
, PunktRCountryNal    /* СпТТН_НормаПогрузки            */ : string
, PunktRSityKod       /* СпТТН_НормаРазгрузки           */ : string
, PunktRSityName      /* СпТтнЖд_ЕдПодвСост_Имя         */ : string
, PunktRSityTel       /* СпТтнЖд_ЕдПодвСост_Номер       */ : string
, PunktRSCountryKod   /* СпТтнЖд_ЖдКвит_Номер           */ : string
, PunktRSCountryName  /* СпТтнЖд_ЖдТариф                */ : double
, PunktRSCountryNal   /* СпТтнЖд_ЖдТариф_Вал            */ : string
, PunktRAddr          /* СпТтнЖд_ЕдВеса                 */ : string
, ZhDOprVes           /* СпТтнЖд_СпособОпрВеса          */ : string
, ZhDNetto            /* СпТтнЖд_ВесНетто               */ : double
, ZhDBrutto           /* СпТтнЖд_ВесБрутто              */ : double
, ZhDResOtgr          /* СпТтнЖд_РесОтгрузки            */ : string
)
with index
(
  TmpSpTTI01 = SpSoprNRec
);

Type TMPrnSoprSpTTI = record as Table MPrnSoprSpTTI;

//******************************************************************************
// услуги по накладной
Table Struct MPrnSoprUslNakl
(
  KatSoprNRec         /* KatSoprNRec                    */ : comp
, SpSoprNRec          /* SpSoprNRec                     */ : comp
, UslName             /* НазваниеУслуги                 */ : string
, UslKod              /* КодУслуги                      */ : tBarKod
, OtpEd               /* ОтпЕдИзмУслуги                 */ : tName
, UthEd               /* УчЕдИзмУслуги                  */ : tName
, KoefOtpEd           /* КоэфУслуги                     */ : s30
, KolD                /* КолДУслуги                     */ : double
, KolF                /* КолФУслуги                     */ : double
, Cena                /* ЦенаУслуги                     */ : double
, CenaVal             /* ЦенаВалУслуги                  */ : double
, Nalog1              /* У_Налог1Р                      */ : double
, NalogV1             /* У_Налог1В                      */ : double
, Nalog2              /* У_Налог2Р                      */ : double
, NalogV2             /* У_Налог2В                      */ : double
, Nalog3              /* У_Налог3Р                      */ : double
, NalogV3             /* У_Налог3В                      */ : double
, Nalog4              /* У_Налог4Р                      */ : double
, NalogV4             /* У_Налог4В                      */ : double
, Nalog5              /* У_Налог5Р                      */ : double
, NalogV5             /* У_Налог5В                      */ : double
, Nalog6              /* У_Налог6Р                      */ : double
, NalogV6             /* У_Налог6В                      */ : double
, NalogOth            /* У_Налог_прочие_Р               */ : double
, NalogOthV           /* У_Налог_прочие_В               */ : double
, CNakBN              /* У_ЦНакБН                       */ : double
, CNacBN              /* У_ЦНацБН                       */ : double
, CValBN              /* У_ЦВалБН                       */ : double
, CNakBNUth           /* У_ЦНакБНУч                     */ : double
, CNacBNUth           /* У_ЦНацБНУч                     */ : double
, CValBNUth           /* У_ЦВалБНУч                     */ : double
, CNakSN              /* У_ЦНакСН                       */ : double
, CNacSN              /* У_ЦНацСН                       */ : double
, CValSN              /* У_ЦВалСН                       */ : double
, CNakSNUth           /* У_ЦНакСНУч                     */ : double
, CNacSNUth           /* У_ЦНацСНУч                     */ : double
, CValSNUth           /* У_ЦВалСНУч                     */ : double
, StNDS               /* У_ставка_первого_налога        */ : double
, CNDSNak             /* У_ЦНДСНак                      */ : double
, CExciseNak          /* У_ЦАкцизНак                    */ : double
, CNProdNak           /* У_ЦНПродНак                    */ : double
, CNalNak             /* У_ЦНАЛНак                      */ : double
, CNDSNac             /* У_ЦНДСНац                      */ : double
, CExciseNac          /* У_ЦАкцизНац                    */ : double
, CNProdNac           /* У_ЦНПродНац                    */ : double
, CNalNac             /* У_ЦНАЛНац                      */ : double
, CNDSVal             /* У_ЦНДСВал                      */ : double
, CExciseVal          /* У_ЦАкцизВал                    */ : double
, CNProdVal           /* У_ЦНПродВал                    */ : double
, CNalVal             /* У_ЦНАЛВал                      */ : double
, CStNakBN            /* У_СтНакБН                      */ : double
, StNacBN             /* У_СтНацБН                      */ : double
, StValBN             /* У_СтВалБН                      */ : double
, StNakSN             /* У_СтНакСН                      */ : double
, StNacSN             /* У_СтНацСН                      */ : double
, StValSN             /* У_СтВалСН                      */ : double
, StNDSNak            /* У_СтНДСНак                     */ : double
, StExciseNak         /* У_СтАкцизНак                   */ : double
, StNProdNak          /* У_СтНПродНак                   */ : double
, StNalNak            /* У_СтНАЛНак                     */ : double
, StNDSNac            /* У_СтНДСНац                     */ : double
, StExciseNac         /* У_СтАкцизНац                   */ : double
, StNProdNac          /* У_СтНПродНац                   */ : double
, StNalNac            /* У_СтНАЛНац                     */ : double
, StNDSVal            /* У_СтНДСВал                     */ : double
, StExciseVal         /* У_СтАкцизВал                   */ : double
, StNProdVal          /* У_СтНПродВал                   */ : double
, StNalVal            /* У_СтНАЛВал                     */ : double
, ProcNDS             /* У_ПрНДС                        */ : double
, ProcExcise          /* У_ПрАкциз                      */ : double
, ProcNProd           /* У_ПрНПрод                      */ : double
, ProcNal             /* У_ПрНАЛ                        */ : double
, PartyName           /* У_Партия                       */ : string
, StroyObj            /* У_Объект_строительства         */ : string
, StZatr              /* У_Статья_затрат                */ : string
)
with index
(
  MPrnSoprUslNakl01 = KatSoprNRec + SpSoprNRec
);

Type TMPrnSoprUslNakl = record as Table MPrnSoprUslNakl;
