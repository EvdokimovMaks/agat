//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 7.12 - Контроллинг
// Распределение затрат по потребителям - линейная форма отчета
//********************************************************************************

.set name = 'Rep_CostLine'
.nameinlist 'Базовая форма'
.hide
.fields

   ParamUser

   ParamRepCl
   NmParamRepCl
   NmParamRep2Cl
   NmValutCl

   TitleRaspCl
   KodRaspCl
   NmRaspCl
   NmAnCl
   SummaRaspCl


   KodPodrCl
   NmPodrCl
   SummaPodrCl
   SmetaPr
   StSmetPr
   SummaSmetPr

   NmSummaCl
   SummaZatrCl

   NmSummaDocCl
   SummaZatrDocCl

   ParamRep
   NmParamRep
   NmParamRep2
   NmValut

   TitleRasp
   KodRasp						
   NmRasp
   NmAn
   SummaRasp

   KodPodr						
   NmPodr						
   SummaPodr						

   NmSumma						
   SummaZatr						

   NmSummaDoc						
   SummaZatrDoc						
						
.EndFields						
^						
	Распределение затрат по потребителям					
						
.{						
.if boCloseCostSh						
.{						
^	 ^	 ^				
.}						

^//валюта
						
.{						
	Код	Наименование Значение аналитики	Сумма затрат	Сметы-приемники затрат
				                                       Смета	        Статья сметы Начисленные суммы
.{						
^	^	^            ^                  ^
.}						
Потребители затрат:						
.{						
	^	^	^	^	^	^
.}
.if boLimit_CostLineCl 
.{
^			^
.}						
.end
.}						
.{						
^			^
.}						
.else						
.{						
^	 ^	 ^				
.}						

^//валюта						

.{						
	Код	Наименование Значение аналитики	Сумма затрат
						
.{						
^	^	^            ^		        ^
.}						
Потребители затрат:						
.{						
	^	^	^
.}
.if boLimit_CostLine
.{						
^			^
.}						
.end						
.}
.{						
^			^
.}						
.end						
						
.}						
						
.endform						
						
						
						
						
						
						

						
						
						
