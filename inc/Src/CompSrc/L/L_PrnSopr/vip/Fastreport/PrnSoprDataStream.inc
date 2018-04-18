//******************************************************************************

var SignersCount: longint; i: integer;

Datastream fr_prndata
(
  [TTNPrimaryList]  wGetTune('Doc.SD.PrnNakl.TTNPrimaryList');
  [DopOtpRaz     ]  boGetTune('DOC.SD.PRNNAKL.OTPRAZTTN');
  [isNumNakl     ]  boGetTune('Doc.SD.PrnNakl.NumNakl');
  [isNumOsnOtp   ]  wGetTune('Doc.SD.PrnNakl.OsnOtp') <> 0;
  [isMassaZero   ]  sGetTune('Doc.SD.AbbrField.MassaZero');
  [nu_gruz       ]  sGetTune('Doc.SD.AbbrField.Gruz');
  [wFillCol10    ]  wGetTune('Doc.SD.PrnNakl.Torg12Col10');
  [bSymbolEAC    ]  wGetTune('Doc.SD.PrintEAC');

  //округления
  Table fr_rounds
  (
    [rCena_Pr            ] fr_rounds.rCena_Pr;
    [rCena_PrR           ] fr_rounds.rCena_PrR;
    [rCena_PrV           ] fr_rounds.rCena_PrV;
    [rCena_PrU           ] fr_rounds.rCena_PrU;
    [rKol_Pr             ] fr_rounds.rKol_Pr;
    [rMassa_Pr           ] fr_rounds.rMassa_Pr;
    [rMassa_Tn           ] fr_rounds.rMassa_Tn;
    [rMassa_Kg           ] fr_rounds.rMassa_Kg;
    [rMassa_Gr           ] fr_rounds.rMassa_Gr;
    [RoundMass2          ] fr_rounds.RoundMass2;
    [RoundGrm            ] fr_rounds.rRoundGrm;
    [rCapacity           ] fr_rounds.rCapacity;
  )
  ;

  Table fr_dochead//MPrnSoprNakl
  (
    [nakl_nrec           ] fr_dochead.KatSoprNRec;         // Накладная_нрек
    [nakl_barcode        ] fr_dochead.BarCode;             // Накладная_штрихкод
    [unn_inn             ] fr_dochead.UNN;                 // unn_inn
    [kol_spsopr          ] fr_dochead.KolSpSopr;           // количество_SpSopr
    [lic_postavschik     ] fr_dochead.LicPost;             // Лицензия_Поставщик
    [lic_gruzotprav      ] fr_dochead.LicGrouzOtp;         // Лицензия_Грузоотправитель
    [lic_gruzopoluch     ] fr_dochead.LicGrouzPol;         // Лицензия_Грузополучатель
    [lic_poluchatel      ] fr_dochead.LicPol;              // Лицензия_Получатель
    [lic_platelschik     ] fr_dochead.LicPlat;             // Лицензия_Плательщик
    [lic_zak_plat        ] fr_dochead.LicZakPlat;          // Лицензия_Заказчик_Плательщик

    [grotp_gl_name       ] oPrnSoprFun.GetParentOrg(fr_dochead.grotp_gl_name);       // Грузоотправитель_Головная_Орг_Наимен;
    [grpol_gl_name       ] oPrnSoprFun.GetParentOrg(fr_dochead.grpol_gl_name);       // Грузополучатель_Головная_Орг_Наимен;

    [preiskurant_cen     ] fr_dochead.PriceList;           // ПрейскурантЦен
    [director_name       ] fr_dochead.Director;            // Директор
    [director_tabnom     ] fr_dochead.DirectorTabNom;      // Директор_ТабНом
    [director_post       ] fr_dochead.DirectorApp;         // Директор_Должность
    [buh_name            ] fr_dochead.GBuhName;            // Главный_Бухгалтер
    [buh_tabnom          ] fr_dochead.GbuhNom;             // Главный_Бухгалтер_ТабНом
    [buh_post            ] fr_dochead.GbuhApp;             // Главный_Бухгалтер_Должность
    [nomer               ] fr_dochead.KatSopr_NSopr;       // Номер
    [descr               ] fr_dochead.KatSopr_Descr;       // ОператорЭВМ
    [nom_descr           ] fr_dochead.KatSopr_DescNum;     // Номер_с_дескриптором
    [userfld             ] fr_dochead.KatSopr_UserField;   // ПолеПользователя
    [dogovor_nomer       ] fr_dochead.Dogovor_NoDoc;       // Номер_Договора)
    [dogovor_data        ] fr_dochead.Dogovor_dDoc;        // Дата_Договора)
    [dogovor_NoDoc_Ext   ] fr_dochead.Dogovor_NoDoc_Ext;   // Номер_Договора_Ext)
    [date_doc            ] fr_dochead.KatSopr_dSopr;       // Дата
    [date_full           ] DateToStr(fr_dochead.KatSopr_dSopr, 'DD mon YYYY г.');// Дата
    [date_day            ] fr_dochead.Day_KatSopr_dSopr;   // ДатаДень
    [date_mon            ] fr_dochead.Mon_KatSopr_dSopr;   // ДатаМесяц
    [date_mon_MM         ] Month(fr_dochead.KatSopr_dSopr);// ДатаМесяц_число
    [date_year           ] fr_dochead.Year_KatSopr_dSopr;  // ДатаГод
    [date_year_YYYY      ] Year(fr_dochead.KatSopr_dSopr); // ДатаГод_число
    [date_otgr           ] fr_dochead.KatSopr_dOpr;        // Дата_Отгрузки
    [dover_nomer         ] fr_dochead.KatSopr_nDover;      // НомерДовер
    [dover_data          ] fr_dochead.KatSopr_dDover;      // ДатаДовер
    [dover_FIO           ] fr_dochead.KatSopr_sDover;      // ФИОДовер
    [dovfio_name         ] fr_dochead.DovFIO_Name;         // ДовЛицо
    [dovfio_post         ] fr_dochead.DovFIO_Post;         // ДовЛицоДолжность
    [dovfio_passer       ] fr_dochead.DovFIO_PasSer;       // ДовЛицоПаспСерия
    [dovfio_pasnumb      ] fr_dochead.DovFIO_PasNumb;      // ДовЛицоПаспНомер
    [dovfio_wherevid     ] fr_dochead.DovFIO_WhereVid;     // ДовЛицоПаспГде
    [dovfio_datvid       ] fr_dochead.DovFIO_DatVid;       // ДовЛицоПаспКогда
    [dover_org           ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 6, 0);        // ОргДовер
    [prihod_order        ] fr_dochead.DoverOrgName;        // ОргДовер
    [nakl_name           ] fr_dochead.KatSopr_Name;        // Назван_накладной
    [sklad               ] fr_dochead.KatPodr_Name;        // Склад
    [sklad_addres        ] fr_dochead.KatPodr_Addr;        // Склад_Адрес
    [sklad_pol           ] fr_dochead.KatPodrTo_Name;      // Склад_Пол
    [sklad_pol_addres    ] fr_dochead.KatPodrTo_Addr;      // Склад_Пол_Адрес
    [mol_name            ] fr_dochead.KatMol_Name;         // МОЛ
    [mol_tabnom          ] fr_dochead.MolTabNom;           // Мол_ТабНом
    [mol_post            ] fr_dochead.MolApp;              // МолДолжность
    [sklad_boss          ] fr_dochead.SkladBoss;           // СкладРуководитель
    [mol_pol             ] fr_dochead.KatMolTo_Name;       // МОЛ_Пол
    [mol_pol_tabnom      ] fr_dochead.MolPolTabNom;        // Мол_Пол_ТабНом
    [mol_pol_post        ] fr_dochead.MolPolApp;           // МолДолжность_Пол
    [sklad_pol_boss      ] fr_dochead.SkladBossPol;        // СкладРуководитель_Пол
    [txo_name            ] fr_dochead.TXO_Name;            // Назван_ТХО
    [osnovanie_otp       ] fr_dochead.Class_OsnOtp;        // Основание_отпуска
    [tsel_buy_tovar      ] fr_dochead.Class_CelPriobr;     // Цель_приобретения
    [schetfact_nrec      ] fr_dochead.SchFact_NRec;        // СчФакт_НРек
    [schetfact_nom       ] if (fr_dochead.SchFact_NRec <> 0, fr_dochead.SchFact_Num, if (wGetTune('Doc.SD.Prn.UPD.NumDocWithoutSF') = 0, fr_dochead.KatSopr_NSopr, 'б/н')); // СчФакт_Номер
    [schetfact_date      ] if (fr_dochead.SchFact_NRec <> 0, oPrnSoprFun.GetSchFactDate(fr_dochead.KatSoprNRec), '');  //Дата счфактуры
    [osnovanie           ] fr_dochead.BaseDoc_NoDoc;       // Основание
    [osnovanie_date      ] fr_dochead.BaseDoc_DDoc;        // Основание_Дата
    [naznachenie         ] fr_dochead.KatNazna_Name;       // Назначение
    [nariad_zakaz        ] fr_dochead.NZakaz_NoDoc;        // НарядЗаказНомер
    [nariad_zakaz_date   ] fr_dochead.NZakaz_DDoc;         // НарядЗаказДата
    [nak_simv            ] fr_dochead.NakSymbol;           // НакСимвол
    [nac_simv            ] fr_dochead.NacSymbol;           // НацСимвол
    [val_simv            ] fr_dochead.ValSymbol;           // ВалСимвол
    [kurs_spisania       ] fr_dochead.CurseSpis;           // Курс_списания
    [sdal_otpr_post      ] fr_dochead.Attr_SdalOptApp;     // сдал_отправитель_должность
    [sdal_otpr           ] fr_dochead.Attr_SdalOptFIO;     // сдал_отправитель
    [otpusk_razr_post    ] fr_dochead.Attr_OptRazApp;      // отпуск_разрешил_должность
    [otpusk_razr         ] fr_dochead.Attr_OptRazFIO;      // отпуск_разрешил
    [otpusk_razr_post2   ] fr_dochead.Attr_OptRazApp2;     // отпуск_разрешил_должность2
    [otpusk_razr2        ] fr_dochead.Attr_OptRazFIO2;     // отпуск_разрешил2
    [otpusk_razr_post3   ] fr_dochead.Attr_OptRazApp3;     // отпуск_разрешил_должность3
    [otpusk_razr3        ] fr_dochead.Attr_OptRazFIO3;     // отпуск_разрешил3
    [driver              ] fr_dochead.Attr_Driver;         // водитель
//    [driverNudov         ] fr_dochead.driverNudov;       // Водительское удостоверение
    [expeditor           ] fr_dochead.Attr_Forw;           // экспедитор
    [own_transp          ] fr_dochead.Attr_MyAuto;         // собственный_транспорт
    [avtofirm            ] fr_dochead.Attr_AutoName;       // Автопредприятие_назв
    [TTN_punktP_metod2   ] fr_dochead.MetLoad_Name;        // ТТН_ПунктП_Метод_2
    [car                 ] fr_dochead.Attr_Auto;           // автомобиль
    [carName             ] fr_dochead.Attr_Auto;           // автомобиль
    [carNomer            ] fr_dochead.Attr_Auto;           // автомобиль
    [sposob_transp       ] fr_dochead.Attr_MetTrans;       // способ_транспортировки
    [kol_ezd             ] fr_dochead.Attr_KolEzd;         // количество_ездок
    [TranspUsl1          ] fr_dochead.TranspUsl1;          // транспортная_услуга_1
    [TranspUsl2          ] fr_dochead.TranspUsl2;          // транспортная_услуга_2
    [transp_usl          ] fr_dochead.TranspUsl1;          // транспортная_услуга_1
    [val_nrec            ] fr_dochead.KatSopr_cVal;        // Валюта_нрек
    [sumkol_grm          ] 1;                              //
    [sumkolf             ] 1;                              //
    [brutto              ] 1;                              //
    [brutto_ton          ] 1;                              //
    [StrAstNakSN1       ] fr_dochead.StrAstNakSN1;         // стр_АСтНакСН1
    [TaraVoz            ] fr_dochead.TaraVoz;              // TaraVoz
    [ANaim              ] fr_dochead.ANaim;                // АНаименований
    [StrANaim           ] fr_dochead.StrANaim;             // стр_АНаименований
    [AKolF              ] fr_dochead.AKolF;                // АКолФ
    [StrAKolf           ] fr_dochead.StrAKolf;             // стр_АКолФ
    [AKolUth            ] fr_dochead.AKolUth;              // АКолУч
    [StrAKolUth         ] fr_dochead.StrAKolUth;           // стр_АКолУч
    [AKolVes            ] fr_dochead.AKolVes;              // АКолВес   ////////////////
    [StrAKolVes         ] fr_dochead.StrAKolVes;           // стр_АКолВес;
    [AKolOb             ] fr_dochead.AKolOb;               // АКолОб;
    [StrAKolOb          ] fr_dochead.StrAKolOb;            // стр_АКолОб;
    [AStNak             ] fr_dochead.AStNak;               // АСтНак;
    [StrAStNak          ] fr_dochead.StrAStNak;            // стр_АСтНак;
    [AStOpl             ] fr_dochead.AStOpl;               // АСтОпл;
    [StrAStOpl          ] fr_dochead.StrAStOpl;            // стр_АСтОпл;
    [AStNac             ] fr_dochead.AStNac;               // АСтНац;
    [StrAStNac          ] fr_dochead.StrAStNac;            // стр_АСтНац;
    [AStNacSDost        ] fr_dochead.AStNacSDost;          // АСтНацСДост;
    [StrAStNacSDost     ] fr_dochead.StrAStNacSDost;       // стр_АСтНацСДост;
    [AStVal             ] fr_dochead.AStVal;               // АСтВал;
    [StrAStVal          ] fr_dochead.StrAStVal;            // стр_АСтВал;
    [AStNakBN           ] fr_dochead.AStNakBN;             // АСтНакБН;
    [StrAStNakBN        ] fr_dochead.StrAStNakBN;          // стр_АСтНакБН;
    [AStNacBN0          ] fr_dochead.AStNacBN0;            // АСтНацБН0;
    [StrAStNacBN        ] fr_dochead.StrAStNacBN;          // стр_АСтНацБН;
    [AStValBN           ] fr_dochead.AStValBN;             // АСтВалБН;
    [StrAStValBN        ] fr_dochead.StrAStValBN;          // стр_АСтВалБН;
    [AStNakSN           ] fr_dochead.AStNakSN;             // АСтНакСН;
    [StrAStNakSN        ] fr_dochead.StrAStNakSN;          // стр_АСтНакСН;
    [AStNacSN0          ] fr_dochead.AStNacSN0;            // АСтНацСН0;
    [StrAStNacSN        ] fr_dochead.StrAStNacSN;          // стр_АСтНацСН;
    [AStValSN           ] fr_dochead.AStValSN;             // АСтВалСН;
    [StrAStValSN        ] fr_dochead.StrAStValSN;          // стр_АСтВалСН;
    [ANDSNak            ] fr_dochead.ANDSNak;              // АНДСНак;
    [StrANDSNak         ] fr_dochead.StrANDSNak;           // стр_АНДСНак;
    [AEciseNak          ] fr_dochead.AEciseNak;            // ААкцизНак;
    [StrAEciseNak       ] fr_dochead.StrAEciseNak;         // стр_ААкцизНак;
    [ANProdNak          ] fr_dochead.ANProdNak;            // АНПродНак;
    [StrANProdNak       ] fr_dochead.StrANProdNak;         // стр_АНПродНак;
    [ANalNak            ] fr_dochead.ANalNak;              // АНАЛНак;
    [StrANalNak         ] fr_dochead.StrANalNak;           // стр_АНАЛНак;
    [ANDSNac0           ] fr_dochead.ANDSNac0;             // АНДСНац0;
    [StrANDSNac         ] fr_dochead.StrANDSNac;           // стр_АНДСНац;
    [AEciseNac          ] fr_dochead.AEciseNac;            // ААкцизНац;
    [StrAEciseNac       ] fr_dochead.StrAEciseNac;         // стр_ААкцизНац;
    [ANProdNac          ] fr_dochead.ANProdNac;            // АНПродНац;
    [StrANProdNac       ] fr_dochead.StrANProdNac;         // стр_АНПродНац;
    [ANalNac            ] fr_dochead.ANalNac;              // АНАЛНац;
    [StrANalNac         ] fr_dochead.StrANalNac;           // стр_АНАЛНац;
    [ANDSVal            ] fr_dochead.ANDSVal;              // АНДСВал;
    [StrANDSVal         ] fr_dochead.StrANDSVal;           // стр_АНДСВал;
    [AEciseVal          ] fr_dochead.AEciseVal;            // ААкцизВал;
    [StrAEciseVal       ] fr_dochead.StrAEciseVal;         // стр_ААкцизВал;
    [ANProdVal          ] fr_dochead.ANProdVal;            // АНПродВал;
    [StrANProdVal       ] fr_dochead.StrANProdVal;         // стр_АНПродВал;
    [ANalVal            ] fr_dochead.ANalVal;              // АНАЛВал;
    [StrANalVal         ] fr_dochead.StrANalVal;           // стр_АНАЛВал;
    [APrNDS             ] fr_dochead.APrNDS;               // АПрНДС;
    [APrEcise           ] fr_dochead.APrEcise;             // АПрАкциз;
    [APrNProd           ] fr_dochead.APrNProd;             // АПрНПрод;
    [APrNal             ] fr_dochead.APrNal;               // АПрНАЛ;
    [Signer1            ] fr_dochead.Signer1;              // Подписант1;
    [SignerApp1         ] fr_dochead.SignerApp1;           // Подписант_Должность1;
    [Signer2            ] fr_dochead.Signer2;              // Подписант2;
    [SignerApp2         ] fr_dochead.SignerApp2;           // Подписант_Должность2;
    [Signer3            ] fr_dochead.Signer3;              // Подписант3;
    [SignerApp3         ] fr_dochead.SignerApp3;           // Подписант_Должность3;
    [Signer4            ] fr_dochead.Signer4;              // Подписант4;
    [SignerApp4         ] fr_dochead.SignerApp4;           // Подписант_Должность4;
    [Signer5            ] fr_dochead.Signer5;              // Подписант5;
    [SignerApp5         ] fr_dochead.SignerApp5;           // Подписант_Должность5;
    [AllDoc1            ] fr_dochead.AllDoc1;              // все_документы1;
    [AllDoc2            ] fr_dochead.AllDoc2;              // все_документы2;
    [AllDoc3            ] fr_dochead.AllDoc3;              // все_документы3;
    [AllDoc4            ] fr_dochead.AllDoc4;              // все_документы4;
    [AllDoc5            ] fr_dochead.AllDoc5;              // все_документы5;
    [AllCert1           ] fr_dochead.AllCert1;             // все_сертификаты1;
    [AllCert2           ] fr_dochead.AllCert2;             // все_сертификаты2;
    [AllCert3           ] fr_dochead.AllCert3;             // все_сертификаты3;
    [AllCert4           ] fr_dochead.AllCert4;             // все_сертификаты4;
    [AllCert5           ] fr_dochead.AllCert5;             // все_сертификаты5;
    [sAllDocs           ] fr_dochead.AllDoc1  + ' ' + fr_dochead.AllDoc2  + ' ' + fr_dochead.AllDoc3  + ' ' +fr_dochead.AllDoc4   + ' ' + fr_dochead.AllDoc5 ; //все документы
    [sAllCerts          ] fr_dochead.AllCert1 + ' ' + fr_dochead.AllCert2 + ' ' + fr_dochead.AllCert3 + ' ' + fr_dochead.AllCert4 + ' ' + fr_dochead.AllCert5; //все сертификаты
    [SpSymbol           ] fr_dochead.SpSymbol;             // спецсимвол

! Поля для форм ТТН-1 и ТН-2
    [avtopredpTTN       ] oPrnSoprFun.GetAvtoPr(fr_dochead.Attr_AutoName, fr_dochead.Attr_MyAuto, grotp.KatOrg_Name, grpol.KatOrg_Name);

    [osnOtpTTN          ] oPrnSoprFun.GetOsnovOtp(fr_dochead.Dogovor_dDoc, fr_dochead.BaseDoc_DDoc, fr_dochead.Dogovor_NoDoc, fr_dochead.BaseDoc_NoDoc,
                                                  fr_dochead.Class_OsnOtp, fr_dochead.Class_CelPriobr);

    [osnOtpName         ] oPrnSoprFun.GetOsnovName(fr_dochead.Dogovor_NoDoc, fr_dochead.NZakaz_NoDoc, fr_dochead.BaseDoc_NoDoc);
    [osnOtpNum          ] oPrnSoprFun.GetOsnovNum (fr_dochead.Dogovor_NoDoc, fr_dochead.NZakaz_NoDoc, fr_dochead.BaseDoc_NoDoc);
    [osnOtpDate         ] oPrnSoprFun.GetOsnovDate(fr_dochead.Dogovor_NoDoc, fr_dochead.NZakaz_NoDoc, fr_dochead.BaseDoc_NoDoc,
                                                    fr_dochead.Dogovor_dDoc, fr_dochead.NZakaz_DDoc , fr_dochead.BaseDoc_DDoc);
    [osnPerUPD          ] oPrnSoprFun.GetOsnovPerUPD(fr_dochead.KatSoprNRec);

    [wRoundMass2Str     ] oPrnSoprFun.GetwRoundMass2Str;
    [wRoundMass2StrTTN  ] oPrnSoprFun.GetwRoundMass2StrTTN;
    [OtpRazTTN          ] oPrnSoprFun.GetOtpRaz (fr_dochead.Attr_OptRazApp , fr_dochead.Attr_OptRazFio);
    [OtpRazTTN2         ] oPrnSoprFun.GetOtpRaz (fr_dochead.Attr_OptRazApp2, fr_dochead.Attr_OptRazFio2);
    [OtpRazTTN3         ] oPrnSoprFun.GetOtpRaz (fr_dochead.Attr_OptRazApp3, fr_dochead.Attr_OptRazFio3);
    [SdalOtpTTN         ] oPrnSoprFun.GetSdalOtp(fr_dochead.Attr_SdalOptApp, fr_dochead.Attr_SdalOptFio);
    [TovPrinTTN         ] oPrnSoprFun.GetTovPrin(fr_dochead.KatSopr_sDover, fr_dochead.Attr_Forw, fr_dochead.DovFIO_Post);
    [NumAndDateDoverTTN ] oPrnSoprFun.GetNumAndDateDover(fr_dochead.KatSopr_nDover, fr_dochead.KatSopr_dDover);
    [DoverOrgTTN        ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 6, 0);

    [AllDocTTN          ] oPrnSoprFun.GetAllDoc(fr_dochead.AllDoc1 , fr_dochead.AllDoc2 , fr_dochead.AllDoc3  , fr_dochead.AllDoc4,
                                                fr_dochead.AllDoc5 , fr_dochead.AllCert1, fr_dochead.AllCert2 , fr_dochead.AllCert3,
                                                fr_dochead.AllCert4, fr_dochead.AllCert5, fr_dochead.PriceList, sPrice);

    [val_rub             ] oPrnSoprFun.GetVal_rub  (fr_dochead.KatSopr_cVal);
    [val_kop             ] oPrnSoprFun.GetVal_kop  (fr_dochead.KatSopr_cVal);
    [nvagon              ] oPrnSoprFun.GetVagon    (fr_dochead.KatSoprNRec, 0);
    [prGrpol             ] oPrnSoprFun.GetPrGrpol  (fr_dochead.KatSoprNRec);
    [nplomba             ] oPrnSoprFun.GetPlomba   (fr_dochead.KatSoprNRec);
    [isSumOtpEd          ] oPrnSoprFun.IsSumOtpEd  (fr_dochead.KatSoprNRec);
    [IGK                 ] oPrnSoprFun.GetFullIGKEx(fr_dochead.KatSoprNRec, fr_dochead.SchFact_NRec);
    [CMR                 ] oPrnSoprFun.Write_CMR   (fr_dochead.KatSoprNRec);
! Поля для универсального передаточного документа
//продавец
    [SchFactPostName     ] oPrnSoprFun.GetOrgFullName(oPrnSoprFun.GetSchFactOrgNRec(fr_dochead.SchFact_NRec, 0), 8, 0, fr_dochead.KatSopr_dSopr);
    [SchFactPostAddr     ] oPrnSoprFun.GetSchFactOrgAddr(fr_dochead.SchFact_NRec, 0);
    [SchFactPostUNN      ] oPrnSoprFun.GetSchFactOrgUNN (fr_dochead.SchFact_NRec, 0);
//покупатель
    [SchFactPoluchName   ] oPrnSoprFun.GetOrgFullName(oPrnSoprFun.GetSchFactOrgNRec(fr_dochead.SchFact_NRec, 1), 8, 0, fr_dochead.KatSopr_dSopr);
    [SchFactPoluchAddr   ] oPrnSoprFun.GetSchFactOrgAddr(fr_dochead.SchFact_NRec, 1);
    [SchFactPoluchUNN    ] oPrnSoprFun.GetSchFactOrgUNN (fr_dochead.SchFact_NRec, 1);
//грузоотправитель
    [SchFactGrotpName    ] oPrnSoprFun.GetOrgFullName(oPrnSoprFun.GetSchFactOrgNRec(fr_dochead.SchFact_NRec, 2), 8, 0, fr_dochead.KatSopr_dSopr);
    [SchFactGrotpAddr    ] oPrnSoprFun.GetSchFactOrgAddr(fr_dochead.SchFact_NRec, 2);

//грузополучатель
    [SchFactGrpolName    ] oPrnSoprFun.GetOrgFullName(oPrnSoprFun.GetSchFactOrgNRec(fr_dochead.SchFact_NRec, 3), 8, 0, fr_dochead.KatSopr_dSopr);
    [SchFactGrpolAddr    ] oPrnSoprFun.GetSchFactOrgAddr(fr_dochead.SchFact_NRec, 3);
//гл. бухгалтер
    [GlBuhName           ] oPrnSoprFun.GetGlBuhName(fr_dochead.KatSoprNRec, fr_dochead.GBuhName);
    [val_name            ] if (oPrnSoprFun.GetValName(fr_dochead.KatSopr_cVal) = '', sGetTune('NDE.NAMERUBL'), oPrnSoprFun.GetValName(fr_dochead.KatSopr_cVal));
    [val_kod             ] if (oPrnSoprFun.GetValCode(fr_dochead.KatSopr_cVal) = '', sGetTune('NDE.RUBLISO') , oPrnSoprFun.GetValCode(fr_dochead.KatSopr_cVal));
    [PlatSch             ] oPrnSoprFun.FindPlat(fr_dochead.SchFact_NRec);
//номер счета-фактуры для корректировочного УПД
    [SchNom              ] oPrnSoprFun.GetSchFactNum (fr_dochead.KatSoprNRec);
    [SchDate             ] oPrnSoprFun.GetSchFactDate(fr_dochead.KatSoprNRec);
//Руководитель и реквизиты для ИП
    [Check_IP            ] oPrnSoprFun.Check_IP(fr_dochead.KatSoprNRec, 1);
    [Write_IP            ] oPrnSoprFun.Write_IP(fr_dochead.KatSoprNRec, 1);
//Транспортная накладная для торг-12
    [nomerTN             ] oPrnSoprFun.NumData(fr_dochead.KatSoprNRec, 0);       // Номер
    [date_fullTN         ] oPrnSoprFun.NumData(fr_dochead.KatSoprNRec, 1);// Дата

// 101.62039
    [SchFactIspNom       ] oPrnSoprFun.GetSchFactIsp(fr_dochead.SchFact_NRec, 0);
    [SchFactIspDat       ] oPrnSoprFun.GetSchFactIsp(fr_dochead.SchFact_NRec, 1);
    [SchFactIspCorrNom   ] oPrnSoprFun.GetSchFactIspCorr(fr_dochead.KatSoprNRec, 0);
    [SchFactIspCorrDat   ] oPrnSoprFun.GetSchFactIspCorr(fr_dochead.KatSoprNRec, 1);
//106.10533 - Номер и дата исходной накладной для корректировочных
    [IshNum              ] oPrnSoprFun.GetNaklFactNum(fr_dochead.KatSoprNRec);
    [IshData             ] oPrnSoprFun.GetNaklFactDate(fr_dochead.KatSoprNRec);
//102.178376
    [SFDopInf            ] oPrnSoprFun.GetSFDopInf(fr_dochead.SchFact_NRec, fr_dochead.KatSoprNRec);
  )
  ;


   Table fr_docspecif//MPrnSoprSpNakl
  (
    [spec_nrec            ]  fr_docspecif.SpSoprNRec;               // спецификацияМЦ_нрек
    [PrMc                 ]  fr_docspecif.PrMc;                     // Признак_МЦ
    [npp                  ]  fr_docspecif.Npp;                      // Номер_пп
    [TVEND                ]  fr_docspecif.NVEND;                    // ТНВЭД
    [Doc_wiht_goods       ]  fr_docspecif.GrouzDoc;                 // с_грузом_след_док
    [res_hranenia         ]  fr_docspecif.ResName;                  // Ресурс_хранения
    [group_kod            ]  fr_docspecif.GroupKod;                 // код_группы
    [group_name           ]  fr_docspecif.GroupName;                // название_группы
    [kod_mc               ]  fr_docspecif.MCKod;                    // КодМЦ
    [name                 ]  fr_docspecif.MCName;                   // Название
    [dop_inf_mc           ]  fr_docspecif.DopInfo;                  // Дополнительная_информация
    [gruz_kod             ]  fr_docspecif.GrouzKod;                 // КодГруза
    [gruz_klass           ]  fr_docspecif.GrouzClass;               // КлассГруза
    [stroi_obj            ]  fr_docspecif.StroyObj;                 // Объект_строительства
    [stroi_statia_zatr    ]  fr_docspecif.StZatr;                   // Статья_затрат
    [CountryIn            ]  fr_docspecif.CountryIn;                // страна_ввоза
    [Rnakl_nom            ]  fr_docspecif.RNakl;                    // Pнакладная
    [Rnakl_descr          ]  fr_docspecif.Descr;                    // Дескриптор_рнакладной
    [Rnakl_nom_descr      ]  fr_docspecif.RDescr;                   // Рнакладная_с_дескриптором
    [koef_godnosti        ]  fr_docspecif.KoefGodn;                 // Коэффициент_годности
    [vhod_procent         ]  fr_docspecif.VhodProc;                 // Вход_процент
    [ishod_procent        ]  fr_docspecif.IshodProc;                // Исход_процент
    [skid_nadb_str        ]  fr_docspecif.StrSkidka;                // Скидка_Надбавка_cтрока
    [zavod_cena           ]  fr_docspecif.ZavCena;                  // Завод_Цена
    [zavod_cena_nak       ]  fr_docspecif.ZavCenaNak;               // Завод_ЦенаНак
    [zavod_cena_val       ]  fr_docspecif.ZavCenaVal;               // Завод_ЦенаВал
    [katmc_prim           ]  fr_docspecif.McPrim;                   // KatMC_примечание
    [primMC               ]  fr_docspecif.McNote;                   // ПримМЦ
    [otp_ed               ]  fr_docspecif.OtpEd;                    // ОтпЕд
    [otp_ed_kod           ]  fr_docspecif.OtpEdKod;                 // ОтпЕд_Код
    [otp_ed_koef          ]  fr_docspecif.KolUth/fr_docspecif.KolF; // КолУч/КолФ
    [max_proc_nacenki     ]  fr_docspecif.MaxProcNac;               // МаксПроцНаценки
    [massaMC              ]  fr_docspecif.MassaMC;                  // МассаМЦ
    [massaMC_tara         ]  fr_docspecif.MassaTar;                 // МассаТарыМЦ
    [volMC                ]  fr_docspecif.MCVolume;                 // ОбъемМЦ
    [sizeX                ]  fr_docspecif.MCSizeX;                  // SizeX
    [sizeY                ]  fr_docspecif.MCSizeY;                  // SizeY
    [sizeZ                ]  fr_docspecif.MCSizeZ;                  // SizeZ
    [uch_ed               ]  fr_docspecif.UthEd;                    // УчЕд
    [uch_ed_kod           ]  1;                    //для совместимости
    [kolDO                ]  fr_docspecif.KolDO;                    // КолДО
    [kolF                 ]  fr_docspecif.KolF;                     // КолФ
    [kolF_str             ]  fr_docspecif.StrKolF;                  // стр_КолФ
    [kol_opl              ]  fr_docspecif.KolOpl;                   // КолОпл
    [proc_ub              ]  fr_docspecif.ProcUb;                   // ПроцУб
    [kol_uch              ]  fr_docspecif.KolUth;                   // КолУч
    [kol_ves              ]  fr_docspecif.KolVes;                   // КолВес
    [kol_ves_ton          ]  fr_docspecif.KolVes/1000;              // КолВес/1000
    [kol_ob               ]  fr_docspecif.KolOb;                    // КолОб
    [brak                 ]  fr_docspecif.KolBrak;                  // Брак
    [boi                  ]  fr_docspecif.KolBoy;                   // Бой
    [kol_grm_s            ]  fr_docspecif.GrMKol;                   // КОЛ_ГРУЗОВЫХ_МЕСТ
    [ed_izm_grm           ]  fr_docspecif.GrMEd;                    // ЕД_ИЗМЕРЕНИЯ_ГРУЗОВЫХ_МЕСТ
    [kol_one_grm          ]  fr_docspecif.KolOneGrM;                // KolOneGrM
    [cena_nak             ]  fr_docspecif.CNak;                     // ЦНак
    [cena_nac             ]  fr_docspecif.CNac;                     // ЦНац
    [cena_val             ]  fr_docspecif.CVal;                     // ЦВал
    [cena_nak_uch         ]  fr_docspecif.CNakUth;                  // ЦНакУч
    [cena_nac_uch         ]  fr_docspecif.CNacUth;                  // ЦНацУч
    [cena_val_uch         ]  fr_docspecif.CValUth;                  // ЦВалУч
    [st_nak               ]  fr_docspecif.StNak;                    // СтНак
    [st_opl               ]  fr_docspecif.StOpl;                    // СтОпл
    [st_nac               ]  fr_docspecif.StNac;                    // СтНац
    [st_val               ]  fr_docspecif.StVal;                    // СтВал
    [cena_nak_bn          ]  fr_docspecif.CNakBN;                   // ЦНакБН
    [cena_nac_bn          ]  fr_docspecif.CNacBN;                   // ЦНацБН
    [cena_val_bn          ]  fr_docspecif.CValBN;                   // ЦВалБН
    [cena_nak_bn_uch      ]  fr_docspecif.CNakBNUth;                // ЦНакБНУч
    [cena_nac_bn_uch      ]  fr_docspecif.CNacBNUth;                // ЦНацБНУч
    [cena_val_bn_uch      ]  fr_docspecif.CValBNUth;                // ЦВалБНУч
    [cena_nak_sn          ]  fr_docspecif.CNakSN;                   // ЦНакСН
    [cena_nac_sn          ]  fr_docspecif.CNacSN;                   // ЦНацСН
    [cena_val_sn          ]  fr_docspecif.CValSN;                   // ЦВалСН
    [cena_nak_sn_uch      ]  fr_docspecif.CNakSNUth;                // ЦНакСНУч
    [cena_nac_sn_uch      ]  fr_docspecif.CNacSNUth;                // ЦНацСНУч
    [cena_val_sn_uch      ]  fr_docspecif.CValSNUth;                // ЦВалСНУч
    [stavka_first_nal     ]  fr_docspecif.StNDS;                    // ставка_первого_налога
    [cena_NDS_nak         ]  fr_docspecif.CNDSNak;                  // ЦНДСНак
    [cena_akciz_nak       ]  fr_docspecif.CExciseNak;               // ЦАкцизНак
    [cena_prod_nak        ]  fr_docspecif.CProdNak;                 // ЦНПродНак
    [cena_nal_nak         ]  fr_docspecif.CNalNak;                  // ЦНАЛНак
    [cena_NDS_nac         ]  fr_docspecif.CNDSNac;                  // ЦНДСНац
    [cena_akciz_nac       ]  fr_docspecif.CExciseNac;               // ЦАкцизНац
    [cena_prod_nac        ]  fr_docspecif.CNProdNac;                // ЦНПродНац
    [cena_nal_nac         ]  fr_docspecif.CNalNac;                  // ЦНАЛНац
    [cena_NDS_val         ]  fr_docspecif.CNDSVal;                  // ЦНДСВал
    [cena_akciz_val       ]  fr_docspecif.CExiseVal;                // ЦАкцизВал
    [cena_prod_val        ]  fr_docspecif.CNProdVal;                // ЦНПродВал
    [cena_nal_val         ]  fr_docspecif.CNalVal;                  // ЦНАЛВал
    [st_nak_bn            ]  fr_docspecif.StNakBN;                  // СтНакБН
    [st_nac_bn0           ]  fr_docspecif.StNacBN0;                 // СтНацБН0
    [st_val_bn            ]  fr_docspecif.StValBN;                  // СтВалБН
    [st_nak_sn            ]  fr_docspecif.StNakSN;                  // СтНакСН
    [st_nac_sn0           ]  fr_docspecif.StNacSN0;                 // СтНацСН0
    [st_val_sn            ]  fr_docspecif.StValSN;                  // СтВалСН
    [st_NDS_nak           ]  fr_docspecif.StNDSNak;                 // СтНДСНак
    [st_akciz_nak         ]  fr_docspecif.StExciseNak;              // СтАкцизНак
    [st_nprod_nak         ]  fr_docspecif.StNProdNak;               // СтНПродНак
    [st_nal_nak           ]  fr_docspecif.StNalNak;                 // СтНАЛНак
    [st_NDS_nac0          ]  if ( fr_docspecif.StNDSNac0 = 0
                                , sGetTune('Doc.SD.AbbrField.NDSSummZero')
                                , DoubleToStr(fr_docspecif.StNDSNac0, Cena_PrR));// СтНДСНац0
    [st_NDS_nac0wof       ]  fr_docspecif.StNDSNac0;                // СтНДСНац0
    [st_akciz_nac         ]  fr_docspecif.StExciseNac;              // СтАкцизНац
    [st_nprod_nac         ]  fr_docspecif.StNProdNac;               // СтНПродНац
    [st_nal_nac           ]  fr_docspecif.StNalNac;                 // СтНАЛНац
    [st_NDS_val           ]  fr_docspecif.StNDSVal;                 // СтНДСВал
    [st_akciz_val         ]  fr_docspecif.StExciseVal;              // СтАкцизВал
    [st_nprod_val         ]  fr_docspecif.StNProdVal;               // СтНПродВал
    [st_nal_val           ]  fr_docspecif.StNalVal;                 // СтНАЛВал
    [cenaDO               ]  fr_docspecif.CenaDO;                   // ЦенаДО
    [summaDO              ]  fr_docspecif.SummaDO;                  // СуммаДО
    [kol_DO               ]  fr_docspecif.Kol_DO;                   // Кол_ДО
    [proc_NDS             ]  if ( fr_docspecif.ProcNDS = 0
                                , sGetTune('Doc.SD.AbbrField.NDSStZero')
                                , DoubleToStr(fr_docspecif.ProcNDS, NDS_St));// ПрНДС
    [proc_akciz           ]  fr_docspecif.ProcExcise;               // ПрАкциз
    [proc_nprod           ]  fr_docspecif.ProcNProd;                // ПрНПрод
    [nefteprod_vol        ]  fr_docspecif.Volume;                   // Объем
    [nwfteprod_plot       ]  fr_docspecif.Plotn;                    // Плотность
    [nefteprod_t          ]  fr_docspecif.Temper;                   // Температура
    [group_party          ]  fr_docspecif.GroupParty;               // Группа_Партии
    [party                ]  fr_docspecif.PartyName;                // Партия
    [party_primechanie    ]  fr_docspecif.PartyPrim;                // KatParty_примечание
    [cena_izgotov_nac     ]  fr_docspecif.PartyZavCena;             // Цена_изготовителяНац
    [cena_izgotov_nak     ]  fr_docspecif.PartyZavCenaV;            // Цена_изготовителяВалНак
    [s_gruzom_doc         ]  fr_docspecif.GrouzDoc;                 // с_грузом_след_док
    [s_gruzom_doc_dop     ]  fr_docspecif.GrouzDocDop;              // с_грузом_след_док_доп
    [setrif_nom           ]  fr_docspecif.CertNomer;                // Номер_сертификата
    [sertif_data          ]  fr_docspecif.CertDate;                 // Дата_сертификата
    [sertif_vidal         ]  fr_docspecif.CertWho;                  // Ктовыдал_сертификат
    [party_proizv         ]  fr_docspecif.PartyOrg;                 // Производитель_партии
    [party_proizv_country ]  fr_docspecif.PartyCountry;             // Страна_производителя_партии
    [party_attr_chislo    ]  fr_docspecif.PartyAttr;                // Атрибут_Партии_Число
    [analiz_data          ]  fr_docspecif.PartyDateAnaliz;          // Дата_анализа
    [analiz_nomer         ]  fr_docspecif.PartyNumAnaliz;           // Номер_анализа
    [party_valuta         ]  fr_docspecif.PartyVal;                 // Валюта_партии
    [party_valuta_kod     ]  fr_docspecif.PartyKodVal;              // КодВалюты_партии
    [party_srok_godn      ]  fr_docspecif.PartySrokGodn;            // Срок_годности
    [cena_ord_nac         ]  fr_docspecif.CenaOrd;                  // Цена_ордера_нац
    [cane_ord_val         ]  fr_docspecif.CenaOrdVal;               // Цена_ордера_вал
    [sPrim                ]  fr_docspecif.sPrim;                    // sPrimechanie
    [sPrimV               ]  fr_docspecif.sPrimV;                   // sPrimechanieV
! Поля для форм ТТН-1 и ТН-2
    [nazvanie_dop         ]  oPrnSoprFun.GetNazvanieDop(fr_docspecif.MCName, fr_docspecif.MCKod, fr_docspecif.DopInfo, fr_docspecif.CountryIn);
    [kolFTTN              ]  DoubleToStr(fr_docspecif.KolF, Kol_Pr);

    [priceMC              ]  oPrnSoprFun.GetSPriceMC(spec_nrec, 1, fr_dochead.KatSopr_cVal, fr_docspecif.PrMc, fr_docspecif.CNacSN, fr_docspecif.CNacBN,
                                                                                                               fr_docspecif.CNakSN, fr_docspecif.CNakBN);

    [priceMCVal           ]  oPrnSoprFun.GetSPriceMC(spec_nrec, 2, fr_dochead.KatSopr_cVal, fr_docspecif.PrMc, fr_docspecif.CNacSN, fr_docspecif.CNacBN,
                                                                                                               fr_docspecif.CNakSN, fr_docspecif.CNakBN);

    [priceMCwof           ]  oPrnSoprFun.GetDPriceMC(spec_nrec, 1, fr_docspecif.PrMc, fr_docspecif.CNacSNUth, fr_docspecif.CNacBN, fr_docspecif.CNakSN, fr_docspecif.CNakBN);
    [priceMCValwof        ]  oPrnSoprFun.GetDPriceMC(spec_nrec, 2, fr_docspecif.PrMc, fr_docspecif.CNacSNUth, fr_docspecif.CNacBN, fr_docspecif.CNakSN, fr_docspecif.CNakBN);

    [SummaMc              ]  oPrnSoprFun.GetSSummaMC(1, fr_docspecif.PrMc, fr_docspecif.StNacSN0, fr_docspecif.StNacBN0, fr_docspecif.StNakSN, fr_docspecif.StNakBN);
    [SummaMcVal           ]  oPrnSoprFun.GetSSummaMC(2, fr_docspecif.PrMc, fr_docspecif.StNacSN0, fr_docspecif.StNacBN0, fr_docspecif.StNakSN, fr_docspecif.StNakBN);
    [SummaMcwof           ]  oPrnSoprFun.GetDSummaMC(1, fr_docspecif.PrMc, fr_docspecif.StNacSN0, fr_docspecif.StNacBN0, fr_docspecif.StNakSN, fr_docspecif.StNakBN);
    [SummaMcValwof        ]  oPrnSoprFun.GetDSummaMC(2, fr_docspecif.PrMc, fr_docspecif.StNacSN0, fr_docspecif.StNacBN0, fr_docspecif.StNakSN, fr_docspecif.StNakBN);

    [StavkaNal            ]  oPrnSoprFun.GetStavkaNal(fr_docspecif.PrNDS, fr_docspecif.StNDS);

    [SumNds               ]  oPrnSoprFun.GetSumNds (1, PrNDS, fr_docspecif.StNDSNac0, fr_docspecif.StNDSNak);
    [SumNdsVal            ]  oPrnSoprFun.GetSumNds (2, PrNDS, fr_docspecif.StNDSNac0, fr_docspecif.StNDSNak);
    [SumNdswof            ]  oPrnSoprFun.GetDSumNds(1, PrNDS, fr_docspecif.StNDSNac0, fr_docspecif.StNDSNak);
    [SumNdsValwof         ]  oPrnSoprFun.GetDSumNds(2, PrNDS, fr_docspecif.StNDSNac0, fr_docspecif.StNDSNak);

    [SummaMcSNds          ]  oPrnSoprFun.GetSSummaMCsNDS(1, fr_docspecif.StNacSN0, fr_docspecif.StNakSN);
    [SummaMcSNdsVal       ]  oPrnSoprFun.GetSSummaMCsNDS(2, fr_docspecif.StNacSN0, fr_docspecif.StNakSN);
    [SummaMcSNdswof       ]  oPrnSoprFun.GetDSummaMCsNDS(1, fr_docspecif.StNacSN0, fr_docspecif.StNakSN);
    [SummaMcSNdsValwof    ]  oPrnSoprFun.GetDSummaMCsNDS(2, fr_docspecif.StNacSN0, fr_docspecif.StNakSN);
    [KolGrMTTN            ]  oPrnSoprFun.GetKolGrM     (fr_docspecif.PrMc, fr_docspecif.GrMKol, fr_docspecif.KolF);
    [KolGrMTTNwof         ]  oPrnSoprFun.GetDKolGrM    (fr_docspecif.PrMc, fr_docspecif.GrMKol, fr_docspecif.KolF);
    [MassaBrTTN           ]  oPrnSoprFun.GetMassaBr    (fr_docspecif.PrMc, fr_docspecif.KolVes);
    [MassaBrTTNDouble     ]  oPrnSoprFun.GetMassaBr    (fr_docspecif.PrMc, fr_docspecif.KolVes);
    [MassaBrTTNwof        ]  oPrnSoprFun.GetDMassaBr   (fr_docspecif.PrMc, fr_docspecif.KolVes);
    [MassaNettoTTN        ]  oPrnSoprFun.GetMassaBr    (fr_docspecif.PrMc, fr_docspecif.MassaMC * fr_docspecif.KolUth);
    [MassaNettoTTNDouble  ]  oPrnSoprFun.GetMassaBr    (fr_docspecif.PrMc, fr_docspecif.MassaMC * fr_docspecif.KolUth);
    [MassaNettoTTNwof     ]  oPrnSoprFun.GetDMassaBr   (fr_docspecif.PrMc, fr_docspecif.MassaMC * fr_docspecif.KolUth);
    [MassaBrTTN1          ]  oPrnSoprFun.GetMassaBrTTN (fr_docspecif.PrMc, fr_docspecif.KolVes);
    [MassaBrTTN1Double    ]  oPrnSoprFun.GetMassaBrTTN (fr_docspecif.PrMc, fr_docspecif.KolVes);
    [MassaBrTTN1wof       ]  oPrnSoprFun.GetDMassaBrTTN(fr_docspecif.PrMc, fr_docspecif.KolVes);
    [MassaNettoTTN1       ]  oPrnSoprFun.GetMassaBrTTN (fr_docspecif.PrMc, fr_docspecif.MassaMC * fr_docspecif.KolUth);
    [MassaNettoTTN1Double ]  oPrnSoprFun.GetMassaBrTTN (fr_docspecif.PrMc, fr_docspecif.MassaMC * fr_docspecif.KolUth);
    [MassaNettoTTN1wof    ]  oPrnSoprFun.GetDMassaBrTTN(fr_docspecif.PrMc, fr_docspecif.MassaMC * fr_docspecif.KolUth);

    [UthEdKod             ]  oPrnSoprFun.GetUthEdKod (fr_docspecif.SpSoprNRec);
    [OtpKod               ]  oPrnSoprFun.GetOtpEdKod (fr_docspecif.SpSoprNRec);
! Поля для ТОРГ-12 и 1-Т  ПИР 101.48950
    [NastrPriceMC         ]  DoubleToStr(oPrnSoprFun.NastrEdIzmP(spec_nrec, 1, fr_docspecif.PrMc, fr_docspecif.CNakSN, fr_docspecif.CNakBN,
                             fr_docspecif.CNakSN, fr_docspecif.CNakBN, fr_docspecif.CNakSNUth, fr_docspecif.CNakBNUth, fr_docspecif.CNakSNUth, fr_docspecif.CNakBNUth), if(GetPrecisionGroup('brForSoprTTN_RVPrice')<> 5, Cena_PrTTN, Cena_Pr));
    [NastrRPriceMC        ]  DoubleToStr(oPrnSoprFun.NastrEdIzmP(spec_nrec, 1, fr_docspecif.PrMc, fr_docspecif.CNacSN, fr_docspecif.CNacBN,
                             fr_docspecif.CNacSN, fr_docspecif.CNacBN, fr_docspecif.CNacSNUth, fr_docspecif.CNacBNUth, fr_docspecif.CNacSNUth, fr_docspecif.CNacBNUth), if(GetPrecisionGroup('brForSoprTTN_Price')<> 5, Cena_PrRTTN, Cena_PrR));
    [NastrKol             ]  oPrnSoprFun.NastrEdIzm(DoubleToStr(fr_docspecif.KolUth, Kol_Pr), DoubleToStr(fr_docspecif.KolF, Kol_Pr));
    [NastrEdIzm           ]  oPrnSoprFun.NastrEdIzm(fr_docspecif.UthEd, fr_docspecif.OtpEd);
    [NastrEdCode          ]  oPrnSoprFun.NastrEdIzm(oPrnSoprFun.GetUthEdKod(fr_docspecif.SpSoprNRec), oPrnSoprFun.GetOtpEdKod(fr_docspecif.SpSoprNRec));
    [CHTN_dOpr            ]  fr_docspecif.CHTN_dOpr;
    [akciz                ]  DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr);
    [PrnSoprGTD1          ]  oPrnSoprFun.PrnSoprGTD(PrMc, fr_dochead.SchFact_NRec, fr_docspecif.SpSoprNRec, 0);  //код страны товара
    [PrnSoprGTD2          ]  oPrnSoprFun.PrnSoprGTD(PrMc, fr_dochead.SchFact_NRec, fr_docspecif.SpSoprNRec, 1);  //страна товара
    [PrnSoprGTD3          ]  oPrnSoprFun.PrnSoprGTD(PrMc, fr_dochead.SchFact_NRec, fr_docspecif.SpSoprNRec, 2);  //номер таможенной декларации
! Поля для соглашения и корректировочного документа ПИР 102.137440
    [KDKolOld             ] DoubleToStr(oPrnSoprFun.GetKDKolOld  (fr_docspecif.SpSoprNRec), Kol_Pr);
    [KDKolNew             ] DoubleToStr(oPrnSoprFun.GetKDKolNew  (fr_docspecif.SpSoprNRec), Kol_Pr);
    [KDPriceOld           ] DoubleToStr(oPrnSoprFun.GetKDPriceOld(fr_docspecif.SpSoprNRec), Kol_Pr);
    [KDPriceNew           ] DoubleToStr(oPrnSoprFun.GetKDPriceNew(fr_docspecif.SpSoprNRec), Kol_Pr);
    [KDSummaOldBN         ] DoubleToStr(oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec), Cena_Pr);
    [KDSummaNewBN         ] DoubleToStr(oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec), Cena_Pr);
    [KDSumma1BN           ] DoubleToStr(if ((oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)
                                           + oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec)) < 0,
                                             Abs(oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)
                                           + oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec)), 0), Cena_Pr);
    [KDSumma2BN           ] DoubleToStr(if ((oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)
                                           + oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec)) > 0,
                                             oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec)
                                           - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)
                                           + oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec), 0), Cena_Pr);

    [KDAkcizOld           ] if (oPrnSoprFun.GetKDPriceOld(fr_docspecif.SpSoprNRec) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');
    [KDAkcizNew           ] if (oPrnSoprFun.GetKDPriceNew(fr_docspecif.SpSoprNRec) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');
    [KDAkciz1             ] if (oPrnSoprFun.GetKDPriceOld(fr_docspecif.SpSoprNRec) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');
    [KDAkciz2             ] if (oPrnSoprFun.GetKDPriceNew(fr_docspecif.SpSoprNRec) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');

    [KDNalogStOld         ] if (fr_docspecif.StNDS = 0, sGetTune('Doc.SD.AbbrField.NDSStZero'), DoubleToStr(fr_docspecif.StNDS, NDS_St));
    [KDNalogStNew         ] if (fr_docspecif.StNDS = 0, sGetTune('Doc.SD.AbbrField.NDSStZero'), DoubleToStr(fr_docspecif.StNDS, NDS_St));

    [KDNalogOld           ] DoubleToStr(oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec), Cena_Pr);
    [KDNalogNew           ] DoubleToStr(oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec), Cena_Pr);
    [KDNalog1             ] DoubleToStr(if ((oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec)) < 0,
                                             Abs(oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec)), 0), Cena_Pr);
    [KDNalog2             ] DoubleToStr(if ((oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec)) > 0,
                                             oPrnSoprFun.GetKDNalogOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDNalogNew(fr_docspecif.SpSoprNRec), 0), Cena_Pr);

    [KDSummaOld           ] DoubleToStr(oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec), Cena_Pr);
    [KDSummaNew           ] DoubleToStr(oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec), Cena_Pr);
    [KDSumma1             ] DoubleToStr(if ((oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)) < 0,
                                             Abs (oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)), 0), Cena_Pr);
    [KDSumma2             ] DoubleToStr(if ((oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec)) > 0,
                                             oPrnSoprFun.GetKDSummaOld(fr_docspecif.SpSoprNRec) - oPrnSoprFun.GetKDSummaNew(fr_docspecif.SpSoprNRec), 0), Cena_Pr);
! Для исправительного документа 101.62039
    [KDKolOldIsp          ] DoubleToStr(oPrnSoprFun.GetKNKol(fr_docspecif.SpSoprNRec, 0), Kol_Pr);
    [KDKolNewIsp          ] DoubleToStr(oPrnSoprFun.GetKNKol(fr_docspecif.SpSoprNRec, 1), Kol_Pr);
    [KDPriceOldIsp        ] DoubleToStr(oPrnSoprFun.GetKNPrice(fr_docspecif.SpSoprNRec, 0), Kol_Pr);
    [KDPriceNewIsp        ] DoubleToStr(oPrnSoprFun.GetKNPrice(fr_docspecif.SpSoprNRec, 1), Kol_Pr);
    [KDSummaOldBNIsp      ] DoubleToStr(oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0), Cena_Pr);
    [KDSummaNewBNIsp      ] DoubleToStr(oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1) - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1), Cena_Pr);
    [KDSumma1BNIsp        ] DoubleToStr(if ((oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)
                                           + oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1)) < 0,
                                         Abs(oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)
                                           + oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1)), 0), Cena_Pr);
    [KDSumma2BNIsp        ] DoubleToStr(if ((oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)
                                           + oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1)) > 0,
                                             oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0)
                                           - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)
                                           + oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1), 0), Cena_Pr);

    [KDAkcizOldIsp        ] if (oPrnSoprFun.GetKNPrice(fr_docspecif.SpSoprNRec, 0) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');
    [KDAkcizNewIsp        ] if (oPrnSoprFun.GetKNPrice(fr_docspecif.SpSoprNRec, 1) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');
    [KDAkciz1Isp          ] if (oPrnSoprFun.GetKNPrice(fr_docspecif.SpSoprNRec, 0) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');
    [KDAkciz2Isp          ] if (oPrnSoprFun.GetKNPrice(fr_docspecif.SpSoprNRec, 1) <> 0, if (fr_docspecif.CExciseNak <> 0, DoubleToStr(fr_docspecif.CExciseNak, Cena_Pr), 'Без акциза'), '-');

    [KDNalogOldIsp        ] DoubleToStr(oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0), Cena_Pr);
    [KDNalogNewIsp        ] DoubleToStr(oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1), Cena_Pr);
    [KDNalog1Isp          ] DoubleToStr(if ((oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1)) < 0,
                                         Abs(oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1)), 0), Cena_Pr);
    [KDNalog2Isp          ] DoubleToStr(if ((oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1)) > 0,
                                             oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNNalog(fr_docspecif.SpSoprNRec, 1), 0), Cena_Pr);

    [KDSummaOldIsp        ] DoubleToStr(oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0), Cena_Pr);
    [KDSummaNewIsp        ] DoubleToStr(oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1), Cena_Pr);
    [KDSumma1Isp          ] DoubleToStr(if ((oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)) < 0,
                                        Abs (oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)), 0), Cena_Pr);
    [KDSumma2Isp          ] DoubleToStr(if ((oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1)) > 0,
                                             oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 0) - oPrnSoprFun.GetKNSumma(fr_docspecif.SpSoprNRec, 1), 0), Cena_Pr);
  );


  Table fr_docspecifusl
  (
    [SpSoprNRec          ] fr_docspecifusl.SpSoprNRec;   // спецификацияУС_нрек
    [UslName             ] fr_docspecifusl.UslName;      // НазваниеУслуги
    [UslKod              ] fr_docspecifusl.UslKod;       // КодУслуги
    [OtpEd               ] fr_docspecifusl.OtpEd;        // ОтпЕдИзмУслуги
    [UthEd               ] fr_docspecifusl.UthEd;        // УчЕдИзмУслуги
    [KoefOtpEd           ] fr_docspecifusl.KoefOtpEd;    // КоэфУслуги
    [KolD                ] fr_docspecifusl.KolD;         // КолДУслуги
    [KolF                ] fr_docspecifusl.KolF;         // КолФУслуги
    [Cena                ] fr_docspecifusl.Cena;         // ЦенаУслуги
    [CenaVal             ] fr_docspecifusl.CenaVal;      // ЦенаВалУслуги
    [Nalog1              ] fr_docspecifusl.Nalog1;       // У_Налог1Р
    [NalogV1             ] fr_docspecifusl.NalogV1;      // У_Налог1В
    [Nalog2              ] fr_docspecifusl.Nalog2;       // У_Налог2Р
    [NalogV2             ] fr_docspecifusl.NalogV2;      // У_Налог2В
    [Nalog3              ] fr_docspecifusl.Nalog3;       // У_Налог3Р
    [NalogV3             ] fr_docspecifusl.NalogV3;      // У_Налог3В
    [Nalog4              ] fr_docspecifusl.Nalog4;       // У_Налог4Р
    [NalogV4             ] fr_docspecifusl.NalogV4;      // У_Налог4В
    [Nalog5              ] fr_docspecifusl.Nalog5;       // У_Налог5Р
    [NalogV5             ] fr_docspecifusl.NalogV5;      // У_Налог5В
    [Nalog6              ] fr_docspecifusl.Nalog6;       // У_Налог6Р
    [NalogV6             ] fr_docspecifusl.NalogV6;      // У_Налог6В
    [NalogOth            ] fr_docspecifusl.NalogOth;     // У_Налог_прочие_Р
    [NalogOthV           ] fr_docspecifusl.NalogOthV;    // У_Налог_прочие_В
    [CNakBN              ] fr_docspecifusl.CNakBN;       // У_ЦНакБН
    [CNacBN              ] fr_docspecifusl.CNacBN;       // У_ЦНацБН
    [CValBN              ] fr_docspecifusl.CValBN;       // У_ЦВалБН
    [CNakBNUth           ] fr_docspecifusl.CNakBNUth;    // У_ЦНакБНУч
    [CNacBNUth           ] fr_docspecifusl.CNacBNUth;    // У_ЦНацБНУч
    [CValBNUth           ] fr_docspecifusl.CValBNUth;    // У_ЦВалБНУч
    [CNakSN              ] fr_docspecifusl.CNakSN;       // У_ЦНакСН
    [CNacSN              ] fr_docspecifusl.CNacSN;       // У_ЦНацСН
    [CValSN              ] fr_docspecifusl.CValSN;       // У_ЦВалСН
    [CNakSNUth           ] fr_docspecifusl.CNakSNUth;    // У_ЦНакСНУч
    [CNacSNUth           ] fr_docspecifusl.CNacSNUth;    // У_ЦНацСНУч
    [CValSNUth           ] fr_docspecifusl.CValSNUth;    // У_ЦВалСНУч
    [StNDS               ] fr_docspecifusl.StNDS;        // У_ставка_первого_налога
    [CNDSNak             ] fr_docspecifusl.CNDSNak;      // У_ЦНДСНак
    [CExciseNak          ] fr_docspecifusl.CExciseNak;   // У_ЦАкцизНак
    [CNProdNak           ] fr_docspecifusl.CNProdNak;    // У_ЦНПродНак
    [CNalNak             ] fr_docspecifusl.CNalNak;      // У_ЦНАЛНак
    [CNDSNac             ] fr_docspecifusl.CNDSNac;      // У_ЦНДСНац
    [CExciseNac          ] fr_docspecifusl.CExciseNac;   // У_ЦАкцизНац
    [CNProdNac           ] fr_docspecifusl.CNProdNac;    // У_ЦНПродНац
    [CNalNac             ] fr_docspecifusl.CNalNac;      // У_ЦНАЛНац
    [CNDSVal             ] fr_docspecifusl.CNDSVal;      // У_ЦНДСВал
    [CExciseVal          ] fr_docspecifusl.CExciseVal;   // У_ЦАкцизВал
    [CNProdVal           ] fr_docspecifusl.CNProdVal;    // У_ЦНПродВал
    [CNalVal             ] fr_docspecifusl.CNalVal;      // У_ЦНАЛВал
    [CStNakBN            ] fr_docspecifusl.CStNakBN;     // У_СтНакБН
    [StNacBN             ] fr_docspecifusl.StNacBN;      // У_СтНацБН
    [StValBN             ] fr_docspecifusl.StValBN;      // У_СтВалБН
    [StNakSN             ] fr_docspecifusl.StNakSN;      // У_СтНакСН
    [StNacSN             ] fr_docspecifusl.StNacSN;      // У_СтНацСН
    [StValSN             ] fr_docspecifusl.StValSN;      // У_СтВалСН
    [StNDSNak            ] fr_docspecifusl.StNDSNak;     // У_СтНДСНак
    [StExciseNak         ] fr_docspecifusl.StExciseNak;  // У_СтАкцизНак
    [StNProdNak          ] fr_docspecifusl.StNProdNak;   // У_СтНПродНак
    [StNalNak            ] fr_docspecifusl.StNalNak;     // У_СтНАЛНак
    [StNDSNac            ] fr_docspecifusl.StNDSNac;     // У_СтНДСНац
    [StExciseNac         ] fr_docspecifusl.StExciseNac;  // У_СтАкцизНац
    [StNProdNac          ] fr_docspecifusl.StNProdNac;   // У_СтНПродНац
    [StNalNac            ] fr_docspecifusl.StNalNac;     // У_СтНАЛНац
    [StNDSVal            ] fr_docspecifusl.StNDSVal;     // У_СтНДСВал
    [StExciseVal         ] fr_docspecifusl.StExciseVal;  // У_СтАкцизВал
    [StNProdVal          ] fr_docspecifusl.StNProdVal;   // У_СтНПродВал
    [StNalVal            ] fr_docspecifusl.StNalVal;     // У_СтНАЛВал
    [ProcNDS             ] fr_docspecifusl.ProcNDS;      // У_ПрНДС
    [ProcExcise          ] fr_docspecifusl.ProcExcise;   // У_ПрАкциз
    [ProcNProd           ] fr_docspecifusl.ProcNProd;    // У_ПрНПрод
    [ProcNal             ] fr_docspecifusl.ProcNal;      // У_ПрНАЛ
    [PartyName           ] fr_docspecifusl.PartyName;    // У_Партия
    [StroyObj            ] fr_docspecifusl.StroyObj;     // У_Объект_строительства
    [StZatr              ] fr_docspecifusl.StZatr;       // У_Статья_затрат
  )
  ;

  Table fr_docTTN//MPrnSoprTTI  // ТТИ
  (
    [TTN_WayKod          ] fr_docTTN.MarKod;             // ТТН_Маршрут_Код
    [TTN_WayName         ] fr_docTTN.MarName;            // ТТН_Маршрут_Имя
    [TTN_WayTransp_kod   ] fr_docTTN.MarSpKod;           // ТТН_Маршрут_СпособТран_Код
    [TTN_WayTransp_name  ] fr_docTTN.MarSpName;          // ТТН_Маршрут_СпособТран_Имя
    [TTN_Way_dist        ] fr_docTTN.MarRasst;           // ТТН_Маршрут_Расст
    [TTN_Way_speed       ] fr_docTTN.MarSpeed;           // ТТН_Маршрут_Скорость
    [TTN_speed_kod       ] fr_docTTN.SpeedKod;           // ТТН_Скорость_Код
    [TTN_speed_name      ] fr_docTTN.SpeedName;          // ТТН_Скорость_Имя
    [TTN_speed_min       ] fr_docTTN.SpeedMin;           // ТТН_Скорость_Мин
    [TTN_speed_max       ] fr_docTTN.SpeedMax;           // ТТН_Скорость_Макс
    [TTN_speed           ] fr_docTTN.Speed;              // ТТН_Скорость
    [TTN_bazis_kod       ] fr_docTTN.BasisKod;           // ТТН_Базис_Код
    [TTN_bazis_name      ] fr_docTTN.BasisName;          // ТТН_Базис_Имя
    [TTN_SpOtgr_kod      ] fr_docTTN.SpOtgrKod;          // ТТН_СпособОтгр_Код
    [TTN_SpOtgr_name     ] fr_docTTN.SpOtgrName;         // ТТН_СпособОтгр_Имя
    [TTN_SpOtgr_BazisKod ] fr_docTTN.SpOtgrBasisKod;     // ТТН_СпособОтгр_Базис_Код
    [TTN_SpOtgr_BazisName] fr_docTTN.SpOtgrBasisName;    // ТТН_СпособОтгр_Базис_Имя
    [TTN_SpOtgr_SpTr_kod ] fr_docTTN.SpTransKod;         // ТТН_СпособОтгр_СпособТран_Код
    [TTN_SpOtgr_SpTr_name] fr_docTTN.SpTransName;        // ТТН_СпособОтгр_СпособТран_Имя
    [TN_norm_r           ] fr_docTTN.PunktRNormRazgr;    // ТТН_ПунктР_Норматив_Разгр
    [TTN_nPutLst         ] fr_docTTN.Putlst_NPL;         // ТТН_ПЛист_Номер
    [PunktRNormMar       ] fr_docTTN.PunktRNormMar;      // ТТН_ПунктР_Расст_Маршрут
    [TTN_pR_name         ] fr_docTTN.PunktRName;         // ТТН_ПунктР_Имя
    [TTN_pR_dist         ] fr_docTTN.PunktRRasst;        // ТТН_ПунктР_Расст
    [TTN_pR_cnt_kod      ] fr_docTTN.PunktRCountryKod;   // ТТН_ПунктР_СТРАНА_КОД
    [TTN_pR_cnt_name     ] fr_docTTN.PunktRCountryName;  // ТТН_ПунктР_СТРАНА_ИМЯ
    [TTN_pR_cnt_nal      ] fr_docTTN.PunktRCountryNal;   // ТТН_ПунктР_СТРАНА_НАЛОГИ
    [TTN_pR_town_kod     ] fr_docTTN.PunktRSityKod;      // ТТН_ПунктР_ГОРОД_КОД
    [TTN_pR_town_name    ] fr_docTTN.PunktRSityName;     // ТТН_ПунктР_ГОРОД_ИМЯ
    [TTN_pR_town_tel     ] fr_docTTN.PunktRSityTel;      // ТТН_ПунктР_ГОРОД_ТЕЛ
    [TTN_pR_CntTown_kod  ] fr_docTTN.PunktRSCountryKod;  // ТТН_ПунктР_ГОРОД_СТРАНА_КОД
    [TTN_pR_CntTown_name ] fr_docTTN.PunktRSCountryName; // ТТН_ПунктР_ГОРОД_СТРАНА_ИМЯ
    [TTN_pR_CntTown_nal  ] fr_docTTN.PunktRSCountryNal;  // ТТН_ПунктР_ГОРОД_СТРАНА_НАЛОГИ
    [TTN_pR_addr         ] fr_docTTN.PunktRAddr;         // ТТН_ПунктР_Адрес
    [TTN_razgr_dbeg      ] fr_docTTN.PunktRDateIn;       // ТТН_ПунктР_Дата_С
    [TTN_razgr_tbeg      ] fr_docTTN.PunktRTimeIn;       // ТТН_ПунктР_Время_С
    [TTN_razgr_dend      ] fr_docTTN.PunktRDateOut;      // ТТН_ПунктР_Дата_По
    [TTN_razgr_tend      ] fr_docTTN.PunktRTimeOut;      // ТТН_ПунктР_Время_По
    [TTN_sp_razgr        ] fr_docTTN.PunktRMet;          // ТТН_ПунктР_Метод
    [PunktRDopName       ] fr_docTTN.PunktRDopName;      // ТТН_ПунктР_Доп_Имя
    [PunktRDopKol        ] fr_docTTN.PunktRDopKol;       // ТТН_ПунктР_Доп_Колич
    [PunktRDopTime       ] fr_docTTN.PunktRDopTime;      // ТТН_ПунктР_Доп_Время
    [PunktPNormRazgr     ] fr_docTTN.PunktPNormRazgr;    // ТТН_ПунктП_Норматив_Погр
    [PunktPNormMar       ] fr_docTTN.PunktPNormMar;      // ТТН_ПунктП_Расст_Маршрут
    [TTN_pP_name         ] fr_docTTN.PunktPName;         // ТТН_ПунктП_Имя
    [TTN_pP_dist         ] fr_docTTN.PunktPRasst;        // ТТН_ПунктП_Расст
    [TTN_pP_cnt_kod      ] fr_docTTN.PunktPCountryKod;   // ТТН_ПунктП_СТРАНА_КОД
    [TTN_pP_cnt_name     ] fr_docTTN.PunktPCountryName;  // ТТН_ПунктП_СТРАНА_ИМЯ
    [TTN_pP_cnt_nal      ] fr_docTTN.PunktPCountryNal;   // ТТН_ПунктП_СТРАНА_НАЛОГИ
    [TTN_pP_town_kod     ] fr_docTTN.PunktPSityKod;      // ТТН_ПунктП_ГОРОД_КОД
    [TTN_pP_town_name    ] fr_docTTN.PunktPSityName;     // ТТН_ПунктП_ГОРОД_ИМЯ
    [TTN_pP_town_tel     ] fr_docTTN.PunktPSityTel;      // ТТН_ПунктП_ГОРОД_ТЕЛ
    [TTN_pP_CntTown_kod  ] fr_docTTN.PunktPSCountryKod;  // ТТН_ПунктП_ГОРОД_СТРАНА_КОД
    [TTN_pP_CntTown_name ] fr_docTTN.PunktPSCountryName; // ТТН_ПунктП_ГОРОД_СТРАНА_ИМЯ
    [TTN_pP_CntTown_nal  ] fr_docTTN.PunktPSCountryNal;  // ТТН_ПунктП_ГОРОД_СТРАНА_НАЛОГИ
    [TTN_pP_addr         ] fr_docTTN.PunktPAddr;         // ТТН_ПунктП_Адрес
    [TTN_sp_pogr         ] fr_docTTN.PunktPMet;          // ТТН_ПунктП_Метод
    [TTN_pogr_nDopOp     ] fr_docTTN.PunktPDopName;      // ТТН_ПунктП_Доп_Имя
    [TTN_pogr_DopOp      ] fr_docTTN.PunktPDopKol;       // ТТН_ПунктП_Доп_Имя
    [Summa               ] fr_docTTN.Summa;              // ТТН_Сумма
    [Val                 ] fr_docTTN.Val;                // ТТН_Валюта
    [Putlst_Kformpl      ] fr_docTTN.Putlst_Kformpl;     // ТТН_ПЛист_Код
    [Putlst_NPL          ] fr_docTTN.Putlst_NPL;         // ТТН_ПЛист_Номер
    [Putlst_Nseria       ] fr_docTTN.Putlst_Nseria;      // ТТН_ПЛист_Серия
    [Putlst_Nomer        ] fr_docTTN.Putlst_Nomer;       // ТТН_ПЛист_ГосНомер
    [Putlst_DatPl        ] fr_docTTN.Putlst_DatPl;       // ТТН_ПЛист_ДатаВыдачи
    [Putlst_ExitDn       ] fr_docTTN.Putlst_ExitDn;      // ТТН_ПЛист_ДатаВыезда
    [Putlst_ReturnDn     ] fr_docTTN.Putlst_ReturnDn;    // ТТН_ПЛист_ДатаВозврата
    [TTNDoc_sPList       ] fr_docTTN.TTNDoc_sPList;      // ТТН_Номер_ПЛист
    [KnDriver_TABN       ] fr_docTTN.KnDriver_TABN;      // ТТН_Водитель_Табель
    [KnDriver_Name       ] fr_docTTN.KnDriver_Name;      // ТТН_Водитель_Имя
    [KnDriver_Klassv     ] fr_docTTN.KnDriver_Klassv;    // ТТН_Водитель_Класс
    [KnDriver_KatgA      ] fr_docTTN.KnDriver_KatgA;     // ТТН_Водитель_КатA
    [KnDriver_KatgB      ] fr_docTTN.KnDriver_KatgB;     // ТТН_Водитель_КатB
    [KnDriver_KatgC      ] fr_docTTN.KnDriver_KatgC;     // ТТН_Водитель_КатC
    [KnDriver_KatgD      ] fr_docTTN.KnDriver_KatgD;     // ТТН_Водитель_КатD
    [KnDriver_KatgE      ] fr_docTTN.KnDriver_KatgE;     // ТТН_Водитель_КатE
    [KnDriver_StagVd     ] fr_docTTN.KnDriver_StagVd;    // ТТН_Водитель_Стаж
    [KnDriver_Nudov      ] fr_docTTN.KnDriver_Nudov;     // ТТН_Водитель_НомерУдост
    [KnForwarder_TABN    ] fr_docTTN.KnForwarder_TABN;   // ТТН_Экспедитор_Табель
    [KnForwarder_Name    ] fr_docTTN.KnForwarder_Name;   // ТТН_Экспедитор_Имя
    [KnForwarder_Klassv  ] fr_docTTN.KnForwarder_Klassv; // ТТН_Экспедитор_Класс
    [KnForwarder_KatgA   ] fr_docTTN.KnForwarder_KatgA;  // ТТН_Экспедитор_КатA
    [KnForwarder_KatgB   ] fr_docTTN.KnForwarder_KatgB;  // ТТН_Экспедитор_КатB
    [KnForwarder_KatgC   ] fr_docTTN.KnForwarder_KatgC;  // ТТН_Экспедитор_КатC
    [KnForwarder_KatgD   ] fr_docTTN.KnForwarder_KatgD;  // ТТН_Экспедитор_КатD
    [KnForwarder_KatgE   ] fr_docTTN.KnForwarder_KatgE;  // ТТН_Экспедитор_КатE
    [KnForwarder_StagVd  ] fr_docTTN.KnForwarder_StagVd; // ТТН_Экспедитор_Стаж
    [KnForwarder_Nudov   ] fr_docTTN.KnForwarder_Nudov;  // ТТН_Экспедитор_НомерУдост
    [Transp_Nomer        ] fr_docTTN.Transp_Nomer;       // ТТН_Авто_Номер
    [Transp_Marka        ] fr_docTTN.Transp_Marka;       // ТТН_Авто_Марка
    [Transp_Volume       ] fr_docTTN.Transp_Volume;      // ТТН_Авто_ОбъемЦ
    [Transp_Passport     ] fr_docTTN.Transp_Passport;    // ТТН_Авто_НомерТС
    [Transp_nPassp       ] fr_docTTN.Transp_nPassp;      // ТТН_Авто_НомерЦ
    [Transp_INNUM        ] fr_docTTN.Transp_INNUM;       // ТТН_Авто_ИнвНомер
    [Transp_Godv         ] fr_docTTN.Transp_Godv;        // ТТН_Авто_ДатаВыпуска
    [Transp_GarNom       ] fr_docTTN.Transp_GarNom;      // ТТН_Авто_НомерГараж
    [Transp_Nomdvig      ] fr_docTTN.Transp_Nomdvig;     // ТТН_Авто_НомерДвигатель
    [Transp_Nomchas      ] fr_docTTN.Transp_Nomchas;     // ТТН_Авто_НомерШасси
    [Transp_ForceLs      ] fr_docTTN.Transp_ForceLs;     // ТТН_Авто_МощностьЛС
    [Transp_NomKuz       ] fr_docTTN.Transp_NomKuz;      // ТТН_Авто_НомерКузов
    [Transp_GruzPod      ] fr_docTTN.Transp_GruzPod;     // ТТН_Авто_Груз
    [Transp_Weight       ] fr_docTTN.Transp_Weight;      // ТТН_Авто_Вес
    [Transp1_Nomer       ] fr_docTTN.Transp1_Nomer;      // ТТН_Прицеп1_Номер
    [Transp1_Marka       ] fr_docTTN.Transp1_Marka;      // ТТН_Прицеп1_Марка
    [Transp1_Volume      ] fr_docTTN.Transp1_Volume;     // ТТН_Прицеп1_ОбъемЦ
    [Transp1_Passport    ] fr_docTTN.Transp1_Passport;   // ТТН_Прицеп1_НомерТС
    [Transp1_nPassp      ] fr_docTTN.Transp1_nPassp;     // ТТН_Прицеп1_НомерЦ
    [Transp1_INNUM       ] fr_docTTN.Transp1_INNUM;      // ТТН_Прицеп1_ИнвНомер
    [Transp1_Godv        ] fr_docTTN.Transp1_Godv;       // ТТН_Прицеп1_ДатаВыпуска
    [Transp1_GarNom      ] fr_docTTN.Transp1_GarNom;     // ТТН_Прицеп1_НомерГараж
    [Transp1_Nomdvig     ] fr_docTTN.Transp1_Nomdvig;    // ТТН_Прицеп1_НомерДвигатель
    [Transp1_Nomchas     ] fr_docTTN.Transp1_Nomchas;    // ТТН_Прицеп1_НомерШасси
    [Transp1_ForceLs     ] fr_docTTN.Transp1_ForceLs;    // ТТН_Прицеп1_МощностьЛС
    [Transp1_NomKuz      ] fr_docTTN.Transp1_NomKuz;     // ТТН_Прицеп1_НомерКузов
    [Transp1_GruzPod     ] fr_docTTN.Transp1_GruzPod;    // ТТН_Прицеп1_Груз
    [Transp1_Weight      ] fr_docTTN.Transp1_Weight;     // ТТН_Прицеп1_Вес
    [Transp2_Nomer       ] fr_docTTN.Transp2_Nomer;      // ТТН_Прицеп2_Номер
    [Transp2_Marka       ] fr_docTTN.Transp2_Marka;      // ТТН_Прицеп2_Марка
    [Transp2_Volume      ] fr_docTTN.Transp2_Volume;     // ТТН_Прицеп2_ОбъемЦ
    [Transp2_Passport    ] fr_docTTN.Transp2_Passport;   // ТТН_Прицеп2_НомерТС
    [Transp2_nPassp      ] fr_docTTN.Transp2_nPassp;     // ТТН_Прицеп2_НомерЦ
    [Transp2_INNUM       ] fr_docTTN.Transp2_INNUM;      // ТТН_Прицеп2_ИнвНомер
    [Transp2_Godv        ] fr_docTTN.Transp2_Godv;       // ТТН_Прицеп2_ДатаВыпуска
    [Transp2_GarNom      ] fr_docTTN.Transp2_GarNom;     // ТТН_Прицеп2_НомерГараж
    [Transp2_Nomdvig     ] fr_docTTN.Transp2_Nomdvig;    // ТТН_Прицеп2_НомерДвигатель
    [Transp2_Nomchas     ] fr_docTTN.Transp2_Nomchas;    // ТТН_Прицеп2_НомерШасси
    [Transp2_ForceLs     ] fr_docTTN.Transp2_ForceLs;    // ТТН_Прицеп2_МощностьЛС
    [Transp2_NomKuz      ] fr_docTTN.Transp2_NomKuz;     // ТТН_Прицеп2_НомерКузов
    [Transp2_GruzPod     ] fr_docTTN.Transp2_GruzPod;    // ТТН_Прицеп2_Груз
    [Transp2_Weight      ] fr_docTTN.Transp2_Weight;     // ТТН_Прицеп2_Вес
    [Transp3_Nomer       ] fr_docTTN.Transp3_Nomer;      // ТТН_Прицеп3_Номер
    [Transp3_Marka       ] fr_docTTN.Transp3_Marka;      // ТТН_Прицеп3_Марка
    [Transp3_Volume      ] fr_docTTN.Transp3_Volume;     // ТТН_Прицеп3_ОбъемЦ
    [Transp3_Passport    ] fr_docTTN.Transp3_Passport;   // ТТН_Прицеп3_НомерТС
    [Transp3_nPassp      ] fr_docTTN.Transp3_nPassp;     // ТТН_Прицеп3_НомерЦ
    [Transp3_INNUM       ] fr_docTTN.Transp3_INNUM;      // ТТН_Прицеп3_ИнвНомер
    [Transp3_Godv        ] fr_docTTN.Transp3_Godv;       // ТТН_Прицеп3_ДатаВыпуска
    [Transp3_GarNom      ] fr_docTTN.Transp3_GarNom;     // ТТН_Прицеп3_НомерГараж
    [Transp3_Nomdvig     ] fr_docTTN.Transp3_Nomdvig;    // ТТН_Прицеп3_НомерДвигатель
    [Transp3_Nomchas     ] fr_docTTN.Transp3_Nomchas;    // ТТН_Прицеп3_НомерШасси
    [Transp3_ForceLs     ] fr_docTTN.Transp3_ForceLs;    // ТТН_Прицеп3_МощностьЛС
    [Transp3_NomKuz      ] fr_docTTN.Transp3_NomKuz;     // ТТН_Прицеп3_НомерКузов
    [Transp3_GruzPod     ] fr_docTTN.Transp3_GruzPod;    // ТТН_Прицеп3_Груз
    [Transp3_Weight      ] fr_docTTN.Transp3_Weight;     // ТТН_Прицеп3_Вес

    [TTN_pricep1         ] fr_docTTN.Transp1_Marka;      // ТТН_Прицеп1_Марка
    [TTN_pricep1_nom     ] fr_docTTN.Transp1_Nomer;      // ТТН_Прицеп1_Номер
    [TTN_pricep1_garnom  ] fr_docTTN.Transp1_GarNom;     // ТТН_Прицеп1_НомерГараж
    [TTN_pricep2         ] fr_docTTN.Transp2_Marka;      // ТТН_Прицеп2_Марка
    [TTN_pricep2_nom     ] fr_docTTN.Transp2_Nomer;      // ТТН_Прицеп2_Номер
    [TTN_pricep2_garnom  ] fr_docTTN.Transp2_GarNom;     // ТТН_Прицеп2_НомерГараж
! Поля для форм ТТН-1 и ТН-2
    [Trailer            ] oPrnSoprFun.GetTrailer(fr_docTTN.Transp1_Nomer, fr_docTTN.Transp1_Marka, fr_docTTN.Transp1_GarNom,
                                                  fr_docTTN.Transp2_Nomer, fr_docTTN.Transp2_Marka, fr_docTTN.Transp2_GarNom);

    [PunktRFields       ] oPrnSoprFun.GetPunktFields(fr_docTTN.PunktRName, fr_docTTN.PunktRCountryName,
                                                         fr_docTTN.PunktRSityName, fr_docTTN.PunktRAddr);
    [PunktPFields       ] oPrnSoprFun.GetPunktFields(fr_docTTN.PunktPName, fr_docTTN.PunktPCountryName,
                                                         fr_docTTN.PunktPSityName, fr_docTTN.PunktPAddr);

    [TTN_pogr_dbeg       ] oPrnSoprFun.GetDateInF(fr_docTTN.PunktPDateIn);
    [TTN_pogr_tbeg       ] oPrnSoprFun.GetTimeInF(fr_docTTN.PunktPTimeIn);
    [TTN_pogr_dend       ] oPrnSoprFun.GetDateInF(fr_docTTN.PunktPDateOut);
    [TTN_pogr_tend       ] oPrnSoprFun.GetTimeInF(fr_docTTN.PunktPTimeOut);
    [TTN_pogr_tDopOp     ] oPrnSoprFun.GetTimeInF(fr_docTTN.PunktPDopTime);
! для приложения- 4 стоимость услуг по транспортировке с валютой
    [TTN_stoim_transp    ] oPrnSoprFun.GetStTransp(fr_dochead.KatSoprNRec);
  )
  ;



  Table post // Поставщик
  (
    [name            ] post.KatOrg_Name;       // организация
    [kod             ] post.KatOrg_TipOrg;     // организацияКод
    [addr            ] post.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] post.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] post.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] post.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] post.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] post.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] post.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] post.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] post.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] post.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] post.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] post.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] post.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] post.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] post.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] post.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] post.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] post.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] post.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] post.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] post.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] post.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] post.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] post.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] post.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] post.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] post.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] post.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] post.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] post.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] post.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] post.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] post.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] post.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] post.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] post.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] post.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 0);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 0, 0);
    [OrgTTNBelAddr   ] oPrnSoprFun.GetOrgTTNBelAddr(post.KatOrg_Name, post.KatOrg_Addr, '', '', '', '', 0);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (post.KatState_KOD, post.KatOrg_Name, post.KatOrg_UNN, post.KatOrg_Addr, post.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (post.KatState_KOD, post.KatOrg_Name, post.KatOrg_UNN, post.KatOrg_Addr, post.KatOrg_UrAddr, post.KatOrg_TEL);
    [OrgFields12     ] oPrnSoprFun.GetOrgFields12(fr_dochead.KatSoprNRec, post.KatOrg_Name, post.KatOrg_UNN, post.KatOrg_KODPLAT, post.KatOrg_Addr, post.KatOrg_UrAddr, post.KatOrg_TEL, 3);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(post.KatState_KOD, post.KatB_Name  , post.KatB_Schet1, post.KatB_MFO1, post.KatB_Schet2, post.KatB_MFO2);

  )
  ;

  Table grotp //Грузоотправитель
  (
    [name            ] grotp.KatOrg_Name;       // организация
    [kod             ] grotp.KatOrg_TipOrg;     // организацияКод
    [addr            ] grotp.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] grotp.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] grotp.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] grotp.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] grotp.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] grotp.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] grotp.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] grotp.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] grotp.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] grotp.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] grotp.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] grotp.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] grotp.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] grotp.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] grotp.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] grotp.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] grotp.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] grotp.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] grotp.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] grotp.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] grotp.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] grotp.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] grotp.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] grotp.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] grotp.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] grotp.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] grotp.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] grotp.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] grotp.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] grotp.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] grotp.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] grotp.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] grotp.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] grotp.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] grotp.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] grotp.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] grotp.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 1);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 1, 0);
    [OrgTTNBelAddr   ] oPrnSoprFun.TTNBelAddr(fr_dochead.KatSoprNRec, grotp.KatOrg_Name, grotp.KatOrg_UrAddr, grotp.KatOrg_Addr, '', '', '', '', 0, 1);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (grotp.KatState_KOD, grotp.KatOrg_Name, grotp.KatOrg_UNN, grotp.KatOrg_Addr, grotp.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (grotp.KatState_KOD, grotp.KatOrg_Name, grotp.KatOrg_UNN, grotp.KatOrg_Addr, grotp.KatOrg_UrAddr, grotp.KatOrg_TEL);
    [OrgFields12     ] oPrnSoprFun.GetOrgFields12(fr_dochead.KatSoprNRec, grotp.KatOrg_Name, grotp.KatOrg_UNN, grotp.KatOrg_KODPLAT, grotp.KatOrg_Addr, grotp.KatOrg_UrAddr, grotp.KatOrg_TEL, 1);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(grotp.KatState_KOD, grotp.KatB_Name  , grotp.KatB_Schet1, grotp.KatB_MFO1, grotp.KatB_Schet2, grotp.KatB_MFO2);
  )
  ;


  Table grpol  //Грузополучатель
  (
    [name            ] grpol.KatOrg_Name;       // организация
    [kod             ] grpol.KatOrg_TipOrg;     // организацияКод
    [addr            ] if ( boGetTune('Doc.SD.PrnNakl.AdrPunktRazgr'), if(fr_docTTN.PunktRAddr='' or fr_docTTN.PunktRName='', grpol.KatOrg_Addr, fr_docTTN.PunktRAddr), grpol.KatOrg_Addr);       // организация_Адрес
    [OKPO            ] grpol.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] grpol.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] grpol.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] grpol.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] grpol.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] grpol.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] grpol.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] grpol.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] grpol.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] grpol.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] grpol.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] grpol.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] grpol.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] grpol.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] grpol.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] grpol.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] grpol.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] grpol.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] grpol.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] grpol.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] grpol.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] grpol.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] grpol.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] grpol.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] grpol.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] grpol.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] grpol.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] grpol.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] grpol.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] grpol.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] grpol.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] grpol.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] grpol.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] grpol.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] grpol.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] grpol.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 2);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 2, 0);
    [OrgTTNBelAddr   ] oPrnSoprFun.TTNBelAddr(fr_dochead.KatSoprNRec, grpol.KatOrg_Name, grpol.KatOrg_UrAddr, grpol.KatOrg_Addr, '', '', '', '', 0, 2);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (grpol.KatState_KOD, grpol.KatOrg_Name, grpol.KatOrg_UNN, if ( boGetTune('Doc.SD.PrnNakl.AdrPunktRazgr'), if(fr_docTTN.PunktRAddr='' or fr_docTTN.PunktRName='', grpol.KatOrg_Addr, fr_docTTN.PunktRAddr), grpol.KatOrg_Addr), grpol.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (grpol.KatState_KOD, grpol.KatOrg_Name, grpol.KatOrg_UNN, grpol.KatOrg_Addr, grpol.KatOrg_UrAddr, grpol.KatOrg_TEL);
    [OrgFields12     ] oPrnSoprFun.GetOrgFields12(fr_dochead.KatSoprNRec, grpol.KatOrg_Name, grpol.KatOrg_UNN, grpol.KatOrg_KODPLAT, if ( boGetTune('Doc.SD.PrnNakl.AdrPunktRazgr'), if(fr_docTTN.PunktRAddr='' or fr_docTTN.PunktRName='', grpol.KatOrg_Addr, fr_docTTN.PunktRAddr), grpol.KatOrg_Addr), grpol.KatOrg_UrAddr, grpol.KatOrg_TEL, 2);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(grpol.KatState_KOD, grpol.KatB_Name  , grpol.KatB_Schet1, grpol.KatB_MFO1, grpol.KatB_Schet2, grpol.KatB_MFO2);
    [OrgAddr         ] oPrnSoprFun.GetAddr(fr_docTTN.PunktRAddr, fr_docTTN.PunktRName, grpol.KatOrg_Addr);
  )
  ;


  Table poluch // Получатель
  (
    [name            ] poluch.KatOrg_Name;       // организация
    [kod             ] poluch.KatOrg_TipOrg;     // организацияКод
    [addr            ] poluch.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] poluch.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] poluch.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] poluch.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] poluch.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] poluch.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] poluch.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] poluch.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] poluch.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] poluch.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] poluch.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] poluch.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] poluch.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] poluch.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] poluch.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] poluch.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] poluch.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] poluch.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] poluch.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] poluch.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] poluch.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] poluch.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] poluch.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] poluch.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] poluch.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] poluch.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] poluch.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] poluch.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] poluch.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] poluch.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] poluch.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] poluch.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] poluch.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] poluch.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] poluch.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] poluch.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] poluch.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 3);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 3, 0);
    [OrgTTNBelAddr   ] oPrnSoprFun.GetOrgTTNBelAddr(poluch.KatOrg_Name, poluch.KatOrg_Addr, '', '', '', '', 0);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (poluch.KatState_KOD, poluch.KatOrg_Name, poluch.KatOrg_UNN, poluch.KatOrg_Addr, poluch.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (poluch.KatState_KOD, poluch.KatOrg_Name, poluch.KatOrg_UNN, poluch.KatOrg_Addr, poluch.KatOrg_UrAddr, poluch.KatOrg_TEL);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(poluch.KatState_KOD, poluch.KatB_Name  , poluch.KatB_Schet1, poluch.KatB_MFO1, poluch.KatB_Schet2, poluch.KatB_MFO2);
  )
  ;


  Table platel //Плательщик
  (
    [name            ] platel.KatOrg_Name;       // организация
    [kod             ] platel.KatOrg_TipOrg;     // организацияКод
    [addr            ] platel.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] platel.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] platel.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] platel.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] platel.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] platel.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] platel.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] platel.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] platel.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] platel.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] platel.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] platel.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] platel.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] platel.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] platel.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] platel.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] platel.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] platel.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] platel.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] platel.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] platel.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] platel.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] platel.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] platel.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] platel.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] platel.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] platel.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] platel.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] platel.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] platel.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] platel.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] platel.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] platel.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] platel.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] platel.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] platel.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] platel.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 4);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 4, 0);
    [OrgTTNBelAddr   ] oPrnSoprFun.GetOrgTTNBelAddr(platel.KatOrg_Name, platel.KatOrg_Addr, '', '', '', '', 0);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (platel.KatState_KOD, platel.KatOrg_Name, platel.KatOrg_UNN, platel.KatOrg_Addr, platel.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (platel.KatState_KOD, platel.KatOrg_Name, platel.KatOrg_UNN, platel.KatOrg_Addr, platel.KatOrg_UrAddr, platel.KatOrg_TEL);
    [OrgFields12     ] oPrnSoprFun.GetOrgFields12(fr_dochead.KatSoprNRec, platel.KatOrg_Name, platel.KatOrg_UNN, platel.KatOrg_KODPLAT, platel.KatOrg_Addr, platel.KatOrg_UrAddr, platel.KatOrg_TEL, 3);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(platel.KatState_KOD, platel.KatB_Name  , platel.KatB_Schet1, platel.KatB_MFO1, platel.KatB_Schet2, platel.KatB_MFO2);
  )
  ;


  Table ZakPlat //Заказчик платежа
  (
    [name            ] ZakPlat.KatOrg_Name;       // организация
    [kod             ] ZakPlat.KatOrg_TipOrg;     // организацияКод
    [addr            ] ZakPlat.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] ZakPlat.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] ZakPlat.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] ZakPlat.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] ZakPlat.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] ZakPlat.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] ZakPlat.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] ZakPlat.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] ZakPlat.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] ZakPlat.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] ZakPlat.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] ZakPlat.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] ZakPlat.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] ZakPlat.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] ZakPlat.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] ZakPlat.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] ZakPlat.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] ZakPlat.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] ZakPlat.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] ZakPlat.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] ZakPlat.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] ZakPlat.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] ZakPlat.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] ZakPlat.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] ZakPlat.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] ZakPlat.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] ZakPlat.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] ZakPlat.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] ZakPlat.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] ZakPlat.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] ZakPlat.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] ZakPlat.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] ZakPlat.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] ZakPlat.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] ZakPlat.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] ZakPlat.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] ZakPlat.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 5);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 5, 0);
    [OrgTTNBelAddr   ] oPrnSoprFun.TTNBelAddr(fr_dochead.KatSoprNRec, ZakPlat.KatOrg_Name, ZakPlat.KatOrg_UrAddr, ZakPlat.KatOrg_Addr, '', '', '', '', 0, 5);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (ZakPlat.KatState_KOD, ZakPlat.KatOrg_Name, ZakPlat.KatOrg_UNN, ZakPlat.KatOrg_Addr, ZakPlat.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (ZakPlat.KatState_KOD, ZakPlat.KatOrg_Name, ZakPlat.KatOrg_UNN, ZakPlat.KatOrg_Addr, ZakPlat.KatOrg_UrAddr, ZakPlat.KatOrg_TEL);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(ZakPlat.KatState_KOD, ZakPlat.KatB_Name  , ZakPlat.KatB_Schet1, ZakPlat.KatB_MFO1, ZakPlat.KatB_Schet2, ZakPlat.KatB_MFO2);
  )
  ;


  Table avtopr //Автопредприятие
  (
    [name            ] avtopr.KatOrg_Name;       // организация
    [kod             ] avtopr.KatOrg_TipOrg;     // организацияКод
    [addr            ] avtopr.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] avtopr.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] avtopr.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] avtopr.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] avtopr.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] avtopr.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] avtopr.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] avtopr.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] avtopr.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] avtopr.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] avtopr.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] avtopr.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] avtopr.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] avtopr.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] avtopr.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] avtopr.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] avtopr.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] avtopr.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] avtopr.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] avtopr.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] avtopr.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] avtopr.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] avtopr.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] avtopr.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] avtopr.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] avtopr.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] avtopr.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] avtopr.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] avtopr.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] avtopr.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] avtopr.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] avtopr.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] avtopr.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] avtopr.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] avtopr.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] avtopr.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] avtopr.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [CodeRwy         ] oPrnSoprFun.WriteCodeRwy  (fr_dochead.KatSoprNRec, 7);
    [OrgName         ] oPrnSoprFun.GetOrgFullName(fr_dochead.KatSoprNRec, 7, 0);
    [OrgUrAddr       ] oPrnSoprFun.WriteAvtoPrJurAddr(fr_dochead.KatSoprNRec);
    [OrgTTNBelAddr   ] oPrnSoprFun.GetOrgTTNBelAddr(avtopr.KatOrg_Name, avtopr.KatOrg_Addr, '', '', '', '', 0);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (avtopr.KatState_KOD, avtopr.KatOrg_Name, avtopr.KatOrg_UNN, avtopr.KatOrg_Addr, avtopr.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (avtopr.KatState_KOD, avtopr.KatOrg_Name, avtopr.KatOrg_UNN, avtopr.KatOrg_Addr, avtopr.KatOrg_UrAddr, avtopr.KatOrg_TEL);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(avtopr.KatState_KOD, avtopr.KatB_Name  , avtopr.KatB_Schet1, avtopr.KatB_MFO1, avtopr.KatB_Schet2, avtopr.KatB_MFO2);
  )
  ;

  Table punktR //Пункт разгрузки
  (
    [name            ] punktR.KatOrg_Name;       // организация
    [kod             ] punktR.KatOrg_TipOrg;     // организацияКод
    [addr            ] punktR.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] punktR.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] punktR.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] punktR.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] punktR.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] punktR.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] punktR.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] punktR.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] punktR.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] punktR.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] punktR.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] punktR.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] punktR.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] punktR.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] punktR.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] punktR.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] punktR.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] punktR.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] punktR.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] punktR.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] punktR.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] punktR.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] punktR.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] punktR.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] punktR.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] punktR.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] punktR.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] punktR.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] punktR.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] punktR.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] punktR.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] punktR.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] punktR.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] punktR.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] punktR.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] punktR.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] punktR.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [OrgTTNBelAddr   ] oPrnSoprFun.GetOrgTTNBelAddr(punktR.KatOrg_Name, punktR.KatOrg_Addr, '', '', '', '', 0);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (punktR.KatState_KOD, punktR.KatOrg_Name, punktR.KatOrg_UNN, punktR.KatOrg_Addr, punktR.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (punktR.KatState_KOD, punktR.KatOrg_Name, punktR.KatOrg_UNN, punktR.KatOrg_Addr, punktR.KatOrg_UrAddr, punktR.KatOrg_TEL);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(punktR.KatState_KOD, punktR.KatB_Name  , punktR.KatB_Schet1, punktR.KatB_MFO1, punktR.KatB_Schet2, punktR.KatB_MFO2);
  )
  ;


  Table punktP //Пункт погрузки
  (
    [name            ] punktP.KatOrg_Name;       // организация
    [kod             ] punktP.KatOrg_TipOrg;     // организацияКод
    [addr            ] punktP.KatOrg_Addr;       // организация_Адрес
    [OKPO            ] punktP.KatOrg_OKPO;       // организация_ОКПО
    [OKONH           ] punktP.KatOrg_OKONH;      // организация_ОКОНХ
    [tel             ] punktP.KatOrg_TEL;        // организация_ТЕЛ
    [KatOrg_CONTAKT  ] punktP.KatOrg_CONTAKT;    // организация_КонтИнф
    [KatOrg_EMAIL    ] punktP.KatOrg_EMAIL;      // организация_Email
    [PodrInfo_OKATO  ] punktP.KatOrg_OKATO;      // организация_OKATO
    [PodrInfo_KBK    ] punktP.KatOrg_KBK;        // организация_KBK
    [PodrInfo_OGRN   ] punktP.KatOrg_OGRN;       // организация_OGRN
    [PodrInfo_REGNO  ] punktP.KatOrg_REGNO;      // организация_РегНом_в_ПФ
    [PodrInfo_POlE3  ] punktP.KatOrg_REGNOS;     // организация_РегНом_Страхователя
    [PodrInfo_INSNA  ] punktP.KatOrg_INSNA;      // организация_Орган_Исполн_Власти
    [FormSobs_Name   ] punktP.FormSobs_Name;     // организация_Форма_Собственности
    [FormSobs_VidD   ] punktP.FormSobs_VidD;     // организация_Вид_Деятельности
    [country_kod     ] punktP.KatState_KOD;      // организация_СТАРАНА_КОД
    [country_name    ] punktP.KatState_Name;     // организация_СТРАНА_ИМЯ
    [country_nal     ] punktP.KatState_IsNal;    // организация_СТРАНА_НАЛОГИ
    [town_kod        ] punktP.KatCity_KOD;       // организация_ГОРОД_КОД
    [town_name       ] punktP.KatCity_Name;      // организация_ГОРОД_ИМЯ
    [town_tel        ] punktP.KatCity_TEL;       // организация_ГОРОД_ТЕЛ
    [CntTown_kod     ] punktP.KatStateS_KOD;     // организация_ГОРОД_СТРАНА_КОД
    [CntTown_name    ] punktP.KatStateS_Name;    // организация_ГОРОД_СТРАНА_ИМЯ
    [KatStateS_IsNal ] punktP.KatStateS_IsNal;   // организация_ГОРОД_СТРАНА_НАЛОГИ
    [corp            ] punktP.KatOrg_CorpoIn;    // организация_КОРПОРАЦИЯ
    [UNN             ] punktP.KatOrg_UNN;        // организацияУНН
    [KatOrg_KODPLAT  ] punktP.KatOrg_KODPLAT;    // организацияКПП
    [bank_name       ] punktP.KatB_Name;         // организация_БАНК_Имя
    [bank_coment     ] punktP.KatB_Remark;       // организация_БАНК_Коментарий
    [bank_addr       ] punktP.KatB_Addr;         // организация_БАНК_Адрес
    [bank_mfo        ] punktP.KatB_MFO1;         // организация_БАНК_Мфо
    [bank_rkc        ] punktP.KatB_MFO2;         // организация_БАНК_Ркц
    [bank_sch        ] punktP.KatB_Schet1;       // организация_БАНК_Счет
    [bank_schRkc     ] punktP.KatB_Schet2;       // организация_БАНК_Счет_Ркц
    [bank_schPlat    ] punktP.KatB_Schet3;       // организация_БАНК_Счет_Плат
    [bank_schTip     ] punktP.KatB_TipSchet;     // организация_БАНК_Тип_Счета
    [bank_schVid     ] punktP.KatB_Aktiv;        // организация_БАНК_Вид_Счета
    [ur_addr         ] punktP.KatOrg_UrAddr;     // организация_ЮрАдрес
! Поля для форм ТТН-1 и ТН-2
! Поле OrgName для вывода наименования
    [OrgTTNBelAddr   ] oPrnSoprFun.GetOrgTTNBelAddr(punktP.KatOrg_Name, punktP.KatOrg_Addr, '', '', '', '', 0);
    [OrgFields       ] oPrnSoprFun.GetOrgFields    (punktP.KatState_KOD, punktP.KatOrg_Name, punktP.KatOrg_UNN, punktP.KatOrg_Addr, punktP.KatOrg_TEL);
    [OrgFieldsUr     ] oPrnSoprFun.GetOrgFieldsUr  (punktP.KatState_KOD, punktP.KatOrg_Name, punktP.KatOrg_UNN, punktP.KatOrg_Addr, punktP.KatOrg_UrAddr, punktP.KatOrg_TEL);
    [OrgFieldsBank   ] oPrnSoprFun.GetOrgFieldsBank(punktP.KatState_KOD, punktP.KatB_Name  , punktP.KatB_Schet1, punktP.KatB_MFO1, punktP.KatB_Schet2, punktP.KatB_MFO2);
  )
  ;

  Table ExtAttrKatSopr// Атрибуты KatSopr
  (
    [AttrVal1        ] ExtAttrKatSopr.AttrVal[1]; // атр1_нак
    [AttrVal2        ] ExtAttrKatSopr.AttrVal[2]; // атр2_нак
    [AttrVal3        ] ExtAttrKatSopr.AttrVal[3]; // атр3_нак
    [AttrVal4        ] ExtAttrKatSopr.AttrVal[4]; // атр4_нак
    [AttrVal5        ] ExtAttrKatSopr.AttrVal[5]; // атр5_нак
    [AttrVal6        ] ExtAttrKatSopr.AttrVal[6]; // атр6_нак
    [AttrVal7        ] ExtAttrKatSopr.AttrVal[7]; // атр7_нак
    [AttrVal8        ] ExtAttrKatSopr.AttrVal[8]; // атр8_нак
    [AttrVal9        ] ExtAttrKatSopr.AttrVal[9]; // атр9_нак
    [AttrVal10       ] ExtAttrKatSopr.AttrVal[10];// атр10_нак
  )
  ;

  Table ExtAttrKatOrg// Атрибуты KatOrg
  (
    [AttrVal1        ] ExtAttrKatOrg.AttrVal[1];  // атр1_пол
    [AttrVal2        ] ExtAttrKatOrg.AttrVal[2];  // атр2_пол
    [AttrVal3        ] ExtAttrKatOrg.AttrVal[3];  // атр3_пол
    [AttrVal4        ] ExtAttrKatOrg.AttrVal[4];  // атр4_пол
    [AttrVal5        ] ExtAttrKatOrg.AttrVal[5];  // атр5_пол
    [AttrVal6        ] ExtAttrKatOrg.AttrVal[6];  // атр6_пол
    [AttrVal7        ] ExtAttrKatOrg.AttrVal[7];  // атр7_пол
    [AttrVal8        ] ExtAttrKatOrg.AttrVal[8];  // атр8_пол
    [AttrVal9        ] ExtAttrKatOrg.AttrVal[9];  // атр9_пол
    [AttrVal10       ] ExtAttrKatOrg.AttrVal[10]; // атр10_пол
  )
  ;

  Table ExtAttrTTNDoc// Атрибуты TTNDoc
  (
    [AttrVal1        ] ExtAttrTTNDoc.AttrVal[1];  // атр1_тти
    [AttrVal2        ] ExtAttrTTNDoc.AttrVal[2];  // атр2_тти
    [AttrVal3        ] ExtAttrTTNDoc.AttrVal[3];  // атр3_тти
    [AttrVal4        ] ExtAttrTTNDoc.AttrVal[4];  // атр4_тти
    [AttrVal5        ] ExtAttrTTNDoc.AttrVal[5];  // атр5_тти
    [AttrVal6        ] ExtAttrTTNDoc.AttrVal[6];  // атр6_тти
    [AttrVal7        ] ExtAttrTTNDoc.AttrVal[7];  // атр7_тти
    [AttrVal8        ] ExtAttrTTNDoc.AttrVal[8];  // атр8_тти
    [AttrVal9        ] ExtAttrTTNDoc.AttrVal[9];  // атр9_тти
    [AttrVal10       ] ExtAttrTTNDoc.AttrVal[10]; // атр10_тти
  )
  ;

  Table ExtAttrSpSopr// Атрибуты SpSopr
  (
    [AttrVal1        ] ExtAttrSpSopr.AttrVal[1];  // атр1_спц
    [AttrVal2        ] ExtAttrSpSopr.AttrVal[2];  // атр2_спц
    [AttrVal3        ] ExtAttrSpSopr.AttrVal[3];  // атр3_спц
    [AttrVal4        ] ExtAttrSpSopr.AttrVal[4];  // атр4_спц
    [AttrVal5        ] ExtAttrSpSopr.AttrVal[5];  // атр5_спц
    [AttrVal6        ] ExtAttrSpSopr.AttrVal[6];  // атр6_спц
    [AttrVal7        ] ExtAttrSpSopr.AttrVal[7];  // атр7_спц
    [AttrVal8        ] ExtAttrSpSopr.AttrVal[8];  // атр8_спц
    [AttrVal9        ] ExtAttrSpSopr.AttrVal[9];  // атр9_спц
    [AttrVal10       ] ExtAttrSpSopr.AttrVal[10]; // атр10_спц
  )
  ;

  Table ExtAttrKatMC// Атрибуты KatMC
  (
    [AttrVal1        ] ExtAttrKatMC.AttrVal[1];   // атр1_МЦ
    [AttrVal2        ] ExtAttrKatMC.AttrVal[2];   // атр2_МЦ
    [AttrVal3        ] ExtAttrKatMC.AttrVal[3];   // атр3_МЦ
    [AttrVal4        ] ExtAttrKatMC.AttrVal[4];   // атр4_МЦ
    [AttrVal5        ] ExtAttrKatMC.AttrVal[5];   // атр5_МЦ
    [AttrVal6        ] ExtAttrKatMC.AttrVal[6];   // атр6_МЦ
    [AttrVal7        ] ExtAttrKatMC.AttrVal[7];   // атр7_МЦ
    [AttrVal8        ] ExtAttrKatMC.AttrVal[8];   // атр8_МЦ
    [AttrVal9        ] ExtAttrKatMC.AttrVal[9];   // атр9_МЦ
    [AttrVal10       ] ExtAttrKatMC.AttrVal[10];  // атр10_МЦ
  )
  ;

  Table ExtAttrKatParty// Атрибуты KatParty
  (
    [AttrVal1        ] ExtAttrKatParty.AttrVal[1];  // атр1_прт
    [AttrVal2        ] ExtAttrKatParty.AttrVal[2];  // атр2_прт
    [AttrVal3        ] ExtAttrKatParty.AttrVal[3];  // атр3_прт
    [AttrVal4        ] ExtAttrKatParty.AttrVal[4];  // атр4_прт
    [AttrVal5        ] ExtAttrKatParty.AttrVal[5];  // атр5_прт
    [AttrVal6        ] ExtAttrKatParty.AttrVal[6];  // атр6_прт
    [AttrVal7        ] ExtAttrKatParty.AttrVal[7];  // атр7_прт
    [AttrVal8        ] ExtAttrKatParty.AttrVal[8];  // атр8_прт
    [AttrVal9        ] ExtAttrKatParty.AttrVal[9];  // атр9_прт
    [AttrVal10       ] ExtAttrKatParty.AttrVal[10]; // атр10_прт
  )
  ;

  DataSet Signers
  (
    [FIO1 ] sFIO1;
    [Post1] sPost1;
    [FIO2 ] sFIO2;
    [Post2] sPost2;
    [FIO3 ] sFIO3;
    [Post3] sPost3;
    [FIO4 ] sFIO4;
    [Post4] sPost4;
    [FIO5 ] sFIO5;
    [Post5] sPost5;
    [FIO6 ] sFIO6;
    [Post6] sPost6;
  )
  ;
)

  handleEvent table fr_dochead
    cmPreProcess:
    {
      i := 0;
    }

    cmOnProcess:
    {
      oPrnSoprFun.InitForNakl(fr_dochead.bNalProd, fr_dochead.bFixGrMC);
    }

  end;

  handleEvent dataset Signers

    cmPreProcess:
    {
      SignersCount := 0;
    }

    cmOnProcess:
    {
      if (SignersCount++ = 0)
      {
        ContinueDataset;
        i++;
      }
    }

    cmOnClick:
    {
    /*
      Из формы на FR приходит событие - запрос на подписантов.
      ExprFieldValue содержит номер формы (wForm)
    */
      if not boGetTune('Doc.RunSign')
        Exit;

      var wForm : word;

      _noExcept wForm := word(ExprFieldValue);

      if ( wForm = 0 )
        Exit;

      var накладная_нрек: comp;

      накладная_нрек := fr_dochead.KatSoprNRec;

      sFIO1 := sPost1 := sFIO2 := sPost2 := '';
      sFIO3 := sPost3 := sFIO4 := sPost4 := '';
      sFIO5 := sPost5 := sFIO6 := sPost6 := '';

      if not boGetTune('Doc.RunSign')
        Exit;

      // запрашивать подписантов для ТОРГ-12 и УПД только для расходных документов
      case wForm of
        7, 8:
        {
          var oSDfuns: SDfuns;

          case oSDfuns.GetVidSopr(накладная_нрек) of
            101
          , 102
          , 103
          , 106
          , 108
          , 110
          , 111
          , 551, 552, 522, 523
          , 600..607
            :
              Exit;
          end;
        }
      end;

      var oGetPersSign: GetPersSign;

      oGetPersSign.ReadDSK(wForm);

      if (i>0)
       oGetPersSign.SetWasRun(wForm, True);

      if not oGetPersSign.GetWasRun(wForm)
      {
        oGetPersSign.SetWasRun(wForm, True);

        if (RunInterface('GetPersSign', wForm) <> cmDefault)
          Exit;
      }

      oGetPersSign.ReadDSK(wForm);

      if (oGetPersSign.Persons[1] <> 0) oPrnSoprFun.GetFIOPost(oGetPersSign.Persons[1], sFIO1, sPost1);
      if (oGetPersSign.Persons[2] <> 0) oPrnSoprFun.GetFIOPost(oGetPersSign.Persons[2], sFIO2, sPost2);
      if (oGetPersSign.Persons[3] <> 0) oPrnSoprFun.GetFIOPost(oGetPersSign.Persons[3], sFIO3, sPost3);
      if (oGetPersSign.Persons[4] <> 0) oPrnSoprFun.GetFIOPost(oGetPersSign.Persons[4], sFIO4, sPost4);
      if (oGetPersSign.Persons[5] <> 0) oPrnSoprFun.GetFIOPost(oGetPersSign.Persons[5], sFIO5, sPost5);
      if (oGetPersSign.Persons[6] <> 0) oPrnSoprFun.GetFIOPost(oGetPersSign.Persons[6], sFIO6, sPost6);

      case wForm of
        7, 8:
        {
          if (oGetPersSign.FeeSigners <> '')
          {
            var iFeeSigners : FeeSigners;
            var cGrPodp     : comp;

            case wForm of
              7: // подписанты для УПД
              {
                iFeeSigners.InitFeeSignersExt   (cgReport_7403, false, false);
                iFeeSigners.FindFeeSignersByName(cgReport_7403, oGetPersSign.FeeSigners);

                // Если установлена Группа
                if iFeeSigners.FeeSignersIsValid
                {
                  cGrPodp := iFeeSigners.GetFeeSigners;

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'За руководителя организации')
                  {
                    sFIO1  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sPost1 := iFeeSigners.GetSignerPosition(1);
                  }

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'За главного бухгалтера')
                  {
                    sFIO2  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sPost2 := iFeeSigners.GetSignerPosition(1);
                  }

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'Ответственный за правильность оформления факта хозяйственной жизни')
                  {
                    sFIO3  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sFIO3  := if(boolean(InStr(sFIO3, sFIO2)), iFeeSigners.GetSignerFIOEx(if(oGetPersSign.Params = 0, 1, 7), false), sFIO3);
                    sPost3 := iFeeSigners.GetSignerPosition(1);
                  }

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'Груз передал / услуги, результаты работ, права сдал')
                  {
                    sFIO4  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sFIO4  := if(boolean(InStr(sFIO4, sFIO2)), iFeeSigners.GetSignerFIOEx(if(oGetPersSign.Params = 0, 1, 7), false), sFIO4);
                    sPost4 := iFeeSigners.GetSignerPosition(1);
                  }
                }
              }
              8: // подписанты для ТОРГ-12
              {
                iFeeSigners.InitFeeSignersExt   (cgReport_7404, false, false);
                iFeeSigners.FindFeeSignersByName(cgReport_7404, oGetPersSign.FeeSigners);

                // Если установлена Группа
                if iFeeSigners.FeeSignersIsValid
                {
                  cGrPodp := iFeeSigners.GetFeeSigners;

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'За главного бухгалтера')
                  {
                    sFIO2  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sPost2 := iFeeSigners.GetSignerPosition(1);
                  }

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'Отпуск разрешил (отпуск груза разрешил)')
                  {
                    sFIO4  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sPost4 := iFeeSigners.GetSignerPosition(1);
                  }

                  if iFeeSigners.FindFeeSignersSubByName(cGrPodp, 'Сдал отправитель (отпуск груза произвел)')
                  {
                    sFIO5  := iFeeSigners.GetSignerFIO(if(oGetPersSign.Params = 0, 1, 7));
                    sPost5 := iFeeSigners.GetSignerPosition(1);
                  }
                }
              }
            end;
          }
        }
      end;
    }

  end;

end;
//******************************************************************************
