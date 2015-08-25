/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 5.7                                                       ║
 ║ Назначение    : Автотранспорт                                             ║
 ║ Ответственный : Медведь Наталья Леонидовна                                ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Ost_Topl'
.Group 'Avto'
.Group 'Rail'
.hide
.fields
 Predpr
 NumAkt
 DatAkt

 PutLstNRec
 AktsostNRec
 OsttoplNRec

 CPost CFIO
 zpt
 NameToplivo
 MarkaAvt2 GosNmbr2
 ItgToplivo sItgToplivo ItgProbeg sItgProbeg ItgMoto sItgMoto
 Npp MarkaAvt GosNmbr GarNmbr FIO VolInBak: double CountInBak: double
 Prim Npl DatObrpl CountInBakPl: double

 PLSpeedExi density
 PutGsm1 PutGsm2 PutGsm3
 Col_Bak1 Col_Bak2 Col_Bak3
 NameToplivo1
 NameToplivo2
 NameToplivo3
 Speed bak1 bak2 bak3
 ItgNameTopl ItgKolTopl ItgKolToplPl
 CommissPost CommissFIO
.endfields
.{
^
^
^

^ ^ ^

 .{.?GroupCOstTopl;^ ^.}
 .{.?GroupSpOstTopl;^ ^ ^ ^ ^ ^ ^ ^ ^ ^.}
.{

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^

.}
.{
^ ^ ^
.}
.if flCommis
Члены комиссии:
.{
^ ^
.}
.end
.}
.endform

.linkform 'Ost_Topl01' prototype is 'Ost_Topl'
.NameInList 'Акт(ы) в формате ТЕКСТ'
.Group 'Avto'
.fields
 Predpr
 NumAkt
 DatAkt
 Npp MarkaAvt GosNmbr GarNmbr FIO VolInBak CountInBak NPl DatObrpl CountInBakPl Prim
 ItgNameTopl ItgKolTopl ItgKolToplPl
 CommissPost CommissFIO
.endfields
.{
^

                                Акт № ^
                снятия остатков топлива в баках автомобилей
                               на ^
 .{.?GroupCOstTopl; .}
 .{.?GroupSpOstTopl; .}

───┬────────────┬───────────┬─────────┬────────────────┬────────┬────────┬─────────┬───────────┬────────┬─────────┬───────
 № │  Марка     │   Гос.    │Гаражный │    ФИО         │Емкость │Факт.   │  Номер  │   Дата    │Факт.   │Роспись  │Прим.
   │автомобиля  │  номер    │ номер   │  водителя      │ баков  │кол-во  │   ПЛ    │  выписки  │кол-во  │водителя │
   │            │           │         │                │        │в баках │         │    ПЛ     │по ПЛ   │         │
───┴────────────┴───────────┴─────────┴────────────────┴────────┴────────┴─────────┴───────────┴────────┴─────────┴───────
.{
@@@ @@@@@@@@@@@  @@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& &#&&&.&& @@@@@@@@ @@@@@@@@@@  &#&&&.&&           ^
.}
Итого по видам топлива:
.{
                             @@@@@@@@@@@@@@@@@@@@@@@@@@        &&#&&&&&.&&                    &#&&&&&.&
.}
.if flCommis
Члены комиссии:
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ _______________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end

.}
.endform

.linkform 'Ost_Topl03' prototype is 'Ost_Topl'
.NameInList 'Акт(ы) в формате ТЕКСТ'
.Group 'Rail'
.fields
 Predpr
 NumAkt
 DatAkt
 Npp MarkaAvt GosNmbr GarNmbr FIO VolInBak NPl DatObrpl CountInBak Prim
 ItgNameTopl ItgKolTopl
 CommissPost CommissFIO
.endfields
.{
^

                                Акт № ^
                снятия остатков топлива в баках ТС
                               на ^
 .{.?GroupCOstTopl; .}
 .{.?GroupSpOstTopl; .}

───┬────────────┬───────────┬─────────┬────────────────┬────────┬─────────┬───────────┬────────┬─────────┬───────
 № │  Марка     │ Бортовой  │Заводской│    ФИО         │Емкость │  Номер  │   Дата    │Факт.   │Роспись  │Прим.
   │    ТС      │  номер    │  номер  │  водителя      │ баков  │   РЛ    │  выписки  │кол-во  │водителя │
   │            │           │         │                │        │         │    РЛ     │в баках │         │
───┴────────────┴───────────┴─────────┴────────────────┴────────┴─────────┴───────────┴────────┴─────────┴───────
.{
@@@ @@@@@@@@@@@  @@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@ &#&&&&.&& @@@@@@@@ @@@@@@@@@@  &#&&&.&&           ^
.}
Итого по видам топлива:
.{
                             @@@@@@@@@@@@@@@@@@@@@@@@@@                              &&#&&&&&.&&
.}
.if flCommis
Члены комиссии:
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ _______________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.end
.}
.endform
