//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - Заработная плата
// Функции получения параметров ЛС на дату
//------------------------------------------------------------------------------

#ifdef Gal9_1
  #define G_WorkTable 'G_WorkTable.dll'
#else
  #define G_WorkTable 'WT.DLL'
#end

//------------------------------------------------------------------------------
// Правила оформления в G_WT_EF.inc
//------------------------------------------------------------------------------

// Документация генерится только на 9.1, потому что Атл 5.4 не осилит.
#if #__TOOLVERSION__ >= 5005.017
#define PADETAILS_VIP_DOC
#endif

#ifdef PADETAILS_VIP_DOC
#doc article PADAPI_About
  <brief>Функции получения параметров ЛС на дату</brief>
  <p>
    Функционал получения параметров лицевого счета на дату служит для
    предоставления на произвольную дату параметров ЛС, могущих меняться переходами в межпериод.
    Возможности функционала:
  </p>
  <ul>
    <li><b>Вычисление параметров ЛС на дату и на день заранее заданного месяца</b>.
      В отличие от своего предшественника
      (<link article WTABELDOC_InformationalFunctions>информационных функций табеля</link>),
      данный функционал может возвращать значения на произвольную дату. Вместе с тем, для упрощения
      перехода от использования табельных функций к использованию более новых функций, предоставляется
      возможность задать год и месяц
      (<code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>)
      и получать параметры по дням этого месяца. Оба подхода к получению параметров совершенно
      не конфликтуют друг с другом, и их можно применять одновременно.
    <li><b>Возможность получать значения параметров без учета некоторых входных данных</b>.
      В данном функционале таких возможностей две: можно не учитывать временные переходы
      (см. <code><a href="exf--PA_IgnoreNonPermanentPerexods.htm">PA_IgnoreNonPermanentPerexods</a></code>),
      а можно не учитывать вообще произвольный набор входных данных
      (см. <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code>).
    </li>
    <li><b>Сохранение и восстановление настроек</b>. Позволяет кратковременно изменять текущие
      настройки вычисления параметров ЛС на дату без нежелательного влияния на окружающий код.
    </li>
  </ul>

  <p>
    Для инициализации функций получения параметров ЛС на дату необходимо
    <a href="art--PADAPI_UsingContexts.htm">захватить прикладной контекст <code>'PADetailsUtils'</code></a>.
    После этого можно указать лицевой счет (<code><a href="exf--PA_Assign.htm">PA_Assign</a></code>)
    и получать его параметры на дату. При необходимости можно настроить игнорирование тех или иных
    сущностей при вычислении значений на дату (по умолчанию всё учитывается), или задать
    текущий месяц и год (<code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>)
    для получения значений параметров по одному лишь дню данного месяца.
  </p><p>
    Функционал получения параметров ЛС на дату для випа - сквозной (для паскаля - нет),
    это значит, что независимо от того, в каком интерфейсе инициализировали функционал
    и в каком интерфейсе задали текущий ЛС и другие настройки, эти настройки будут
    глобальными для всего приложения (на трёхуровневой архитектуре - для одного пользователя).
    Сохраняться они будут до тех пор, пока захвачен прикладной контекст <code>'PADetailsUtils'</code>.
    При уничтожении прикладного контекста (при потере последней ссылки) настройки вычисления
    параметров ЛС на дату будут сброшены, а стек для сохранения и восстановления настроек
    (<code><a href="exf--PA_Push.htm">PA_Push</a></code>
    /<code><a href="exf--PA_Pop.htm">PA_Pop</a></code>) - принудительно очищен.
  </p><p>
    Возможны ситуации, когда по окончанию работы какой-либо прикладной функции,
    вычислявшей параметры ЛС на дату для своих нужд, текущий лицевой счет для вычисления
    параметров на дату окажется не таким, каким он был перед вызовом. Это может привести
    к некорректной работе последующего кода, если он рассчитывает на то, что ЛС
    для вычисления параметров на дату должен оставаться неизменным.
    Для разрешения подобных проблем служат функции сохранения и восстановления
    настроек в стеке: <code><a href="exf--PA_Push.htm">PA_Push</a></code>
    и <code><a href="exf--PA_Pop.htm">PA_Pop</a></code> соответственно.
  </p><p>
    Последнее замечание не относится непосредственно к использованию данного функционала,
    но касается его способности своевременно реагировать на изменения исходных данных в БД.
    Подробнее о том, как это обеспечивается -
    <a href="art--PADAPI_Invalidate.htm">в посвященной данному вопросу статье</a>.
  </p>

  <h3>Перечень функций</h3>
  <p> Настройка текущего ЛС для получения его параметров </p>
  <code><a href="exf--PA_Assign.htm">PA_Assign</a></code> <br />
  <code><a href="exf--PA_Reset.htm">PA_Reset</a></code> <br />
  <code><a href="exf--PA_Current.htm">PA_Current</a></code> <br />

  <p> Настройка месяца и года для функций получения параметров по дню месяца </p>
  <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code> <br />
  <code><a href="exf--PA_GetMonth.htm">PA_GetMonth</a></code> <br />
  <code><a href="exf--PA_GetYear.htm">PA_GetYear</a></code> <br />

  <p> Настройка игнорирования сущностей при получении параметров ЛС на дату </p>
  <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code> <br />
  <code><a href="exf--PA_RemoveIgnored.htm">PA_RemoveIgnored</a></code> <br />
  <code><a href="exf--PA_IsIgnored.htm">PA_IsIgnored</a></code> <br />
  <code><a href="exf--PA_IgnoreNonPermanentPerexods.htm">PA_IgnoreNonPermanentPerexods</a></code> <br />
  <code><a href="exf--PA_AreNonPermanentPerexodsIgnored.htm">PA_AreNonPermanentPerexodsIgnored</a></code> <br />
  <code><a href="exf--PA_RemoveAllIgnored.htm">PA_RemoveAllIgnored</a></code> <br />

  <p> Сохранение и восстановление настроек </p>
  <code><a href="exf--PA_Push.htm">PA_Push</a></code> <br />
  <code><a href="exf--PA_Pop.htm">PA_Pop</a></code> <br />

  <p> Получение параметров ЛС </p>
  <!-- В CSS прописано, что table уменьшает шрифт. Нам это не надо, потому что некрасиво,
       поэтому для каждой ячейки размер шрифта указываем явно. -->
  <table>
  <tr>
    <td><font size="2"> По дате </font></td>
    <td><font size="2"> По дню месяца </font></td>
  </tr>
  <tr>
    <td><font size="2">
      <code><a href="exf--PA_Account.htm">PA_Account</a></code> <br />
      <code><a href="exf--PA_AdditionalAnalytics.htm">PA_AdditionalAnalytics</a></code> <br />
      <code><a href="exf--PA_Appointment.htm">PA_Appointment</a></code> <br />
      <code><a href="exf--PA_Brigade.htm">PA_Brigade</a></code> <br />
      <code><a href="exf--PA_Category.htm">PA_Category</a></code> <br />
      <code><a href="exf--PA_ControlAccount.htm">PA_ControlAccount</a></code> <br />
      <code><a href="exf--PA_CorrectiveFactor.htm">PA_CorrectiveFactor</a></code> <br />
      <code><a href="exf--PA_Currency.htm">PA_Currency</a></code> <br />
      <code><a href="exf--PA_Department.htm">PA_Department</a></code> <br />
      <code><a href="exf--PA_GetAllAnalytics.htm">PA_GetAllAnalytics</a></code> <br />
      <code><a href="exf--PA_GetAlternativePayment.htm">PA_GetAlternativePayment</a></code> <br />
      <code><a href="exf--PA_GetAnalytics.htm">PA_GetAnalytics</a></code> <br />
      <code><a href="exf--PA_GetComplexCorrectiveFactor.htm">PA_GetComplexCorrectiveFactor</a></code> <br />
      <code><a href="exf--PA_GetSourceFinance.htm">PA_GetSourceFinance</a></code> <br />
      <code><a href="exf--PA_Insalubrity.htm">PA_Insalubrity</a></code> <br />
      <code><a href="exf--PA_IsNorthernCategoryFixed.htm">PA_IsNorthernCategoryFixed</a></code> <br />
      <code><a href="exf--PA_Mpf.htm">PA_Mpf</a></code> <br />
      <code><a href="exf--PA_NorthernCategory.htm">PA_NorthernCategory</a></code> <br />
      <code><a href="exf--PA_OperatingMode.htm">PA_OperatingMode</a></code> <br />
      <code><a href="exf--PA_OsnOpl.htm">PA_OsnOpl</a></code> <br />
      <code><a href="exf--PA_PaymentMode.htm">PA_PaymentMode</a></code> <br />
      <code><a href="exf--PA_Perexod.htm">PA_Perexod</a></code> <br />
      <code><a href="exf--PA_RegionalFactor.htm">PA_RegionalFactor</a></code> <br />
      <code><a href="exf--PA_StandardBusinessTransaction.htm">PA_StandardBusinessTransaction</a></code> <br />
      <code><a href="exf--PA_StandardBusinessTransactionParameter.htm">PA_StandardBusinessTransactionParameter</a></code> <br />
      <code><a href="exf--PA_Tariff.htm">PA_Tariff</a></code> <br />
      <code><a href="exf--PA_TariffCode.htm">PA_TariffCode</a></code> <br />
      <code><a href="exf--PA_TerritorialConditions.htm">PA_TerritorialConditions</a></code> <br />
      <code><a href="exf--PA_WageCategory.htm">PA_WageCategory</a></code> <br />
      <code><a href="exf--PA_WageRate.htm">PA_WageRate</a></code> <br />
    </font></td>
    <td><font size="2">
      <code><a href="exf--PA_AccountOnDay.htm">PA_AccountOnDay</a></code> <br />
      <code><a href="exf--PA_AdditionalAnalyticsOnDay.htm">PA_AdditionalAnalyticsOnDay</a></code> <br />
      <code><a href="exf--PA_AppointmentOnDay.htm">PA_AppointmentOnDay</a></code> <br />
      <code><a href="exf--PA_BrigadeOnDay.htm">PA_BrigadeOnDay</a></code> <br />
      <code><a href="exf--PA_CategoryOnDay.htm">PA_CategoryOnDay</a></code> <br />
      <code><a href="exf--PA_ControlAccountOnDay.htm">PA_ControlAccountOnDay</a></code> <br />
      <code><a href="exf--PA_CorrectiveFactorOnDay.htm">PA_CorrectiveFactorOnDay</a></code> <br />
      <code><a href="exf--PA_CurrencyOnDay.htm">PA_CurrencyOnDay</a></code> <br />
      <code><a href="exf--PA_DepartmentOnDay.htm">PA_DepartmentOnDay</a></code> <br />
      <code><a href="exf--PA_GetAllAnalyticsOnDay.htm">PA_GetAllAnalyticsOnDay</a></code> <br />
      <code><a href="exf--PA_GetAlternativePaymentOnDay.htm">PA_GetAlternativePaymentOnDay</a></code> <br />
      <code><a href="exf--PA_GetAnalyticsOnDay.htm">PA_GetAnalyticsOnDay</a></code> <br />
      <code><a href="exf--PA_GetComplexCorrectiveFactorOnDay.htm">PA_GetComplexCorrectiveFactorOnDay</a></code> <br />
      <code><a href="exf--PA_GetSourceFinanceOnDay.htm">PA_GetSourceFinanceOnDay</a></code> <br />
      <code><a href="exf--PA_InsalubrityOnDay.htm">PA_InsalubrityOnDay</a></code> <br />
      <code><a href="exf--PA_IsNorthernCategoryFixedOnDay.htm">PA_IsNorthernCategoryFixedOnDay</a></code> <br />
      <code><a href="exf--PA_MpfOnDay.htm">PA_MpfOnDay</a></code> <br />
      <code><a href="exf--PA_NorthernCategoryOnDay.htm">PA_NorthernCategoryOnDay</a></code> <br />
      <code><a href="exf--PA_OperatingModeOnDay.htm">PA_OperatingModeOnDay</a></code> <br />
      <code><a href="exf--PA_OsnOplOnDay.htm">PA_OsnOplOnDay</a></code> <br />
      <code><a href="exf--PA_PaymentModeOnDay.htm">PA_PaymentModeOnDay</a></code> <br />
      <code><a href="exf--PA_PerexodOnDay.htm">PA_PerexodOnDay</a></code> <br />
      <code><a href="exf--PA_RegionalFactorOnDay.htm">PA_RegionalFactorOnDay</a></code> <br />
      <code><a href="exf--PA_StandardBusinessTransactionOnDay.htm">PA_StandardBusinessTransactionOnDay</a></code> <br />
      <code><a href="exf--PA_StandardBusinessTransactionParameterOnDay.htm">PA_StandardBusinessTransactionParameterOnDay</a></code> <br />
      <code><a href="exf--PA_TariffOnDay.htm">PA_TariffOnDay</a></code> <br />
      <code><a href="exf--PA_TariffCodeOnDay.htm">PA_TariffCodeOnDay</a></code> <br />
      <code><a href="exf--PA_TerritorialConditionsOnDay.htm">PA_TerritorialConditionsOnDay</a></code> <br />
      <code><a href="exf--PA_WageCategoryOnDay.htm">PA_WageCategoryOnDay</a></code> <br />
      <code><a href="exf--PA_WageRateOnDay.htm">PA_WageRateOnDay</a></code> <br />
    </font></td>
  </tr>
  </table>

  <h3>См. также</h3>
  <link article WTABELDOC_InformationalFunctions>Информационные функции табеля</link> <br />
  <a href="art--PADAPI_UsingContexts.htm">Инициализация функций получения
    параметров ЛС на дату при помощи прикладных контекстов</a> <br />
  <a href="art--PADAPI_Invalidate.htm">Сообщения о потере актуальности данных для подсистемы получения параметров ЛС на дату</a> <br />
  <a href="art--PADAPI_VipPascal.htm">Взаимодействие функций получения параметров ЛС на дату в VIP и Pascal</a> <br />
#end

#doc article PADAPI_UsingContexts
  <brief>Инициализация функций получения параметров ЛС на дату при помощи прикладных контекстов</brief>
  <p>
    Для того, чтобы с функциями получения параметров ЛС на дату можно было работать, необходимо
    проделать следующие шаги:
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
    if (not CL.Add(CS, 'PADetailsUtils'))
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
  <p>
    Действий 1, 2, 3 достаточно для того, чтобы PA_-функции для випа в данном интерфейсе
    заработали корректно. Больше ничего добавлять не нужно.
  </p>

  <h3>Подробнее</h3>
  <p>
    Для работы функций получения параметров ЛС на дату необходимо провести предварительную
    инициализацию, а по окончании работы с ними - деинициализацию.
    Существует возможность вручную вызывать инициализатор и финализатор
    (функции <code><a href="exf--EnablePADetailsUtils.htm">EnablePADetailsUtils</a></code>,
    <code><a href="exf--DisablePADetailsUtils.htm">DisablePADetailsUtils</a></code>),
    <font color="red"><b>но лучше этого не делать</b></font>, так как это служит постоянным источником ошибок,
    связанных с рассогласованием количества вызовов инициализатора и деинициализатора.
    Предпочтительный способ инициализации и деинициализации -
    использование <link objInterface Z_ZAR::IContextList>механизма прикладных контекстов</link>,
    образец которого дан выше.
  </p>
  <p>
    Фактический вызов инициализатора (<code>EnablePADetailsUtils</code>) произойдет
    при захвате прикладного контекста в следующей строке:
  </p>
  <pre class="example">
    if (not CL.Add(CS, 'PADetailsUtils'))
  </pre>
  <p>
    Фактический вызов деинициализатора произойдёт при уничтожении переменной <code>CS</code>,
    которое произойдёт в свою очередь при выгрузке интерфейса, независимо от причины выгрузки интерфейса:
    будь то <code>abort</code> в <code>cmInit</code>-е или закрытие окна.
    Таким образом, отпадает задача постоянной заботы о том, чтобы каждый случай выгрузки интерфейса
    сопровождался вручную добавленным вызовом деинициализатора.
  </p>
  <p>
    Если инициализация была переделана с явного вызова <code>EnablePADetailsUtils</code>/
    <code>DisablePADetailsUtils</code> на использование прикладных контекстов,
    упоминание <b>всех</b> ручных вызовов инициализатора и деинициализатора в коде нужно убрать.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--EnablePADetailsUtils.htm">EnablePADetailsUtils</a></code> <br />
  <code><a href="exf--DisablePADetailsUtils.htm">DisablePADetailsUtils</a></code> <br />
#end

#doc article PADAPI_VipPascal
  <brief>Взаимодействие функций получения параметров ЛС на дату в VIP и Pascal</brief>
  <p>
    Функционал получения параметров ЛС на дату для паскаля не является сквозным: допускается
    создавать произвольное количество независимых друг от друга вычислителей.
    Таким образом, если не предпринять дополнительных усилий, настройка вычисления
    параметров ЛС на дату, производимая функциями для випа, не будет оказывать никакого
    влияния на паскаль. Исключение касается только
    <a href="art--PADAPI_Invalidate.htm">функций сообщения о потере актуальности закэшированных данных</a>:
    эти функции держатся несколько в стороне от функций получения значений на дату,
    и этот функционал является сквозным для приложения (для трёхуровневой архитектуры -
    для одного пользователя).
  </p><p>
    Существует возможность в паскале достучаться до того вычислителя реквизитов ЛС,
    с которым работают в текущий момент функции для випа. Это можно сделать при помощи
    следующей функции:
  </p>
  <pre class="example">
    function GetVipPADetailsProvider: IPADetailsProvider;
  </pre>
  <p>
    Таким образом можно организовать настройку вычисления параметров ЛС на дату в випе,
    а само вычисление производить в паскале. Что касается обратного взаимодействия
    (настройка в паскале, вычисление - в випе), то некоторые из функций для випа
    доступны и из паскаля. Вот эти функции:
  </p>
  <code><a href="exf--PA_Assign.htm">PA_Assign</a></code> <br />
  <code><a href="exf--PA_Reset.htm">PA_Reset</a></code> <br />
  <code><a href="exf--PA_Push.htm">PA_Push</a></code> <br />
  <code><a href="exf--PA_Pop.htm">PA_Pop</a></code> <br />
  <p>
    Эти функции сделаны доступными для паскаля по той причине, что они осуществляют
    специфичные действия (в частности, управление возвращаемым значением
    упомянутой выше функции <code>GetVipPADetailsProvider</code>), повторить которые,
    используя чистый паскалевский интерфейс функционала, невозможно.
    Остальные действия по настройке вычисления: текущий месяц/год, игнорируемые сущности и т.д.
    можно осуществить, используя полученную ссылку на вычислитель (<code>IPADetailsProvider</code>),
    поэтому другие vip-функции для паскаля не нужны.
  </p>
  <p>
    Все описанные в данной статье функции объявлены в PADetails.pas. Соответственно,
    ничего дополнительно для работы со всем этим подключать не нужно.
  </p>
  <p>
    <b>Для работы всех описанных в данной статье функций необходимо захватить
    прикладной контекст <code>'PADetailsUtils'</code>.</b> Собственно, требование логично,
    поскольку из випа для использования PA_-функций тоже требуется захватить этот же контекст.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
#end

#doc
  <brief>Инициализатор для функций получения параметров ЛС на дату</brief>
  <p>
    Готовит внутренние структуры, необходимые для работы функций вычисления параметров ЛС на дату.
    Допускаются многократные вызовы: при этом фактическая инициализация произойдёт только на самом
    первом вызове, а при последующих просто будет увеличиваться счетчик ссылок.
  </p><p>
    Если инициализация функций получения параметров ЛС на дату была проведена при помощи
    данной функции, то по окончании работы с функционалом нужно вызвать
    <code><a href="exf--DisablePADetailsUtils.htm">DisablePADetailsUtils</a></code>.
    При этом количества вызовов <code>EnablePADetailsUtils</code> и <code>DisablePADetailsUtils</code>
    должны в точности соответствовать друг другу.
  </p>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает <code>true</code> в случае успешной инициализации.
  </p>

  <h3>Замечание</h3>
  <p>
	  <font color="red">Не рекомендуется обращаться к данной функции напрямую</font>,
    так как при прямом обращении, как правило, возникают проблемы с обеспечением
    парности вызовов инициализатора и деинициализатора, что ведёт в дальнейшем
    к появлению труднолокализуемых ошибок. Для инициализации функций получения
    параметров ЛС на дату лучше
    <a href="art--PADAPI_UsingContexts.htm">использовать механизм прикладных контекстов</a>.
  </p>
  <h3>Пример</h3>
  <pre class=example>
    if (EnablePADetailsUtils)
    {
      ...

      DisablePADetailsUtils;
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <a href="art--PADAPI_UsingContexts.htm">Инициализация функций получения
    параметров ЛС на дату при помощи прикладных контекстов</a> <br />
  <code><a href="exf--DisablePADetailsUtils.htm">DisablePADetailsUtils</a></code> <br />
#end
#endif
function EnablePADetailsUtils: boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Деинициализатор для функций получения параметров ЛС на дату</brief>
  <p>
    Уменьшает внутренний счетчик ссылок, и по достижении нуля уничтожает
    внутренние структуры для работы функций вычисления параметров ЛС на дату.
    Данную функцию нужно использовать только тогда, когда инициализация
    была проведена при помощи
    <code><a href="exf--EnablePADetailsUtils.htm">EnablePADetailsUtils</a></code>.
    Количество вызовов данной функции должно при этом в точности соответствовать
    количеству вызовов <code>EnablePADetailsUtils</code>.
  </p>

  <h3>Замечание</h3>
  <p>
	  <font color="red">Не рекомендуется обращаться к данной функции напрямую</font>,
    так как при прямом обращении, как правило, возникают проблемы с обеспечением
    парности вызовов инициализатора и деинициализатора, что ведёт в дальнейшем
    к появлению труднолокализуемых ошибок. Для инициализации функций получения
    параметров ЛС на дату лучше
    <a href="art--PADAPI_UsingContexts.htm">использовать механизм прикладных контекстов</a>,
    тогда потребность в использовании <code>DisablePADetailsUtils</code>
    отпадет сама собой.
  </p>
  <h3>Пример</h3>
  <pre class=example>
    if (EnablePADetailsUtils)
    {
      ...

      DisablePADetailsUtils;
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <a href="art--PADAPI_UsingContexts.htm">Инициализация функций получения
    параметров ЛС на дату при помощи прикладных контекстов</a> <br />
  <code><a href="exf--EnablePADetailsUtils.htm">EnablePADetailsUtils</a></code> <br />
#end
#endif
procedure DisablePADetailsUtils; external #G_WorkTable;

//------------------------------------------------------------------------------
#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Задать лицевой счет, для которого нужно получать параметры на дату</brief>
  <p>
    Функция определяет лицевой счет, для которого будет происходить получение параметров
    на дату. Также снимает все текущие ограничения по игнорированию сущностей
    при получении параметров ЛС на дату (происходит неявный вызов
    <code><a href="exf--PA_RemoveAllIgnored.htm">PA_RemoveAllIgnored</a></code>).
    Если <code>LSchetNRec</code> отличается от предыдущего значения, то
    сбрасывается также <a href="exf--PA_SetMonthYear.htm">текущий месяц и год</a>.
  </p><p>
    <b>Перед вызовом данной функции необходимо провести
    <a href="art--PADAPI_UsingContexts.htm">инициализацию функционала получения
    параметров ЛС на дату</a>. </b>
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>LSchetNRec</code> - ссылка на лицевой счет, с которым будут работать функции</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает признак успешности выполнения. <code>false</code> означает,
    что лицевой счет с таким NRec-ом не существует, или не была проведена
    инициализация функционала.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <a href="art--PADAPI_UsingContexts.htm">Инициализация функций получения
    параметров ЛС на дату при помощи прикладных контекстов</a> <br />
  <code><a href="exf--PA_Reset.htm">PA_Reset</a></code> <br />
  <code><a href="exf--PA_Current.htm">PA_Current</a></code> <br />
#end
#endif
function PA_Assign(LSchetNRec: comp): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>
    Синоним функции <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </brief>
#end
#endif
function PA_SetLSchet(LSchetNRec: comp): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Сбрасывает текущий лицевой счет для PA_-функций</brief>
  <p>
    Функция сбрасывает текущий лицевой счет, для которого происходит вычисление параметров на дату,
    в <code>0</code>. Функция полностью аналогична вызову <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>
    с параметром 0. Использование данной функции <b>не является</b> обязательным:
    захваченные функционалом ресурсы будут освобождены при уничтожении соответствующего
    <a href="art--PADAPI_UsingContexts.htm">прикладного контекста</a>.
  </p><p>
    <b>Не стоит использовать данную функцию с целью вызвать последующую загрузку
    актуальных данных из БД!</b> Такой подход был уместен в табельном функционале
    (<code><link externalFunction ResetWorkingTable>ResetWorkingTable</link></code>), но здесь
    совершенно другие механизмы,
    <a href="art--PADAPI_Invalidate.htm">см. соответствующую статью</a>.
  </p><p>
    Таким образом, функция <code>PA_Reset</code> нужна только для тех редких случаев,
    когда последующему функционалу (код которого будет выполняться дальше)
    по каким-либо причинам не нужно знать о том, для какого лицевого счета
    вычислялись параметры до этого.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Assign.htm">PA_Assign</a></code> <br />
#end
#endif
procedure PA_Reset; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает NRec лицевого счета, для которого происходит вычисление параметров на дату</brief>
  <p>
    Возвращает NRec лицевого счета, с которым в настоящий момент работают
    функции получения параметров ЛС на дату.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Assign.htm">PA_Assign</a></code> <br />
#end
#endif
function PA_Current: comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>
    Синоним функции <code><a href="exf--PA_Current.htm">PA_Current</a></code>.
  </brief>
#end
#endif
function PA_NRec: comp; external #G_WorkTable;

//------------------------------------------------------------------------------
#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает подразделение на указанную дату</brief>
  <p>
    Возвращает ссылку на подразделение (таблица KATPODR) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_DepartmentOnDay.htm">PA_DepartmentOnDay</a></code> <br />
#end
#endif
function PA_Department(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает подразделение на заданный день месяца</brief>
  <p>
    Возвращает ссылку на подразделение (таблица KATPODR) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Department.htm">PA_Department</a></code> <br />
#end
#endif
function PA_DepartmentOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает бригаду на указанную дату</brief>
  <p>
    Возвращает ссылку на бригаду (таблица BRIGAD) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_BrigadeOnDay.htm">PA_BrigadeOnDay</a></code> <br />
#end
#endif
function PA_Brigade(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает бригаду на заданный день месяца</brief>
  <p>
    Возвращает ссылку на бригаду (таблица BRIGAD) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Brigade.htm">PA_Brigade</a></code> <br />
#end
#endif
function PA_BrigadeOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код категории на указанную дату</brief>
  <p>
    Возвращает код категории (KLKATEGO.KOD) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_CategoryOnDay.htm">PA_CategoryOnDay</a></code> <br />
#end
#endif
function PA_Category(OnDate: date): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код категории на заданный день месяца</brief>
  <p>
    Возвращает код категории (KLKATEGO.KOD) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Category.htm">PA_Category</a></code> <br />
#end
#endif
function PA_CategoryOnDay(Day: byte): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает должность на указанную дату</brief>
  <p>
    Возвращает должность (таблица CATALOGS) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AppointmentOnDay.htm">PA_AppointmentOnDay</a></code> <br />
#end
#endif
function PA_Appointment(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает должность на заданный день месяца</brief>
  <p>
    Возвращает должность (таблица CATALOGS) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Appointment.htm">PA_Appointment</a></code> <br />
#end
#endif
function PA_AppointmentOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает количество ставок на указанную дату</brief>
  <p>
    Возвращает количество ставок работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_WageRateOnDay.htm">PA_WageRateOnDay</a></code> <br />
#end
#endif
function PA_WageRate(OnDate: date): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает количество ставок на заданный день месяца</brief>
  <p>
    Возвращает количество ставок на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_WageRate.htm">PA_WageRate</a></code> <br />
#end
#endif
function PA_WageRateOnDay(Day: byte): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает КТУ на указанную дату</brief>
  <p>
    Возвращает коэффициент трудового участия работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_MpfOnDay.htm">PA_MpfOnDay</a></code> <br />
#end
#endif
function PA_Mpf(OnDate: date): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает КТУ на заданный день месяца</brief>
  <p>
    Возвращает коэффициент трудового участия на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Mpf.htm">PA_Mpf</a></code> <br />
#end
#endif
function PA_MpfOnDay(Day: byte): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает условия труда на рабочем месте на указанную дату</brief>
  <p>
    Возвращает ссылку на условия труда работника (таблица ADVISES) на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_InsalubrityOnDay.htm">PA_InsalubrityOnDay</a></code> <br />
#end
#endif
function PA_Insalubrity(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает условия труда на рабочем месте на заданный день месяца</brief>
  <p>
    Возвращает ссылку на условия труда работника (таблица ADVISES) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Insalubrity.htm">PA_Insalubrity</a></code> <br />
#end
#endif
function PA_InsalubrityOnDay(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает территориальные условия на указанную дату</brief>
  <p>
    Возвращает ссылку на территориальные условия (таблица CATALOGS), в которых работник
    пребывает на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_TerritorialConditionsOnDay.htm">PA_TerritorialConditionsOnDay</a></code> <br />
#end
function PA_TerritorialConditions(OnDate: date): comp; external #G_WorkTable;

#doc
  <brief>Возвращает территориальные условия на заданный день месяца</brief>
  <p>
    Возвращает ссылку на территориальные условия (таблица CATALOGS),
    в которых работник пребывает на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_TerritorialConditions.htm">PA_TerritorialConditions</a></code> <br />
#end
function PA_TerritorialConditionsOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код режима работы на указанную дату</brief>
  <p>
    Возвращает код режима работы (KLREJIM.REJIM) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_OperatingModeOnDay.htm">PA_OperatingModeOnDay</a></code> <br />
#end
#endif
function PA_OperatingMode(OnDate: date): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код режима работы на заданный день месяца</brief>
  <p>
    Возвращает код режима работы (KLREJIM.REJIM) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_OperatingMode.htm">PA_OperatingMode</a></code> <br />
#end
#endif
function PA_OperatingModeOnDay(Day: byte): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает тариф (оклад) на указанную дату</brief>
  <p>
    Возвращает величину тарифа/оклада работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_TariffOnDay.htm">PA_TariffOnDay</a></code> <br />
#end
#endif
function PA_Tariff(OnDate: date): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает тариф (оклад) на заданный день месяца</brief>
  <p>
    Возвращает величину тарифа/оклада на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Tariff.htm">PA_Tariff</a></code> <br />
#end
#endif
function PA_TariffOnDay(Day: byte): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает корректирующий коэффициент на указанную дату</brief>
  <p>
    Возвращает корректирующий коэффициент работника на дату <code>OnDate</code>.
    В случае использования в системе сложного корректирующего коэффициента
    возвращается его обобщенное значение. Текущий лицевой счет задается
    предварительным вызовом функции <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_CorrectiveFactorOnDay.htm">PA_CorrectiveFactorOnDay</a></code> <br />
  <code><a href="exf--PA_GetComplexCorrectiveFactor.htm">PA_GetComplexCorrectiveFactor</a></code> <br />
#end
#endif
function PA_CorrectiveFactor(OnDate: date): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает корректирующий коэффициент на заданный день месяца</brief>
  <p>
    Возвращает корректирующий коэффициент на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Если в системе используется сложный корректирующий коэффициент, то возвращается его обобщенное значение.
  </p><p>
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_CorrectiveFactor.htm">PA_CorrectiveFactor</a></code> <br />
  <code><a href="exf--PA_GetComplexCorrectiveFactorOnDay.htm">PA_GetComplexCorrectiveFactorOnDay</a></code> <br />
#end
#endif
function PA_CorrectiveFactorOnDay(Day: byte): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения сложного корректирующего коэффициента на дату</brief>
  <p>
    Функция позволяет получить координаты (код сущности и номер записи) для
    вытягивания составляющих сложного корректирующего коэффициента на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Полученную пару <code>entityCode</code>, <code>entityNRec</code> можно использовать
    для работы со сложным корректирующим коэффициентом с помощью интерфейса
    <code>Z_STAFF::CorrKoefFunctions</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значения</li>
    <li><code>[out] entityCode</code> - код сущности, см. ниже</li>
    <li><code>[out] entityNRec</code> - номер записи соответствующей сущности</li>
  </ul>

  <h3>Коды сущностей для получения составляющих СКК</h3>
  <p>
    В таблице представлены далеко не все возможные сущности, к которым в системе
    могут быть подвешены составляющие сложного корректирующего коэффициента. Однако,
    только эти коды сущностей могут возвращаться данной функцией.
  </p>

  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Сущность</td> </tr>
    <tr> <td><code>skkLschet</code></td>  <td><code>5</code></td>  <td>Лицевой счет</td> </tr>
    <tr> <td><code>skkPerexod</code></td> <td><code>6</code></td>  <td>Переход в межпериод</td> </tr>
    <tr> <td><code>skkLstab</code></td>   <td><code>10</code></td> <td>Табель</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetComplexCorrectiveFactorOnDay.htm">PA_GetComplexCorrectiveFactorOnDay</a></code> <br />
  <code><a href="exf--PA_CorrectiveFactor.htm">PA_CorrectiveFactor</a></code> <br />
#end
#endif
procedure PA_GetComplexCorrectiveFactor(OnDate: date, var entityCode: word, var entityNRec: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения сложного корректирующего коэффициента на заданный день месяца</brief>
  <p>
    Функция позволяет получить координаты (код сущности и номер записи) для
    вытягивания составляющих сложного корректирующего коэффициента на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Полученную пару <code>entityCode</code>, <code>entityNRec</code> можно использовать
    для работы со сложным корректирующим коэффициентом с помощью интерфейса
    <code>Z_STAFF::CorrKoefFunctions</code>.
  </p><p>
    В случае заданного лицевого счета, но незаданного месяца и года возвращаются неопределенные значения.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значения</li>
    <li><code>[out] entityCode</code> - код сущности, см. ниже</li>
    <li><code>[out] entityNRec</code> - номер записи соответствующей сущности</li>
  </ul>

  <h3>Коды сущностей для получения составляющих СКК</h3>
  <p>
    В таблице представлены далеко не все возможные сущности, к которым в системе
    могут быть подвешены составляющие сложного корректирующего коэффициента. Однако,
    только эти коды сущностей могут возвращаться данной функцией.
  </p>

  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Сущность</td> </tr>
    <tr> <td><code>skkLschet</code></td>  <td><code>5</code></td>  <td>Лицевой счет</td> </tr>
    <tr> <td><code>skkPerexod</code></td> <td><code>6</code></td>  <td>Переход в межпериод</td> </tr>
    <tr> <td><code>skkLstab</code></td>   <td><code>10</code></td> <td>Табель</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetComplexCorrectiveFactor.htm">PA_GetComplexCorrectiveFactor</a></code> <br />
  <code><a href="exf--PA_CorrectiveFactorOnDay.htm">PA_CorrectiveFactorOnDay</a></code> <br />
#end
#endif
procedure PA_GetComplexCorrectiveFactorOnDay(Day: byte, var entityCode: word, var entityNRec: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код системы оплаты на указанную дату</brief>
  <p>
    Возвращает код системы оплаты (KLSISOPL.SISOPL) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_PaymentModeOnDay.htm">PA_PaymentModeOnDay</a></code> <br />
#end
#endif
function PA_PaymentMode(OnDate: date): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код системы оплаты на заданный день месяца</brief>
  <p>
    Возвращает код системы оплаты (KLSISOPL.SISOPL) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_PaymentMode.htm">PA_PaymentMode</a></code> <br />
#end
#endif
function PA_PaymentModeOnDay(Day: byte): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код тарифа на указанную дату</brief>
  <p>
    Возвращает код тарифа (TARSTAV.CODTAR) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_TariffCodeOnDay.htm">PA_TariffCodeOnDay</a></code> <br />
#end
#endif
function PA_TariffCode(OnDate: date): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код тарифа на заданный день месяца</brief>
  <p>
    Возвращает код тарифа (TARSTAV.CODTAR) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_TariffCode.htm">PA_TariffCode</a></code> <br />
#end
#endif
function PA_TariffCodeOnDay(Day: byte): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает разряд на указанную дату</brief>
  <p>
    Возвращает тарифный разряд работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_WageCategoryOnDay.htm">PA_WageCategoryOnDay</a></code> <br />
#end
#endif
function PA_WageCategory(OnDate: date): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает разряд на заданный день месяца</brief>
  <p>
    Возвращает тарифный разряд на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_WageCategory.htm">PA_WageCategory</a></code> <br />
#end
#endif
function PA_WageCategoryOnDay(Day: byte): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает валюту на указанную дату</brief>
  <p>
    Возвращает ссылку на валюту (таблица KLVAL) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_CurrencyOnDay.htm">PA_CurrencyOnDay</a></code> <br />
#end
#endif
function PA_Currency(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает валюту на заданный день месяца</brief>
  <p>
    Возвращает ссылку на валюту (таблица KLVAL) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Currency.htm">PA_Currency</a></code> <br />
#end
#endif
function PA_CurrencyOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает признак "Формировать основную оплату" на указанную дату</brief>
  <p>
    Возвращает признак "Формировать основную оплату" работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Не ноль, если нужно формировать основную оплату, и ноль, если
    формировать основную оплату не нужно.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_OsnOplOnDay.htm">PA_OsnOplOnDay</a></code> <br />
#end
#endif
function PA_OsnOpl(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает признак "Формировать основную оплату" на заданный день месяца</brief>
  <p>
    Возвращает признак "Формировать основную оплату" на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Не ноль, если нужно формировать основную оплату, и ноль, если
    формировать основную оплату не нужно.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_OsnOpl.htm">PA_OsnOpl</a></code> <br />
#end
#endif
function PA_OsnOplOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код северной категории на указанную дату</brief>
  <p>
    Возвращает код северной категории (KLKATEGS.KOD) работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_NorthernCategoryOnDay.htm">PA_NorthernCategoryOnDay</a></code> <br />
#end
#endif
function PA_NorthernCategory(OnDate: date): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает код северной категории на заданный день месяца</brief>
  <p>
    Возвращает код северной категории (KLKATEGS.KOD) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_NorthernCategory.htm">PA_NorthernCategory</a></code> <br />
#end
#endif
function PA_NorthernCategoryOnDay(Day: byte): word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает признак фиксации северной категории на указанную дату</brief>
  <p>
    Возвращает признак фиксации северной категории работника на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_IsNorthernCategoryFixedOnDay.htm">PA_IsNorthernCategoryFixedOnDay</a></code> <br />
#end
#endif
function PA_IsNorthernCategoryFixed(OnDate: date): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает признак фиксации северной категории на заданный день месяца</brief>
  <p>
    Возвращает признак фиксации северной категории на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_IsNorthernCategoryFixed.htm">PA_IsNorthernCategoryFixed</a></code> <br />
#end
#endif
function PA_IsNorthernCategoryFixedOnDay(Day: byte): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает районный коэффициент на указанную дату</brief>
  <p>
    Возвращает величину районного коэффициента на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_RegionalFactorOnDay.htm">PA_RegionalFactorOnDay</a></code> <br />
#end
#endif
function PA_RegionalFactor(OnDate: date): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает районный коэффициент на заданный день месяца</brief>
  <p>
    Возвращает величину районного коэффициента на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_RegionalFactor.htm">PA_RegionalFactor</a></code> <br />
#end
#endif
function PA_RegionalFactorOnDay(Day: byte): double; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает бухгалтерский счет на указанную дату</brief>
  <p>
    Возвращает бухгалтерский счет на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AccountOnDay.htm">PA_AccountOnDay</a></code> <br />
#end
#endif
function PA_Account(OnDate: date): string; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает бухгалтерский счет на заданный день месяца</brief>
  <p>
    Возвращает бухгалтерский счет на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Account.htm">PA_Account</a></code> <br />
#end
#endif
function PA_AccountOnDay(Day: byte): string; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает бухгалтерский субсчет на указанную дату</brief>
  <p>
    Возвращает бухгалтерский субсчет на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_ControlAccountOnDay.htm">PA_ControlAccountOnDay</a></code> <br />
#end
#endif
function PA_ControlAccount(OnDate: date): string; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает бухгалтерский субсчет на заданный день месяца</brief>
  <p>
    Возвращает бухгалтерский субсчет на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_ControlAccount.htm">PA_ControlAccount</a></code> <br />
#end
#endif
function PA_ControlAccountOnDay(Day: byte): string; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения аналитики с заданным кодом на указанную дату</brief>
  <p>
    Функция позволяет получить значение аналитики с кодом <code>Tbl</code>
    на дату <code>OnDate</code>. Если удается получить значение, то оно
    записывается в <code>Value</code>, а функция возвращает <code>true</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
    <li><code>Tbl</code> - код таблицы аналитики</li>
    <li><code>[out] Value</code> - значение аналитики</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает <code>true</code>, если удалось получить значение аналитики
    с заданным кодом.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetAnalyticsOnDay.htm">PA_GetAnalyticsOnDay</a></code> <br />
  <code><a href="exf--PA_GetAllAnalytics.htm">PA_GetAllAnalytics</a></code> <br />
#end
#endif
function PA_GetAnalytics(OnDate: date, Tbl: word, var Value: comp): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения аналитики с кодом <code>Tbl</code> на заданный день месяца</brief>
  <p>
    Функция позволяет получить значение аналитики с кодом <code>Tbl</code>
    на день <code>Day</code> предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Если удается получить значение, то оно записывается в <code>Value</code>,
    а функция возвращает <code>true</code>.
  </p><p>
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
    <li><code>Tbl</code> - код таблицы аналитики</li>
    <li><code>[out] Value</code> - значение аналитики</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает <code>true</code>, если удалось получить значение аналитики
    с заданным кодом.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetAnalytics.htm">PA_GetAnalytics</a></code> <br />
  <code><a href="exf--PA_GetAllAnalyticsOnDay.htm">PA_GetAllAnalyticsOnDay</a></code> <br />
#end
#endif
function PA_GetAnalyticsOnDay(Day: byte, Tbl: word, var Value: comp): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения полного набора аналитик на указанную дату</brief>
  <p>
    Функция копирует значения всех аналитик работника на дату <code>OnDate</code>
    в массивы <code>Tbl</code> и <code>Kau</code>.
    <code>Tbl</code> должен быть массивом из шести элементов типа <code>word</code>,
    <code>Kau</code> - массивом из шести элементов типа <code>comp</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значения</li>
    <li><code>[out] Tbl</code> - массив кодов таблиц аналитик</li>
    <li><code>[out] Kau</code> - массив ссылок на записи таблиц аналитик</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetAllAnalyticsOnDay.htm">PA_GetAllAnalyticsOnDay</a></code> <br />
  <code><a href="exf--PA_GetAnalytics.htm">PA_GetAnalytics</a></code> <br />
#end
#endif
procedure PA_GetAllAnalytics(OnDate: date, var Tbl: anytype, var Kau: anytype); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения полного набора аналитик на заданный день месяца</brief>
  <p>
    Функция копирует значения всех аналитик текущего работника на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года в массивы <code>Tbl</code> и <code>Kau</code>.
    <code>Tbl</code> должен быть массивом из шести элементов типа <code>word</code>,
    <code>Kau</code> - массивом из шести элементов типа <code>comp</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значения</li>
    <li><code>[out] Tbl</code> - массив кодов таблиц аналитик</li>
    <li><code>[out] Kau</code> - массив ссылок на записи таблиц аналитик</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetAllAnalytics.htm">PA_GetAllAnalytics</a></code> <br />
  <code><a href="exf--PA_GetAnalyticsOnDay.htm">PA_GetAnalyticsOnDay</a></code> <br />
#end
#endif
procedure PA_GetAllAnalyticsOnDay(Day: byte, var Tbl: anytype, var Kau: anytype); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает ТХО на указанную дату</brief>
  <p>
    Возвращает ссылку на ТХО (таблица HOZOPER) на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_StandardBusinessTransactionOnDay.htm">PA_StandardBusinessTransactionOnDay</a></code> <br />
#end
#endif
function PA_StandardBusinessTransaction(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает ТХО на заданный день месяца</brief>
  <p>
    Возвращает ссылку на ТХО (таблица HOZOPER) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_StandardBusinessTransaction.htm">PA_StandardBusinessTransaction</a></code> <br />
#end
#endif
function PA_StandardBusinessTransactionOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает параметр ТХО на указанную дату</brief>
  <p>
    Возвращает параметр ТХО на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_StandardBusinessTransactionParameterOnDay.htm">PA_StandardBusinessTransactionParameterOnDay</a></code> <br />
#end
#endif
function PA_StandardBusinessTransactionParameter(OnDate: date): string; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает параметр ТХО на заданный день месяца</brief>
  <p>
    Возвращает параметр ТХО на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_StandardBusinessTransactionParameter.htm">PA_StandardBusinessTransactionParameter</a></code> <br />
#end
#endif
function PA_StandardBusinessTransactionParameterOnDay(Day: byte): string; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает дополнительную аналитику на указанную дату</brief>
  <p>
    Возвращает ссылку на набор дополнительных аналитик (таблица OTPDOP) на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AdditionalAnalyticsOnDay.htm">PA_AdditionalAnalyticsOnDay</a></code> <br />
#end
#endif
function PA_AdditionalAnalytics(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает дополнительную аналитику на заданный день месяца</brief>
  <p>
    Возвращает ссылку на набор дополнительных аналитик (таблица OTPDOP) на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    В случае заданного лицевого счета, но незаданного месяца и года возвращается неопределенное значение.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AdditionalAnalytics.htm">PA_AdditionalAnalytics</a></code> <br />
#end
#endif
function PA_AdditionalAnalyticsOnDay(Day: byte): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения источников финансирования на дату</brief>
  <p>
    Функция позволяет получить координаты (код таблицы и номер записи) для
    вытягивания разбивки по источникам финансирования на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Полученную пару <code>wTable</code>, <code>cTable</code> можно использовать
    для работы с источниками финансирования с помощью интерфейса
    <code>Z_STAFFIF::WorkWithIF</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значения</li>
    <li><code>[out] wTable</code> - код таблицы, к которой подвешены источники финансирования (LSCHET, PEREXOD, LSTAB)</li>
    <li><code>[out] cTable</code> - номер записи таблицы, к которой подвешены источники финансирования</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetSourceFinanceOnDay.htm">PA_GetSourceFinanceOnDay</a></code> <br />
#end
#endif
procedure PA_GetSourceFinance(OnDate: date, var wTable: word, var cTable: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения источников финансирования на заданный день месяца</brief>
  <p>
    Функция позволяет получить координаты (код таблицы и номер записи) для
    вытягивания разбивки по источникам финансирования на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Полученную пару <code>wTable</code>, <code>cTable</code> можно использовать
    для работы с источниками финансирования с помощью интерфейса
    <code>Z_STAFFIF::WorkWithIF</code>.
  </p><p>
    В случае заданного лицевого счета, но незаданного месяца и года возвращаются неопределенные значения.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значения</li>
    <li><code>[out] wTable</code> - код таблицы, к которой подвешены источники финансирования (LSCHET, PEREXOD, LSTAB)</li>
    <li><code>[out] cTable</code> - номер записи таблицы, к которой подвешены источники финансирования</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetSourceFinance.htm">PA_GetSourceFinance</a></code> <br />
#end
#endif
procedure PA_GetSourceFinanceOnDay(Day: byte, var wTable: word, var cTable: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения альтернативной оплаты на дату</brief>
  <p>
    Функция позволяет получить координаты (код таблицы и номер записи) для
    вытягивания альтернативной оплаты на дату <code>OnDate</code>.
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Полученную пару <code>wTable</code>, <code>cTable</code> можно использовать
    для работы с альтернативной оплатой с помощью интерфейса
    <code>Z_ZAR::AlternativePayment</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значения</li>
    <li><code>[out] wTable</code> - код таблицы, к которой подвешена альтернативная оплата (LSCHET, PEREXOD, LSTAB)</li>
    <li><code>[out] cTable</code> - номер записи таблицы, к которой подвешена альтернативная оплата</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetAlternativePaymentOnDay.htm">PA_GetAlternativePaymentOnDay</a></code> <br />
#end
#endif
procedure PA_GetAlternativePayment(OnDate: date, var wTable: word, var cTable: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Функция получения альтернативной на заданный день месяца</brief>
  <p>
    Функция позволяет получить координаты (код таблицы и номер записи) для
    вытягивания альтернативной оплаты на день <code>Day</code>
    предварительно заданного функцией <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code>
    месяца и года, для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
    Полученную пару <code>wTable</code>, <code>cTable</code> можно использовать
    для работы с альтернативной оплатой с помощью интерфейса
    <code>Z_ZAR::AlternativePayment</code>.
  </p><p>
    В случае заданного лицевого счета, но незаданного месяца и года возвращаются неопределенные значения.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значения</li>
    <li><code>[out] wTable</code> - код таблицы, к которой подвешена альтернативная оплата (LSCHET, PEREXOD, LSTAB)</li>
    <li><code>[out] cTable</code> - номер записи таблицы, к которой подвешена альтернативная оплата</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetAlternativePayment.htm">PA_GetAlternativePayment</a></code> <br />
#end
#endif
procedure PA_GetAlternativePaymentOnDay(Day: byte, var wTable: word, var cTable: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает ссылку на переход в межпериод, наиболее актуальный на указанную дату</brief>
  <p>
    Возвращает ссылку на переход (таблица PEREXOD) работника, приходящийся
    на дату <code>OnDate</code>. В случае пересечения переходов в межпериод
    возвращается ссылка на более "верхний" переход, т.е. переход, начавшийся
    позже других остальных, имеющих место быть на данный день. В случае, когда
    в один и тот же день начинаются несколько переходов, "верхним" среди них
    считается наиболее короткий по длительности.
  </p><p>
    Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_PerexodOnDay.htm">PA_PerexodOnDay</a></code> <br />
#end
#endif
function PA_Perexod(OnDate: date): comp; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает ссылку на переход в межпериод, наиболее актуальный на заданный день месяца</brief>
  <p>
    Возвращает ссылку на переход (таблица PEREXOD) работника, приходящийся
    на день <code>Day</code> предварительно заданного функцией
    <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code> месяца и года,
    для текущего лицевого счета. Текущий лицевой счет задается предварительным вызовом функции
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>.
  </p><p>
    В случае пересечения переходов в межпериод
    возвращается ссылка на более "верхний" переход, т.е. переход, начавшийся
    позже других остальных, имеющих место быть на данный день. В случае, когда
    в один и тот же день начинаются несколько переходов, "верхним" среди них
    считается наиболее короткий по длительности.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который нужно получить значение</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Perexod.htm">PA_Perexod</a></code> <br />
#end
#endif
function PA_PerexodOnDay(Day: byte): comp; external #G_WorkTable;

//------------------------------------------------------------------------------
#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Установить месяц и год для функций получения параметров ЛС по дню месяца</brief>
  <p>
    Функция задает месяц и год, с которыми будут работать функции получения параметров ЛС
    по дню месяца. Для сброса текущего месяца и года следует передать <code>0</code>
    в каждом из параметров. Сброс текущего месяца и года происходит также при вызове
    <code><a href="exf--PA_Assign.htm">PA_Assign</a></code>, если при этом меняется лицевой счет.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Month</code> - месяц</li>
    <li><code>Year</code> - год</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_GetMonth.htm">PA_GetMonth</a></code> <br />
  <code><a href="exf--PA_GetYear.htm">PA_GetYear</a></code> <br />
#end
#endif
procedure PA_SetMonthYear(Month: word, Year: integer); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает месяц, с которым работают функции получения параметров ЛС по дню месяца</brief>
  <p>
    Если текущий месяц не определен, возвращает <code>0</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code> <br />
  <code><a href="exf--PA_GetYear.htm">PA_GetYear</a></code> <br />
#end
#endif
function PA_GetMonth: word; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Возвращает год, с которым работают функции получения параметров ЛС по дню месяца</brief>
  <p>
    Если текущий год не определен, возвращает <code>0</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_SetMonthYear.htm">PA_SetMonthYear</a></code> <br />
  <code><a href="exf--PA_GetMonth.htm">PA_GetMonth</a></code> <br />
#end
#endif
function PA_GetYear: integer; external #G_WorkTable;

//------------------------------------------------------------------------------
#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Добавить игнорируемую сущность</brief>
  <p>
    Добавить сущность в список сущностей, игнорируемых при получении параметров ЛС на дату.
    Если необходимо игнорировать все записи какой-либо таблицы, параметр <code>RecordNumber</code>
    должен быть равен <code>0</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи (<code>0</code> - игнорировать все записи)</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_RemoveIgnored.htm">PA_RemoveIgnored</a></code> <br />
  <code><a href="exf--PA_IsIgnored.htm">PA_IsIgnored</a></code> <br />
#end
#endif
procedure PA_AddIgnored(TableCode: word, RecordNumber: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Убрать сущность из списка игнорируемых</brief>
  <p>
    Убрать сущность из списка игнорируемых при получении параметров ЛС на дату,
    если таковая сущность присутствует в списке.
    Функция, обратная к <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи</li>
  </ul>

  <h3>Замечания</h3>
  <p>
    Данная функция снимает ровно те ограничения, которые были наложены функцией
    <code>PA_AddIgnored</code>. Это означает, во-первых, то, что все добавленные ограничения, для
    которых не было вызвано парное <code>PA_RemoveIgnored</code>, остаются в силе, даже если снять
    более всеобъемлющее ограничение:
  </p>
  <pre class=example>
    PA_AddIgnored(coPEREXOD, 12345); // добавили игнорирование перехода с NRec-ом 12345
    PA_AddIgnored(coPEREXOD, 0); // добавили игнорирование "всех переходов"
    PA_RemoveIgnored(coPEREXOD, 0); // убрали игнорирование "всех переходов"
    // Переход с NRec-ом 12345 всё ещё игнорируется, т.к. ограничение {coPEREXOD, 12345} не снималось.
  </pre>
  <p>
    Снимать ограничение нужно с теми же значениями входных параметров, с которыми оно было наложено:
  </p>
  <pre class=example>
    PA_AddIgnored(coPEREXOD, 12345); // добавили игнорирование какого-то перехода
    PA_RemoveIgnored(coPEREXOD, 0); // <b><font color="red">Не правильно!</font></b> Попытались убрать игнорирование
    // "всех переходов", но данное ограничение не было наложено, соответственно, ничего не произойдёт,
    // а переход с NRec-ом 12345 останется в игнорируемых.
  </pre>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code> <br />
  <code><a href="exf--PA_IsIgnored.htm">PA_IsIgnored</a></code> <br />
  <code><a href="exf--PA_RemoveAllIgnored.htm">PA_RemoveAllIgnored</a></code> <br />
#end
#endif
procedure PA_RemoveIgnored(TableCode: word, RecordNumber: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Игнорируется ли данная сущность при получении параметров ЛС на дату</brief>
  <p>
    Возвращает true, если сущность с кодом таблицы <code>TableCode</code> и номером записи
    <code>RecordNumber</code> подлежит игнорированию при вычислении параметров ЛС на дату
    согласно ограничениям, наложенным функцией <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code>.
    Функция работает с учетом множественности ограничений: если было добавлено игнорирование
    "всех записей" какой-то таблицы, то будет возвращать <code>true</code> для любого <code>RecordNumber</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи (<code>0</code>, если нужно проверить,
    игнорируются ли "все записи")</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Ограничения, наложенные вызовом
    <code><a href="exf--PA_IgnoreNonPermanentPerexods.htm">PA_IgnoreNonPermanentPerexods</a></code>,
    данной функцией не учитываются.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code> <br />
  <code><a href="exf--PA_RemoveIgnored.htm">PA_RemoveIgnored</a></code> <br />
#end
#endif
function PA_IsIgnored(TableCode: word, RecordNumber: comp): boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Включить/отключить игнорирование временных переходов</brief>
  <p>
    Функция включает либо отключает игнорирование переходов с заполненной датой окончания
    при получении параметров ЛС на дату. Под датой окончания перехода здесь понимается
    "Исходная дата окончания" (поле PEREXOD.LASTDATE).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnOff</code> - <code>true</code>, если нужно включить игнорирование,
      <code>false</code> - если отключить.</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Функция работает независимо от настроек игнорирования перехода по NRec-у
    (<code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code> и компания),
    поэтому снятие ограничений при помощи
    <code><a href="exf--PA_RemoveIgnored.htm">PA_RemoveIgnored</a></code>
    не будет приводить к автоматическому отключения игнорирования "временных переходов".
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AreNonPermanentPerexodsIgnored.htm">PA_AreNonPermanentPerexodsIgnored</a></code> <br />
#end
#endif
procedure PA_IgnoreNonPermanentPerexods(OnOff: boolean); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Включено ли игнорирование временных переходов</brief>
  <p>
    Возвращает <code>true</code>, если на текущий момент переходы с заполненной датой окончания
    игнорируются при получении параметров ЛС на дату. Под датой окончания перехода здесь понимается
    "Исходная дата окончания" (поле PEREXOD.LASTDATE).
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_IgnoreNonPermanentPerexods.htm">PA_IgnoreNonPermanentPerexods</a></code> <br />
#end
#endif
function PA_AreNonPermanentPerexodsIgnored: boolean; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Снять все ограничения по игнорированию сущностей</brief>
  <p>
    Функция снимает все ограничения по игнорированию сущностей, которые были наложены:
    как ограничения по коду таблицы и номеру записи
    (<code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code>),
    так и ограничения по игнорированию переходов с датой окончания
    (<code><a href="exf--PA_IgnoreNonPermanentPerexods.htm">PA_IgnoreNonPermanentPerexods</a></code>).
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_AddIgnored.htm">PA_AddIgnored</a></code> <br />
  <code><a href="exf--PA_IgnoreNonPermanentPerexods.htm">PA_IgnoreNonPermanentPerexods</a></code> <br />
  <code><a href="exf--PA_RemoveIgnored.htm">PA_RemoveIgnored</a></code> <br />
#end
#endif
procedure PA_RemoveAllIgnored; external #G_WorkTable;

//------------------------------------------------------------------------------
#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Сохранить текущие настройки вычисления параметров ЛС на дату в стеке</brief>
  <p>
    Сохраняет все возможные настройки вычисления параметров ЛС на дату для последующего
    восстановления при помощи функции <code><a href="exf--PA_Pop.htm">PA_Pop</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Pop.htm">PA_Pop</a></code> <br />
#end
#endif
procedure PA_Push; external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Восстановить настройки вычисления параметров ЛС на дату из стека</brief>
  <p>
    Восстанавливает настройки вычисления параметров ЛС на дату из стека.
    Возвращает <code>true</code>, если вызов корректен (стек перед вызовом не был пуст).
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Push.htm">PA_Push</a></code> <br />
#end
#endif
function PA_Pop: boolean; external #G_WorkTable;

//------------------------------------------------------------------------------
//                                PA_INVALIDATE
// Эта группа функций идёт отдельно, поскольку предполагает работу
// с менеджерами данных, а не с вычислителями реквизитов ЛС.
//------------------------------------------------------------------------------
#ifdef PADETAILS_VIP_DOC
#doc article PADAPI_Invalidate
  <brief>Сообщения о потере актуальности данных для подсистемы получения параметров ЛС на дату</brief>
  <p>
    Необходимость посылки сообщений об изменении данных в БД - плата за быстродействие подсистемы
    получения параметров ЛС на дату. По мере своей работы подсистема накапливает используемые
    данные в кэше, что экономит время на операции чтения из БД, но обязывает поддерживать
    содержимое кэша в актуальном состоянии.
  </p>
  <p>
    Функционал обработки сигналов об изменении данных в БД <b>не связан</b> c
    <a href="art--PADAPI_About.htm">вычислением параметров ЛС на дату</a>:
    он одинаково работает независимо от того, был ли указан текущий лицевой счет
    (<code><a href="exf--PA_Assign.htm">PA_Assign</a></code>), и был ли захвачен
    <a href="art--PADAPI_UsingContexts.htm">прикладной контекст
    для функций получения параметров ЛС на дату</a>.
  </p>

  <h3>Коротко об архитектуре</h3>
  <p>
    Для вычисления параметров отдельно взятого лицевого счета создается <b>менеджер данных</b>.
    Это объект, производящий чтение данных из БД и их кэширование. Именно он и принимает
    в конечном счете сигналы о потере актуальности <i>находящихся в его кэше</i> данных.
    Менеджер данных для любого ЛС может быть создан только в единственном экземпляре.
    Вместе с тем, одновременно разным модулям системы могут понадобиться данные
    по разным лицевым счетам, то есть, в один и тот же момент времени могут существовать
    несколько разных менеджеров данных.
  </p>

  <h3>Перечень функций</h3>
  <p>
    Все функции для сообщения о потере актуальности данных представлены ниже:
  </p>
  <code><a href="exf--PA_Invalidate.htm">PA_Invalidate</a></code> <br />
  <code><a href="exf--PA_InvalidateFor.htm">PA_InvalidateFor</a></code> <br />
  <code><a href="exf--PA_InvalidateExtrAttr.htm">PA_InvalidateExtrAttr</a></code> <br />
  <code><a href="exf--PA_InvalidateExtrAttrFor.htm">PA_InvalidateExtrAttrFor</a></code> <br />
  <p>
    Отличия этих функций друг от друга можно представить следующим образом:
  </p>
  <table>
    <tr>
      <td></td>
      <td>Исключающие из кэша запись целиком</td>
      <td>Исключающие из кэша только внешние атрибуты записи</td>
    </tr>
    <tr>
      <td>Передают сообщение всем созданным на текущий момент менеджерам данных</td>
      <td><code>PA_Invalidate</code></td>
      <td><code>PA_InvalidateExtrAttr</code></td>
    </tr>
    <tr>
      <td>Передают сообщение только менеджеру данных заданного ЛС</td>
      <td><code>PA_InvalidateFor</code></td>
      <td><code>PA_InvalidateExtrAttrFor</code></td>
    </tr>
  </table>

  <h3>Примеры употребления</h3>
  <pre class=example>
    PEREXOD.DATOK := date(0, 0, 0);
    update current PEREXOD;
    // Сигнал об изменении данных в БД для подсистемы вычисления параметров ЛС на дату
    PA_InvalidateFor(PEREXOD.CLSCH, coPEREXOD, PEREXOD.NREC);
    // После этого можно получать актуальные параметры ЛС функциями получения значений на дату.
    // <b>НЕ НУЖНО</b> повторно вызывать PA_Assign
    // <b>НЕ НУЖНО</b> вызывать PA_Reset, либо заново устанавливать те же самые игнорируемые сущности и т.д.
    // <b>Всё будет учтено автоматически.</b>
  </pre>
  <pre class=example>
    var previousLSchet: comp;
    previousLSchet := PEREXOD.CLSCH;

    PEREXOD.CLSCH := GetNewLSchet; // что-то возвращает
    update current PEREXOD;

    // Сигнал об изменении данных в БД для подсистемы вычисления параметров ЛС на дату
    PA_InvalidateFor(previousLSchet, coPEREXOD, PEREXOD.NREC); // аналогично удалению у старого ЛС
    PA_InvalidateFor(PEREXOD.CLSCH, coPEREXOD, 0); // аналогично добавлению у нового ЛС
  </pre>

  <h3>См. также</h3>
  <a href="art--PADAPI_About.htm">Функции получения параметров ЛС на дату</a> <br />
#end

#doc
  <brief>Сообщение о потере актуальности данных</brief>
  <p>
    Сообщает подсистеме вычисления параметров ЛС на дату о том, что некоторые содержащиеся в её кэше
    данные устарели, и дальнейшее хранение их в памяти не имеет смысла.
  </p><p>
    Данная функция рассылает сообщение об изменении данных всем созданным на текущий момент
    менеджерам данных ЛС. При ненулевом значении параметра <code>RecordNumber</code>
    соответствующие изменения происходят в кэше только того менеджера данных,
    к лицевому счету которого относится указанная сущность; при нулевом - сбрасывается
    кэш соотв. таблицы по всем менеджерам данных.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи (<code>0</code>, если недействительными
      объявляются все записи)</li>
  </ul>

  <h3>Замечания</h3>
  <p>
    Если данная функция вызвана после <b>удаления/обновления</b> записи в БД,
    то оптимальным вариантом использования будет передать NRec удаленной/измененной записи
    в параметре <code>RecordNumber</code>. Если же функция вызывается для того,
    чтобы подсистема вычисления параметров ЛС на дату подхватила новую запись
    после <b>вставки</b>, <code>RecordNumber</code> должен быть <code>0</code>.
    Это вызовет полную очистку кэша, но только так можно заставить менеджер данных
    прочитать новую запись из БД, поскольку результаты неудачных обращений к БД
    они тоже кэшируются.
  </p> <p>
    Сброс "вообще всего" не предусмотрен: при нулевом значении параметра <code>TableCode</code>
    в результате вызова ничего не произойдет.
  </p> <p>
    Если не вызывает затруднений определить конкретный ЛС, для которого нужно
    обновить загруженные в память данные, лучше использовать функцию
    <code><a href="exf--PA_InvalidateFor.htm">PA_InvalidateFor</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_Invalidate.htm">Сообщения о потере актуальности данных для подсистемы получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_InvalidateExtrAttr.htm">PA_InvalidateExtrAttr</a></code> <br />
  <code><a href="exf--PA_InvalidateFor.htm">PA_InvalidateFor</a></code> <br />
#end
#endif
procedure PA_Invalidate(TableCode: word, RecordNumber: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Сообщение о потере актуальности данных из внешних атрибутов</brief>
  <p>
    Сообщает подсистеме вычисления параметров ЛС на дату о том, что некоторые содержащиеся в её кэше
    данные устарели, и дальнейшее хранение их в памяти не имеет смысла.
    Функция подходит для тех случаев, когда данные из самой записи таблицы не менялись,
    но изменились данные из внешних атрибутов (не только
    <link objInterface C_ExtClass::objExtAttr>вот этих вот</link>,
    а вообще любых данных, физически представляющих собой внешние атрибуты указанной записи БД).
  </p><p>
    Данная функция рассылает сообщение об изменении данных всем созданным на текущий момент
    менеджерам данных ЛС.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи</li>
  </ul>

  <h3>Замечания</h3>
  <p>
    Если поменялись не только внешние атрибуты записи, но и сама запись, то в использовании
    данной функции нет нужды: <code><a href="exf--PA_Invalidate.htm">PA_Invalidate</a></code>
    одним действием удалит из кэша данные и по самой записи, и по её внешним атрибутам.
    Таким образом, <code>PA_InvalidateExtrAttr</code> производит только часть действий,
    производимых функцией <code>PA_Invalidate</code>.
  </p><p>
    В отличие от <code>PA_Invalidate</code>, <code>0</code> в параметре <code>RecordNumber</code>
    здесь недопустим: речь должна идти всегда о конкретной существующей в БД записи.
  </p><p>
    Если не вызывает затруднений определить ЛС, для которого нужно
    обновить загруженные в память данные, лучше использовать функцию
    <code><a href="exf--PA_InvalidateExtrAttrFor.htm">PA_InvalidateExtrAttrFor</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_Invalidate.htm">Сообщения о потере актуальности данных для подсистемы получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_Invalidate.htm">PA_Invalidate</a></code> <br />
  <code><a href="exf--PA_InvalidateExtrAttrFor.htm">PA_InvalidateExtrAttrFor</a></code> <br />
#end
#endif
procedure PA_InvalidateExtrAttr(TableCode: word, RecordNumber: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Сообщение о потере актуальности данных</brief>
  <p>
    Сообщает подсистеме вычисления параметров ЛС на дату о том, что некоторые содержащиеся в её кэше
    данные устарели, и дальнейшее хранение их в памяти не имеет смысла.
  </p><p>
    Данная функция передает сообщение об изменении данных менеджеру данных лицевого счета
    <code>LSchetNRec</code>, соответственно, изменения будут происходить в кэше только
    этого менеджера данных, даже если фактически сущность с NRec-ом <code>RecordNumber</code>
    будет принадлежать другому ЛС (в таком случае вообще ничего не произойдёт, так как
    в кэше менеджера данных одного ЛС не бывает данных для другого ЛС).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>LSchetNRec</code> - лицевой счет, данные которого теряют актуальность</li>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи (<code>0</code>, если недействительными
      объявляются все записи)</li>
  </ul>

  <h3>Замечания</h3>
  <p>
    Если данная функция вызвана после <b>удаления/обновления</b> записи в БД,
    то оптимальным вариантом использования будет передать NRec удаленной/измененной записи
    в параметре <code>RecordNumber</code>. Если же функция вызывается для того,
    чтобы подсистема вычисления параметров ЛС на дату подхватила новую запись
    после <b>вставки</b>, <code>RecordNumber</code> должен быть <code>0</code>.
    Это вызовет полную очистку кэша, но только так можно заставить менеджер данных
    прочитать новую запись из БД, поскольку результаты неудачных обращений к БД
    они тоже кэшируются.
  </p> <p>
    Сброс "вообще всего" не предусмотрен: при нулевом значении параметра <code>TableCode</code>
    в результате вызова ничего не произойдет.
  </p> <p>
    Если определение ЛС, для которого изменились данные, затруднено, либо сигнал
    об изменении данных по каким-либо причинам необходимо передать всем созданным
    менеджерам данных, можно вместо данной функции использовать
    <code><a href="exf--PA_Invalidate.htm">PA_Invalidate</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_Invalidate.htm">Сообщения о потере актуальности данных для подсистемы получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_InvalidateExtrAttrFor.htm">PA_InvalidateExtrAttrFor</a></code> <br />
  <code><a href="exf--PA_Invalidate.htm">PA_Invalidate</a></code> <br />
#end
#endif
procedure PA_InvalidateFor(LSchetNRec: comp, TableCode: word, RecordNumber: comp); external #G_WorkTable;

#ifdef PADETAILS_VIP_DOC
#doc
  <brief>Сообщение о потере актуальности данных из внешних атрибутов</brief>
  <p>
    Сообщает подсистеме вычисления параметров ЛС на дату о том, что некоторые содержащиеся в её кэше
    данные устарели, и дальнейшее хранение их в памяти не имеет смысла.
    Функция подходит для тех случаев, когда данные из самой записи таблицы не менялись,
    но изменились данные из внешних атрибутов (не только
    <link objInterface C_ExtClass::objExtAttr>вот этих вот</link>,
    а вообще любых данных, физически представляющих собой внешние атрибуты указанной записи БД).
  </p><p>
    Данная функция передает сообщение об изменении данных менеджеру данных лицевого счета
    <code>LSchetNRec</code>, соответственно, изменения будут происходить в кэше только
    этого менеджера данных, даже если фактически сущность с NRec-ом <code>RecordNumber</code>
    будет принадлежать другому ЛС (в таком случае вообще ничего не произойдёт, так как
    в кэше менеджера данных одного ЛС не бывает данных для другого ЛС).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>LSchetNRec</code> - лицевой счет, данные которого теряют актуальность</li>
    <li><code>TableCode</code> - код таблицы (PEREXOD, LSCHET, LSTAB)</li>
    <li><code>RecordNumber</code> - номер записи</li>
  </ul>

  <h3>Замечания</h3>
  <p>
    Если поменялись не только внешние атрибуты записи, но и сама запись, то в использовании
    данной функции нет нужды: <code><a href="exf--PA_InvalidateFor.htm">PA_InvalidateFor</a></code>
    одним действием удалит из кэша данные и по самой записи, и по её внешним атрибутам.
    Таким образом, <code>PA_InvalidateExtrAttrFor</code> производит только часть действий,
    производимых функцией <code>PA_InvalidateFor</code>.
  </p><p>
    В отличие от <code>PA_InvalidateFor</code>, <code>0</code> в параметре <code>RecordNumber</code>
    здесь недопустим: речь должна идти всегда о конкретной существующей в БД записи.
  </p><p>
    Если определение ЛС, для которого изменились данные, затруднено,
    можно вместо данной функции использовать
    <code><a href="exf--PA_InvalidateExtrAttr.htm">PA_InvalidateExtrAttr</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--PADAPI_Invalidate.htm">Сообщения о потере актуальности данных для подсистемы получения параметров ЛС на дату</a> <br />
  <code><a href="exf--PA_InvalidateFor.htm">PA_InvalidateFor</a></code> <br />
  <code><a href="exf--PA_InvalidateExtrAttr.htm">PA_InvalidateExtrAttr</a></code> <br />
#end
#endif
procedure PA_InvalidateExtrAttrFor(LSchetNRec: comp, TableCode: word, RecordNumber: comp); external #G_WorkTable;
//------------------------------------------------------------------------------
