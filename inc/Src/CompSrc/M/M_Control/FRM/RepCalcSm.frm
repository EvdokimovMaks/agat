/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2001 корпорация ГАЛАКТИКА                         ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Контроллинг                                               ║
 ║ Версия        : 7.1                                                       ║
 ║ Назначение    : Калькуляционная смета  и баланс                           ║
 ║ Ответственный : Медведь Н.Л. (MEDVED)                                     ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name = 'RepCalcSm'
.nameinlist 'Базовая форма'
.hide
.fields
ParamRep
NmParamRep
NmPodr
Npp
NmZatr
NmValut
SumZatr
NmRes
NmEiRes
Amount
Price
SumRes
ItgNmEi
ItgSumZatr
ItgNmValNoZatr
ItgSumNoZatr
ParamRepBalans
NmParamRepBalans
NmPodrBalans
ItgSumRasx
ItgEiRasx
ItgAmountRasx
ItgPriceRasx
ItgSumEiRasx
NmResRasx
NNResRasx
EiresRasx
AmountResRasx
PriceResRasx
SummaResRasx
ItgAllSummaLostandWaste
ItgEiLostandWaste
ItgLostandWaste
ItgPriceLostandWaste
ItgSummaLostandWaste
ItgAllSumWaste
ItgEiWaste
ItgAmWaste
ItgPriceWaste
ItgSumWaste
NmResWaste
NNResWaste
EiWaste
AmountResWaste
PriceWaste
SummaWaste
ItgAllSummaLost
ItgEiLost
ItgAmLost
ItgPriceLost
ItgSummaLost
NmResLost
NNResLost
EiResLost
AmountResLost
PriceResLost
SummaResLost
ItgAllSummaWasteNo
ItgEiWasteNo
ItgAmWasteNo
ItgPriceWasteNo
ItgSummaWasteNo
NmResWasteNo
NNResWasteNo
EiResWasteNo
AmountResWasteNo
PriceResWasteNo
SummaResWasteNo
OstZatr
WsegoRasx
nppItgOsnProd
TitleOsnProd
EIOsnProd
AmountOsnProd
PriceOsnProd
SummaOsnProd
nppItgProd
titleItgProd
EIItgProd
AmountItgProd
PriceItgProd
SummaItgProd
NmProd
NNProd
EIProd
AmountProd
PriceProd
SummaProd
WsegoProd
WsegoEiProd
WsegoAmProd
WsegoPriceProd
WsegoSummaProd
OtklRasxProd
OtklEiRasxProd
OtklAmRasxProd
OtklPriceRasxProd
OtklSummaRasxProd
.endfields

.if bReportSmet
.{
^^
.}
.{
^                //Подразделение
.{
^^^^             //СЗ
.if boPrintRes
.{
^^^^^            //Ресурсы
.}
.end
.}
^^               //Итоговая сумма
.if boItgRazn
^^               //В настройках не учтено
.end
.}
.end

.if bReportBalans
.{
^^
.}

.{
^  Подразделение

^  Расходы
.{
^^^^
.}
.{
^^^^^^
.}

^  Потери и отходы
.{
^^^^
.}
^  Отходы используемые
.{
^^^^
.}
.{
^^^^^^
.}

^ Потери
.{
^^^^
.}
.{
^^^^^^
.}

^ Отходы неиспользуемые
.{
^^^^
.}
.{
^^^^^^
.} 

^ Остальные затраты
^ ВСЕГО РАСХОД

.{
^^^^^^
.}
.{
.if boCalcProd
.{
^^^^^^
.}
.end
^^^^^^
.}
						
^ ВСЕГО ВЫПУСК
.{
^^^^
.}
^ Отклонение
.{
^^^^
.}

.}
.end

.endform

