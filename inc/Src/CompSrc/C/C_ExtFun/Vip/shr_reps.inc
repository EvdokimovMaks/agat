//------------------------------------------------------------------------------
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 5.8
// ������樨 ��ᯮ���㥬�� �� g_staff �㭪権
//------------------------------------------------------------------------------
#ifdef ATL51
  #define ex external 'G_STAFF.DLL';
#else
  #define ex external;
#end

function shr_MakeForm7801(Comp): Boolean; #ex
function shr_MakeForm7802(Comp): Boolean; #ex
function shr_InitForm(Comp, Word, String, LongInt): LongInt; #ex
procedure shr_DoneForm(LongInt); #ex
function shr_NameByNumbers(String): String; #ex
procedure shr_DeleteReport(Word, String); #ex
function shr_PackDateAndTime(Date, Time): LongInt; #ex
function shr_CalcFormula(LongInt, String, Byte, Byte, var Byte): String; #ex
procedure shr_WriteFloat(LongInt, Double, Byte); #ex
procedure shr_WriteInt(LongInt, LongInt); #ex
procedure shr_WriteStr(LongInt, String); #ex
procedure shr_PutEvent(LongInt, Word); #ex
procedure shr_PutEventByID(LongInt, Word, Byte);#ex
procedure shr_SkipFormat(LongInt, Word); #ex
