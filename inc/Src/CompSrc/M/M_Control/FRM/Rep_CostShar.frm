//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 7.12 - Контроллинг
// Распределение затрат по потребителям
//********************************************************************************

.set name = 'Rep_CostShar'
.nameinlist 'Базовая форма'
.hide
.fields
ParamUser
ParamRep
NmParamRep
NmParamRep2
NmValut
KodZatr
NmZatr
KodPotreb
NamePotreb
SummaSz
KodPotrebCl
NamePotrebCl
SummaSzCl
NmSmet
NmStSmet
SummaSmet
NmItogo
SummaItogo
.endfields

^   //сведения о пользователе
.{
.{
^^^  //параметры отчета
.}

 .{.?stCostShar_VallItg;  ^.} //валюта
 .{.?stCostShar_Header1;  ^.}
 .{.?stCostShar_Header2;  ^.}

.if notClose_CostSh
.{
  ^ ^ //код и наименование потребителя
  .{.?stCostShar_SummaSz;   ^.} //сумма по статье затрат
.}
.else
.{
^^ //код и наименование потребителя
  .{.?stCostSharCl_SummaSz; ^.} ^ ^ ^ //сумма по статье затрат
.}
.end
.{
  ^  .{.?stCostShar_SummaItg;	^.}//ИТОГО
.}

.} 
.endform
