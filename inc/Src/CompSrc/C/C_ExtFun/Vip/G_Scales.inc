//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1
// ���譨� �㭪樨 �� G_Scales.dll
//------------------------------------------------------------------------------

function  TB_SetPort(byte) : boolean;        external 'G_Scales.dll';
procedure TB_Zero;                           external 'G_Scales.dll';
function  TB_GetWeight : string;             external 'G_Scales.dll';
