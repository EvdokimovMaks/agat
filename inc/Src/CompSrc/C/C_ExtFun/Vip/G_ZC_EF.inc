//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Заработная плата
// Описания зарегистрированных функций
//******************************************************************************

#ifdef Gal9_1
  #define G_ZarCache 'G_ZarCache.dll'
#else
  #define G_ZarCache 'ZC.DLL'
#end

//------------------------------------------------------------------------------
// ZARCACHE.PAS
//------------------------------------------------------------------------------
function CacheHolidays: boolean; external #G_ZarCache;
function CachePaymentKinds: boolean; external #G_ZarCache;
function GetHolidayType(date): byte; external #G_ZarCache;

//------------------------------------------------------------------------------
// функции для выборки базовой информации о лицевом счете по ссылке на него
// перед использованием нужно захватить прикладной контекст "PaInfo"

// табельный номер лицевого счета (1)
function GetPaClockNumber(comp): string; external #G_ZarCache;
// стандартный суффикс вида "таб. № XXX, Иванов И.И." для сообщений о лицевом счете (1)
function GetPaSuffix(comp): string; external #G_ZarCache;
// ФИО физического лица, на которого оформлен лицевой счет (1)
function GetPaPersonName(comp): string; external #G_ZarCache;

//------------------------------------------------------------------------------
// DEPTREE.PAS
//------------------------------------------------------------------------------
#define UseDepartmentTreeContext <p>Перед использованием функции нужно захватить прикладной контекст "DepatrmentTree".</p>

#doc
  Возвращает уточненное наименование подразделения DepartmentRef.</brief>

  #UseDepartmentTreeContext
#end
function GetDepartmentQualifiedName(DepartmentRef: comp): string; external #G_ZarCache;

#doc
  Возвращает уточненное наименование подразделения DepartmentRef.</brief>

  <p> Иерархия подразделений просматривается по следующим правилам:

  <ul>
  <li> Если Height < 0 - до корневого, включительно
  <li> Если Height = 0 - только наименование данного подразделения
  <li> Если Height = 1 - наименование данного подразделения с разделителем, если не корневое
  <li> Если Height = 2 - до вышестоящего, включительно
  <li> Если Height = 3 - до вышестоящего вышестоящего, включительно
  <li> и т.д.;
  </ul></p>

  <p>  Имена подразделений разделяются строкой Divider и следуют в порядке
  от вышестоящего к нижестоящему, если PostOrder = false, или от
  нижестоящего к вышестоящему, если PostOrder = true.  Количество символов в
  уточненном наименовании не превышает NameLimit, или не ограничено, если
  NameLimit = 0.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentQualifiedNameExt(DepartmentRef: comp, Height: integer, Divider: string, PostOrder: boolean, NameLimit: integer): string; external #G_ZarCache;

#doc
  #UseDepartmentTreeContext
#end
function GetDepartmentReduction(DepartmentRef: comp, Depth: integer): comp; external #G_ZarCache;

#doc
  Возращает глубину подразделения в иерархии.</brief>

  #UseDepartmentTreeContext
#end
function GetDepartmentDepth(DepartmentRef: comp): integer; external #G_ZarCache;

#doc
  Возвращает true и ссылку на КПП в Value для подразделения, заданного ссылкой
  DepartmentRef.</brief>

  <p> Рассматривается КПП, указанный явным образом в каталоге подразделений,
  привязанный к представляющему обособленное подразделение филиалу, либо
  выбранный в качестве значения одноименного внешнего атрибута. Поиск ссылки
  осуществляется с учетом иерархии подразделений - от данного к вышестоящим.
  Если ни в одном из упомянутых источников ссылка не была задана, возвращает
  false.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentKpp(DepartmentRef: comp, var Value: comp): boolean; external #G_ZarCache;

#doc
  Возвращает true и ссылку на связанную с подразделением DepartmentRef
  организацию в Value.</brief>

  <p> Если в структуре предприятия нет записей, описывающих связь данного
  подразделения (или одного из вышестоящих) с какой-либо организацией, возвращает
  false.</p>

  #UseDepartmentTreeContext
#end
function GetBoundOrganization(DepartmentRef: comp, var Value: comp): boolean; external #G_ZarCache;

#doc
  Возвращает true и значение атрибута "плательщих налога на доходы" в Value из
  описывающего связь "подразделение - организация" филиала, с учетом иерархии.</brief>

  <p> Если в структуре предприятия нет записей, описывающих связь данного
  подразделения (или одного из вышестоящих) с какой-либо организацией, возвращает
  false.</p>

  #UseDepartmentTreeContext
#end
function GetIncomeTaxPayer(DepartmentRef: comp, var Value: word): boolean; external #G_ZarCache;


#doc
  Возвращает true и ссылку на АТД (административно-территориального деления)
  в Value для подразделения, заданного ссылкой DepartmentRef.</brief>

  <p> Возвращает ссылку на АТД (начиная с заданного вверх по иерархии подразделений), содержащуюся
  в адресе обособленного подразделения, либо в юридическом адресе организации (связанной с
  обособленным подразделением). Если ни в одном из обособленных подразделений или связанных
  с ними организациях ссылка на АТД не определена, возвращается ссылка на АТД собственной
  организации. Если ни в одном из упомянутых источников ссылка не была определена, возвращает false.
  Примечание: если DepartmentRef = 0, возвращает АТД собственной организации.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentATD(DepartmentRef: comp, var Value: comp): boolean; external #G_ZarCache;

#doc
  Возвращает true и значение ОКАТО в Value для подразделения, заданного ссылкой
  DepartmentRef.</brief>

  <p> Возвращает ОКАТО обособленного подразделения, либо ОКАТО связанной организации,
  с учетом иерархии подразделений вверх от заданного. Если ОКАТО не определен, возвращает
  ОКАТО собственной организации. Если ни в одном из упомянутых источников ссылка не была
  определена, возвращает false.
  Примечание: если DepartmentRef = 0, возвращает ОКАТО собственной организации.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentOKATO(DepartmentRef: comp, var Value: string): boolean; external #G_ZarCache;

#doc
  Возвращает ссылку на запись таблицы с системным кодом Value, из которой взято
  значение ОКАТО для подразделения, заданного ссылкой DepartmentRef.</brief>

  <p> Возвращает ссылку на источник получения ОКАТО: обособленное подразделение,
  связанную с ним организацию, с учетом иерархии подразделений вверх от заданного.</p>

  #UseDepartmentTreeContext
#end
function GetOwnerTaxOKATO(DepartmentRef: comp, var Value: word): comp; external #G_ZarCache;

//******************************************************************************
//                                                                  ZARCACHE.PAS
//******************************************************************************
#doc
  Возвращает тип даты, описанной в классификаторе праздничных дней.</brief>
  <p> Коды признаков специальных дат:
  <ul>
  <li> 0 (htNone) - дата никак не описана
  <li> 1 (htHoliday) - праздник
  <li> 2 (htMovedSaturday) - перенесенная суббота (для календарных отпусков по 5-дневке)
  <li> 3 (htWorking) - рабочий день
  <li> 4 (htMovedSunday) - перенесенное воскресенье (для календарных отпусков по 5- и 6-дневке)
  </ul></p>
#end
function GetSpecialDateType(D: date): byte; external #G_ZarCache;

//==============================================================================
// OMVIPFUNCS.PAS
//==============================================================================
// Данный раздел оформлен по образцу табельной документации, G_WT_EF.inc
// Это как бы не столько констатация факта, сколько настоятельное требование.
//------------------------------------------------------------------------------

// Документация по OM-функциям собирается только на 9.1.
#if #__TOOLVERSION__ >= 5005.017
#define OMFUNCS_VIP_DOC
#endif

#ifdef OMFUNCS_VIP_DOC
#doc article OMFUNCS_About
  <brief>Функции получения атрибутов режимов работ</brief>
  <p>
    Функции получения атрибутов режимов работ предназначены для получения этих атрибутов
    главным образом в расчетных алгоритмах, когда чтение из БД записи KLREJIM
    сопряжено с некоторыми трудностями. Данные функции используют кэш режимов работ,
    куда загружается содержимое всего классификатора. Для поиска описания нужного режима работы
    в кэше применяется двоичный поиск.
  </p>
  <p>
    Для использования данных функций при разработке на языке VIP необходимо
    <a href="art--OMFUNCS_ContextsExample.htm">захватить прикладной контекст <code>'OperatingModes'</code></a>.
    При использовании функций в алгоритмах пользователя этого делать не нужно -
    при расчетах данный контекст захватывается автоматически.
  </p>

  <h3>Перечень функций получения атрибутов режимов работ</h3>
  <code><a href="exf--OM_AvgMonthHours.htm">OM_AvgMonthHours</a></code> <br />
  <code><a href="exf--OM_BalancedRejim.htm">OM_BalancedRejim</a></code> <br />
  <code><a href="exf--OM_GetCalendarOnDate.htm">OM_GetCalendarOnDate</a></code> <br />
  <code><a href="exf--OM_Hours.htm">OM_Hours</a></code> <br />
  <code><a href="exf--OM_Interval.htm">OM_Interval</a></code> <br />
  <code><a href="exf--OM_Minutes.htm">OM_Minutes</a></code> <br />
  <code><a href="exf--OM_NotFullWorkingDay.htm">OM_NotFullWorkingDay</a></code> <br />
  <code><a href="exf--OM_NRec.htm">OM_NRec</a></code> <br />
  <code><a href="exf--OM_OverworkCalculation.htm">OM_OverworkCalculation</a></code> <br />
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
  <code><a href="exf--OM_PeriodSummedOverwork.htm">OM_PeriodSummedOverwork</a></code> <br />
  <code><a href="exf--OM_ScheduleType.htm">OM_ScheduleType</a></code> <br />
  <code><a href="exf--OM_WeekendSymbolicNotation.htm">OM_WeekendSymbolicNotation</a></code> <br />
  <code><a href="exf--OM_WorkedHoursCoef.htm">OM_WorkedHoursCoef</a></code> <br />

  <h3>Другие функции</h3>
  <code><a href="exf--OM_Exists.htm">OM_Exists</a></code> <br />
  <code><a href="exf--RereadOperatingModes.htm">RereadOperatingModes</a></code> <br />
#end

#doc article OMFUNCS_ContextsExample
  <brief>Захват прикладного контекста для функций получения атрибутов режимов работ</brief>
  <p>
    В данной статье представлен образец манипуляций над исходным кодом VIP-интерфейса,
    которые обеспечивают и гарантируют корректную работу
    <a href="art--OMFUNCS_About.htm">OM_-функций</a>
    в данном интерфейсе.
  </p>

  <pre class="example">
  // 1. Подключить заголовочный файл:
  &#35;include Contexts.vih // прикладные контексты

  interface Example;

  // 2. Добавить глобальную переменную в интерфейс:
  var
    CS: IContextSession;

  ...

  handleEvent // интерфейса
  cmInit:
  {
    // 3. Добавить следующие строки в обработчик инициализации интерфейса:

    var CL: ContextList;
    // захват прикладных контекстов
    if (not CL.Add(CS, 'OperatingModes'))
    {
      abort;
      exit;
    }

    ...
  }

  ...

  end;
  end.
  </pre>

  <h3>Замечание</h3>
  <p>
    При разработке на языке VIP функции получения атрибутов режимов работ могут оказаться
    не самым эффективным способом получения этих атрибутов, поскольку устройство
    данных функций подразумевает загрузку из БД всего классификатора в память.
    И выполняется данная операция при каждом захвате контекста <code>OperatingModes</code>.
    Из этого следует, что с добавлением использования OM_-функций в ваш интерфейс
    время загрузки оного непременно увеличится. Поэтому, если классификатор содержит много записей,
    а для решения задачи нужно взять атрибуты у одного-двух режимов работ,
    более эффективным способом будет самостоятельный <code>getfirst</code>
    KLREJIM-а с последующим чтением атрибутов прямо оттуда.
  </p>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает <code>true</code>, если режим работы с кодом <code>RejimCode</code> существует в БД.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_Exists(RejimCode: word): boolean; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает <code>NRec</code> записи таблицы KLREJIM, описывающей
    режим работы с кодом <code>RejimCode</code>.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_NRec(RejimCode: word): comp; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает код планового (т.е. балансного) режима работы для режима с кодом <code>RejimCode</code>.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Если балансный режим не указан, что в общем случае означало бы, что режим работы
    <code>RejimCode</code> является балансным по отношению к самому себе, данная функция
    вернёт <code>0</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_BalancedRejim(RejimCode: word): word; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает <code>true</code>, если у режима работы с кодом <code>RejimCode</code>
    выставлен признак "неполный рабочий день".</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_NotFullWorkingDay(RejimCode: word): boolean; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает значение поля "Интервал" для режима работы с кодом <code>RejimCode</code>.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>Возможные варианты интервала приведены в таблице:</p>
  <table>
    <tr> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>0</code></td> <td>пустое значение</td> </tr>
    <tr> <td><code>1</code></td> <td>"день"</td> </tr>
    <tr> <td><code>2</code></td> <td>"неделя"</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
  <code><a href="exf--OM_Hours.htm">OM_Hours</a></code> <br />
  <code><a href="exf--OM_Minutes.htm">OM_Minutes</a></code> <br />
#end
#endif
function OM_Interval(RejimCode: word): integer; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает количество "Часов" для режима работы с кодом <code>RejimCode</code>.</brief>
  <p>
    Данная величина вводится непосредственно в режиме работы и представляет собой
    часть продолжительности "Интервала" (<code><a href="exf--OM_Interval.htm">OM_Interval</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
  <code><a href="exf--OM_Minutes.htm">OM_Minutes</a></code> <br />
  <code><a href="exf--OM_Interval.htm">OM_Interval</a></code> <br />
#end
#endif
function OM_Hours(RejimCode: word): integer; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает количество "Минут" для режима работы с кодом <code>RejimCode</code>.</brief>
  <p>
    Данная величина вводится непосредственно в режиме работы и представляет собой
    часть продолжительности "Интервала" (<code><a href="exf--OM_Interval.htm">OM_Interval</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
  <code><a href="exf--OM_Hours.htm">OM_Hours</a></code> <br />
  <code><a href="exf--OM_Interval.htm">OM_Interval</a></code> <br />
#end
#endif
function OM_Minutes(RejimCode: word): integer; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает тип графиков для режима работы с кодом <code>RejimCode</code>.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>Возможные варианты приведены в таблице:</p>
  <table>
    <tr> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>0</code></td> <td>зарплатные графики</td> </tr>
    <tr> <td><code>1</code></td> <td>общесистемные графики</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_ScheduleType(RejimCode: word): word; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает тип учета сверхурочных часов режима работы с кодом <code>RejimCode</code>.</brief>
  <p>
    Данная функция возвращает значение атрибута в таком виде, в котором он содержится в самом
    режиме работы, то есть если указано "по настройке", то и данная функция вернёт, что
    "по настройке", а "настройку" в таком случае нужно будет анализировать самостоятельно.
    Если нужно узнать тип учета сверхурочных сразу с учетом "настройки", то подойдет функция
    <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>Функция может возвратить одно из следующих значений:</p>
  <table>
    <tr> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>0</code></td> <td>по настройке</td> </tr>
    <tr> <td><code>1</code></td> <td>подённый</td> </tr>
    <tr> <td><code>2</code></td> <td>суммированный</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
#end
#endif
function OM_OverworkCalculation(RejimCode: word): word; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает <code>true</code>, если учет сверхурочных для режима работы
    с кодом <code>RejimCode</code> суммированный.</brief>
  <p>
    Данная функция удобна в тех случаях, когда не важно различие, указан ли в режиме работы
    конкретный способ учета сверхурочных, либо выставлено "по настройке".
    Значение настройки ("Управление персоналом \ Табельный учет \ Расчет итогов \ Суммированный учет сверхурочных часов")
    автоматически учитывается данной функцией по мере надобности.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    <code>true</code>, если суммированный учет, и <code>false</code>, если подённый.
  </p>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
  <code><a href="exf--OM_OverworkCalculation.htm">OM_OverworkCalculation</a></code> <br />
  <code><a href="exf--OM_PeriodSummedOverwork.htm">OM_PeriodSummedOverwork</a></code> <br />
#end
#endif
function OM_OverworkCalculationSummed(RejimCode: word): boolean; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает период учета сверхурочных при суммированном учете для режима работы
    с кодом <code>RejimCode</code>.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>Период учета сверхурочных выражается одной из следующих констант:</p>
  <table>
    <tr> <td>Константа</td>                <td>Значение</td>       <td>Описание</td> </tr>
    <tr> <td><code>psoMonth</code></td>    <td><code>0</code></td> <td>месяц</td> </tr>
    <tr> <td><code>psoQuarter</code></td>  <td><code>1</code></td> <td>квартал</td> </tr>
    <tr> <td><code>psoHalfYear</code></td> <td><code>2</code></td> <td>полугодие</td> </tr>
    <tr> <td><code>psoYear</code></td>     <td><code>3</code></td> <td>год</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
#end
#endif
function OM_PeriodSummedOverwork(RejimCode: word): byte; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает <code>NRec</code> календаря для формирования графика по режиму работы
    с кодом <code>RejimCode</code>.</brief>
  <p>
    Функция возвращает <code>NRec</code> общесистемного календаря (таблица CALENDAR),
    использующегося при формировании графика по режиму работы с кодом <code>RejimCode</code>,
    на дату <code>ADate</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
    <li><code>ADate</code> - дата, на которую нужно узнать календарь</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_GetCalendarOnDate(RejimCode: word, ADate: Date): comp; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает среднее количество часов в месяце для режима работы с кодом <code>RejimCode</code>.</brief>
  <p>
    Функция возвращает величину, непосредственно заданную в самом режиме работы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_AvgMonthHours(RejimCode: word): double; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает ссылку на условное обозначение выходного для режима работы
    с кодом <code>RejimCode</code>.</brief>
  <p>
    Функция возвращает ссылку на запись классификатора условных обозначений табеля
    (таблица UOWRKTABEL). В случае, если к режиму не привязано особое обозначение
    выходного, а оставлено стандартное, данная функция будет возвращать <code>0</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_WeekendSymbolicNotation(RejimCode: word): comp; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Возвращает коэффициент фактического времени режима работы с кодом <code>RejimCode</code>.</brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>RejimCode</code> - код режима работы</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function OM_WorkedHoursCoef(RejimCode: word): double; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>Обновить содержимое кэша режимов работ</brief>
  <p>
    Вызов данной функции происходит автоматически при
    <a href="art--OMFUNCS_ContextsExample.htm">захвате прикладного контекста</a>
    для <a href="art--OMFUNCS_About.htm">функций получения атрибутов режимов работ</a>,
    поэтому при загрузке интерфейса, использующего OM_-функции,
    вызывать <code>RereadOperatingModes</code> не нужно: захват контекста сам обеспечит
    обновление кэша. Функция подходит для тех случаев, когда происходит изменение
    атрибутов режимов работ в БД, и нужно подхватить эти изменения.
  </p>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает <code>true</code>, если фактически произошло обновление содержимого кэша.
    На практике это означает, что если прикладной контекст режимов работ
    захвачен на момент вызова, то всегда будет возвращаться <code>true</code>,
    а иначе - <code>false</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--OMFUNCS_About.htm">Функции получения атрибутов режимов работ</a> <br />
#end
#endif
function RereadOperatingModes: boolean; external #G_ZarCache;
