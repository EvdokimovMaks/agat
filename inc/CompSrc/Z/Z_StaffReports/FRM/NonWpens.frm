/*
                      (c) 1994,2003 корпорация ГАЛАКТИКА
  Проект        : ГАЛАКТИКА
  Система       : Управление персоналом
  Назначение    : Отчёт о неработающих пенсионерах с группировкой по типам стажа
                  и периодам работы
  Ответственный : Артамонов Дмитрий Сергеевич
  Параметры     : нет
*/

#doc
Отчёт о неработающих пенсионерах с группировкой по типам стажа
и периодам работы
#end
.form PensionData
.hide
.fields
NaimFirm
reportDate
fundname
AllQuantity
NonGetSpecPens
GetSpecPens
SpecField
NumSpec
Np
SeniorityName
TypeQuantity
Seniorityperiod
SeniorityQuantity
.endfields
^^^^^^
.{ PensionData_Cycle checkenter
^^
.{ PensionData_TypeSenior checkenter
 ^ ^ ^
.{ PensionData_Srenior    checkenter
 @@@@@ ^
.}
.}
.}
.endform