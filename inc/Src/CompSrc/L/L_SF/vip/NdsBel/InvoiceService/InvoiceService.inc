//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) корпорация Галактика
// Галактика 9.1
// Взаимодействие с веб-сервисом АИС "Учет счетов-фактур"
//------------------------------------------------------------------------------------------------------------
#ifndef _InvoiceService_inc_
#define _InvoiceService_inc_

Type
  TEStatusInfo = record
    refObj: TPtr;            // ссылка на объект
    NumInvoice: string;      // номер ЭСЧФ
    Verify: longint;         // проверка ЭЦП;
    Status: string;          // статус документа;
    Message: string;         // информационное сообщение о статусе документа;
    Since: string;           // дата начала действия статуса документа;
    BeginFileStatus: string; // сохранение статуса ЭСЧФ
  end;

  TETicket = record
    refObj: TPtr;            // ссылка на объект
    NumInvoice: string;      // номер ЭСЧФ
    Accepted: longint;       // проверка ЭЦП
    Message: string;         // информационное сообщение о статусе документа
  end;

  TEDocList = record
    refObj: TPtr;            // ссылка на объект
    Verify: longint;         // проверка ЭЦП; проверка ЭЦП;
    ToDate: _datetime;       // дата выполнения запроса поиска;
    lCount: longint;         // количество найденных документов;
  end;

  TEDocument = record
    refObj: TPtr;            // ссылка на объект
    NumInvoice: string;      // номер ЭСЧФ
    LoadFileName: string;    // загрузка ЭСЧФ
    SignCount: longint;      // получение количества ЭЦП в документе;
    VerifySign: longint;     // проверка ЭЦП документа.
    FileInvoice: string;     // сохранение ЭСЧФ
    FileInvoiceSign: string; // сохранение ЭСЧФ с ЭЦП
    SignDate: string;        // дата подписания ЭСЧФ
    SignName: string;        // наименования подписанта
    NotSign: boolean;        // документ не содержит ЭЦП
    FileXsd: string;         // путь к xsd-схеме
    FileTicket: string;      // входящая квитанция при отправке
    FirstSign: _datetime;    // дата первой подписи
  end;

#endif // _InvoiceService_inc_
