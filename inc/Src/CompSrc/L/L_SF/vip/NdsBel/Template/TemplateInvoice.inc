//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) корпорация Галактика
// Галактика 9.1
// Шаблоны ЭСЧФ
//------------------------------------------------------------------------------------------------------------
#ifndef _TemplateInvoice_inc_
#define _TemplateInvoice_inc_

const
// InUse
tp_User   = 0; // Пользовательский шаблон
tp_System = 1; // Системный шаблон
// Шаблон по умолчанию
de_None      = 0;
de_KatSopr   = 1; // тип документа
de_TipRecord = 2; // тип записи СФ
de_Direct    = 3; // направление СФ

// ResWord
ty_Const = 0;  // Константа
ty_Atrib = 1;  // Внешний атрибут
ty_Field = 2;  // Поле таблицы

// Dogovor
fd_Dogovor_dBeg         =  0; // Дата начала действия договора (Dogovor.dBeg)
fd_Dogovor_dDoc         =  1; // Дата заключения договора (Dogovor.dDoc)
fd_Dogovor_dEnd         =  2; // Дата окончания действия договора (Dogovor.dEnd)
fd_Dogovor_dInput       =  3; // Дата ввода документа (Dogovor.dInput)
fd_Dogovor_dRaschet     =  4; // Дата проведения взаимозачетов (Dogovor.dRaschet)
fd_Dogovor_dValCurse    =  5; // Дата курса валюты (Dogovor.dValCurse)
fd_Dogovor_NoDoc        =  6; // Номер документа <внутренний> (Dogovor.NoDoc)
fd_Dogovor_NoDoc_Ext    =  7; // Номер документа <внешний> (Dogovor.NoDoc_Ext)
fd_Dogovor_ShipAddTerms =  8; // Дополнительные условия отгрузки (Dogovor.ShipAddTerms)
fd_Dogovor_Name         =  9; // Пользовательское наименование (Dogovor.Name)
// KatSopr
fd_KatSopr_Name         = 20; // Наименование накладной (KatSopr.Name)
fd_KatSopr_dPrice       = 21; // Дата курса цен (KatSopr.dPrice)
fd_KatSopr_nDover       = 22; // Номер доверенности (KatSopr.nDover)
fd_KatSopr_dDover       = 23; // Дата доверенности (KatSopr.dDover)
fd_KatSopr_sDover       = 24; // Доверенное лицо (KatSopr.sDover)
fd_KatSopr_nVagon       = 25; // Номер ед.подв.состава (KatSopr.nVagon)
fd_KatSopr_nKvit        = 26; // Номер ж/д квитанции (KatSopr.nKvit)
fd_KatSopr_nSertif      = 27; // Сертификат качества (KatSopr.nSertif)
fd_KatSopr_dSopr        = 28; // Дата накладной (KatSopr.dSopr)
fd_KatSopr_NSopr        = 29; // Номер накладной (KatSopr.NSopr)
fd_KatSopr_dOpr         = 30; // Дата оприходования/списания (KatSopr.dOpr)
fd_KatSopr_SrokRes      = 31; // Срок, до которого установлен резерв (KatSopr.SrokRes)
fd_KatSopr_UserField    = 32; // Поле пользователя (KatSopr.UserField)
// BaseDoc
fd_BaseDoc_Name         = 41; // Наименование накладной (BaseDoc.Name)
fd_BaseDoc_dPrice       = 42; // Дата курса цен (BaseDoc.dPrice)
fd_BaseDoc_nDover       = 43; // Номер доверенности (BaseDoc.nDover)
fd_BaseDoc_dDover       = 44; // Дата доверенности (BaseDoc.dDover)
fd_BaseDoc_sDover       = 45; // Доверенное лицо (BaseDoc.sDover)
fd_BaseDoc_nVagon       = 46; // Номер ед.подв.состава (BaseDoc.nVagon)
fd_BaseDoc_nKvit        = 47; // Номер ж/д квитанции (BaseDoc.nKvit)
fd_BaseDoc_nSertif      = 48; // Сертификат качества (BaseDoc.nSertif)
fd_BaseDoc_NoDoc        = 49; // Номер документа (BaseDoc.NoDoc)
fd_BaseDoc_dValCurse    = 50; // Дата курса вал. по вал-руб ДО (BaseDoc.dValCurse)
fd_BaseDoc_dFrom        = 51; // Начало периода (BaseDoc.dFrom)
fd_BaseDoc_dTo          = 52; // Окончание периода (BaseDoc.dTo)
fd_BaseDoc_dCursePenya  = 53; // Дата курса расчета пени (BaseDoc.dCursePenya)
// KatSopr NalAkt
fd_NalAkt_Name          = 60; // Наименование накладной (KatSopr.Name)
fd_NalAkt_dPrice        = 61; // Дата курса цен (KatSopr.dPrice)
fd_NalAkt_nDover        = 62; // Номер доверенности (KatSopr.nDover)
fd_NalAkt_dDover        = 63; // Дата доверенности (KatSopr.dDover)
fd_NalAkt_sDover        = 64; // Доверенное лицо (KatSopr.sDover)
fd_NalAkt_nVagon        = 65; // Номер ед.подв.состава (KatSopr.nVagon)
fd_NalAkt_nKvit         = 66; // Номер ж/д квитанции (KatSopr.nKvit)
fd_NalAkt_nSertif       = 67; // Сертификат качества (KatSopr.nSertif)
fd_NalAkt_dSopr         = 68; // Дата накладной (KatSopr.dSopr)
fd_NalAkt_NSopr         = 69; // Номер накладной (KatSopr.NSopr)
fd_NalAkt_dOpr          = 70; // Дата оприходования/списания (KatSopr.dOpr)
fd_NalAkt_SrokRes       = 71; // Срок, до которого установлен резерв (KatSopr.SrokRes)
fd_NalAkt_UserField     = 72; // Поле пользователя (KatSopr.UserField)

end;

#endif // _TemplateInvoice_inc_
