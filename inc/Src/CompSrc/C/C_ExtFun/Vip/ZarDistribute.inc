//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика ERP 9.1 - Заработная плата
// Описания внешних функций для диспетчера серверов расчета зарплаты
//------------------------------------------------------------------------------

// Сервер
procedure SetAutoregParam(string, word);                      external 'ZarDistribute.dll#SetAutoregParam';
function ZarServerStart(word, string): word;                  external 'ZarDistribute.dll#ZarServerStart';
function ZarServerStop: word;                                 external 'ZarDistribute.dll#ZarServerStop';
function GetZarQueueLen: longint;                             external 'ZarDistribute.dll#GetZarQueueLen';
function GetPayrollParam: longint;                            external 'ZarDistribute.dll#GetPayrollParam';
function GetRaznoskaBeg: string;                              external 'ZarDistribute.dll#GetRaznoskaBeg';
function GetRaznoskaEnd: string;                              external 'ZarDistribute.dll#GetRaznoskaEnd';
                                                             
// Клиент                                                    
function GetZarCompName: string;                              external 'ZarDistribute.dll#GetZarCompName';
function GetZarUserName: string;                              external 'ZarDistribute.dll#GetZarUserName';
function CallZarServer(string, word, string, string): word;   external 'ZarDistribute.dll#CallZarServer';
function GetLastResponse: string;                             external 'ZarDistribute.dll#GetLastResponse';

// Сервер автоматической регистрации
function GetStartedServCount: longint;                        external 'ZarDistribute.dll#GetStartedServCount';
function GetStartedServerName: string;                        external 'ZarDistribute.dll#GetStartedServerName';
function GetStartedServerDescr: string;                       external 'ZarDistribute.dll#GetStartedServerDescr';
function GetStartedServerPort: word;                          external 'ZarDistribute.dll#GetStartedServerPort';
