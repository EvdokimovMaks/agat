/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,98 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Модуль Управление ремонтами                               ║
 ║ Версия        : 5.80                                                      ║
 ║ Назначение    : Форма "Годовой график ремонтов ППР"                       ║
 ║ Ответственный : Бургардт Александр                                        ║
 ║ Изменения     :                                                           ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Форма "Годовой график ремонтов ППР"
#end
.set name = 'Fgrafik1'
.group 'Годовой график ремонтов'
.nameinlist 'Базовая форма'
.hide
.fields
! заголовок отчета
NameForm
! NRec отчета
RepNRec
! название формы
RepName
! NRec  варианта графика
vcVarGraf
! Name варианта графика
vsVarGraf
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
DateForm TimeForm
! Параметр = 1 если изменяется цех в группировке
vwNewCex: word
! Цех
 Cex
! Группа ОР
GrKod GrName
! подразделение
PodrName
! вывод верхней записи в дереве ОР
vs_ObjRem_NameIR
vs_ObjRem_InvIR 

! поля цикла
NrecObj Rem_Do
NameObj1 InNum KodSh KatPlace DRK TipOR KYT KolEd NamePeriod RS  vsIspRemAbbr
               Plan R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 DLastRem KolRem NeRab Rab
NameObj2 GroupObj   C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12
                    K1 K2 K3 K4 K5 K6 K7 K8 K9 K10 K11 K12
Number   TexN
         Podr  Fakt Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12          KolRemF NeRabF RabF
                    H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12

!примечание 
 Prim
! поля цикла норм
//*
NameObj NumNorm NormName TVedName VidRemName NormaPeriod NormaLong NormLastRem
N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12
NLastRem NKolRem NNeRab NormaIsp1
S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 NormaIsp2
//------------------------------------------------------------------------------
! цикл итоговых сумм
//------------------------------------------------------------------------------
// план
//------------------------------------------------------------------------------
ItogName 

SummaRemontInMonGrP1
SummaRemontInMonGrP2
SummaRemontInMonGrP3
SummaRemontInMonGrP4
SummaRemontInMonGrP5
SummaRemontInMonGrP6
SummaRemontInMonGrP7
SummaRemontInMonGrP8
SummaRemontInMonGrP9
SummaRemontInMonGrP10
SummaRemontInMonGrP11
SummaRemontInMonGrP12

ItogKol ItogNeRab ItogRab
//------------------------------------------------------------------------------
// факт
//------------------------------------------------------------------------------
ItogNameF 

SummaRemontInMonGrF1
SummaRemontInMonGrF2
SummaRemontInMonGrF3
SummaRemontInMonGrF4
SummaRemontInMonGrF5
SummaRemontInMonGrF6
SummaRemontInMonGrF7
SummaRemontInMonGrF8
SummaRemontInMonGrF9
SummaRemontInMonGrF10
SummaRemontInMonGrF11
SummaRemontInMonGrF12

ItogKolF ItogNeRabF ItogRabF
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
! всего
//------------------------------------------------------------------------------
// план
//------------------------------------------------------------------------------
TotalName 

SummaRemontInMonP1
SummaRemontInMonP2
SummaRemontInMonP3
SummaRemontInMonP4
SummaRemontInMonP5
SummaRemontInMonP6
SummaRemontInMonP7
SummaRemontInMonP8
SummaRemontInMonP9
SummaRemontInMonP10
SummaRemontInMonP11
SummaRemontInMonP12

TotalKol TotalNeRab TotalRab
//------------------------------------------------------------------------------
// факт
//------------------------------------------------------------------------------
TotalNameF 

SummaRemontInMonF1  
SummaRemontInMonF2 
SummaRemontInMonF3 
SummaRemontInMonF4 
SummaRemontInMonF5 
SummaRemontInMonF6 
SummaRemontInMonF7 
SummaRemontInMonF8 
SummaRemontInMonF9 
SummaRemontInMonF10
SummaRemontInMonF11
SummaRemontInMonF12

TotalKolF TotalNeRabF TotalRabF
//------------------------------------------------------------------------------

//*/
.endfields

!
NameForm            Заголовок отчета          ^
                                              
RepNRec                                       ^
RepName                                       ^
vcVarGraf                                     ^
vsVarGraf                                     ^

Date1Filtr          с                         ^
Date2Filtr          по                        ^
.{
NameFiltr           ограничения               ^
.}
!
DateForm            Дата формирования отчета  ^
TimeForm            Время формирования отчета ^
.{
.{
.{
.{ CheckEnter PodrNameLoop1
   vwNewCex ^ Cex ^ GrKod ^ GrName ^ PodrName ^
.}

.{ CheckEnter IrOR
   vs_ObjRem_NameIR ^
   vs_ObjRem_InvIR  ^
.}

NrecObj ^ Rem_Do ^
NameObj1 ^ InNum ^  KodSh ^ KatPlace ^  DRK ^  TipOR ^ KYT ^ KolEd ^ NamePeriod ^ RS ^  vsIspRemAbbr ^
                    Plan ^ R1 ^ R2 ^ R3 ^ R4 ^ R5 ^ R6 ^ R7 ^ R8 ^ R9 ^ R10 ^ R11 ^ R12 ^
DLastRem ^ KolRem ^ NeRab ^ Rab ^
NameObj2 ^ GroupObj ^     C1 ^ C2 ^ C3 ^ C4 ^ C5 ^ C6 ^ C7 ^ C8 ^ C9 ^ C10 ^ C11 ^ C12 ^
                          K1 ^ K2 ^ K3 ^ K4 ^ K5 ^ K6 ^ K7 ^ K8 ^ K9 ^ K10 ^ K11 ^ K12 ^
Number   ^ TexN ^
         Podr ^ Fakt ^ Q1 ^ Q2 ^ Q3 ^ Q4 ^ Q5 ^ Q6 ^ Q7 ^ Q8 ^ Q9 ^ Q10 ^ Q11 ^ Q12 ^
KolRemF ^ NeRabF ^ RabF ^
                       H1 ^ H2 ^ H3 ^ H4 ^ H5 ^ H6 ^ H7 ^ H8 ^ H9 ^ H10 ^ H11 ^ H12 ^

.{ CheckEnter Prim
   Prim ^
.}
//*
.{
NameObj ^ NumNorm ^ NormName ^ TVedName ^ VidRemName ^ NormaPeriod ^ NormaLong ^ NormLastRem ^
N1 ^ N2 ^ N3 ^ N4 ^ N5 ^ N6 ^ N7 ^ N8 ^ N9 ^ N10 ^ N11 ^ N12 ^
NLastRem ^ NKolRem ^ NNeRab ^ NormaIsp1 ^
S1 ^ S2 ^ S3 ^ S4 ^ S5 ^ S6 ^ S7 ^ S8 ^ S9 ^ S10 ^ S11 ^ S12 ^ NormaIsp2 ^
.}
//*/
.}
///*
.{
//------------------------------------------------------------------------------
ItogName     итого по             ^

SummaRemontInMonGrP1              ^
SummaRemontInMonGrP2              ^
SummaRemontInMonGrP3              ^
SummaRemontInMonGrP4              ^
SummaRemontInMonGrP5              ^
SummaRemontInMonGrP6              ^
SummaRemontInMonGrP7              ^
SummaRemontInMonGrP8              ^
SummaRemontInMonGrP9              ^
SummaRemontInMonGrP10             ^
SummaRemontInMonGrP11             ^
SummaRemontInMonGrP12             ^

ItogKol      итого ремонтов       ^
ItogNeRab    итого часов простоя  ^
ItogRab      итого часов работы   ^
//------------------------------------------------------------------------------

ItogNameF     итого по             ^

SummaRemontInMonGrF1               ^
SummaRemontInMonGrF2               ^
SummaRemontInMonGrF3               ^
SummaRemontInMonGrF4               ^
SummaRemontInMonGrF5               ^
SummaRemontInMonGrF6               ^
SummaRemontInMonGrF7               ^
SummaRemontInMonGrF8               ^
SummaRemontInMonGrF9               ^
SummaRemontInMonGrF10              ^
SummaRemontInMonGrF11              ^
SummaRemontInMonGrF12              ^

ItogKolF      итого ремонтов       ^
ItogNeRabF    итого часов простоя  ^
ItogRabF      итого часов работы   ^
//------------------------------------------------------------------------------

.}
//*/
.}
///*
TotalName    всего                ^

SummaRemontInMonP1                ^
SummaRemontInMonP2                ^
SummaRemontInMonP3                ^
SummaRemontInMonP4                ^
SummaRemontInMonP5                ^
SummaRemontInMonP6                ^
SummaRemontInMonP7                ^
SummaRemontInMonP8                ^
SummaRemontInMonP9                ^
SummaRemontInMonP10               ^
SummaRemontInMonP11               ^
SummaRemontInMonP12               ^

TotalKol     всего ремонтов       ^
TotalNeRab   всего часов простоя  ^
TotalRab     всего часов работы   ^

TotalNameF    всего                ^

SummaRemontInMonF1                 ^
SummaRemontInMonF2                 ^
SummaRemontInMonF3                 ^
SummaRemontInMonF4                 ^
SummaRemontInMonF5                 ^
SummaRemontInMonF6                 ^
SummaRemontInMonF7                 ^
SummaRemontInMonF8                 ^
SummaRemontInMonF9                 ^
SummaRemontInMonF10                ^
SummaRemontInMonF11                ^
SummaRemontInMonF12                ^

TotalKolF     всего ремонтов       ^
TotalNeRabF   всего часов простоя  ^
TotalRabF     всего часов работы   ^
//*/
.}
.endform



#doc
Годовой график ремонтов
Годовой график ремонтов (по объектам)
#end
.linkform 'Fgrafik1_01' prototype is 'Fgrafik1'
.group 'Годовой график ремонтов'
.nameinlist '1. Годовой график ремонтов (по объектам)'
.p 60
.defo landscape
.fields
NameForm
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
DateForm TimeForm
! подразделение
PodrName
! поля цикла
NameObj1 InNum Plan R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 DLastRem KolRem NeRab Rab
NameObj2 GroupObj   C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12
Number   TexN
         Podr  Fakt
! поля цикла норм
! цикл итоговых сумм
ItogName 

SummaRemontInMonGrP1 
SummaRemontInMonGrP2 
SummaRemontInMonGrP3 
SummaRemontInMonGrP4 
SummaRemontInMonGrP5 
SummaRemontInMonGrP6 
SummaRemontInMonGrP7 
SummaRemontInMonGrP8 
SummaRemontInMonGrP9 
SummaRemontInMonGrP10
SummaRemontInMonGrP11
SummaRemontInMonGrP12

ItogKol ItogNeRab ItogRab

! всего
TotalName

SummaRemontInMonP1 
SummaRemontInMonP2 
SummaRemontInMonP3 
SummaRemontInMonP4 
SummaRemontInMonP5 
SummaRemontInMonP6 
SummaRemontInMonP7 
SummaRemontInMonP8 
SummaRemontInMonP9 
SummaRemontInMonP10
SummaRemontInMonP11
SummaRemontInMonP12

TotalKol TotalNeRab TotalRab
.endfields

 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

 за период  с: @@@@@@@@@@  по: @@@@@@@@@@
 Р
.{
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Т
.}

 Р дата: @@@@@@@@@@         время: @@@@@@@@@@ Р
.{
.[h
 Ш                                                                                                                                    Лист @np@
----------------------------------------------------------------------------------------------------------------------------------------------
  Наименование   : Инвент.номер:    :    I квартал    :   II квартал    :   III квартал   :   IV квартал    :  Дата    :Колич: Простои: Работа
  объекта        : группа,нитка:    :-----------------------------------------------------------------------: последн. :ремон: (час)  : (час)
  ремонта        : подразделен.:    :  01 :  02 :  03 :  04 :  05 :  06 :  07 :  08 :  09 :  10 :  11 :  12 : кап.рем. :тов  :        :
----------------------------------------------------------------------------------------------------------------------------------------------
.]h
.{
.{
.{ CheckEnter PodrNameLoop1
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------------------------------------------------------------------------------------------------------------------
.}
.{ CheckEnter IrOR
.}
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:@@@@:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&&&&&&&&:&&&&&:&&&&&&& :&&&&&&&
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:    :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :     :        :
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:----:---------------------------------------------------------------------------------------------------------
                  @@@@@@@@@@@@@:@@@@:     :     :     :     :     :     :     :     :     :     :     :     :          :     :        :
----------------------------------------------------------------------------------------------------------------------------------------------
.{ CheckEnter Prim
.}
.{
.}
.}
.{
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :           &&&&& &&&&&&&& &&&&&&&&
-----------------------------------------------------------------------------------------------------------------------------------------------
.}
.}
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :           &&&&& &&&&&&&& &&&&&&&&
.[f

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- - Ш
 Ш
.]f
.}
.endform



#doc
Годовой график ремонтов
Годовой график ремонтов (по объектам и нормам)
#end
.linkform 'Fgrafik1_02' prototype is 'Fgrafik1'
.group 'Годовой график ремонтов'
.nameinlist '2. Годовой график ремонтов (по объектам и нормам)'
.p 60
.defo landscape
.fields
NameForm
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
DateForm TimeForm
! подразделение
PodrName
! поля цикла
NameObj1 InNum Plan R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 DLastRem KolRem NeRab Rab
NameObj2 GroupObj   C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12
Number   TexN
         Podr  Fakt
! поля цикла норм
NumNorm NormName NormaPeriod N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12
NLastRem NKolRem NNeRab NormaIsp1
! цикл итоговых сумм
ItogName 

SummaRemontInMonGrP1 
SummaRemontInMonGrP2 
SummaRemontInMonGrP3 
SummaRemontInMonGrP4 
SummaRemontInMonGrP5 
SummaRemontInMonGrP6 
SummaRemontInMonGrP7 
SummaRemontInMonGrP8 
SummaRemontInMonGrP9 
SummaRemontInMonGrP10
SummaRemontInMonGrP11
SummaRemontInMonGrP12

ItogKol ItogNeRab ItogRab
! всего
TotalName 

SummaRemontInMonP1 
SummaRemontInMonP2 
SummaRemontInMonP3 
SummaRemontInMonP4 
SummaRemontInMonP5 
SummaRemontInMonP6
SummaRemontInMonP7
SummaRemontInMonP8
SummaRemontInMonP9
SummaRemontInMonP10
SummaRemontInMonP11
SummaRemontInMonP12

TotalKol TotalNeRab TotalRab
.endfields

   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   за период  с: @@@@@@@@@@  по: @@@@@@@@@@

.{
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

   дата: @@@@@@@@@@         время: @@@@@@@@@@
.{
.[h
                                                                                                                                          Лист @np@
----------------------------------------------------------------------------------------------------------------------------------------------------
  Наименование   : Инвент.номер:Период:    I квартал    :   II квартал    :   III квартал   :   IV квартал    :  Дата    :Колич: Простои: Работа
  объекта        : группа,нитка: по   :-----------------------------------------------------------------------: последн. :ремон: (час)  : (час)
  ремонта        : подразделен.:норме :  01 :  02 :  03 :  04 :  05 :  06 :  07 :  08 :  09 :  10 :  11 :  12 : кап.рем. :тов  :        :Исполнитель
----------------------------------------------------------------------------------------------------------------------------------------------------
.]h
.{
.{
.{ CheckEnter PodrNameLoop1
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------------------------------------------------------------------------------------------------------------------------
.}
.{ CheckEnter IrOR
.}
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@: @@@@ :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&&&&&&&&:&&&&&:&&&&&&& :&&&&&&&&
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:      :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :     :        :
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:------:-------------------------------------------------------------------------------------------------------------
                  @@@@@@@@@@@@@: @@@@ :     :     :     :     :     :     :     :     :     :     :     :     :          :     :        :
.{ CheckEnter Prim
.}
.{
----------------------------------------------------------------------------------------------------------------------------------------------------
  &&& @@@@@@@@@@@@@@@@@@@@@@@@@:&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&&&&&&&&:&&&&&:&&&&&&& :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
====================================================================================================================================================
.}
.{
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :           &&&&& &&&&&&&& &&&&&&&&
----------------------------------------------------------------------------------------------------------------------------------------------------
.}
.}
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :           &&&&& &&&&&&&& &&&&&&&&
.[f

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

.]f Ш
.}
.endform



#doc
Годовой график ремонтов
Годовой график ремонтов (по объектам и типовым ремонтам)
#end
.linkform 'Fgrafik1_03' prototype is 'Fgrafik1'
.group 'Годовой график ремонтов'
.nameinlist '3. Годовой график ремонтов (по объектам и типовым ремонтам)'
.p 60
.defo landscape
.fields
NameForm
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
DateForm TimeForm
! подразделение
PodrName
! поля цикла
NameObj1 InNum Plan R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 DLastRem KolRem NeRab Rab
NameObj2 GroupObj   C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12
Number   TexN
         Podr  Fakt
! поля цикла норм
NumNorm TvedName NormaPeriod N1 N2 N3 N4 N5 N6 N7 N8 N9 N10 N11 N12
NLastRem NKolRem NNeRab NormaIsp1
! цикл итоговых сумм
ItogName 

SummaRemontInMonGrP1 
SummaRemontInMonGrP2 
SummaRemontInMonGrP3 
SummaRemontInMonGrP4 
SummaRemontInMonGrP5 
SummaRemontInMonGrP6 
SummaRemontInMonGrP7 
SummaRemontInMonGrP8 
SummaRemontInMonGrP9 
SummaRemontInMonGrP10
SummaRemontInMonGrP11
SummaRemontInMonGrP12

ItogKol ItogNeRab ItogRab
! всего
TotalName 

SummaRemontInMonP1 
SummaRemontInMonP2
SummaRemontInMonP3 
SummaRemontInMonP4
SummaRemontInMonP5 
SummaRemontInMonP6 
SummaRemontInMonP7 
SummaRemontInMonP8 
SummaRemontInMonP9 
SummaRemontInMonP10
SummaRemontInMonP11
SummaRemontInMonP12

TotalKol TotalNeRab TotalRab
.endfields

 Ш   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   за период  с: @@@@@@@@@@  по: @@@@@@@@@@

.{
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

   дата: @@@@@@@@@@         время: @@@@@@@@@@
.{
.[h
                                                                                                                                          Лист @np@
----------------------------------------------------------------------------------------------------------------------------------------------------
  Наименование   : Инвент.номер:Период:    I квартал    :   II квартал    :   III квартал   :   IV квартал    :  Дата    :Колич: Простои: Работа
  объекта        : группа,нитка: по   :-----------------------------------------------------------------------: последн. :ремон: (час)  : (час)
  ремонта        : подразделен.:норме :  01 :  02 :  03 :  04 :  05 :  06 :  07 :  08 :  09 :  10 :  11 :  12 : кап.рем. :тов  :        :Исполнитель
----------------------------------------------------------------------------------------------------------------------------------------------------
.]h
.{
.{
.{ CheckEnter PodrNameLoop1
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------------------------------------------------------------------------------------------------------------------------
.}
.{ CheckEnter IrOR
.}
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@: @@@@ :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&&&&&&&&:&&&&&:&&&&&&& :&&&&&&&&
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:      :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :     :        :
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:------:------------------------------------------------------------------------------------------------------------
                  @@@@@@@@@@@@@: @@@@ :     :     :     :     :     :     :     :     :     :     :     :     :          :     :        :
.{ CheckEnter Prim
.}
.{
----------------------------------------------------------------------------------------------------------------------------------------------------
   &&& @@@@@@@@@@@@@@@@@@@@@@@@:&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&&&&&&&&:&&&&&:&&&&&&& :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
====================================================================================================================================================
.}
.{
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :           &&&&& &&&&&&&& &&&&&&&&
----------------------------------------------------------------------------------------------------------------------------------------------------
.}
.}
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :           &&&&& &&&&&&&& &&&&&&&&
.[f

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

.]f
.}
.endform

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

#doc
Годовой график ремонтов
Годовой график ремонтов по объектам без указания работ
#end
 Ш.linkform 'Fgrafik1_05' prototype is 'Fgrafik1'
.group 'Годовой график ремонтов'
.nameinlist '5. Годовой график ремонтов по объектам без указания работ'
.p 50
.defo landscape
.fields
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
! подразделение
PodrName
! поля цикла
NameObj1  R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12
NameObj2
Number
! поля цикла норм
! цикл итоговых сумм
! всего
.endfields

 Ш   График планово-предупредительных ремонтов

   за период  с: @@@@@@@@@@  по: @@@@@@@@@@

.{
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{
.[h
                                                                                         Лист @np@
---------------------------------------------------------------------------------------------------
  Наименование            :                          Время выполнения работ                       :
     объекта              :-----------------------------------------------------------------------:
     ремонта              :  01 :  02 :  03 :  04 :  05 :  06 :  07 :  08 :  09 :  10 :  11 :  12 :
---------------------------------------------------------------------------------------------------
.]h
.{
.{
.{ CheckEnter PodrNameLoop1
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
---------------------------------------------------------------------------------------------------
.}
.{ CheckEnter IrOR
.}
@@@@@@@@@@@@@@@@@@@@@@@@@@:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:&&&&&:
@@@@@@@@@@@@@@@@@@@@@@@@@@:     :     :     :     :     :     :     :     :     :     :     :     :
@@@@@@@@@@@@@@@@@@@@@@@@@@:     :     :     :     :     :     :     :     :     :     :     :     :
---------------------------------------------------------------------------------------------------
.{ CheckEnter Prim
.}
.{ Щ
.}
.}
.{
.}
.}
.[f
.]f
.}
.endform


#doc
Годовой график ремонтов
Годовой график ремонтов (план-факт)
#end
 Б.linkform 'Fgrafik1_06' prototype is 'Fgrafik1'
.group 'Годовой график ремонтов'
.nameinlist '6. Годовой график ремонтов (план-факт)'
.p 60
.defo landscape
.fields
NameForm
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
DateForm TimeForm

PodrName
! поля цикла
NameObj1 InNum Plan R1 R2 R3 R4 R5 R6 R7 R8 R9 R10 R11 R12 DLastRem KolRem NeRab Rab
NameObj2 GroupObj   C1 C2 C3 C4 C5 C6 C7 C8 C9 C10 C11 C12
Number   TexN
         Podr  Fakt Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12          KolRemF NeRabF RabF
                    H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12
! поля цикла норм
! цикл итоговых сумм
ItogName 

SummaRemontInMonGrP1
SummaRemontInMonGrP2
SummaRemontInMonGrP3
SummaRemontInMonGrP4
SummaRemontInMonGrP5
SummaRemontInMonGrP6
SummaRemontInMonGrP7
SummaRemontInMonGrP8
SummaRemontInMonGrP9
SummaRemontInMonGrP10
SummaRemontInMonGrP11
SummaRemontInMonGrP12

ItogKol ItogNeRab ItogRab


ItogNameF 

SummaRemontInMonGrF1
SummaRemontInMonGrF2
SummaRemontInMonGrF3
SummaRemontInMonGrF4
SummaRemontInMonGrF5
SummaRemontInMonGrF6
SummaRemontInMonGrF7
SummaRemontInMonGrF8
SummaRemontInMonGrF9
SummaRemontInMonGrF10
SummaRemontInMonGrF11
SummaRemontInMonGrF12

ItogKolF ItogNeRabF ItogRabF
! всего
TotalName  

SummaRemontInMonP1 
SummaRemontInMonP2 
SummaRemontInMonP3 
SummaRemontInMonP4 
SummaRemontInMonP5 
SummaRemontInMonP6 
SummaRemontInMonP7 
SummaRemontInMonP8 
SummaRemontInMonP9 
SummaRemontInMonP10
SummaRemontInMonP11
SummaRemontInMonP12

TotalKol TotalNeRab TotalRab


TotalNameF 

SummaRemontInMonF1  
SummaRemontInMonF2
SummaRemontInMonF3
SummaRemontInMonF4
SummaRemontInMonF5
SummaRemontInMonF6
SummaRemontInMonF7
SummaRemontInMonF8
SummaRemontInMonF9
SummaRemontInMonF10
SummaRemontInMonF11
SummaRemontInMonF12

TotalKolF TotalNeRabF TotalRabF
.endfields

 Ш   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   за период  с: @@@@@@@@@@  по: @@@@@@@@@@

.{
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

   дата: @@@@@@@@@@         время: @@@@@@@@@@
.{
.[h
                                                                                                                                    Лист @np@
----------------------------------------------------------------------------------------------------------------------------------------------
  Наименование   : Инвент.номер:    :    I квартал    :   II квартал    :   III квартал   :   IV квартал    :  Дата    :Колич: Простои: Работа
  объекта        : группа,нитка:    :-----------------------------------------------------------------------: последн. :ремон: (час)  : (час)
  ремонта        : подразделен.:    :  01 :  02 :  03 :  04 :  05 :  06 :  07 :  08 :  09 :  10 :  11 :  12 : кап.рем. :тов  :        :
----------------------------------------------------------------------------------------------------------------------------------------------
.]h
.{
.{
.{ CheckEnter PodrNameLoop1
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------------------------------------------------------------------------------------------------------------------
.}
.{ CheckEnter IrOR
.}
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:@@@@:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&&&&&&&&:&&&&&:&&&&&&& :&&&&&&&&
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:    :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :     :        :
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@:----:----------------------------------------------------------------------------------------------------------
                  @@@@@@@@@@@@@:@@@@:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :&&&&&:&&&&&&& :&&&&&&&&
                               :    :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :     :        :
-----------------------------------------------------------------------------------------------------------------------------------------------
.{ CheckEnter Prim
.}
.{
.}
.}
.{
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :&&&&& &&&&&&&& &&&&&&&&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :&&&&& &&&&&&&& &&&&&&&&
-----------------------------------------------------------------------------------------------------------------------------------------------
.}
.}
.}
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :&&&&& &&&&&&&& &&&&&&&&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :&&&& :          :&&&&& &&&&&&&& &&&&&&&&

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
.endform
