//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 7.12 - Контроллинг
// Заявки на затраты
//********************************************************************************

.set name = 'Rep_ReqZatr'
.nameinlist 'Базовая форма'
.hide
.fields
   ParamUser
   ParamRep
   KodParamRep
   NmParamRep
   NmHeader1
   NmHeader2
   NmField
   SummaZatr
   NmFieldCl
   SummaZatrCl
   NmField2
   SummaZatr2
   NmField3
   SummaZatr3
.endfields

^   //сведения о пользователе
.{

.{
^^^  //параметры отчета (параметр, код и наименование параметра)
.}

 .{.?stReqZatr_Header1; ^.} //наименование колонки строка1
 .{.?stReqZatr_Header2; ^.} //наименование колонки строка2

.if notClose_RepHead
.{
   .{.?stReqZatr_Str1;   ^.}  .{.?stReqZatr_Summa1;   ^.} 
.}
.else
.{
   .{.?stReqZatr_Str1Cl; ^.}  .{.?stReqZatr_Summa1Cl; ^.} .{.?stReqZatr_Str2; ^.}  .{.?stReqZatr_Summa2; ^.}
.}
.end

.{
 .{.?stReqZatr_Str3;	 ^.}  .{.?stReqZatr_Summa3;	&&&&&&&&&&&&&&&&&&.&&.}  //сумма заявленных затрат
.}

.} 
.endform
