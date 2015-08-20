/*
 ╔══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) Корпорация ГАЛАКТИКА, 1996,99                    ║
 ║ Проект        : ГАЛАКТИКА                                                ║
 ║ Система       : Оперативный контур                                       ║
 ║ Версия        : 5.70                                                     ║
 ║ Назначение    : Печать типов документов                                  ║
 ║ Ответственный : Скороход Димтрий Владимирович (SDV)                      ║
 ╚══════════════════════════════════════════════════════════════════════════╝
*/
.set name='gWayDoc'
.hide
.fields
  _Title _High _Tree _Code _Name _Pans _Sari _Vest
.endfields
^
.{ CheckEnter gWayDoc_Loop1
^^^^^^^
.}
.endform

/*
.linkform 'gWayDoc_01' prototype is 'gWayDoc'
.NameInList 'Линейный отчет с состояниями'
.Group 'Линейные'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Title _Code _Name _Pans _Sari _Vest
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
───────────┬────────────────────────────────────┬─┬─┬─
    Код    │          Наименование              │ │ │
───────────┴────────────────────────────────────┴─┴─┴─
.{ CheckEnter gWayDoc_Loop1
@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^ ^ ^
.}
.endform
*/

/*.Group 'Линейные'*/
.linkform 'gWayDoc_02' prototype is 'gWayDoc'
.NameInList 'Линейный отчет краткий'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Title _Code _Name
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
─────────────┬────────────────────────────────────────
     Код     │              Наименование
─────────────┴────────────────────────────────────────
.{ CheckEnter gWayDoc_Loop1
@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform

/*
.linkform 'gWayDoc_03' prototype is 'gWayDoc'
.NameInList 'Иерархический отчет с состояниями'
.Group 'Иерархические'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Title _Tree _Name _Pans _Sari _Vest
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
───────────────┬────────────────────────────────────┬─┬─┬─
      Код      │          Наименование              │ │ │
───────────────┴────────────────────────────────────┴─┴─┴─
.{ CheckEnter gWayDoc_Loop1
@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ^ ^ ^
.}
.endform
*/

/*
.linkform 'gWayDoc_04' prototype is 'gWayDoc'
.NameInList 'Иерархический отчет краткий'
.Group 'Иерархические'
.fields
  CommonFormHeader
.endfields
^
.fields
   _Title _Tree _Name
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
─────────────────┬────────────────────────────────────────
       Код       │              Наименование
─────────────────┴────────────────────────────────────────
.{ CheckEnter gWayDoc_Loop1
@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform
*/