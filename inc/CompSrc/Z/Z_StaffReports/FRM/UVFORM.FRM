/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,99 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.8                                                       ║
 ║ Назначение    : Форма :                                                   ║
 ║                 "Сведения об использовании отпусков"                      ║
 ║                                                                           ║
 ║ Ответственный : Мелех Василий Евгеньевич                                  ║
 ║                                                                           ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Форма "Сведения об использовании отпусков"
#end
.set name 'UVFORM'
.hide
.DEFP PA4
.fields
 Дата_Начала
 Дата_Окончания
 ReportLevel: word
.endfields
 Дата_начала_формирования: @@@@@@@@@@
 Дата_окончания_формирования: @@@@@@@@@@
 ReportLevel : ^
.fields
 подразделение_уровень : word
 подразделение
 подразделение_итого
.endfields
.{ UVFORM_MainVacC CheckEnter
^^^
.fields
 fType : word
 TabN
 FIO
 nStruct
 Post
 VacType
 DatVacBegin
 DatVacEnd
 Duration
 DatWrkBegin
 DatWrkEnd

 DisDatePr NeedDays UseDays SummMainder Compensation
.endfields
^
.{ UVFORM_MainVacC2 CheckEnter
^^^^^^^^^^ ^^^^^
.fields
 eVacType
 eDatVacBegin
 eDatVacEnd
 eDuration
 eDatWrkBegin
 eDatWrkEnd
.endfields
.{ UVFORM_EachVacC CheckEnter
^^^^^^
.}
.}
.}
.endform