/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный контур                                        ║
 ║ Версия        : 7.11                                                      ║
 ║ Назначение    : Сводный отчет по выполнению смет                          ║
 ║ Ответственный : Шишов Виктор Васильевич (ShV)                             ║
 ║ Параметры     : Нет                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Сводный отчет по выполнению смет
#end
.set name='RepSmetSvod'
.Hide
.Fields

//---------------------------------------------
Filter_Name                : String //наименование фильтра
Filter_ZnNRec              : comp   //NRec значения фильтра
Filter_ZnName              : String //наименование значения фильтра
//---------------------------------------------
RepVal                     : String //валюта отчета
//--итоговая строка (10)
IT01                       : double
IT02                       : double
IT03                       : double
IT04                       : double
IT05                       : double
IT06                       : double
IT07                       : double
IT08                       : double
IT09                       : double
IT10                       : double
//--строка по ресурсу (18)
Res01                      : String //1 --номер сметы
Res02                      : String //2 --№ поз. по смете
Res03                      : String //3 --наименование ресурса
Res04                      : String //--ед.изм.
Res05                      : double //кол-во
Res06                      : double //цена
Res07                      : double //сумма
Res08                      : String //9 --код затрат
Res09                      : String //--участок

Res10                      : double
Res11                      : double
Res12                      : double
Res13                      : double
Res14                      : double
Res15                      : double
Res16                      : double
Res17                      : double
Res18                      : double

//--строка по документам (49)
//---- оплаты (15)
DocOplatTable              : word   //co<Спецификация док-та>
DocOplatVip                : word   //<Вид документа>
DocOplatSpRec              : comp   //<Спецификация док-та>.NRec
DocOplat01                 : string //11
DocOplat02                 : string //12
DocOplat03                 : string //13
DocOplat04                 : string //14
DocOplat05                 : string //15
DocOplat06                 : string //16
DocOplat07                 : string //17 - ед.изм.
DocOplat08                 : double //=Кол-во
DocOplat09                 : double //=Цена
DocOplat10                 : double //=Сумма
DocOplat11                 : string //21 - код затрат
DocOplat12                 : string //22 - участок
//---- приходы (11)
DocPrihTable               : word   //co<Спецификация док-та>
DocPrihVip                 : word   //<Вид документа>
DocPrihSpRec               : comp   //<Спецификация док-та>.NRec
DocPrih01                  : string //24
DocPrih02                  : string //25
DocPrih03                  : string //26 - Номер
DocPrih04                  : string //
DocPrih05                  : string //
DocPrih06                  : double //=Кол-во
DocPrih07                  : double //=Цена
DocPrih08                  : double //=Сумма
//---- передача (11)
DocTranTable               : word   //co<Спецификация док-та>
DocTranVip                 : word   //<Вид документа>  = 210/229/110(только для собственной орг)
DocTranSpRec               : comp   //<Спецификация док-та>.NRec
DocTran01                  : string //33
DocTran02                  : string //34 - Номер
DocTran03                  : string //
DocTran04                  : string //
DocTran05                  : double //=Кол-во
DocTran06                  : double //=Цена
DocTran07                  : double //=Сумма
DocTran08                  : double //
//---- выполнено/списано (12)
DocSpisTable               : word   //co<Спецификация док-та>
DocSpisVip                 : word   //<Вид документа>
DocSpisSpRec               : comp   //<Спецификация док-та>.NRec
DocSpis01                  : string //
DocSpis02                  : string //
DocSpis03                  : double //=Кол-во
DocSpis04                  : double //=Цена
DocSpis05                  : double //=Сумма
DocSpis06                  : string //47 -номер АВР
DocSpis07                  : string //48
DocSpis08                  : string //49 - Код затрат
DocSpis09                  : string //

.EndFields
//---Фильтры---
.{
^
.{
^^
.}
.}
//--End-Фильтры
^
^^^^^^^^^^ //итоговая строка (10)
.{
^^^^^^^^^ ^^^^^^^^^ //строка по ресурсу (18)
.{
^^^^^^^^^^^^^^^ //оплаты   (15)
^^^^^^^^^^^     //приходы  (11)
^^^^^^^^^^^     //передача (11)
^^^^^^^^^^^^    //списано  (12)
.}
.}


.EndForm
