/*
 ╔══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) Корпорация ГАЛАКТИКА, 1996,99                    ║
 ║ Проект        : ГАЛАКТИКА                                                ║
 ║ Система       : Модуль Договора                                          ║
 ║ Версия        : 5.70                                                     ║
 ║ Назначение    : Печать типов документов                                  ║
 ║ Ответственный : Скороход Димтрий Владимирович (SDV)                      ║
 ╚══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Печать типов документов
#end
.set name='MouldAir'
.hide
.fields
  _High _Tree _Code _Name _Niece _Widow _Uncle
.endfields
.{ CheckEnter MouldAir_Loop1
^^^^^^^
.}
.endform

#doc
Линейные
Линейный отчет с состояниями
#end
.linkform 'MouldAir_01' prototype is 'MouldAir'
.NameInList 'Линейный отчет с состояниями'
.Group 'Линейные'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Code _Name _Niece _Widow _Uncle
.endfields
                    Типы документов
───────────┬────────────────────────────────────┬─┬─┬─
    Код    │          Наименование              │ │ │
───────────┴────────────────────────────────────┴─┴─┴─
.{ CheckEnter MouldAir_Loop1
@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^ ^ ^
.}
.endform

#doc
Линейные
Линейный отчет краткий
#end
.linkform 'MouldAir_02' prototype is 'MouldAir'
.NameInList 'Линейный отчет краткий'
.Group 'Линейные'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Code _Name
.endfields
                    Типы документов
─────────────┬────────────────────────────────────────
     Код     │              Наименование
─────────────┴────────────────────────────────────────
.{ CheckEnter MouldAir_Loop1
@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform

#doc
Иерархические
Иерархический отчет с состояниями
#end
.linkform 'MouldAir_03' prototype is 'MouldAir'
.NameInList 'Иерархический отчет с состояниями'
.Group 'Иерархические'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Tree _Name _Niece _Widow _Uncle
.endfields
                    Типы документов
───────────────┬────────────────────────────────────┬─┬─┬─
      Код      │          Наименование              │ │ │
───────────────┴────────────────────────────────────┴─┴─┴─
.{ CheckEnter MouldAir_Loop1
@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^ ^ ^
.}
.endform

#doc
Иерархические
Иерархический отчет краткий
#end
.linkform 'MouldAir_04' prototype is 'MouldAir'
.NameInList 'Иерархический отчет краткий'
.Group 'Иерархические'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Tree _Name
.endfields
                    Типы документов
─────────────────┬────────────────────────────────────────
       Код       │              Наименование
─────────────────┴────────────────────────────────────────
.{ CheckEnter MouldAir_Loop1
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform