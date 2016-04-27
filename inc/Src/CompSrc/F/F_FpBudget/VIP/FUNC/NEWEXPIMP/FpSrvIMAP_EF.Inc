//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Внешние функции работы с почтовым сервером по протоколу IMAP4
//------------------------------------------------------------------------------

function MLLOGON(string, string, string, LongInt) : boolean; external 'MailManager.dll';
function MLLOGOFF : boolean; external 'MailManager.dll';
function MLCHECKMSG : boolean; external 'MailManager.dll';
function MLGETMAIL(LongInt) : boolean; external 'MailManager.dll';
function MLGETHMAIL(LongInt) : boolean; external 'MailManager.dll';
function MLGETMAILHEADER : boolean; external 'MailManager.dll';
function MLGETMAILBODY : boolean; external 'MailManager.dll';
function MLSAVEATTACH(string) : boolean; external 'MailManager.dll';
function MLGETMSGCOUNT : LongInt; external 'MailManager.dll';
function MLGETNEWMSGCOUNT : LongInt; external 'MailManager.dll';
function MLGETFIRSTNEWMSG : LongInt; external 'MailManager.dll';
function MLGETMAILSUBJ : string; external 'MailManager.dll';
function MLGETMAILDATE : string; external 'MailManager.dll';
function MLGETMAILFROMADDR : string; external 'MailManager.dll';
function MLGETMAILFROMNAME : string; external 'MailManager.dll';
function MLGETATTACHCOUNT : LongInt; external 'MailManager.dll';
function MLISMAILSEEN(LongInt) : boolean; external 'MailManager.dll';
function MLGETFILENAMEBYNUM(LongInt): string; external 'MailManager.dll';
function MLSAVEATTACHBYNUM(string, LongInt): boolean; external 'MailManager.dll';
function MLSETMAILSEEN(LongInt): boolean; external 'MailManager.dll';
function MLSETMAILUNSEEN(LongInt): boolean; external 'MailManager.dll';
function MLFINDINBODY(string): boolean; external 'MailManager.dll';
