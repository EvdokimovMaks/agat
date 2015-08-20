/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Производство                                              ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Отчеты-О выполненых работах в подразделении               ║
 ║                       -В разрезе исполнителей                             ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.Set Name = 'Serv_FIO'
.NameInList 'Базовая форма'
.hide
.fields

field_DATE1 field_DATE2 fields_SPICE

Name_Ispolnitel

Number_Akt Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_Ispolnitel

NDESumma_Itogo_Vedomost
.endfields

 ^ ^ ^
.{ CheckEnter lpRepIsp
 ^
.{ CheckEnter lpRepIspObj
 ^ ^ ^ ^ ^ ^
.}
 ^
.}
 ^
.endform

.linkform 'Serv_FIO_01' prototype is Serv_FIO
.NameInList 'ВЫПОЛНЕНHЫE РАБОТЫ'
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

Name_Ispolnitel

Number_Akt Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_Ispolnitel

NDESumma_Itogo_Vedomost
.endfields
 ^

        ВЕДОМОСТЬ ВЫПОЛНЕННЫХ РАБОТ

За период: c ^ по ^ ^
────────┬─────────────────────────┬──────────┬─────────┬─────────────┬─────────────
 Номер  │ Наименование            │ Ед. изм. │ Кол-во  │ Цена        │ Стоимость
 акта   │                         │          │         │ учетная     │
────────┴─────────────────────────┴──────────┴─────────┴─────────────┴─────────────
.{ CheckEnter lpRepIsp
 Исполнитель: ^
.{ CheckEnter lpRepIspObj
 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}
                                       Всего по исполнителю на сумму: &'&&&&&&&&.&&

.}
───────────────────────────────────────────────────────────────────────────────────
                                         Итого по ведомости на сумму: &'&&&&&&&&.&&
.endform