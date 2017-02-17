/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2002 корпорация ГАЛАКТИКА                    ║
 ║ Система       : ГАЛАКТИКА                                                 ║
 ║ Проект        : Бухгалтерский контур                                      ║
 ║ Версия        : 5.84                                                      ║
 ║ Назначение    : Внешние процедуры и функции из G_ExpImp.dll               ║
 ║ Ответственный : Ярошук Дмитрий Леонидович (Smile)                         ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

//------------------------------------------------------------------------------
// ieLib.pas
#doc
  </brief>
  <p>
    Возвращает локальную директорию для создания временных файлов.
  </p>
#end
function TemporaryDirectory: string;  external 'G_ExpImp.dll';
#doc
  <brief>
    Получает информацию о файле.
  </brief>

  <p>
    Получает:<br>
    - Дату изменения файла;<br>
    - Время изменения файла;<br>
    - Размер файла.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sFileName</code> - полное имя файла;</li>
    <li><code>pfDate</code> - дата изменения файла;</li>
    <li><code>pfTime</code> - время изменения файла;</li>
    <li><code>pfSize</code> - размер файла.</li>
  </ul>
#end
procedure GetFileInfo(sFileName: string, var pfDate: date, var pfTime: time, var pfSize: longint ); external 'G_ExpImp.dll';
function SaveTuneToFile(cIEHead: comp, sFileName: string): boolean; external 'G_ExpImp.dll';
function RestoreTuneFromFile(sFileName: string, wExpImp: word, wDocType: word): comp; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Проверяет наличие формы в настройке.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>pfMemo</code> - проверяемое поле.</li>
  </ul>
#end
function IsEmptyMemo(var pfMemo: anytype): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Определяет имя формы, находящейся в файле.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sFileName</code> - полное имя файла.</li>
  </ul>
#end
function ExtractFormName(sFileName: string ): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Подключает ресурс по имени, если он еще не подключен.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sFileName</code> - полное имя ресурса.</li>
  </ul>
#end
function LoadResource(asFileName: string): boolean; external 'G_ExpImp.dll';
function ieTextFormInit        ( comp, string )          : integer; external 'G_ExpImp.dll';
procedure ieTextFormDone;                                           external 'G_ExpImp.dll';
function  ieTextFormFindFirstRecord ( boolean )          : boolean; external 'G_ExpImp.dll';
function  ieTextFormFindNextRecord  ( boolean )          : boolean; external 'G_ExpImp.dll';
function  ieTextFormImportField     ( boolean, word, var anytype ) : boolean; external 'G_ExpImp.dll';
function  ieTextFormSetFileName     ( string )           : boolean; external 'G_ExpImp.dll';
function  ieTextFormValidTopology   ( comp )             : boolean; external 'G_ExpImp.dll';
function  ieTextFormNumberOfRecords                      : longint; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает группу слов для одной строки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource</code> - исходная строка;</li>
    <li><code>sHistory</code> - длина для проверки вхождения группы слов.</li>
  </ul>
#end
function GroupOfWords(sSource: string, sHistory: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает группу слов для пяти строк.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource1</code> - исходная строка 1;</li>
    <li><code>sSource2</code> - исходная строка 2;</li>
    <li><code>sSource3</code> - исходная строка 3;</li>
    <li><code>sSource4</code> - исходная строка 4;</li>
    <li><code>sSource5</code> - исходная строка 5;</li>
    <li><code>sHistory</code> - длины для проверки вхождения группы слов, через разделитель.</li>
  </ul>
#end
function GroupOfWordsFrom(sSource1: string, sSource2: string, sSource3: string, sSource4: string, sSource5: string, sHistory: string) : string;  external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает остаток от группы слов для одной строки.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource</code> - исходная строка ;</li>
    <li><code>sHistory</code> - длина для проверки вхождения группы слов.</li>
  </ul>
#end
function GroupOfWordsRem(sSource: string, sHistory: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает остаток от группы слов для пяти строк.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource1</code> - исходная строка 1;</li>
    <li><code>sSource2</code> - исходная строка 2;</li>
    <li><code>sSource3</code> - исходная строка 3;</li>
    <li><code>sSource4</code> - исходная строка 4;</li>
    <li><code>sSource5</code> - исходная строка 5;</li>
    <li><code>sHistory</code> - длины для проверки вхождения группы слов, через разделитель.</li>
  </ul>
#end
function GroupOfWordsFromRem(sSource1: string, sSource2: string, sSource3: string, sSource3: string, sSource4: string, sHistory: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает первую подстроку sSource, ограниченную 2 - мя символоми cLeftBound и cRightBound
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource</code> - исходная строка;</li>
    <li><code>cLeftBound</code> - символ левой границы;</li>
    <li><code>cRightBound</code> - символ правой границы;</li>
    <li><code>nTypeBound</code> - тип ограничения:<br>
      <p>
        1 - до первого правого разделителя;<br>
        2 - до последнего правого разделителя.
      </p>
    </li>
  </ul>
#end
function GetBoundedSubString(sSource: string, cLeftBound: char, cRightBound: char, nTypeBound: byte): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Конвертировать маску файлов для экспорта в DOS - маску для импорта
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sFileName</code> - имя файла.</li>
  </ul>
#end
function UndoFileName(sFileName: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает наименование валюты по nRec-у.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>cKlVal</code> - NRec валюты.</li>
  </ul>
#end
function CurrencyName(cKlVal: comp): string; external 'G_ExpImp.dll';
function DelClassVal(sost: boolean): integer; external 'G_ExpImp.dll';
function DelAttrVal(sost: boolean): integer; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает результат наличия файла по имени.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sName</code> - имя проверяемого файла.</li>
  </ul>
#end
function FileExist(sName: string): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Проверяет является ли указанный путь каталогом.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sPath</code> - проверяемый путь.</li>
  </ul>
#end
function IsDirectory(sPath: string): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Генерирует уникальное имя файла, по указанному каталогу.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Path</code> - каталог для создания.</li>
  </ul>
#end
function CreateUniqueFileName(Path: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Добавляет слэш в конец пути если он отсутствует.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>DirName</code> - путь.</li>
  </ul>
#end
function AddSlashToPath(DirName: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Проверяет валидность пути, в возможностью его создания.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>iPath</code> - проверяемый путь.</li>
    <li><code>NeedCreate</code> - создавать ли при отсутствии путь.</li>
  </ul>
#end
function VerifyPathName(iPath: string, NeedCreate: boolean): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает путь запускаемой программы со слэшем в конце.
  </p>
#end
function StartPathName: String;  external 'G_ExpImp.dll';
#doc
  <brief>
    Возвращает слово по индексу из строки ограниченное разделителем.
  </brief>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource</code> - исходная строка;</li>
    <li><code>byWordIndex</code> - индекс искомого слова;</li>
    <li><code>sDelimiters</code> - строка разделителей.</li>
  </ul>
#end
function ExtractDelimitedWord(sSource: string, byWordIndex: byte, sDelimiters: string): string; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает слово с указанным номером ограниченное разделителем.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSource</code> - исходная строка;</li>
    <li><code>byWordIndex</code> - индекс искомого слова;</li>
    <li><code>sDelimiters</code> - строка разделителей.</li>
  </ul>
#end
function ParseWord(sSource: string, byWordIndex: byte, Delimiter: char): string;  external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает значение указанной переменной окружения.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sName</code> - переменная окружения.</li>
  </ul>
#end
function GetEnvString(sName: string): string;  external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
// Xml_Func.pas
#doc
  Инициализация и возврат указателя на XMLDoc
#end
function XML_New                                                       : #TPtr; external 'G_ExpImp.dll';

#doc
  Возвращает количество узлов в документе
</breaf>
<br>
Параметра
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел заголовка документа
  <li>название элемента, являющегося документом
</ul>
<br>
Результат:<br>
  Количество узлов в документе
#end
Function XML_CountDoc(#TPtr, #TPtr, string) : longint; external 'G_ExpImp.dll';


#doc
Загрузка XML-документа из файла
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>имя файла
</ul>
<br>
Результат:<br>
true - успешно, false - ошибка
#end
function XML_LoadDoc      (#TPtr, string)                            : boolean; external 'G_ExpImp.dll';

#doc
  Поиск первого загружаемого документа из XML-файла
</breaf>
<br>
Параметра
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел заголовка документа
  <li>ссылка на главный узел документа
  <li>ссылка на дочерний узел документа
</ul>
<br>
Результат:<br>
  адрес указателя на гл. узел документа
#end
function XML_FindFirstDoc (#TPtr, #TPtr, comp, comp)               : #TPtr; external 'G_ExpImp.dll';

#doc
Поиск следующего загружаемого документа из XML-файла
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел док-та
  <li>ссылка на главный узел документа
  <li>ссылка на дочерний узел документа
</ul>
<br>
Результат:<br>
  адрес указателя на гл. узел документа
#end
function XML_FindNextDoc  (#TPtr, #TPtr, comp, comp)               : #TPtr; external 'G_ExpImp.dll';

#doc
Импорт  поля
<breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>ссылка на IEHead - настройка Э/И
  <li>адрес указателя на гл. узел док-та
  <li>ссылка на текущее метаописание
</ul>
<br>
Результат:<br>
Строковое значение поля
#end
function ImportXMLField   (#TPtr, comp, #TPtr, comp)               : string;  external 'G_ExpImp.dll';

#doc
Импорт  поля
<breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>ссылка на IEHead - настройка Э/И
  <li>адрес указателя на гл. узел док-та
  <li>ссылка на текущее метаописание
  <li>указатель на PMemoryStream, содержащая более 255 символов, импортируемое значение
</ul>
<br>
Результат:<br>
Строковое значение поля
#end
function ImportXMLFieldEx   (#TPtr, comp, #TPtr, comp, #TPtr)               : boolean;  external 'G_ExpImp.dll';

#doc
Освобождаем ссылку на XML документ
</breaf>
Параметры:
<ul>
  <li> Ссылка на XML документ
</ul>
<br>
Результат:<br>
true - успешно, false - ошибка
#end
function XML_Done         (#TPtr)                                    : boolean; external 'G_ExpImp.dll';

#doc
Заполнение XML-документа узлами от корня до главного узла документа
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>ссылка на IEHead - настройка Э/И
</ul>
Результат:
<br>
адрес указателя на гл. узел документа
#end
function InitXML_Doc      (#TPtr, comp)                              : #TPtr; external 'G_ExpImp.dll';

#doc
Создание главного узла нового документа
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел тек. док-та
  <li>adress s current chield
  <li>наименование главного узла документа
</ul>
Результат:
<br>
адрес указателя на гл. узел нового док-та
#end
function XML_NewNode      (#TPtr, #TPtr, #TPtr ,string)          : longint; external 'G_ExpImp.dll';

#doc
Экспорт поля в XML-документ<br>
</brief>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел док-та
  <li>ссылка на текущее метаописание
  <li>экспортируемое значение
  </ul>
<br>
Результат:<br>
true - успешно, false - ошибка
#end

function ExportXMLField   (#TPtr, #TPtr, comp ,string)             : boolean; external 'G_ExpImp.dll';

#doc
Экспорт поля в XML-документ более 255 символов<br>
</brief>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел док-та
  <li>ссылка на текущее метаописание
  <li>экспортируемое значение, указатель на PMemoryStream, содержащая более 255 символов
  </ul>
<br>
Результат:<br>
true - успешно, false - ошибка
#end

function ExportXMLFieldEx   (#TPtr, #TPtr, comp , var anytype)             : boolean; external 'G_ExpImp.dll';

#doc
Сохранение документа по указанному пути
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>адрес указателя на гл. узел док-та
</ul>
Результат:<br>
true - успешно, false - ошибка
#end
function XML_SaveAs       (#TPtr, #TPtr, #TPtr ,#TPtr, string) : boolean; external 'G_ExpImp.dll';

function XML_FillMeta     (#TPtr, comp)                              : boolean; external 'G_ExpImp.dll';
function XML_GetRoot      (#TPtr)                                    : longint; external 'G_ExpImp.dll';
function XML_Release      (#TPtr)                                    : boolean; external 'G_ExpImp.dll';
//------------------------------------------------------------------------------
// XMLDOMFunc.pas

#doc
Инициализация и возврат указателя на PMemoStream
Результат:<br>
адрес указателя на PMemoStream
#end
Function MemoryStream_Init : #TPtr;         external 'G_ExpImp.dll';
#doc
Освобождение ссылки на PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
</ul>
#end
Function MemoryStream_Done (#TPtr) : boolean; external 'G_ExpImp.dll';
#doc
Добавление строки в PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
<li>добавляемый текст
</ul>
Результат:<br>
True - если успешно
#end
Function MemoryStream_Write(#TPtr, string) : boolean; external 'G_ExpImp.dll';
#doc
Получение строки в PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
<li>количество считываемых символов
<li>строка, в которую считываем
</ul>
Результат:<br>
True - если успешно
#end
Function MemoryStream_Read(#TPtr, longint, var anytype) : boolean; external 'G_ExpImp.dll';
#doc
Установка позиции в PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
<li>устанавливаемая позиция
</ul>
Результат:<br>
True - если успешно
#end
Function MemoryStream_Seek(#TPtr, longint) : boolean; external 'G_ExpImp.dll';
#doc
Усечение в PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
</ul>
Результат:<br>
True - если успешно
#end
Function MemoryStream_Truncate(#TPtr) : boolean; external 'G_ExpImp.dll';
#doc
Получение позиции PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
</ul>
Результат:<br>
размер PMemoStream
#end
Function MemoryStream_GetPos(#TPtr) : longint; external 'G_ExpImp.dll';
#doc
Получение размера PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
</ul>
Результат:<br>
размер PMemoStream
#end
Function MemoryStream_GetSize(#TPtr) : longint; external 'G_ExpImp.dll';


#doc
Инициализация и возврат указателя на DOMDocument
</breaf>
Результат:<br>
адрес указателя на XML-DOMDocument
#end
function XMLDOMDoc_New                                                     : #TPtr; external 'G_ExpImp.dll';

#doc
Загрузка DOMDocument из файла c возможностью отключения сообщения парсинга
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>имя файла, может быть URL
</ul>
Результат:<br>
True - если успешно
#end
function XMLDOMDoc_LoadEx                        (#TPtr, string, boolean)           : boolean; external 'G_ExpImp.dll';

#doc
Загрузка DOMDocument из файла
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>имя файла, может быть URL
</ul>
Результат:<br>
True - если успешно
#end
function XMLDOMDoc_Load                        (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
Запись DOMDocument в файл
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>имя файла
</ul>
Результат:<br>
True - если успешно
#end
function XMLDOMDoc_Save                        (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
Получение корневого элемента
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
</ul>
Результат:<br>
адрес указателя на XMLDOMElement
#end
function XMLDOMDoc_DocumentElement             (#TPtr)                   : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "Node"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>тип узла
<li>наименование узла
</ul>
Результат:<br>
адрес указателя на XMLDOMNode
#end
function XMLDOMDoc_CreateNode                  (#TPtr, integer, string)  : #TPtr; external 'G_ExpImp.dll';
#doc
Создание узла "Attribute"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>наименование атрибута
</ul>
Результат:<br>
адрес указателя на XMLDOMAttribute
#end
function XMLDOMDoc_CreateAttribute             (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "CDataSection"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>данные
</ul>
Результат:<br>
адрес указателя на XMLDOMCDataSection
#end
function XMLDOMDoc_CreateCDataSection          (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "Comment"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>текст комментария
</ul>
Результат:<br>
адрес указателя на XMLDOMComment
#end
function XMLDOMDoc_CreateComment               (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "Comment"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>текст комментария (более 255 символов)
</ul>
Результат:<br>
адрес указателя на XMLDOMComment
#end
function XMLDOMDoc_CreateCommentEx               (#TPtr, var anytype)           : #TPtr; external 'G_ExpImp.dll';


#doc
Создание узла "DocumentFragment"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
</ul>
Результат:<br>
адрес указателя на XMLDOMDocumentFragment

#end
function XMLDOMDoc_CreateDocumentFragment      (#TPtr)                   : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "Element"
</breaf>
Параметры:
<ul>
  <li>адрес указателя на DOMDocument
  <li>наименование элемента
</ul>
Результат:<br>
адрес указателя на XMLDOMElement
#end
function XMLDOMDoc_CreateElement               (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "EntityReference"
</breaf>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>наименование ссылки
</ul>
Результат:<br>
адрес указателя на XMLDOMEntityReference
#end
function XMLDOMDoc_CreateEntityReference       (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "ProcessingInstruction"
</breaf>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>наименование инструкции
<li>текст инструкции
</ul>
Результат:<br>
адрес указателя на XMLDOMProcessingInstruction
#end
function XMLDOMDoc_CreateProcessingInstruction (#TPtr, string, string)   : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "TextNode"
</breaf>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>текст
</ul>
Результат:<br>
адрес указателя на XMLDOMTextNode
#end
function XMLDOMDoc_CreateTextNode              (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Создание узла "TextNode"
</breaf>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>текст (более 255 символов)
</ul>
Результат:<br>
адрес указателя на XMLDOMTextNode
#end
function XMLDOMDoc_CreateTextNodeEx            (#TPtr, var anytype)           : #TPtr; external 'G_ExpImp.dll';

#doc
Чтение NodeValue для узла "Attribute"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMAttribute
</ul>
Результат:<br>
значение атрибута
#end
function XMLDOMAttribute_get_NodeValue         (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
Чтение NodeValue для узла "Attribute"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMAttribute
<li>текст (более 255 символов)
</ul>
Результат:<br>
True, если успешно
#end
function XMLDOMAttribute_get_NodeValueEx       (#TPtr, #TPtr)          : boolean;  external 'G_ExpImp.dll';

#doc
Запись NodeValue для узла "Attribute"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMAttribute
<li>значение атрибута
</ul>
Результат:<br>
True, если успешно
#end
function XMLDOMAttribute_set_NodeValue         (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
Запись NodeValue для узла "Attribute" (больше 255 символов)
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMAttribute
<li>значение атрибута
</ul>
Результат:<br>
True, если успешно
#end
function XMLDOMAttribute_set_NodeValueEx         (#TPtr, var anytype)           : boolean; external 'G_ExpImp.dll';

#doc
Добавление строки в данные для узла "CDataSection"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMCDataSection
<li>добавляемая строка
</ul>
Параметры:<br>
True, если успешно
#end
function XMLDOMCDataSection_AppendData         (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
Чтение Length для узла "CDataSection"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMCDataSection
</ul>
Параметры: <br>
значение
#end
function XMLDOMCDataSection_get_Length         (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
Чтение NodeValue для узла "CDataSection"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMCDataSection
</ul>
Результат:<br>
значение
#end
function XMLDOMCDataSection_get_NodeValue      (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
Запись NodeValue для узла "CDataSection"
</breaf>
Параметры:
<ul>
  <li>адрес указателя на XMLDOMCDataSection
  <li>значение
</ul>
Результат: <br>
  True, если успешно
#end
function XMLDOMCDataSection_set_NodeValue      (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
Чтение подстроки из Data для узла "CDataSection"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMCDataSection
<li>смещение
<li> кол-во символов
</ul>
Результат: <br>
значение
#end
function XMLDOMCDataSection_SubstringData      (#TPtr, longint, longint) : string;  external 'G_ExpImp.dll';

#doc
Добавление атрибута к элементу
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMElement
<li>наименование атрибута
<li>значение атрибута
</ul>
Результат:<br>
true - успешно, false - ошибка
#end
function XMLDOMElement_SetAttribute            (#TPtr, string, string)   : boolean; external 'G_ExpImp.dll';

#doc
Добавление атрибута (больше 255 символов) к элементу
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMElement
<li>наименование атрибута
<li>значение атрибута
</ul>
Результат:<br>
true - успешно, false - ошибка
#end
function XMLDOMElement_SetAttributeEx            (#TPtr, string, var anytype)   : boolean; external 'G_ExpImp.dll';

#doc

</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNote
<li>значение
</ul>
#end
procedure XMLDOMNode_Set_Text            (#TPtr, var anytype); external 'G_ExpImp.dll';

#doc
Подвязка узла к узлу-родителю
</breaf>
Параметры:
<ul>
<li>адрес указателя на узел-родитель
<li>адрес указателя на подвязываемый узел
</ul>
Результат:<br>
адрес указателя на XMLDOMNamedNodeMap
#end
function XMLDOMNode_AppendChild                (#TPtr, #TPtr)          : #TPtr; external 'G_ExpImp.dll';

#doc
Чтение Attributes для узла "Node"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNode
</ul>
Результат:<br>
адрес указателя на XMLDOMNodeList
#end
function XMLDOMNode_get_Attributes             (#TPtr)                   : #TPtr; external 'G_ExpImp.dll';

#doc
Чтение ChildNodes для узла "Node"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNode
</ul>
Результат:<br>
адрес указателя на XMLDOMNodeList
#end
function XMLDOMNode_get_ChildNodes             (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
Чтение NodeType для узла "Node"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNode
</ul>
Результат:<br>
значение
#end
function XMLDOMNode_get_NodeType               (#TPtr)                   : integer; external 'G_ExpImp.dll';

#doc
Чтение NodeName для узла "Node"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNode
</ul>
Результат:<br>
значение
#end
function XMLDOMNode_get_NodeName               (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
Чтение NodeText для узла "Node" как короткую строку
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNode
</ul>
Результат:<br>
значение
#end
function XMLDOMNode_Get_text               (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
 Освобождение ссылки на XMLDOMNode
 </breaf>
 Параметры:
 <ul>
 <li>адрес указателя на узел
 <\ul>
 Результат:<br>
true - успешно, false - ошибка
#end
function XMLDOMNode_Release                    (#TPtr)                   : boolean; external 'G_ExpImp.dll';

#doc
Чтение Length для узла "NamedNodeMap"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNamedNodeMap
</ul>
Результат:<br>
значение
#end
function XMLDOMNamedNodeMap_get_Length         (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
Чтение Item для узла "NamedNodeMap"
</braef>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNamedNodeMap
<li>индекс
</ul>
Результат:<br>
адрес указателя на XMLDOMAttribute (Item[index])
#end
function XMLDOMNamedNodeMap_get_Item           (#TPtr, longint)          : #TPtr; external 'G_ExpImp.dll';


#doc
Чтение Length для узла "NodeList"
</breaf>
<br>
Параметры:<br>
<ul>
<li>адрес указателя на XMLDOMNodeList
</ul>
Результат:<br>
  значение
#end
function XMLDOMNodeList_get_Length             (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
Чтение Item для узла "NodeList"
</breaf>
Параметры:
<ul>
  <li>адрес указателя на XMLDOMNodeList
  <li>индекс
</ul>
Результат:<br>
  адрес указателя на XMLDOMNode (Item[index])
#end
function XMLDOMNodeList_get_Item               (#TPtr, longint)          : #TPtr; external 'G_ExpImp.dll';

#doc
Чтение списка элементов по TagName
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на DOMDocument
  <li>имя тэга
</ul>
Результат:<br>
  адрес указателя на XMLDOMNodeList
#end
function XMLDOMDoc_GetElementsByTagName        (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
Освобождение ссылки на DOMDocument
</breaf>
<br>
Параметры:
<ul>
  </li>адрес указателя на DOMDocument
</ul>
Результат:<br>
  true - успешно, false - ошибка
#end
function XMLDOMDoc_Done                        (#TPtr)                   : boolean; external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
#doc
  </brief>

  <p>
    Функция для инициализации структуры TMapiMessage.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Указатель на созданную структуру.
  </p>
#end
function InitMAPIMessage: longint; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Освобождает память, выделенную под структуру TMapiMessage.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>hMAPIMessage</code> - указатель на структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат освобождения памяти.
  </p>
#end
function DoneMAPIMessage(hMAPIMessage: longint): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Устанавливает тему письма(TMapiMessage.lpszSubject).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Subject</code> - тема письма;</li>
    <li><code>hMAPIMessage</code> - указатель на структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат установки темы сообщения.
  </p>
#end
function SetMAPIMessageSubject(Subject: string, hMAPIMessage: longint): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Устанавливает тип сообщения(TMapiMessage.lpszMessageType).
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Subject</code> - тип письма;</li>
    <li><code>hMAPIMessage</code> - указатель на структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат установки типа сообщения.
  </p>
#end
function SetMAPIMessageType(MessageType: string, hMAPIMessage: longint): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Добавляет в конец тела письма строку.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>BodyLine</code> - добавляемая строка;</li>
    <li><code>hMAPIMessage</code> - указатель на структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат добавления строки.
  </p>
#end
function AddStringToMailBody(BodyLine: string, hMAPIMessage: longint): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Добавляет E-Mail получателя письма.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>Name</code> - имя получателя;</li>
    <li><code>BodyLine</code> - E-Mail адрес получателя;</li>
    <li><code>hMAPIMessage</code> - указатель на структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат добавления получателя.
  </p>
#end
function AddRecipientToMail(Name: string, Address: string, hMAPIMessage: longint) : boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Привязывает файл к письму.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>PathName</code> - путь файла;</li>
    <li><code>FileName</code> - имя файла;</li>
    <li><code>hMAPIMessage</code> - указатель на структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат привязки файла к письму.
  </p>
#end
function AddAttachedFileToMail(PathName: string, FileName: string, hMAPIMessage: longint): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Отправляет письмо.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>hMAPIMessage</code> - указатель на заполненную структуру.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Результат отправки письма.
  </p>
#end
function SendGalMail(hMAPIMessage: longint): longint; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Возвращает версию и номер сборки операционной системы.
  </p>

  <h3>Возвращаемое значение:</h3>
  <p>
    Версия и номер сборки операционной системы.
  </p>
#end
function GetOsVersion : string; external 'G_ExpImp.dll';

function  _sGetPrivProf(string, string, string): string; external 'G_ExpImp.dll';
function  _lGetPrivProf(string, string, string): Longint; external 'G_ExpImp.dll';
procedure _WritePrivateProfileString(string, string, string, string); external 'G_ExpImp.dll';

function  Init_TableBufferService(var AnyType) : longint; external 'G_ExpImp.dll';
procedure Done_TableBufferService(longint); external 'G_ExpImp.dll';

function  Get_TableBuffer(longint, var AnyType) : boolean; external 'G_ExpImp.dll';
function  Set_TableField(longint, var AnyType, word, word) : boolean; external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
// ieFileFinder.pas
#doc
  </brief>

  <p>
    Находит файл по заданной маске.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSearchMask</code> - маска для поиска;</li>
    <li><code>pfSearchResult</code> - структура SearchResult.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность поиска файла. Результат поиска будет записан в pfSearchResult.
  </p>
#end
function FindFirstFile(sSearchMask: string , var pfSearchResult: anytype): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Найти следующий файл.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>pfSearchResult</code> - структура SearchResult.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность поиска файла. Результат поиска будет записан в pfSearchResult.
  </p>
#end
function FindNextFile(var anytype): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Находит файл на клиентской машине, по заданной маске.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>sSearchMask</code> - маска для поиска;</li>
    <li><code>pfSearchResult</code> - структура SearchResult.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность поиска файла. Результат поиска будет записан в pfSearchResult.
  </p>
#end
function FindFirstFileCli(string, var anytype): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Найти следующий файл на клиентской машине.
  </p>

  <h3>Параметры</h3>
  <ul>
    <li><code>pfSearchResult</code> - структура SearchResult.</li>
  </ul>

  <h3>Возвращаемое значение:</h3>
  <p>
    Успешность поиска файла. Результат поиска будет записан в pfSearchResult.
  </p>
#end
function FindNextFileCli(var anytype): boolean; external 'G_ExpImp.dll';
#doc
  </brief>

  <p>
    Освобождает память выделенную под pFileFinder
  </p>
#end
procedure DoneFileFinderCli; external 'G_ExpImp.dll';

#ifNdef Gal9_1
//------------------------------------------------------------------------------
// FastExpImp.pas
procedure FastExp(string); external 'G_ExpImp.dll';
procedure FastImp(string); external 'G_ExpImp.dll';
#end
