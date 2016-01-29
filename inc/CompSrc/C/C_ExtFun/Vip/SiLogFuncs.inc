#ifndef __SiLogFuncs_inc___
#define __SiLogFuncs_inc___

// Функции протоколирования библиотеки SiLog.dll работают начиная с Атлантис 5.5.20
// Для активации в SmartInspect Configuretion Builder нужно создать файл <конфигурация протокола>.sic
// Затем в .cfg Галактики добавить раздел со ссылкой на этот файл
//   {SmartInspect}
//     ConfigFile = <путь>\<конфигурация протокола>.sic

procedure SiLogDll_Enable;                                                          external 'SILog.dll#SiEnable';
procedure SiLogDll_Disable;                                                         external 'SILog.dll#SiDisable';
function  SiLogDll_GetEnabled : Boolean;                                            external 'SILog.dll#SiGetEnabled';

procedure SiLogDll_LogMessage(ATitle: String);                                      external 'SILog.dll#SiLogMessage';
procedure SiLogDll_LogWarning(ATitle: String);                                      external 'SILog.dll#SiLogWarning';
procedure SiLogDll_LogError(ATitle: String);                                        external 'SILog.dll#SiLogError';
procedure SiLogDll_LogFatal(ATitle: String);                                        external 'SILog.dll#SiLogFatal';

procedure SiLogDll_EnterMethod(AMethodName: String);                                external 'SILog.dll#SiEnterMethod';
procedure SiLogDll_LeaveMethod(AMethodName: String);                                external 'SILog.dll#SiLeaveMethod';

function  SiLogDll_ContextTableCreate(Headers: String): longint;                    external 'SILog.dll#SiContextTableCreate';
procedure SiLogDll_ContextTableBeginRow(hTable : longint);                          external 'SILog.dll#SiContextTableBeginRow';
procedure SiLogDll_ContextTableAddRowEntry(hTable : longint, AEntry: String);       external 'SILog.dll#SiContextTableAddRowEntry';
procedure SiLogDll_ContextTableEndRow(hTable : longint);                            external 'SILog.dll#SiContextTableEndRow';
procedure SiLogDll_ContextLog(hContext : longint, AComment: String);                external 'SILog.dll#SiContextLog';

procedure SiLogDll_SetConfigFileName(AConfigFileName: String);                      external 'SILog.dll#SiSetConfigFileName';
procedure SiLogDll_SetConnections(AConnections: String);                            external 'SILog.dll#SiSetConnections';
procedure SiLogDll_SetHighResolution(Enabled: Boolean);                             external 'SILog.dll#SiSetHighResolution';

//procedure SiLogDll_LogSqlStr(ATitle: String, hStr: longint);                        external 'SILog.dll#SILOGSQLSTR';

function  SimpleClipboardToString : String;                                                    external 'SILog.dll#SimpleClipboardToString';
function  ClipBarCodes_Create : longint;                                                       external 'SILog.dll#ClipBarCodes_Create';
procedure ClipBarCodes_Restart(aClipBarCodes : longint);                                       external 'SILog.dll#ClipBarCodes_Restart';
function  ClipBarCodes_Count(aClipBarCodes : longint) : longint;                               external 'SILog.dll#ClipBarCodes_Count';
function  ClipBarCodes_Next(aClipBarCodes : longint) : boolean;                                external 'SILog.dll#ClipBarCodes_Next';
function  ClipBarCodes_CurrentValue(aClipBarCodes : longint) : String;                         external 'SILog.dll#ClipBarCodes_CurrentValue';
procedure ClipBarCodes_Free(aClipBarCodes : longint);                                          external 'SILog.dll#ClipBarCodes_Free';

function  ClipboardText_Create : longint;                                                      external 'SILog.dll#ClipboardText_Create';
procedure ClipboardText_Copy(aClipText : longint);                                             external 'SILog.dll#ClipboardText_Copy';
procedure ClipboardText_Paste(aClipText : longint);                                            external 'SILog.dll#ClipboardText_Paste';
procedure ClipboardText_Clear(aClipText : longint);                                            external 'SILog.dll#ClipboardText_Clear';
procedure ClipboardText_AddStr(aClipText : longint, Str : String);                             external 'SILog.dll#ClipboardText_AddStr';
function  ClipboardText_Length(aClipText : longint) : longint;                                 external 'SILog.dll#ClipboardText_Length';
function  ClipboardText_SubStr(aClipText : longint, Index: longint, Count : longint) : String; external 'SILog.dll#ClipboardText_SubStr';
procedure ClipboardText_Free(aClipText : longint);                                             external 'SILog.dll#ClipboardText_Free';

#end
