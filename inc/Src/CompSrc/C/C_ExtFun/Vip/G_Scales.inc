//------------------------------------------------------------------------------
//                                                      (c) Корпорация Галактика
// Галактика ERP 9.1
// Внешние функции из G_Scales.dll
//------------------------------------------------------------------------------

function  TB_SetPort(byte) : boolean;        external 'G_Scales.dll';
procedure TB_Zero;                           external 'G_Scales.dll';
function  TB_GetWeight : string;             external 'G_Scales.dll';
