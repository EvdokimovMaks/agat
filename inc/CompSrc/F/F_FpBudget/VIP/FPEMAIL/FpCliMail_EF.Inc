//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.80 - модуль "Управление бюджетом"
// Внешние функции работы с клиентом EMail
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function MSOutLookInit                        : boolean; external 'MSOutLookLib.dll';
Function MSOutLookDone                        : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
Function MSOutLookMessCreate                  : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
Function MSOutLookMessSetImportance (LongInt) : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessSetTo         (String ) : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessSetCC         (String ) : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessSetBCC        (String ) : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessSetSubj       (String ) : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessAddBody       (String ) : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessAddAttach     (String ) : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
Function MSOutLookMessSend                    : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessSave                    : boolean; external 'MSOutLookLib.dll';
Function MSOutLookMessDisplay                 : boolean; external 'MSOutLookLib.dll';
//------------------------------------------------------------------------------
