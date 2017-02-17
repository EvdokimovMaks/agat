//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Табельный учет
// Описания зарегистрированных функций
//******************************************************************************

#ifdef Gal9_1
  #define G_WorkTable 'G_WorkTable.dll'
#else
  #define G_WorkTable 'WT.DLL'
#end

//------------------------------------------------------------------------------
//                        АВТОДОКУМЕНТАЦИЯ ПО ТАБЕЛЮ!
// Друзья! Для того, чтобы автодока и впредь сохраняла свою целостность,
// концептуальное единство и неповторимый колорит, давайте руководствоваться
// следующими правилами при добавлении сюда новых функций!
//
// Правило номер 1: ДОБАВИЛ ФУНКЦИЮ - НАПЕШЫ ДОКУ!
//
// Правило номер 2: Если функция имеет ярко выраженную принадлежность к какой-либо группе
//    функций (информационные, подсчет кол-ва часов), описываем её в куче функций соотв. группы,
//    чтобы будущим поколениям не приходилось прыгать за ней по всему исходнику.
//    И наоборот: если принадлежность не ясна, не надо втыкать её описание посреди
//    определённой группы функций; давайте всю свалку организуем внизу исходника.
//
// Правило номер 3: Придерживаемся единого оформления описания функций!
//    1) <brief> - здесь не надо растекаться мыслью по древу;
//                 всё, о чём сильно хочется сказать, но что в одну-полторы строчки не умещается,
//                 пишем в подробное описание
//    2) один абзац с описанием (может отсутствовать, если и так коню понятно. Коня брать из Палаты мер и весов)
//    3) раздел "Параметры" (если есть)
//    4) раздел "Возвращаемое значение" (если надо, т.е. если данная мысль не была выражена в brief и первом абзаце)
//    5) далее, опционально, разделы "Замечание" и "Примечание"; порядок не регламентирован
//    6) раздел "См. также"
//    Правило касается как последовательности разделов, так и их оформления.
//
// Правило номер 4: Если функция принадлежит какой-либо группе, то:
//    - в "См. также" первая ссылка должна быть на статью, посвященную соотв. группе функций
//    - в статье, посвященной группе функций, добавляем ссылку на данную функцию (чтобы все узнали о нашей новой функции!)
//    Ссылка на корневую статью в такой функции НЕ_НУЖНА!
//
// Правило номер 5: Если функция НЕ принадлежит какой-либо группе, то в её "См. также"
//    добавляем ссылку на корневую статью, а саму функцию прописываем в списке
//    в разделе "Прочие функции табеля".
//------------------------------------------------------------------------------

#if #__TOOLVERSION__ < 5005.017
#warning Корректная сборка G_WT_EF.inc возможна только на Атлантисе 5.5.17 и выше!
#endif

// Корневая статья для всего табельного функционала
#doc article WTABELDOC_AboutWT
  <brief>Табель учета рабочего времени</brief>
  <p>
    <b>Табель учета рабочего времени</b> - функционал Галактики, занимающийся
    формированием табелей и предоставляющий доступ ко всевозможным готовым данным, полученным
    в результате формирования табеля. Для пользовательских алгоритмов и для разработки
    на языке VIP данный функционал доступен через так называемые табельные функции,
    которые описываются в данной документации.
  </p>
  <p>
    Табель учета рабочего времени позволяет:
  </p>
  <ul>
    <li><b>Подсчитывать количество часов.</b> Выходные, вечерние, праздничные,
      обычные рабочие, <a href="art--WTABELDOC_HourKinds.htm">самые разнообразные</a>;
      в течение одного дня, за месяц, в промежутке между двумя датами!
      <a href="art--WTABELDOC_AboutDaysAndHours.htm">Подробнее.</a> </li>

    <li><b>Подсчитывать количество дней.</b> Выходные, праздничные,
      <a href="art--WTABELDOC_DayKinds.htm">другие</a>;
      опять же за любой промежуток времени.
      <a href="art--WTABELDOC_AboutDaysAndHours.htm">Подробнее.</a></li>

    <li>При подсчете количества дней и часов существует возможность
      накладывать <b>поденные фильтры</b> на дни текущего месяца, для того,
      чтобы выбросить некоторые из дней из расчета.
      <a href="art--WTABELDOC_AboutFilters.htm">Подробнее.</a></li>

    <li><b>Определять периоды с заданными характеристиками в месяце.</b>
      Функционал табеля позволяет разбивать месяц на абстрактные периоды,
      руководствуясь определенными правилами разбиения, для последующей работы с ними.
      <a href="exf--WT_LoadPeriods.htm">Подробнее.</a></li>

    <li><b>Предоставлять информацию о переходящих рабочих сменах</b>,
      плановых и фактических. <a href="art--WTABELDOC_Shifts.htm">Подробнее.</a></li>

    <li><b>Анализировать неявки.</b> Табель предоставляет богатый функционал
      для получения характеристик неявок, их часов в разрезе дней месяца, также в разрезе дней самой неявки.
      <a href="art--WTABELDOC_AboutAbsences.htm">Подробнее.</a></li>

    <li>Кроме того, табель предоставляет возможность <b>формирования без учета некоторых исходных данных</b>,
      а именно: можно не учитывать временные переходы, можно формировать табель в памяти без учета
      отдельно взятых (или даже всех сразу) отпусков, больничных, командировок!
      Подробнее <a href="exf--WT_SetPermanentChangesOnly.htm">здесь</a>
      и <a href="art--WTABELDOC_AboutSystemVarianceFilters.htm">здесь.</a></li>

    <li>И много <a href="art--WTABELDOC_OtherFunctions.htm">других возможностей</a>.</li>
  </ul>

  <p>
    Преимущества табеля учета рабочего времени при решении тех или иных задач:
  </p>
  <ul>
    <li><b>Оптимизация.</b> Данные не загружаются из БД до тех пор, пока в них не возникнет необходимость.
    Также данные не будут грузиться из БД повторно, если они уже загружены в память.
    Всё, что можно рассчитать заранее, рассчитывается заранее; всё, что требует продолжительных
    расчетов, кэшируется и при повторном обращении берется из кэша.</li>

    <li><b>Сокрытие бизнес-логики.</b> При использовании функционала табеля
    не нужно ломать голову над тем, как будут взаимодействовать пересекающиеся больничные
    и отпуска, сколько часов получит та или иная неявка. Табель всё рассчитает сам,
    и выдаст готовый результат.</li>
  </ul>

  <p>
    Табель реализован как контекст. Это значит, что перед использованием тех или иных функций
    требуется предварительно этот контекст настроить. Для инициализации табеля как такового
    следует <a href="art--WTABELDOC_UsingContexts.htm">захватить прикладной контекст <code>'WorkingTable'</code></a>.
    Для загрузки данных по конкретному человеку за определенный
    месяц и год следует вызвать функцию <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>.
    После этого можно работать с остальными функциями. Некоторые данные, однако, могут
    потребовать дополнительной инициализации (например, <a href="exf--WT_LoadPeriods.htm">периоды</a>
    или <a href="art--WTABELDOC_AboutAbsences.htm">списки неявок</a>).
    По завершении работы с табелем (как таковым, <i><b>не</b></i> с конкретным табелем конкретного человека)
    следует вызвать <code>DoneWorkingTable</code> (в случае использования прикладных контекстов
    этого делать <b>не нужно</b>).
  </p>
  <p>
    При работе с табельными функциями важно помнить, что <b>табель един</b>.
    Независимо от того, из каких интерфейсов была вызвана инициализация (<code>InitWorkingTable</code>),
    в действительности работа осуществляется с единственным экземпляром объекта.
    Поэтому вызовы сложных прикладных функций, обращающихся при своей работе к табелю
    прямо либо опосредованно, могут привести к тому, что по окончании их работы контекст табеля будет испорчен.
    Это необходимо учитывать при проектировании алгоритмов. Также на этот случай могут пригодиться
    такие функции, как <code><a href="exf--WT_PushContext.htm">WT_PushContext</a></code>
    и <code><a href="exf--WT_PopContext.htm">WT_PopContext</a></code>.
  </p>

  <h3>См. также</h3>
  <p>Специализированные функции</p>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Функции подсчета количества дней и часов</a> <br />
  <a href="art--WTABELDOC_AboutFilters.htm">Функции для работы с поденным фильтром табеля</a> <br />
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции</a> <br />
  <a href="art--WTABELDOC_AboutAbsences.htm">Функции для работы с неявками</a> <br />
  <a href="art--WTABELDOC_AboutSystemVarianceFilters.htm">Фильтры по системным отклонениям</a> <br />
  <a href="exf--WT_SetPermanentChangesOnly.htm">Режим работы с учетом только постоянных переходов</a> <br />
  <a href="exf--WT_LoadPeriods.htm">Загрузка периодов</a> <br />

  <p>Инициализация, загрузка, формирование</p>
  <a href="art--WTABELDOC_UsingContexts.htm">Инициализация табеля при помощи механизма прикладных контекстов</a> <br />
  <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code> <br />
  <code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code> <br />
  <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> <br />
  <code><a href="exf--ResetWorkingTable.htm">ResetWorkingTable</a></code> <br />
  <code><a href="exf--ReformWorkingTable.htm">ReformWorkingTable</a></code> <br />
  <code><a href="exf--RecalcWorkingTable.htm">RecalcWorkingTable</a></code> <br />
  <code><a href="exf--RefreshWorkingTable.htm">RefreshWorkingTable</a></code> <br />
  <code><a href="exf--WT_PersonalAccount.htm">WT_PersonalAccount</a></code> <br />
  <code><a href="exf--WT_Month.htm">WT_Month</a></code> <br />
  <code><a href="exf--WT_Year.htm">WT_Year</a></code> <br />
  <code><a href="exf--WT_IsNew.htm">WT_IsNew</a></code> <br />
  <code><a href="exf--WT_GetCurrent.htm">WT_GetCurrent</a></code> <br />
  <code><a href="exf--WT_LoadTunes.htm">WT_LoadTunes</a></code> <br />
  <br />
  <a href="art--WTABELDOC_OtherFunctions.htm">Прочие функции табеля</a> <br />
#end

//------------------------------------------------------------------------------
// Инициализация, загрузка и формирование
//------------------------------------------------------------------------------
#doc article WTABELDOC_UsingContexts
  <brief>Инициализация табеля при помощи механизма прикладных контекстов</brief>
  <p>
    Для инициализация табеля нужно проделать следующие шаги:
  </p>
  <pre class="example">
  // 1. Подключить заголовочный файл:
  &#35;include Contexts.vih // прикладные контексты

  interface Example;

  // 2. Глобальная переменная в интерфейсе:
  var
    CS: IContextSession;

  ...

  handleEvent // интерфейса
  cmInit:
  {
    // 3. В обработчик инициализации интерфейса добавить следующие строки:

    var CL: ContextList;
    // захват прикладных контекстов
    if (not CL.Add(CS, 'WorkingTable'))
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
    Действий 1, 2, 3 достаточно для того, чтобы безбоязненно обращаться к любым табельным функциям
    в коде данного интерфейса. Больше для инициализации табеля ничего добавлять не нужно.
  </p>

  <h3>Подробнее</h3>
  <p>
    Использование <link objInterface Z_ZAR::IContextList>прикладного контекста</link>
    <code>'WorkingTable'</code> является предпочтительным и единственно рекомендуемым
    способом инициализации табельного функционала, потому что:
  </p>
  <ul>
    <li>С вероятностью 100% гарантирует соблюдение парности вызовов
      <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code>/<code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code></li>
    <li>Снимает с прикладного разработчика необходимость отслеживать согласованность вызовов
      инициализации/уничтожения</li>
  </ul>
  <p>
    Фактически вызов инициализатора табеля (функции <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code>)
    происходит при добавлении контекста в сессию:
  </p>
  <pre class="example">
    CL.Add(CS, 'WorkingTable')
  </pre>
  <p>
    Деинициализация табеля (вызов <code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code>)
    выполнится при уничтожении сессии (переменной <code>CS</code>), которое, в свою очередь,
    осуществляется при выгрузке самого интерфейса.
  </p>

  <h3>Замечание</h3>
  <p>
    Если старый код, содержащий явные вызовы инициализаторов и финализаторов, переписывается под использование
    механизма прикладных контекстов, то <b>все</b> оставшиеся в коде интерфейса вызовы инициализаторов и финализаторов
    необходимо стереть.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code> <br />
  <code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code> <br />
#end

#doc
  <brief>Инициализирует работу с табелем учета рабочего времени.</brief>
  <p>
	  Фактически, только при первом вызове функции <code>InitWorkingTable</code>, когда значение внутреннего
    счетчика равно нулю, действительно выполняется инициализация внутренних структур, выделение памяти,
    открытие таблиц и т.п. Все последующие вызовы сводятся к простому увеличению значения счетчика.
  </p>
  <h3>Возвращаемое значение</h3>
  <p>
	  Возвращает <code>true</code> в случае успеха или <code>false</code> в противном случае.
  </p>
  <h3>Замечание</h3>
  <p>
	  <font color="red">Не рекомендуется обращаться к данной функции напрямую</font>,
    так как это служит постоянным источником ошибок, связанных с рассогласованием вызовов
    <code>InitWorkingTable</code> и <code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code>.
    Для инициализации табельного функционала лучше
    <a href="art--WTABELDOC_UsingContexts.htm">использовать механизм прикладных контекстов</a>.
  </p>
  <p>
    Если по каким-либо причинам использование прикладных контекстов не представляется возможным,
    следует иметь в виду, что вызовы функций <code>InitWorkingTable</code>,
    <code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code>, должны образовывать
    т.н. "процедурные скобки", т.е. количество вызовов процедуры <code>DoneWorkingTable</code>
    должно в точности соответствовать количеству вызовов функции <code>InitWorkingTable</code>.
  </p>
  <h3>Пример</h3>
  <pre class=example>
    if (InitWorkingTable)
    {
      ...

      DoneWorkingTable;
    }
  </pre>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_UsingContexts.htm">Инициализация табеля при помощи механизма прикладных контекстов</a> <br />
  <code><a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a></code> <br />
  <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> <br />
#end
function InitWorkingTable: boolean; external #G_WorkTable;

#doc
  <brief>Завершает работу с табелем.</brief>
  <p>
    На самом деле <code>DoneWorkingTable</code> уменьшает значение внутреннего счетчика ссылок,
    и если оно становится равным нулю, освобождает память, закрывает таблицы и т.д.
  </p>

  <h3>Замечание</h3>
  <p>
	  <font color="red">Не рекомендуется обращаться к данной функции напрямую</font>,
    так как это служит постоянным источником ошибок, связанных с рассогласованием вызовов
    <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code> и <code>DoneWorkingTable</code>.
    Для инициализации/деинициализации табельного функционала лучше
    <a href="art--WTABELDOC_UsingContexts.htm">использовать механизм прикладных контекстов</a>.
  </p>
  <p>
    Если по каким-либо причинам использование прикладных контекстов не представляется возможным,
    следует иметь в виду, что вызовы функций <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code>,
    <code>DoneWorkingTable</code>, должны образовывать т.н. "процедурные скобки", т.е. количество вызовов
    процедуры <code>DoneWorkingTable</code> должно в точности
    соответствовать количеству вызовов функции <code>InitWorkingTable</code>.
  </p>

  <h3>Пример</h3>
  <pre class=example>
    if InitWorkingTable
    {
      ...

      DoneWorkingTable;
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_UsingContexts.htm">Инициализация табеля при помощи механизма прикладных контекстов</a> <br />
  <code><a href="exf--InitWorkingTable.htm">InitWorkingTable</a></code> <br />
#end
procedure DoneWorkingTable; external #G_WorkTable;

#doc
  <brief>Загрузка табеля работника с лицевым счетом <code>Account</code> за месяц <code>Month</code> года <code>Year</code>.</brief>
  <p>
    Если табель не был ранее сформирован, он рассчитывается на основе информации из лицевого счета работника,
    данных о переходах в межпериод, больничных, отпусках и т.д. Все ранее установленные фильтры снимаются.</p>
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Account</code> - <code>nRec</code> лицевого счета работника </li>
    <li><code>Month</code> - месяц </li>
    <li><code>Year</code> - год </li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p><p>
	  Возвращает <code>0</code> в случае удачного завершения, <code>-1</code> &ndash; в случае неудачного завершения.</p>
  </p>
  <h3>Примечание</h3>
  <p>
	  В случае удачного завершения функция устанавливает контекст (лицевой счет, месяц, год),
    в котором затем работают все функции подсчета количества дней/часов. Запросить параметры,
    с которыми был загружен табель, можно при помощи функций <code><a href="exf--WT_PersonalAccount.htm">WT_PersonalAccount</a></code>,
    <code><a href="exf--WT_Month.htm">WT_Month</a></code> и <code><a href="exf--WT_Year.htm">WT_Year</a></code>.
  </p>
  <p>
	  Повторный вызов <code>LoadWorkingTable</code> с теми же аргументами не выполнит никаких действий,
    если только текущие лицевой счет (LSCHET), табель (LSTAB) или маска ручной корректировки табеля (LSTABMSK)
    не были модифицированы. Чтобы гарантировать полную загрузку табеля заново, вставьте вызов процедуры <code><a href="exf--ResetWorkingTable.htm">ResetWorkingTable</a>
    </code> перед вызовом <code>LoadWorkingTable</code>.
  </p>
  <h3>Пример</h3>
  <pre class=example>
    if (LoadWorkingTable(LSCHET.NREC, Month(Cur_Date), Year(Cur_Date)) = 0)
      Message('Табель загрузился', mfInformation or OkButton);
    else
      Message('Табель не загрузился', mfError or OkButton);
  </pre>
  <h3>Часто задаваемые вопросы</h3>
  <p><b>Почему LoadWorkingTable не загружает табель?</b></p>
  <p>
    &mdash; не проведена инициализация (подробнее - <a href="art--WTABELDOC_UsingContexts.htm">здесь</a>)
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_UsingContexts.htm">Инициализация табеля при помощи механизма прикладных контекстов</a> <br />
  <code><a href="exf--ResetWorkingTable.htm">ResetWorkingTable</a></code> <br />
  <code><a href="exf--ReformWorkingTable.htm">ReformWorkingTable</a></code> <br />
  <code><a href="exf--WT_PersonalAccount.htm">WT_PersonalAccount</a></code> <br />
  <code><a href="exf--WT_Month.htm">WT_Month</a></code> <br />
  <code><a href="exf--WT_Year.htm">WT_Year</a></code> <br />
	<code><a href="exf--WT_IsNew.htm">WT_IsNew</a></code>
#end
function LoadWorkingTable(Account: comp, Month: word, Year: word): integer; external #G_WorkTable;

#doc
  <brief>Возвращает лицевой счет, для которого загружен табель</brief>
  <p>
    Возвращает <code>nRec</code> лицевого счета, для которого загружен табель в настоящий момент.
    Если табель не загружен, то возвращает <code>0</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_Month.htm">WT_Month</a></code> <br />
  <code><a href="exf--WT_Year.htm">WT_Year</a></code> <br />
  <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> <br />
#end
function WT_PersonalAccount: comp; external #G_WorkTable;

#doc
  <brief>Возвращает месяц, за который загружен табель</brief>
  <p>
    Возвращает номер месяца, за который загружен табель в настоящий момент.
    Если табель не загружен, то возвращает <code>0</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_PersonalAccount.htm">WT_PersonalAccount</a></code> <br />
  <code><a href="exf--WT_Year.htm">WT_Year</a></code> <br />
  <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> <br />
#end
function WT_Month: word; external #G_WorkTable;

#doc
  <brief>Возвращает год месяца, за который загружен табель</brief>
  <p>
    Возвращает год, за месяц которого загружен табель в настоящий момент
    (параметр <code>Year</code> функции <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Если табель не загружен, то возвращает <code>0</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_PersonalAccount.htm">WT_PersonalAccount</a></code> <br />
  <code><a href="exf--WT_Month.htm">WT_Month</a></code> <br />
  <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> <br />
#end
function WT_Year: integer; external #G_WorkTable;

#doc
  <brief>Проверяет, существует ли текущий табель в базе.</brief>
  <p>Функция проверяет, существует ли текущий табель в базе.</p>
  <h3>Возвращаемое значение</h3>
  <p>
 	  Возвращает <code>true</code>, если текущий табель не существует в базе, и <code>false</code> в противном случае
  </p>
  <h3>Примечание</h3>
  <p>
    Текущий контекст табеля определяется при загрузке табеля (функция <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Имеет смысл использовать <code>WT_IsNew</code> после вызова
    <code>LoadWorkingTable</code>, для того, чтобы определить,
    существовал ли табель на момент попытки его загрузки.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_IsNew: boolean; external #G_WorkTable;

#doc
  <brief>Сбросить загруженный табель.</brief>
  <p>
    Очищает контекст, установленный до этого функцией <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>
    (делает табель снова незагруженным). Функции
    <code><a href="exf--WT_PersonalAccount.htm">WT_PersonalAccount</a></code>,
    <code><a href="exf--WT_Month.htm">WT_Month</a></code>, <code><a href="exf--WT_Year.htm">WT_Year</a></code>
    после вызова данной функции снова возвращают <code>0</code>, до момента следующей загрузки.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
procedure ResetWorkingTable;  external #G_WorkTable;

#doc
  <brief>
    Переформировывает (или формирует, если не был создан ранее) табель работника с лицевым счетом
    <code>Account</code> за месяц <code>Month</code> года <code>Year</code>.
  </brief>
  <h3>Параметры</h3>
  <ul>
    <li><code>Account</code> - nRec лицевого счета работника </li>
    <li><code>Month</code> - месяц </li>
    <li><code>Year</code> - год </li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p><p>
	  Возвращает <code>0</code> в случае удачного завершения, иначе &ndash; <code>-1</code>.</p>
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_UsingContexts.htm">Инициализация табеля при помощи механизма прикладных контекстов</a> <br />
  <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> <br />
  <code><a href="exf--RefreshWorkingTable.htm">RefreshWorkingTable</a></code>
#end
function ReformWorkingTable(Account: comp, Month: word, Year: word): integer; external #G_WorkTable;

#doc
  <brief>Переформирование(формирование) табеля.</brief>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
  </p>
  <p>
  	Пересчитывает итоговое количество часов в табеле работника с лицевым счетом <code>Account</code>
    за месяц <code>Month</code> года <code>Year</code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Account</code> - nRec лицевого счета работника </li>
    <li><code>Month</code> - месяц </li>
    <li><code>Year</code> - год </li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
  	Возвращает <code>0</code> в случае удачного завершения, <code>-1</code> &ndash; в случае неудачного завершения.
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--ReformWorkingTable.htm">ReformWorkingTable</a></code> <br />
#end
function RecalcWorkingTable(Account: comp, Month: word, Year: word): integer; external #G_WorkTable;

#doc
  <brief>Обновить табель</brief>
  <p>
    Загружает табель по некоторому работнику за заданный год и месяц, после чего,
    если данный табель уже был до этого сформирован, пересчитывает итоговое часов и сохраняет итоги в БД.
    Для не сформированных ранее табелей данное действие эквивалентно вызову
    функции <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Account</code> - <code>nRec</code> лицевого счета работника </li>
    <li><code>Month</code> - месяц </li>
    <li><code>Year</code> - год </li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p><p>
  	Возвращает <code>0</code> в случае удачного завершения, <code>-1</code> &ndash; в cлучае неудачного завершения.</p>
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--ReformWorkingTable.htm">ReformWorkingTable</a></code> <br />
#end
function RefreshWorkingTable(Account: comp, Month: word, Year: word): integer; external #G_WorkTable;

#doc
  <brief>Перечитать настройки, необходимые для работы табеля.</brief>
  <p>
    Перечитывает настройки, необходимые для функционирования табеля.
  </p>
  <h3>Примечание</h3>
  <p>
    Считывание настроек, необходимых табелю, происходит автоматически
    при инициализации табеля (функция <a href="exf--InitWorkingTable.htm">InitWorkingTable</a>).
    Таким образом, в подавляющем большинстве случаев явно вызывать данную функцию нет необходимости.
    Функция предназначена для тех случаев, когда нужно подхватить изменившиеся значения настроек,
    не выгружая табель (<a href="exf--DoneWorkingTable.htm">DoneWorkingTable</a>).
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
procedure WT_LoadTunes; external #G_WorkTable;

#doc
  <brief>Вернуть nRec текущей записи LSTab.</brief>
  <p>
    Возвращает <code>nRec</code> текущей записи <code>LSTab</code>
    (соответствующей текущему месяцу табеля).
  </p>
  <h3>Примечание</h3>
  <p>
    Имеет смысл вызывать при <a href="exf--LoadWorkingTable.htm">загруженном</a> табеле.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_GetCurrent: comp; external #G_WorkTable;

//------------------------------------------------------------------------------
// ПОДСЧЕТ КОЛИЧЕСТВА ЧАСОВ
//------------------------------------------------------------------------------
#doc article WTABELDOC_AboutDaysAndHours
  <brief>Общие замечания по работе с функциями подсчета количества дней и часов</brief>
  <p>
    Функции подобного рода подразделяются на следующие группы:
  </p>
  <ul>
    <li>Функции подсчета количества часов</li>
    <li>Функции подсчета количества дней</li>
    <li>Функция <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> - определяет, является ли
    некоторый день днем определенного вида.</li>
    <li>Функции <code><a href="exf--WT_FirstThat.htm">WT_FirstThat</a></code>,
        <code><a href="exf--WT_LastThat.htm">WT_LastThat</a></code>
        - позволяют найти первый/последний день заданного типа в месяце</li>
  </ul>
  <p>
    Все данные функции работают в контексте ранее загруженного функцией <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> табеля,
    с учетом дат приема на работу/увольнения, переходов в межпериод, <a href="art--WTABELDOC_AboutFilters.htm">установленных фильтров</a> и настроек табеля,
    таких как автоматическое переформирование часов, количество сверхурочных часов ежедневно, раздельное
    ведение итогов по переходам и пр.
  </p>
  <p>
    Также функции данного типа можно разделить по принципу передачи <a href="art--WTABELDOC_ControlFlags.htm">управляющих флагов</a>.
    В старых функциях (без постфикса -Ex) управляющие флаги передаются в одном параметре с <a href="art--WTABELDOC_HourKinds.htm">видом часов</a>
    или <a href="art--WTABELDOC_DayKinds.htm">видом дней</a> путём побитового <code>OR</code>:
  </p>
  <pre class=example>
    Hours := WT_GetHoursInDay(1, hkWorking or cfDisregardFilters or cfDisregardPeriod, stActual);
  </pre>
  <p>
    Это ограничивает диапазон поддерживаемых такими функциями видов дней/часов, поэтому работают эти функции
    с кодами дней/часов, не превышающими <code>31</code>.
  </p>
  <p>
    В новых функциях (с постфиксом -Ex) управляющие флаги передаются отдельно от вида дней/часов,
    поэтому новые функции могут обработать вид дня/часа с б&oacute;льшим кодом.
  </p>

  <h3>Перечень функций для подсчета количества дней и часов</h3>
  <p> Функции расчета количества часов </p>
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates/WT_GHBD</a></code> (<code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx/WT_GHBDEx</a></code>) <br />
  <code><a href="exf--WT_GetHours.htm">WT_GetHours</a></code> (<code><a href="exf--WT_GetHoursEx.htm">WT_GetHoursEx</a></code>)
  <p> Функции расчета количества дней </p>
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>)
  <p> Прочие функции </p>
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_FirstThat.htm">WT_FirstThat</a></code> (<code><a href="exf--WT_FirstThatEx.htm">WT_FirstThatEx</a></code>) <br />
  <code><a href="exf--WT_LastThat.htm">WT_LastThat</a></code> (<code><a href="exf--WT_LastThatEx.htm">WT_LastThatEx</a></code>)

  <h3>Пример</h3>
  <pre class=example>
    &#35;include Contexts.vih // прикладные контексты (для инициализации табеля)

    ...
    var CS: IContextSession; // для захвата прикладного контекста табеля

    ...
    // В код обработчика инициализации интерфейса добавлены строки:
    var CL: ContextList;
    if (not CL.Add(CS, 'WorkingTable'))
    {
      abort;
      exit;
    }

    ...

    if (LoadWorkingTable(LSCHET.NREC, Month(Cur_Date), Year(Cur_Date)) = 0)
    {
      var Hours: Double;
      // рабочих часов по факту за месяц
      Hours := WT_GetHours(hkWorking, stActual);
      ...
      // всего рабочих часов по плану за месяц без учета дат приема на работу/увольнения
      Hours := WT_GetHours(hkWorking or cfDisregardPeriod, stPlanned);
      ...
      // кол-во праздничных часов, отработанных с 1 по 15 число
      Hours := WT_GetHoursBwDays(hkHoliday, 0, 0, stActual, 1, 15);
      ...
      // кол-во дней, отработанных в особо вредных условиях
      Days := WT_GetDaysEx(dkICExtraHarmful, stActual, 0);
      ...
      // было ли 25-е число рабочим по факту днем:
      if (WT_TestDay(25, dkWorking, stActual))
      {
        ...
      }
    }
    else
      Message('Табель не загрузился', mfError or OkButton);

  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_HourKinds.htm">Виды часов</a> <br />
  <a href="art--WTABELDOC_DayKinds.htm">Виды дней</a> <br />
  <a href="art--WTABELDOC_ScheduleTypes.htm">Типы графиков</a> <br />
  <a href="art--WTABELDOC_ControlFlags.htm">Управляющие флаги</a>
#end

#doc article WTABELDOC_HourKinds
  <brief>Виды часов</brief>
  <p>Ниже представлены все возможные виды часов</p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>hkWorking</code></td>                <td><code>1</code></td>  <td>рабочие часы</td> </tr>
    <tr> <td><code>hkEvening</code></td>                <td><code>2</code></td>  <td>часы работы вечером </td> </tr>
    <tr> <td><code>hkNight</code></td>                  <td><code>3</code></td>  <td>часы работы ночью</td> </tr>
    <tr> <td><code>hkHoliday</code></td>                <td><code>4</code></td>  <td>часы работы в праздничные дни, кроме работы за отгул
      (сумма <code>hkWorkingHoliday</code> и <code>hkWeekendHoliday</code>)</td> </tr>
    <tr> <td><code>hkWeekend</code></td>                <td><code>5</code></td>  <td>часы работы в выходные за оплату</td> </tr>
    <tr> <td><code>hkOverwork</code></td>               <td><code>6</code></td>  <td>сверхурочные</td> </tr>
    <tr> <td><code>hkOverworkRest</code></td>           <td><code>7</code></td>  <td>остаток сверхурочных</td> </tr>
    <tr> <td><code>hkWorkingForAvgEarnings</code></td>  <td><code>10</code></td> <td>рабочие часы с точки зрения расчета по среднему</td> </tr>
    <tr> <td><code>hkAdvanceable</code></td>            <td><code>11</code></td> <td>часы, за которые можно выплатить аванс
      (рабочие часы в день, считающийся по плану рабочим, плюс часы
      не входящих в рабочие часы оплачиваемых отклонений, приходящихся на такой день)</td> </tr>
    <tr> <td><code>hkPaid</code></td>                   <td><code>12</code></td> <td>оплачиваемые часы
      (рабочие часы плюс часы приходящегося на день оплачиваемого отклонения)</td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>hkOverworkForPeriod</code></td>  <td><code>14</code></td> <td>переработка за период</td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>hkCarry</code></td>  <td><code>17</code></td> <td>рабочие часы, переходящие на следующие сутки (не работает: всегда <code>0</code>)</td> </tr>
    <tr> <td><code>hkTimeForSickListEnteringKind</code></td> <td><code>18</code></td> <td>рабочие часы для расчета времени по больничному (учет входимости видов оплат)</td> </tr>
    <tr> <td><code>hkWorkDayAvgTime</code></td>         <td><code>20</code></td> <td>средняя продолжительность рабочего дня, часов</td> </tr>
    <tr> <td><code>hkWholeWorking</code></td>           <td><code>21</code></td> <td>все отработанные часы (без учета настроек "рабочие часы за вычетом...")</td> </tr>
    <tr> <td><code>hkWorkingHoliday</code></td>         <td><code>22</code></td> <td>часы работы в рабочие по плану праздники</td> </tr>
    <tr> <td><code>hkWeekendHoliday</code></td>         <td><code>23</code></td> <td>часы работы в нерабочие по плану праздники за оплату</td> </tr>
    <tr> <td><code>hkAbsenceForValidReason</code></td>  <td><code>24</code></td> <td>часы отсутствия по уважительной причине</td> </tr>
    <tr> <td><code>hkAppearance</code></td>             <td><code>25</code></td> <td>часы явки</td> </tr>
    <tr> <td><code>hkDecreasingStandardTime</code></td> <td><code>26</code></td> <td>часы уменьшающих норму неявок</td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>hkHarmfulConditions</code></td>  <td><code>27</code></td> <td>часы отклонений с признаком "Условия работы" = "вредные"/"особо вредные"
      в условном обозначении (для Беларуси - "Вредные условия" = "да"). </td> </tr>
    <tr> <td><code>hkOverPlannedHoliday</code></td>     <td><code>28</code></td> <td>часы работы в праздник сверх плана</td> </tr>
    <tr> <td><code>hkOrderedWeekendWork</code></td>     <td><code>29</code></td> <td>часы работы по приказу на работу в выходные</td> </tr>
    <tr> <td><code>hkPaidOrderedWeekendWork</code></td> <td><code>30</code></td> <td>оплачиваемые часы работы по приказу на работу в выходные</td> </tr>
    <tr> <td><code>hkOrderedWeekendWorkForLeave</code></td>  <td><code>13</code></td> <td>часы работы по приказу на работу в выходные/праздники за отгул
      (сумма <code>hkWeekendForLeave</code> и <code>hkHolidayForLeave</code>)</td> </tr>
    <tr> <td><code>hkOrderedOvertimeWorkForLeave</code></td> <td><code>15</code></td> <td>часы работы по приказу на сверхурочную работу за отгул</td> </tr>
    <tr> <td><code>hkOvertimeWorkOrder</code></td>           <td><code>31</code></td> <td>часы работы по приказу на сверхурочную работу за оплату</td> </tr>
    <tr> <td colspan=3>Виды часов, поддерживаемые только функциями с постфиксом -Ex</td>
    <tr> <td><code>hkICOrdinary</code></td>             <td><code>32</code></td> <td>часы работы в нормальных условиях труда
      (с <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кодом вредности</a> icOrdinary), и приравнивающиеся к таковым</td> </tr>
    <tr> <td><code>hkICHarmful</code></td>              <td><code>33</code></td> <td>часы работы во вредных условиях труда
      (с <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кодом вредности</a> icHarmful), и приравнивающиеся к таковым</td> </tr>
    <tr> <td><code>hkICExtraHarmful</code></td>         <td><code>34</code></td> <td>часы работы в особо вредных условиях труда
      (с <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кодом вредности</a> icExtraHarmful), и приравнивающиеся к таковым</td> </tr>
    <tr> <td><code>hkWorkingForIslbrCalculations</code></td> <td><code>35</code></td> <td>часы работы, принимающие участие в расчетах начислений по доп. тарифам
      (сумма <code>hkICOrdinary</code>, <code>hkICHarmful</code>, <code>hkICExtraHarmful</code>)</td> </tr>
    <tr> <td><code>hkDailyOverhours</code></td>              <td><code>36</code></td> <td>сверхурочные, рассчитанные по правилам поденного учета.
      Служебный вид часов, в случае поденного учета представляет собой сумму <code>hkOverwork</code> и <code>hkOverworkRest</code> </td> </tr>
    <tr> <td><code>hkSummedOverhours</code></td>             <td><code>37</code></td> <td>сверхурочные, рассчитанные по правилам суммированного учета.
      Служебный вид часов, могут быть меньше нуля</td> </tr>
    <tr> <td><code>hkActualDecreasingStandTime</code></td>   <td><code>38</code></td> <td>часы уменьшающих норму неявок, как они выглядят согласно настройкам.
      Запрашивать только для <a href="art--WTABELDOC_ScheduleTypes.htm">типа графика</a> <code>stActual</code></td> </tr>
    <tr> <td><code>hkHolidayForLeave</code></td>        <td><code>39</code></td> <td>часы работы в нерабочие по плану праздники за отгул</td> </tr>
    <tr> <td><code>hkWeekendForLeave</code></td>        <td><code>40</code></td> <td>часы работы в выходные за отгул</td> </tr>
    <tr> <td><code>hkWholeWeekendHoliday</code></td>    <td><code>41</code></td> <td>часы работы в нерабочие по плану праздники как за оплату, так и за отгул
      (сумма <code>hkWeekendHoliday</code> и <code>hkHolidayForLeave</code>)</td> </tr>
    <tr> <td><code>hkWholeHoliday</code></td>           <td><code>42</code></td> <td>часы работы в праздники, как за оплату, так и за отгул
      (сумма <code>hkHoliday</code> и <code>hkHolidayForLeave</code>)</td> </tr>
    <tr> <td><code>hkWholeWeekend</code></td>           <td><code>43</code></td> <td>часы работы в выходные, как за оплату, так и за отгул
      (сумма <code>hkWeekend</code> и <code>hkWeekendForLeave</code>)</td> </tr>
    <tr> <td><code>hkSummedOverworkRestBorder</code></td>    <td><code>44</code></td> <td>граница между сверхурочными и остатком сверхурочных
      для суммированного учёта. Для получения остатка следует считать данные часы за период и сравнивать
      с <code>hkSummedOverhours</code> за этот же период.</td> </tr>
    <tr> <td><code>hkWorkingWhileVacation</code></td>        <td><code>45</code></td> <td>рабочие часы во время отпуска по уходу за ребёнком</td> </tr>
    <tr> <td><code>hkWorkingWithBusinessTrips</code></td>    <td><code>46</code></td> <td>фактически отработанные часы плюс часы командировок, которые не входят
      в фактически отработанное время</td> </tr>
    <tr> <td><code>hkCreditedHarmful</code></td>        <td><code>47</code></td> <td>вредные часы, идущие "в зачёт" для РБ.
      Равны <code>hkICHarmful</code>, если день по итогу вредный. В остальных случаях - ноль.</td> </tr>
    <tr> <td><code>hkCreditedOrdinary</code></td>       <td><code>48</code></td> <td>"обычные" часы для пары к <code>hkCreditedHarmful</code>.
      В сумме с <code>hkCreditedHarmful</code> дают <code>hkWorkingForIslbrCalculations</code></td> </tr>
  </table>
  <p>
    <code><b><font color="red">*</font></b></code> &ndash; устаревшие виды часов.
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <a href="art--WTABELDOC_DayKinds.htm">Виды дней</a> <br />
#end

#doc article WTABELDOC_ScheduleTypes
  <brief>Типы графиков</brief>
  <p>Возможные типы графиков представлены в таблице.</p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>stActual</code></td>   <td><code>1</code></td>  <td>фактические данные (табель)</td> </tr>
    <tr> <td><code>stPlanned</code></td>  <td><code>0</code></td>  <td>плановый график</td> </tr>
    <tr> <td><code>stBalanced</code></td> <td><code>-1</code></td> <td>балансный график</td> </tr>
    <tr> <td><code>stStandard</code></td> <td><code>-2</code></td> <td>график нормы
      для расчета суммированных сверхурочных либо нормализации рабочего времени.
      Может совпадать с плановым, с балансным, а может быть и вовсе искусственным
      (при настройке "источник сведений о норме времени" = "установленная продолжительность рабочей недели")</td> </tr>
    <tr> <td><code>stMask</code></td>     <td><code>-3</code></td> <td>данные из маски ручной корректировки</td> </tr>
  </table>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
#end

#doc article WTABELDOC_ControlFlags
  <brief>Управляющие флаги</brief>
  <p>
    Управляющие флаги задают дополнительные опции работы функций расчета количества дней и часов.
    Для функций расчета без постфикса -Ex флаги передаются в функцию путём комбинации (побитового <code>OR</code>)
    с видом часа, например:
  </p>
  <pre class=example>
    Hours := WT_GetHoursInDay(1, hkWorking or cfDisregardFilters or cfDisregardPeriod, stActual);
  </pre>
  <p>
    В функциях с постфиксом -Ex, поддерживающих коды часов и дней, б&oacute;льшие <code>31</code>,
    управляющие флаги передаются отдельным параметром.
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>&mdash;</code></td>  <td><code>32</code></td>  <td>резервное значение (запасной флаг на будущее)</td> </tr>
    <tr> <td><code>cfDisregardPeriod</code></td>  <td><code>64</code></td>  <td>без учета дат приема на работу/увольнения</td> </tr>
    <tr> <td><code>cfDisregardFilters</code></td> <td><code>128</code></td> <td>без учета <a href="art--WTABELDOC_AboutFilters.htm">фильтров</a></td> </tr>
  </table>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
#end

#doc
  <brief>Получить итог за месяц по часам заданного вида</brief>
  <p>
    Возвращает итоговое количество часов вида <code>HourKind</code> по графику типа <code>ScheduleType</code>
    по данным текущего загруженного табеля.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов часов, превосходящие <code>31</code>.
    Для подсчета количества часов с кодом, б&oacute;льшим <code>31</code>, следует использовать
    <code><a href="exf--WT_GetHoursEx.htm">WT_GetHoursEx</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
#end
function WT_GetHours(HourKind: byte, ScheduleType: integer): double; external #G_WorkTable;

#doc
  <brief>Получить итог за месяц по часам заданного вида</brief>
  <p>
    Возвращает итоговое количество часов вида <code>HourKind</code> по графику типа <code>ScheduleType</code>
    по данным текущего загруженного табеля.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
#end
function WT_GetHoursEx(HourKind: word, ScheduleType: integer, Flags: longint): double; external #G_WorkTable;

#doc
  <brief>
    Возвращает количество часов вида <code>HourKind</code> в день месяца <code>Day</code> по графику типа
    <code>ScheduleType</code>.
  </brief>
  <p>
    Функция возвращает количество часов заданного вида в определенный день текущего месяца табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день месяца</li>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов часов, превосходящие <code>31</code>.
    Для подсчета количества часов с кодом, б&oacute;льшим <code>31</code>, следует использовать
    <code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates/WT_GHBD</a></code> (<code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx/WT_GHBDEx</a></code>) <br />
#end
function WT_GetHoursInDay(Day: byte, HourKind: byte, ScheduleType: integer): double; external #G_WorkTable;

#doc
  <brief>
    Возвращает количество часов вида <code>HourKind</code> в день месяца <code>Day</code> по графику типа
    <code>ScheduleType</code>.
  </brief>
  <p>
    Функция возвращает количество часов заданного вида в определенный день текущего месяца табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день месяца</li>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates/WT_GHBD</a></code> (<code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx/WT_GHBDEx</a></code>) <br />
#end
function WT_GetHoursInDayEx(Day: byte, HourKind: word, ScheduleType: integer, Flags: longint): double; external #G_WorkTable;

#doc
  <brief>
    Возвращает количество часов заданного вида в промежутке между заданными днями
    текущего месяца табеля.
  </brief>

  <p>
    Возвращает количество часов вида <code>HourKind</code> в диапазоне дней от <code>DayRangeStart</code> до
    <code>DayRangeEnd</code> по графику типа <code>ScheduleType</code>, суммируя по дням начиная от порога в <code>BeginningHour</code> часов за день,
    при этом беря не более <code>MaxDailyHoursAmount</code> часов за каждый из дней, если <code>MaxDailyHoursAmount > 0</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>BeginningHour</code> - начиная с какого количества засчитывать часы за день. Или: сколько часов вычесть из действительного количества часов за тот или иной день
      при суммировании по дням (отрицательная разность при этом интерпретируется как нулевая)</li>
    <li><code>MaxDailyHoursAmount</code> - ограничение на количество часов за день при суммировании по дням. Если <code>0</code>, то без ограничения.</li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DayRangeStart</code> - начальный день диапазона</li>
    <li><code>DayRangeEnd</code> - конечный день диапазона</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов часов, превосходящие <code>31</code>.
    Для подсчета количества часов с кодом, б&oacute;льшим <code>31</code>, следует использовать
    <code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>.
  </p>

  <h3>Пример</h3>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    if (LoadWorkingTable(LSCHET.NREC, Month(Cur_Date), Year(Cur_Date)) = 0)
    {
      var Hours: Double;
      // Количество фактически отработанных за первые 10 дней месяца часов
      Hours := WT_GetHoursBwDays(hkWorking, 0, 0, stActual, 1, 10);
      ...
      // Количество сверхурочных часов за период (не более 2 часов за каждый из дней)
      Hours := WT_GetHoursBwDays(hkOverwork, 0, 2, stActual, 5, 12);
      ...
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates/WT_GHBD</a></code> (<code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx/WT_GHBDEx</a></code>) <br />
#end
function WT_GetHoursBwDays(HourKind: byte, BeginningHour: double, MaxDailyHoursAmount: double,
                           ScheduleType: integer, DayRangeStart: byte, DayRangeEnd: byte): double; external #G_WorkTable;

#doc
  <brief>
    Возвращает количество часов заданного вида в промежутке между заданными днями
    текущего месяца табеля.
  </brief>

  <p>
    Возвращает количество часов вида <code>HourKind</code> в диапазоне дней от <code>DayRangeStart</code> до
    <code>DayRangeEnd</code> по графику типа <code>ScheduleType</code>, суммируя по дням начиная от порога в <code>BeginningHour</code> часов за день,
    при этом беря не более <code>MaxDailyHoursAmount</code> часов за каждый из дней, если <code>MaxDailyHoursAmount > 0</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a> </li>
    <li><code>BeginningHour</code> - начиная с какого количества засчитывать часы за день. Или: сколько часов вычесть из действительного количества часов за тот или иной день
      при суммировании по дням (отрицательная разность при этом интерпретируется как нулевая)</li>
    <li><code>MaxDailyHoursAmount</code> - ограничение на количество часов за день при суммировании по дням. Если <code>0</code>, то без ограничения.</li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DayRangeStart</code> - начальный день диапазона</li>
    <li><code>DayRangeEnd</code> - конечный день диапазона</li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>Пример</h3>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    if (LoadWorkingTable(LSCHET.NREC, Month(Cur_Date), Year(Cur_Date)) = 0)
    {
      var Hours: Double;
      // Количество фактически отработанных за первые 10 дней месяца часов
      Hours := WT_GetHoursBwDaysEx(hkWorking, 0, 0, stActual, 1, 10, 0);
      ...
      // Количество сверхурочных часов за период (не более 2 часов за каждый из дней)
      Hours := WT_GetHoursBwDaysEx(hkOverwork, 0, 2, stActual, 5, 12, 0);
      ...
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates/WT_GHBD</a></code> (<code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx/WT_GHBDEx</a></code>) <br />
#end
function WT_GetHoursBwDaysEx(HourKind: word, BeginningHour: double, MaxDailyHoursAmount: double,
                             ScheduleType: integer, DayRangeStart: byte, DayRangeEnd: byte, Flags: longint): double; external #G_WorkTable;

#doc
  <brief> Синоним функции <a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates</a>. </brief>
#end
function WT_GHBD(byte, double, double, integer, date, date): double; external #G_WorkTable;

#doc
  <brief> Синоним функции <a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx</a>. </brief>
#end
function WT_GHBDEx(word, double, double, integer, date, date, longint): double; external #G_WorkTable;

#doc
  <brief> Возвращает количество часов заданного вида в промежутке между двумя датами. </brief>
  <p>
    Возвращает количество часов вида <code>HourKind</code> в диапазоне дат от <code>DateRangeStart</code> до
    <code>DateRangeEnd</code> по графику типа <code>ScheduleType</code>, суммируя по дням начиная от
    порога в <code>BeginningHour</code> часов за день, при этом беря не более <code>MaxDailyHoursAmount</code> часов
    за каждый из дней, если <code>MaxDailyHoursAmount > 0</code>.
  </p>
  <p>
    В отличие от <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code>,
    позволяет посчитать количество часов не только в рамках текущего месяца табеля,
    но и за иные периоды. По окончании расчета контекст табеля (текущий месяц и год) остается
    тем же, каким был до вызова данной функции, независимо от того, за какие периоды количество часов считалось.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>BeginningHour</code> - начиная с какого количества засчитывать часы за день. Или: сколько часов вычесть из действительного количества часов за тот или иной день
      при суммировании по дням (отрицательная разность при этом интерпретируется как нулевая)</li>
    <li><code>MaxDailyHoursAmount</code> - ограничение на количество часов за день при суммировании по дням. Если <code>0</code>, то без ограничения.</li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DateRangeStart</code> - начальная дата диапазона</li>
    <li><code>DateRangeEnd</code> - конечная дата диапазона</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов часов, превосходящие <code>31</code>.
    Для подсчета количества часов с кодом, б&oacute;льшим <code>31</code>, следует использовать
    <code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx/WT_GHBDEx</a></code>.
  </p>

  <h3>Пример</h3>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    var Beginning, Ending: Date;
    Beginning := Sub_Months(Cur_Date, 2);
    Ending := Add_Months(Beginning, 1)
    // Лучше изначально загрузить табель за месяц и год, соответствующие началу периода
    if (LoadWorkingTable(LSCHET.NREC, Month(Beginning), Year(Beginning)) = 0)
    {
      var Hours: Double;
      // Количество фактически отработанных за предыдущие два месяца часов
      Hours := WT_GetHoursBwDates(hkWorking, 0, 0, stActual, Beginning, Ending);
      ...
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
#end
function WT_GetHoursBwDates(HourKind: byte, BeginningHour: double, MaxDailyHoursAmount: double,
                            ScheduleType: integer, DateRangeStart: date, DateRangeEnd: date): double; external #G_WorkTable;

#doc
  <brief> Возвращает количество часов заданного вида в промежутке между двумя датами. </brief>
  <p>
    Возвращает количество часов вида <code>HourKind</code> в диапазоне дат от <code>DateRangeStart</code> до
    <code>DateRangeEnd</code> по графику типа <code>ScheduleType</code>, суммируя по дням начиная от
    порога в <code>BeginningHour</code> часов за день, при этом беря не более <code>MaxDailyHoursAmount</code> часов
    за каждый из дней, если <code>MaxDailyHoursAmount > 0</code>.
  </p>
  <p>
    В отличие от <code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>,
    позволяет посчитать количество часов не только в рамках текущего месяца табеля,
    но и за иные периоды. По окончании расчета контекст табеля (текущий месяц и год) остается
    тем же, каким был до вызова данной функции, независимо от того, за какие периоды количество часов считалось.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a> </li>
    <li><code>BeginningHour</code> - начиная с какого количества засчитывать часы за день. Или: сколько часов вычесть из действительного количества часов за тот или иной день
      при суммировании по дням (отрицательная разность при этом интерпретируется как нулевая)</li>
    <li><code>MaxDailyHoursAmount</code> - ограничение на количество часов за день при суммировании по дням. Если <code>0</code>, то без ограничения.</li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DateRangeStart</code> - начальная дата диапазона</li>
    <li><code>DateRangeEnd</code> - конечная дата диапазона</li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>Пример</h3>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    var Beginning, Ending: Date;
    Beginning := Sub_Months(Cur_Date, 2);
    Ending := Add_Months(Beginning, 1)
    // Лучше изначально загрузить табель за месяц и год, соответствующие началу периода
    if (LoadWorkingTable(LSCHET.NREC, Month(Beginning), Year(Beginning)) = 0)
    {
      var Hours: Double;
      // Количество фактически отработанных за предыдущие два месяца часов
      Hours := WT_GetHoursBwDatesEx(hkWorking, 0, 0, stActual, Beginning, Ending, 0);
      ...
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetHoursInDay.htm">WT_GetHoursInDay</a></code> (<code><a href="exf--WT_GetHoursInDayEx.htm">WT_GetHoursInDayEx</a></code>) <br />
  <code><a href="exf--WT_GetHoursBwDays.htm">WT_GetHoursBwDays</a></code> (<code><a href="exf--WT_GetHoursBwDaysEx.htm">WT_GetHoursBwDaysEx</a></code>) <br />
#end
function WT_GetHoursBwDatesEx(HourKind: word, BeginningHour: double, MaxDailyHoursAmount: double,
                              ScheduleType: integer, DateRangeStart: date, DateRangeEnd: date, Flags: longint): double; external #G_WorkTable;

//------------------------------------------------------------------------------
// ПОДСЧЕТ КОЛИЧЕСТВА ДНЕЙ
//------------------------------------------------------------------------------
#doc article WTABELDOC_DayKinds
  <brief>Виды дней</brief>
  <p>
    В следующей таблице представлены возможные виды дней.
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td>       <td>Описание</td> </tr>
    <tr> <td><code>dkSpecial</code></td>            <td><code>1</code></td>  <td>больничный/отпуск/уже уволен/еще не принят на работу</td> </tr>
    <tr> <td><code>dkWorking</code></td>            <td><code>2</code></td>  <td>день, считающийся рабочим по закону (зависит от настроек)</td> </tr>
    <tr> <td><code>dkHoliday</code></td>            <td><code>3</code></td>  <td>праздничный день</td> </tr>
    <tr> <td><code>dkWeekEnd</code></td>            <td><code>4</code></td>  <td>выходной (для <a href="art--WTABELDOC_ScheduleTypes.htm">типа графика</a> <code>stActual</code>
      фактически означает, помечен ли этот день именно что условным обозначением выходного)</td> </tr>
    <tr> <td><code>dkOverWork</code></td>           <td><code>5</code></td>  <td rowspan=2>дни работы сверхурочно</td> </tr>
    <tr> <td><code>dkOverworkRest</code></td>       <td><code>6</code></td>  </tr>
    <tr> <td><code>dkEvening</code></td>            <td><code>7</code></td>  <td>дни работы вечером</td> </tr>
    <tr> <td><code>dkNight</code></td>              <td><code>8</code></td>  <td>дни работы ночью</td> </tr>
    <tr> <td><code>dkWorkingForAvgEarnings</code></td> <td><code>10</code></td> <td>рабочие дни с точки зрения расчета по среднему</td> </tr>
    <tr> <td><code>dkAdvanceable</code></td>        <td><code>11</code></td> <td>день, за который можно выплатить аванс
      (рабочий день по плану и либо рабочий день по факту, либо день,
      на который пришлось оплачиваемое отклонение)</td> </tr>
    <tr> <td><code>dkPaid</code></td>               <td><code>12</code></td> <td>оплачиваемый день
      (рабочий день, либо день, на который пришлось оплачиваемое отклонение) </td> </tr>
    <tr> <td><code>dkWorkingHoliday</code></td>     <td><code>13</code></td> <td>работа в праздничный день за оплату (как в рабочий по плану, так и в нерабочий по плану)</td> </tr>
    <tr> <td><code>dkWorkingWeekend</code></td>     <td><code>14</code></td> <td>работа в выходной день за оплату</td> </tr>
    <tr> <td><code>dkWholeWorking</code></td>       <td><code>15</code></td> <td>все отработанные дни (без учета настроек "рабочие часы за вычетом...")</td> </tr>
    <tr> <td><code>dkAppearance</code></td>         <td><code>16</code></td> <td>дни явки</td> </tr>
    <tr> <td><code>dkWeekendHoliday</code></td>     <td><code>17</code></td> <td>нерабочий праздничный день</td> </tr>
    <tr> <td><code>dkEnabled</code></td>            <td><code>18</code></td> <td>не отброшенный <a href="art--WTABELDOC_AboutFilters.htm">фильтром</a> день</td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>dkHarmfulConditions</code></td>  <td><code>19</code></td> <td>дни работы во вредных условиях. Опирается только на признак "условия работы" в отклонениях</td> </tr>
    <tr> <td><code>dkCalendarWorking</code></td>    <td><code>20</code></td> <td>календарные дни работы</td> </tr>
    <tr> <td><code>dkOrderedWeekendWork</code></td> <td><code>21</code></td> <td>дни работы по приказу на работу в выходные</td> </tr>
    <tr> <td><code>dkPaidOrderedWeekendWork</code></td> <td><code>22</code></td> <td>дни оплачиваемой работы по приказу на работу в выходные</td> </tr>
    <tr> <td><code>dkOrderedOvertimeWork</code></td>    <td><code>23</code></td> <td>дни работы по приказу на работу сверхурочно</td> </tr>
    <tr> <td><code>dkCalendarVacation</code></td>       <td><code>24</code></td> <td>календарные дни для расчета отпуска</td> </tr>
    <tr> <td><code>dkTimeForSickListEnteringKind</code></td> <td><code>25</code></td> <td>дни для времени, входящего в расчет больничного</td> </tr>
    <tr> <td><code>dkOrderedWeekendWorkForLeave</code></td>  <td><code>26</code></td> <td>дни работы в выходные по приказу, за отгул</td> </tr>
    <tr> <td><code>dkOrderedOvertimeWorkForLeave</code></td> <td><code>27</code></td> <td>дни работы сверхурочно по приказу, за отгул</td> </tr>
    <tr> <td><code>dkWorkingWorkingHoliday</code></td>  <td><code>28</code></td> <td>дни работы в рабочий по плану праздничный день </td> </tr>
    <tr> <td><code>dkWorkingWeekendHoliday</code></td>  <td><code>29</code></td> <td>дни работы в нерабочий по плану праздничный день за оплату</td> </tr>
    <tr> <td><code>dkICOrdinary</code></td>             <td><code>30</code></td> <td>дни, отработанные в нормальных условиях труда
      (с <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кодом вредности</a> <code>ICOrdinary</code>), и приравнивающиеся к таковым</td> </tr>
    <tr> <td><code>dkICHarmful</code></td>              <td><code>31</code></td> <td>дни, отработанные во вредных условиях труда
      (с <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кодом вредности</a> <code>ICHarmful</code>), и приравнивающиеся к таковым</td> </tr>
    <tr> <td colspan=3>Виды дней, поддерживаемые только функциями с постфиксом -Ex</td> </tr>
    <tr> <td><code>dkICExtraHarmful</code></td>         <td><code>32</code></td> <td>дни, отработанные в особо вредных условиях труда
      (с <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кодом вредности</a> <code>ICExtraHarmful</code>), и приравнивающиеся к таковым</td> </tr>
    <tr> <td><code>dkWorkingForIslbrCalculations</code></td> <td><code>33</code></td> <td>дни работы, принимающие участие в расчетах начислений по доп. тарифам</td> </tr>
    <tr> <td><code>dkShiftable</code></td>          <td><code>34</code></td> <td>дни, могущие связываться <a href="art--WTABELDOC_Shifts.htm">переходящими рабочими сменами</a> </td> </tr>
    <tr> <td><code>dkWorkingHolidayForLeave</code></td> <td><code>35</code></td> <td>дни работы в нерабочий по плану праздничный день за отгул</td> </tr>
    <tr> <td><code>dkWorkingWeekendForLeave</code></td> <td><code>36</code></td> <td>дни работы в выходной день за отгул</td> </tr>
    <tr> <td><code>dkHarmfulForVacations</code></td>    <td><code>37</code></td> <td>дни, считающиеся вредными с точки зрения отпусков за вредные условия труда</td> </tr>
    <tr> <td><code>dkWithSummedOverhours</code></td>    <td><code>38</code></td> <td>дни, в которые положительное кол-во суммированных сверхурочных часов
      (<code><a href="art--WTABELDOC_HourKinds.htm">hkSummedOverhours</a></code>)</td> </tr>
    <tr> <td><code>dkWorkingWhileVacation</code></td>   <td><code>39</code></td> <td>дни, содержащие работу во время отпуска по уходу за ребёнком (одновременно рабочие часы и часы отпуска)</td> </tr>
    <tr> <td><code>dkWorkingWithBusinessTrips</code></td> <td><code>40</code></td> <td>дни, содержащие фактически отработанное время и/или время командировок, не входящих в фактически отработанное время</td> </tr>
    <tr> <td><code>dkSchrodingersDay</code></td>        <td><code>41</code></td> <td>наличие и больничного и отпуска по уходу за ребёнком в один день</td> </tr>
    <tr> <td><code>dkWeekendWhileVacation</code></td>   <td><code>42</code></td> <td>выходной во время работы во время отпуска по уходу за ребёнком</td> </tr>
  </table>
  <p>
    <code><b><font color="red">*</font></b></code> &ndash; устаревшие виды дней.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <a href="art--WTABELDOC_HourKinds.htm">Виды часов</a> <br />
#end

#doc
  <brief> Определяет, является ли некоторый день днем заданного типа. </brief>
  <p>
    Возвращает <code>true</code>, если по графику <code>ScheduleType</code> вид дня
    <code>Day</code> соответствует значению, переданному в <code>DayKind</code>. В противном случае возвращает
    <code>false</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день месяца</li>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов дней, превосходящие <code>31</code>.
    Для работы с кодами видов дней, б&oacute;льшими <code>31</code>, следует использовать
    <code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>) <br />
#end
function WT_TestDay(Day: byte, DayKind: byte, ScheduleType: integer): boolean; external #G_WorkTable;

#doc
  <brief> Определяет, является ли некоторый день днем заданного типа. </brief>
  <p>
    Возвращает <code>true</code>, если по графику <code>ScheduleType</code> вид дня
    <code>Day</code> соответствует значению, переданному в <code>DayKind</code>. В противном случае возвращает
    <code>false</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день месяца</li>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>) <br />
#end
function WT_TestDayEx(Day: byte, DayKind: word, ScheduleType: integer, Flags: longint): boolean; external #G_WorkTable;

#doc
  <brief>Получить итог по дням некоторого вида за месяц</brief>
  <p>
    Возвращает итоговое количество дней вида <code>DayKind</code> по графику <code>ScheduleType</code> по
    данным текущего загруженного табеля.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов дней, превосходящие <code>31</code>.
    Для работы с кодами видов дней, б&oacute;льшими <code>31</code>, следует использовать
    <code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a> <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
#end
function WT_GetDays(DayKind: byte, ScheduleType: integer): byte; external #G_WorkTable;

#doc
  <brief>Получить итог по дням некоторого вида за месяц</brief>
  <p>
    Возвращает итоговое количество дней вида <code>DayKind</code> по графику <code>ScheduleType</code> по
    данным текущего загруженного табеля.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a> <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
#end
function WT_GetDaysEx(DayKind: word, ScheduleType: integer, Flags: longint): byte; external #G_WorkTable;

#doc
  <brief>
  Позволяет посчитать количество дней определенного вида в промежутке между двумя днями текущего месяца.
  </brief>
  <p>
    Возвращает количество дней вида <code>DayKind</code> по графику <code>ScheduleType</code> за
    период с дня <code>DayRangeStart</code> по день <code>DayRangeEnd</code> по данным загруженного
    табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DayRangeStart</code> - первый день диапазона</li>
    <li><code>DayRangeEnd</code> - последний день диапазона</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов дней, превосходящие <code>31</code>.
    Для работы с кодами видов дней, б&oacute;льшими <code>31</code>, следует использовать
    <code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
#end
function WT_GetDaysBwDays(DayKind: byte, ScheduleType: integer, DayRangeStart: byte, DayRangeEnd: byte): byte; external #G_WorkTable;

#doc
  <brief>
  Позволяет посчитать количество дней определенного вида в промежутке между двумя днями текущего месяца.
  </brief>
  <p>
    Возвращает количество дней вида <code>DayKind</code> по графику <code>ScheduleType</code> за
    период с дня <code>DayRangeStart</code> по день <code>DayRangeEnd</code> по данным загруженного
    табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DayRangeStart</code> - первый день диапазона</li>
    <li><code>DayRangeEnd</code> - последний день диапазона</li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates/WT_GDBD</a></code> (<code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>) <br />
#end
function WT_GetDaysBwDaysEx(DayKind: word, ScheduleType: integer, DayRangeStart: byte, DayRangeEnd: byte, Flags: longint): byte; external #G_WorkTable;

#doc
  <brief>
  Позволяет посчитать количество дней определенного вида в промежутке между двумя датами.
  </brief>
  <p>
    Возвращает количество дней вида <code>DayKind</code> по графику <code>ScheduleType</code> за
    период с даты <code>DateRangeStart</code> по дату <code>DateRangeEnd</code>.
    В отличие от <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code>,
    позволяет посчитать количество дней не только в рамках текущего месяца табеля,
    но и за иные периоды. По окончании расчета контекст табеля (текущий месяц и год) остается
    тем же, каким был до вызова данной функции, независимо от того, за какие периоды считалось количество дней.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DateRangeStart</code> - начальная дата диапазона</li>
    <li><code>DateRangeEnd</code> - конечная дата диапазона</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов дней, превосходящие <code>31</code>.
    Для работы с кодами видов дней, б&oacute;льшими <code>31</code>, следует использовать
    <code><a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx/WT_GDBDEx</a></code>.
  </p>

  <h3>Пример</h3>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    var Beginning, Ending: Date;
    Beginning := Sub_Months(Cur_Date, 2);
    Ending := Add_Months(Beginning, 1)

    // Лучше загрузить табель за месяц и год, соответствующие началу периода
    if (LoadWorkingTable(LSCHET.NREC, Month(Beginning), Year(Beginning)) = 0)
    {
      var Days: integer;
      // Количество фактически отработанных за предыдущие два месяца часов
      Days:= WT_GetDaysBwDates(dkWorking, stActual, Beginning, Ending);
      ...
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
#end
function WT_GetDaysBwDates(DayKind: byte, ScheduleType: integer, DateRangeStart: date, DateRangeEnd: date): integer; external #G_WorkTable;

#doc
  <brief>
  Позволяет посчитать количество дней определенного вида в промежутке между двумя датами.
  </brief>
  <p>
    Возвращает количество дней вида <code>DayKind</code> по графику <code>ScheduleType</code> за
    период с даты <code>DateRangeStart</code> по дату <code>DateRangeEnd</code>.
    В отличие от <code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>,
    позволяет посчитать количество дней не только в рамках текущего месяца табеля,
    но и за иные периоды. По окончании расчета контекст табеля (текущий месяц и год) остается
    тем же, каким был до вызова данной функции, независимо от того, за какие периоды считалось количество дней.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>DateRangeStart</code> - начальная дата диапазона</li>
    <li><code>DateRangeEnd</code> - конечная дата диапазона</li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a> </li>
  </ul>

  <h3>Пример</h3>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    var Beginning, Ending: Date;
    Beginning := Sub_Months(Cur_Date, 2);
    Ending := Add_Months(Beginning, 1)

    // Лучше загрузить табель за месяц и год, соответствующие началу периода
    if (LoadWorkingTable(LSCHET.NREC, Month(Beginning), Year(Beginning)) = 0)
    {
      var Days: integer;
      // Количество фактически отработанных за предыдущие два месяца часов
      Days:= WT_GetDaysBwDatesEx(dkWorking, stActual, Beginning, Ending, 0);
      ...
    }
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
  <code><a href="exf--WT_GetDays.htm">WT_GetDays</a></code> (<code><a href="exf--WT_GetDaysEx.htm">WT_GetDaysEx</a></code>) <br />
  <code><a href="exf--WT_GetDaysBwDays.htm">WT_GetDaysBwDays</a></code> (<code><a href="exf--WT_GetDaysBwDaysEx.htm">WT_GetDaysBwDaysEx</a></code>) <br />
#end
function WT_GetDaysBwDatesEx(DayKind: word, ScheduleType: integer, DateRangeStart: date, DateRangeEnd: date, Flags: longint): integer; external #G_WorkTable;

#doc
  <brief> Синоним функции <a href="exf--WT_GetDaysBwDates.htm">WT_GetDaysBwDates</a>. </brief>
#end
function WT_GDBD(byte, integer, date, date): integer; external #G_WorkTable;

#doc
  <brief> Синоним функции <a href="exf--WT_GetDaysBwDatesEx.htm">WT_GetDaysBwDatesEx</a>. </brief>
#end
function WT_GDBDEx(word, integer, date, date, longint): integer; external #G_WorkTable;

#doc
  <brief> Получить номер первого дня заданного типа в текущем месяце табеля. </brief>
  <p>
    Функция ищет первый день типа <code>DayKind</code> по графику <code>ScheduleType</code>
    в текущем месяце табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Возвращает <code>true</code>, если день такого типа вообще найден в текущем месяце, и <code>false</code>,
    если день такого типа не найден. Если функция возвращает <code>true</code>, то в параметр
    <code>Day</code> записывается номер найденного дня.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>[out] Day</code> - номер дня месяца, если день заданного типа найден</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов дней, превосходящие <code>31</code>.
    Для работы с кодами видов дней, б&oacute;льшими <code>31</code>, следует использовать
    <code><a href="exf--WT_FirstThatEx.htm">WT_FirstThatEx</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_LastThat.htm">WT_LastThat</a></code> (<code><a href="exf--WT_LastThatEx.htm">WT_LastThatEx</a></code>) <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
#end
function WT_FirstThat(DayKind: byte, ScheduleType: integer, var Day: byte): boolean; external #G_WorkTable;

#doc
  <brief> Получить номер первого дня заданного типа в текущем месяце табеля.</brief>
  <p>
    Функция ищет первый день типа <code>DayKind</code> по графику <code>ScheduleType</code>
    в текущем месяце табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Возвращает <code>true</code>, если день такого типа вообще найден в текущем месяце, и <code>false</code>,
    если день такого типа не найден. Если функция возвращает <code>true</code>, то в параметр
    <code>Day</code> записывается номер найденного дня.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a>
    <li><code>[out] Day</code> - номер дня месяца, если день заданного типа найден</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_LastThat.htm">WT_LastThat</a></code> (<code><a href="exf--WT_LastThatEx.htm">WT_LastThatEx</a></code>) <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
#end
function WT_FirstThatEx(DayKind: word, ScheduleType: integer, Flags: longint, var Day: byte): boolean; external #G_WorkTable;

#doc
  <brief> Получить номер последнего дня заданного типа в текущем месяце табеля. </brief>
  <p>
    Функция ищет последний день типа <code>DayKind</code> по графику <code>ScheduleType</code>
    в текущем месяце табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Возвращает <code>true</code>, если день такого типа вообще найден в текущем месяце, и <code>false</code>,
    если день такого типа не найден. Если функция возвращает <code>true</code>, то в параметр
    <code>Day</code> записывается номер найденного дня.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a>, скомбинированный (побитовое <code>OR</code>) с <a href="art--WTABELDOC_ControlFlags.htm">управляющими флагами</a></li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>[out] Day</code> - номер дня месяца, если день заданного типа найден</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция <font color="red">не поддерживает</font> коды видов дней, превосходящие <code>31</code>.
    Для работы с кодами видов дней, б&oacute;льшими <code>31</code>, следует использовать
    <code><a href="exf--WT_LastThatEx.htm">WT_LastThatEx</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_FirstThat.htm">WT_FirstThat</a></code> (<code><a href="exf--WT_FirstThatEx.htm">WT_FirstThatEx</a></code>) <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
#end
function WT_LastThat(DayKind: byte, ScheduleType: integer, var Day: byte): boolean; external #G_WorkTable;

#doc
  <brief> Получить номер последнего дня заданного типа в текущем месяце табеля. </brief>
  <p>
    Функция ищет последний день типа <code>DayKind</code> по графику <code>ScheduleType</code>
    в текущем месяце табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Возвращает <code>true</code>, если день такого типа вообще найден в текущем месяце, и <code>false</code>,
    если день такого типа не найден. Если функция возвращает <code>true</code>, то в параметр
    <code>Day</code> записывается номер найденного дня.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayKind</code> - <a href="art--WTABELDOC_DayKinds.htm">вид дней</a> </li>
    <li><code>ScheduleType</code> - <a href="art--WTABELDOC_ScheduleTypes.htm">тип графика</a> </li>
    <li><code>Flags</code> - <a href="art--WTABELDOC_ControlFlags.htm">управляющие флаги</a>
    <li><code>[out] Day</code> - номер дня месяца, если день заданного типа найден</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <code><a href="exf--WT_FirstThat.htm">WT_FirstThat</a></code> (<code><a href="exf--WT_FirstThatEx.htm">WT_FirstThatEx</a></code>) <br />
  <code><a href="exf--WT_TestDay.htm">WT_TestDay</a></code> (<code><a href="exf--WT_TestDayEx.htm">WT_TestDayEx</a></code>) <br />
#end
function WT_LastThatEx(DayKind: word, ScheduleType: integer, Flags: longint, var Day: byte): boolean; external #G_WorkTable;

//------------------------------------------------------------------------------
// ИНФОРМАЦИОННЫЕ ФУНКЦИИ
//------------------------------------------------------------------------------
#doc article WTABELDOC_InformationalFunctions
  <brief>Информационные функции табеля</brief>
  <p>
    Информационные функции табеля предназначены для получения на некоторую дату
    значений параметров лицевого счета, могущих меняться переходами в межпериод.
    Данные функции принимают в качестве параметра день текущего месяца табеля
    (текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>)), а возвращают,
    собственно, соответствующие реквизиты ЛС на заданный день.
  </p>
  <h3>Замечание</h3>
  <p>
    <font color="red">Устаревший функционал.</font> В настоящее время табель больше не занимается
    вычислением параметров ЛС на дату, это делает отдельная подсистема. Функции работы
    с новой подсистемой вычисления параметров ЛС на дату также доступны для расчетных алгоритмов
    и для випа, подробнее см. статью
    <link article PADAPI_About>Функции получения параметров ЛС на дату</link>.
    Информационные функции табеля оставлены для совместимости со старым кодом.
    Если для решения той или иной задачи требуются только значения параметров ЛС на дату,
    без привлечения табельных данных (неявок, часов и т.п.), лучше использовать именно
    новый функционал, т.к. <code><link externalFunction PA_Assign>PA_Assign</link></code>
    выполняется значительно быстрее, чем
    <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>,
    поскольку требует намного меньше данных из БД.
  </p>
  <h3>Перечень информационных функций табеля</h3>
  <code><a href="exf--WT_CopyAnalytics.htm">WT_CopyAnalytics</a></code> </br>
  <code><a href="exf--WT_GetAccount.htm">WT_GetAccount</a></code> </br>
  <code><a href="exf--WT_GetAdditionalAnalytics.htm">WT_GetAdditionalAnalytics</a></code> </br>
  <code><a href="exf--WT_GetAnalytics.htm">WT_GetAnalytics</a></code> </br>
  <code><a href="exf--WT_GetAppointment.htm">WT_GetAppointment</a></code> </br>
  <code><a href="exf--WT_GetBrigade.htm">WT_GetBrigade</a></code> </br>
  <code><a href="exf--WT_GetCategory.htm">WT_GetCategory</a></code> </br>
  <code><a href="exf--WT_GetChange.htm">WT_GetChange</a></code> </br>
  <code><a href="exf--WT_GetComplexCorrectiveFactor.htm">WT_GetComplexCorrectiveFactor</a></code> </br>
  <code><a href="exf--WT_GetControlAccount.htm">WT_GetControlAccount</a></code> </br>
  <code><a href="exf--WT_GetCorrectiveFactor.htm">WT_GetCorrectiveFactor</a></code> </br>
  <code><a href="exf--WT_GetCurrency.htm">WT_GetCurrency</a></code> </br>
  <code><a href="exf--WT_GetDepartment.htm">WT_GetDepartment</a></code> </br>
  <code><a href="exf--WT_GetInsalubrity.htm">WT_GetInsalubrity</a></code> </br>
  <code><a href="exf--WT_GetMpf.htm">WT_GetMpf</a></code> </br>
  <code><a href="exf--WT_GetNorthernCategory.htm">WT_GetNorthernCategory</a></code> </br>
  <code><a href="exf--WT_GetOperatingMode.htm">WT_GetOperatingMode</a></code> </br>
  <code><a href="exf--WT_GetOsnOpl.htm">WT_GetOsnOpl</a></code> </br>
  <code><a href="exf--WT_GetPaymentMode.htm">WT_GetPaymentMode</a></code> </br>
  <code><a href="exf--WT_GetRegionalFactor.htm">WT_GetRegionalFactor</a></code> </br>
  <code><a href="exf--WT_GetStandardBusinessTransaction.htm">WT_GetStandardBusinessTransaction</a></code> </br>
  <code><a href="exf--WT_GetStandardBusinessTransactionParameter.htm">WT_GetStandardBusinessTransactionParameter</a></code> </br>
  <code><a href="exf--WT_GetSourceFinance.htm">WT_GetSourceFinance</a></code> </br>
  <code><a href="exf--WT_GetWageRate.htm">WT_GetWageRate</a></code> </br>
  <code><a href="exf--WT_GetTariff.htm">WT_GetTariff</a></code> </br>
  <code><a href="exf--WT_GetTariffCode.htm">WT_GetTariffCode</a></code> </br>
  <code><a href="exf--WT_GetWageCategory.htm">WT_GetWageCategory</a></code> </br>
  <code><a href="exf--WT_IsNorthernCategoryFixed.htm">WT_IsNorthernCategoryFixed</a></code> </br>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_PermanentChangesOnly.htm">WT_PermanentChangesOnly</a></code> </br>
  <code><a href="exf--WT_SetPermanentChangesOnly.htm">WT_SetPermanentChangesOnly</a></code> </br>
#end

#doc
  <brief> Возвращает аналитику с заданным кодом на некоторый день текущего месяца табеля. </brief>
  <p>
    Возвращает аналитику с заданным кодом на некоторый день текущего месяца табеля.
    Если в аналитике лицевого счета на день <code>Day</code> присутствует аналитика с кодом <code>Tbl</code>,
    возвращает <code>true</code> и значение аналитики в <code>Kau</code>. В противном случае возвращает
    <code>false</code>. Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
    <li><code>Tbl</code> - код каталога аналитического учета</li>
    <li><code>[out] Kau</code> - значение аналитики</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_GetAnalytics>PA_GetAnalytics</link></code>,
    <code><link externalFunction PA_GetAnalyticsOnDay>PA_GetAnalyticsOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><a href="exf--WT_CopyAnalytics.htm">WT_CopyAnalytics</a></code> <br />
  <code><link externalFunction PA_GetAnalytics>PA_GetAnalytics</link></code> <br />
#end
function WT_GetAnalytics(Day: byte, Tbl: word, var Kau: comp): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает ссылку на должность, приходящуюся на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на запись в классификаторе должностей (CATALOGS), приходящуюся на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Appointment>PA_Appointment</link></code>,
    <code><link externalFunction PA_AppointmentOnDay>PA_AppointmentOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Appointment>PA_Appointment</link></code> <br />
#end
function WT_GetAppointment(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает ссылку на бригаду, приходящуюся на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на запись в справочнике бригад (BRIGAD), приходящуюся на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Brigade>PA_Brigade</link></code>,
    <code><link externalFunction PA_BrigadeOnDay>PA_BrigadeOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Brigade>PA_Brigade</link></code> <br />
#end
function WT_GetBrigade(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает код категории на день <code>Day</code>.</brief>
  <p>
    Возвращает код категории на день <code>Day</code> (KLKATEGO.KOD).
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Category>PA_Category</link></code>,
    <code><link externalFunction PA_CategoryOnDay>PA_CategoryOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Category>PA_Category</link></code> <br />
#end
function WT_GetCategory(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Возвращает ссылку на переход в межпериод, приходящийся на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на переход в межпериод (PEREXOD), приходящийся на день <code>Day</code>.
    В случае пересечения переходов в межпериод возвращается ссылка на более "верхний" переход,
    т.е. переход, начавшийся позже других остальных, имеющих место быть на данный день.
    В случае, когда в один и тот же день начинаются несколько переходов, "верхним" среди них
    считается наиболее короткий по длительности.
  </p>
  <p>
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Perexod>PA_Perexod</link></code>,
    <code><link externalFunction PA_PerexodOnDay>PA_PerexodOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Perexod>PA_Perexod</link></code> <br />
#end
function WT_GetChange(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает значение корректирующего коэффициента на день <code>Day</code>.</brief>
  <p>
    Возвращает значение корректирующего коэффициента на день <code>Day</code>.
    В случае использования в системе сложного корректирующего коэффициента
    возвращается его обобщенное значение.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_CorrectiveFactor>PA_CorrectiveFactor</link></code>,
    <code><link externalFunction PA_CorrectiveFactorOnDay>PA_CorrectiveFactorOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><a href="exf--WT_GetComplexCorrectiveFactor.htm">WT_GetComplexCorrectiveFactor</a></code> <br />
  <code><link externalFunction PA_CorrectiveFactor>PA_CorrectiveFactor</link></code> <br />
#end
function WT_GetCorrectiveFactor(Day: byte): double; external #G_WorkTable;

#doc
  <brief>Возвращает ссылку на валюту, приходящуюся на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на запись в классификаторе валют (KLVAL), приходящуюся на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день месяца</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Currency>PA_Currency</link></code>,
    <code><link externalFunction PA_CurrencyOnDay>PA_CurrencyOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Currency>PA_Currency</link></code> <br />
#end
function WT_GetCurrency(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает ссылку на подразделение, приходящееся на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на запись в каталоге подразделений (KATPODR), приходящуюся на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Department>PA_Department</link></code>,
    <code><link externalFunction PA_DepartmentOnDay>PA_DepartmentOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Department>PA_Department</link></code> <br />
#end
function WT_GetDepartment(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает значение коэффициента трудового участия на день <code>Day</code>.</brief>
  <p>
    Возвращает значение коэффициента трудового участия на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Mpf>PA_Mpf</link></code>,
    <code><link externalFunction PA_MpfOnDay>PA_MpfOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Mpf>PA_Mpf</link></code> <br />
#end
function WT_GetMpf(Day: byte): double; external #G_WorkTable;

#doc
  <brief>Возвращает код режима работы на день <code>Day</code>.</brief>
  <p>
    Возвращает код режима работы на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_OperatingMode>PA_OperatingMode</link></code>,
    <code><link externalFunction PA_OperatingModeOnDay>PA_OperatingModeOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_OperatingMode>PA_OperatingMode</link></code> <br />
#end
function WT_GetOperatingMode(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Возвращает код системы оплаты на день <code>Day</code>.</brief>
  <p>
    Возвращает код системы оплаты на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_PaymentMode>PA_PaymentMode</link></code>,
    <code><link externalFunction PA_PaymentModeOnDay>PA_PaymentModeOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_PaymentMode>PA_PaymentMode</link></code> <br />
#end
function WT_GetPaymentMode(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Возвращает значение количества тарифных ставок (окладов) на день <code>Day</code>.</brief>
  <p>
    Возвращает значение количества тарифных ставок (окладов) на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_WageRate>PA_WageRate</link></code>,
    <code><link externalFunction PA_WageRateOnDay>PA_WageRateOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_WageRate>PA_WageRate</link></code> <br />
#end
function WT_GetWageRate(Day: byte): double; external #G_WorkTable;

#doc
  <brief>Возвращает величину тарифной ставки или оклада на день <code>Day</code>.</brief>
  <p>
    Возвращает величину тарифной ставки или оклада на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Tariff>PA_Tariff</link></code>,
    <code><link externalFunction PA_TariffOnDay>PA_TariffOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Tariff>PA_Tariff</link></code> <br />
#end
function WT_GetTariff(Day: byte): double; external #G_WorkTable;

#doc
  <brief>Возвращает код тарифа на день <code>Day</code>.</brief>
  <p>
    Возвращает код тарифа на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_TariffCode>PA_TariffCode</link></code>,
    <code><link externalFunction PA_TariffCodeOnDay>PA_TariffCodeOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_TariffCode>PA_TariffCode</link></code> <br />
#end
function WT_GetTariffCode(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Возвращает разряд на день <code>Day</code>.</brief>
  <p>
    Возвращает тарифный разряд на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_WageCategory>PA_WageCategory</link></code>,
    <code><link externalFunction PA_WageCategoryOnDay>PA_WageCategoryOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_WageCategory>PA_WageCategory</link></code> <br />
#end
function WT_GetWageCategory(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Возвращает код северной категории на день <code>Day</code></brief>
  <p>
    Возвращает код северной категории на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_NorthernCategory>PA_NorthernCategory</link></code>,
    <code><link externalFunction PA_NorthernCategoryOnDay>PA_NorthernCategoryOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_NorthernCategory>PA_NorthernCategory</link></code> <br />
#end
function WT_GetNorthernCategory(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Возвращает признак фиксации северной категории на день <code>Day</code></brief>
  <p>
    Возвращает <code>true</code>, если на день <code>Day</code> зафиксировано значение северной категории
    (можно изменить ее значение при выполнении функции расчета северных категорий).
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_IsNorthernCategoryFixed>PA_IsNorthernCategoryFixed</link></code>,
    <code><link externalFunction PA_IsNorthernCategoryFixedOnDay>PA_IsNorthernCategoryFixedOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_IsNorthernCategoryFixed>PA_IsNorthernCategoryFixed</link></code> <br />
#end
function WT_IsNorthernCategoryFixed(Day: byte): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает районный коэффициент на день <code>Day</code>.</brief>
  <p>
    Возвращает районный коэффициент на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_RegionalFactor>PA_RegionalFactor</link></code>,
    <code><link externalFunction PA_RegionalFactorOnDay>PA_RegionalFactorOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_RegionalFactor>PA_RegionalFactor</link></code> <br />
#end
function WT_GetRegionalFactor(Day: byte): double; external #G_WorkTable;

#doc
  <brief>Возвращает признак "Формировать основную оплату" на день <code>Day</code>.</brief>
  <p>
    Возвращает признак "Формировать основную оплату" на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_OsnOpl>PA_OsnOpl</link></code>,
    <code><link externalFunction PA_OsnOplOnDay>PA_OsnOplOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_OsnOpl>PA_OsnOpl</link></code> <br />
#end
function WT_GetOsnOpl(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Функция получения источников финансирования на день <code>Day</code>.</brief>
  <p>
    Позволяет получить код таблицы и номер записи для вытягивания источников финансирования на день <code>Day</code>.
    Полученную пару <code>TableCode, NRec</code> можно использовать для работы с источниками
    финансирования с помощью интерфейса <code>Z_STAFFIF::WorkWithIF</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
    <li><code>[out] TableCode</code> - код таблицы для источников финансирования (LSCHET, PEREXOD, LSTAB).</li>
    <li><code>[out] NRec</code> - номер записи для источников финансирования</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Признак успешности выполнения.
  </p>

  <h3>Примечания</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_GetSourceFinance>PA_GetSourceFinance</link></code>,
    <code><link externalFunction PA_GetSourceFinanceOnDay>PA_GetSourceFinanceOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p><p>
    Для Галактики 8.1 использовать данную функцию имеет смысл, только если
    установлен спецкомпонент <code>Z_STAFFIF</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_GetSourceFinance>PA_GetSourceFinance</link></code> <br />
#end
function WT_GetSourceFinance(Day: byte, var TableCode: word, var NRec: comp): boolean; external #G_WorkTable;

#doc
  <brief>Функция получения сложного корректирующего коэффициента на день <code>Day</code>.</brief>
  <p>
    Позволяет получить код и номер записи сущности для вытягивания составляющих
    сложного корректирующего коэффициента на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
    <li><code>[out] entityCode</code> - код сущности, <a href="#AboutCCFEntityCodes">см. ниже</a></li>
    <li><code>[out] entityNRec</code> - номер записи сущности</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает признак успешности выполнения.
  </p>
  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_GetComplexCorrectiveFactor>PA_GetComplexCorrectiveFactor</link></code>,
    <code><link externalFunction PA_GetComplexCorrectiveFactorOnDay>PA_GetComplexCorrectiveFactorOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <a name="AboutCCFEntityCodes"><h3>Коды сущностей для получения составляющих СКК</h3></a>
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
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><a href="exf--WT_GetCorrectiveFactor.htm">WT_GetCorrectiveFactor</a></code> <br />
  <code><link externalFunction PA_GetComplexCorrectiveFactor>PA_GetComplexCorrectiveFactor</link></code> <br />
#end
function WT_GetComplexCorrectiveFactor(Day: byte, var entityCode: word, var entityNRec: comp): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает бухгалтерский счет на день <code>Day</code></brief>
  <p>
    Возвращает бухгалтерский счет на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Account>PA_Account</link></code>,
    <code><link externalFunction PA_AccountOnDay>PA_AccountOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Account>PA_Account</link></code> <br />
#end
function WT_GetAccount(Day: byte): string; external #G_WorkTable;

#doc
  <brief>Возвращает бухгалтерский субсчет на день <code>Day</code></brief>
  <p>
    Возвращает бухгалтерский субсчет на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_ControlAccount>PA_ControlAccount</link></code>,
    <code><link externalFunction PA_ControlAccountOnDay>PA_ControlAccountOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_ControlAccount>PA_ControlAccount</link></code> <br />
#end
function WT_GetControlAccount(Day: byte): string; external #G_WorkTable;

#doc
  <brief>Позволяет получить состояние аналитик лицевого счета на день <code>Day</code></brief>
  <p>
    Копирует состояние аналитики на день <code>Day</code> в массивы <code>Tbl</code> и <code>Kau</code>.
    <code>Tbl</code> должен быть массивом из шести элементов типа <code>word</code>,
    <code>Kau</code> - массивом из шести элементов типа <code>comp</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
    <li><code>[out] Tbl</code> - массив кодов таблиц аналитики</li>
    <li><code>[out] Kau</code> - массив ссылок на записи таблиц аналитик</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает признак успешности выполнения.
  </p>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_GetAllAnalytics>PA_GetAllAnalytics</link></code>,
    <code><link externalFunction PA_GetAllAnalyticsOnDay>PA_GetAllAnalyticsOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><a href="exf--WT_GetAnalytics.htm">WT_GetAnalytics</a></code> <br />
  <code><link externalFunction PA_GetAllAnalytics>PA_GetAllAnalytics</link></code> <br />
#end
function WT_CopyAnalytics(Day: byte, var Tbl: anytype, var Kau: anytype): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает ссылку на ТХО на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на ТХО на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_StandardBusinessTransaction>PA_StandardBusinessTransaction</link></code>,
    <code><link externalFunction PA_StandardBusinessTransactionOnDay>PA_StandardBusinessTransactionOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_StandardBusinessTransaction>PA_StandardBusinessTransaction</link></code> <br />
#end
function WT_GetStandardBusinessTransaction(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Возвращает параметр ТХО на день <code>Day</code>.</brief>
  <p>
    Возвращает параметр ТХО на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_StandardBusinessTransactionParameter>PA_StandardBusinessTransactionParameter</link></code>,
    <code><link externalFunction PA_StandardBusinessTransactionParameterOnDay>PA_StandardBusinessTransactionParameterOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_StandardBusinessTransactionParameter>PA_StandardBusinessTransactionParameter</link></code> <br />
#end
function WT_GetStandardBusinessTransactionParameter(Day: byte): string; external #G_WorkTable;

#doc
  <brief>Возвращает дополнительную аналитику на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на набор дополнительных аналитик (таблица OTPDOP), приходящийся на день <code>Day</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_AdditionalAnalytics>PA_AdditionalAnalytics</link></code>,
    <code><link externalFunction PA_AdditionalAnalyticsOnDay>PA_AdditionalAnalyticsOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_AdditionalAnalytics>PA_AdditionalAnalytics</link></code> <br />
#end
function WT_GetAdditionalAnalytics(Day: byte): comp; external #G_WorkTable;

#doc
  <brief>Позволяет получить Особые условия, КПС и Территориальные условия, приходящиеся на день <code>Day</code>.</brief>
  <p>
    Возвращает ссылку на Условия труда на рабочем месте (таблица ADVISES),
    приходящуюся на заданный день текущего месяца табеля.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Информационные функции табеля - устаревший способ получения параметров ЛС на дату.
    В настоящий момент для этих целей лучше использовать специализированные
    <link article PADAPI_About>функции получения параметров ЛС на дату</link>
    (<code><link externalFunction PA_Insalubrity>PA_Insalubrity</link></code>,
    <code><link externalFunction PA_InsalubrityOnDay>PA_InsalubrityOnDay</link></code>),
    поскольку загрузка табеля в общем случае более трудоемка, чем настройка текущего ЛС
    (<code><link externalFunction PA_Assign>PA_Assign</link></code>) для нового функционала.
    Однако, если требуется запрашивать не только параметры ЛС на дату, но и чисто табельные данные,
    то разницы в использовании старого и нового функционала нет никакой.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><link externalFunction PA_Insalubrity>PA_Insalubrity</link></code> <br />
#end
function WT_GetInsalubrity(Day: byte): comp; external #G_WorkTable;

//------------------------------------------------------------------------------
#doc
  <brief>Определить, включен ли режим работы с учетом только постоянных переходов</brief>
  <p>
    Возвращает <code>true</code>, если табель находится в режиме работы с учетом только постоянных переходов,
    <code>false</code> - в противном случае. По умолчанию табель учитывает все переходы (то есть будет <code>false</code>).
    Переключение в режим работы с учетом всех переходов происходит при каждой загрузке табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>), а также
    при переформировании (<code><a href="exf--ReformWorkingTable.htm">ReformWorkingTable</a></code>,
    <code><a href="exf--RefreshWorkingTable.htm">RefreshWorkingTable</a></code>).
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><a href="exf--WT_SetPermanentChangesOnly.htm">WT_SetPermanentChangesOnly</a></code> <br />
#end
function WT_PermanentChangesOnly: boolean; external #G_WorkTable;

#doc
  <brief>Включить/отключить режим работы с учетом только постоянных переходов</brief>
  <p>
    При включенном режиме работы с учетом только постоянных переходов
    <a href="art--WTABELDOC_InformationalFunctions.htm">информационные функции табеля</a>,
    а также <a href="art--WTABELDOC_AboutDaysAndHours.htm">функции подсчета количества дней и часов</a>
    работают так, как будто у текущего сотрудника в БД находятся только постоянные переходы.
    Временные переходы игнорируются. Постоянные переходы определяются по пустой "Исходной дате окончания",
    что делает возможным использование данного режима в архивных периодах.
  </p>
  <p>
    По умолчанию табель учитывает все переходы,
    и переключение в режим работы с учетом всех переходов происходит при каждой загрузке табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>), а также
    при переформировании (<code><a href="exf--ReformWorkingTable.htm">ReformWorkingTable</a></code>,
    <code><a href="exf--RefreshWorkingTable.htm">RefreshWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>PermanentOnly</code> - учитывать только постоянные переходы</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Данный режим разработан для обработки доп. входимости 34 "Для затрат не учитывать переходы без даты окончания".
    Поэтому вызов функций подсчета часов в этом режиме хоть и возможен (и даже будет правильно работать),
    но имеет мало смысла.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
  <code><a href="exf--WT_PermanentChangesOnly.htm">WT_PermanentChangesOnly</a></code> <br />
#end
procedure WT_SetPermanentChangesOnly(PermanentOnly: boolean); external #G_WorkTable;

//------------------------------------------------------------------------------
// ПОДЕННЫЕ ФИЛЬТРЫ
// В этом разделе перечислены функции для работы с фильтрами и для применения
// фильтров к табелю.
//------------------------------------------------------------------------------
#doc article WTABELDOC_AboutFilters
  <brief>Общие замечания по использованию фильтров</brief>
  <p>
    Поденный фильтр представляет собой маску дней, которые условно считаются "удовлетворяющими фильтру".
    При <a href="art--WTABELDOC_AboutDaysAndHours.htm">подсчете количества дней или часов</a>
    установленный на табель поденный фильтр работает как решето, отбрасывая часы/дни, приходящиеся на дни,
    не удовлетворяющие фильтру.
  </p>
  <p>
    По умолчанию поденный фильтр на табель не установлен, и "удовлетворяющими фильтру" считаются
    все дни месяца. Также фильтр сбрасывается при загрузке табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>), в том случае,
    если табель грузится за период, отличный от предыдущего, или если грузится для другого ЛС.
  </p>
  <p>
    Существует два подхода к работе с поденными фильтрами в табеле.
    Эти подходы не исключают друг друга, то есть можно одновременно использовать и один, и другой.
  </p>
  <ol>
    <li>
      <b><a href="art--WTABELDOC_OldFilters.htm">Использование стандартных заготовок.</a></b>
      Исторически первый подход. Предоставляет ограниченный набор наиболее популярных действий.
    </li>
    <li>
      <b><a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры.</a></b>
      Данный подход предполагает работу с фильтрами как с самостоятельными объектами,
      является наиболее гибким и охватывает весь функционал.
    </li>
  </ol>
  <p>
    То, с чем табель работает непосредственно (при подсчете количества дней и часов,
    при <a href="art--WTABELDOC_AboutAbsences.htm">формировании месячных неявок</a>),
    в действительности является <a href="exf--CreateCDF.htm">составным поденным фильтром</a>,
    но доступ по хэндлу к нему не предоставляется. Вместо этого имеется некоторый набор
    функций, осуществляющий с этим фильтром типовые действия (добавление нового фильтра
    в составной, исключение какого-либо фильтра из составного). Подробнее об этом - в статьях,
    посвященных подходам <a href="art--WTABELDOC_OldFilters.htm">1</a>
    и <a href="art--WTABELDOC_IndependentFilters.htm">2</a>.
  </p>
  <p>
    Здесь же остановимся на наиболее общих функциях работы с поденным фильтром табеля
  </p>

  <h3>Общие функции работы с поденным фильтром табеля</h3>
  <code><a href="exf--WT_IsFilterSet.htm">WT_IsFilterSet</a></code> <br />
  <code><a href="exf--WT_ReSetFilter.htm">WT_ReSetFilter</a></code> <br />
  <code><a href="exf--WT_IsDayEnabled.htm">WT_IsDayEnabled</a></code> <br />

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a> <br />
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
#end

#doc
  <brief>Установлен ли поденный фильтр на загруженный табель.</brief>
  <p>
    Возвращает <code>true</code>, если на загруженный табель установлены какие-либо фильтры. В противном случае
    возвращает <code>false</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
#end
function WT_IsFilterSet: boolean; external #G_WorkTable;

#doc
  <brief>Снимает установленный на табель поденный фильтр</brief>
  <p>
    Функция снимает все наложенные на табель фильтры.
  	Возвращает <code>true</code>, если какой-либо фильтр был
    установлен. В противном случае возвращает <code>false</code>.
  </p>

  <h3>Примечание</h3>
  <p>
    Если на табель были установлены
    <a href="art--WTABELDOC_IndependentFilters.htm">независимые поденные фильтры</a>,
    то их уничтожение при этом НЕ происходит.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a> <br />
  <code><a href="exf--WT_IsFilterSet.htm">WT_IsFilterSet</a></code> <br />
#end
function WT_ReSetFilter: boolean; external #G_WorkTable;

#doc
  <brief>Проходит ли заданный день месяца через поденный фильтр табеля.</brief>
  <p>
    Возвращает <code>true</code>, если день <code>Day</code> прошел через все наложенные на табель
    поденные фильтры. В противном случае возвращает <code>false</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
#end
function WT_IsDayEnabled(Day: byte): boolean; external #G_WorkTable;

//------------------------------------------------------------------------------
// НЕЗАВИСИМЫЕ ПОДЁННЫЕ ФИЛЬТРЫ
#doc article WTABELDOC_IndependentFilters
  <brief>Независимые поденные фильтры</brief>
  <p>
    Данный функционал предназначен для работы с
    <a href="art--WTABELDOC_AboutFilters.htm">поденными фильтрами</a> как с самостоятельными объектами,
    без привязки к табелю. На данном уровне абстракции фильтр можно рассматривать как массив
    фиксированной длины (а именно <code>31</code>) значений типа <code>boolean</code>.
    Значения в этом массиве задают, будет ли удовлетворять тот или иной день месяца данному фильтру.
  </p>
  <p>
    Каждый отдельный экземпляр фильтра характеризуется своим хэндлом - значением типа <code>longint</code>.
    Действительные хэндлы всегда ненулевые, поэтому ноль можно использовать для обозначения
    неинициализированного экземпляра фильтра. Хэндл возвращается функциями, создающими фильтры,
    и является глобальным для приложения (на трехуровневой архитектуре - для одного пользователя).
    Уничтожаются независимые фильтры всегда вручную путем вызова функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>. Если уничтожение не вызвать явно,
    или потерять хэндл фильтра, то объект останется висеть в памяти.
  </p>
  <p>
    Независимые поденные фильтры бывают следующих типов:
  </p>
  <ul>
    <li><b>Обычный поденный фильтр</b> - является родоначальником в иерархии наследования всех
      других поденных фильтров, содержит базовую функциональность.
      Функции для работы с такими фильтрами, кроме функций создания и уничтожения,
      имеют префикс DF_ (Day Filter).</li>
    <li><b>Маска дней</b> - поденный фильтр, доступность дней которого можно задать "вручную"
      отдельно для каждого дня. Для работы с такими фильтрами предназначены функции
      с префиксом DM_ (Day Mask), однако, можно использовать и общие для всех фильтров функции
      (с префиксом DF_), поскольку маска дней является лишь частным случаем обычного
      поденного фильтра</li>
    <li><b>Составной поденный фильтр</b> - поденный фильтр, созданный путем логической
      комбинации (<code>AND</code>, <code>OR</code>) других поденных фильтров.
      Поскольку, как и маска дней, является частным случаем обычного поденного фильтра,
      для него подходят функции с префиксом DF_. Для специфических действий, характерных
      только для данного типа фильтров, служат функции с префиксом CDF_
      (Composite Day Filter).</li>
  </ul>
  <p>
    Пространство значений хэндлов фильтров разных типов едино. Это сделано для того,
    чтобы можно было использовать функции, относящиеся к базовой сущности, для всех потомков.
    Однако, вместе с тем появляется техническая возможность вызвать специфичную функцию
    (например, для работы с составными фильтрами), передав ей хэндл того фильтра, который
    таковым не является. Такие ситуации никак не перехватываются, и приводят к падению
    приложения. Контроль соответствия типов в подобных случаях возлагается на прикладного
    разработчика.
  </p>

  <h3>Перечень функций для работы с независимыми фильтрами</h3>
  <p>
    Функции создания обычных поденных фильтров (на основании значений атрибутов
    лицевого счета, могущих меняться в течение месяца переходами в межпериод,
    см. <a href="art--WTABELDOC_InformationalFunctions.htm">информационные функции табеля</a>)
  </p>
  <code><a href="exf--CreateAnalyticsDF.htm">CreateAnalyticsDF</a></code> <br />
  <code><a href="exf--CreateAppointmentDF.htm">CreateAppointmentDF</a></code> <br />
  <code><a href="exf--CreateBrigadeDF.htm">CreateBrigadeDF</a></code> <br />
  <code><a href="exf--CreateCategoryDF.htm">CreateCategoryDF</a></code> <br />
  <code><a href="exf--CreateDayRangeDF.htm">CreateDayRangeDF</a></code> <br />
  <code><a href="exf--CreateDepartmentDF.htm">CreateDepartmentDF</a></code> <br />
  <code><a href="exf--CreateInsalubrityDF.htm">CreateInsalubrityDF</a></code> <br />
  <code><a href="exf--CreateInsalubritySubClassDF.htm">CreateInsalubritySubClassDF</a></code> <br />
  <code><a href="exf--CreateMpfDF.htm">CreateMpfDF</a></code> <br />
  <code><a href="exf--CreateOperatingModeDF.htm">CreateOperatingModeDF</a></code> <br />
  <code><a href="exf--CreatePaymentModeDF.htm">CreatePaymentModeDF</a></code> <br />
  <code><a href="exf--CreateTariffDF.htm">CreateTariffDF</a></code> <br />
  <p>
    Функции <code>CreateDF</code>, которая создавала бы сферический фильтр в вакууме,
    не существует, поскольку полезность такого объекта стремится к нулю.
  </p>

  <p>Функции для работы со всеми независимыми фильтрами</p>
  <code><a href="exf--DF_IsDayDisabled.htm">DF_IsDayDisabled</a></code> <br />
  <code><a href="exf--DF_Cardinality.htm">DF_Cardinality</a></code> <br />
  <code><a href="exf--DF_Invert.htm">DF_Invert</a></code> <br />
  <code><a href="exf--DF_IsInverted.htm">DF_IsInverted</a></code> <br />
  <code><a href="exf--DF_IsEqualTo.htm">DF_IsEqualTo</a></code> <br />
  <code><a href="exf--DF_Refresh.htm">DF_Refresh</a></code> <br />
  <code><a href="exf--DestroyDF.htm">DestroyDF</a></code> <br />

  <p>Функции для работы с масками дней</p>
  <code><a href="exf--CreateDM.htm">CreateDM</a></code> <br />
  <code><a href="exf--DM_SetupDay.htm">DM_SetupDay</a></code> <br />
  <code><a href="exf--DM_SetupAll.htm">DM_SetupAll</a></code> <br />

  <p>Функции для работы с составными поденными фильтрами</p>
  <code><a href="exf--CreateCDF.htm">CreateCDF</a></code> <br />
  <code><a href="exf--CDF_Add.htm">CDF_Add</a></code> <br />
  <code><a href="exf--CDF_Delete.htm">CDF_Delete</a></code> <br />
  <code><a href="exf--CDF_Active.htm">CDF_Active</a></code> <br />
  <code><a href="exf--CDF_Clear.htm">CDF_Clear</a></code> <br />

  <p>Применение независимых поденных фильтров к табелю</p>
  <code><a href="exf--WT_AddFilter.htm">WT_AddFilter</a></code> <br />
  <code><a href="exf--WT_DeleteFilter.htm">WT_DeleteFilter</a></code> <br />

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
#end

// DF - Day Filter
// Функции создания
#doc
  <brief>Создать поденный фильтр по подразделению</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые подразделение лицевого счета
    имело заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Department</code> - ссылка на зарплатное подразделение (таблица KATPODR)</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetDepartment.htm">WT_GetDepartment</a></code> <br />
  <code><a href="exf--WT_AddDepartmentFilter.htm">WT_AddDepartmentFilter</a></code> <br />
#end
function CreateDepartmentDF(Department: comp): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по системе оплаты</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые система оплаты лицевого счета
    имела заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>PaymentMode</code> - код системы оплаты</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetPaymentMode.htm">WT_GetPaymentMode</a></code> <br />
  <code><a href="exf--WT_AddPaymentModeFilter.htm">WT_AddPaymentModeFilter</a></code> <br />
#end
function CreatePaymentModeDF(PaymentMode: word): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по категории</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые категория лицевого счета
    имела заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Category</code> - код категории</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetCategory.htm">WT_GetCategory</a></code> <br />
  <code><a href="exf--WT_AddCategoryFilter.htm">WT_AddCategoryFilter</a></code> <br />
#end
function CreateCategoryDF(Category: word): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по режиму работы</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые режим работы лицевого счета
    имел заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OperatingMode</code> - код режима работы</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetOperatingMode.htm">WT_GetOperatingMode</a></code> <br />
  <code><a href="exf--WT_AddOperatingModeFilter.htm">WT_AddOperatingModeFilter</a></code> <br />
#end
function CreateOperatingModeDF(OperatingMode: word): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по значению аналитики</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые некоторая аналитика лицевого счета
    имела заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Tbl</code> - код таблицы аналитики</li>
    <li><code>Analytics</code> - NRec записи таблицы аналитики</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetAnalytics.htm">WT_GetAnalytics</a></code> <br />
  <code><a href="exf--WT_AddAnalyticsFilter.htm">WT_AddAnalyticsFilter</a></code> <br />
#end
function CreateAnalyticsDF(Tbl: word, Analytics: comp): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по должности</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые должность лицевого счета
    имела заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Appointment</code> - ссылка на запись в каталоге должностей (CATALOGS)</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetAppointment.htm">WT_GetAppointment</a></code> <br />
  <code><a href="exf--WT_AddAppointmentFilter.htm">WT_AddAppointmentFilter</a></code> <br />
#end
function CreateAppointmentDF(Appointment: comp): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по бригаде</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые бригада лицевого счета
    имела заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Brigade</code> - ссылка на бригаду</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetBrigade.htm">WT_GetBrigade</a></code> <br />
  <code><a href="exf--WT_AddBrigadeFilter.htm">WT_AddBrigadeFilter</a></code> <br />
#end
function CreateBrigadeDF(Brigade: comp): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по тарифу/окладу</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые тариф/оклад лицевого счета
    имел заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Tariff</code> - значение часовой тарифной ставки или оклада.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetTariff.htm">WT_GetTariff</a></code> <br />
  <code><a href="exf--WT_AddTariffFilter.htm">WT_AddTariffFilter</a></code> <br />
#end
function CreateTariffDF(Tariff: double): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по КТУ</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые КТУ лицевого счета
    имел заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Mpf</code> - значение коэффициента трудового участия.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetMpf.htm">WT_GetMpf</a></code> <br />
  <code><a href="exf--WT_AddMpfFilter.htm">WT_AddMpfFilter</a></code> <br />
#end
function CreateMpfDF(Mpf: double): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по Особым условиям/КПС</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые Условия труда на рабочем месте
    лицевого счета имели заданное значение.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cAdvises</code> - ссылка на Условия труда на рабочем месте (таблица ADVISES)</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_GetInsalubrity.htm">WT_GetInsalubrity</a></code> <br />
#end
function CreateInsalubrityDF(cAdvises: comp): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по подклассу условий труда</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни текущего месяца табеля, в которые подкласс условий труда лицевого счета
    имел заданное значение. Подкласс задается в том формате, в котором он хранится в классификаторе
    подклассов: подклассу <code>A.B</code> соответствует целое число <code>A*100 + B</code>.
    Для корректного создания необходимо предварительно загрузить табель
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>),
    определив тем самым текущий лицевой счет, год и месяц.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>SubClass</code> - значение подкласса условий труда</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function CreateInsalubritySubClassDF(SubClass: word): longint; external #G_WorkTable;

#doc
  <brief>Создать поденный фильтр по диапазону дней</brief>
  <p>
    Функция создает поденный фильтр, в котором удовлетворяющими фильтру днями будут
    считаться те дни месяца, который попадают в заданный диапазон, включая его границы.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FirstDay</code> - начальный день диапазона</li>
    <li><code>LastDay</code> - конечный день диапазона</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>

  <h3>Замечание</h3>
  <p>
    Несмотря на то, что фильтр является независимым, и не требует для работы
    никаких табельных характеристик, техническая сторона вопроса такова,
    что на момент создания таки необходимо присутствие табеля. Поэтому
    желательно, чтобы табель был хотя бы <a href="art--WTABELDOC_UsingContexts.htm">проинициализирован</a>.
    Иначе получим падение быстродействия при вызове данной функции: табель будет
    создаваться и уничтожаться заново на каждый вызов <code>CreateDayRangeDF</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--WT_AddDayRangeFilter.htm">WT_AddDayRangeFilter</a></code> <br />
#end
function CreateDayRangeDF(FirstDay: byte, LastDay: byte): longint; external #G_WorkTable;

// Уничтожение
#doc
  <brief>Уничтожает экземпляр поденного фильтра</brief>
  <p>
    Функция уничтожает объект, созданный любой из функций создания
    <a href="art--WTABELDOC_IndependentFilters.htm">независимых поденных фильтров</a>.
    После этого хэндл теряет актуальность, и дальнейшее использование его в функциях
    работы с независимыми фильтрами запрещается (может привести к непредсказуемому поведению).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл поденного фильтра</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает <code>true</code>, если действительно существовал объект с таким хэндлом,
    и <code>false</code>, если хэндл был недействительным.
  </p>

  <h3>Замечание</h3>
  <p>
    Перед уничтожением необходимо убедиться, что уничтожаемый экземпляр не наложен на табель
    (<code><a href="exf--WT_AddFilter.htm">WT_AddFilter</a></code>) и не фигурирует ни в одном
    из существующих <a href="exf--CreateCDF.htm">составных поденных фильтров</a>.
    Иначе можно получить непредсказуемое поведение.
  </p>
  <p>
    При уничтожении <b><a href="exf--CreateCDF.htm">составных поденных фильтров</a></b>
    фильтры, входящие в их состав, НЕ уничтожаются.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function DestroyDF(FilterHandle: longint): boolean; external #G_WorkTable;

// Методы
#doc
  <brief>Перестроить содержимое фильтра</brief>
  <p>
    Для фильтров по какому-либо атрибуту или для составных фильтров:
    заново вычислить доступность дней в фильтре.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл фильтра, в котором надо перестроить доступность дней</li>
  </ul>

  <h3>Примечания</h3>
  <p>
    <b>Для фильтров по атрибуту</b> (
    <a href="exf--CreateAppointmentDF.htm">по должности</a>, <a href="exf--CreateDepartmentDF.htm">по подразделению</a>,
    <a href="exf--CreateTariffDF.htm">по окладу</a> и т.п.)
    данная функция применяется в тех случаях, когда после создания такого фильтра
    был изменен текущий лицевой счет или месяц табеля (вызвали
    <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code> с другими параметрами),
    и нужно, чтобы фильтр перестроился с учетом изменения соответствующего атрибута
    в новом контексте. Без вызова <code>DF_Refresh</code> фильтр останется в том состоянии,
    в котором был.
  </p>
  <p>
    Для фильтров по атрибуту следующие два примера приводят к одному и тому же результату:
  </p>
  <table>
   <tr>
     <td>
       <pre class=example>
  // Контекст табеля захвачен
  // (был вызов InitWorkingTable либо CL.Add(CS, 'WorkingTable'))
  ...
  LoadWorkingTable(lsNRec_1, month_1, year_1);

  var fh: longint;
  fh := CreateDepartmentDF(departmentNRec);

  LoadWorkingTable(lsNRec_2, month_2, year_2);

  DestroyDF(fh);
  fh := CreateDepartmentDF(departmentNRec);
       </pre>
     </td>
     <td>
       <pre class=example>
  // Контекст табеля захвачен
  // (был вызов InitWorkingTable либо CL.Add(CS, 'WorkingTable'))
  ...
  LoadWorkingTable(lsNRec_1, month_1, year_1);

  var fh: longint;
  fh := CreateDepartmentDF(departmentNRec);

  LoadWorkingTable(lsNRec_2, month_2, year_2);

  <b>DF_Refresh(fh);</b>

       </pre>
     </td>
   </tr>
  </table>
  <p>
    <b>Для <a href="exf--CreateCDF.htm">составных поденных фильтров</a></b> данная функция
    применяется в тех случаях, когда каким-либо образом была изменена доступность дней
    в любом из фильтров, участвующих в данном составном фильтре. При добавлении какого-либо фильтра
    в составной, либо при удалении из составного
    (<code><a href="exf--CDF_Add.htm">CDF_Add</a></code> и
    <code><a href="exf--CDF_Delete.htm">CDF_Delete</a></code> соответственно)
    вызывать <code>DF_Refresh</code> явно не требуется: это будет сделано автоматически.
  </p>
  <p>
    Процедура <code>DF_Refresh</code> для составных поденных фильтров не является рекурсивной:
    её действие не распространяется ни от контейнера к элементам, ни от элементов контейнеру.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
procedure DF_Refresh(FilterHandle: longint); external #G_WorkTable;

#doc
  <brief>Запрещен ли день <code>Day</code> фильтром</brief>
  <p>
    Возвращает <code>true</code>, если день <code>Day</code> НЕ удовлетворяет фильтру,
    заданному хэндлом <code>FilterHandle</code>; <code>false</code> - в противном случае.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл фильтра</li>
    <li><code>Day</code> - номер дня. Нумерация с единицы.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function DF_IsDayDisabled(FilterHandle: longint, Day: byte): boolean; external #G_WorkTable;

#doc
  <brief>Проверка поденных фильтров на равенство</brief>
  <p>
    Возвращает <code>true</code>, если фильтр, заданный хэндлом <code>FilterHandle</code>,
    разрешает/запрещает то же множество дней, что и фильтр, заданный хэндлом
    <code>SecondFilterHandle</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл первого фильтра для сравнения</li>
    <li><code>SecondFilterHandle</code> - хэндл второго фильтра для сравнения</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Следует учитывать, что дней в поденном фильтре всегда <code>31</code>, независимо от того,
    сколько дней в текущем месяце табеля. Соответственно, процедура сравнения проверяет все
    из этих <code>31</code> дней.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function DF_IsEqualTo(FilterHandle: longint, SecondFilterHandle: longint): boolean; external #G_WorkTable;

#doc
  <brief>Инвертировать фильтр</brief>
  <p>
    Меняет доступные в фильтре дни на недоступные, и наоборот.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл фильтра, который хотим инвертировать</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--DF_IsInverted.htm">DF_IsInverted</a></code> <br />
#end
procedure DF_Invert(FilterHandle: longint); external #G_WorkTable;

#doc
  <brief>Признак инвертированности фильтра</brief>
  <p>
    Возвращает <code>true</code>, если фильтр, заданный хэндлом <code>FilterHandle</code>,
    на текущий момент инвертирован (вызов <code><a href="exf--DF_Invert.htm">DF_Invert</a></code>
    производился нечетное число раз), <code>false</code> - в противном случае.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл фильтра</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--DF_Invert.htm">DF_Invert</a></code> <br />
#end
function DF_IsInverted(FilterHandle: longint): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает мощность фильтра <code>FilterHandle</code></brief>
  <p>
    Возвращает количество дней, удовлетворяющих фильтру, в фильтре <code>FilterHandle</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл фильтра</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function DF_Cardinality(FilterHandle: longint): integer; external #G_WorkTable;

// DM - Day Mask
#doc
  <brief>Создать маску дней</brief>
  <p>
    Функция создает маску дней - частный случай поденного фильтра,
    который характеризуется тем, что доступность дней в нём
    (<code><a href="exf--DF_IsDayDisabled.htm">DF_IsDayDisabled</a></code>)
    можно менять напрямую.
  </p>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>
  <p>
    К хэндлу, возвращенному данной функцией, применимы функции с префиксами DM_ и DF_.
  </p>

  <h3>Примечание</h3>
  <p>
    По умолчанию все дни в маске считаются удовлетворяющими фильтру.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function CreateDM: longint; external #G_WorkTable;

#doc
  <brief>Установить доступность дня в маске дней</brief>
  <p>
    Функция делает день <code>Day</code> фильтра <code>DayMaskHandle</code>,
    являющегося <a href="exf--CreateDM.htm">маской дней</a>, удовлетворяющим фильтру
    (при <code>Enabled = true</code>), либо не удовлетворяющим фильтру
    (при <code>Enabled = false</code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayMaskHandle</code> - хэндл маски дней</li>
    <li><code>Day</code> - номер дня в маске. Нумерация с <code>1</code>.</li>
    <li><code>Enabled</code> - <code>true</code>, если день должен стать удовлетворяющим фильтру,
      <code>false</code> - если не удовлетворяющим.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--DM_SetupAll.htm">DM_SetupAll</a></code> <br />
#end
procedure DM_SetupDay(DayMaskHandle: longint, Day: byte, Enabled: boolean); external #G_WorkTable;

#doc
  <brief>Установить доступность всех дней в маске дней</brief>
  <p>
    Функция делает все дни в <a href="exf--CreateDM.htm">маске дней</a>
    <code>DayMaskHandle</code> удовлетворяющими фильтру
    (при <code>Enabled = true</code>), либо не удовлетворяющими фильтру
    (при <code>Enabled = false</code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DayMaskHandle</code> - хэндл маски дней</li>
    <li><code>Enabled</code> - <code>true</code>, если нужно сделать все дни удовлетворяющими фильтру,
      <code>false</code> - если не удовлетворяющими.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--DM_SetupDay.htm">DM_SetupDay</a></code> <br />
#end
procedure DM_SetupAll(DayMaskHandle: longint, Enabled: boolean); external #G_WorkTable;

// CDF - Composite Day Filter
#doc
  <brief>Создать составной поденный фильтр</brief>
  <p>
    Составной поденный фильтр - фильтр, доступность дней в котором определяется
    на основании одного или нескольких других поденных фильтров при помощи логических операций
    <code>И</code> или <code>ИЛИ</code>.
  </p>

  <h3>Возвращаемое значение</h3>
  <p>
    Функция возвращает хэндл созданного фильтра. Принимающая сторона обязана сохранить
    данный хэндл для последующего уничтожения объекта при помощи функции
    <code><a href="exf--DestroyDF.htm">DestroyDF</a></code>.
  </p>
  <p>
    К хэндлу, возвращенному данной функцией, применимы функции с префиксами DF_ и CDF_.
  </p>

  <h3>Примечание</h3>
  <p>
    Изначально созданный составной фильтр является пустым: он не содержит
    в себе никаких других фильтров, и допускает все дни
    (<code><a href="exf--DF_IsDayDisabled.htm">DF_IsDayDisabled</a> = false</code> для всех дней).
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--CDF_Add.htm">CDF_Add</a></code> <br />
  <code><a href="exf--CDF_Delete.htm">CDF_Delete</a></code> <br />
  <code><a href="exf--CDF_Clear.htm">CDF_Clear</a></code> <br />
#end
function CreateCDF: longint; external #G_WorkTable;

#doc
  <brief>Добавить фильтр в составной поденный фильтр</brief>
  <p>
    <a href="exf--CreateCDF.htm">Составной поденный фильтр</a> представляется как выражение вида:
  </p>
  <pre class=example>
    X = A or B and C and D or E ...
  </pre>
  <p>
    в котором <code>A</code>, <code>B</code>, <code>C</code>, <code>D</code>, <code>E</code> и так далее -
    другие фильтры, входящие в составной фильтр <code>X</code>.
    Таким образом, чтобы определить, будет ли некоторый день удовлетворять фильтру <code>X</code>,
    нужно вычислить, удовлетворяет (<code>true</code>) или нет (<code>false</code>) этот день
    фильтрам <code>A..E</code> и т.д., и подставить результаты на место соответствующих фильтров
    в данном выражении. При этом приоритет операции <code>and</code> выше, т.е. сначала выполняются
    все <code>and</code>-ы, потом - все <code>or</code>-ы.
  </p>
  <p>
    Функция <code>CDF_Add</code> по сути приписывает к концу данного выражения ещё одну логическую
    операцию, заданную параметром <code>Condition</code>, и фильтр, заданный хэндлом <code>F</code>.
    При этом происходит пересчет доступности дней в составном фильтре, то есть сразу же после данной
    операции фильтром можно будет пользоваться
    (вызов <code><a href="exf--DF_Refresh.htm">DF_Refresh</a></code> не нужен).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Handle</code> - хэндл <a href="exf--CreateCDF.htm">составного фильтра</a></li>
    <li><code>F</code> - хэндл фильтра, который нужно добавить в составной</li>
    <li><code>Condition</code> - код логической операции,
      <a href="exf--CDF_Add.htm#Conditions">см. ниже</a> </li>
  </ul>

  <h3>Замечания</h3>
  <p>
    Уничтожение составного фильтра НЕ вызывает уничтожение составляющих его частей.
    По этой причине хэндлы составляющих частей после добавления их в составной фильтр
    всё равно следует хранить для последующего уничтожения, во избежание утечек памяти.
  </p>
  <p>
    Уничтожать составляющие части разрешается только после уничтожения составного фильтра,
    в котором они фигурировали.
  </p>
  <p>
    Проверка на зацикливание (добавление фильтра самого в себя) не производится,
    нужно отслеживать отдельно.
  </p>
  <p>
    При добавлении первого элемента в пустой составной фильтр параметр
    <code>Condition</code> не анализируется, так как не имеет значения.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--CDF_Delete.htm">CDF_Delete</a></code> <br />

  <a name="Conditions"><h2>Коды логических операций</h2></a>
  <p>В следующей таблице представлены возможные значения параметра <code>Condition</code></p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>cndAnd</code></td> <td><code>1</code></td> <td>логическое И</td> </tr>
    <tr> <td><code>cndOr</code></td>  <td><code>2</code></td> <td>логическое ИЛИ</td> </tr>
  </table>
#end
procedure CDF_Add(Handle: longint, F: longint, Condition: byte); external #G_WorkTable;

#doc
  <brief>Исключить фильтр из составного поденного фильтра</brief>
  <p>
    Функция исключает фильтр <code>F</code> из <a href="exf--CreateCDF.htm">составного фильтра</a>,
    заданного хэндлом <code>Handle</code>, если фильтр <code>F</code> присутствовал там.
    При этом происходит пересчет доступности дней в составном фильтре, то есть сразу же после данной
    операции фильтром можно будет пользоваться
    (вызов <code><a href="exf--DF_Refresh.htm">DF_Refresh</a></code> не нужен).
    Функция НЕ уничтожает фильтр <code>F</code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Handle</code> - хэндл <a href="exf--CreateCDF.htm">составного фильтра</a></li>
    <li><code>F</code> - хэндл фильтра, который нужно исключить из составного</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Составной поденный фильтр выглядит как выражение вида:
  </p>
  <pre class=example>
    X = A or B and C and D or E ...
  </pre>
  <p>
    в котором <code>A</code>, <code>B</code>, <code>C</code>, <code>D</code>, <code>E</code> и так далее -
    другие фильтры, входящие в составной фильтр <code>X</code>.
    Таким образом, чтобы определить, будет ли некоторый день удовлетворять фильтру <code>X</code>,
    нужно вычислить, удовлетворяет (<code>true</code>) или нет (<code>false</code>) этот день
    фильтрам <code>A..E</code> и т.д., и подставить результаты на место соответствующих фильтров
    в данном выражении. При этом приоритет операции <code>and</code> выше, т.е. сначала выполняются
    все <code>and</code>-ы, потом - все <code>or</code>-ы.
  </p>
  <p>
    Процедура <code>CDF_Delete</code> по сути исключает из данного выражения один фильтр
    и <b>следующую</b> за ним логическую операцию:
  </p>
  <pre class=example>
    // Было:
    // X = A or B and C and D;
    CDF_Delete(X, B);
    // Стало:
    // X = A or C and D;
  </pre>
  <p>
    Если фильтр <code>F</code> несколько раз фигурирует в составном фильтре,
    то исключается только его первое вхождение:
  </p>
  <pre class=example>
    // Было:
    // X = A and B or B and C;
    CDF_Delete(X, B);
    // Стало:
    // X = A and B and C;
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <code><a href="exf--CDF_Add.htm">CDF_Add</a></code> <br />
#end
procedure CDF_Delete(Handle: longint, F: longint); external #G_WorkTable;

#doc
  <brief>Проверка на наличие составляющих в составном поденном фильтре</brief>
  <p>
    Возвращает <code>true</code>, если в
    <a href="exf--CreateCDF.htm">составном поденном фильтре</a>, заданном хэндлом
    <code>Handle</code>, содержится хотя бы один фильтр (было что-либо добавлено при помощи
    функции <code><a href="exf--CDF_Add.htm">CDF_Add</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Handle</code> - хэндл составного фильтра</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
function CDF_Active(Handle: longint): boolean; external #G_WorkTable;

#doc
  <brief>Очистить составной поденный фильтр</brief>
  <p>
    Исключить из <a href="exf--CreateCDF.htm">составного поденного фильтра</a>,
    заданного хэндлом <code>Handle</code>, все составляющие (всё, что было добавлено
    функцией <code><a href="exf--CDF_Add.htm">CDF_Add</a></code>). Уничтожение
    составляющих при этом не происходит.
  </p>
  <p>
    После вызова данной функции все дни фильтра <code>Handle</code>
    становятся удовлетворяющими фильтру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Handle</code> - хэндл составного фильтра</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end
procedure CDF_Clear(Handle: longint); external #G_WorkTable;

// применение независимых фильтров к табелю
#doc
  <brief>Применить независимый поденный фильтр к табелю</brief>
  <p>
    Функция добавляет во внутренний фильтр табеля (который извне недоступен, и с которым
    табель работает непосредственно), фильтр, заданный хэндлом <code>FilterHandle</code>.
    При этом каждый новый добавленный фильтр усиливает предыдущий: удовлетворяющими
    фильтру днями будут считаться дни, прошедшие через все фильтры.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл
      <a href="art--WTABELDOC_IndependentFilters.htm">независимого поденного фильтра</a></li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Внутренний поденный фильтр, с которым табель работает непосредственно, на самом деле является
    <a href="exf--CreateCDF.htm">составным поденным фильтром</a>.
    Поэтому действие данной функции, если представить, что ко внутреннему фильтру табеля
    открыт доступ по хэндлу, можно изобразить следующим образом:
  </p>
  <pre class=example>
    // WT_AddFilter(F);
    // было бы абсолютно эквивалентно:
    CDF_Add(&ltхэндл внутреннего фильтра табеля&gt, F, cndAnd);
    // если бы был открыт доступ ко внутреннему фильтру табеля по хэндлу
  </pre>
  <p>
    Подробнее: <code><a href="exf--CDF_Add.htm">CDF_Add</a></code>
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
  <code><a href="exf--WT_DeleteFilter.htm">WT_DeleteFilter</a></code> <br />
#end
procedure WT_AddFilter(FilterHandle: longint); external #G_WorkTable;

#doc
  <brief>Снять независимый поденный фильтр с табеля</brief>
  <p>
    Функция снимает с внутреннего фильтра табеля (который извне недоступен, и с которым
    табель работает непосредственно), фильтр, заданный хэндлом <code>FilterHandle</code>,
    если он был там. Остальные наложенные на табель фильтры при этом остаются.
    Сам фильтр <code>FilterHandle</code> НЕ уничтожается.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>FilterHandle</code> - хэндл
      <a href="art--WTABELDOC_IndependentFilters.htm">независимого поденного фильтра</a></li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Внутренний поденный фильтр, с которым табель работает непосредственно, на самом деле является
    <a href="exf--CreateCDF.htm">составным поденным фильтром</a>.
    Поэтому действие данной функции, если представить, что ко внутреннему фильтру табеля
    открыт доступ по хэндлу, можно изобразить следующим образом:
  </p>
  <pre class=example>
    // WT_DeleteFilter(F);
    // было бы абсолютно эквивалентно:
    CDF_Delete(&ltхэндл внутреннего фильтра табеля&gt, F);
    // если бы был открыт доступ ко внутреннему фильтру табеля по хэндлу
  </pre>
  <p>
    Подробнее: <code><a href="exf--CDF_Delete.htm">CDF_Delete</a></code>
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
  <a href="art--WTABELDOC_AboutDaysAndHours.htm">Общие замечания по работе с функциями подсчета количества дней и часов</a>  <br />
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
  <code><a href="exf--WT_AddFilter.htm">WT_AddFilter</a></code> <br />
#end
procedure WT_DeleteFilter(FilterHandle: longint); external #G_WorkTable;

// СТАНДАРТНЫЕ ЗАГОТОВКИ ДЛЯ РАБОТЫ С ФИЛЬТРАМИ
#doc article WTABELDOC_OldFilters
  <brief>Стандартные заготовки для работы с фильтрами в табеле</brief>
  <p>
    До появления <a href="art--WTABELDOC_IndependentFilters.htm">независимых поденных фильтров</a>
    работа с фильтрами в табеле заключалась в прямом воздействии на внутренний поденный фильтр табеля
    (фильтр, с которым табель работает непосредственно). Несмотря на то, что данный функционал
    ограничен в возможностях, для большинства случаев его вполне достаточно.
  </p>
  <p>
    Табель имеет внутри себя два поденных фильтра:
  </p>
  <ul>
    <li><b>Основной внутренний фильтр табеля</b> - поденный фильтр, с которым работает
      сам табель (функция <code><a href="exf--WT_IsDayEnabled.htm">WT_IsDayEnabled</a></code>
      и всё, что на ней основано).
      Данный фильтр по своей природе является <a href="exf--CreateCDF.htm">составным поденным фильтром</a>,
      поэтому функции работы с ним по поведению очень похожи на функции для
      независимых составных фильтров: <a href="exf--CDF_Add.htm">CDF_Add</a>,
      <a href="exf--CDF_Delete.htm">CDF_Delete</a>, <a href="exf--CDF_Clear.htm">CDF_Clear</a>.
    </li>
    <li><b>Пользовательский поденный фильтр</b> - встроенная в табель
      <a href="exf--CreateDM.htm">маска дней</a>, которая может добавляться в основной
      фильтр табеля и изыматься из него по требованию пользователя.
      В настоящий момент функционал работы с пользовательским поденным фильтром
      является устаревшим: вместо него рекомендуется использовать независимые маски дней,
      так как в них есть всё то же самое.
    </li>
  </ul>
  <p>
    Соответственно, функции тоже подразделяются на две группы: для работы с основным
    внутренним фильтром табеля и для работы с пользовательским поденным фильтром.
  </p>

  <h3>Функции добавления нового фильтра</h3>
  <p>Добавляют новый фильтр в основной внутренний фильтр табеля</p>
  <code><a href="exf--WT_AddAnalyticsFilter.htm">WT_AddAnalyticsFilter</a></code> <br />
  <code><a href="exf--WT_AddAppointmentFilter.htm">WT_AddAppointmentFilter</a></code> <br />
  <code><a href="exf--WT_AddBrigadeFilter.htm">WT_AddBrigadeFilter</a></code> <br />
  <code><a href="exf--WT_AddCategoryFilter.htm">WT_AddCategoryFilter</a></code> <br />
  <code><a href="exf--WT_AddChangeFilter.htm">WT_AddChangeFilter</a></code> <br />
  <code><a href="exf--WT_AddDayRangeFilter.htm">WT_AddDayRangeFilter</a></code> <br />
  <code><a href="exf--WT_AddDepartmentFilter.htm">WT_AddDepartmentFilter</a></code> <br />
  <code><a href="exf--WT_AddMpfFilter.htm">WT_AddMpfFilter</a></code> <br />
  <code><a href="exf--WT_AddOperatingModeFilter.htm">WT_AddOperatingModeFilter</a></code> <br />
  <code><a href="exf--WT_AddPaymentModeFilter.htm">WT_AddPaymentModeFilter</a></code> <br />
  <code><a href="exf--WT_AddTariffFilter.htm">WT_AddTariffFilter</a></code> <br />
  <p>
    Для лучшего понимания того, что делают данные функции, приведем сравнительный
    пример использования данных функций и функций работы с независимыми поденными фильтрами
    (в обоих случаях достигается один и тот же эффект):
  </p>
  <table>
    <tr>
      <td>Стандартные заготовки</td>
      <td><a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a></td>
    </tr>
    <tr>
      <td>
        <pre class=example>
  // Контекст табеля захвачен
  // (был вызов InitWorkingTable либо CL.Add(CS, 'WorkingTable'))
  ...
  LoadWorkingTable(lsNRec, aMonth, aYear);



  WT_AddBrigadeFilter(brigadeNRec); // создали и наложили фильтр

  // Работаем с табелем...

  WT_ResetFilter; // сняли фильтр

  // уничтожение фильтра произошло при снятии, поскольку
  // такой фильтр не является независимым
        </pre>
      </td>
      <td>
        <pre class=example>
  // Контекст табеля захвачен
  // (был вызов InitWorkingTable либо CL.Add(CS, 'WorkingTable'))
  ...
  LoadWorkingTable(lsNRec, aMonth, aYear);

  var hf: longint;
  hf := CreateBrigadeDF(brigadeNRec); // создали фильтр
  WT_AddFilter(hf); // наложили фильтр

  // Работаем с табелем...

  WT_ResetFilter; // или WT_DeleteFilter(hf); - сняли фильтр

  DestroyDF(hf); // уничтожили фильтр

        </pre>
      </td>
    </tr>
  </table>

  <h3>Функции для работы с пользовательским поденным фильтром</h3>
  <p>
    Эти функции являются <b><font color="red">устаревшими</font></b>, поскольку
    при помощи независимых поденных фильтров нужный эффект достигается проще
    (см. <code><a href="exf--CreateDM.htm">CreateDM</a></code>).
  </p>
  <code><a href="exf--WT_SetupDayMask.htm">WT_SetupDayMask</a></code> <br />
  <code><a href="exf--WT_ApplyDayMask.htm">WT_ApplyDayMask</a></code> <br />
  <code><a href="exf--WT_UndoDayMask.htm">WT_UndoDayMask</a></code> <br />

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutFilters.htm">Общие замечания по использованию фильтров</a> <br />
  <a href="art--WTABELDOC_IndependentFilters.htm">Независимые поденные фильтры</a> <br />
#end

//------------------------------------------------------------------------------
// ПОДЕННЫЕ ФИЛЬТРЫ ПО ЗНАЧЕНИЮ
// Фильтры, устанавливаемые описанными в данном разделе функциями, усиливают
// друг друга при последовательном наложении.
#doc
  <brief>Добавить поденный фильтр по аналитике</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые некоторая аналитика
    текущего ЛС имела заданное значение. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Tbl</code> - код таблицы аналитики</li>
    <li><code>Analytics</code> - NRec записи таблицы аналитики</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateAnalyticsDF.htm">CreateAnalyticsDF</a></code> <br />
  <code><a href="exf--WT_GetAnalytics.htm">WT_GetAnalytics</a></code> <br />
#end
procedure WT_AddAnalyticsFilter(Tbl: word, Analytics: comp); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по бригаде</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые текущий ЛС
    принадлежал заданной бригаде. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Brigade</code> - ссылка на бригаду</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateBrigadeDF.htm">CreateBrigadeDF</a></code> <br />
  <code><a href="exf--WT_GetBrigade.htm">WT_GetBrigade</a></code> <br />
#end
procedure WT_AddBrigadeFilter(Brigade: comp); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по должности</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые текущий ЛС
    имел указанную должность. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Appointment</code> - ссылка на запись в каталоге должностей (CATALOGS)</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateAppointmentDF.htm">CreateAppointmentDF</a></code> <br />
  <code><a href="exf--WT_GetAppointment.htm">WT_GetAppointment</a></code> <br />
#end
procedure WT_AddAppointmentFilter(Appointment: comp); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по категории.</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые категория текущего ЛС
    соответствовала заданной. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Category</code> - код категории.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateCategoryDF.htm">CreateCategoryDF</a></code> <br />
  <code><a href="exf--WT_GetCategory.htm">WT_GetCategory</a></code> <br />
#end
procedure WT_AddCategoryFilter(Category: word); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по переходу.</brief>
  <p>
    Функция создает фильтр, допускающий только дни действия заданного перехода
    текущего ЛС (см. <code><a href="exf--WT_GetChange.htm">WT_GetChange</a></code>).
    После чего добавляет этот новый фильтр в основной внутренний фильтр табеля.
    При этом каждый новый добавленный фильтр усиливает предыдущий: удовлетворяющими фильтру
    днями будут считаться дни, прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Change</code> - ссылка на запись таблицы PEREXOD.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
    Использует <code><a href="exf--WT_GetChange.htm">WT_GetChange</a></code>
    для построения фильтра. В связи с этим, для случая пересекающихся переходов может быть получен
    не тот результат, который ожидался. Если необходимо добавить в фильтр все дни перехода,
    независимо от наложений переходов друг на друга, лучше использовать функцию
    <code><a href="exf--WT_AddDayRangeFilter.htm">WT_AddDayRangeFilter</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--WT_GetChange.htm">WT_GetChange</a></code>
#end
procedure WT_AddChangeFilter(Change: comp); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по диапазону дней</brief>
  <p>
    Функция создает фильтр, допускающий только дни из указанного диапазона.
    После чего добавляет этот новый фильтр в основной внутренний фильтр табеля.
    При этом каждый новый добавленный фильтр усиливает предыдущий: удовлетворяющими фильтру
    днями будут считаться дни, прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Beginning</code> - начальный день диапазона,</li>
    <li><code>Ending</code> - конечный день диапазона.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateDayRangeDF.htm">CreateDayRangeDF</a></code> <br />
#end
procedure WT_AddDayRangeFilter(Beginning: byte, Ending: byte); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по подразделению</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые текущий ЛС принадлежал
    заданному подразделению. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Department</code> - ссылка на запись в каталоге подразделений (KATPODR).</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateDepartmentDF.htm">CreateDepartmentDF</a></code> <br />
  <code><a href="exf--WT_GetDepartment.htm">WT_GetDepartment</a></code> <br />
#end
procedure WT_AddDepartmentFilter(Department: comp); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по КТУ</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые КТУ текущего ЛС
    был равен заданному. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Mpf</code> - значение коэффициента трудового участия.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateMpfDF.htm">CreateMpfDF</a></code> <br />
  <code><a href="exf--WT_GetMpf.htm">WT_GetMpf</a></code> <br />
#end
procedure WT_AddMpfFilter(Mpf: double); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по режиму работы</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые режим работы текущего ЛС
    соответствовал заданному. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>OperatingMode</code> - код режима работы.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateOperatingModeDF.htm">CreateOperatingModeDF</a></code> <br />
  <code><a href="exf--WT_GetOperatingMode.htm">WT_GetOperatingMode</a></code> <br />
#end
procedure WT_AddOperatingModeFilter(OperatingMode: word); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по системе оплаты</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые система оплаты текущего ЛС
    соответствовала заданной. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>PaymentMode</code> - код системы оплаты.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreatePaymentModeDF.htm">CreatePaymentModeDF</a></code> <br />
  <code><a href="exf--WT_GetPaymentMode.htm">WT_GetPaymentMode</a></code> <br />
#end
procedure WT_AddPaymentModeFilter(PaymentMode: word); external #G_WorkTable;

#doc
  <brief>Добавить поденный фильтр по тарифу</brief>
  <p>
    Функция создает фильтр, допускающий только те дни, в которые тариф/оклад текущего ЛС
    был равен заданному значению. После чего добавляет этот новый фильтр
    в основной внутренний фильтр табеля. При этом каждый новый добавленный фильтр
    усиливает предыдущий: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Tariff</code> - значение часовой тарифной ставки или оклада.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--CreateTariffDF.htm">CreateTariffDF</a></code> <br />
  <code><a href="exf--WT_GetTariff.htm">WT_GetTariff</a></code> <br />
#end
procedure WT_AddTariffFilter(Tariff: double); external #G_WorkTable;

//------------------------------------------------------------------------------
// ФИЛЬТРЫ ПО АТРИБУТУ
// В этом разделе перечислены функции для работы с фильтрами по т.н. атрибутам табеля. Фильтры по атрибуту
// являются устаревшими аналогами обычных табельных фильтров по подразделению (WT_AddDepartmentFilter) и
// переходу в межпериод (WT_AddChangeFilter) и отличаются от последних только тем, что не могут добавляться
// к уже установленным фильтрам, а только замещают их (WT_SetAttributeFilter). Это позволяет выяснить не
// только то, что на табель установлен фильтр (WT_IsFilterSet), но еще и то, по какому именно атрибуту
// (WT_GetAttributeFilter).
#doc
  <brief>
    Устанавливает на табель поденный фильтр по атрибуту <code>Attribute</code> со
    значением <code>Value</code>.
  </brief>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Attribute</code> - код атрибута (см. ниже)</li>
    <li><code>Value</code> - значение атрибута</li>
  </ul>

  <a name="FilterAttributeCodes"><h3>Коды атрибутов</h3></a>
  <p>
    Поддерживаемые данной функцией коды атрибутов представлены в таблице.
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>wtaChange</code></td>     <td><code>1</code></td> <td>Фильтр по переходу.
      <code>Value</code> интерпретируется как ссылка на переход.</td> </tr>
    <tr> <td><code>wtaDepartment</code></td> <td><code>2</code></td> <td>Фильтр по подразделению.
      <code>Value</code> интерпретируется как ссылка на подразделение.</td> </tr>
  </table>

  <h3>Примечание</h3>
  <p>
    Если перед вызовом данной функции на табель уже был наложен некоторый поденный фильтр,
    то он снимается перед установкой нового.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--WT_AddChangeFilter.htm">WT_AddChangeFilter</a></code> <br />
  <code><a href="exf--WT_AddDepartmentFilter.htm">WT_AddDepartmentFilter</a></code> <br />
#end
procedure WT_SetAttributeFilter(Attribute: byte, Value: comp); external #G_WorkTable;

#doc
  <brief>Возвращает код атрибута, фильтр по которому установлен на табель</brief>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
  </p>
  <p>
    Возвращает код атрибута, по которому был установлен фильтр при помощи функции
    <code><a href="exf--WT_SetAttributeFilter.htm">WT_SetAttributeFilter</a></code>.
	  Значение атрибута возвращается в параметре <code>Value</code>.
    Если фильтр по атрибуту не установлен, или установлен обычный или комбинированный
    фильтр, возвращает <code>0</code>, значение параметра <code>Value</code> при этом тоже равно нулю.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>[out] Value</code> - значение атрибута</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
    <a href="exf--WT_SetAttributeFilter.htm#FilterAttributeCodes">Код атрибута</a>
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
#end
function WT_GetAttributeFilter(var Value: comp): byte; external #G_WorkTable;

//------------------------------------------------------------------------------
// МАСКА ДНЕЙ (Пользовательский поденный фильтр)
#doc
  <brief>Установить некоторый день в пользовательском поденном фильтре</brief>
  <p>
    Функция предназначена для ручной инициализации пользовательского поденного фильтра.
    Данная функция задает, будет ли день <code>Day</code> удовлетворять пользовательскому
    поденному фильтру. По умолчанию пользовательскому фильтру удовлетворяют все дни месяца.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день месяца</li>
    <li><code>Enabled</code> - удовлетворяет ли данный день пользовательскому фильтру</li>
  </ul>

  <h3>Замечания</h3>
  <p><b><font color="red">Устаревшая функция.</font></b></p>
  <p>
    Для достижения точно такого же эффекта, как от пользовательского поденного фильтра, лучше использовать
    <a href="exf--CreateDM.htm">независимую маску дней</a>. В таком случае аналогом данной функции
    будет <code><a href="exf--DM_SetupDay.htm">DM_SetupDay</a></code>.
  </p>
  <p>
    Данная функция только настраивает пользовательский фильтр. Чтобы применить этот фильтр к табелю,
    нужно вызвать <code><a href="exf--WT_ApplyDayMask.htm">WT_ApplyDayMask</a></code>,
    чтобы снять наложенный пользовательский фильтр с табеля -
    <code><a href="exf--WT_UndoDayMask.htm">WT_UndoDayMask</a></code>
  </p>
  <p>
    Пользовательский фильтр не сбрасывается в исходное состояние при загрузке табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>), он только снимается
    с него. Поэтому в случае использования пользовательского поденного фильтра следует
    заботиться о явной инициализации каждого дня.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--WT_ApplyDayMask.htm">WT_ApplyDayMask</a></code> <br />
  <code><a href="exf--WT_UndoDayMask.htm">WT_UndoDayMask</a></code> <br />
#end
procedure WT_SetupDayMask(Day: byte, Enabled: boolean); external #G_WorkTable;

#doc
  <brief>Применить пользовательский поденный фильтр</brief>
  <p>
    Наложить заранее настроенный (см. <code><a href="exf--WT_SetupDayMask.htm">WT_SetupDayMask</a></code>)
    пользовательский поденный фильтр на табель. При этом добавленный фильтр
    усиливает все предыдущие: удовлетворяющими фильтру днями будут считаться дни,
    прошедшие через все фильтры.
  </p>

  <h3>Примечание</h3>
  <p><b><font color="red">Устаревшая функция.</font></b></p>
  <p>
    Для достижения точно такого же эффекта, как от пользовательского поденного фильтра, лучше использовать
    <a href="exf--CreateDM.htm">независимую маску дней</a>. В таком случае аналогом данной функции
    будет <code><a href="exf--WT_AddFilter.htm">WT_AddFilter</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--WT_UndoDayMask.htm">WT_UndoDayMask</a></code> <br />
  <code><a href="exf--WT_SetupDayMask.htm">WT_SetupDayMask</a></code> <br />
#end
procedure WT_ApplyDayMask; external #G_WorkTable;

#doc
  <brief>Снять пользовательский поденный фильтр</brief>
  <p>
    Функция снимает с табеля наложенный пользовательский поденный фильтр, если он был наложен.
    При этом остаются наложенными все другие поденные фильтры (по диапазону дат,
    по атрибуту и т.д.), независимо от того, накладывались ли они до или после наложения
    пользовательского поденного фильтра.
  </p>

  <h3>Примечание</h3>
  <p><b><font color="red">Устаревшая функция.</font></b></p>
  <p>
    Для достижения точно такого же эффекта, как от пользовательского поденного фильтра, лучше использовать
    <a href="exf--CreateDM.htm">независимую маску дней</a>. В таком случае аналогом данной функции
    будет <code><a href="exf--WT_DeleteFilter.htm">WT_DeleteFilter</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_OldFilters.htm">Стандартные заготовки для работы с фильтрами в табеле</a> <br />
  <code><a href="exf--WT_SetupDayMask.htm">WT_SetupDayMask</a></code> <br />
  <code><a href="exf--WT_ApplyDayMask.htm">WT_ApplyDayMask</a></code> <br />
#end
procedure WT_UndoDayMask; external #G_WorkTable;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// ПЕРИОДЫ
#doc
  <brief>Формирует список периодов текущего табеля с учетом значения битовой маски <code>CheckFlags</code>.</brief>
  <p>
    Периоды представляют собой просто интервалы дат, построенные по определенным правилам на основании
    текущего загруженного табеля. Периоды являются производными данными, предоставляемыми пользователю,
    поэтому их загрузка или перестроение не влияет на работу остальных функций табеля.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>CheckFlags</code> - набор флагов, определяющих критерии построения периодов в табеле
      (<a href="#AboutPeriodsCheckFlags">см. ниже</a>)</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Данная функция только строит периоды. Для итерации по уже построенным периодам следует использовать
    функции <code><a href="exf--WT_GetPeriodCount.htm">WT_GetPeriodCount</a></code>
    и <code><a href="exf--WT_GetPeriod.htm">WT_GetPeriod</a></code>.
  </p>

  <a name="AboutPeriodsCheckFlags"><h3>Флаги для построения периодов в табеле</h3></a>
  <p>
    Поддерживаемые флажки для построения табелем периодов представлены в таблице
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>cfFilter</code></td>          <td><code>1</code></td>  <td>Выбрасывать из периодов дни, не удовлетворяющие <a href="art--WTABELDOC_AboutFilters.htm">поденному фильтру</a></td> </tr>
    <tr> <td><code>cfChanges</code></td>         <td><code>2</code></td>  <td>Разбивать периоды по переходам</td> </tr>
    <tr> <td><code>cfUselessDays</code></td>     <td><code>4</code></td>  <td>Выбрасывать из периодов "бесполезные дни" (см. <code><a href="exf--WT_IsDayUseless.htm">WT_IsDayUseless</a></code>)</td> </tr>
    <tr> <td><code>cfFilterChange</code></td>    <td><code>9</code></td>  <td>Разбивать периоды по дням, удовлетворяющим/не удовлетворяющим <a href="art--WTABELDOC_AboutFilters.htm">поденному фильтру</a>.
      В отличие от флага <code>cfFilter</code>, дни, не удовлетворяющие фильтру, не выбрасываются из периодов.</td> </tr>
    <tr> <td><code>cfHired</code></td>           <td><code>16</code></td> <td>Выбрасывать из периодов дни, в которые был уже уволен/ещё не принят на работу. <br />
      Актуально в тех случаях, когда несколько раз принимали на работу и увольняли,
      чтобы учитывать разрывы между периодами работы. Потому что самые крайние даты
      приёма/увольнения анализируются и без этого флага, и дни за их пределами
      сами выбрасываются из периодов. <br />
      Не употреблять совместно с <code>cfDisregardHired</code>.</td> </tr>
    <tr> <td><code>cfInsalubrityRef</code></td>  <td><code>32</code></td> <td>Разбивать периоды по изменениям Особых условий/КПС. См. <code><a href="exf--WT_GetInsalubrity.htm">WT_GetInsalubrity</a></code> </td> </tr>
    <tr> <td><code>cfInsalubrityCode</code></td> <td><code>64</code></td> <td>Разбивать периоды по изменениям <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">кода вредности</a></td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>cfPenStajInsalubrityRef</code></td> <td><code>128</code></td> <td>Разбивать периоды по изменениям Особых условий/КПС для пенсионного стажа.
      См. <code><a href="exf--WT_GetPenStajInsalubrity.htm">WT_GetPenStajInsalubrity</a></code></td> </tr>
    <tr> <td><code>cfDisregardHired</code></td>  <td><code>256</code></td> <td><b>Совсем</b> не учитывать даты приёма/увольнения. <br />
      От простого отсутствия флага <code>cfHired</code> отличается тем, что по умолчанию
      все периоды грузятся всё-таки в пределах "крайних" дат приёма/увольнения
      (максимальных из лицевого счета / истории увольнений), а данный флажок делает так, чтобы
      даже эти даты не учитывались. <br />
      Не употреблять совместно с <code>cfHired</code>.
    </td> </tr>
  </table>
  <p>
    <code><b><font color="red">*</font></b></code> &ndash; устаревшие флажки.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetPeriodCount.htm">WT_GetPeriodCount</a></code> <br />
  <code><a href="exf--WT_GetPeriod.htm">WT_GetPeriod</a></code> <br />
#end
function WT_LoadPeriods(CheckFlags: word): boolean; external #G_WorkTable;

#doc
  <brief> Возвращает количество загруженных периодов. </brief>
  <p> Функция возвращает количество построенных функцией <code><a href="exf--WT_LoadPeriods.htm">WT_LoadPeriods</a></code>
    периодов. </p>

  <h3>См. также</h3>
  <code><a href="exf--WT_LoadPeriods.htm">WT_LoadPeriods</a></code> <br />
  <code><a href="exf--WT_GetPeriod.htm">WT_GetPeriod</a></code> <br />
#end
function WT_GetPeriodCount: longint; external #G_WorkTable;

#doc
  <brief>Получить границы периода с индексом <code>PeriodNumber</code></brief>
  <p>
    Возвращает даты начала <code>Beginning</code> и окончания <code>Ending</code> периода с индексом
    <code>PeriodNumber</code> из списка периодов, сформированного ранее функцией
    <code><a href="exf--WT_LoadPeriods.htm">WT_LoadPeriods</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>PeriodNumber</code> - индекс периода в списке. Индексация с нуля.</li>
    <li><code>[out] Beginning</code> - дата начала периода</li>
    <li><code>[out] Ending</code> - дата окончания периоде</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
  	Возвращает <code>true</code> в случае успешного завершения, в противном случае
    возвращает <code>false</code>.
  </p>

  <h3>См. также</h3>
  <code><a href="exf--WT_LoadPeriods.htm">WT_LoadPeriods</a></code> <br />
  <code><a href="exf--WT_GetPeriodCount.htm">WT_GetPeriodCount</a></code> <br />
#end
function WT_GetPeriod(PeriodNumber: longint, var Beginning: date, var Ending: date): boolean; external #G_WorkTable;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// НЕЯВКИ
//------------------------------------------------------------------------------
#doc article WTABELDOC_AboutAbsences
  <brief>Общая информация о функциях для работы с неявками</brief>
  <p>
    <b>Неявки</b> представляют собой проекции <i>отклонений</i> на график работы сотрудника. <br />
    <b>Отклонения</b> [от режимов работ] - любые сущности, каким-либо образом влияющие,
    изменяющие количество отработанных человеком часов. Это могут быть отпуска, больничные,
    командировки, приказы на работу в выходной и т.д. Таким образом, отклонения - это
    входные данные для формирования табеля, а неявки - выходные данные.
  </p>
  <p>
    В описании некоторых функций может встретиться такой термин, как <i>системные отклонения</i>. <br />
    <b>Системные отклонения</b> - это отпуска, больничные,
    отзывы из отпуска, командировки и гособязанности.
  </p>
  <p>
    Функционал табеля учета рабочего времени позволяет работать со следующими типами неявок:
  </p>
  <ul>
    <li><b>Месячные неявки</b> - все неявки в пределах текущего месяца табеля</li>
    <li><b>Системные неявки</b> - только неявки, сформированные на основе <i>системных отклонений</i>,
      но без ограничений по периоду. </li>
  </ul>
  <p>
    Соответственно, внутри табеля имеются два независимых списка: список месячных неявок
    и список системных неявок. Оба списка можно загружать, выгружать и получать из них данные.
  </p>
  <p>
    Для каждого загруженного списка неявок автоматически строится <i>карта распределения неявок по датам</i>.
    Элемент такой карты - запись вида "в такой-то день на такую-то неявку пришлось столько-то часов".
    В такой карте на один день может приходиться несколько разных неявок.
  </p>
  <p>
    Кроме того, каждая неявка имеет свою собственную <i>карту распределения самой себя по датам</i>.
    Здесь уже, понятно, на один день может быть только один элемент карты, и содержать он
    будет, если не вдаваться в мелкие подробности, только часы данной неявки за день.
  </p>

  <h3>Перечень функций для работы с неявками</h3>

  <p>Загрузка и выгрузка списков неявок</p>
  <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code> <br />
  <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code> <br />
  <code><a href="exf--WT_ReSetAbsences.htm">WT_ReSetAbsences</a></code>:
    <code><a href="exf--WT_ReSetMonthlyAbsences.htm">WT_ReSetMonthlyAbsences</a></code>,
    <code><a href="exf--WT_ReSetSystemAbsences.htm">WT_ReSetSystemAbsences</a></code> <br />

  <p>Работа со списками неявок непосредственно</p>
  <code><a href="exf--WT_GetAbsenceCount.htm">WT_GetAbsenceCount</a></code>:
    <code><a href="exf--WT_GetMonthlyAbsenceCount.htm">WT_GetMonthlyAbsenceCount</a></code>,
    <code><a href="exf--WT_GetSystemAbsenceCount.htm">WT_GetSystemAbsenceCount</a></code> <br />
  <code><a href="exf--WT_GetAbsenceAttribute.htm">WT_GetAbsenceAttribute</a></code>:
    <code><a href="exf--WT_GetMonthlyAbsenceAttribute.htm">WT_GetMonthlyAbsenceAttribute</a></code>,
    <code><a href="exf--WT_GetSystemAbsenceAttribute.htm">WT_GetSystemAbsenceAttribute</a></code> <br />
  <code><a href="exf--WT_GetMonthlyAbsenceAttr.htm">WT_GetMonthlyAbsenceAttr</a></code>,
    <code><a href="exf--WT_GetSystemAbsenceAttr.htm">WT_GetSystemAbsenceAttr</a></code> <br />
  <code><a href="exf--WT_GetAbsenceHoursOn.htm">WT_GetAbsenceHoursOn</a></code> <br />

  <p>Работа с картой распределения всех неявок</p>
  <code><a href="exf--WT_AbsencesMapCount.htm">WT_AbsencesMapCount</a></code> <br />
  <code><a href="exf--WT_AbsencesMapFirstOn.htm">WT_AbsencesMapFirstOn</a></code> <br />
  <code><a href="exf--WT_AbsencesMapLastOn.htm">WT_AbsencesMapLastOn</a></code> <br />
  <code><a href="exf--WT_AbsencesMapAbsenceAt.htm">WT_AbsencesMapAbsenceAt</a></code> <br />
  <code><a href="exf--WT_AbsencesMapDayAt.htm">WT_AbsencesMapDayAt</a></code> <br />

  <p>Работа с картой распределения одной неявки по датам</p>
  <code><a href="exf--WT_AbsenceMapCount.htm">WT_AbsenceMapCount</a></code> <br />
  <code><a href="exf--WT_AbsenceMappedOn.htm">WT_AbsenceMappedOn</a></code> <br />
  <code><a href="exf--WT_AbsenceHoursAt.htm">WT_AbsenceHoursAt</a></code> <br />
  <code><a href="exf--WT_AbsenceDayAt.htm">WT_AbsenceDayAt</a></code> <br />

  <p>Прочие функции</p>
  <code><a href="exf--WT_GetAbsencesHours.htm">WT_GetAbsencesHours</a></code> <br />
  <code><a href="exf--WT_GetAbsencesDays.htm">WT_GetAbsencesDays</a></code> <br />
  <code><a href="exf--WT_GetAbsencesWorkingDays.htm">WT_GetAbsencesWorkingDays</a></code> <br />
  <code><a href="exf--WT_GetSystemAbsenceKindOnDate.htm">WT_GetSystemAbsenceKindOnDate</a></code> <br />

  <h3>Примеры</h3>
  <p>Получение информации о месячных неявках, пришедшихся на 15-е число текущего месяца, способ 1.</p>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    if (LoadWorkingTable(LSCHET.NREC, M, Y) = 0)
    {
      ...
      // Загрузим в список
      if (WT_LoadMonthlyAbsences = 0)
      {
        ...
        // Используем карту распределения всех неявок.
        var Bn, En, i: integer;

        // Диапазон элементов карты, соответствующих 15-му числу:
        Bn := WT_AbsencesMapFirstOn(atMonthly, Date(15, M, Y));
        En := WT_AbsencesMapLastOn(atMonthly, Date(15, M, Y));

        // Цикл по элементам карты за 15-е число.
        for (i := Bn; i <= En; i++)
        {
          // Из элемента карты вытягиваем индекс неявки в списке неявок
          var AbsenceIndex: integer;
          AbsenceIndex := WT_AbsencesMapAbsenceAt(atMonthly, i);

          // Получаем описание неявки, например
          var Description: string;
          WT_GetMonthlyAbsenceAttribute(AbsenceIndex, aaDescription, Description);

          ...
        }
      }
    }
    else
      Message('Табель не загрузился', mfError or OkButton);
  </pre>
  <p>Получение информации о месячных неявках, пришедшихся на 15-е число текущего месяца, способ 2.</p>
  <pre class=example>
    // не забываем <a href="art--WTABELDOC_UsingContexts.htm">проинициализировать табель</a>

    ...
    if (LoadWorkingTable(LSCHET.NREC, M, Y) = 0)
    {
      ...
      // Загрузим в список
      if (WT_LoadMonthlyAbsences = 0)
      {
        ...
        var i: integer;
        // На этот раз используем карту распределения одной неявки по дням.
        for (i := 0; i&lt;WT_GetMonthlyAbsenceCount; i++)
        {
          // Есть ли элемент в карте распределения данной неявки за 15-е число
          if (WT_AbsenceMappedOn(atMonthly, i, Date(15, M, Y)))
          {
            // Данная неявка имеет место быть на 15-е число

            // Получаем, например, дату начала и окончания неявки
            var Bn, En: date;
            WT_GetMonthlyAbsenceAttribute(i, aaBeginning, Bn);
            WT_GetMonthlyAbsenceAttribute(i, aaEnding, En);

            ...
          }
        }
      }
    }
    else
      Message('Табель не загрузился', mfError or OkButton);
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_AbsenceKinds.htm">Виды неявок</a> <br />
  <a href="art--WTABELDOC_AbsenceAttributes.htm">Коды атрибутов неявок</a> <br />
  <a href="art--WTABELDOC_AbsenceTypes.htm">Константы типов неявок</a> <br />
#end

#doc article WTABELDOC_AbsenceTypes
  <brief>Константы типов неявок</brief>
  <p>
    Тип неявок (месячные/системные) для функций задается следующими константами:
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>atSystem</code></td>  <td><code>0</code></td> <td>системные неявки</td> </tr>
    <tr> <td><code>atMonthly</code></td> <td><code>1</code></td> <td>месячные неявки</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <a href="art--WTABELDOC_AbsenceKinds.htm">Виды неявок</a> <br />
#end

#doc article WTABELDOC_AbsenceAttributes
  <brief>Атрибуты неявок</brief>
  <p>
    В таблице представлены возможные атрибуты неявок и типы данных для этих атрибутов.
  </p>
  <table>
    <tr> <td>Константа атрибута</td>      <td>Значение константы</td> <td>Атрибут</td>                     <td>Тип данных атрибута</td> </tr>
    <tr> <td><code>aaMark</code></td>         <td><code>1</code></td> <td>условное обозначение неявки</td> <td><code>string</code></td> </tr>
    <tr> <td><code>aaBeginning</code></td>    <td><code>2</code></td> <td>дата начала неявки</td>          <td><code>date</code></td> </tr>
    <tr> <td><code>aaEnding</code></td>       <td><code>3</code></td> <td>дата окончания неявки</td>       <td><code>date</code></td> </tr>
    <tr> <td><code>aaDays</code></td>         <td><code>4</code></td> <td>кол-во дней неявки</td>          <td><code>byte</code></td> </tr>
    <tr> <td><code>aaHours</code></td>        <td><code>5</code></td> <td>кол-во часов неявки</td>         <td><code>double</code></td> </tr>
    <tr> <td><code>aaDescription</code></td>  <td><code>6</code></td> <td>описание неявки</td>             <td><code>string</code></td> </tr>
    <tr> <td><code>aaPaymentCode</code></td>  <td><code>7</code></td> <td>код вида оплаты</td>             <td><code>word</code></td> </tr>
    <tr> <td><code>aaSourceRecord</code></td> <td><code>8</code></td> <td><code>nRec</code> записи-источника</td>                   <td><code>comp</code></td> </tr>
    <tr> <td><code>aaNotation</code></td>     <td><code>9</code></td>  <td><code>nRec</code> условного обозначения</td>             <td><code>comp</code></td> </tr>
    <tr> <td><code>aaKind</code></td>         <td><code>10</code></td> <td><a href="art--WTABELDOC_AbsenceKinds.htm">вид неявки</a></td> <td><code>word</code></td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>aaHoursMap</code></td>    <td><code>11</code></td> <td>карта распределения часов неявки</td> <td><code>longint (PContainer)</code></td> </tr>
    <tr> <td><code><b><font color="red">*</font></b>aaDayMap</code></td>      <td><code>12</code></td> <td>карта распределения дней неявки</td>  <td><code>longint (PContainer)</code></td> </tr>
    <tr> <td><code>aaAdditive</code></td>      <td><code>13</code></td> <td>неявка добавляет собой рабочие (<code><a href="art--WTABELDOC_HourKinds.htm">hkWholeWorking</a></code>) часы</td>  <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaWorkTime</code></td>      <td><code>14</code></td> <td>в классификаторе условных обозначений стоит входимость в расчет рабочего
                                                                            времени при выборе ограничения пособия</td>                          <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaStandardCode</code></td>  <td><code>15</code></td> <td>код для обозначения дней месяца в стандартных формах Т-12, Т-13</td> <td><code>string</code></td> </tr>
    <tr> <td><code>aaAbsenceCode</code></td>   <td><code>16</code></td> <td>код для вывода информации о неявках в печатных формах табеля</td>    <td><code>string</code></td> </tr>
    <tr> <td><code>aaPayrollAvgNum</code></td> <td><code>17</code></td> <td>входит в расчет среднесписочной численности</td>                     <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaCode</code></td>          <td><code>18</code></td> <td>код вида пособия или вида отпуска</td> <td><code>word</code></td> </tr>
    <tr> <td><code>aaGroupCode</code></td>     <td><code>19</code></td> <td>код группы условного обозначения</td>  <td><code>longint</code></td> </tr>
    <tr> <td><code>aaAppearance</code></td>    <td><code>20</code></td> <td>признак явки</td>                      <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaOverridesInsalubrityCode</code></td>          <td><code>21</code></td> <td>переопределяет ли неявка <a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">код вредности</a></td> <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaInsalubrityCode</code></td>                   <td><code>22</code></td> <td><a href="exf--WT_GetInsalubrityCode.htm#InsalubrityCodes">код вредности</a>, на который неявка переопределяет условия труда
                                                                                                (при <code>aaOverridesInsalubrityCode = true</code>)</td>  <td><code>word</code></td> </tr>
    <tr> <td><code>aaWorkingForInsalubrityCalculations</code></td> <td><code>23</code></td> <td>считается ли отработанным временем с точки зрения доп. тарифов</td>  <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaIncludedInWorkingHours</code></td>            <td><code>24</code></td> <td>входит в состав рабочих часов. Более общее условие, чем <code>aaAdditive</code></td>  <td><code>boolean</code></td> </tr>

    <tr> <td><code>aaDecreasesStandardTime</code></td>             <td><code>25</code></td> <td>признак "уменьшает норму"</td>  <td><code>boolean</code></td> </tr>
    <tr> <td><code>aaWholeDay</code></td>      <td><code>26</code></td> <td>претендует ли неявка на то, чтобы занять целый день: создана на основе
                                                                            больничного/отпуска/командировки, либо на основе уменьшения с нулевым кол-вом часов.
                                                                            Таким образом, признак характеризует, если можно так выразиться, "целодневность по плану".</td>  <td><code>boolean</code></td> </tr>
  </table>
  <p>
    <code><b><font color="red">*</font></b></code> &ndash; устаревшие атрибуты.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end

#doc article WTABELDOC_AbsenceKinds
  <brief>Виды неявок</brief>
  <p>
    Следующая таблица содержит константы видов неявок:
  </p>
  <table>
    <tr> <td>Константа</td>                   <td>Значение</td>          <td>Описание</td> </tr>
    <tr> <td><code>akNone</code></td>           <td><code>0</code></td>    <td>&mdash;</td> </tr>
    <tr> <td><code><font color="red"><b>*</b></font>akHandCorrection</code></td>     <td><code>4</code></td>    <td>приоритетная ручная корректировка (служебный вид неявки)</td> </tr>
    <tr> <td><code><font color="#008000"><b>*</b></font>akBusinessTrip</code></td>   <td><code>32</code></td>   <td>командировка</td> </tr>
    <tr> <td><code><font color="#008000"><b>*</b></font>akVacationRecall</code></td> <td><code>64</code></td>   <td>отзыв из отпуска</td> </tr>
    <tr> <td><code><font color="#008000"><b>*</b></font>akDuty</code></td>           <td><code>128</code></td>  <td>выполнение гособязанностей</td> </tr>
    <tr> <td><code><font color="#008000"><b>*</b></font>akSickList</code></td>       <td><code>256</code></td>  <td>больничный</td> </tr>
    <tr> <td><code><font color="#008000"><b>*</b></font>akVacation</code></td>       <td><code>512</code></td>  <td>отпуск</td> </tr>
    <tr> <td><code>akWeekendMark</code></td>    <td><code>768</code></td>  <td>искусственная неявка "выходные дни", имеющая условное обозначение выходного</td> </tr>
    <tr> <td><code>akTableAbsence</code></td>   <td><code>1024</code></td> <td>отклонение с типом "уменьшение" либо "увеличение"</td> </tr>
    <tr> <td><code>akIrregularity</code></td>   <td><code>2048</code></td> <td>отклонение с типом "нарушение" режима больничного</td> </tr>
    <tr> <td><code>akRefinement</code></td>     <td><code>4096</code></td> <td>отклонение с типом "уточнение" (не влияет на количество отработанного времени)</td> </tr>
    <tr> <td><code>akOvertimeWorkOrder</code></td>     <td><code>8192</code></td> <td>приказ по кадрам на работу сверхурочно</td> </tr>
    <tr> <td><code>akWeekendWorkOrder</code></td>      <td><code>8193</code></td> <td>приказ по кадрам на работу в выходные    </td> </tr>
    <tr> <td><code>akTrainingOrder</code></td>         <td><code>8194</code></td> <td>приказ по кадрам на обучение </td> </tr>
    <tr> <td><code>akTrainingTransferOrder</code></td> <td><code>8195</code></td> <td>приказ по кадрам: перенос обучения  </td> </tr>
    <tr> <td><code><font color="red"><b>*</b></font>akInformation</code></td>        <td><code>8196</code></td> <td>тип отклонения, введенного в табеле на вкладке "Отклонения": информация </td> </tr>
    <tr> <td><code>akHoursAbsenceOrder</code></td>     <td><code>8197</code></td> <td>приказ на почасовое отклонение </td> </tr>
  </table>
  <p> <code><font color="red"><b>*</b></font></code> &ndash; устаревшие виды неявок</a>. </p>
  <p>
  <code><font color="#008000"><b>*</b></font></code> &ndash; данные константы используются также и для <a href="art--WTABELDOC_AboutAbsences.htm">системных отклонений</a>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <a href="art--WTABELDOC_AbsenceTypes.htm">Константы типов неявок</a> <br />
#end

//------------------------------------------------------------------------------
// В этом разделе описываются функции для работы с месячными и системными неявками.
// Следующие три функции могут быть использованы для выборки данных о неявках любых типов:
// WT_GetAbsenceCount
// WT_GetAbsenceAttribute
// WT_ReSetAbsences
#doc
  <brief>Выгружает из памяти информацию о загруженных ранее неявках.</brief>
  <p>
    В зависимости от переданного параметра выгружает или месячные неявки, загруженные функцией
    <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>, или
    системные неявки, загруженные функцией
    <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
    (О типах неявок <a href="art--WTABELDOC_AboutAbsences.htm">см. здесь</a>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a></li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_ReSetMonthlyAbsences.htm">WT_ReSetMonthlyAbsences</a></code> <br />
  <code><a href="exf--WT_ReSetSystemAbsences.htm">WT_ReSetSystemAbsences</a></code> <br />
  <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code> <br />
  <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code> <br />
#end
procedure WT_ReSetAbsences(AbsenceType: byte); external #G_WorkTable;

#doc
  <brief>Возвращает количество загруженных ранее неявок</brief>
  <p>
    В зависимости от переданного параметра возвращает количество или месячных неявок, загруженных функцией
    <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>, или
    системных неявок, загруженных функцией
    <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
    (О типах неявок <a href="art--WTABELDOC_AboutAbsences.htm">см. здесь</a>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a></li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetSystemAbsenceCount.htm">WT_GetSystemAbsenceCount</a></code> <br />
  <code><a href="exf--WT_GetMonthlyAbsenceCount.htm">WT_GetMonthlyAbsenceCount</a></code> <br />
  <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code> <br />
  <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code> <br />
#end
function WT_GetAbsenceCount(AbsenceType: byte): integer; external #G_WorkTable;

#doc
  <brief>Получить некоторый атрибут неявки</brief>
  <p>
    Выбирает значение <code>Value</code> атрибута с кодом <code>Attr</code> неявки
    с порядковым номером <code>AbsenceNumber</code>.
    Параметр <code>AbsenceType</code> задает, из какого списка брать неявку:
    из списка месячных неявок, загруженных функцией <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>,
    или из списка системных неявок, загруженных функцией <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
  	Возвращает <code>true</code> в случае успешного завершения или <code>false</code> в противном случае.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - к какому из списков неявок обратиться (см. <a href="art--WTABELDOC_AbsenceTypes.htm">типы неявок</a>)</li>
    <li><code>AbsenceNumber</code> - индекс неявки в списке. Индексация с нуля.</li>
    <li><code>Attr</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
    <li><code>[out] Value</code> - значение атрибута. Тип значения зависит от <a href="art--WTABELDOC_AbsenceAttributes.htm">кода атрибута</a>.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetMonthlyAbsenceAttribute.htm">WT_GetMonthlyAbsenceAttribute</a></code> <br />
  <code><a href="exf--WT_GetSystemAbsenceAttribute.htm">WT_GetSystemAbsenceAttribute</a></code> <br />
#end
function WT_GetAbsenceAttribute(AbsenceType: byte, AbsenceNumber: integer, Attr: word, var Value: AnyType): boolean; external #G_WorkTable;

//------------------------------------------------------------------------------
// МЕСЯЧНЫЕ НЕЯВКИ
#doc
  <brief>Загружает месячные неявки в список.</brief>
  <p>
    Возвращает <code>0</code> в случае удачного завершения или <code>-1</code> в противном случае.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Примечание</h3>
  <p>
    Неявки загружаются с учетом текущего
    <a href="art--WTABELDOC_AboutFilters.htm">поденного фильтра табеля</a>,
    т.е. из них убираются дни, "не удовлетворяющие фильтру".
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code> <br />
#end
function WT_LoadMonthlyAbsences: integer; external #G_WorkTable;

#doc
  <brief>Возвращает количество загруженных месячных неявок.</brief>
  <p>
    Функция возвращает количество месячных неявок в списке, загруженном функцией
    <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code> <br />
  <code><a href="exf--WT_GetAbsenceCount.htm">WT_GetAbsenceCount</a></code> <br />
#end
function WT_GetMonthlyAbsenceCount: integer; external #G_WorkTable;

#doc
  <brief>Возвращает строковое представление значения некоторого атрибута месячной неявки</code>.</brief>
  <p>
    Возвращает строковое представление значения атрибута с кодом <code>Attr</code> неявки
    из списка месячных неявок, загруженного функцией <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceNumber</code> - индекс неявки в списке; индексация с нуля</li>
    <li><code>Attr</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
  </ul>

  <h3>Замечание</h3>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
    Поддерживается ограниченный список кодов атрибутов неявок. Предпочтительнее
    использовать функцию <code><a href="exf--WT_GetMonthlyAbsenceAttribute.htm">WT_GetMonthlyAbsenceAttribute</a></code>.</p>
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetMonthlyAbsenceAttribute.htm">WT_GetMonthlyAbsenceAttribute</a></code> <br />
  <code><a href="exf--WT_GetAbsenceAttribute.htm">WT_GetAbsenceAttribute</a></code> <br />
  <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code> <br />
#end
function WT_GetMonthlyAbsenceAttr(AbsenceNumber: integer, Attr: word): string; external #G_WorkTable;

#doc
  <brief>Получить значение некоторого атрибута месячной неявки</brief>
  <p>
    Получить значение <code>Value</code> атрибута с кодом <code>Attr</code> месячной неявки с индексом
    <code>AbsenceNumber</code>. Неявка берется из списка месячных неявок, загруженного функцией
    <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceNumber</code> - индекс неявки; индексация с нуля</li>
    <li><code>Attr</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
    <li><code>[out] Value</code> - значение атрибута неявки. Тип параметра зависит от <a href="art--WTABELDOC_AbsenceAttributes.htm">кода атрибута</a>.</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
	  Возвращает <code>true</code> в случае успеха и <code>false</code> в противном случае.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetAbsenceAttribute.htm">WT_GetAbsenceAttribute</a></code> <br />
#end
function WT_GetMonthlyAbsenceAttribute(AbsenceNumber: integer, Attr: word, var Value: AnyType): boolean; external #G_WorkTable;

#doc
  <brief>Очищает список месячных неявок.</brief>
  <p>
    Очищает список неявок, загруженный функцией <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_ReSetAbsences.htm">WT_ReSetAbsences</a></code> <br />
#end
procedure WT_ReSetMonthlyAbsences; external #G_WorkTable;

//------------------------------------------------------------------------------
// СИСТЕМНЫЕ НЕЯВКИ
#doc
  <brief>Формирует список системных неявок работника, чей табель загружен в данный момент.</brief>
  <p>
    Возвращает <code>0</code> в случае удачного завершения или <code>-1</code> в противном случае.
    Список системных неявок формируется на основании
    <a href="art--WTABELDOC_AboutAbsences.htm">системных отклонений</a> вида <code>Kind</code>
    с номером записи, равным <code>SourceRecord</code>. Нулевое значение любого из параметров отменяет
    соответствующий уровень фильтрации.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Kind</code> - вид системного отклонения. Используются соотв. константы для <a href="art--WTABELDOC_AbsenceKinds.htm">видов неявок</a>.</li>
    <li><code>SourceRecord</code> - номер записи соответствующей сущности БД</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_LoadMonthlyAbsences.htm">WT_LoadMonthlyAbsences</a></code> <br />
#end
procedure WT_LoadSystemAbsences(Kind: word, SourceRecord: comp); external #G_WorkTable;

#doc
  <brief>Получить количество неявок в списке системных неявок</brief>
  <p>
    Список системных неявок формируется при их загрузке функцией
    <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetAbsenceCount.htm">WT_GetAbsenceCount</a></code> <br />
#end
function WT_GetSystemAbsenceCount: integer; external #G_WorkTable;

#doc
  <brief>Возвращает строковое представление значения некоторого атрибута системной неявки</code>.</brief>
  <p>
    Возвращает строковое представление значения атрибута с кодом <code>Attr</code> неявки
    из списка системных неявок, загруженного функцией <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceNumber</code> - индекс неявки в списке; индексация с нуля</li>
    <li><code>Attr</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
  </ul>

  <h3>Замечание</h3>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
    Поддерживается ограниченный список кодов атрибутов неявок. Предпочтительнее
    использовать функцию <code><a href="exf--WT_GetSystemAbsenceAttribute.htm">WT_GetSystemAbsenceAttribute</a></code>.</p>
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetSystemAbsenceAttribute.htm">WT_GetSystemAbsenceAttribute</a></code> <br />
  <code><a href="exf--WT_GetAbsenceAttribute.htm">WT_GetAbsenceAttribute</a></code> <br />
  <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code> <br />
#end
function WT_GetSystemAbsenceAttr(AbsenceNumber: integer, Attr: word): string; external #G_WorkTable;

#doc
  <brief>Получить значение некоторого атрибута системной неявки</brief>
  <p>
    Получить значение <code>Value</code> атрибута с кодом <code>Attr</code> системной неявки с индексом
    <code>AbsenceNumber</code>. Неявка берется из списка системных неявок, загруженного функцией
    <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceNumber</code> - индекс неявки; индексация с нуля</li>
    <li><code>Attr</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
    <li><code>[out] Value</code> - значение атрибута неявки. Тип параметра зависит от <a href="art--WTABELDOC_AbsenceAttributes.htm">кода атрибута</a>.</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает <code>true</code> в случае успеха и <code>false</code> в противном случае.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_GetAbsenceAttribute.htm">WT_GetAbsenceAttribute</a></code> <br />
#end
function WT_GetSystemAbsenceAttribute(AbsenceNumber: integer, Attr: word, var Value: AnyType): boolean; external #G_WorkTable;

#doc
  <brief>Очищает список системных неявок.</brief>
  <p>
    Очищает список неявок, загруженный функцией <code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
  <code><a href="exf--WT_ReSetAbsences.htm">WT_ReSetAbsences</a></code> <br />
#end
procedure WT_ReSetSystemAbsences; external #G_WorkTable;

//------------------------------------------------------------------------------
// КАРТА РАСПРЕДЕЛЕНИЯ НЕЯВОК
#doc
  <brief>Возвращает количество элементов в карте распределения неявок.</brief>
  <p>
    В зависимости от переданного параметра возвращает количество элементов в карте
    системных неявок или в карте месячных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsencesMapCount(AbsenceType: byte): integer; external #G_WorkTable;

#doc
  <brief>Возвращает индекс первого из приходящихся на дату элементов карты неявок.</brief>
  <p>
    В зависимости от переданного параметра <code>AbsenceType</code> обращается или к карте системных неявок,
    или к карте месячных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>OnDate</code> - дата для поиска элемента карты</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Индекс первого элемента карты неявок, относящегося к заданной дате.
    Если на заданную дату в карте неявок не нашлось ни одного элемента, возвращается <code>-1</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsencesMapFirstOn(AbsenceType: byte, OnDate: date): integer; external #G_WorkTable;

#doc
  <brief>Возвращает индекс последнего из приходящихся на дату элементов карты неявок.</brief>
  <p>
    В зависимости от переданного параметра <code>AbsenceType</code> обращается или к карте системных неявок,
    или к карте месячных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>OnDate</code> - дата для поиска элемента карты</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Индекс последнего элемента карты неявок, относящегося к заданной дате.
    Если на заданную дату в карте неявок не нашлось ни одного элемента, возвращается <code>-1</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsencesMapLastOn(AbsenceType: byte, OnDate: date): integer; external #G_WorkTable;

#doc
  <brief>Возвращает индекс неявки, на которую ссылается элемент карты распределения неявок.</brief>
  <p>
    В зависимости от параметра <code>AbsenceType</code> функция работает
    или со списком системных неявок и картой системных неявок,
    или со списком месячных неявок и картой месячных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>Index</code> - индекс элемента карты распределения неявок. Индексация с нуля.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Индекс неявки в соответствующем списке неявок, или <code>-1</code> в случае неудачи.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsencesMapAbsenceAt(AbsenceType: byte, Index: integer): integer; external #G_WorkTable;

#doc
  <brief>По индексу в карте неявок получить дату дня из элемента карты</brief>
  <p>
  	В зависимости от параметра <code>AbsenceType</code> функция работает
    или с картой системных неявок, или с картой месячных неявок.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>Index</code> - индекс элемента карты распределения неявок. Индексация с нуля.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
  	Дата, к которой относится заданный элемент карты неявок.
    В случае неудачного завершения возвращает пустую дату.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsencesMapDayAt(AbsenceType: byte, Index: integer): date; external #G_WorkTable;

//------------------------------------------------------------------------------
// КАРТА РАСПРЕДЕЛЕНИЯ ЧАСОВ НЕЯВКИ ПО ДАТАМ
// В этом разделе описываются методы обработки данных карты распределения конкретной неявки по датам.
// Элементы карты индексируются с 0.
#doc
	<brief>Возвращает количество элементов в карте распределения одной неявки</brief>
  <p>
    В зависимости от параметра <code>AbsenceType</code> функция
    обращается или к неявке из списка месячных неявок, или к неявке из списка системных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>Index</code> - индекс неявки в соответствующем списке неявок. Индексация с нуля.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsenceMapCount(AbsenceType: byte, Index: integer): integer; external #G_WorkTable;

#doc
  <brief>Проверяет, есть ли в карте некоторой неявки элемент, соответствующий заданной дате.</brief>
  <p>
    В зависимости от параметра <code>AbsenceType</code> функция
    обращается или к неявке из списка месячных неявок, или к неявке из списка системных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>Index</code> - индекс неявки в соответствующем списке неявок. Индексация с нуля.</li>
    <li><code>OnDate</code> - дата, для которой хотим узнать, есть ли элемент в карте неявки</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsenceMappedOn(AbsenceType: byte, Index: integer, OnDate: date): boolean; external #G_WorkTable;

#doc
  <brief>Получить кол-во часов неявки на день, задаваемый некоторой датой.</brief>
  <p>
    В зависимости от параметра <code>AbsenceType</code> функция
    обращается или к неявке из списка месячных неявок, или к неявке из списка системных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>Index</code> - индекс неявки в соответствующем списке неявок. Индексация с нуля.</li>
    <li><code>OnDate</code> - дата, на которую запрашиваем часы</li>
    <li><code>[out] Value</code> - часы неявки за данный день</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Были ли получены часы.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_GetAbsenceHoursOn(AbsenceType: byte, Index: integer, OnDate: date, var Value: double): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает количество часов из элемента карты распределения неявки.</brief>
  <p>
    В зависимости от параметра <code>AbsenceType</code> функция
    обращается или к неявке из списка месячных неявок, или к неявке из списка системных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>AbsenceIndex</code> - индекс неявки в соответствующем списке неявок. Индексация с нуля.</li>
    <li><code>MapElementIndex</code> - индекс элемента карты распределения данной неявки. Индексация с нуля.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsenceHoursAt(AbsenceType: byte, AbsenceIndex: integer, MapElementIndex: integer): double; external #G_WorkTable;

#doc
  <brief>Возвращает дату из элемента карты распределения одной неявки.</brief>
  <p>
    В зависимости от параметра <code>AbsenceType</code> функция
    обращается или к неявке из списка месячных неявок, или к неявке из списка системных неявок.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>AbsenceType</code> - <a href="art--WTABELDOC_AbsenceTypes.htm">тип неявок</a>.</li>
    <li><code>AbsenceIndex</code> - индекс неявки в соответствующем списке неявок. Индексация с нуля.</li>
    <li><code>MapElementIndex</code> - индекс элемента карты распределения данной неявки. Индексация с нуля.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_AbsenceDayAt(AbsenceType: byte, AbsenceIndex: integer, MapElementIndex: integer): date; external #G_WorkTable;

//------------------------------------------------------------------------------
// ПРОЧИЕ ФУНКЦИИ ДЛЯ НЕЯВОК
//------------------------------------------------------------------------------
#doc
  <brief>Возвращает вид отображающейся в табеле системной неявки на заданную дату.</brief>
  <p>
    По сути данная функция анализирует не неявки (конечные данные),
    а системные отклонения (исходные данные), и возвращает именно тип системного
    отклонения, приходящегося на дату <code>OnDate</code> (терминология изложена <a href="art--WTABELDOC_AboutAbsences.htm">здесь</a>).
    По данной причине функция не зависит от того, был ли загружен список месячных неявок
    (<code><a href="exf--WT_LoadSystemAbsences.htm">WT_LoadSystemAbsences</a></code>),
    и её можно вызывать без загрузки системных неявок.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>OnDate</code> - дата, на которую запросить системную неявку</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Вид системного отклонения. Используются соотв. константы <a href="art--WTABELDOC_AbsenceKinds.htm">видов неявок</a>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_GetSystemAbsenceKindOnDate(OnDate: date): word; external #G_WorkTable;

#doc
  <brief>Возвращает количество часов месячных неявок с заданным значением некоторого атрибута.</brief>
  <p>
    Функция позволяет посчитать кол-во часов неявок не только за текущий период табеля,
    но и за другие периоды текущего ЛС (текущий ЛС задается предварительно во время загрузки табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>)).
    <a href="art--WTABELDOC_AboutFilters.htm">Поденный фильтр</a> при этом не учитывается.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Attribute</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
    <li><code>Value</code> - строковое представление значения соответствующего атрибута</li>
    <li><code>Beginning</code> - начальная дата диапазона</li>
    <li><code>Ending</code> - конечная дата диапазона</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Важно понимать, что хотя функция и работает формально только с месячными неявками, т.е.
    в пределах текущего месяца, но сам текущий месяц может меняться при выполнении данной функции (потом восстанавливается обратно).
    Так что фактически учитываются все неявки за указанный период вообще. О типах неявок (системные/месячные)
    <a href="art--WTABELDOC_AboutAbsences.htm">см. здесь</a>.
  </p>

  <h3>Замечание</h3>
  <p>
    Данная функция поддерживает ограниченный набор атрибутов неявок. Вот эти атрибуты:
  </p>
  <pre class=example>
    aaKind
    aaNotation
    aaPaymentCode
    aaMark
    aaStandardCode
    aaAbsenceCode
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_GetAbsencesHours(Attribute: word, Value: string, Beginning: date, Ending: date): double; external #G_WorkTable;

#doc
  <brief>Возвращает количество дней целодневных месячных неявок с заданным значением некоторого атрибута.</brief>
  <p>
    Функция позволяет посчитать кол-во дней неявок не только за текущий период табеля,
    но и за другие периоды текущего ЛС (текущий ЛС задается предварительно во время загрузки табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>)).
    <a href="art--WTABELDOC_AboutFilters.htm">Поденный фильтр</a> при этом не учитывается.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Attribute</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
    <li><code>Value</code> - строковое представление значения соответствующего атрибута</li>
    <li><code>Beginning</code> - начальная дата диапазона</li>
    <li><code>Ending</code> - конечная дата диапазона</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Важно понимать, что хотя функция и работает формально только с месячными неявками, т.е.
    в пределах текущего месяца, но сам текущий месяц может меняться при выполнении данной функции (потом восстанавливается обратно).
    Так что фактически учитываются все неявки за указанный период вообще. О типах неявок (системные/месячные)
    <a href="art--WTABELDOC_AboutAbsences.htm">см. здесь</a>.
  </p>

  <h3>Замечание</h3>
  <p>
    Данная функция поддерживает ограниченный набор атрибутов неявок. Вот эти атрибуты:
  </p>
  <pre class=example>
    aaKind
    aaNotation
    aaPaymentCode
    aaMark
    aaStandardCode
    aaAbsenceCode
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_GetAbsencesDays(Attribute: word, Value: string, Beginning: date, Ending: date): longint; external #G_WorkTable;

#doc
  <brief>Возвращает количество рабочих по плану дней целодневных месячных неявок с заданным значением некоторого атрибута.</brief>
  <p>
    Функция позволяет посчитать кол-во рабочих дней неявок не только за текущий период табеля,
    но и за другие периоды текущего ЛС (текущий ЛС задается предварительно во время загрузки табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>)).
    <a href="art--WTABELDOC_AboutFilters.htm">Поденный фильтр</a> при этом не учитывается.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Attribute</code> - <a href="art--WTABELDOC_AbsenceAttributes.htm">код атрибута неявки</a></li>
    <li><code>Value</code> - строковое представление значения соответствующего атрибута</li>
    <li><code>Beginning</code> - начальная дата диапазона</li>
    <li><code>Ending</code> - конечная дата диапазона</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Важно понимать, что хотя функция и работает формально только с месячными неявками, т.е.
    в пределах текущего месяца, но сам текущий месяц может меняться при выполнении данной функции (потом восстанавливается обратно).
    Так что фактически учитываются все неявки за указанный период вообще. О типах неявок (системные/месячные)
    <a href="art--WTABELDOC_AboutAbsences.htm">см. здесь</a>.
  </p>

  <h3>Замечание</h3>
  <p>
    Данная функция поддерживает ограниченный набор атрибутов неявок. Вот эти атрибуты:
  </p>
  <pre class=example>
    aaKind
    aaNotation
    aaPaymentCode
    aaMark
    aaStandardCode
    aaAbsenceCode
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutAbsences.htm">Общая информация о функциях для работы с неявками</a> <br />
#end
function WT_GetAbsencesWorkingDays(Attribute: word, Value: string, Beginning: date, Ending: date): longint; external #G_WorkTable;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// ФИЛЬТРАЦИЯ СИСТЕМНЫХ ОТКЛОНЕНИЙ
//------------------------------------------------------------------------------
#doc article WTABELDOC_AboutSystemVarianceFilters
  <brief>Фильтры по системным отклонениям</brief>
  <p>
    Фильтры по <a href="art--WTABELDOC_AboutAbsences.htm">системным отклонениям</a> - одна из возможностей табельного функционала,
    позволяющая формировать табель в памяти без учета некоторых исходных данных из БД.
    Данный фильтр задает отклонения, которые <b><i>не</i></b> будут учитываться
    при <a href="art--WTABELDOC_AboutDaysAndHours.htm">подсчете количества дней и часов</a>,
    при <a href="art--WTABELDOC_AboutAbsences.htm">формировании неявок</a> и др.
    Поддерживается возможность накладывать несколько фильтров по системным отклонениям.
  </p>
  <h3>Перечень функций для фильтров по системным отклонениям</h3>
  <code><a href="exf--WT_AddSystemVarianceFilter.htm">WT_AddSystemVarianceFilter</a></code> </br>
  <code><a href="exf--WT_DelSystemVarianceFilter.htm">WT_DelSystemVarianceFilter</a></code> </br>
  <code><a href="exf--WT_SystemVarianceFiltersSet.htm">WT_SystemVarianceFiltersSet</a></code> </br>
  <code><a href="exf--WT_ResetSystemVarianceFilters.htm">WT_ResetSystemVarianceFilters</a></code> </br>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end

#doc
  <brief>Сбросить все установленные фильтры по системным отклонениям.</brief>
  <p>
    Снимает все установленные фильтры по системным отклонениям.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutSystemVarianceFilters.htm">Фильтры по системным отклонениям</a> <br />
#end
procedure WT_ResetSystemVarianceFilters; external #G_WorkTable;

#doc
  <brief>Добавить фильтр по системному отклонению.</brief>
  <p>
    Добавить фильтр, блокирующий попадание некоторого <a href="art--WTABELDOC_AboutAbsences.htm">системного отклонения</a>
    во внутренние структуры табеля. Если <code>SourceRecord</code> равен <code>0</code>,
    блокируются все отклонения заданного типа.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Kind</code> - вид системного отклонения. Используются константы <a href="art--WTABELDOC_AbsenceKinds.htm">видов неявок</a>.</li>
    <li><code>SourceRecord</code> - номер записи соответствующей сущности в БД.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Поскольку функция предназначена для фильтрации системных отклонений,
    поддерживаются только те константы <a href="art--WTABELDOC_AbsenceKinds.htm">видов неявок</a>,
    которые могут использоваться для обозначения системных отклонений.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutSystemVarianceFilters.htm">Фильтры по системным отклонениям</a> <br />
#end
procedure WT_AddSystemVarianceFilter(Kind: word, SourceRecord: comp); external #G_WorkTable;

#doc
  <brief>Снять фильтр по системному отклонению.</brief>
  <p>
    Снять фильтр по <a href="art--WTABELDOC_AboutAbsences.htm">системному отклонению</a>,
    наложенный предварительно функцией <code><a href="exf--WT_AddSystemVarianceFilter.htm">WT_AddSystemVarianceFilter</a></code>.
    Смысл параметров тот же, что и для <code>WT_AddSystemVarianceFilter</code>.
    Если фильтра по системному отклонению с такими параметрами не было, то ничего не происходит.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Kind</code> - вид системного отклонения. Используются константы <a href="art--WTABELDOC_AbsenceKinds.htm">видов неявок</a>.</li>
    <li><code>SourceRecord</code> - номер записи соответствующей сущности в БД.</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutSystemVarianceFilters.htm">Фильтры по системным отклонениям</a> <br />
  <code><a href="exf--WT_AddSystemVarianceFilter.htm">WT_AddSystemVarianceFilter</a></code> <br />
#end
procedure WT_DelSystemVarianceFilter(Kind: word, SourceRecord: comp); external #G_WorkTable;

#doc
  <brief>Проверить наличие установленных фильтров по системным отклонениям</brief>
  <p>
    Возвращает <code>true</code>, если установлен хотя бы один фильтр по
    <a href="art--WTABELDOC_AboutAbsences.htm">системному отклонению</a>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutSystemVarianceFilters.htm">Фильтры по системным отклонениям</a> <br />
#end
function WT_SystemVarianceFiltersSet: boolean; external #G_WorkTable;

//------------------------------------------------------------------------------
// ПЕРЕХОДЯЩИЕ СМЕНЫ В ТАБЕЛЕ
//------------------------------------------------------------------------------
#doc article WTABELDOC_Shifts
  <brief>Переходящие рабочие смены в табеле</brief>
  <p>
    Табель предоставляет информацию о плановых и фактических переходящих сменах.
    Для работы с переходящими сменами в табеле используется функционал
    <link article z_calendar.chm|LDSAPI_About>цепочек дней</link>.
    Переходящая рабочая смена при этом описывается как некоторая связанность двух дней,
    последовательно идущих друг за другом.
  </p>
  <ul>
    <li>
      <b>Фактические переходящие смены</b> за текущий месяц табеля загружены всегда:
      для получения этих данных не требуется никаких дополнительных шагов, кроме
      загрузки табеля (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    </li>
    <li>
      <b>Плановые переходящие смены</b> по умолчанию не загружается, для их загрузки
      необходимо вызвать функцию <code><a href="exf--WT_LoadPlannedShifts.htm">WT_LoadPlannedShifts</a></code>.
    </li>
  </ul>
  <p>
    Цепочки дней, предоставляемые табелем, предназначены <b>только для чтения
    типов связанности дней</b> (функция
    <code><link externalFunction z_calendar.chm|LDS_GetDayKind>LDS_GetDayKind</link></code>).
    Ещё без проблем можно запрашивать количество дней в цепочке
    (<code><link externalFunction z_calendar.chm|LDS_GetCount>LDS_GetCount</link></code>).
    Остальные данные могут оказаться недонастроены (а могут быть и донастроены, здесь
    уже как повезёт, гарантий никаких не дается). Естественно, <b>недопустимо
    что-либо менять в этих цепочках, и тем более уничтожать их</b>.
    Эти цепочки относятся ко внутренним данным табеля, и прямое воздействие на них
    может привести к непредсказуемому поведению. Программно такие ситуации не отлавливаются,
    поэтому корректность использования табельных цепочек дней должна обеспечиваться
    прикладным разработчиком.
  </p>

  <h3>Функции для работы с переходящими сменами в табеле</h3>
  <code><a href="exf--WT_LoadPlannedShifts.htm">WT_LoadPlannedShifts</a></code> <br />
  <code><a href="exf--WT_PlannedShiftsLoaded.htm">WT_PlannedShiftsLoaded</a></code> <br />
  <code><a href="exf--WT_GetPlannedShifts.htm">WT_GetPlannedShifts</a></code> <br />
  <code><a href="exf--WT_GetActualShifts.htm">WT_GetActualShifts</a></code> <br />

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <link article z_calendar.chm|LDSAPI_About>Цепочки дней</link>
#end

#doc
  <brief>Загрузить переходящие смены по плану</brief>
  <p>
    Функция загружает плановые переходящие смены для текущего месяца табеля
    из графиков с учетом переходов в межпериод. После этого становится возможным обращение к
    <link article z_calendar.chm|LDSAPI_About>цепочке дней</link> плановых смен
    посредством <code><a href="exf--WT_GetPlannedShifts.htm">WT_GetPlannedShifts</a></code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает <code>0</code> в случае успешного выполнения, и ненулевое значение - в противном случае.
  </p>

  <h3>Примечание</h3>
  <p>
    В некоторых случаях (описание таких случаев не является предметом настоящей документации)
    плановые смены могут быть загружены сразу во время загрузки табеля
    (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Поэтому, для минимизации лишних действий вызывать данную функцию рекомендуется
    следующим образом:
  </p>
  <pre class="example">
    // Загрузим плановые переходящие смены, если не было загружено:
    if (not WT_PlannedShiftsLoaded)
      WT_LoadPlannedShifts;
  </pre>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_Shifts.htm">Переходящие рабочие смены в табеле</a> <br />
  <code><a href="exf--WT_PlannedShiftsLoaded.htm">WT_PlannedShiftsLoaded</a></code> <br />
#end
function WT_LoadPlannedShifts: integer; external #G_WorkTable;

#doc
  <brief>Загружены ли плановые переходящие смены</brief>
  <p>
    Возвращает <code>true</code>, если <link article z_calendar.chm|LDSAPI_About>цепочка дней</link>
    плановых переходящих смен табеля заполнена корректными данными, соответствующими
    текущему контексту. Иными словами, если производилась загрузка плановых переходящих смен,
    явно (вызовом <code><a href="exf--WT_LoadPlannedShifts.htm">WT_LoadPlannedShifts</a></code>)
    либо неявно (самим табельным функционалом).
  </p>
  <p>
    <code>true</code> означает, что можно безбоязненно обращаться к цепочке дней
    плановых переходящих смен (<code><a href="exf--WT_GetPlannedShifts.htm">WT_GetPlannedShifts</a></code>).
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_Shifts.htm">Переходящие рабочие смены в табеле</a> <br />
  <code><a href="exf--WT_LoadPlannedShifts.htm">WT_LoadPlannedShifts</a></code> <br />
#end
function WT_PlannedShiftsLoaded: boolean; external #G_WorkTable;

#doc
  <brief>Доступ к плановым переходящим рабочим сменам в табеле</brief>
  <p>
    Возвращает хэндл <link article z_calendar.chm|LDSAPI_About>цепочки дней</link>,
    соответствующей переходящим сменам по плану в текущем табеле.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>Примечание</h3>
  <p>
    Перед обращением к плановым переходящим сменам необходимо вызвать их загрузку,
    либо убедиться, что загрузка уже производилась. Лучше всего делать это
    следующим образом:
  </p>
  <pre class="example">
    // Загрузим плановые переходящие смены, если не было загружено:
    if (not WT_PlannedShiftsLoaded)
      WT_LoadPlannedShifts;

    // Работаем.
    // Были ли переходящие смены с 5-го числа либо на 5-е число:
    if (LDS_GetDayKind(WT_GetPlannedShifts, 5) &lt&gt ldkNone)
      ...
  </pre>

  <h3>Замечание</h3>
  <p>
    Полученный хэндл можно использовать только в двух функциях:
    <code><link externalFunction z_calendar.chm|LDS_GetDayKind>LDS_GetDayKind</link></code>
    и <code><link externalFunction z_calendar.chm|LDS_GetCount>LDS_GetCount</link></code>.
    Остальные атрибуты цепочки просто не донастраиваются.
  </p>
  <p>
    Также запрещено использовать функции изменения цепочки, так как это может
    испортить внутренние данные табеля.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_Shifts.htm">Переходящие рабочие смены в табеле</a> <br />
  <code><a href="exf--WT_LoadPlannedShifts.htm">WT_LoadPlannedShifts</a></code> <br />
  <code><a href="exf--WT_GetActualShifts.htm">WT_GetActualShifts</a></code> <br />
#end
function WT_GetPlannedShifts: longint; external #G_WorkTable;

#doc
  <brief>Доступ к фактическим переходящим рабочим сменам в табеле</brief>
  <p>
    Возвращает хэндл <link article z_calendar.chm|LDSAPI_About>цепочки дней</link>,
    соответствующей фактическим переходящим сменам в текущем табеле.
    В отличие от <a href="exf--WT_GetPlannedShifts.htm">плановых смен</a>,
    не требует никаких дополнительных действий для загрузки, достаточно
    просто иметь загруженный табель (<code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>)
    на момент вызова.
  </p>

  <h3>Замечание</h3>
  <p>
    Полученный хэндл можно использовать только в двух функциях:
    <code><link externalFunction z_calendar.chm|LDS_GetDayKind>LDS_GetDayKind</link></code>
    и <code><link externalFunction z_calendar.chm|LDS_GetCount>LDS_GetCount</link></code>.
    Остальные атрибуты цепочки просто не донастраиваются.
  </p>
  <p>
    Также запрещено использовать функции изменения цепочки, так как это может
    испортить внутренние данные табеля.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_Shifts.htm">Переходящие рабочие смены в табеле</a> <br />
  <code><a href="exf--WT_GetPlannedShifts.htm">WT_GetPlannedShifts</a></code> <br />
#end
function WT_GetActualShifts: longint; external #G_WorkTable;

//------------------------------------------------------------------------------
//                         ПРОЧИЕ ФУНКЦИИ ТАБЕЛЯ
//------------------------------------------------------------------------------
#doc article WTABELDOC_OtherFunctions
  <brief>Прочие функции табеля</brief>
  <p>
    Здесь приведен перечень функций, которые не имеют ярко выраженной принадлежности
    к той или иной группе табельных функций.
  </p>

  <code><a href="exf--FACTTM.htm">FACTTM</a></code> </br>
  <code><a href="exf--WT_AutoTotalHours.htm">WT_AutoTotalHours</a></code> </br>
  <code><a href="exf--WT_IsDayValid.htm">WT_IsDayValid</a></code> </br>
  <code><a href="exf--WT_IsDayUseless.htm">WT_IsDayUseless</a></code> </br>
  <code><a href="exf--WT_IsProtectedBwDates.htm">WT_IsProtectedBwDates</a></code> </br>
  <code><a href="exf--WT_IsVacationable.htm">WT_IsVacationable</a></code> </br>
  <code><a href="exf--WT_GetChangeAffectingPersonalAccountState.htm">WT_GetChangeAffectingPersonalAccountState</a></code> </br>
  <code><a href="exf--WT_GetInsalubrityCode.htm">WT_GetInsalubrityCode</a></code> </br>
  <code><a href="exf--WT_GetPenStajInsalubrity.htm">WT_GetPenStajInsalubrity</a></code> </br>
  <code><a href="exf--WT_GetOverworkCalculationMethod.htm">WT_GetOverworkCalculationMethod</a></code> </br>
  <code><a href="exf--WT_DGetOverworkCalculationMethod.htm">WT_DGetOverworkCalculationMethod</a></code> </br>
  <code><a href="exf--WT_GetPayRollAvgFactor.htm">WT_GetPayRollAvgFactor</a></code> </br>
  <code><a href="exf--WT_GetPayRollAvgFactorAsIs.htm">WT_GetPayRollAvgFactorAsIs</a></code> </br>
  <code><a href="exf--WT_GetPayRollAvgFactorDate.htm">WT_GetPayRollAvgFactorDate</a></code> </br>
  <code><a href="exf--WT_GetSpecialTaxationTreatment.htm">WT_GetSpecialTaxationTreatment</a></code> </br>
  <code><a href="exf--WT_PopContext.htm">WT_PopContext</a></code> </br>
  <code><a href="exf--WT_PushContext.htm">WT_PushContext</a></code> </br>
  <code><a href="exf--WT_SplitTotalHours.htm">WT_SplitTotalHours</a></code> </br>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end

//------------------------------------------------------------------------------
// ПРОЧИЕ ФУНКЦИИ

#doc
  <brief>
    Проверяет, попадает ли день в границы периода, в течение которого сотрудник числится принятым на работу,
    и в границы месяца, табель которого загружен в данный момент.
  </brief>
  <p>
    В зависимости от параметра <code>MonthBounds</code> проверяет, попадает ли день <code>Day</code>
    в период работы сотрудника <b>и</b> в границы текущего месяца, или же только в границы текущего месяца.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
    <li><code>MonthBounds</code> - <code>true</code>, если надо проверять только попадание в границы месяца</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_IsDayValid(Day: byte, MonthBounds: boolean): boolean; external #G_WorkTable;

#doc
  <brief>
    Проверяет, приходится ли день на период больничного, отпуска, до даты приёма на работу, после даты
    увольнения или целиком занят табельным отклонением.
  </brief>
  <p>
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p><p>
    Возвращает <code>true</code>, если день <code>Day</code> приходится на период больничного, отпуска, до
    даты приема на работу, после даты увольнения, или целиком занят табельным отклонением. В противном случае
    возвращает <code>false</code>.</p>
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_IsDayUseless(Day: byte): boolean; external #G_WorkTable;
//------------------------------------------------------------------------------

#doc
  <brief>Проверка защищенности табеля за период</brief>
  <p>
    Функция определяет, пересекается ли указанный диапазон дней
    с периодом защищенных от переформирования табелей.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Beginning</code> - начало диапазона дней</li>
    <li><code>Ending</code> - окончание диапазона дней</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает <code>true</code> в случае выполнения любого из следующих двух условий:
  </p>
  <ul>
    <li>
      Если переданный диапазон дней пересекается с периодом,
      заданным настройкой "Окончание диапазона защиты табелей от обновления"
    </li>
    <li>
      Если одновременно включены настройки "Защитить проверенные табели от обновления"
      и "Защитить проверенные табели от модификации", и при этом
      есть проверенный табель за хотя бы один из месяцев, затронутых указанным интервалом дат.
    </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_IsProtectedBwDates(Beginning: date, Ending: date): boolean; external #G_WorkTable;

#doc
  <brief>Возвращает код способа учета сверхурочных работ на день <code>Day</code>.</brief>
  <p>
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день текущего месяца табеля.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Возможные значения возвращаемого значения изложены ниже:
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>ocmDefault</code></td> <td><code>0</code></td> <td>не определен</td> </tr>
    <tr> <td><code>ocmDaily</code></td>   <td><code>1</code></td> <td>поденный</td> </tr>
    <tr> <td><code>ocmSummed</code></td>  <td><code>2</code></td> <td>суммированный</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_DGetOverworkCalculationMethod.htm">WT_DGetOverworkCalculationMethod</a></code> </br>
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
#end
function WT_GetOverworkCalculationMethod(Day: byte): byte; external #G_WorkTable;

#doc
  <brief>Возвращает код способа учета сверхурочных работ на дату <code>D</code>.</brief>
  <p>
    Текущий лицевой счёт задается предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
    Если дата, на которую запрашивается значение, находится за пределами текущего
    месяца табеля, происходит загрузка табеля за нужный месяц с последующим возвратом
    обратно к текущему месяцу.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>D</code> - дата, на которую нужно получить код учета сверхурочных.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Возможные значения возвращаемого значения изложены ниже:
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>ocmDefault</code></td> <td><code>0</code></td> <td>не определен</td> </tr>
    <tr> <td><code>ocmDaily</code></td>   <td><code>1</code></td> <td>поденный</td> </tr>
    <tr> <td><code>ocmSummed</code></td>  <td><code>2</code></td> <td>суммированный</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetOverworkCalculationMethod.htm">WT_GetOverworkCalculationMethod</a></code> </br>
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
#end
function WT_DGetOverworkCalculationMethod(D: date): byte; external #G_WorkTable;

#doc
  <brief>
    Возвращает <code>nRec</code> перехода, влияющего на состояние лицевого счета в месяце, дата начала
    которого задана параметром <code>NextMonthBeginning</code>.
  </brief>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
  </p>
  <p>
    Переходом, "влияющем на состояние лицевого счета", считается переход без даты окончания, у которого
    дата начала меньше либо равна переданной дате <code>NextMonthBeginning</code>, и который
    начинается ближе всего к этой дате. С появлением полупрозрачных и пересекающихся переходов
    (начало 2011 г.) данная функция утратила смысл, т.к. теперь в общем случае на состояние
    лицевого счета в новом периоде влияет множество переходов, и каждый из них привносит свои
    отдельные изменения.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>NextMonthBeginning</code> - дата, до которой (включительно) искать подобный переход</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Для архивного периода работать не будет, так как у всех архивных переходов дата окончания
    заполнена.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <a href="art--WTABELDOC_InformationalFunctions.htm">Информационные функции табеля</a> <br />
#end
function WT_GetChangeAffectingPersonalAccountState(NextMonthBeginning: date): comp; external #G_WorkTable;

// По какому-то нечеловеческому недоразумению попавшая сюда:
#doc
  <brief>Разделить часы на сверх нормы и в пределах нормы</brief>
  <p>
    <font color="red"><b>Функция не экспортируется из DLL!</b></font> Здесь прописана ошибочно.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
procedure WT_SplitHours(byte, date, date, var double, var double); external #G_WorkTable;

#doc
  <brief>Сохранить текущий контекст в стеке.</brief>
  <p>
    Под контекстом табеля понимаются параметры, с которыми он был загружен
    функцией <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>,
    содержимое <a href="art--WTABELDOC_AboutFilters.htm">поденного фильтра табеля</a> и т.п.
    С помощью данной функции можно сохранить текущий контекст табеля, даже если он
    заранее неизвестен. После этого можно подгружать табель для других периодов,
    для других лицевых счетов, и т.д.
  </p>
  <p>
    Для восстановления прежнего контекста (для загрузки табеля с теми же параметрами,
    с которыми он был загружен на момент последнего вызова <code>PushContext</code>)
    следует вызвать <code><a href="exf--WT_PopContext.htm">WT_PopContext</a></code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
procedure WT_PushContext; external #G_WorkTable;

#doc
  <brief>Восстановить контекст из стека.</brief>
  <p>
    Под контекстом табеля понимаются параметры, с которыми он был загружен
    функцией <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>,
    содержимое <a href="art--WTABELDOC_AboutFilters.htm">поденного фильтра табеля</a> и т.п.
    С помощью данной функции можно восстановить сохраненный функцией
    <code><a href="exf--WT_PushContext.htm">WT_PushContext</a></code>
    контекст табеля (вернуться к прежним параметрам).
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
procedure WT_PopContext; external #G_WorkTable;

#doc
  <brief>По методу расчета отпуска определяет, подходит ли указанная дата для пометки дня таким отпуском.</brief>
  <p>По методу расчета отпуска определяет, подходит ли указанная дата для пометки дня таким отпуском.</p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Data</code> - дата, которую проверяем</li>
    <li><code>Method</code> - метод расчета отпуска</li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_IsVacationable(Data: Date, Method: word): boolean; external #G_WorkTable;

// Следующая функция слишком кривая, чтобы помещать её описание в функции расчета кол-ва часов.
// Пусть валяется в прочих.
#doc
  <brief>Получить количество часов по указанному табелю за некоторый месяц и год.</brief>
  <p>
    Текущий лицевой счёт задается предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Month</code> - месяц</li>
    <li><code>Year</code> - год</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
    Возвращает количество часов вида <a href="art--WTABELDOC_HourKinds.htm"><code>hkWorking</code></a>
    за заданный месяц заданного года.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetHoursBwDates.htm">WT_GetHoursBwDates</a></code> (<code><a href="exf--WT_GetHoursBwDatesEx.htm">WT_GetHoursBwDatesEx</a></code>) <br />
#end
function FACTTM(Month: word, Year: word): double; external #G_WorkTable;

#doc
  <brief>Вычисляется ли итоговое количество часов заданного вида автоматически.</brief>
  <p>
    Определяет, вычисляется ли количество часов некоторого вида автоматически согласно настройкам.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>HourKind</code> - <a href="art--WTABELDOC_HourKinds.htm">вид часов</a> </li>
  </ul>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_AutoTotalHours(HourKind: byte): boolean; external #G_WorkTable;

#doc
  <brief>Отдельные ли итоги для каждого периода.</brief>
  <p>
    Разбиваются ли итоги по переходам согласно настройкам.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_SplitTotalHours: boolean; external #G_WorkTable;

#doc
  <brief>Возвращает значение коэффициента среднесписочной численности.</brief>
  <p>
  	Если значение превышает <code>1</code> или меньше нуля, возвращается <code>1</code>.
    Текущий лицевой счёт, месяц и год табеля задаются предварительно во время загрузки табеля
    (см. <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetPayRollAvgFactorAsIs.htm">WT_GetPayRollAvgFactorAsIs</a></code> <br />
  <code><a href="exf--WT_GetPayRollAvgFactorDate.htm">WT_GetPayRollAvgFactorDate</a></code> <br />
#end
function WT_GetPayRollAvgFactor: double; external #G_WorkTable;

#doc
  <brief>Возвращает абсолютное значение коэффициента среднесписочной численности.</brief>
  <p>
    Отличается от <code><a href="exf--WT_GetPayRollAvgFactor.htm">WT_GetPayRollAvgFactor</a></code>
    только тем, что не проверяет на попадание в диапазон допустимых значений от <code>0</code> до <code>1</code>.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetPayRollAvgFactorDate.htm">WT_GetPayRollAvgFactorDate</a></code> <br />
#end
function WT_GetPayRollAvgFactorAsIs: double; external #G_WorkTable;

#doc
  <brief>Дата изменения значения коэффициента среднесписочной численности.</brief>
  <p>Возвращает дату изменения значения коэффициента среднесписочной численности.</p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetPayRollAvgFactor.htm">WT_GetPayRollAvgFactor</a></code>  <br />
  <code><a href="exf--WT_GetPayRollAvgFactorAsIs.htm">WT_GetPayRollAvgFactorAsIs</a></code> <br />
#end
function WT_GetPayRollAvgFactorDate: date; external #G_WorkTable;

#doc
  <brief>Возвращает значение признака "Специальный режим налогообложения".</brief>
  <p>Функция возвращает значение признака "Специальный режим налогообложения".</p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
#end
function WT_GetSpecialTaxationTreatment: double; external #G_WorkTable;

//------------------------------------------------------------------------------
#doc
  <brief>Возвращает код вредности на заданный день текущего месяца табеля.</brief>
  <p>
    Функция возвращает <a href="#InsalubrityCodes">код вредности</a> на день <code>Day</code>
    текущего месяца табеля. Текущий лицевой счет, год и месяц табеля задаются предварительно
    при загрузке табеля (функция <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который необходимо получить код вредности</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
    Код вредности на заданный день
  </p>
  <a name="InsalubrityCodes"><h2>Коды вредности</h2></a>
  <p>
    Код вредности характеризует, какие условия работы были у человека в тот или иной день
  </p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>icOrdinary</code></td>     <td><code>0</code></td> <td>Обычные условия труда</td> </tr>
    <tr> <td><code>icExtraHarmful</code></td> <td><code>1</code></td> <td>Особо вредные условия труда по Списку 1</td> </tr>
    <tr> <td><code>icHarmful</code></td>      <td><code>2</code></td> <td>Вредные условия труда по Списку 2</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetInsalubrity.htm">WT_GetInsalubrity</a></code> <br />
#end
function WT_GetInsalubrityCode(Day: byte): word; external #G_WorkTable;

#doc
  <brief>Ссылка на ADVISES для расчета пенсионного стажа</brief>
  <p>
    <b><font color="red">Устаревшая функция.</font></b>
  </p>
  <p>
    Возвращает ссылку на условия труда на рабочем месте (таблица ADVISES)
    на день <code>Day</code> из лицевого счета с учетом переходов в межпериод.
    Если условия труда у работника в этот день обычные
    (<code><a href="exf--WT_GetInsalubrityCode.htm">WT_GetInsalubrityCode</a> = icOrdinary</code>),
    возвращает <code>0</code>. Текущий лицевой счет, год и месяц табеля задаются предварительно
    при загрузке табеля (функция <code><a href="exf--LoadWorkingTable.htm">LoadWorkingTable</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>Day</code> - день, на который необходимо получить ссылку на ADVISES</li>
  </ul>

  <h3>Примечание</h3>
  <p>
    Функция экспериментальная, ни разу не использовалась (09.2016). Разработана только для России.
    Реализация не актуализировалась с декабря 2013.
  </p>

  <h3>См. также</h3>
  <a href="art--WTABELDOC_AboutWT.htm">Табель учета рабочего времени</a> <br />
  <code><a href="exf--WT_GetInsalubrity.htm">WT_GetInsalubrity</a></code> <br />
#end
function WT_GetPenStajInsalubrity(Day: byte): comp; external #G_WorkTable;
//------------------------------------------------------------------------------
