//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 8.10 - Справочник шаблонов вариантов смет
// отчет
//********************************************************************************

#doc
Просмотр каталога Шаблона вариантов смет
#end
.set name='ListModelSmeta'
.hide
.{ InfoModelSmeta CheckEnter
.fields
 NameModelSmeta
 AlgoritmName
.endfields
 ^ ^
.{ InfoSpModelSmeta CheckEnter
.fields
 NameStZatr
 TypewLook
 TypewFOT
.endfields
 ^ ^ ^
.}
.}
.endform
!
!
!
#doc
Просмотр каталога Шаблона вариантов смет
#end
.linkform 'ListModelSmeta01' prototype is 'ListModelSmeta'
.nameinlist 'Список шаблонов вариантов смет'

                                БСписок шаблонов вариантов смет Б
.{ InfoModelSmeta CheckEnter
.fields
 NameModelSmeta
 AlgoritmName
.endfields
  БНаименование шаблона: Б @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  БАлгоритм: Б             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     ЖСтатьи затрат  Ж                                                ЖДоступ Ж    ЖВлияние на ФОТ Ж
.{ InfoSpModelSmeta CheckEnter
.fields
 NameStZatr
 TypewLook
 TypewFOT
.endfields
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@   @@@@@@
.}
 ──────────────────────────────────────────────────────────────────────────────
.}
.endform