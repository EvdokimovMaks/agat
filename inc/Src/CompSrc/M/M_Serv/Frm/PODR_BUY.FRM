/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Производство                                              ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Отчеты-По реализации-В разрезе заказов                    ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

.Set Name = 'Podr_Buy'
.NameInList 'Базовая форма'
.hide
.fields
field_DATE1 field_DATE2 fields_SPICE

NDEName

Name_Podrazd

Number_Akt OT_DATE Sost_Akt
ValName

Type_Tov Name_Tov Ed_Izm Kolvo ValPrice NDEPrice ValStoimost NDEStoimost

NDESumma_Itogo_Akt

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields

 ^ ^ ^
 ^
.{ CheckEnter lpDeps
 ^
.{ CheckEnter lpDocs
 ^ ^ ^
 ^
.{ CheckEnter lpObject
 ^ ^ ^ ^ ^ ^ ^ ^
.}
 ^
.}
 ^
.}
 ^
.endform

.linkform 'Podr_Buy_01' prototype is Podr_Buy
.NameInList 'ЗАЯВКИ НА ОБСЛУЖИВАНИЕ'
.defo landscape
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Number_Akt OT_DATE Sost_Akt
ValName NDEName  ValName NDEName
Type_Tov Name_Tov Ed_Izm Kolvo ValPrice NDEPrice ValStoimost NDEStoimost

NDESumma_Itogo_Akt

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields
 ^

              ВЕДОМОСТЬ ПО ЗАЯВКАМ НА ОБСЛУЖИВАНИЕ

 За период: c ^ по ^ ^
.{ CheckEnter lpDeps
 Куда: ^
.{ CheckEnter lpDocs
 По заказу ^ от ^ ^
─────┬─────────────────────────┬──────────┬─────────┬───────────────────────────┬───────────────────────────
 Тип │ Наименование            │ Ед. изм. │ Кол-во  │           Цена            │         Стоимость
     │                         │          │         ├─────────────┬─────────────┼─────────────┬─────────────
     │                         │          │         │ в @~@@@@@@  │ в @~@@@@@@  │ в @~@@@@@@  │ в @~@@@@@@
─────┴─────────────────────────┴──────────┴─────────┴─────────────┴─────────────┴─────────────┴─────────────
.{ CheckEnter lpObject
  @@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}
                                                                     Итого по заказу на сумму: &'&&&&&&&&.&&
.}
                                                              Итого по подразделению на сумму: &'&&&&&&&&.&&
.}
────────────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                  Итого по ведомости на сумму: &'&&&&&&&&.&&
.endform
.linkform 'Podr_Buy_02' prototype is Podr_Buy
.NameInList 'ЗАЯВКИ НА ОБСЛУЖИВАНИЕ (НДЕ)'
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

NDEName NDEName

Name_Podrazd

Number_Akt OT_DATE Sost_Akt

Type_Tov Name_Tov Ed_Izm Kolvo NDEPrice NDEStoimost

NDESumma_Itogo_Akt

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields
 ^

              ВЕДОМОСТЬ ПО ЗАЯВКАМ НА ОБСЛУЖИВАНИЕ

 За период: c ^ по ^ ^
─────┬─────────────────────────┬──────────┬─────────┬─────────────┬─────────────
 Тип │ Наименование            │ Ед. изм. │ Кол-во  │ Цена        │ Стоимость
     │                         │          │         ├─────────────┼─────────────
     │                         │          │         │ в @~@@@@@@  │ в @~@@@@@@
─────┴─────────────────────────┴──────────┴─────────┴─────────────┴─────────────
.{ CheckEnter lpDeps
 Куда: ^
.{ CheckEnter lpDocs
 По заказу ^ от ^ ^
.{ CheckEnter lpObject
  @@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&.&&& &'&&&&&&&&.&& &'&&&&&&&&.&&
.}
                                         Итого по заказу на сумму: &'&&&&&&&&.&&
.}
                                  Итого по подразделению на сумму: &'&&&&&&&&.&&
.}
────────────────────────────────────────────────────────────────────────────────
                                      Итого по ведомости на сумму: &'&&&&&&&&.&&
.endform