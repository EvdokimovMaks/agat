/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994, 2001 корпорация ГАЛАКТИКА                   ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный контур                                        ║
 ║ Версия        : 7.1                                                       ║
 ║ Назначение    : Отчет "Справка о финансировании строительства объекта"    ║
 ║ Ответственный : Полежай Алексей Геннадьевич                               ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Отчет "Справка о финансировании строительства объекта"
#end
.form 'uksFinRe'
.hide
.fields
  nameObject: string //название объекта строительства
  nameContr : string //название подрядчика
  dateRep   : date   //дата формирования отчета
.endfields
123
^^^
.{checkenter dogCycle
.fields
  typeDog: word   //вид договора
  nameDog: string //название договора
  numDog : string //номер договора
  dateDog: date   //дата договора
  naznDog: string //назначение
.endfields
12345
^^^^^
.{checkenter docCycle
.fields
  dateSf: date   //дата СФ
  numSf : string //номер СФ
  nameSf: string //предмет счета
  sumSf : double //сумма по СФ

  datePlat: date   //дата оплаты
  numPlat : string //номер платежа
  namePlat: string //тип платежа
  sumPlat : double //сумма по платежу
  sum2Plat: double //сумма по платежу

  naznDoc: string //назначение
.endfields
1234567890
^^^^^^^^^^
.} //docCycle
.} //dogovorCycle
.endform