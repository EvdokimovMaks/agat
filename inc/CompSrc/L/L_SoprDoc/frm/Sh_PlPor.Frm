/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Управление закупками                                      ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Отчеты-Контроль товарных запасов-Сверхнормативы           ║
 ║ Ответственный : Журбенко Юрий Иванович (YURI)                             ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Отчеты-Контроль товарных запасов-Сверхнормативы
#end
.Set Name='Sh_PlPor'
.NameInList 'Базовая форма'
.Hide
.Fields
 FlgDate Flg0 Flg1 Flg2 Flg3 Flg4 Flg5 FlgSort
 NRecPlPor   NPl DatePl OrgNameFil
 NRecBaseDoc NDO DateDO OrgNameDO SummDO SummDOPl ValDO
 IsVal SummPl ValPl SummPlV ValPlV
.EndFields
  ^^^^^^^^
.{
  ^^^^
.{
  ^^^^^^^
.}
  ^^^^^
.}
.EndForm

#doc
Реестр сформированных платежей
#end
.LinkForm 'Sh_PlPor_01' Prototype Is Sh_PlPor
.NameInList 'Реестр сформированных платежей'
.Fields
 CommonFormHeader
 FlgDate Flg0 Flg1 Flg2 Flg3 Flg4 Flg5 FlgSort
 NPl DatePl OrgNameFil
 NDO DateDO OrgNameDO SummDO ValDO SummDOPl ValDO
.EndFields
.{?Internal;IsVal='0'
.Fields
 SummPl ValPl
.EndFields
.} // ?Internal
.{?Internal;IsVal='1'
.Fields
 SummPl ValPl SummPlV ValPlV
.EndFields
.} // ?Internal
 ^
                        Реестр сформированных платежей:
 Параметры:
  Группировка ДО:       Платежи на дату ^
  [@] Контрагент
  [@] Валюта
  [@] Собственный банк
  [@] Банк контрагента
  [@] Грузоотправителя
  [@] Грузополучателя
  @@@@@@@@@@@@@@@@@@@@
 ══════════════════════════════════════════════════════════════════════════════
.{
 Платеж @@@@@@@@@@@@@@@@@@@@
 выписан @@@@@@@@@@ Р ^ Рпо документам:
.{
    РНомер @@@@@@@@@@@@@@@@@@@@ от @@@@@@@@@@ Контрагент ^ сумма документа &'&&&&&&&&&&.&& @@@@@@, платежа &'&&&&&&&&&&.&& @@@@@@ Р
.}
.{?Internal;IsVal='0'
 на сумму в НДЕ &'&&&&&&&&&&&&&&&.&& @@@@@@
.} // ?Internal
.{?Internal;IsVal='1'
 на сумму в НДЕ &'&&&&&&&&&&&&&&&.&& @@@@@@ валюте &'&&&&&&&&&&&&&&&&.&& @@@@@@
.} // ?Internal
 ──────────────────────────────────────────────────────────────────────────────
.}
.EndForm
