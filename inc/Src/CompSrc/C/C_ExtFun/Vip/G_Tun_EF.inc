/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2008 корпорация ГАЛАКТИКА                    ║
 ║ Система       : ГАЛАКТИКА                                                 ║
 ║ Проект        : Ядро                                                      ║
 ║ Версия        : 8.10                                                      ║
 ║ Назначение    : Внешние процедуры и функции из G_Tune.dll                 ║
 ║ Ответственный :                                                           ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

//------------------------------------------------------------------------------
// GalTunes.pas
#doc
  </brief>

  <p>
    Возвращает полный путь до указанной настройки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ настройки.</li>
  </ul>
#end
function GetTuneName(sKey: string): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает имя настройки по параметру.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ настройки.</li>
    <li><code>lObj</code> - тип возвращаемого имени.<br>
      Может принимать следующие значения:
      <ul>
        <li><code>0</code> - Полный путь настройки;</li>
        <li><code>1</code> - только имя;</li>
        <li><code>2</code> - только путь.</li>
      </ul>
    </li>
  </ul>
#end
function GetTuneNameEx(sKey: string, lObj: word): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Выдает пользователю комбинированное сообщение из пользовательского и описания настройки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sMsg</code> - пользовательское сообщение;</li>
    <li><code>sKey</code> - ключ настройки.</li>
  </ul>
#end
function ShowTune(sMsg: string, sKey: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Проверяет существует ли настройка по указанному ключу.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function ExistTune(sKey: string): boolean; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает тип настройки по ключу.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function GetTuneType(sKey: string): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Возвращает значение настройки с типом string, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function sGetTune(sKey: string): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом boolean, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function boGetTune(sKey: string): boolean; external 'G_Tune.dll';
#doc
  </brief>
  <p>
    Возвращает значение настройки с типом char, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function cGetTune(sKey: string): char; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом word, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function wGetTune(sKey: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом byte, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function bGetTune(sKey: string): byte; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом LongInt, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function lGetTune(sKey: string): LongInt; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом date, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function dGetTune(sKey: string): date; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом time, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function tGetTune(sKey: string): time; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом double, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function doGetTune(sKey: string): double; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом comp, по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки.</li>
  </ul>
#end
function coGetTune(sKey: string): comp; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Возвращает значение настройки с типом string, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function sGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): string; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом boolean, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function boGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): boolean; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом char, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function cGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): char; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом word, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function wGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом byte, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function bGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): byte; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом LongInt, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function lGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): LongInt; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом date, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function dGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): date; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом time, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function tGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): time; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом double, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function doGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): double; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает значение настройки с типом comp, с указанием ключа, филиала и пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал пользователя;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function coGetTuneEx(sKey: string, lObj: LongInt, cUser: comp): comp; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Установка значения с типом string, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>sValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function sSetTune(sKey: string, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом boolean, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>boValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function boSetTune(sKey: string, boValue: boolean): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом char, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>cValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function cSetTune(sKey: string, cValue: char): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом word, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>wValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function wSetTune(sKey: string, wValue: word): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом word, а так же string, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>wValue</code> - записываемое значение;</li>
    <li><code>sValue</code> - описание значения.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function wSetTune2(sKey: string, wValue: word, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом Longint, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function lSetTune(sKey: string, lValue: LongInt): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом Longint, а так же string, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lValue</code> - записываемое значение;</li>
    <li><code>sValue</code> - описание значения.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function lSetTune2(sKey: string, lValue: LongInt, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом date, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>dValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function dSetTune(sKey: string, dValue: date): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом time, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>tValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function tSetTune(sKey: string, tValue: time): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом double, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>doValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function doSetTune(sKey: string, doValue: double): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом comp, в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>coValue</code> - записываемое значение;</li>
    <li><code>sValue</code> - описание значения.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function coSetTune(sKey: string, coValue: comp, sValue: string): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Установка значения с типом string, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>sValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function sSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом boolean, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>boValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function boSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, boValue: boolean): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом char, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>cValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function cSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, cValue: char): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом word, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>wValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function wSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, wValue: word): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом word и string, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>wValue</code> - записываемое значение;</li>
    <li><code>sValue</code> - описание значения.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function wSetTuneEx2(sKey: string, lObj: LongInt, cUser: comp, wValue: word, sValue: string): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом Longint, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>lValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function lSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, lValue: LongInt): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом Longint и String, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>lValue</code> - записываемое значение;</li>
    <li><code>sValue</code> - описание значения.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function lSetTuneEx2(sKey: string, lObj: LongInt, cUser: comp, lValue: LongInt, sValue: string) : word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом date, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>dValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function dSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, dValue: date): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом time, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>tValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function tSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, tValue: time): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом double, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>doValue</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function doSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, doValue: double): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения с типом comp, в настройку по ключу, c указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>coValue</code> - записываемое значение;</li>
    <li><code>sValue</code> - описание значения.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function coSetTuneEx(sKey: string, lObj: LongInt, cUser: comp, coValue: comp, sValue: string): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Установка значения в настройку по ключу, для текущего пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>Value</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function SetTune(sKey: string, var Value: anytype): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Установка значения в настройку по ключу, с указанием пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь;</li>
    <li><code>Value</code> - записываемое значение.</li>
  </ul>

  <h3>Возвращаемое значение</h3>
  <p>
    Код ошибки.
  </p>
#end
function SetTuneEx(sKey: string, lObj: LongInt, cUser: comp, var Value: anytype): word; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Возвращает полную маску прав настройки для указанного пользователя и филиала.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function GetTuneFullRgh(sKey: string, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает временные права. Не рекомендуется к использованию.
  </p>
#end
function GetTuneTmpRgh(cNRec: comp, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Не рекомендуется к использованию. Системная функция по работе с настройками
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sKey</code> - ключ искомой настройки;</li>
    <li><code>lObj</code> - филиал;</li>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function PostTuneEx(sKey: string, lObj: LongInt, cUser: comp): word; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Возвращает статус последней операции над настройками.
  </p>
#end
function LastTuneStatus: word; external 'G_Tune.dll';
function StartProtokol(sIntrName: string, sIntrComment: string): boolean; external 'G_Tune.dll';
function StopProtokol: boolean; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Включает сбор статистики по настройкам.
  </p>
#end
Procedure StartLogTunes; external 'G_Tune.dll';
#doc
  </brief>

  <p>
    Выключает сбор статистики по настройкам.
  </p>
#end
Procedure StopLogTunes; external 'G_Tune.dll';

#doc
  </brief>

  <p>
    Возвращает офис определенного пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function GetUserOffice(cUser: comp): word; external 'G_Tune.dll';    // оффис пользователя
#doc
  </brief>

  <p>
    Возвращает номер текущего офиса.
  </p>
#end
function GetCurrOffice: word; external 'G_Tune.dll'; // текущий офис
#doc
  </brief>

  <p>
    Возвращает номер текущего филиала.
  </p>
#end
function GetCurrFilial: word; external 'G_Tune.dll'; // текущий филиал
#doc
  </brief>

  <p>
    Установить филиал для настроек.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>wFilial</code> - номер филиала.</li>
  </ul>
#end
function SetTuneFilial(wFilial: word): word; external 'G_Tune.dll'; // установить филиал для настроек
#doc
  </brief>

  <p>
    Возвращает номер текущего офиса и филиала.
  </p>
#end
function GetOfficeFilial: longInt; external 'G_Tune.dll'; // текущий офис + филиал
#doc
  </brief>

  <p>
    Возвращает офис и филиал определенного пользователя.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cUser</code> - пользователь.</li>
  </ul>
#end
function UserOfficeFilial(cUser: comp): longInt; external 'G_Tune.dll'; // офис + текущий филиал пользователя
#doc
  </brief>

  <p>
    Возвращает номер филиала по его ID.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cFilial</code> - ID филиала.</li>
  </ul>
#end
function FilialNo(cFilial: comp): word; external 'G_Tune.dll'; // Получить номер филиала по его ID
#doc
  </brief>

  <p>
    Сворачивает указанный офис и филиал в одно поле.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>wOffice</code> - офис;</li>
    <li><code>wFilial</code> - филиал.</li>
  </ul>
#end
function OfficeFilialTune(wOffice: word, wFilial: word): longInt; external 'G_Tune.dll';    // офис и филиал сворачиваются в одно поле

#doc
  </brief>

  <p>
    Определяет установлен ли текущий филиал в многофилиальной БД.
  </p>
#end
function isModifyDataFilial: boolean; external 'G_Tune.dll'; // в многофилиальной БД установлен ли текущий филиал
#doc
  </brief>

  <p>
    Определяет включена ли филиальность.
  </p>
#end
function ExistFilial: boolean; external 'G_Tune.dll'; // Включена ли филиальность
#doc
  </brief>

  <p>
    Определяет включен ли Protect.
  </p>
#end
function isProtection: boolean; external 'G_Tune.dll'; // Включен ли протект

procedure TuneDefCacheTurnOn; external 'G_Tune.dll';
procedure TuneDefCacheTurnOff; external 'G_Tune.dll';
function  GetPostUpdateTuneEnabled(sKey: string): boolean; external 'G_Tune.dll';
procedure SetPostUpdateTuneEnabled(sKey: string, Flag : boolean); external 'G_Tune.dll';

function  TunesInit                                      : boolean;  external 'G_Tune.dll';
function  isTunesInit                                    : boolean;  external 'G_Tune.dll';
function  TunesDone                                      : boolean;  external 'G_Tune.dll';

//------------------------------------------------------------------------------
