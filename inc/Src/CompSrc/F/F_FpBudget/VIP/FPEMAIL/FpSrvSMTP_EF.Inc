//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Внешние функции работы с почтовым сервером по протоколу SMTP
//------------------------------------------------------------------------------

function MLINITSMTP : boolean; external 'MailManager.dll';
function MLCONNECTSMTP(string, string, string, LongInt) : boolean; external 'MailManager.dll';
function MLCONNECTSMTPERR : string; external 'MailManager.dll';
function MLCREATEMAIL : boolean; external 'MailManager.dll';
function MLSETUSERPROFILE(string) : boolean; external 'MailManager.dll';
function MLSETRECIPIENT(string) : boolean; external 'MailManager.dll';
function MLSETCOPYRECIPIENT(string) : boolean; external 'MailManager.dll';
function MLSETSUBJECT(string) : boolean; external 'MailManager.dll';
function MLADDMAILBODY(string) : boolean; external 'MailManager.dll';
function MLADDATTACHMENT(string) : boolean; external 'MailManager.dll';
function MLCLEARCREATEDMAIL : boolean; external 'MailManager.dll';
function MLSETMAILFLAG(LongInt) : boolean; external 'MailManager.dll';
function MLSENDMAIL : boolean; external 'MailManager.dll';
function MLDONESMTP : boolean; external 'MailManager.dll';
