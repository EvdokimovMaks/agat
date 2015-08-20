/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Производство                                              ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Отчеты-О выполненых работах в подразделении               ║
 ║                       -В разрезе подразделений                            ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.Set Name = 'Serv_Pod'
.NameInList 'Базовая форма'
.hide
.fields

field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Name_GroupUsl

Number_Akt Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_Group

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields

 ^ ^ ^
.{ CheckEnter lpRepDep
 ^
.{ CheckEnter lpRepDepGrp
 ^
.{ CheckEnter lpRepDepObj
 ^ ^ ^ ^ ^ ^
.}
 ^
.}
 ^
.}
 ^
.endform

.linkform 'Serv_Pod_01' prototype is Serv_Pod
.NameInList 'ВЫПОЛНЕНHЫE РАБОТЫ'
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Name_GroupUsl

Number_Akt Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_Group

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields
 ^

        ВЕДОМОСТЬ ВЫПОЛНЕННЫХ РАБОТ

За период: c ^ по ^ ^
────────┬─────────────────────────┬──────────┬─────────┬─────────────┬─────────────
 Номер  │ Наименование            │ Ед. изм. │ Кол-во  │ Цена        │ Стоимость
 акта   │                         │          │         │ учетная     │
────────┴─────────────────────────┴──────────┴─────────┴─────────────┴─────────────
.{ CheckEnter lpRepDep
 Подразделение: ^
.{ CheckEnter lpRepDepGrp
 Группа услуг : ^
.{ CheckEnter lpRepDepObj
 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}
                                            Всего по группе на сумму: &'&&&&&&&&.&&
.}
                                     Всего по подразделению на сумму: &'&&&&&&&&.&&

.}
───────────────────────────────────────────────────────────────────────────────────
                                         Итого по ведомости на сумму: &'&&&&&&&&.&&
.endform