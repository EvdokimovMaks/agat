//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Внешние функции работы с почтовым сервером по протоколу SMTP
//------------------------------------------------------------------------------

Function MLINITSMTP : boolean; external 'MailManager.dll';
Function MLCONNECTSMTP(string, string, string, LongInt) : boolean; external 'MailManager.dll';
Function MLCREATEMAIL : boolean; external 'MailManager.dll';
Function MLSETUSERPROFILE(string) : boolean; external 'MailManager.dll';
Function MLSETRECIPIENT(string) : boolean; external 'MailManager.dll';
Function MLSETCOPYRECIPIENT(string) : boolean; external 'MailManager.dll';
Function MLSETSUBJECT(string) : boolean; external 'MailManager.dll';
Function MLADDMAILBODY(string) : boolean; external 'MailManager.dll';
Function MLADDATTACHMENT(string) : boolean; external 'MailManager.dll';
Function MLCLEARCREATEDMAIL : boolean; external 'MailManager.dll';
Function MLSETMAILFLAG(LongInt) : boolean; external 'MailManager.dll';
Function MLSENDMAIL : boolean; external 'MailManager.dll';
Function MLDONESMTP : boolean; external 'MailManager.dll';
