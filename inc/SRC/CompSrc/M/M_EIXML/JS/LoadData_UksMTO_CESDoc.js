/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий выгрузку заголовков ПСД из Excel-файла             ##
## в XML-файл в формате ГАЛАКТИКА-ERP                                         ##
##                                                                            ##
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
*/

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Глобальные переменные
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Параметр, используемый для определения соответствия данных обрабатываемого Excel-файла
// заданному типу
var gsSheetName = 'CESDoc';          // Наименование Excel-листа, содержащего данные для ПСД

//------------------------------------------------------------------------------
// Параметры, используемые для настройки выгружаемых файлов

var gliDataRowNmb_Begin = 4;         // Номер строки, с которой начинаются данные

var gliClnNmb_NoDoc    = 1;          // Номер колонки, соответствующей полю "Номер ПСД"
var gliClnNmb_KatStroy = 2;          // Номер колонки, соответствующей полю "Объект строительства"
var gliClnNmb_Org      = 3;          // Номер колонки, соответствующей полю "Проектная организация"

//------------------------------------------------------------------------------
//

// Объекты
var goExcel;                         // API-объект Excel
var goWorkBook;                      // Объект WorkBook
var goXMLFileGAL;                    // DOM-документ для формируемого XML-файла в
                                     //   формате ГАЛАКТИКА-ERP

// Handle узлов-коллекций в DOM-документе для формируемого XML-файла в формате ГАЛАКТИКА-ERP
var gliXMLFileGAL_Node_Clt_CESDoc;   // Handle узла-коллекции "Проектно-сметная документация"
var gliXMLFileGAL_Node_Clt_KatStroy; // Handle узла-коллекции "Объекты строительства"
var gliXMLFileGAL_Node_Clt_Org;      // Handle узла-коллекции "Организации"

//
var gliGlobID;                       // Глобальный идентификатор объектов

// Массив для сохранения объектов строительства
var gliKatStroyCount = 0;            // Количество объектов строительства
var gsaKatStroy_Code = new Array();  // Массив для сохранения значений поля "Код"

// Массив для сохранения организаций
var gliOrgCount = 0;                 // Количество организаций
var gsaOrg_Name = new Array();       // Массив для сохранения значений поля "Наименование"

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Функции получения идентификаторов объектов
// 
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Получение идентификатора объекта для объекта строительства:
//   asCode - Код
// Результат:
//   Идентификатор объекта

function GetObjID_KatStroy(asCode)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliKatStroyCount; i++)
    if (gsaKatStroy_Code[i] == asCode)
      return(i);

  //
  gliKatStroyCount = gliKatStroyCount + 1;
  gsaKatStroy_Code[gliKatStroyCount] = asCode;

  XMLFileGAL_AddKatStroy(false, gliKatStroyCount, asCode);
  
  return(gliKatStroyCount);
} // function GetObjID_KatStroy

//------------------------------------------------------------------------------
// Получение идентификатора объекта для организации:
//   asName - Наименование
// Результат:
//   Идентификатор объекта

function GetObjID_Org(asName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliOrgCount; i++)
    if (gsaOrg_Name[i] == asName)
      return(i);

  //
  gliOrgCount = gliOrgCount + 1;
  gsaOrg_Name[gliOrgCount] = asName;

  XMLFileGAL_AddOrg(false, gliOrgCount, asName);
  
  return(gliOrgCount);
} // function GetObjID_Org

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Базовые функции для работы с тэгами XML-файла
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Добавление тэга <Collection> (коллекция объектов) в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asCaption     - Значение атрибута "caption" для создаваемого тэга <Collection>
//   asName        - Значение атрибута "name" для создаваемого тэга <Collection>
//   asChildTags   - Значение атрибута "child_tags" для создаваемого тэга <Collection>

function XMLFileGAL_Add_Tag_Collection(aliParentNode, asCaption, asName, asChildTags)
{

// Локальные переменные
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  vliNode    = goXMLFileGAL.createElement('Collection');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'caption', asCaption);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'name', asName);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'child_tags', asChildTags);

  return(vliNodeAdd);
} // function XMLFileGAL_Add_Tag_Collection

//------------------------------------------------------------------------------
// Добавление тэга <Object> (объект) в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asName        - Значение атрибута "name" для создаваемого тэга <Object>
//   asClassId     - Значение атрибута "class_id" для создаваемого тэга <Object>
//   asId          - Значение атрибута "id" для создаваемого тэга <Object>

function XMLFileGAL_Add_Tag_Object(aliParentNode, asName, asClassId, asId)
{

// Локальные переменные
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  vliNode    = goXMLFileGAL.createElement('Object');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'name', asName);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'class_id', asClassId);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'id', asId);

  return(vliNodeAdd);
} // function XMLFileGAL_Add_Tag_Object

//------------------------------------------------------------------------------
// Добавление тэга <prop_value> (значение свойства) в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asPropName    - Значение атрибута "prop_name" для создаваемого тэга <prop_value>
//   asValue       - Значение атрибута "value" для создаваемого тэга <prop_value>
//   asRltClass    - Значение атрибута "rlt_class" для создаваемого тэга <prop_value>

function XMLFileGAL_Add_Tag_PropValue(aliParentNode, asPropName, asValue, asRltClass)
{

// Локальные переменные
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  vliNode    = goXMLFileGAL.createElement('prop_value');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'prop_name', asPropName);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'value', asValue);
  if (asRltClass != '')
    XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'rlt_class', asRltClass);

  return(vliNodeAdd);
} // function XMLFileGAL_Add_Tag_PropValue

//------------------------------------------------------------------------------
// Добавление аттрибута к тэгу в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliNode - Handle узла в DOM-документе, для которого добавляется атрибут
//   asName  - Наименование атрибута
//   asValue - Значение атрибута

function XMLFileGAL_Add_TagAttribute(aliNode, asName, asValue)
{

// Локальные переменные
var vliAttr; // Handle создаваемого атрибута в DOM-документе

  vliAttr = goXMLFileGAL.createAttribute(asName);
  vliAttr.value = asValue;
  aliNode.attributes.setNamedItem(vliAttr);
} // function XMLFileGAL_Add_TagAttribute

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Общие функции
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Добавление проектно-сметной документации в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asNoDoc       - Номер документа
//   asCKatStroy   - Ссылка на объект строительства
//   asCOrg        - Ссылка на проектную организацию
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddCESDoc(abCheckExists, asID, asNoDoc, asCKatStroy, asCOrg)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('CESDoc', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_CESDoc, 
    asNoDoc, 
    'CESDoc', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства',
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NoDoc'    , asNoDoc    , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cKatStroy', asCKatStroy, 'KatStroy');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cOrg'     , asCOrg     , 'Org');
  
  return(1);
} // function XMLFileGAL_AddCESDoc

//------------------------------------------------------------------------------
// Добавление объекта строительства в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asCode        - Код

function XMLFileGAL_AddKatStroy(abCheckExists, asID, asCode)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KatStroy', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_KatStroy,
    asCode,
    'KatStroy',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');

  return;
} // function XMLFileGAL_AddKatStroy

//------------------------------------------------------------------------------
// Добавление организации в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddOrg(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Org', asID))
      return(0);

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_Org,
    asName,
    'Org',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return(1);
} // function XMLFileGAL_AddOrg

//------------------------------------------------------------------------------
// Получение наименования объекта по его идентификатору
// Параметры:
//   asClassName - Наименование класса объекта
//   asObjId     - Идентификатор объекта
// Результат:
//   Наименование объекта (если объект не найден, то '')

function XMLFileGAL_CheckExistsObj(asClassName, asObjId)
{

// Локальные переменные
var vbResult; // Результат функции
var vliNodes; // Handle коллекции найденных объектов

  vliNodes = goXMLFileGAL.selectNodes("//Object[@class_id = '" + asClassName + "'][@id = '" + asObjId + "']/@name");
  vbResult = (vliNodes.length > 0);

  return(vbResult);
} // function XMLFileGAL_CheckExistsObj

//------------------------------------------------------------------------------
// Предварительная подготовка DOM-документа для загрузки данных

function XMLFileGAL_Prepare()
{

// Локальные переменные
var vliProcessingInstruction; // Handle создаваемой управляющей инструкции в DOM-документе
var vliComment;               // Handle создаваемого комментария в DOM-документе
var vliNode;                  // Handle создаваемого узла в DOM-документе
var vliNodeAdd;               // Handle созданного узла в DOM-документе после переподцепки
var vliDataRoot;              // Handle корневого узла <Data_Root> в DOM-документе
var vliData;                  // Handle узла <Data> в DOM-документе

  // Инициализация базовых параметров
  goXMLFileGAL.setProperty('SelectionLanguage', 'XPath');
  goXMLFileGAL.async           = true;
  goXMLFileGAL.validateOnParse = true;

  // Кодировка
  vliProcessingInstruction = goXMLFileGAL.createProcessingInstruction(
    'xml',
    'version="1.0" encoding="windows-1251"');

  goXMLFileGAL.insertBefore(vliProcessingInstruction, goXMLFileGAL.childNodes.item(0));

  // Комментарий
  vliComment = goXMLFileGAL.createComment('Copyright ЗАО "Корпорация Галактика"');
  goXMLFileGAL.appendChild(vliComment);

  // Создание корневого тэга <Data_Root>
  vliNode = goXMLFileGAL.createElement('Data_Root');
  vliDataRoot = goXMLFileGAL.appendChild(vliNode);

  // Создание тэга <Descript>
  vliNode = goXMLFileGAL.createElement('Descript');
  vliDataRoot.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNode, 'ExpSet_Code', '0');

  XMLFileGAL_Add_TagAttribute(vliNode, 'ExpSet_Name',
    'Файл получен путем выгрузки групп МЦ из Excel-файла');

  // Создание тэга <Data>
  vliNode = goXMLFileGAL.createElement('Data');
  vliData = vliDataRoot.appendChild(vliNode);

  //````````````````````````````````````````````````````````````````````````````
  // Создание тэгов-коллекций

  // Проверка прерывания процесса выполнения со стороны пользователя
  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // Корректировка заголовка окна визуализации
  SetVisualHeader('Создание тэгов-коллекций \n   \n   ');

  // Проектно-сметная документация
  gliXMLFileGAL_Node_Clt_CESDoc = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Проектно-сметная документация',
    'Data.CESDoc',
    'Object');

  // Объекты строительства
  gliXMLFileGAL_Node_Clt_KatStroy = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Объекты строительства',
    'Data.KatStroy',
    'Object');

  // Организации
  gliXMLFileGAL_Node_Clt_Org = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Организации',
    'Data.Org',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// Выгрузка данных в XML-файл

function XMLFileGAL_UnloadData()
{

// Локальные переменные
var i;             //
var vsNoDoc;       // Значение поля "Номер ПСД"
var vsKatStroy;    // Значение поля "Объект строительства"
var vsOrg;         // Значение поля "Проектная организация"
var vsKatStroy_ID; //
var vsOrg_ID;      //

  // Позиционирование на соответствующую вкладку
  for (i = 1; i < goWorkBook.WorkSheets.Count; i++)
    if (goWorkBook.WorkSheets(i).Name == gsSheetName)
    {
      goWorkBook.WorkSheets(i).Activate;
      break;
    }

  if (goWorkBook.ActiveSheet.Name != gsSheetName)
  {
    Message(
      'В файле "' + GetSrcFile() + '"\n' +
      'не найдена вкладка с именем "' + gsSheetName + '".\n' +
      'Данные для заголовков ПСД извлекаются только из указанной выше вкладки.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // Выгрузка данных
  i = gliDataRowNmb_Begin;

  do
  {
    // Проверка прерывания процесса выполнения со стороны пользователя
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsNoDoc = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_NoDoc).Value;
    vsKatStroy = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_KatStroy).Value;
    vsOrg = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Org).Value;

    if (
      (vsNoDoc == '') ||
      (vsNoDoc == null))
      break;

    // Получение идентификатора для объекта строительства
    if (vsKatStroy == null)
      vsKatStroy = '';

    if (vsKatStroy != '')
      vsKatStroy_ID = GetObjID_KatStroy(vsKatStroy);

    // Получение идентификатора для организации "Проектировщик"
    vsOrg_ID = '0';
    if (vsOrg == null)
      vsOrg = '';

    if (vsOrg != '')
      vsOrg_ID = GetObjID_Org(vsOrg);

    // Добавление ПСД
    gliGlobID = gliGlobID + 1;
    XMLFileGAL_AddCESDoc(true, gliGlobID, vsNoDoc, vsKatStroy_ID, vsOrg_ID);

    if (gliGlobID > 10000)
      break;

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Выгрузка данных в XML-файл \n Обработано строк: ' + (i - gliDataRowNmb_Begin) + ' \n   ');

    i = i + 1;
  }
  while (true);
} // function XMLFileGAL_UnloadData

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Формирование XML-файла в формате ГАЛАКТИКА-ERP
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Формирование XML-файла в формате ГАЛАКТИКА-ERP

function CreateXMLFileGAL()
{
  // Загрузка Excel
  SetVisualHeader('Загрузка Excel \n   \n   ');

  goExcel = new ActiveXObject('Excel.Application');
  goExcel.Visible = false;
  goWorkBook = goExcel.Workbooks.Open(GetSrcFile());

  // Загрузка DOM-документа для XML-файла в формате ГАЛАКТИКА-ERP
  SetVisualHeader('Загрузка DOM-документа \n   \n   ');
  goXMLFileGAL = new ActiveXObject('MSXML.DOMDocument');

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // Предварительная подготовка XML-файла в формате ГАЛАКТИКА-ERP
  SetVisualHeader('Предварительная подготовка XML-файла \n   \n   ');
  XMLFileGAL_Prepare();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // Выгрузка данных в XML-файл
  SetVisualHeader('Выгрузка данных в XML-файл \n   \n   ');
  XMLFileGAL_UnloadData();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // Сохранение данных в XML-файл
  SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
  goXMLFileGAL.save(GetXMLFile());

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // Закрытие Excel
  goWorkBook = null;
  goExcel.Quit();

  // Освобождение ресурсов
  SetVisualHeader('Освобождение ресурсов \n   \n   ');

  goXMLFileGAL = null;
  goExcel = null;
} // function CreateXMLFileGAL

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Начало выполнения скрипта
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

try
{
  // Старт окна визуализации процесса экспорта данных
  StartNewVisual(
    vtRotateVisual,
    vfTimer + vfBreak + vfConfirm,
    'Формирование XML-файла  \n' +
    '                                                                      ' +
    '                                                                      \n   ',
    50);

  // Инициализация глобальных переменных
  gliGlobID = 1;

  // Формирование XML-файла
  CreateXMLFileGAL();

  // Закрытие окна визуализации
  StopVisual('', 0);
} // try

catch(grdEvent)
{
  // Закрытие окна визуализации
  StopVisual('MAIN => ' + grdEvent.message, vfWait);
} // catch(grdEvent)
