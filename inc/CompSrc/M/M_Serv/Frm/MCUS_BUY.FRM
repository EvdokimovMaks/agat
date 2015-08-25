/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Производство                                              ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Отчеты-По реализации-В разрезе спецификации               ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

.Set Name = 'MCUs_Buy'
.NameInList 'Базовая форма'
.hide
.fields
field_DATE1 field_DATE2 fields_SPICE

NDEName

Name_Podrazd

Type_Tov Name_Tov

Number_Akt OT_DATE Sost_Akt
ValName
Ed_Izm Kolvo ValPrice NDEPrice ValStoimost NDEStoimost

Kol_Itogo_Tov NDESumma_Itogo_Tov

NDESumma_Itogo_Podrazdel

NDESumma_Itogo_Vedomost
.endfields
 ^ ^ ^
 ^
.{ CheckEnter lpDep
 ^
.{ CheckEnter lpObj
 ^ ^
.{ CheckEnter lpDoc
 ^ ^ ^
 ^
 ^ ^ ^ ^ ^ ^
.}
 ^ ^
.}
 ^
.}
 ^
.endform

.linkform 'MCUs_Buy_01' prototype is MCUs_Buy
.NameInList 'ЗАЯВКИ НА ОБСЛУЖИВАНИЕ'
.defo landscape
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Type_Tov Name_Tov

Number_Akt OT_DATE Sost_Akt
Ed_Izm Kolvo ValPrice ValName NDEPrice NDEName ValStoimost ValName NDEStoimost NDEName

Kol_Itogo_Tov Ed_Izm NDESumma_Itogo_Tov NDEName

NDESumma_Itogo_Podrazdel NDEName

NDESumma_Itogo_Vedomost NDEName
.endfields
 ^

              ВЕДОМОСТЬ ПО ЗАЯВКАМ НА ОБСЛУЖИВАНИЕ

 За период: c ^ по ^ ^
.{ CheckEnter lpDep
 Куда: ^
───────────┬─────────┬─────────────────────────────────────────┬─────────────────────────────────────────
  Ед. изм. │ Кол-во  │                 Цена                    │               Стоимость
───────────┴─────────┴─────────────────────────────────────────┴─────────────────────────────────────────
.{ CheckEnter lpObj
 ^  ^
.{ CheckEnter lpDoc
 По заказу ^ от ^ ^
 @@@@@@@@@@ &&&&&.&&& &'&&&&&&&&.&& @@@@@@ &'&&&&&&&&.&& @@@@@@ &'&&&&&&&&.&& @@@@@@ &'&&&&&&&&.&& @@@@@@
.}
                                     Итого по заказам: &&&&&.&&& @@@@@@@@@@ на сумму &'&&&&&&&&.&& @@@@@@
.}
                                                    Итого по подразделению на сумму: &'&&&&&&&&.&& @@@@@@
.}
─────────────────────────────────────────────────────────────────────────────────────────────────────────
                                                        Итого по ведомости на сумму: &'&&&&&&&&.&& @@@@@@
.endform

.linkform 'MCUs_Buy_02' prototype is MCUs_Buy
.NameInList 'ЗАЯВКИ НА ОБСЛУЖИВАНИЕ (НДЕ)'
.fields
CommonFormHeader
field_DATE1 field_DATE2 fields_SPICE

Name_Podrazd

Type_Tov Name_Tov

Number_Akt OT_DATE Sost_Akt
Ed_Izm Kolvo NDEPrice NDEName NDEStoimost NDEName

Kol_Itogo_Tov Ed_Izm NDESumma_Itogo_Tov NDEName

NDESumma_Itogo_Podrazdel NDEName

NDESumma_Itogo_Vedomost NDEName
.endfields
 ^

              ВЕДОМОСТЬ ПО ЗАЯВКАМ НА ОБСЛУЖИВАНИЕ

 За период: c ^ по ^ ^
.{ CheckEnter lpDep
 Куда: ^
───────────┬─────────┬────────────────────┬────────────────────
  Ед. изм. │ Кол-во  │        Цена        │     Стоимость
───────────┴─────────┴────────────────────┴────────────────────
.{ CheckEnter lpObj
 ^  ^
.{ CheckEnter lpDoc
 По заказу ^ от ^ ^
 @@@@@@@@@@ &&&&&.&&& &'&&&&&&&&.&& @@@@@@ &'&&&&&&&&.&& @@@@@@
.}
Итого по заказам: &&&&&.&&& @@@@@ на сумму &'&&&&&&&&.&& @@@@@@
.}
          Итого по подразделению на сумму: &'&&&&&&&&.&& @@@@@@
.}
───────────────────────────────────────────────────────────────
              Итого по ведомости на сумму: &'&&&&&&&&.&& @@@@@@
.endform