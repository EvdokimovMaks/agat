/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Автотранспорт                                             ║
 ║ Версия        : 7.1                                                       ║
 ║ Назначение    : Натурный лист                                             ║
 ║ Ответственный : Лисица Наталья Михайловна                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
.set name='Nat_Lst'
.hide
.p 42
.fields
Num_trl KodMarch NameMarch RegDate RegTime BegPunkt EndPunkt
Num_pos NomerTc BegDate BegTime EndDate EndTime Npl SostName MarkaTC
.endfields
^ ^ ^ ^ ^ ^ ^
.{
^ ^ ^ ^ ^ ^ ^ ^ ^
.}

.endform
.linkform 'Nat_Lst_01' prototype is 'Nat_Lst'
.NameInList 'Натурный лист по пути'
.group 'Натурный по пути'
.Defo Landscape
.fields
KodMarch NameMarch RegDate RegTime
Num_pos NomerTc MarkaTC SostName

.endfields
                   НАТУРНЫЙ ЛИСТ
  Составлен     ^  ^
  ^  ^
──────┬───────────────────┬─────────┬─────────┬──────────────────────
Номер │ Номер вагона      │  Род    │  К-во   │ Разметка станции
      │                   │ вагона  │  осей   │ расформирования
──────┴───────────────────┴─────────┴─────────┴──────────────────────
.{
^      ^                    ^                   ^
.}
.endform
.linkform 'Nat_Lst_02' prototype is 'Nat_Lst'
.NameInList 'Натурный лист для поезда'
.group 'Натурный для поезда'
.Defo Landscape
.fields
Num_trl KodMarch NameMarch RegDate RegTime BegPunkt EndPunkt
Num_pos NomerTc MarkaTC SostName

.endfields
                   НАТУРНЫЙ ЛИСТ
                 ПОЕЗДА  ^
  Составлен     ^  ^
  ^  ^
Ст. формирования  ^
Ст. назначения    ^
──────┬───────────────────┬─────────┬─────────┬──────────────────────
Номер │ Номер вагона      │  Род    │  К-во   │ Разметка станции
      │                   │ вагона  │  осей   │ расформирования
──────┴───────────────────┴─────────┴─────────┴──────────────────────
.{
^      ^                    ^                   ^
.}
.endform