/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Производство                                              ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Отчеты-По отпуску МЦ-Для ремонта-В разрезе заказов        ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

.Set Name = 'MC_InPod'
.NameInList 'Базовая форма'
.hide
.fields
field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Name_Sklad
Number_TTN OT_DATE

Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_TTN

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields

 ^ ^ ^
.{ CheckEnter lpRepOutDep
 ^
.{ CheckEnter lpRepOutDepDoc
 ^
 ^ ^
.{ CheckEnter lpRepOutDepObj
 ^ ^ ^ ^ ^
.}
 ^
.}
 ^
.}
 ^
.endform

.linkform 'MC_InPod_01' prototype is MC_InPod
.NameInList 'ОТПУЩЕННЫЕ МЦ ДЛЯ РЕМОНТА'
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Name_Sklad
Number_TTN OT_DATE

Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_TTN

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields
^

        ВЕДОМОСТЬ ОТПУЩЕННЫХ МЦ ДЛЯ РЕМОНТА

За период: c ^ по ^ ^
──────────────────────────────┬──────────┬─────────┬─────────────┬──────────────
 Наименование МЦ              │ Ед. изм. │ Кол-во  │ Цена        │ Стоимость
                              │          │         │ учетная     │
──────────────────────────────┴──────────┴─────────┴─────────────┴──────────────
.{ CheckEnter lpRepOutDep
 Куда  : ^
.{ CheckEnter lpRepOutDepDoc
 Откуда: ^
 По накладной ^ от ^
.{ CheckEnter lpRepOutDepObj
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}
                                     Итого по накладной на сумму: &'&&&&&&&&.&&
.}
                                 Итого по подразделению на сумму: &'&&&&&&&&.&&

.}
────────────────────────────────────────────────────────────────────────────────
                                     Итого по ведомости на сумму: &'&&&&&&&&.&&
.endform