/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,98 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       :                                                           ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Печать внутреннего штрих-кода к КУТ                       ║
 ║ Ответственный : Пасовец Александр (Sandy)                                 ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Печать внутреннего штрих-кода к КУТ
#end
.Set Name='BCrtf'
.NameInList 'Печать внутреннего штрих-кода к КУТ'
.hide
.var
  prnLogo        :boolean;
  prnNameOrg     :boolean;
  prnNameMC      :boolean;
  prnShtrihKod   :boolean;
  prnPriceRozn   :boolean;
  prnNalogProd   :boolean;
  prnPriceRealiz :boolean;
  prnKontr       :boolean;
.endvar
.fields
  CennikParams : word
  dateprih : string
  nomnakl  : string
  tOrgY    : string
  MyOrgY   : string
  tName    : string
  BarKod   : string
  edIzm    : string
  rPrice   : double
  sNalog   : double
  pPrice   : double
  NameCode : string
  DateCode : string
  TimeCode : string
  sh       : string
  SVal     : string
  kontr    : string
.endfields
.{
Параметры Ценника ^
Дата прихода: ^
Номер накладной ^
Организация: ^ ^
Товар: ^
Баркод: ^
ЕдИзм: ^
Цена розничная: ^
Налог с продажи: ^
Цена реализации: ^
Дата печати: ^
Время печати: ^
Пользователь: ^
Штрих код: ^
Символ валюты: ^
Поставщик: ^
---------------------------------------------
.}
.endform
