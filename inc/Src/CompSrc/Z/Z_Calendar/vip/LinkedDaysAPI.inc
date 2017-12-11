//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1 - Заработная плата
// Функции для работы с цепочками дней
//------------------------------------------------------------------------------

#define G_ZARCACHE 'G_ZARCACHE.DLL'

#doc article LDSAPI_About
  <brief>Цепочки дней</brief>
  <p>
    Функционал работы с цепочками дней служит для описания рабочих смен,
    переходящих на следующие сутки, в модуле Заработная плата. Такие смены
    представляются как связанность двух последовательно идущих дней друг с другом.
  </p><p>
    Функционал позволяет решать следующие задачи:
  </p>
  <ul>
    <li><b>Удобное представление данных</b> - исходные данные о связанности дней,
    хранящиеся в виде битовой маски, представляются в виде типов связанности дней
    по дням месяца. В таком виде позволяется редактировать связанность дней,
    и сохранять измененные данные обратно в битовую маску.</li>
    <li><b>Контроль целостности данных</b> - позволяет автоматически менять
    данные о связанности дней в следующем или предыдущем месяце работы,
    в случае изменения типа связанности крайних дней текущего месяца.
    Таким образом, смену, переходящую на следующий месяц, достаточно ввести
    только в одном месяце, а в соседнем она появится автоматически.
    Само собой, аналогичная обработка с изменением типа связанности соседних дней
    происходит и в рамках одного месяца.</li>
    <li><b>Контроль рабочих дней</b> - обеспечивает связывание рабочими сменами
    только рабочих дней, и не позволяет связывать выходной день с рабочим или выходной
    с выходным.</li>
    <li><b>Отслеживание изменений</b> - позволяет обнаружить изменение данных
    о связанности дней, в том числе для тех случаев, когда изменение происходит
    неявно.</li>
    <li><b>Исправление ошибок</b> - если по каким-либо причинам данные
    о рабочих днях и о связанности дней сменами были рассинхронизированы,
    позволяет автоматически привести данные о связанности дней к корректному виду.</li>
  </ul>
  <p>
    Функции для работы с цепочками дней (за исключением функций создания и уничтожения)
    начинаются с префикса LDS_ (Linked Days Sequence). Обращение к тому или иному
    экземпляру цепочки дней происходит по хэндлу типа <code>longint</code>,
    который выдается при создании цепочки (<code><a href="exf--CreateLDS.htm">CreateLDS</a></code>).
    Нормальный рабочий хэндл всегда ненулевой, поэтому нулевые значения можно использовать
    для описания недействительных хэндлов. Хэндлы глобальны для приложения
    (для трёхуровневой архитектуры: для одного пользователя).
    По окончании работы с экземпляром цепочки следует уничтожить её, вызвав функцию
    <code><a href="exf--DestroyLDS.htm">DestroyLDS</a></code>.
    Ниже представлен перечень функций для работы с цепочками дней
  </p>
  <p>
    Создание, уничтожение
  </p>
  <code><a href="exf--CreateLDS.htm">CreateLDS</a></code> <br />
  <code><a href="exf--DestroyLDS.htm">DestroyLDS</a></code> <br />
  <p>
    Функции предварительной настройки. Не требуют согласованности данных для своей работы.
  </p>
  <code><a href="exf--LDS_GetCount.htm">LDS_GetCount</a></code> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
  <code><a href="exf--LDS_Insert.htm">LDS_Insert</a></code> <br />
  <code><a href="exf--LDS_Remove.htm">LDS_Remove</a></code> <br />
  <code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a></code> <br />
  <code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code> <br />
  <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code> <br />
  <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code> <br />
  <code><a href="exf--LDS_UnlinkNext.htm">LDS_UnlinkNext</a></code> <br />
  <code><a href="exf--LDS_UnlinkPrevious.htm">LDS_UnlinkPrevious</a></code> <br />
  <p>
    Основные функции. Для корректной работы требуют, чтобы данные находились в согласованном
    состоянии.
  </p>
  <code><a href="exf--LDS_GetDayKind.htm">LDS_GetDayKind</a></code> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
  <code><a href="exf--LDS_CanSetDayKind.htm">LDS_CanSetDayKind</a></code> <br />
  <code><a href="exf--LDS_Glue.htm">LDS_Glue</a></code> <br />
  <code><a href="exf--LDS_CanGlue.htm">LDS_CanGlue</a></code> <br />
  <code><a href="exf--LDS_Split.htm">LDS_Split</a></code> <br />
  <code><a href="exf--LDS_CanSplit.htm">LDS_CanSplit</a></code> <br />
  <p>
    Прочие функции
  </p>
  <code><a href="exf--LDS_IsModified.htm">LDS_IsModified</a></code> <br />
  <code><a href="exf--LDS_SetModified.htm">LDS_SetModified</a></code> <br />
  <code><a href="exf--LDS_LoadFromMask.htm">LDS_LoadFromMask</a></code> <br />
  <code><a href="exf--LDS_StoreToMask.htm">LDS_StoreToMask</a></code> <br />
  <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code> <br />

  <h3>Примеры</h3>
  <p>
    В самом простом случае, если мы предполагаем, что хранящиеся в БД данные
    заведомо корректны, и мы не собираемся ничего менять, для работы понадобится
    совсем немного функций (при условии, что другие функции использоваться не будут):
  </p>
  <pre class=example>
    var OperatingMode: word;
    var aMonth, aYear: integer;
    var hLDS: longint;
    ...
    hLDS := CreateLDS; // создали цепочку
    ...
    // Дёргаем график работ за нужный нам месяц
    if (getfirst KLNDR where ((
                               OperatingMode == KLNDR.REJIM
                               and aYear     == KLNDR.YEARK
                               and aMonth    == KLNDR.MONTHK
                             )) = tsOk)
    {
      // Установим кол-во дней
      LDS_SetCount(hLDS, Last_Day(Date(1, aMonth, aYear)));
      // Загружаем данные о связанности дней рабочими сменами друг с другом
      LDS_LoadFromMask(hLDS, KLNDR.FILIALNO);
      // Теперь можно узнавать типы связанности дней
      ...
      // Приходится ли на 15-е число рабочая смена, переходящая
      // на следующие сутки, либо с предыдущих суток:
      if (LDS_GetDayKind(hLDS, 15) <> ldkNone)
        ...
    }
    ...
    DestroyLDS(hLDS); // освободили память
  </pre>

  <p>
    Если же требуется обеспечить корректное изменение данных, необходимо задействовать
    весь арсенал функций. Пример показывает настройку цепочек для возможности изменения
    связанности дней в некотором месяце.
  </p>
  <pre class=example>
    var MonthPrev, YearPrev, MonthCur, YearCur, MonthNext, YearNext: integer;
    var OperatingMode: word;
    // Цепочки дней предыдущего месяца, текущего, следующего
    var hLDSPrev, hLDSCur, hLDSNext: longint;

    ...

    procedure Init; // вызвать перед началом работы с цепочками
    {
      // Создаем цепочки
      hLDSPrev := CreateLDS;
      hLDSCur  := CreateLDS;
      hLDSNext := CreateLDS;
      // Привязываем крайние к центральной
      LDS_LinkNext(hLDSCur, hLDSNext);
      LDS_LinkPrevious(hLDSCur, hLDSPrev);
    }

    ...

    // Для загрузки необходимой информации из графика работы
    procedure LoadFromKLNDR(hLDS: longint; OperatingMode: word; aMonth, aYear: integer);
    {
      if (getfirst KLNDR where ((OperatingMode == KLNDR.REJIM
                                 and aMonth    == KLNDR.MONTHK
                                 and aYear     == KLNDR.YEARK)) = tsOk)
      {
        // Установим количество дней, соответственно месяцу
        LDS_SetCount(hLDS, Last_Day(Date(1, aMonth, aYear)));
        // Загрузим данные о связанности дней
        LDS_LoadFromMask(hLDS, KLNDR.FILIALNO);
        // Укажем, какие дни могут участвовать в связях с соседними
        var i: integer;
        for (i := 1; i <= LDS_GetCount(hLDS); i++)
          LDS_SetDayLinkable(hLDS, i, KLNDR.DAYCHAS[i] + KLNDR.DAYMIN[i] / 60 > 0.0);
      }
      else
      {
        // По умолчанию будем считать, что все дни могут участвовать в связях,
        // и ни один день не связан с соседними. Самый лёгкий способ добиться этого -
        // "пожевать" цепочку дней:
        LDS_SetCount(hLDS, 0);
        LDS_SetCount(hLDS, Last_Day(Date(1, aMonth, aYear)));
      }
    }

    // Сохраняет данные о связанности дней в графиках работы в случае наличия изменений
    procedure SaveToKLNDR(hLDS: longint; OperatingMode: word; aMonth, aYear: integer);
    {
      if (LDS_IsModified(hLDS))
      {
        var mask: longint;
        LDS_StoreToMask(hLDS, mask);

        if (update KLNDR where ((OperatingMode == KLNDR.REJIM
                                 and aMonth    == KLNDR.MONTHK
                                 and aYear     == KLNDR.YEARK))
                         set KLNDR.FILIALNO := mask) <> tsOk {}
      }
    }

    // Основная процедура: настраивает цепочки для редактирования связанности дней
    // месяца MonthCur, производит редактирование, сохраняет изменения
    procedure Example;
    {
      // Сбрасываем признаки модификации
      LDS_SetModified(hLDSPrev, false);
      LDS_SetModified(hLDSCur, false);
      LDS_SetModified(hLDSNext, false);

      // Загрузим данные о связанности дней и о том, являются ли дни рабочими
      LoadFromKLNDR(hLDSPrev, OperatingMode, MonthPrev, YearPrev);
      LoadFromKLNDR(hLDSCur, OperatingMode, MonthCur, YearCur);
      LoadFromKLNDR(hLDSNext, OperatingMode, MonthNext, YearNext);
      // Теперь "открываем глаза":
      LDS_Refresh(hLDSPrev);
      LDS_Refresh(hLDSNext);
      LDS_Refresh(hLDSCur); // в последнюю очередь, т.к. исправление ошибок в hLDSCur
      // может повлиять на привязанные цепочки hLDSPrev и hLDSNext.

      // После чего можно использовать функции записи в hLDSCur.

      ...

      // Cделать смену, переходящую с 8 на 9 число:
      LDS_SetDayKind(hLDSCur, 8, ldkFirstDay);
      // Другие способы:
      // LDS_SetDayKind(hLDSCur, 9, ldkLastDay);
      // LDS_Glue(hLDSCur, 8);

      ...

      // По окончании работы сохранить измененные данные
      SaveToKLNDR(hLDSPrev, OperatingMode, MonthPrev, YearPrev);
      SaveToKLNDR(hLDSCur, OperatingMode, MonthCur, YearCur);
      SaveToKLNDR(hLDSNext, OperatingMode, MonthNext, YearNext);
    }

    ...

    procedure Done; // вызвать по окончании работ с цепочками
    {
      // Освобождаем память
      DestroyLDS(hLDSPrev);
      DestroyLDS(hLDSCur);
      DestroyLDS(hLDSNext);
    }

    ...

  </pre>

  <h3>См. также</h3>
  <a href="art--LDSAPI_DayKinds.htm">Типы связанности дней</a> <br />
#end

#doc article LDSAPI_DayKinds
  <brief>Типы связанности дней</brief>
  <p>Ниже представлены константы, описывающие связанность дней</p>
  <table>
    <tr> <td>Константа</td> <td>Значение</td> <td>Описание</td> </tr>
    <tr> <td><code>ldkNone</code></td>      <td><code>0</code></td>  <td>отсутствуют смены, переходящие на соседние сутки</td> </tr>
    <tr> <td><code>ldkFirstDay</code></td>  <td><code>1</code></td>  <td>первый день смены: смена начинается в этот день, заканчивается в следующем</td> </tr>
    <tr> <td><code>ldkLastDay</code></td>   <td><code>2</code></td>  <td>второй день смены: смена началась за день до этого дня, закончилась в этот день</td> </tr>
    <tr> <td><code>ldkTwoShifts</code></td> <td><code>3</code></td>  <td>две смены в течение одних суток: одна перешла с прошлых суток, другая перейдёт на следующие</td> </tr>
  </table>

  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_GetDayKind.htm">LDS_GetDayKind</a></code> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
#end

#doc
  <brief>Создать экземпляр цепочки дней</brief>
  <p>
    Создается пустая цепочка, содержащая <code>0</code> (ноль) дней,
    и со сброшенным <a href="exf--LDS_IsModified.htm">признаком модификации</a>.
  </p>
  <h3>Возвращаемое значение</h3>
  <p>
    Хэндл созданной цепочки.
  </p>
  <h3>Замечание</h3>
  <p>
    Полученное значение необходимо сохранить для последующего
    <a href="exf--DestroyLDS.htm">уничтожения цепочки</a>, иначе получится утечка памяти.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--DestroyLDS.htm">DestroyLDS</a></code> <br />
#end

function CreateLDS: longint; external #G_ZARCACHE;

#doc
  <brief>Уничтожить цепочку дней</brief>
  <p>
    Уничтожает цепочку дней
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
  </ul>
  <h3>Возвращаемое значение</h3>
  <p>
    Существовала ли цепочка с таким хэндлом
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--CreateLDS.htm">CreateLDS</a></code> <br />
#end
function DestroyLDS(objId: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Возвращает количество дней в цепочке</brief>
  <p>
    Возвращает количество дней в цепочке
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
  </ul>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
#end
function LDS_GetCount(objId: longint): longint; external #G_ZARCACHE;

#doc
  <brief>Установить количество дней в цепочке</brief>
  <p>
    Устанавливает количество дней в цепочке.
    <a href="exf--LDS_IsModified.htm">Признак модификации</a> не взводится.
    Если происходит увеличение количества дней, то добавленные дни по умолчанию
    имеют <a href="art--LDSAPI_DayKinds.htm">тип</a> <code>ldkNone</code>,
    и считаются разрешенными для связывания
    (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = true</code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>value</code> - новое количество дней в цепочке</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данное действие может нарушить согласованность данных, поэтому по окончании манипуляций
    необходимо вызвать <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_GetCount.htm">LDS_GetCount</a></code> <br />
  <code><a href="exf--LDS_Insert.htm">LDS_Insert</a></code> <br />
  <code><a href="exf--LDS_Remove.htm">LDS_Remove</a></code> <br />
#end
procedure LDS_SetCount(objId: longint, value: longint); external #G_ZARCACHE;

#doc
  <brief>Вставить дни в цепочку</brief>
  <p>
    Вставляет <code>daysCount</code> новых дней в цепочку <code>objId</code>,
    в позицию перед днём под номером <code>beforeDay</code>.
    <a href="exf--LDS_IsModified.htm">Признак модификации</a> не взводится.
    Добавленные дни по умолчанию имеют <a href="art--LDSAPI_DayKinds.htm">тип</a>
    <code>ldkNone</code>, и считаются разрешенными для связывания
    (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = true</code>).
  </p><p>
    Для вставки дней в конец цепочки следует передать значение, равное
    <code>(<a href="exf--LDS_GetCount.htm">LDS_GetCount</a> + 1)</code>
    в параметре <code>beforeDay</code>. Или использовать функцию
    <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code>,
    которая по сути сделает то же самое.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>beforeDay</code> - день, перед которым вставить. Дни нумеруются с единицы.</li>
    <li><code>daysCount</code> - сколько дней вставить</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данное действие может нарушить согласованность данных, поэтому по окончании манипуляций
    необходимо вызвать <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_Remove.htm">LDS_Remove</a></code> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
#end
procedure LDS_Insert(objId: longint, beforeDay: longint, daysCount: longint); external #G_ZARCACHE;

#doc
  <brief>Исключить дни из цепочки</brief>
  <p>
    Удаляет из цепочки <code>objId</code> <code>daysCount</code> дней,
    начиная с дня <code>firstDay</code>.
    <a href="exf--LDS_IsModified.htm">Признак модификации</a> не взводится.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>firstDay</code> - день, начиная с которого удалить. Дни нумеруются с единицы</li>
    <li><code>daysCount</code> - сколько дней удалить</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данное действие может нарушить согласованность данных, поэтому по окончании манипуляций
    необходимо вызвать <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_Insert.htm">LDS_Insert</a></code> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
#end
procedure LDS_Remove(objId: longint, firstDay: longint, daysCount: longint); external #G_ZARCACHE;

#doc
  <brief>Может ли день участвовать в связи</brief>
  <p>
    Возвращает <code>true</code>, если день <code>day</code> цепочки
    был помечен, как могущий участвовать в связи (то есть, является рабочим днём),
    <code>false</code> в противном случае. По умолчанию, если с помощью
    <code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code>
    не было задано обратное, все дни цепочки могут участвовать в связи.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>day</code> - номер дня цепочки. Дни нумеруются с единицы.</li>
  </ul>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code> <br />
#end
function LDS_IsDayLinkable(objId: longint, day: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Установить, может ли день участвовать в связи</brief>
  <p>
    Позволяет задать, может ли тот или иной день цепочки связываться рабочими сменами
    с соседними днями; иными словами, является ли день рабочим.
    <a href="exf--LDS_IsModified.htm">Признак модификации</a> не взводится.
    По умолчанию все дни цепочки считаются рабочими.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>day</code> - номер дня цепочки. Дни нумеруются с единицы.</li>
    <li><code>value</code> - <code>true</code>, если данному дню разрешается
    иметь переходящие рабочие смены; <code>false</code>, если запрещается.</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Данное действие может нарушить согласованность данных, поэтому по окончании манипуляций
    необходимо вызвать <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a></code> <br />
#end
procedure LDS_SetDayLinkable(objId: longint, day: longint, value: boolean); external #G_ZARCACHE;

#doc
  <brief>Присоединить последующую цепочку дней</brief>
  <p>
    Присоединяет к цепочке <code>objId</code> цепочку <code>idNext</code> в качестве
    последующей. При этом последующая цепочка к исходной не привязывается.
    Связь цепочки с соседними необходима для поддержания целостности данных.
    Можно зацикливать цепочку саму на себя.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл исходной цепочки</li>
    <li><code>idNext</code> - хэндл последующей цепочки</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    При стыковке может нарушиться согласованность крайних дней,
    поэтому по окончании манипуляций нужно вызвать
    <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code> <br />
  <code><a href="exf--LDS_UnlinkNext.htm">LDS_UnlinkNext</a></code> <br />
#end
procedure LDS_LinkNext(objId: longint, idNext: longint); external #G_ZARCACHE;

#doc
  <brief>Присоединить предшествующую цепочку дней</brief>
  <p>
    Присоединяет к цепочке <code>objId</code> цепочку <code>idPrevious</code> в качестве
    предшествующей. При этом предшествующая цепочка к исходной не привязывается.
    Связь цепочки с соседними необходима для поддержания целостности данных.
    Можно зацикливать цепочку саму на себя.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл исходной цепочки</li>
    <li><code>idPrevious</code> -  хэндл предшествующей цепочки</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    При стыковке может нарушиться согласованность крайних дней,
    поэтому по окончании манипуляций нужно вызвать
    <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code> <br />
  <code><a href="exf--LDS_UnlinkPrevious.htm">LDS_UnlinkPrevious</a></code> <br />
#end
procedure LDS_LinkPrevious(objId: longint, idPrevious: longint); external #G_ZARCACHE;

#doc
  <brief>Отсоединить последующую цепочку дней</brief>
  <p>
    Отсоединяет от цепочки <code>objId</code> последующую цепочку, если таковая
    была присоединена. Не отсоединяет при этом саму цепочку <code>objId</code>
    от последующей.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
  </ul>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_UnlinkPrevious.htm">LDS_UnlinkPrevious</a></code> <br />
  <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code> <br />
#end
procedure LDS_UnlinkNext(objId: longint); external #G_ZARCACHE;

#doc
  <brief>Отсоединить предшествующую цепочку дней</brief>
  <p>
    Отсоединяет от цепочки <code>objId</code> предшествующую цепочку, если таковая
    была присоединена. Не отсоединяет при этом саму цепочку <code>objId</code>
    от предшествующей.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
  </ul>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_UnlinkNext.htm">LDS_UnlinkNext</a></code> <br />
  <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code> <br />
#end
procedure LDS_UnlinkPrevious(objId: longint); external #G_ZARCACHE;

#doc
  <brief>Получить тип связанности дня</brief>
  <p>
    Возвращает <a href="art--LDSAPI_DayKinds.htm">тип связанности дня</a>
    <code>day</code> цепочки <code>objId</code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>day</code> - номер дня цепочки. Дни нумеруются с единицы.</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
#end
function LDS_GetDayKind(objId: longint, day: longint): byte; external #G_ZARCACHE;

#doc
  <brief>Установить тип связанности дня</brief>
  <p>
    Устанавливает <a href="art--LDSAPI_DayKinds.htm">тип связанности дня</a>
    <code>day</code> цепочки <code>objId</code> в значение <code>kind</code>,
    насколько это позволяют условия. Если по каким-либо причинам нельзя назначить
    день днём такого типа, то устанавливается тип связанности, максимально близкий к желаемому.
  </p><p>
    Если в результате вызова происходит изменение типа связанности дней,
    взводится <a href="exf--LDS_IsModified.htm">признак модификации</a>.
    Может привести к изменению типов дней и взведению признака модификации
    в соседних (привязанных к данной) цепочках
    (см. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>day</code> - номер дня цепочки. Дни нумеруются с единицы.</li>
    <li><code>kind</code> - <a href="art--LDSAPI_DayKinds.htm">тип связанности дня</a></li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_CanSetDayKind.htm">LDS_CanSetDayKind</a></code> <br />
  <code><a href="exf--LDS_GetDayKind.htm">LDS_GetDayKind</a></code> <br />
#end
procedure LDS_SetDayKind(objId: longint, day: longint, kind: byte); external #G_ZARCACHE;

#doc
  <brief>Можно ли установить некоторый тип связанности дня</brief>
  <p>
    Возвращает <code>true</code>, если разрешается установить
    <a href="art--LDSAPI_DayKinds.htm">тип связанности дня</a> <code>day</code>
    цепочки <code>objId</code> в значение <code>kind</code> так, чтобы этот день
    действительно стал днём типа <code>kind</code>. В противном случае
    возвращает <code>false</code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>day</code> - номер дня цепочки. Дни нумеруются с единицы.</li>
    <li><code>kind</code> - желаемый <a href="art--LDSAPI_DayKinds.htm">тип связанности дня</a></li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
#end
function LDS_CanSetDayKind(objId: longint, day: longint, kind: byte): boolean; external #G_ZARCACHE;

#doc
  <brief>Соединить два дня рабочей сменой</brief>
  <p>
    Соединить дни <code>[firstDay]</code> и <code>[firstDay + 1]</code>
    цепочки <code>objId</code> рабочей сменой, если это возможно.
    Для склеивания первого дня цепочки с днём, предшествующим данной цепочке,
    следует передавать <code>0</code> в параметре <code>firstDay</code>,
    а для соединения последнего дня с последующими - значение, равное
    <a href="exf--LDS_GetCount.htm">количеству дней в цепочке</a>.
  </p><p>
    Если в результате вызова происходит изменение типа связанности дней,
    взводится <a href="exf--LDS_IsModified.htm">признак модификации</a>.
    Может привести к изменению типов дней и взведению признака модификации
    в соседних (привязанных к данной) цепочках
    (см. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>firstDay</code> - номер первого дня из пары склеиваемых. Дни нумеруются с единицы.</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_CanGlue.htm">LDS_CanGlue</a></code> <br />
  <code><a href="exf--LDS_Split.htm">LDS_Split</a></code> <br />
#end
procedure LDS_Glue(objId: longint, firstDay: longint); external #G_ZARCACHE;

#doc
  <brief>Можно ли соединить два дня рабочей сменой</brief>
  <p>
    Возвращает <code>true</code>, если можно соединить дни
    <code>[firstDay]</code> и <code>[firstDay + 1]</code>
    цепочки <code>objId</code> рабочей сменой.
    Для обозначения склеивания первого дня цепочки с днём,
    предшествующим данной цепочке, следует передавать <code>0</code>
    в параметре <code>firstDay</code>, а для обозначения соединения
    последнего дня с последующими - значение, равное
    <a href="exf--LDS_GetCount.htm">количеству дней в цепочке</a>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>firstDay</code> -  номер первого дня из пары склеиваемых. Дни нумеруются с единицы.</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_Glue.htm">LDS_Glue</a></code> <br />
  <code><a href="exf--LDS_CanSplit.htm">LDS_CanSplit</a></code> <br />
#end
function LDS_CanGlue(objId: longint, firstDay: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Разъединить два дня</brief>
  <p>
    Разъединить дни <code>[firstDay]</code> и <code>[firstDay + 1]</code>,
    если они были связаны рабочей сменой.
    Для разъединения первого дня цепочки и дня, предшествующего данной цепочке,
    следует передавать <code>0</code> в параметре <code>firstDay</code>,
    а для разъединения последнего дня с последующими - значение, равное
    <a href="exf--LDS_GetCount.htm">количеству дней в цепочке</a>.
  </p><p>
    Если в результате вызова происходит изменение типа связанности дней,
    взводится <a href="exf--LDS_IsModified.htm">признак модификации</a>.
    Может привести к изменению типов дней и взведению признака модификации
    в соседних (привязанных к данной) цепочках
    (см. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>firstDay</code> - номер первого дня из пары разъединяемых. Дни нумеруются с единицы.</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_CanSplit.htm">LDS_CanSplit</a></code> <br />
  <code><a href="exf--LDS_Glue.htm">LDS_Glue</a></code> <br />
#end
procedure LDS_Split(objId: longint, firstDay: longint); external #G_ZARCACHE;

#doc
  <brief>Можно ли разъединить два дня?</brief>
  <p>
    Всегда можно! По крайней мере, при теперешней реализации. Но для перспективы
    сделана функция, позволяющая спросить, а можно ли.
  </p> <p>
    Возвращает <code>true</code>, если можно
    <a href="exf--LDS_Split.htm">разъединить</a> дни
    <code>[firstDay]</code> и <code>[firstDay + 1]</code>
    цепочки <code>objId</code>.
    Для обозначения разъединения первого дня цепочки и дня,
    предшествующего данной цепочке, следует передавать <code>0</code>
    в параметре <code>firstDay</code>, а для обозначения разъединения
    последнего дня и последующего - значение, равное
    <a href="exf--LDS_GetCount.htm">количеству дней в цепочке</a>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>firstDay</code> - номер первого дня из пары разъединяемых. Дни нумеруются с единицы.</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_Split.htm">LDS_Split</a></code> <br />
  <code><a href="exf--LDS_CanGlue.htm">LDS_CanGlue</a></code> <br />
#end
function LDS_CanSplit(objId: longint, firstDay: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Возвращает признак модификации цепочки</brief>
  <p>
    Возвращает значение признака модификации цепочки <code>objId</code>.
    Признак модификации по умолчанию сброшен, но может автоматически взводиться
    при изменении данных о связанности дней в цепочке.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
  </ul>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_SetModified.htm">LDS_SetModified</a></code> <br />
#end
function LDS_IsModified(objId: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Установить значение признака модификации</brief>
  <p>
    Устанавливает значение <code>value</code> признака модификации
    цепочки <code>objId</code>.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>value</code> - новое значение признака модификации</li>
  </ul>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_IsModified.htm">LDS_IsModified</a></code> <br />
#end
procedure LDS_SetModified(objId: longint, value: boolean); external #G_ZARCACHE;

#doc
  <brief>Загрузка данных о связанности дней из битовой маски</brief>
  <p>
    Загружает в цепочку <code>objId</code> данные о связанности дней
    из 32-битной маски <code>mask</code>.
    <a href="exf--LDS_IsModified.htm">Признак модификации</a> не взводится.
    Количество дней должно быть задано предварительно
    (см. <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code>).
    Возвращает <code>true</code>, если 32-битной маски в принципе достаточно
    для описания всех связей в цепочке (то есть, когда количество дней равно
    <code>31</code> или меньше). Иначе возвращает <code>false</code>,
    и загрузка не происходит.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>mask</code> - маска связанности дней</li>
  </ul>
  <h3>Замечание</h3>
  <p>
    Загруженные данные о связанности дней могут войти в противоречие с соседними цепочками
    (см. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>),
    либо с днями, не могущими участвовать в связях
    (см. <code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a></code>),
    поэтому желательно вызвать <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>
    по окончании всех манипуляций.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_StoreToMask.htm">LDS_StoreToMask</a></code> <br />
  <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code> <br />
#end
function LDS_LoadFromMask(objId: longint, mask: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Запись данных о связанности дней в битовую маску</brief>
  <p>
    Сохраняет в битовую маску <code>mask</code> данные о связанности дней
    в цепочке <code>objId</code>. Возвращает <code>true</code>,
    если 32-битной маски в принципе достаточно для описания всех связей в цепочке
    (то есть, когда количество дней равно <code>31</code> или меньше).
    Иначе возвращает <code>false</code>, и запись не происходит.
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
    <li><code>[out] mask</code> -  маска связанности дней</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Перед использованием необходимо убедиться, что целостность данных не была нарушена
    вызовом функций, негативно влияющих на целостность данных.
  </p>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
  <code><a href="exf--LDS_LoadFromMask.htm">LDS_LoadFromMask</a></code> <br />
#end
function LDS_StoreToMask(objId: longint, var mask: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>Восстановить целостность данных</brief>
  <p>
    Устраняет противоречия между данными о связанности дней и данными о рабочих днях
    (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = true</code>),
    если таковые имеются.
  </p>
  <p>
    Если в результате вызова происходит изменение типа связанности дней,
    взводится <a href="exf--LDS_IsModified.htm">признак модификации</a>.
    Может привести к изменению типов дней и взведению признака модификации
    в соседних (привязанных к данной) цепочках
    (см. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>Параметры</h3>
  <ul>
    <li><code>objId</code> - хэндл цепочки дней</li>
  </ul>
  <h3>Примечание</h3>
  <p>
    Если в цепочке совсем нет связанных дней, то никаких противоречий во внутренних данных
    возникнуть не может, и эту функцию можно не вызывать. Противоречия могут возникнуть
    тогда, когда меняются "низкоуровневые" характеристики цепочки, уже содержащей связанные дни:
    происходит добавление или удаление дней, перенастройка ограничений на связывание дней
    друг с другом (<code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code>).
    Также цепочка может перейти в противоречивое состояние, когда в цепочку, имеющую
    ограничения на связывание дней, загружаются данные о связанности дней
    <a href="exf--LDS_LoadFromMask.htm">из битовой маски</a>.
  </p> <p>
    Такой подход к обработке ошибок, с ручным вызовом исправления, реализован из соображений
    быстродействия (один <code>Refresh</code> после всех манипуляций), а также для
    обнаружения ошибок, могущих возникнуть при загрузке данных из кривой БД.
  </p>
  <p>Восстановление целостности данных заключается в следующем:</p>
  <ol>
    <li>Разрыв связей нерабочими днями
      (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = false</code>)</li>
    <li>Лечение односторонних связей: окончательное соединение, если оно возможно,
      либо окончательное разъединение, если соединить дни нельзя.</li>
  </ol>
  <h3>См. также</h3>
  <a href="art--LDSAPI_About.htm">Цепочки дней</a> <br />
#end
procedure LDS_Refresh(objId: longint); external #G_ZARCACHE;
