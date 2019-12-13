/*
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
##                                                                           ##
## JavaScript, выполняющий заполнение списка идентификаторов экспортируемых  ##
## машиностроительных объектов из КПС "INTERMECH" в КИС "ГАЛАКТИКА-ERP".     ##
##                                                                           ##
## Запрос перечня машиностроительных обектов для экспорта осуществляется с   ##
## использованием функциональности SearchAPI                                 ##
##                                                                           ##
## Список идентификаторов экспортируемых машиностроительных объектов         ##
## сохраняется в протоколе экспорта-импорта для последующей обработки        ##
## GetEIProtocol()                                                           ##
## GetPickMode()                                                             ##
##                                                                           ##
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
*/

try
{

//-----------------------------------------------------------------------------
// Глобальные переменные

// Объекты
var goSearchAPI;                           // API-объект SearchAPI
var goConfigXML;                           // DOM-документ для конфигурациооного XML-файла

//
var gwPickMode;                            // Режим выбора машинострительных объектов:
                                           //   0 - с сохранением выбранных объектов в
                                           //       протоколе импорта
                                           //   1 - с сохранением выбранных объектов в
                                           //       конфигурационном XML-файле
var gbExistsConfigXMLFile;                 // Признак существования конфигурационного XML-файла
var gliDialogResult;                       // Результат закрытия диалогового окна
var gsConfigXMLFileName;                   // Имя конфигурационного XML-файла
var gliIMObjID_Count;                      // Количество выбранных идентификаторов машино-
                                           //   строительных объектов
var gliIMObjID_CurIndex;                   // Текущий индекс для выбранных идентификаторов
                                           //   машиностроительных объектов
var gliConfigXMLNode_sLocalList_IMObjID_1; // Handle узла, соответствующего параметру с именем
                                           //   "sLocalList_IMObjID_1" (Перечень идентификаторов
                                           //   машиностротельных объектов для экспорта)
//
var gsaValues;                             // Массив значений свойств

//-----------------------------------------------------------------------------
// Добавление тэга <item> (элемент списка) в конфигурационном XML-файл
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asValue       - Значение атрибута "value" для создаваемого тэга <parameter>
// Результат:
//   Handle созданного тэга <item>

function ConfigXML_AddTag_Item(aliParentNode, asValue)
{
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  vliNode    = goConfigXML.createElement('item');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  ConfigXML_AddTagAttribute(vliNodeAdd, 'value', asValue);

  return(vliNodeAdd);
} // function ConfigXML_AddTag_Item

//-----------------------------------------------------------------------------
// Добавление тэга <parameter> (параметр) в конфигурационном XML-файл
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asName        - Значение атрибута "name" для создаваемого тэга <parameter>
//   asValue       - Значение атрибута "value" для создаваемого тэга <parameter>
// Результат:
//   Handle созданного тэга <parameter>

function ConfigXML_AddTag_Parameter(aliParentNode, asName, asValue)
{
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  vliNode    = goConfigXML.createElement('parameter');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  ConfigXML_AddTagAttribute(vliNodeAdd, 'name', asName);
  ConfigXML_AddTagAttribute(vliNodeAdd, 'value', asValue);

  return(vliNodeAdd);
} // function ConfigXML_AddTag_Parameter

//-----------------------------------------------------------------------------
// Добавление аттрибута к тэгу в конфигурационный XML-файл
// Параметры:
//   aliNode - Handle узла в DOM-документе, для которого добавляется атрибут
//   asName  - Наименование атрибута
//   asValue - Значение атрибута

function ConfigXML_AddTagAttribute(aliNode, asName, asValue)
{
var vliAttr; // Handle создаваемого атрибута в DOM-документе

  vliAttr = goConfigXML.createAttribute(asName);
  vliAttr.value = asValue;
  aliNode.attributes.setNamedItem(vliAttr);
} // function ConfigXML_AddTagAttribute

//------------------------------------------------------------------------------
// Проверка корректности задания конфигурационного XML-файла
// Параметры:
//   asFileName - Имя конфигурационного XML-файла (включая путь и расширение '.xml')

function ConfigXML_CheckFileName(asFileName)
{
var voFileSystemObject; // Объект для работы с файлами
var voFile;             // Объект-файл

  // Проверка корректности имени файла
  if (asFileName.length < 5)
    throw new Error(5002, "INVALID_FILE_NAME");

  voFileSystemObject = new ActiveXObject("Scripting.FileSystemObject");

  // Проверка существования файла
  gbExistsConfigXMLFile = voFileSystemObject.FileExists(asFileName);

  // Если файл не существует, то предпринимается попытка его создани
  if (!gbExistsConfigXMLFile)
  {
    // Попытка создания текстового файла
    voFile = voFileSystemObject.CreateTextFile(asFileName, true);

    if (voFile == null)
      throw new Error(5001, "ACCESS_DENIDED");

    voFile.Close();

    // Удаление созданного файла (этот файл будет создан позже)
    voFileSystemObject.DeleteFile(asFileName, true);
  } // if (!gbExistsConfigXMLFile)

  // Проверка расширения файла (должно быть '.xml')
  if (asFileName.slice(asFileName.length - 4, asFileName.length).toUpperCase() != '.XML')
    throw new Error(5002, "INVALID_FILE_NAME");
} // function ConfigXML_CheckFileName

//-----------------------------------------------------------------------------
// Предварительная подготовка DOM-документа для использовани

function ConfigXML_Prepare()
{
var vliProcessingInstruction; // Handle создаваемой управляющей инструкции в DOM-документе
var vliComment;               // Handle создаваемого комментария в DOM-документе
var vliNode;                  // Handle создаваемого узла в DOM-документе
var vliNodeAdd;               // Handle созданного узла в DOM-документе после переподцепки
var vliNode_Config;           // Handle корневого узла <Config> в DOM-документе

  //
  goConfigXML.setProperty('SelectionLanguage', 'XPath');
  goConfigXML.async           = true;
  goConfigXML.validateOnParse = true;

  // Загрузка/заполнение конфигурационного XML-файла
  if (goConfigXML.load(gsConfigXMLFileName))
  {
    // Поиск корневого узла <Config>
    vliNode_Config = goConfigXML.selectSingleNode('Config');

    //
    if (vliNode_Config == null)
      if (goConfigXML.childNodes.length != 0)
        throw new Error(5000, 'INVALID_ROOT_ELEMENT');

    // Определение Handle узла, соответствующего параметру с именем "sLocalList_IMObjID_1"
    gliConfigXMLNode_sLocalList_IMObjID_1 = goConfigXML.selectSingleNode(
      'Config/parameter[@name = "sLocalList_IMObjID_1"]');

    // Создание узла, соответствующего параметру с именем "sLocalList_IMObjID_1"
    if (gliConfigXMLNode_sLocalList_IMObjID_1 == null)
      gliConfigXMLNode_sLocalList_IMObjID_1 = ConfigXML_AddTag_Parameter(
        vliNode_Config,
        'sLocalList_IMObjID_1',
        '');
  } // if (goConfigXML.load(gsConfigXMLFileName))
  else
  {
    // Если файл есть, но не загрузилс
    if (gbExistsConfigXMLFile)
      throw new Error(5000, "INVALID_ROOT_ELEMENT");

    // Кодировка
    vliProcessingInstruction = goConfigXML.createProcessingInstruction(
      'xml',
      'version="1.0" encoding="windows-1251"');
    
    goConfigXML.insertBefore(vliProcessingInstruction, goConfigXML.childNodes.item(0));
    
    // Комментарий
    vliComment = goConfigXML.createComment(
      ' \n' +
      'Copyright ЗАО "Корпорация Галактика" \n' +
      ' \n' +
      'Конфигурационный файл для программы SynchroFromIM.js, выполняющей синхронизацию \n' +
      'данных между "INTERMECH" и "ГАЛАКТИКА-ERP". \n' +
      ' \n' +
      'Если для параметра задано пустое значение (т.е. value=""), то значение \n' +
      'этого параметра берется из соответствующего алгоритма расчета, связанного \n' +
      'с пользовательской функцией, выполняющей импорт данных из "INTERMECH" в "ГАЛАКТИКА-ERP" \n' +
      '(выбор этой функции производится в программе SynchroFromIM.js) \n' +
      ' \n' +
      'Параметры: \n' +
      ' \n' +
      '1)  wRunMode - Режим выполнения алгоритма: \n' +
      '      0 - С отображением диалогового окна \n' +
      '      1 - Без отображения диалогового окна \n' +
      ' \n' +
      '2)  wFlChangeParams_1 - Изменение параметров для этапа № 1 во время выполнения: \n' +
      '      0 - Запрещено \n' +
      '      1 - Разрешено \n' +
      ' \n' +
      '3)  wAutoSaveParams_1 - Автосохранение значений параметров для этапа № 1 \n' +
      '    в DSK-файле: \n' +
      '      0 - Выключено \n' +
      '      1 - Включено \n' +
      ' \n' +
      '4)  wFlChange_sDirXMLFileIM_1 - Изменение каталога для формируемогоXML-файла \n' +
      '    в формате INTERMECH для этапа № 1: \n' +
      '      0 - Запрещено \n' +
      '      1 - Разрешено \n' +
      ' \n' +
      '5)  wFlChange_sXMLFileNameIM_1 - Изменение наименования формируемого XML-файла \n' +
      '    в формате INTERMECH для этапа № 1: \n' +
      '      0 - Запрещено \n' +
      '      1 - Разрешено \n' +
      ' \n' +
      '6)  wFlChangeParams_2 - Изменение параметров для этапа № 2во время выполнения: \n' +
      '      0- Запрещено \n' +
      '      1 - Разрешено \n' +
      ' \n' +
      '7)  wAutoSaveParams_2 -Автосохранение значений параметров для этапа № 2 в DSK-файле: \n' +
      '      0 - Выключено \n' +
      '      1- Включено \n' +
      ' \n' +
      '8)  wFlChange_sDirXMLFile_2 - Изменение каталога для формируемого XML-файла \n' +
      '    в формате ГАЛАКТИКА-ERP для этапа №2: \n' +
      '      0 -Запрещено \n' +
      '      1 - Разрешено \n' +
      ' \n' +
      '9)  wFlChange_sXMLFileName_2 - Изменение наименования формируемого XML-файла \n' +
      '    в формате ГАЛАКТИКА-ERP для этапа № 2: \n' +
      '      0 - Запрещено \n' +
      '      1 - Разрешено \n' +
      ' \n' +
      '10) wRunMode_1 - Режим выполнения этапа № 1: \n' +
      '      0 - Выгрузка данных из INTERMECH в XML-файл с помощью TechXMLDataExchange \n' +
      '      1 - Выгрузка данных из INTERMECH в XML-файл с помощью API \n' +
      '      2 - Использовать ранее сформированный XML-файл в формате INTERMECH \n' +
      '      3 - Пропустить выполнение данного этапа \n' +
      ' \n' +
      '11) sDirXMLFileIM_1 - Каталог для формируемого XML-файла в формате INTERMECH \n' +
      '    для этапа № 1 \n' +
      ' \n' +
      '12) sXMLFileNameIM_1 - Наименование формируемого XML-файла в формате INTERMECH \n' +
      '    (без расширения) для этапа № 1 \n' +
      ' \n' +
      '13) sDirXMLFileGAL_1 - Каталог для формируемого XML-файла в формате ГАЛАКТИКА-ERP \n' +
      '    для этапа № 1 \n' +
      ' \n' +
      '14) sXMLFileNameGAL_1- Наименование формируемого XML-файла в формате ГАЛАКТИКА-ERP \n' +
      '    (без расширения) для этапа № 1 \n' +
      ' \n' +
      '15) sXMLFileIM_1 - XML-файл в формате INTERMECH для этапа № 1 \n' +
      ' \n' +
      '16) wFlViewXMLFile_1 - Отображать сформированный на этапе №1 XML-файл: \n' +
      '      0 - Нет \n' +
      '      1 - Да \n' +
      ' \n' +
      '17) wRunModeTechXML_1 - Режим запуска модуля TechXMLDataExchange: \n' +
      '      0 - Экспорт НСИ \n' +
      '      1 - Экспорт машиностроительных объектов \n' +
      '      2 - Экспорт конструкторской информации \n' +
      '      3 - Экспорт конструкторско-технологической информации \n' +
      ' \n' +
      '18) sTuneFileTechXML_1 - Файл настройки экспорта данных для модуля \n' +
      '    TechXMLDataExchange \n' +
      ' \n' +
      '19) sLocalList_IMObjID_1 - Перечень идентификаторов машиностротельных объектов для экспорта \n' +
      ' \n' +
      '20) dtLastDateOfSynchro_1 - Дата выполнения последней синхронизации \n' +
      ' \n' +
      '21) wRunMode_2 - Режим выполнения этапа №2: \n' +
      '      0 -Формирование XML-файла ГАЛАКТИКА-ERP на основе XML-файла INTERMECH \n' +
      '      1 -Использовать ранее сформированный XML-файл в формате ГАЛАКТИКА-ERP \n' +
      ' \n' +
      '22) sDirXMLFileGAL_2 - Каталог для формируемого XML-файла в формате ГАЛАКТИКА-ERP \n' +
      '    для этапа № 2 \n' +
      ' \n' +
      '23) sXMLFileNameGAL_2 - Наименование формируемого XML-файла в формате ГАЛАКТИКА-ERP \n' +
      '    (без расширения)для этапа № 2 \n' +
      ' \n' +
      '24) sXMLFileGAL_2 - XML-файл в формате ГАЛАКТИКА-ERP для этапа № 2 \n' +
      ' \n' +
      '25) wFlViewXMLFile_2 -Отображать сформированный на этапе № 2 XML-файл: \n' +
      '      0 - Нет \n' +
      '      1 - Да \n');
    
    goConfigXML.appendChild(vliComment);
    
    // Создание корневого тэга <Config>
    vliNode = goConfigXML.createElement('Config');
    
    vliNode_Config = goConfigXML.appendChild(vliNode);
    
    // Создание узла, соответствующего параметру с именем "sLocalList_IMObjID_1"
    gliConfigXMLNode_sLocalList_IMObjID_1 = ConfigXML_AddTag_Parameter(
      vliNode_Config, 
      'sLocalList_IMObjID_1',
      '');
  } // else -> if (goConfigXML.load(gsConfigXMLFileName))
    
  // Удаление дочерних узлов для тэга, соответствующего параметру с именем 
  // "sLocalList_IMObjID_1"
  while(gliConfigXMLNode_sLocalList_IMObjID_1.childNodes.length != 0)
    gliConfigXMLNode_sLocalList_IMObjID_1.removeChild(
      gliConfigXMLNode_sLocalList_IMObjID_1.childNodes.item(0));  
    
  return;
} // function ConfigXML_Prepare

//-----------------------------------------------------------------------------
// Загрузка API-объекта
// Параметры:
//   aliNum - Код API-объекта:
//     1: SearchAPI

function LoadAPIObj(aliNum)
{
var vliWaitTime;             // Период ожидания загрузки объекта в миллисекундах
var voAPIObj;                // Ссылка на API-объект
var vdtStartLoadObjDateTime; // Дата-время начала загрузки объекта
var vdtCurrectDateTime;      // Текущее дата-время
var vbIsLogin;               // Признак загрузки объекта

  vliWaitTime = 20000; // 20 сек
  vdtStartLoadObjDateTime = new Date();
  vdtCurrectDateTime = new Date();

  switch(aliNum)
  {
    // Загрузка SearchAPI
    case 1:
    {
      voAPIObj = new ActiveXObject('s4.TS4App')

      while (
        (vbIsLogin != 1) &&
        (vdtCurrectDateTime - vdtStartLoadObjDateTime < vliWaitTime))
      {
        vbIsLogin = voAPIObj.Login();
        vdtCurrectDateTime = new Date();
      }

      if (vbIsLogin != 1)
        voAPIObj = null;

      break;
    } // case 1:

    default:
      break;
  } // switch(aliNum)

  return voAPIObj;
} // function LoadAPIObj

//------------------------------------------------------------------------------
// Поиск значения параметра в массиве
// Параметры:
//   asaArray           - Массив с параметрами и их значениями
//   aliParamNameIndex  - Индекс 2-го уровня для наименований параметров
//   aliParamValueIndex - Индекс 2-го уровня для значений параметров
//   asParamName        - Наименование параметра
// Результат:
//   Значение параметра (если параметр не найден в массиве, то пустая строка)

function SearchAPI_GetParamValueFromArray(asaArray, aliParamNameIndex,
  aliParamValueIndex, asParamName)
{

// Локальные переменные
var vsParamName; // Наименование параметра в верхнем регистре
var i;           // Переменная цикла
var vliLength;   // Размер массива по 1-му уровню

  vsParamName = asParamName.toUpperCase();
  vliLength = asaArray.length;

  for (i = 0; i < vliLength; i++)
  {
    if (vsParamName == asaArray[i][aliParamNameIndex].toUpperCase())
      return asaArray[i][aliParamValueIndex];
  }

  return '';
} // function SearchAPI_GetParamValueFromArray

//------------------------------------------------------------------------------
// Перенос наименований параметров и их значений из строки в массив
// Параметры:
//   asParamValStr - строка с наименованиями параметров и их значениями
// Результат:
//   Массив с наименованиями параметров и их значениями

function SearchAPI_SplitParams(asParamValStr)
{

// Локальные переменные
var i;          // Переменная цикла
var vsaValues1; // 1-уровневый массив
var vsaValues2; // 2-уровневый массив (результат функции)

  // Преобразование строки в массив с разделением по элементам, разделенным
  // символом '\n'
  vsaValues1 = asParamValStr.split('\n');

  vsaValues2 = new Array();

  for (i = 0; i < vsaValues1.length; i++)
  {
    // Дополнительная обработка (непонятно что за символ в конце остается)
    vsaValues1[i] = vsaValues1[i].substr(0, vsaValues1[i].length - 1);

    // Преобразование элемента массива vsaValues1 в массив с разделением по
    // элементам, разделенным символом '='
    vsaValues2[i] = vsaValues1[i].split('=');

    //
    if (vsaValues2[i][1] != null)
      if (vsaValues2[i][1]. substr(0, 1) == '"')
        vsaValues2[i][1] = vsaValues2[i][1].substr(1, vsaValues2[i][1].length);

    if (vsaValues2[i][1] != null)
      if (vsaValues2[i][1].substr(vsaValues2[i][1].length - 1, 1) == '"')
        vsaValues2[i][1] = vsaValues2[i][1].substr(0, vsaValues2[i][1].length - 1);
  } // for (i = 0; i < vsaValues1.length; i++)

  return vsaValues2;
} // function SearchAPI_SplitParams

//------------------------------------------------------------------------------
// Выбор машиностроительных объектов для сохранения в БД ГАЛАКТИКА-ERP
function PickIMObjects_0()
{

// Локальные переменные
var vsaValues;       // Массив значений свойств
var vsIMObjID;       // Идентификатор машиностроительного объекта
var vsValue_ObjName; // Значение свойства "Наименование"
var vsValue_ObjType; // Значение свойства "Тип объекта"
var vcEIProtocol;    // Ссылка на протокол импорта

  // Загрузка SearchAPI
  goSearchAPI = LoadAPIObj(1);

  // Запрос идентификаторов машиностроительных объектов
  goSearchAPI.StartSelectArticles();
  goSearchAPI.SelectArticles();

  // Получение ссылки на протокол импорта
  vcEIProtocol = GetEIProtocol();

  // Сохранение выбранных идентификаторов в конфигурационный XML-файл
  gliIMObjID_Count = goSearchAPI.SelectedArticlesCount();

  for (gliIMObjID_CurIndex = 0; gliIMObjID_CurIndex < gliIMObjID_Count; gliIMObjID_CurIndex++)
  {
    // Получение идентификатора текущего машиностроительного объекта
    vsIMObjID = goSearchAPI.GetSelectedArticleID(gliIMObjID_CurIndex);
  
    // Запрос значений свойств текущего машиностроительного объекта
    vsaValues = SearchAPI_SplitParams(goSearchAPI.GetArticleParams(vsIMObjID));
  
    // Получение значений свойств текущего машиностроительного объекта
    vsValue_ObjName = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Наименование');
    vsValue_ObjType = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Тип объекта');
    
    // Уточнение наименования типа машиностроительных объектов
    switch(vsValue_ObjType)
    {
  
      // Документация
      case '1':
      {
        vsValue_ObjType = 'Документация';
        break;
      } // case '1':

      // Комплексы
      case '2':
      {
        vsValue_ObjType = 'Комплексы';
        break;
      } // case '2':

      // Сборочные единицы
      case '3':
      {
        vsValue_ObjType = 'Сборочные единицы';
        break;
      } // case '3':

      // Детали
      case '4':
      {
        vsValue_ObjType = 'Детали';
        break;
      } // case '4':

      // Стандартные изделия
      case '5':
      {
        vsValue_ObjType = 'Стандартные изделия';
        break;
      } // case '5':

      // Прочие изделия
      case '6':
      {
        vsValue_ObjType = 'Прочие изделия';
        break;
      } // case '6':

      // Материалы
      case '7':
      {
        vsValue_ObjType = 'Материалы';
        break;
      } // case '7':

      // Комплекты
      case '8':
      {
        vsValue_ObjType = 'Комплекты';
        break;
      } // case '8':

      // Программные изделия
      case '9':
      {
        vsValue_ObjType = 'Программные изделия';
        break;
      } // case '9':

      // Комплектовочные
      case '99999998':
      {
        vsValue_ObjType = 'Комплектовочные';
        break;
      } // case '99999998':

      // Заказы
      case '99999999':
      {
        vsValue_ObjType = 'Заказы';
        break;
      } // case '99999999':

      // Оснастка
      case '100000001':
      {
        vsValue_ObjType = 'Оснастка';
        break;
      } // case '100000001':

      // Изделия
      case '100000003':
      {
        vsValue_ObjType = 'Изделия';
        break;
      } // case '100000003':

      default:
      {
        vsValue_ObjType = 'Тип данных ID=' + vsValue_ObjType;
        break;
      } // default
    } // switch(aliNum)
    
    // Сохранение объекта в протоколе импорта
    EIXML_AddEventInProt(
      vcEIProtocol, 
      0, 
      vsIMObjID + '\n' + vsValue_ObjType + '\n' + vsValue_ObjName);
  } // for (gliIMObjID_CurIndex = 0; gliIMObjID_CurIndex < gliIMObjID_Count; gliIMObjID_CurIndex++)

  return;
} // function PickIMObjects_0

//------------------------------------------------------------------------------
// Выбор машиностроительных объектов для сохранения в конфигурационном XML-файле
function PickIMObjects_1()
{
  // Считывание имени конфигурационного XML-файла из параметров командной строки
  gsConfigXMLFileName = 'SynchroFromIM_CFG.xml';

  if (WScript.Arguments.length > 0)
  {
    gsConfigXMLFileName = WScript.Arguments.Item(0); 

    if (
      (gsConfigXMLFileName == null) ||
      (gsConfigXMLFileName == ''))
      gsConfigXMLFileName = 'SynchroFromIM_CFG.xml';
  } // if (WScript.Arguments.length > 0)
  
  // Проверка корректности имени конфигурационного XML-файла
  ConfigXML_CheckFileName(gsConfigXMLFileName);

  // Загрузка DOM-документа для конфигурационного файла
  goConfigXML = new ActiveXObject('MSXML.DOMDocument');
  
  // Подготовка DOM-документа для использования
  ConfigXML_Prepare();
    
  // Загрузка SearchAPI
  goSearchAPI = LoadAPIObj(1);
  
  // Запрос идентификаторов машиностроительных объектов для экспорта
  // (для каждого типа машиностроительных объектов) и сохранение
  // этих идентификаторов в конфигурационный XML-файл
  do
  {
    // Запрос идентификаторов машиностроительных объектов
    goSearchAPI.StartSelectArticles();
    goSearchAPI.SelectArticles();
    
    // Сохранение выбранных идентификаторов в конфигурационный XML-файл
    gliIMObjID_Count = goSearchAPI.SelectedArticlesCount();
    
    for (gliIMObjID_CurIndex = 0; gliIMObjID_CurIndex < gliIMObjID_Count; gliIMObjID_CurIndex++)
      ConfigXML_AddTag_Item(
        gliConfigXMLNode_sLocalList_IMObjID_1, 
        goSearchAPI.GetSelectedArticleID(gliIMObjID_CurIndex));
    
    // Запрос выбора машиностроительных объектов другого типа
    gliDialogResult = Message(
      'Выбрать машиностроительные объекты другого типа?', 
      mfYesNo);
  } // do
  while (gliDialogResult != cmYes) // Пока пользователь не нажмет "Отмена"                              
  
  // Сохранение конфигурационного XML-файла
  goConfigXML.save(gsConfigXMLFileName);
  
  return;
} // function PickIMObjects_1

//------------------------------------------------------------------------------
// Начало выполнения скрипта

  // Установка режима работы
  gwPickMode = GetPickMode();
  
  // Запуск выбора машиностроительных объектов
  switch(gwPickMode)
  {
  
    // С сохранением выбранных объектов в протоколе импорта
    case '0':
    {
      PickIMObjects_0();
      break;
    } // case '0':

    // С сохранением выбранных объектов в конфигурационном XML-файле
    case '1':
    {
      PickIMObjects_1();
      break;
    } // case '1':

    default:
      break;
  } // switch(aliNum)

  // Освобождение ресурсов
  goSearchAPI.EndSelectArticles();
  goSearchAPI = null;
  goConfigXML = null;
} // try

// Обработка ошибок при выполнении скрипта
catch(e)
{
  switch (e.number)
  {

    default:
    {
      Message(e.message, 0);
      break;
    } // default:

  } // switch (e.number)
} // catch(e)
