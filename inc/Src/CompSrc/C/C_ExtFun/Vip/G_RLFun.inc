//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1
// ���譨� �㭪樨 �� G_RLFun.dll
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// RLFUNCS.pas
function RL_SetPageParam(string,word,integer): boolean;  external 'G_RLFun.dll';
function RL_Clear_Rlist : boolean;                       external 'G_RLFun.dll';
function RL_Make_Rlist(word, word, word, word, word, word, word, word, word, boolean, boolean, boolean): boolean; external 'G_RLFun.dll';
