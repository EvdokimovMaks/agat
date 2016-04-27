/*
 !===========================================================================
 !                     (c) 1994,98 корпорация ГАЛАКТИКА
 ! Проект        : ГАЛАКТИКА
 ! Система       : Модуль Управление ремонтами
 ! Версия        : 5.80
 ! Назначение    : Форма "Годовой график ремонтов ППР"
 ! Ответственный : Бургардт Александр
 ! Изменения     :
 !===========================================================================-
*/

#doc
Форма "Годовой график ремонтов ППР"
#end
.set name = 'FgrafMTG1'
.group 'План-график ремонта вспомогательного оборудования (SLK)'
.nameinlist 'Базовая форма'
.hide
.fields
! период выборки
Date1Filtr Date2Filtr
! фильтр (ограничения)
NameFiltr
! дата формирования
DateForm TimeForm
! поля цикла
NamePodr
NameRab EdRab
KolRab SumTrud SumMc SumRab
R1 T1 M1 S1
R1_1 R1_2 R1_3 R1_4
R2 T2 M2 S2
R2_1 R2_2 R2_3 R2_4
R3 T3 M3 S3
R3_1 R3_2 R3_3 R3_4
R4 T4 M4 S4
R4_1 R4_2 R4_3 R4_4
R5 T5 M5 S5
R5_1 R5_2 R5_3 R5_4
R6 T6 M6 S6
R6_1 R6_2 R6_3 R6_4
R7 T7 M7 S7
R7_1 R7_2 R7_3 R7_4
R8 T8 M8 S8
R8_1 R8_2 R8_3 R8_4
R9 T9 M9 S9
R9_1 R9_2 R9_3 R9_4
R10 T10 M10 S10
R10_1 R10_2 R10_3 R10_4
R11 T11 M11 S11
R11_1 R11_2 R11_3 R11_4
R12 T12 M12 S12
R12_1 R12_2 R12_3 R12_4
! итого
IKolRab ISumTrud ISumMc ISumRab
IR1 IT1 IM1 IS1
IR2 IT2 IM2 IS2
IR3 IT3 IM3 IS3
IR4 IT4 IM4 IS4
IR5 IT5 IM5 IS5
IR6 IT6 IM6 IS6
IR7 IT7 IM7 IS7
IR8 IT8 IM8 IS8
IR9 IT9 IM9 IS9
IR10 IT10 IM10 IS10
IR11 IT11 IM11 IS11
IR12 IT12 IM12 IS12
! всего
VKolRab VSumTrud VSumMc VSumRab
VR1 VT1 VM1 VS1
VR2 VT2 VM2 VS2
VR3 VT3 VM3 VS3
VR4 VT4 VM4 VS4
VR5 VT5 VM5 VS5
VR6 VT6 VM6 VS6
VR7 VT7 VM7 VS7
VR8 VT8 VM8 VS8
VR9 VT9 VM9 VS9
VR10 VT10 VM10 VS10
VR11 VT11 VM11 VS11
VR12 VT12 VM12 VS12
.endfields

Date1Filtr ^
Date2Filtr ^
.{
NameFiltr ^
.}
DateForm ^ TimeForm ^
.{
NamePodr ^
.{
NameRab ^ EdRab ^
KolRab ^ SumTrud ^ SumMC ^ SumRab ^
R1 ^ T1 ^ M1 ^ S1 ^
R2 ^ T2 ^ M2 ^ S2 ^
R3 ^ T3 ^ M3 ^ S3 ^
R4 ^ T4 ^ M4 ^ S4 ^
R5 ^ T5 ^ M5 ^ S5 ^
R6 ^ T6 ^ M6 ^ S6 ^
R7 ^ T7 ^ M7 ^ S7 ^
R8 ^ T8 ^ M8 ^ S8 ^
R9 ^ T9 ^ M9 ^ S9 ^
R10 ^ T10 ^ M10 ^ S10 ^
R11 ^ T11 ^ M11 ^ S11 ^
R12 ^ T12 ^ M12 ^ S12 ^

R1_1 ^ R1_2 ^ R1_3 ^ R1_4 ^
R2_1 ^ R2_2 ^ R2_3 ^ R2_4 ^
R3_1 ^ R3_2 ^ R3_3 ^ R3_4 ^
R4_1 ^ R4_2 ^ R4_3 ^ R4_4 ^
R5_1 ^ R5_2 ^ R5_3 ^ R5_4 ^
R6_1 ^ R6_2 ^ R6_3 ^ R6_4 ^
R7_1 ^ R7_2 ^ R7_3 ^ R7_4 ^
R8_1 ^ R8_2 ^ R8_3 ^ R8_4 ^
R9_1 ^ R9_2 ^ R9_3 ^ R9_4 ^
R10_1 ^ R10_2 ^ R10_3 ^ R10_4 ^
R11_1 ^ R11_2 ^ R11_3 ^ R11_4 ^
R12_1 ^ R12_2 ^ R12_3 ^ R12_4 ^
.}
IKolRab ^ ISumTrud ^ ISumMC ^ ISumRab ^
IR1 ^ IT1 ^ IM1 ^ IS1 ^
IR2 ^ IT2 ^ IM2 ^ IS2 ^
IR3 ^ IT3 ^ IM3 ^ IS3 ^
IR4 ^ IT4 ^ IM4 ^ IS4 ^
IR5 ^ IT5 ^ IM5 ^ IS5 ^
IR6 ^ IT6 ^ IM6 ^ IS6 ^
IR7 ^ IT7 ^ IM7 ^ IS7 ^
IR8 ^ IT8 ^ IM8 ^ IS8 ^
IR9 ^ IT9 ^ IM9 ^ IS9 ^
IR10 ^ IT10 ^ IM10 ^ IS10 ^
IR11 ^ IT11 ^ IM11 ^ IS11 ^
IR12 ^ IT12 ^ IM12 ^ IS12 ^
.}
VKolRab ^ VSumTrud ^ VSumMC ^ VSumRab ^
VR1 ^ VT1 ^ VM1 ^ VS1 ^
VR2 ^ VT2 ^ VM2 ^ VS2 ^
VR3 ^ VT3 ^ VM3 ^ VS3 ^
VR4 ^ VT4 ^ VM4 ^ VS4 ^
VR5 ^ VT5 ^ VM5 ^ VS5 ^
VR6 ^ VT6 ^ VM6 ^ VS6 ^
VR7 ^ VT7 ^ VM7 ^ VS7 ^
VR8 ^ VT8 ^ VM8 ^ VS8 ^
VR9 ^ VT9 ^ VM9 ^ VS9 ^
VR10 ^ VT10 ^ VM10 ^ VS10 ^
VR11 ^ VT11 ^ VM11 ^ VS11 ^
VR12 ^ VT12 ^ VM12 ^ VS12 ^
.endform