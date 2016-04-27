//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
//Галактика 7.1 - Контроллинг
//Отчет "Себестоимость продаж продукции и услуг"
//------------------------------------------------------------------------------

.set name = 'RSebProdaj'
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
Amount
Sebest
SebestEI
SummaWr
SummaWrEi
Prib
NmPodrItg
SebestPodr
SummaWrPodr
SebestWsego
SummaWrWsego
.endfields

^                //ParamUser
.{
^^               //ParamRep, NmParamRep
.}

.{
^                //NmPodr
.{

^^^^^^^^^^
.}
^^^
.}

.if boWsego
Всего ^^
.end


.endform
