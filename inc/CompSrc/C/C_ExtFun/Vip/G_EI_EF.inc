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
function  TemporaryDirectory                             : string;  external 'G_ExpImp.dll';
procedure GetFileInfo          ( string, var date, var time, var longint ); external 'G_ExpImp.dll';
function  SaveTuneToFile       ( comp, string )          : boolean; external 'G_ExpImp.dll';
function  RestoreTuneFromFile  ( string, word, word )    : comp;    external 'G_ExpImp.dll';
function  IsEmptyMemo          ( var anytype )           : boolean; external 'G_ExpImp.dll';
function  ExtractFormName      ( string )                : string;  external 'G_ExpImp.dll';
function  LoadResource         ( string )                : boolean; external 'G_ExpImp.dll';
function  ieTextFormInit       ( comp, string )          : integer; external 'G_ExpImp.dll';
procedure ieTextFormDone;                                           external 'G_ExpImp.dll';
function  ieTextFormFindFirstRecord ( boolean )          : boolean; external 'G_ExpImp.dll';
function  ieTextFormFindNextRecord  ( boolean )          : boolean; external 'G_ExpImp.dll';
function  ieTextFormImportField     ( boolean, word, var anytype ) : boolean; external 'G_ExpImp.dll';
function  ieTextFormSetFileName     ( string )           : boolean; external 'G_ExpImp.dll';
function  ieTextFormValidTopology   ( comp )             : boolean; external 'G_ExpImp.dll';
function  ieTextFormNumberOfRecords                      : longint; external 'G_ExpImp.dll';
function  GroupOfWords         ( string, string )        : string;  external 'G_ExpImp.dll';
function  GroupOfWordsFrom     ( string, string, string, string, string, string ) : string;  external 'G_ExpImp.dll';
function  GroupOfWordsRem      ( string, string )        : string;  external 'G_ExpImp.dll';
function  GroupOfWordsFromRem  ( string, string, string, string, string, string ) : string;  external 'G_ExpImp.dll';
function  GetBoundedSubString  ( string, char, char, byte ) : string;  external 'G_ExpImp.dll';
function  UndoFileName         ( string )                : string;  external 'G_ExpImp.dll';
function  CurrencyName         ( comp )                  : string;  external 'G_ExpImp.dll';
function  DelClassVal          ( boolean )               : integer; external 'G_ExpImp.dll';
function  DelAttrVal           ( boolean )               : integer; external 'G_ExpImp.dll';
function  FileExist            ( string )                : boolean; external 'G_ExpImp.dll';
function  IsDirectory          ( string )                : boolean; external 'G_ExpImp.dll';
function  CreateUniqueFileName ( string )                : string;  external 'G_ExpImp.dll';
function  AddSlashToPath       ( string )                : string;  external 'G_ExpImp.dll';
function  VerifyPathName       ( string , boolean)       : boolean; external 'G_ExpImp.dll';
function  StartPathName                                  : string;  external 'G_ExpImp.dll';
function  ExtractDelimitedWord ( string, byte, string )  : string;  external 'G_ExpImp.dll';
function  ParseWord ( string, byte, char )               : string;  external 'G_ExpImp.dll';
function  GetEnvString         ( string )                : string;  external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
// Xml_Func.pas
#doc
  Инициализация и возврат указателя на XMLDoc
#end
function XML_New                                                       : longint; external 'G_ExpImp.dll';

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
function XML_LoadDoc      (longint, string)                            : boolean; external 'G_ExpImp.dll';

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
function XML_FindFirstDoc (longint, longint, comp, comp)               : longint; external 'G_ExpImp.dll';

#doc
Поиск следующего загружаемого документа из XML-файла
</breaf>
<br>
Параметры:
<ul>
  <li>адрес указателя на XML-документ
  <li>ссылка на главный узел документа
  <li>адрес указателя на гл. узел док-та
  <li>ссылка на дочерний узел документа
</ul>
<br>
Результат:<br>
  адрес указателя на гл. узел документа
#end
function XML_FindNextDoc  (longint, longint, comp, comp)               : longint; external 'G_ExpImp.dll';

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
function ImportXMLField   (longint, comp, longint, comp)               : string;  external 'G_ExpImp.dll';

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
function XML_Done         (longint)                                    : boolean; external 'G_ExpImp.dll';

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
function InitXML_Doc      (longint, comp)                              : longint; external 'G_ExpImp.dll';

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
function XML_NewNode      (longint, longint, longint ,string)          : longint; external 'G_ExpImp.dll';

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

function ExportXMLField   (longint, longint, comp ,string)             : boolean; external 'G_ExpImp.dll';

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
function XML_SaveAs       (longint, longint, longint ,longint, string) : boolean; external 'G_ExpImp.dll';

function XML_FillMeta     (longint, comp)                              : boolean; external 'G_ExpImp.dll';
function XML_GetRoot      (longint)                                    : longint; external 'G_ExpImp.dll';
function XML_Release      (longint)                                    : boolean; external 'G_ExpImp.dll';
//------------------------------------------------------------------------------
// XMLDOMFunc.pas

#doc
Инициализация и возврат указателя на PMemoStream
Результат:<br>
адрес указателя на PMemoStream
#end
Function MemoryStream_Init : longint;         external 'G_ExpImp.dll';
#doc
Освобождение ссылки на PMemoStream
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на PMemoStream
</ul>
#end
Function MemoryStream_Done (longint) : boolean; external 'G_ExpImp.dll';
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
Function MemoryStream_Write(longint, string) : boolean; external 'G_ExpImp.dll';
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
Function MemoryStream_Read(longint, longint, var string) : boolean; external 'G_ExpImp.dll';
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
Function MemoryStream_Seek(longint, longint) : boolean; external 'G_ExpImp.dll';
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
Function MemoryStream_Truncate(longint) : boolean; external 'G_ExpImp.dll';
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
Function MemoryStream_GetPos(longint) : longint; external 'G_ExpImp.dll';


#doc
Инициализация и возврат указателя на DOMDocument
</breaf>
Результат:<br>
адрес указателя на XML-DOMDocument
#end
function XMLDOMDoc_New                                                     : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_Load                        (longint, string)           : boolean; external 'G_ExpImp.dll';

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
function XMLDOMDoc_Save                        (longint, string)           : boolean; external 'G_ExpImp.dll';

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
function XMLDOMDoc_DocumentElement             (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateNode                  (longint, integer, string)  : longint; external 'G_ExpImp.dll';
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
function XMLDOMDoc_CreateAttribute             (longint, string)           : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateCDataSection          (longint, string)           : longint; external 'G_ExpImp.dll';

#doc
Создание узла "Comment"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>текст комментария
Результат:<br>
адрес указателя на XMLDOMComment
#end
function XMLDOMDoc_CreateComment               (longint, string)           : longint; external 'G_ExpImp.dll';

#doc
Создание узла "Comment"
</breaf>
<br>
Параметры:
<ul>
<li>адрес указателя на DOMDocument
<li>текст комментария (более 255 символов)
Результат:<br>
адрес указателя на XMLDOMComment
#end
function XMLDOMDoc_CreateCommentEx               (longint, var anytype)           : longint; external 'G_ExpImp.dll';


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
function XMLDOMDoc_CreateDocumentFragment      (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateElement               (longint, string)           : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateEntityReference       (longint, string)           : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateProcessingInstruction (longint, string, string)   : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateTextNode              (longint, string)           : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_CreateTextNodeEx            (longint, var anytype)           : longint; external 'G_ExpImp.dll';

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
function XMLDOMAttribute_get_NodeValue         (longint)                   : string;  external 'G_ExpImp.dll';

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
function XMLDOMAttribute_set_NodeValue         (longint, string)           : boolean; external 'G_ExpImp.dll';

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
function XMLDOMAttribute_set_NodeValueEx         (longint, var anytype)           : boolean; external 'G_ExpImp.dll';

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
function XMLDOMCDataSection_AppendData         (longint, string)           : boolean; external 'G_ExpImp.dll';

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
function XMLDOMCDataSection_get_Length         (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMCDataSection_get_NodeValue      (longint)                   : string;  external 'G_ExpImp.dll';

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
function XMLDOMCDataSection_set_NodeValue      (longint, string)           : boolean; external 'G_ExpImp.dll';

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
function XMLDOMCDataSection_SubstringData      (longint, longint, longint) : string;  external 'G_ExpImp.dll';

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
function XMLDOMElement_SetAttribute            (longint, string, string)   : boolean; external 'G_ExpImp.dll';

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
function XMLDOMElement_SetAttributeEx            (longint, string, var anytype)   : boolean; external 'G_ExpImp.dll';

#doc
Текст для узла
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNote
<li>значение
</ul>
#end
procedure XMLDOMNode_Set_Text            (longint, var anytype); external 'G_ExpImp.dll';

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
function XMLDOMNode_AppendChild                (longint, longint)          : longint; external 'G_ExpImp.dll';

#doc
Чтение Attributes для узла "Node"
</breaf>
Параметры:
<ul>
<li>адрес указателя на XMLDOMNode
Результат:<br>
адрес указателя на XMLDOMNodeList
#end
function XMLDOMNode_get_Attributes             (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMNode_get_ChildNodes             (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMNode_get_NodeType               (longint)                   : integer; external 'G_ExpImp.dll';

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
function XMLDOMNode_get_NodeName               (longint)                   : string;  external 'G_ExpImp.dll';

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
function XMLDOMNode_Release                    (longint)                   : boolean; external 'G_ExpImp.dll';

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
function XMLDOMNamedNodeMap_get_Length         (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMNamedNodeMap_get_Item           (longint, longint)          : longint; external 'G_ExpImp.dll';


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
function XMLDOMNodeList_get_Length             (longint)                   : longint; external 'G_ExpImp.dll';

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
function XMLDOMNodeList_get_Item               (longint, longint)          : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_GetElementsByTagName        (longint, string)           : longint; external 'G_ExpImp.dll';

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
function XMLDOMDoc_Done                        (longint)                   : boolean; external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
function InitMAPIMessage : longint; external 'G_ExpImp.dll';
function DoneMAPIMessage(longint) : boolean; external 'G_ExpImp.dll';
function SetMAPIMessageSubject(string, longint) : boolean; external 'G_ExpImp.dll';
function SetMAPIMessageType(string, longint) : boolean; external 'G_ExpImp.dll';
function AddStringToMailBody(string, longint) : boolean; external 'G_ExpImp.dll';
function AddRecipientToMail(string, string, longint) : boolean; external 'G_ExpImp.dll';
function AddAttachedFileToMail(string, string, longint) : boolean; external 'G_ExpImp.dll';
function SendGalMail(longint) : longint; external 'G_ExpImp.dll';
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
function  FindFirstFile        ( string , var anytype )  : boolean; external 'G_ExpImp.dll';
function  FindNextFile         ( var anytype )           : boolean; external 'G_ExpImp.dll';
function  FindFirstFileCli     ( string , var anytype )  : boolean; external 'G_ExpImp.dll';
function  FindNextFileCli      ( var anytype )           : boolean; external 'G_ExpImp.dll';
procedure DoneFileFinderCli;                                        external 'G_ExpImp.dll';

#ifNdef Gal9_1
//------------------------------------------------------------------------------
// FastExpImp.pas
procedure FastExp(string); external 'G_ExpImp.dll';
procedure FastImp(string); external 'G_ExpImp.dll';
#end