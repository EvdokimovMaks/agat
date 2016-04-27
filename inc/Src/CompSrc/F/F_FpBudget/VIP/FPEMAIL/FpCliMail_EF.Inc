//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.10 - модуль "Управление бюджетом"
// Внешние функции работы с клиентом EMail
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
function MSOutLookInit                        : boolean; external 'MSOutLookLib.dll';
function MSOutLookDone                        : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
function MSOutLookMessCreate                  : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
function MSOutLookMessSetImportance (LongInt) : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessSetTo         (String ) : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessSetCC         (String ) : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessSetBCC        (String ) : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessSetSubj       (String ) : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessAddBody       (String ) : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessAddAttach     (String ) : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
function MSOutLookMessSend                    : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessSave                    : boolean; external 'MSOutLookLib.dll';
function MSOutLookMessDisplay                 : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
