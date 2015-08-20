//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Внешние функции работы с почтовым сервером по протоколу IMAP4
//------------------------------------------------------------------------------

Function MLLOGON(string, string, string, LongInt) : boolean; external 'MailManager.dll';
Function MLLOGOFF : boolean; external 'MailManager.dll';
Function MLCHECKMSG : boolean; external 'MailManager.dll';
Function MLGETMAIL(LongInt) : boolean; external 'MailManager.dll';
Function MLGETHMAIL(LongInt) : boolean; external 'MailManager.dll';
Function MLGETMAILHEADER : boolean; external 'MailManager.dll';
Function MLGETMAILBODY : boolean; external 'MailManager.dll';
Function MLSAVEATTACH(string) : boolean; external 'MailManager.dll';
Function MLGETMSGCOUNT : LongInt; external 'MailManager.dll';
Function MLGETNEWMSGCOUNT : LongInt; external 'MailManager.dll';
Function MLGETFIRSTNEWMSG : LongInt; external 'MailManager.dll';
Function MLGETMAILSUBJ : string; external 'MailManager.dll';
Function MLGETMAILDATE : string; external 'MailManager.dll';
Function MLGETMAILFROMADDR : string; external 'MailManager.dll';
Function MLGETMAILFROMNAME : string; external 'MailManager.dll';
Function MLGETATTACHCOUNT : LongInt; external 'MailManager.dll';
Function MLISMAILSEEN(LongInt) : boolean; external 'MailManager.dll';
Function MLGETFILENAMEBYNUM(LongInt): string; external 'MailManager.dll';
Function MLSAVEATTACHBYNUM(string, LongInt): boolean; external 'MailManager.dll';
Function MLSETMAILSEEN(LongInt): boolean; external 'MailManager.dll';
Function MLSETMAILUNSEEN(LongInt): boolean; external 'MailManager.dll';
Function MLFINDINBODY(string): boolean; external 'MailManager.dll';
