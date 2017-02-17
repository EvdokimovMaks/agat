#ifndef __SiLogFuncs_inc___
#define __SiLogFuncs_inc___

// Функции протоколирования библиотеки SiLog.dll работают начиная с Атлантис 5.5.20
// Для активации в SmartInspect Configuretion Builder нужно создать файл <конфигурация протокола>.sic
// Затем в .cfg Галактики добавить раздел со ссылкой на этот файл
//   {SmartInspect}
//     ConfigFile = <путь>\<конфигурация протокола>.sic

#doc
  <brief>
    Запуск диагностического протокола.
  </brief>
#end
procedure SiLogDll_Enable; external 'SILog.dll#SiEnable';
#doc
  <brief>
    Выключение диагностического протокола.
  </brief>
#end
procedure SiLogDll_Disable; external 'SILog.dll#SiDisable';
#doc
  <brief>
    Сообщает включен ли диагностический протокол.
  </brief>
#end
function  SiLogDll_GetEnabled: Boolean; external 'SILog.dll#SiGetEnabled';
#doc
  <brief>
    Записать в диагностический протокол простое сообщение.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ATitle</code> - логируемое сообщение.</li>
  </ul>
#end
procedure SiLogDll_LogMessage(ATitle: String); external 'SILog.dll#SiLogMessage';
#doc
  <brief>
    Записать в диагностический протокол предупреждающее сообщение.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ATitle</code> - логируемое сообщение.</li>
  </ul>
#end
procedure SiLogDll_LogWarning(ATitle: String); external 'SILog.dll#SiLogWarning';
#doc
  <brief>
    Записать в диагностический протокол сообщение об ошибке.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ATitle</code> - логируемое сообщение.</li>
  </ul>
#end
procedure SiLogDll_LogError(ATitle: String); external 'SILog.dll#SiLogError';
#doc
  <brief>
    Записать в диагностический протокол сообщение об исключительной ситуации.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>ATitle</code> - логируемое сообщение.</li>
  </ul>
#end
procedure SiLogDll_LogFatal(ATitle: String); external 'SILog.dll#SiLogFatal';

#doc
  <brief>
    Записать в диагностический протокол уведомление о том был произведен вход в функцию.
  </brief>

  <p>
    Записать в диагностический протокол уведомление о том был произведен вход в функцию.<br>
    При записи в диагностический протокол поддерживается иерархия функция в функции.<br>
    Позволяет выстроить стек вызова методов, что помогает в локализации ошибок в исходном коде.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>AMethodName</code> - имя логируемой функции.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Функция парная к функции LeaveMethod.
  </p>
#end
procedure SiLogDll_EnterMethod(AMethodName: String); external 'SILog.dll#SiEnterMethod';
#doc
  <brief>
    Записать в диагностический протокол уведомление о том был произведен выход из функции.
  </brief>

  <p>
    Записать в диагностический протокол уведомление о том был произведен выход из функции.<br>
    При записи в диагностический протокол поддерживается иерархия функция в функции.<br>
    Позволяет выстроить стек вызова методов, что помогает в локализации ошибок в исходном коде.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>AMethodName</code> - имя логируемой функции.</li>
  </ul>

  <h3>Замечание</h3>
  <p>
    Функция парная к функции EnterMethod.
  </p>
#end
procedure SiLogDll_LeaveMethod(AMethodName: String); external 'SILog.dll#SiLeaveMethod';
#doc
  <brief>
    Создает таблицу для организации диагностических данных.
  </brief>

  <p>
    Создает таблицу для организации диагностических данных.<br>
    Возвращает указатель на созданную таблицу.<br>
    Количество колонок и их заголовки задаются путем перечисления через разделитель.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Headers</code> - перечисление заголовков колонок.</li>
  </ul>
#end
function SiLogDll_ContextTableCreate(Headers: String): longint; external 'SILog.dll#SiContextTableCreate';
#doc
  <brief>
    Добавляет новую строку в таблицу диагностических данных по указателю.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>hTable</code> - таблица в которую будет добавлена строка.</li>
  </ul>
#end
procedure SiLogDll_ContextTableBeginRow(hTable: longint); external 'SILog.dll#SiContextTableBeginRow';
#doc
  <brief>
    Записывает в строковое значение в текущую ячейку текущей строки таблицы.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>hTable</code> - таблица в которую будет добавлено значение;</li>
    <li><code>AEntry</code> - добавляемое значение.</li>
  </ul>
#end
procedure SiLogDll_ContextTableAddRowEntry(hTable: longint, AEntry: String); external 'SILog.dll#SiContextTableAddRowEntry';
#doc
  <brief>
    Закрывает текущую строку в таблице.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>hTable</code> - таблица в которой будет закрыта строка.</li>
  </ul>
#end
procedure SiLogDll_ContextTableEndRow(hTable: longint); external 'SILog.dll#SiContextTableEndRow';
#doc
  <brief>
    Добавление в диагностический протокол таблицы с данными.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>hTable</code> - добавляемая таблица;</li>
    <li><code>AComment</code> - комментарий для таблицы.</li>
  </ul>
#end
procedure SiLogDll_ContextLog(hContext: longint, AComment: String); external 'SILog.dll#SiContextLog';
#doc
  <brief>
    Устанавливает конфигурационный файлу для диагностического протокола.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>AConfigFileName</code> - путь к конфигурационному файлу.</li>
  </ul>
#end
procedure SiLogDll_SetConfigFileName(AConfigFileName: String); external 'SILog.dll#SiSetConfigFileName';
#doc
  <brief>
    Устанавливает строку подключения к диагностическому протоколу.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>AConnections</code> - строка подключения.</li>
  </ul>
#end
procedure SiLogDll_SetConnections(AConnections: String); external 'SILog.dll#SiSetConnections';
#doc
  <brief>
    Устанавливает высокую точность времени(микросекунды).
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>Enabled</code> - режим высокой точности.</li>
  </ul>
#end
procedure SiLogDll_SetHighResolution(Enabled: Boolean); external 'SILog.dll#SiSetHighResolution';

//procedure SiLogDll_LogSqlStr(ATitle: String, hStr: longint);                        external 'SILog.dll#SILOGSQLSTR';
#doc
  <brief>
    Возвращает содержимое буфера обмена в виде строки.
  </brief>
#end
function SimpleClipboardToString: String; external 'SILog.dll#SimpleClipboardToString';
#doc
  <brief>
    Создает хэш коллекцию строк.<br>
    Возвращает указатель на коллекцию.
  </brief>
#end
function ClipBarCodes_Create: longint; external 'SILog.dll#ClipBarCodes_Create';
#doc
  <brief>
    Сбрасывает индекс текущего элемента в нулевое значение.<br>
    Сбрасывает текущий элемент в значение nil.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipBarCodes</code> - указатель на хэш коллекцию.</li>
  </ul>
#end
procedure ClipBarCodes_Restart(aClipBarCodes: longint); external 'SILog.dll#ClipBarCodes_Restart';
#doc
  <brief>
    Возвращает количество элементов в хэш коллекции.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipBarCodes</code> - указатель на хэш коллекцию.</li>
  </ul>
#end
function ClipBarCodes_Count(aClipBarCodes: longint): longint; external 'SILog.dll#ClipBarCodes_Count';
#doc
  <brief>
    Переходит на следующий элемент в хэш коллекции.<br>
    Возвращает успешность перехода на следующий элемент.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipBarCodes</code> - указатель на хэш коллекцию.</li>
  </ul>
#end
function ClipBarCodes_Next(aClipBarCodes: longint): boolean; external 'SILog.dll#ClipBarCodes_Next';
#doc
  <brief>
    Возвращает значение текущего узла хэш коллекции.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipBarCodes</code> - указатель на хэш коллекцию.</li>
  </ul>
#end
function ClipBarCodes_CurrentValue(aClipBarCodes: longint): String; external 'SILog.dll#ClipBarCodes_CurrentValue';
#doc
  <brief>
    Освобождает хэш коллекцию.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipBarCodes</code> - указатель на хэш коллекцию.</li>
  </ul>
#end
procedure ClipBarCodes_Free(aClipBarCodes: longint); external 'SILog.dll#ClipBarCodes_Free';

#doc
  <brief>
    Создает текстовый контейнер для работы с буфером обмена.<br>
    Возвращает указатель на созданный контейнер.
  </brief>
#end
function ClipboardText_Create: longint; external 'SILog.dll#ClipboardText_Create';
#doc
  <brief>
    Помещает в буфер обмена значение из текстового контейнера.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер.</li>
  </ul>
#end
procedure ClipboardText_Copy(aClipText: longint); external 'SILog.dll#ClipboardText_Copy';
#doc
  <brief>
    Помещает в текстовый контейнер значение из буфер обмена.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер.</li>
  </ul>
#end
procedure ClipboardText_Paste(aClipText: longint); external 'SILog.dll#ClipboardText_Paste';
#doc
  <brief>
    Очищает текстовый контейнер.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер.</li>
  </ul>
#end
procedure ClipboardText_Clear(aClipText: longint); external 'SILog.dll#ClipboardText_Clear';
#doc
  <brief>
    Добавляет в текстовый контейнер строку.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер.</li>
    <li><code>Str</code> - добавляемая строка.</li>
  </ul>
#end
procedure ClipboardText_AddStr(aClipText: longint, Str: String); external 'SILog.dll#ClipboardText_AddStr';
#doc
  <brief>
    Возвращает длину значения в текстовом контейнере.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер.</li>
  </ul>
#end
function ClipboardText_Length(aClipText: longint): longint; external 'SILog.dll#ClipboardText_Length';
#doc
  <brief>
    Возвращает скопированную подстроку из текстового контейнера.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер;</li>
    <li><code>Index</code> - позиция начала копирования подстроки;</li>
    <li><code>Count</code> - количество копируемых символов.</li>
  </ul>
#end
function ClipboardText_SubStr(aClipText: longint, Index: longint, Count: longint): String; external 'SILog.dll#ClipboardText_SubStr';
#doc
  <brief>
    Освобождает текстовый контейнер.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aClipText</code> - указатель на текстовый контейнер;</li>
  </ul>
#end
procedure ClipboardText_Free(aClipText: longint); external 'SILog.dll#ClipboardText_Free';

#doc
  </brief>

  <p>
    вызывает диалог выбора файла.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>aWildCard</code> - маска.</li>
    <li><code>ATitle</code> - заголовок окна.</li>
    <li><code>InputName</code> - заголовок label.</li>
    <li><code>AOptions</code> - флаги
        CONST fdOkButton = 1;
              fdOpenButton    = 2;
              fdReplaceButton = 4;
              fdClearButton   = 8;
              fdHelpButton    = 16;
              fdSaveButton    = 32.</li>
    <li><code>HistoryId</code> - флаг hiOpenFileDialog.</li>
  </ul>
#end
function SelFileDialogVip(aWildCard : String, ATitle: String, InputName : String, AOptions: Word, HistoryId : longint,
                       var OutName : String, var OutFlags : Word): word; external 'G_Common.dll';


#end
