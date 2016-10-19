//------------------------------------------------------------------------------
//                                                      (c) Корпорация Галактика
// Галактика ERP 9.1
// Внешние функции
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// GalApp.pas
#doc
  <brief>
    Функция кладет событие в очередь для обработчика событий текущего окна.
  </brief>

  <p>
    Не пропускается событие - <code>cmCancel</code>
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>aCommand</code> - команда.</li>
  </ul>
#end
procedure PutHotCommand(Command: Word); external;
#doc
  <brief>
    Функция возвращает код текущей таблицы.
  </brief>
#end
function CurTableCode: Word; external;
//------------------------------------------------------------------------------
// Period.pas
#doc
  <brief>
    Считывает из SystDate текущий отчетный период.
  </brief>
#end
procedure CheckPeriod; external;
function GalApp_Second_Tune: boolean; external;
procedure GalApp_ExtendedSecond_tune(String); external;
#doc
  <brief>
    Вызывается из точки расширения - при переключения на другой филиал.
  </brief>
#end
procedure BeforeChangeFilial; external;
#doc
  <brief>
    Вызывается из точки расширения - после переключения на другой филиал.
  </brief>
#end
procedure AfterChangeFilial; external;
//------------------------------------------------------------------------------
// GalApp.pas
#doc
  <brief>
    Проверяет является ли система трехуровневой.
  </brief>
#end
function IfDefServerApp: boolean; external;
#doc
  <brief>
    Для запуска интерфейса после установки обновления.<br>
    Имя интерфейса задается через настройки.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aCommand</code> - имя интерфейса.</li>
  </ul>
#end
procedure RunBatchInterface(IfcName: String); external;
#doc
  <brief>
    Для не модального запуска интерфейса после установки обновления.<br>
    Имя интерфейса задается через настройки.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>aCommand</code> - имя интерфейса.</li>
  </ul>
#end
procedure RunBatchInterfaceNoModal(String); external;
//------------------------------------------------------------------------------

