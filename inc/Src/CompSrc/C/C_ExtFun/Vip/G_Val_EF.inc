/*

 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2002 корпорация ГАЛАКТИКА                    ║
 ║ Система       : ГАЛАКТИКА                                                 ║
 ║ Проект        : Ядро                                                      ║
 ║ Версия        : 5.85.02                                                   ║
 ║ Назначение    : Внешние процедуры и функции из G_Val.dll                  ║
 ║ Ответственный : Герман Юрий Эдуардович                                    ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

//------------------------------------------------------------------------------
// ValFunc.pas
#doc
  <brief>
    Инициализация объекта пересчета валют.
  </brief>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность инициализации объекта пересчета валют.
  </p>
#end
function InitGetCur: Boolean; external 'G_Val.dll';
#doc
  <brief>
    Инициализация объекта пересчета валют без визуализации.
  </brief>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность инициализации объекта пересчета валют.
  </p>
#end
function InitGetCurNoVisual: Boolean; external 'G_Val.dll';
#doc
  <brief>
    Возвращает сумму в валюте отчетов.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ValSrc</code> - валюта для конверсии;</li>
    <li><code>SumSrc</code> - конвертируемая сумма;</li>
    <li><code>dCourse</code> - дата для получения курса.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма после конвертации.
  </p>
#end
function PGetCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date): Double; external 'G_Val.dll';
#doc
  <brief>
    Возвращает сумму в базовой валюте.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ValSrc</code> - валюта для конверсии;</li>
    <li><code>SumSrc</code> - конвертируемая сумма;</li>
    <li><code>dCourse</code> - дата для получения курса.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма после конвертации.
  </p>
#end
function PGetBaseCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date): Double; external 'G_Val.dll';
#doc
  <brief>
    Возвращает сумму в указанной валюте.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ValSrc</code> - валюта для конверсии;</li>
    <li><code>SumSrc</code> - конвертируемая сумма;</li>
    <li><code>dCourse</code> - дата для получения курса;</li>
    <li><code>target</code> - необходимая валюта.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма после конвертации.
  </p>
#end
function PGetAnyCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date, target: Comp): Double; external 'G_Val.dll';
#doc
  <brief>
    Возвращает сумму в национальной валюте.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ValSrc</code> - валюта для конверсии;</li>
    <li><code>SumSrc</code> - конвертируемая сумма;</li>
    <li><code>dCourse</code> - дата для получения курса.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Сумма после конвертации.
  </p>
#end
function PGetNatCurrency(ValSrc: Comp, SumSrc: Double, dCourse: Date): Double; external 'G_Val.dll';
#doc
  <brief>
    Возвращает наименование указанной валюты.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ValSrc</code> - номер валюты.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Наименование валюты.
  </p>
#end
function PGetNameCurrency(ValSrc: Comp): String; external 'G_Val.dll';
#doc
  <brief>
    Возвращает наименование указанной валюты в предложном падеже.<br>
    Например: "В долларах США"
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>cVal</code> - номер валюты.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Наименование валюты.
  </p>
#end
function PGetNameAhCurrency (cVal: Comp): String; external 'G_Val.dll';
#doc
  <brief>
    Возвращает символ указанной валюты.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ValSrc</code> - номер валюты.</li>
  </ul>
#end
function PGetSimvCurrency(ValSrc: Comp): String; external 'G_Val.dll';
#doc
  <brief>
    Возвращает символ базовой валюты.
  </brief>
#end
function PGetSimvBaseCurrency: String; external 'G_Val.dll';
#doc
  <brief>
    Возвращает символ валюты отчетов.
  </brief>
#end
function PGetSimvTarCurrency: String;  external 'G_Val.dll';
#doc
  <brief>
    Возвращает корневую вышестоящую валюту для указанной валюты. <br>
    Ту, у которой cNode = 0.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>cVal</code> - номер валюты.</li>
  </ul>
#end
function PGetMainVal(cVal: Comp): Comp; external 'G_Val.dll';
#doc
  <brief>
    Освобождение объекта пересчета валют.
  </brief>
#end
procedure DoneGetCur; external 'G_Val.dll';
//------------------------------------------------------------------------------
