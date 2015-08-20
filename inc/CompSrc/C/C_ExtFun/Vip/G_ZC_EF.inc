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
//                                                                        ZC.DLL
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
