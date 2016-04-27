//------------------------------------------------------------------------------
//                                                      (c) Корпорация Галактика
// Галактика ERP 9.1
// Внешние функции из G_RLFun.dll
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// RLFUNCS.pas
function RL_SetPageParam(string,word,integer): boolean;  external 'G_RLFun.dll';
function RL_Clear_Rlist : boolean;                       external 'G_RLFun.dll';
function RL_Make_Rlist  : boolean;                       external 'G_RLFun.dll';
