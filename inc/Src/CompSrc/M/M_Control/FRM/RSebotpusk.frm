//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Себестоимость отпуска продукции и услуг"
//------------------------------------------------------------------------------

.set name = 'RSebOtpusk'
.nameinlist 'Базовая форма'
.hide
.fields
   ParamUser
   ParamRep
   NmParamRep
   NmPodr
   Npp
   NmProd
   CodeProd
   EiProd
   AmountItgStr
   SebestItgStr
   SebestEIItgStr
   AmountPlan
   SebestPlan
   SebestEIPlan
   AmountOsnPr
   SebestOsnPr
   SebestEIOsnPr
   AmountStor
   SebestStor
   SebestEIStor
   ItgNmPodr
   ItgSebestStr
   ItgSebestPlan
   ItgSebestPr
   ItgSebestOsnPr
   WsegoSebestStr
   WsegoSebestPlan
   WsegoSebestPr
   WsegoSebestOsnPr	
.endfields

^                //ParamUser
.{
^^               //ParamRep, NmParamRep
.}

.{
^                //NmPodr
.{

^^^^^^^^^^^^^^^^
.}
^^^^^
.}

.if boWsegoOtpusk
Всего ^^^^
.end


.endform
