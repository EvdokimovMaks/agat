//******************************************************************************
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Ядро
// Внешние процедуры и функции из G_Common.dll
//******************************************************************************

//------------------------------------------------------------------------------
// GalName.pas
#ifNdef Gal8_1
!!! Не публиковать эти функции ни при каких обстоятельствах в 8.1 и выше [Gera]
function  GetTiDkGalName      (Word)                  : String;  external 'G_Common.dll';
function  GetVidBaseDocName   (Word)                  : String;  external 'G_Common.dll';
#end
//------------------------------------------------------------------------------
// DocBasFn.pas
#doc
  </brief>

  <p>
    Преобразовывает строку с кодировкой OEM в строку с кодировкой ANSI.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Str</code> - исходная строка</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Исходная строка остается неизменной.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строка с кодировкой ANSI.
  </p>
#end
function DocBasFn866to1251(Str: String): String;  external 'G_Common.dll';
#doc
  </brief>

  <p>
    Преобразовывает строку с кодировкой ANSI в строку с кодировкой OEM.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Str</code> - исходная строка</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Исходная строка остается неизменной.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строка с кодировкой OEM.
  </p>
#end
function DocBasFn1251to866(Str: String): String;  external 'G_Common.dll';
#doc
  </brief>

  <p>
    Преобразовывает строку с кодировкой OEM в строку с кодировкой UTF.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Str</code> - исходная строка</li>
    <li><code>Dst</code> - результат конвертирования</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Конвертированная строка будет помещена в Dst.<br>
    Исходная строка при всех операциях остается неизменной.<br>
    Если конвертация прошла успешно функция вернет 0,
    чтобы получить дополнительную информацию об ошибке
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строка с кодировкой UTF.
  </p>
#end
function oem2utf8(Src: String, var Dst: String): Integer; external 'G_Common.dll';
//------------------------------------------------------------------------------
// Rounder.pas
#doc
  </brief>

  <p>
    Округление числа Sum с точностью Discr знаков с учетом NeedRoundAny правил.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - число для округления;</li>
    <li><code>Discr</code> - точность округления;</li>
    <li><code>NeedRoundAny</code> - Правило округления.<br>
     NeedRoundAny может принимать следующие значения:<br>
      0 - Не округлять;<br>
      1 - Применить арифметическое округление с точностью Discr;<br>
      2 - Округлять в большую сторону;<br>
      3 - Спец. алгоритм округления для РБ;<br>
      4 - Округлять в меньшую сторону.<br>
     </li>
  </u>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundAny(Sum: Double, Discr: Double, NeedRoundAny: Word): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Округление числа Sum.<br>
    Точность округления берется из настройки Round.BuyDORub - "Логистика\Документы\Управление снабжением\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.Buy.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub1(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.BuyDOVal - "Логистика\Документы\Управление снабжением\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Round.Buy.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal1(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.SellDORub - "Логистика\Документы\Управление сбытом\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.Sell.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub2(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.SellDOVal - "Логистика\Документы\Управление сбытом\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Round.Sell.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal2(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.PrConsRub - "Логистика\Документы\Прием на консигнацию\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.PrCons.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub3(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.PrConsVal - "Логистика\Документы\Прием на консигнацию\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Round.PrCons.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal3(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.OtpConsRub - "Логистика\Документы\Отпуск на консигнацию\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.OtpCons.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub4(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.OtpConsVal - "Логистика\Документы\Отпуск на консигнацию\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Round.OtpCons.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal4(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.PriceRub - "Логистика\Прайс-листы\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.Price.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub5(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <p>
    Точность округления берется из настройки Round.PriceVal - "Логистика\Прайс-листы\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Round.Price.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal5(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Fin.Round.ProvRub - "Бухгалтерский контур\Курсовые разницы\Правила округления\Округлять в НДЕ до"<br>
    Правило округления берется из настройки Fin.Round.Prov.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub6(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления - 0.01.<br>
    Правило округления берется из настройки Fin.Round.Prov.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal6(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.WoodRub - "Логистика\Управление лесным хозяйством\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.Wood.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRub7(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления - 0.01.<br>
    Правило округления берется из настройки Round.Wood.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundVal7(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.OrderRub - "Логистика\Складской учет\Складские ордера\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.Order.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VidOrd</code> - не используется;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubOrd(VidOrd: Word, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.OrderVal - "Логистика\Складской учет\Складские ордера\..значения в валюте округлять до"<br>
    Правило округления берется из настройки Round.Order.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VidOrd</code> - не используется;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValOrd(VidOrd: Word, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Sklad.Round.DocRub - "Логистика\Складской учет\Сопроводительные документы\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Sklad.Round.Doc.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VidDoc</code> - не используется;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubSklDoc(VidDoc: Word, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Sklad.Round.DocVal - "Логистика\Складской учет\Сопроводительные документы\..значения в валюте округлять до"<br>
    Правило округления берется из настройки Sklad.Round.Doc.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VidDoc</code> - не используется;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValSklDoc(VidDoc: Word, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Sklad.AktIzlish.RoundRub - "Логистика\Складской учет\Сопроводительные документы\Акт об излишках\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Sklad.AktIzlish.Round.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VidDoc</code> - не используется;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubAktIzl(VidDoc: Word, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Sklad.AktIzlish.RoundVal - "Логистика\Складской учет\Сопроводительные документы\Акт об излишках\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Sklad.AktIzlish.Round.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VidDoc</code> - не используется;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValAKTIzl(VidDoc: Word, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.AdvSellRub - "Логистика\Документы\Управление договорами\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Round.AdvSell.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubAdvSell(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Round.AdvSellVal - "Логистика\Документы\Управление договорами\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Round.AdvSell.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число;</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValAdvSell(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки UKS.Doc.AktVR.Round.Rub - "Управление капстроительством\Документы\Акты выполненных работ\..значения в НДЕ округлять до"<br>
    Правило округления берется из настройки UKS.Doc.AktVR.Round.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число;</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubAVR(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки UKS.Doc.AktVR.Round.Val - "Управление капстроительством\Документы\Акты выполненных работ\..значения в валюте округлять до"<br>
    Правило округления берется из настройки UKS.Doc.AktVR.Round.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число;</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValAVR(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Чтение настройки Round.OrderPriceSum.
  </brief>

  <h3>Возвращаемое значение:</h3>
  <p>
    Значение настройки.
  </p>
#end
function TypeRound_Ord: Word; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum, с указанием вида документа и валюты.
  </brief>

  <p>
    Если вид документа равен 0, округление не производится.<br>
    При значении валюты равном 0 производится рублевое округление, в остальных случаях валютное.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>pVidDoc</code> - вид документа;</li>
    <li><code>cVal</code> - вид валюты;</li>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function ValRound(pVidDoc: Word, cVal: Comp, Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Doc.Remont.SoprDocRem.Rub - "Логистика\ТОРО (Техническое обслуживание и ремонт оборудования)\Документы\Общие настройки для всех документов\..значения в НДЕ округлять до".<br>
    Правило округления берется из настройки Doc.Remont.SoprDocRem.Round.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число;</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubSoprRem(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Doc.Remont.SoprDocRem.Val - "Логистика\ТОРО (Техническое обслуживание и ремонт оборудования)\Документы\Общие настройки для всех документов\..значения в валюте округлять до".<br>
    Правило округления берется из настройки Doc.Remont.SoprDocRem.Round.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число;</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValSoprRem(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Rozn.RoundRoznRub - "Логистика\Розничная торговля\..значения в НДЕ округлять до"<br>
    Правило округления берется из настройки Rozn.RBRound.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundRubRozn(Sum: Double): Double; external 'G_Common.dll';
#doc
  <brief>
    Округление числа Sum.
  </brief>

  <p>
    Точность округления берется из настройки Rozn.RoundRoznVal - "Логистика\Розничная торговля\..значения в валюте округлять до"<br>
    Правило округления берется из настройки Rozn.RBRound.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - округляемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат округления.
  </p>
#end
function fRoundValRozn(Sum: Double): Double; external 'G_Common.dll';
//------------------------------------------------------------------------------
#doc
  <brief>
    Преобразование числа в строку.
  </brief>

  <p>
    Точность округления берется из настройки Oper.MinKolMC - "Настройки Галактики\Логистика\Минимальное значение для количества МЦ".
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Kol</code> - конвертируемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат преобразования.
  </p>
#end
function StrKol(Kol: Double): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Преобразование числа Sum в шестнадцатеричную строку.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sum</code> - конвертируемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат преобразования.
  </p>
#end
function DoubleToHex(Sum: Double): String; external 'G_Common.dll';
//------------------------------------------------------------------------------
#doc
  </brief>

  <p>
    Управление видимостью поля.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FldNo</code> - номер поля в логической таблице;</li>
    <li><code>Need</code> - значение видимости.</li>
  </ul>
#end
procedure SetFieldVisible(FldNo: LongInt, need: Boolean); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Управление видимостью поля и его подписью.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FldNo</code> - номер поля в логической таблице;</li>
    <li><code>Need</code> - значение видимости.</li>
  </ul>
#end
procedure SetFieldAndLabelVisible(FldNo: LongInt, need: Boolean); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Управление возможностью выделения поля.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FldNo</code> - номер поля в логической таблице;</li>
    <li><code>Need</code> - значение видимости.</li>
  </ul>
#end
procedure SetFieldSelectable(FldNo: LongInt, need: Boolean); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Управление возможностью изменения поля.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FldNo</code> - номер поля в логической таблице;</li>
    <li><code>Need</code> - значение возможности изменения.</li>
  </ul>
#end
procedure SetFieldProtected(FldNo: LongInt, need: Boolean); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Управление доступностью команды.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Cmd</code> - идентификатор команды;</li>
    <li><code>Need</code> - значение доступности команды.</li>
  </ul>
#end
procedure SetCommandEnabled(Cmd: LongInt, need: Boolean); external 'G_Common.dll';
//------------------------------------------------------------------------------
// Sum2Text.pas
#doc
  </brief>

  <p>
    Возвращает сумму прописью и добавляет имя валюты с кодом CVAL в нужном падеже.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cval</code> - код валюты;</li>
    <li><code>i</code> - сумма.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если CVAL = 0, добавляет нац.валюту.
  </p>
#end
function DoubleToString(cval: Comp, i: Double): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сумму прописью и добавляет имя валюты с кодом CVAL в нужном падеже.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cval</code> - код валюты;</li>
    <li><code>i</code> - сумма.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если CVAL = 0, добавляет нац.валюту.<br>
    Если не делается вывод 1/100 единицы валюты (копеек), то предварительно делается округление суммы до целого значения.
  </p>
#end
function DoubleToStringExt(cval: Comp, i: Double): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сумму прописью и добавляет имя валюты с кодом CVAL в нужном падеже на иностранном языке.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cval</code> - код валюты;</li>
    <li><code>i</code> - сумма.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если CVAL = 0, добавляет нац.валюту.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма прописью с расшифровкой валюты.
  </p>
#end
function DoubleToStringInVal(cval: Comp, i: Double): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сумму прописью c определением рода по строке валюты.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>i</code> - сумма;</li>
    <li><code>st</code> - строка для определения рода.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма прописью.
  </p>
#end
function NumToString(i: Double, st: String): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сумму прописью с режимом отображения копеек.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>isZero</code> - выводить ли нулевые копейки;</li>
    <li><code>Sum_</code> - сумма для вывода прописью.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма прописью.
  </p>
#end
function GetStrSumma(isZero: Boolean, Sum_: Double): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сумму прописью с режимом отображения разделителя тысяч и копеек.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>isZero</code> - выводить ли нулевые копейки;</li>
    <li><code>isDelimit</code> - вставлять разделитель тысяч;</li>
    <li><code>Sum_</code> - сумма для вывода прописью.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма прописью.
  </p>
#end
function GetStrSummaExt(isZero: Boolean, isDelimit: Boolean, Sum_: Double): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сумму прописью с режимом отображения разделителя тысяч и копеек.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>isZero</code> - выводить ли нулевые копейки;</li>
    <li><code>roundIfTrimKop</code> - округлять до целых если отбрасываются копейки;</li>
    <li><code>isDelimit</code> - вставлять разделитель тысяч;</li>
    <li><code>Sum_</code> - сумма для вывода прописью.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма прописью.
  </p>
#end
function GetStrSummaExt2(isZero: Boolean, roundIfTrimKop: Boolean, isDelimit: Boolean, Sum_: Double): String; external 'G_Common.dll';
//------------------------------------------------------------------------------
// GalFuncs.pas
#doc
  </brief>

  <p>
    Возвращает дескриптор пользователя и номер филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Descriptor</code> - дескриптор пользователя;</li>
    <li><code>Number</code> - номер филиала пользователя.</li>
  </ul>
#end
function PrintNumber(Descriptor: String, Number: String): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Общий заголовок для отчетов.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Возвращает строку содержащую текущую дату(DD/MM/YYYY), текущее время(HH:MM),<br>
    имя пользователя в системе и заголовок отчета установленный в настройке HeaderReport.
  </p>
#end
function CommonFormHeader: String; external 'G_Common.dll';
#doc
  <brief>
    Перевод вещественного числа в строку.
  </brief>

  <p>
    Перевод числа d в строку, при этом удаляя по возможности незначащие нули справа, дополняет слева пробелами до длины b.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>d</code> - конвертируемое число;</li>
    <li><code>b</code> - длина результирующей строки.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Максимальная длина 20 символов.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строковое значение числа.
  </p>
#end
function StringNLZ(d: Double, b: Byte): String; external 'G_Common.dll';
#doc
  <brief>
    Перевод вещественного числа в строку.
  </brief>

  <p>
    Перевод числа d в строку, при этом удаляя по возможности незначащие нули справа, дополняет слева пробелами до длины b.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>d</code> - конвертируемое число;</li>
    <li><code>b</code> - длина результирующей строки;</li>
    <li><code>max</code> - максимальное количество символов после запятой.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строковое значение числа.
  </p>
#end
function StringNLZR(d: Double, b: Byte, max: Byte): String; external 'G_Common.dll';
#doc
  <brief>
    Перевод вещественного числа в строку.
  </brief>

  <p>
    Переводит Double в String, при этом если после запятой есть значащие цифры, всегда возвращает max цифр после запятой, иначе - пробелы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>d</code> - конвертируемое число;</li>
    <li><code>b</code> - длина результирующей строки;</li>
    <li><code>max</code> - максимальное количество символов после запятой.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строковое значение числа.
  </p>
#end
function StringNL0(d: Double,b: Byte, max: Byte): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Удаление из строки s всех символов ch.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - исходная строка;</li>
    <li><code>Ch</code> - удаляемый символ.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сформированная строка после удаления символов.
  </p>
#end
function Del_Chr(s: String, Ch: Comp): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Удаление из строки s всех символов строки Del_s.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - исходная строка;</li>
    <li><code>Del_s</code> - строка с удаляемыми символами.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сформированная строка после удаления символов.
  </p>
#end
function Del_Str(S: String, Del_s: String): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Обрезка строки InSt начиная с символа FromChar по ToChar.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>InSt</code> - исходная строка;</li>
    <li><code>FromChar</code> - индекс символа с которого обрезать;</li>
    <li><code>ToChar</code> - строка с удаляемыми символами.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сформированная строка после обрезки.
  </p>
#end
function WordWrap(InSt: String, FromChar: Byte, ToChar: Byte): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает группу слов с порядковым номером GroupNo<br>
    максимальной длиной GroupLen, при этом слова не обрезаются.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sentence</code> - исходная строка;</li>
    <li><code>GroupNo</code> - номер порядковый номер группы;</li>
    <li><code>GroupLen</code> - длинна группы.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Строка с подходящей группой слов.
  </p>
#end
function GroupWrap(Sentence: String, GroupNo: Byte, GroupLen: Byte): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает строку, в которой исходная строка Sentence разбита на фразы максимальный длины.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Sentence</code> - исходная строка;</li>
    <li><code>FirstGroup</code> - начало фразы;</li>
    <li><code>GroupLen</code> - длинна группы.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Возвращает строку, в которой исходная строка Sentence разбита на
    фразы максимальной длины GroupLen начиная с фразы номер FirstGroup,
    при этом слова не обрезаются, а фразы дополняются пробелами справа
    до длины GroupLen.<br> Функция может использоваться для вывода в поле
    формата @@@@ длинной фразы с переносом слов.
  </p>
#end
function GroupWrapStr(Sentence: String, FirstGroup: Byte, GroupLen: Byte): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Inc увеличивает, порядковую переменную переданную ему.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>pfField</code> - инкрементируемое число.</li>
  </ul>
#end
procedure Inc(var pfField: AnyType); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Dec уменьшает, порядковую переменную переданную ему.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>pfField</code> - декрементируемое число.</li>
  </ul>
#end
procedure Dec(var pfField: AnyType); external 'G_Common.dll';
#doc
  <brief>
    Возвращает заголовок текущего интерфейса.
  </brief>
#end
function CurrentInterfaceTitle: String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Преобразует число из десятичной в римскую систему счисления.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>iNum</code> - преобразуемое число.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Число в римской системе счисления.
  </p>
#end
function DecToRoman(iNum: Word): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает имя пользователя без имени домена.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>uName</code> - имя пользователя с доменом.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Имя пользователя без домена.
  </p>
#end
function UserNameMinusDomen(uName: String): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает количество слов в строке, разделенные символами строки WordDelims.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>S</code> - исходная строка;</li>
    <li><code>WordDelims</code> - строка символов разделителей.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Количество слов в строке.
  </p>
#end
function WordCount(S: string, WordDelims: string): byte; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает позицию N-ого слова в строке S, разделенных символами строки WordDelims.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>N</code> - номер слова;</li>
    <li><code>S</code> - исходная строка;</li>
    <li><code>WordDelims</code> - строка символов разделителей.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Позиция указанного слова.
  </p>
#end
function WordPosition(N: byte, S: string, WordDelims: string): byte; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает N-ое слово в строке S, разделенных символами строки WordDelims.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>N</code> - номер слова;</li>
    <li><code>S</code> - исходная строка;</li>
    <li><code>WordDelims</code> - строка символов разделителей.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Возвращает N-ое слово.
  </p>
#end
function ExtractWord(N: byte, S: string, WordDelims: string): string; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Открывает файла/ссылки sUrl в браузере установленным в операционной системе по умолчанию.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sUrl</code> - путь на файл/ссылка;</li>
    <li><code>bUrl</code> - является ли параметр sUrl ссылкой.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Код ошибки.
  </p>
#end
function OpenLink(sUrl: string, bUrl: boolean): integer; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Открывает файла/ссылки sUrl в браузере установленным в операционной системе по умолчанию.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sUrl</code> - путь на файл/ссылка;</li>
    <li><code>bUrl</code> - является ли параметр sUrl ссылкой.</li>
    <li><code>nBrowse</code> - тип бразуера. Может принимать следующие значения:<br>
      cgOpenLinkDefault - браузер по умолчанию из операционной системы;<br>
      cgOpenLinkChromeifSetup - браузер Chrome если нет, то Internet Explorer;<br>
      cgOpenLinkOnlyChrome - только браузер Chrome;<br>
      cgOpenLinkOnlyIE - только браузер Internet Explorer.<br>
    </li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Код ошибки.
  </p>
#end
function OpenLinkEx(sUrl: string, bUrl: boolean, nBrowse: longint): integer; external 'G_Common.dll';

//------------------------------------------------------------------------------
// ImpList.pas
#doc
  </brief>

  <p>
    Создает список реализаций объектного интерфейса ObjInterfaceName, имена которых начинаются с ImplementationNamePrefix
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>ObjInterfaceName</code> - имя объектного интерфейса;</li>
    <li><code>ImplementationNamePrefix</code> - префикс искомых объектов.</li>
    </li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность загрузки списка.
  </p>
#end
function LoadImplementationList(ObjInterfaceName: String, ImplementationNamePrefix: String): Boolean; external 'G_Common.dll';
#doc
  <brief>
    Создает список интерфейсов, имена которых начинаются с NamePrefix.
  </brief>

  <p>Создает список интерфейсов, имена которых начинаются с NamePrefix,<br>
  для ускоренной загрузки списка интерфейсов с уникальным префиксом
  возвращает список имен интерфейсов без префикса.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>NamePrefix</code> - префикс искомых объектов.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если в качестве входных параметров передать пустые строки, в список выгрузятся
    имена всех интерфейсов изо всех подключенных в данный момент ресурсов.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность загрузки списка.
  </p>
#end
function LoadImplementationListByUniquePrefix(NamePrefix: String): Boolean; external 'G_Common.dll';
#doc
  <brief>
    Возвращает количество реализаций в списке.
  </brief>
#end
function GetImplementationCount: Integer; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает имя реализации в списке под номером I.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>I</code> - индекс необходимой реализации(нумерация от 0).</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Имя реализации по номеру.
  </p>
#end
function GetImplementationName(I: Integer): String; external 'G_Common.dll';
#doc
  <brief>
    Освобождает список реализации.
  </brief>
#end
procedure UnLoadImplementationList; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает имя компоненты в которой лежит указанная реализация указанного объектного интерфейса.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>VipInterfaceName</code> - необходимая реализация;</li>
    <li><code>ObjInterfaceName</code> - объектный интерфейс;</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    В случае отсутствия реализации вернет пустую строку.
  </p>
#end
function ExpandInterfaceComponent(ObjInterfaceName: String, VipInterfaceName: String): String ; external 'G_Common.dll';
//------------------------------------------------------------------------------
// OutPath.pas
#doc
  <brief>
    Возвращает путь на каталог содержащий PAT отчеты.
  </brief>
#end
function GetDirectoryPat: String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает путь на Out каталог.
  </p>

  <h3>Замечание</h3>
  <p>
    Если запущен тонкий клиент, то результатом будет - каталог запуска + Out\%User%, иначе - стандартный UserPath.
  </p>
#end
function ExDirectoryOut: String; external 'G_Common.dll';
#ifdef Gal8_1
#doc
  </brief>                            
  <p>
    Возвращает путь на Output каталог.
  </p>
#end
function GetDefaultUserPath: String; external 'G_Common.dll#UserPath';
#doc
  </brief>
  <p>
    Возвращает путь на Output каталог.
  </p>
#end
function UserPathVip: String; external 'G_Common.dll#UserPath';
#else
#doc
  <brief>
    Возвращает путь на Output каталог.
  </brief>
#end
function GetDefaultUserPath: String; external 'G_Common.dll';
#doc
  <brief>
    Возвращает путь на Output каталог.
  </brief>
#end
function UserPathVip: String; external 'G_Common.dll';
#end
//------------------------------------------------------------------------------
// Arr_recs.pas
#doc
  </brief>

  <p>
    Создает новую таблицу без полей и записей, возвращает ее адрес который в дальнейшем
    и используется в качестве TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Raz</code> - наиболее вероятное число записей(выделяется при создании);</li>
    <li><code>Delt</code> - по сколько добавлять, если не хватает.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    При ошибке функция возвращает 0.
  </p>
#end
function TblInitNew(Raz: Longint, Delt: Longint): #TPtr; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Освобождение таблицы TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
procedure TblDeleteTable(TableNum: #TPtr); external 'G_Common.dll';
#doc
  <brief>
    Создание поля с типом ftype в таблице TableNum.
  </brief>

  <p>
    Допустимы все типы из Vip.<br>
    Возвращает результат создания поля.<br>
    Первый раз возвращает 0, все остальные вызовы возвращают 0 в случае ошибки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>ftype</code> - тип создаваемого поля.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Первый раз возвращает 0, все остальные вызовы возвращают 0 в случае ошибки.
  </p>
#end
function TblNewField(TableNum: #TPtr, ftype: byte): Longint; external 'G_Common.dll';
#doc
  <brief>
    Создание поля в таблице TableNum по шаблону поля Fld.
  </brief>

  <p>
    Допустимы все типы из Vip.<br>
    Возвращает результат создания поля.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>ftype</code> - тип создаваемого поля.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Первый раз возвращает 0, все остальные вызовы возвращают 0 в случае ошибки.
  </p>
#end
function TblNewVar(TableNum: #TPtr,var Fld: AnyType): Longint; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Создание ключа на все поля созданные в таблице до этого.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если не будет вызвана, то в ключ войдут все поля.
  </p>
#end
procedure TblEndKey(TableNum: #TPtr); external 'G_Common.dll';
#doc
  <brief>
    Задает возможность добавления одинаковых записей в таблицу TableNum.
  </brief>

  <p>
    Ничего не делает и возвращает False, если таблица не пустая.<br>
    Возвращает результат задания возможности дублирования.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Mode</code> - режим добавления одинаковых записей.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если не будет вызвана, то в ключ войдут все поля.
  </p>
#end
function TblSetDuplicate(TableNum: #TPtr, Mode: Boolean): Boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает результат последней операции.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblLastStatus(TableNum: #TPtr): LongInt; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Заполнение всех полей записи нулями. Возвращает результат очистки буфера.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblClearBuffer(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Удаление всех записей в таблице.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
procedure TblClearAll(TableNum: #TPtr); external 'G_Common.dll';
#doc
  <brief>
    Проверка на существование записи в логической таблице.
  </brief>

  <p>
    Доступны константы с идентификаторами, состоящими из префикса "tn" и имени физической таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblIsValid(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает True, если пользователь уже успел модифицировать текущую запись, False в противном случае.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblIsModified(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  <brief>
    Делает запись данной таблицы валидной.
  </brief>

  <p>
    Возвращает результат успешности задания валидности.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblMakeValid(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  <brief>
    Вставка записи в таблицу со значениями из буфера.
  </brief>

  <p>
    Возвращает результат вставки записи в таблицу.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblInsertCurrent(TableNum: #TPtr): LongInt; external 'G_Common.dll';
#doc
  <brief>
    Изменение текущей записи в таблице.
  </brief>

  <p>
    Возвращает результат модификации записи в таблицу.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblUpDateCurrent(TableNum: #TPtr): LongInt; external 'G_Common.dll';
#doc
  <brief>
    Удаление текущей записи из таблицы.
  </brief>

  <p>
    Возвращает результат удаления записи из таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblDeleteCurrent(TableNum: #TPtr): LongInt; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает количество записей в таблице.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblRecords(TableNum: #TPtr): LongInt; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает текущий номер записи в таблице.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
  </ul>
#end
function TblCurRec(TableNum: #TPtr): LongInt; external 'G_Common.dll';
#doc
  <brief>
    Делает текущей запись с номером Index в таблице TableNum.
  </brief>

  <p>
    Возвращает результат задания текущей записи.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Index</code> - необходимый порядковый номер записи.</li>
  </ul>
#end
function TblGetIndex(TableNum: #TPtr, Index: LongInt): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Переходит к первой строке таблицы TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetFirst(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Переходит к последней строке таблицы TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetLast(TableNaum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Переходит к текущей строке таблицы TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetCurrent(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Переходит к следующей строке таблицы TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetNext(#TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Переходит к предыдущей строке таблицы TableNum.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetPrev(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  <brief>
    Ищет запись в таблице со значениями ключевых полей,
    равными текущим значениям в буфере по любому ключу.
  </brief>

  <p>
    Ключи нумеруются с нуля.<br>
    Константы с именами ключей не доступны.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetEqual(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Ищет запись в таблице со значениями ключевых полей,
    большими текущих значений в буфере.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetGreat(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Ищет запись в таблице со значениями ключевых полей,
    меньшими текущих значений в буфере.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetLess(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Ищет запись в таблице со значениями ключевых полей,
    большими или такими же как текущие значения в буфере.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetGrOrEq(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  <brief>
    Ищет запись в таблице со значениями ключевых полей,
    меньшими или такими же как текущие значения в буфере.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу.</li>
  </ul>
#end
function TblGetLeOrEq(TableNum: #TPtr): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения логического параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFBoolean(TableNum: #TPtr, Offset: LongInt, SetValue: Boolean); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения byte параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFByte(TableNum: #TPtr, Offset: LongInt, SetValue: Byte); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Longint параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFLongint(TableNum: #TPtr, Offset: LongInt, SetValue: Longint); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Integer параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFInteger(TableNum: #TPtr, Offset: LongInt, SetValue: Integer); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Comp параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFComp(TableNum: #TPtr, Offset: LongInt, SetValue: Comp); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Date параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFDate(TableNum: #TPtr, Offset: LongInt, SetValue: Date); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Time параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFTime(TableNum: #TPtr, Offset: LongInt, SetValue: Time); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Single параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFSingle(TableNum: #TPtr, Offset: LongInt, SetValue: Single); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения Double параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFDouble(TableNum: #TPtr, Offset: LongInt, SetValue: Double); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Установка значения String параметра в буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
    <li><code>SetValue</code> - значение которое необходимо записать.</li>
  </ul>
#end
procedure TblSFString(TableNum: #TPtr, Offset: LongInt, SetValue: String); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Boolean параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFBoolean(TableNum: #TPtr,Offset: LongInt): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Byte параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFByte(TableNum: #TPtr, Offset: LongInt): Byte; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение LongInt параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFLongint(TableNum: #TPtr, Offset: LongInt): Longint; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Integer параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFInteger(TableNum: #TPtr, Offset: LongInt): Integer; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Comp параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFComp(TableNum: #TPtr, Offset: LongInt): Comp; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Date параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFDate(TableNum: #TPtr, Offset: LongInt): Date; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Time параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFTime(TableNum: #TPtr, Offset: LongInt): Time; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Single параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFSingle(TableNum: #TPtr, Offset: LongInt): Single; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Double параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFDouble(TableNum: #TPtr, Offset: LongInt): Double; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение String параметра из буфер текущей записи таблицы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFString(TableNum: #TPtr,Offset: LongInt): String; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Boolean параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIBoolean(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Byte параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIByte(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Byte; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Longint параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFILongint(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Longint; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Integer параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIInteger(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Integer; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Comp параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIComp(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Comp; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Date параметра из поля таблицы по указанному номеру.
  </>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIDate(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Date; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Time параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFITime(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Time; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Single параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFISingle(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Single; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение Double параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIDouble(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): Double; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает значение String параметра из поля таблицы по указанному номеру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableNum</code> - указатель на созданную таблицу;</li>
    <li><code>Ind</code> - номер поля в таблице;</li>
    <li><code>Offset</code> - смещение;</li>
  </ul>
#end
function TblGFIString(TableNum: #TPtr, Ind: LongInt, Offset: LongInt): String; external 'G_Common.dll';
function IterInitNew      (LongInt): #TPtr; external 'G_Common.dll';
function IterNow          (#TPtr): LongInt; external 'G_Common.dll';
function IterNext         (#TPtr): LongInt; external 'G_Common.dll';
procedure IterDone         (#TPtr); external 'G_Common.dll';
function TestSpeedVip     (LongInt): Double ; external 'G_Common.dll';
//------------------------------------------------------------------------------
// TranFunc.pas
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrBeg: boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrEnd: boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrAbort; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrSetAbort; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrErr: boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrF(word): boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrGet(word): word; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrWasAbort: boolean; external 'G_Common.dll';
function TrWasInit : boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrLastStatus: word; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrLStaGet: word; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrInitMode(longint): boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrMode: Longint; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrIsWork: boolean; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrNumber: Longint; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
function TrMessFlag: Longint; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrSetMessFlag(longint); external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrClrStatus; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrMess; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrInit; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end
procedure TrDone; external 'G_Common.dll';
#doc
  Функция устарела. Вызов её деструктивен.
#end

//******************************************************************************
// ManyFuns.pas
#doc
  </brief>

  <p>
    Сравнивает два double числа с заданной точностью.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - сравниваемое число;</li>
    <li><code>b</code> - сравниваемое число;</li>
    <li><code>k</code> - погрешность;</li>
  </ul>
#end
Function f_DoublesAreEqual(a: double, b: double, k: double): boolean; external 'G_Common.dll';
#doc
  <brief>
    Определяет количество знаков для погрешности d.
  </brief>

  <p>
    Пример:<br>
      0.00001 = 5.<br>
      0.001 = 3.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>d</code> - число для определения погрешности;</li>
  </ul>
#end
Function f_GetNZnaks(d: double): byte; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Возвращает сформированную строку вида: "№ n от DD/MM/YYYY".
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>n</code> - номер;</li>
    <li><code>d</code> - дата.</li>
  </ul>
#end
Function f_sNumDate(n: string, d: date): string; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Сравнение количеств с точностью по настройке точности для количества.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - количество;</li>
    <li><code>d</code> - точность.</li>
  </ul>
#end
Function f_KolEqual(a: double, b: double): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Проверка является ли число нулевым с указанной погрешностью.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - проверяемое число;</li>
    <li><code>k</code> - точность.</li>
  </ul>
#end
Function f_DoubleIsZero(a: double, k: double): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Проверка является ли число нулевым с указанной погрешностью.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - проверяемое число;</li>
  </ul>
#end
Function f_KolIsZero(a: double): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Проверка является ли число положительным.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - проверяемое число;</li>
  </ul>
#end
Function f_KolIsPositive(a: double): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Проверка является ли число отрицательным.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - проверяемое число;</li>
  </ul>
#end
Function f_KolIsNegative(a: double): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Проверяет является ли число а, больше чем b, с погрешностью k.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - проверяемое число;</li>
    <li><code>b</code> - второе проверяемое число;</li>
    <li><code>k</code> - погрешность.</li>
  </ul>
#end
Function f_FirstIsGreater(a: double, b: double, k: double): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Проверяет является ли число а, больше чем b, с погрешностью указанной в настройке Oper.MinKolMC.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - проверяемое число;</li>
    <li><code>b</code> - второе проверяемое число.</li>
  </ul>
#end
Function f_FirstKolIsGreater(a: double, b: double): boolean; external 'G_Common.dll';
#doc
  <p>
    Отбрасывает незначащие цифры мантиссы (свыше 15й).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>a</code> - число.</li>
  </ul>
#end
Function f_PreRound(a: double): double ; external 'G_Common.dll';
#doc
  <p>
    Присоединение к строковому полю sFld строки b.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sFld</code> - строковое поле;</li>
    <li><code>b</code> - присоединяемая строка.</li>
  </ul>
#end
Function f_AddToDocName(var sFld: AnyType, b: string): boolean; external 'G_Common.dll';
#doc
  <p>
    Записывает в Dsk логическое значение под идентификатором.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - идентификатор.</li>
  </ul>
#end
Procedure f_CommonFlagSet(s: string); external 'G_Common.dll';
#doc
  </brief>

  <p>
    Очищает в Dsk файле идентификатор s.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - идентификатор.</li>
  </ul>
#end
Procedure f_CommonFlagClear(s: string); external 'G_Common.dll';
#doc
  <p>
    Проверяет записан ли в Dsk файл идентификатор s.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - идентификатор.</li>
  </ul>
#end
Function f_CommonFlagCheck(s: string): boolean; external 'G_Common.dll';
#doc
  <p>
    Конвертирует дату в строку по формату DD/MM/YYYY.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>d</code> - конвертируемая дата.</li>
  </ul>
#end
Function f_DateToStrZ(d: date): string ; external 'G_Common.dll';

//******************************************************************************
// BitmapList.pas
#doc
  Инициализация списка иконок.
#end
function InitBitmapList: boolean; external 'G_Common.dll';
#doc
  <brief>
    Получить следующую иконку.<br>
  </brief>

  <p>
    Результатом функции является наличие следующей иконки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - возвращаемое имя иконки.</li>
  </ul>
#end
function GetNextBitmap(var s: string): boolean; external 'G_Common.dll';
#doc
  <brief>
    Получить первую иконку.<br>
  </brief>

  <p>
    Результатом функции является наличие первой иконки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>s</code> - возвращаемое имя иконки.</li>
  </ul>
#end
function GetFirstBitmap(var s: string): boolean; external 'G_Common.dll';
#doc
  </brief>

  <p>
    Очистка списка иконок.
  </p>
#end
procedure FreeBitmapList; external 'G_Common.dll';

//******************************************************************************
// FileByUrl.pas
#doc
  </brief>

  <p>
    Скачивание файла из интернета на жесткий диск.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sLink</code> - URL файла;</li>
    <li><code>sDestFolder</code> - каталог сохранения файла.</li>
  </ul>
#end
function  GetFileByUrl(sLink: string, sDestFolder: string): boolean; external 'G_Common.dll';
