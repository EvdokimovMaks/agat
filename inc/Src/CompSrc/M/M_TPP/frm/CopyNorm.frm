//------------------------------------------------------------------------------
//                                                      (c) корпорация ГАЛАКТИКА
// ГАЛАКТИКА 7.11 - Производственное планирование
// Результат копирования маршрутных карт в спецификации
//------------------------------------------------------------------------------

#doc
Базовая форма 'Результат копирования маршрутных карт в спецификации'</brief>
#end

.form CopyNorm
.HIDE
.FIELDS
PositionType
ResourceType
ResourceCategory
ResourceDescript
CopyType
sString
.ENDFIELDS

РЕЗУЛЬТАТ КОПИРОВАНИЯ МАРШРУТНЫХ КАРТ В СПЕЦИФИКАЦИИ
^^^^^
.{
^
.}
.endform

.LINKFORM CopyNorm01 PROTOTYPE IS CopyNorm
.NameInList "Результат копирования маршрутных карт в спецификацию"
.fields
PositionType
ResourceType
ResourceCategory
ResourceDescript
CopyType
sString
.endfields

РЕЗУЛЬТАТ КОПИРОВАНИЯ МАРШРУТНЫХ КАРТ В СПЕЦИФИКАЦИИ

КОПИРУЕМЫЕ ДАННЫЕ
 ВИД       : ^
 ТИП       : ^
 КАТЕГОРИЯ : ^
 ХАPАК-KA  : ^
 ПАРАМЕТРЫ : ^
.{
 ^
.}
.EndForm