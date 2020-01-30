/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий выгрузку позиций ПЗС из Excel-файла                ##
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
var gsSheetName = 'OCSPos';                     // Наименование Excel-листа, содержащего данные для позиций ПЗС

//------------------------------------------------------------------------------
// Параметры, используемые для настройки выгружаемых файлов

var gliDataRowNmb_Begin = 4;                    // Номер строки, с которой начинаются данные

var gliClnNmb_DocNmb                = 1;        // Номер колонки, соответствующей полю "Номер ПЗС"
var gliClnNmb_PID                   = 2;        // Номер колонки, соответствующей полю "PID ПЗС"
var gliClnNmb_SetPID                = 3;        // Номер колонки, соответствующей полю "PID контрактации"
var gliClnNmb_ProjectPID            = 4;        // Номер колонки, соответствующей полю "PID проекта"
var gliClnNmb_MainPID               = 5;        // Номер колонки, соответствующей полю "PID АК"
var gliClnNmb_BuildSubObjCode       = 6;        // Номер колонки, соответствующей полю "Код подъобъекта строительства"
var gliClnNmb_SSOAlbumPartCipher    = 7;        // Номер колонки, соответствующей полю "Шифр раздела альбома ССО"
var gliClnNmb_DogovorSMRNoDoc       = 8;        // Номер колонки, соответствующей полю "Номер договора СМР"
var gliClnNmb_MCName                = 9;        // Номер колонки, соответствующей полю "Краткое наименование МТР"
var gliClnNmb_dCount                = 10;       // Номер колонки, соответствующей полю "Объем поставок в уч.ЕИ"
var gliClnNmb_dCostNDS              = 11;       // Номер колонки, соответствующей полю "Цена за уч.ЕИ с НДС"
var gliClnNmb_ConsigneeOrgName      = 12;       // Номер колонки, соответствующей полю "Грузополучатель, отгрузочные реквизиты (организация)"
var gliClnNmb_ConsigneeMarPunktName = 13;       // Номер колонки, соответствующей полю "Грузополучатель, отгрузочные реквизиты (пункт маршрута)"
var gliClnNmb_ConsigneePersonFIO    = 14;       // Номер колонки, соответствующей полю "Грузополучатель, отгрузочные реквизиты (сотрудник, отв. за приемку)"
var gliClnNmb_DeliveryModeName      = 15;       // Номер колонки, соответствующей полю "Способ доставки"
var gliClnNmb_SupplyModeName        = 16;       // Номер колонки, соответствующей полю "Вид поставки"
var gliClnNmb_IsDelRec              = 17;       // Номер колонки, соответствующей полю "Признак удаления позиции"
var gliClnNmb_ExecutorFIO           = 18;       // Номер колонки, соответствующей полю "Отв. сотрудник"
var gliClnNmb_DeliveryPeriod        = 19;       // Номер колонки, соответствующей полю "Период поставки"
var gliClnNmb_dCount2               = 20;       // Номер колонки, соответствующей полю "Объем поставок в доп.ЕИ"
var gliClnNmb_dMainCost             = 21;       // Номер колонки, соответствующей полю "Цена Управления поставок"
var gliClnNmb_MCType                = 22;       // Номер колонки, соответствующей полю "Тип МТР"

//------------------------------------------------------------------------------
//

// Объекты
var goExcel;                                    // API-объект Excel
var goWorkBook;                                 // Объект WorkBook
var goXMLFileGAL;                               // DOM-документ для формируемого XML-файла в
                                                //   формате ГАЛАКТИКА-ERP

// Handle узлов-коллекций в DOM-документе для формируемого XML-файла в формате ГАЛАКТИКА-ERP
var gliXMLFileGAL_Node_Clt_Dogovor;             // Handle узла-коллекции "Договоры"
var gliXMLFileGAL_Node_Clt_KatStroy;            // Handle узла-коллекции "Объекты строительства"
var gliXMLFileGAL_Node_Clt_MC;                  // Handle узла-коллекции "Матценности"
var gliXMLFileGAL_Node_Clt_MoveCell;            // Handle узла-коллекции "Единицы подвижного состава"
var gliXMLFileGAL_Node_Clt_OCSDoc;              // Handle узла-коллекции "Пообъектные заказные спецификации"
var gliXMLFileGAL_Node_Clt_OCSPos;              // Handle узла-коллекции "Позиции ПЗС"
var gliXMLFileGAL_Node_Clt_Person;              // Handle узла-коллекции "Сотрудники"
var gliXMLFileGAL_Node_Clt_UKSConsignee;        // Handle узла-коллекции "Грузополучатели, отгрузочные реквизиты"
var gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart;     // Handle узла-коллекции "Разделы альбома ССО"
var gliXMLFileGAL_Node_Clt_UKSSupplyMode;       // Handle узла-коллекции "Виды поставки"

//
var gliGlobID;                                  // Глобальный идентификатор объектов

// Массив для сохранения договоров
var gliDogovorCount = 0;                        // Количество договоров
var gsaDogovor_NoDoc = new Array();             // Массив для сохранения значений поля "Номер документа"

// Массив для сохранения объектов строительства
var gliKatStroyCount = 0;                       // Количество объектов строительства
var gsaKatStroy_Code = new Array();             // Массив для сохранения значений поля "Код"

// Массив для сохранения матценностей
var gliMCCount = 0;                             // Количество матценностей
var gsaMC_Name = new Array();                   // Массив для сохранения значений поля "Наименование"

// Массив для сохранения единиц подвижного состава
var gliMoveCellCount = 0;                       // Количество единиц подвижного состава
var gsaMoveCell_Name = new Array();             // Массив для сохранения значений поля "Наименование"

// Массив для сохранения ПЗС
var gliOCSDocCount = 0;                         // Количество ПЗС
var gsaOCSDoc_DocNmb = new Array();             // Массив для сохранения значений поля "Номер документа"

// Массив для сохранения сотрудников
var gliPersonCount = 0;                         // Количество сотрудников
var gsaPerson_FIO = new Array();                // Массив для сохранения значений поля "ФИО"

// Массив для сохранения грузополучателей
var gliUKSConsigneeCount = 0;                   // Количество грузополучателей
var gsaUKSConsignee_OrgName = new Array();      // Массив для сохранения значений поля "Наименование организации-грузополучателя"
var gsaUKSConsignee_MarPunktName = new Array(); // Массив для сохранения значений поля "Наименование пункта маршрута"
var gsaUKSConsignee_PersonFIO = new Array();    // Массив для сохранения значений поля "ФИО сотрудника, отв. за приемку"

// Массив для сохранения разделов альбома ССО
var gliUKSSSOAlbumPartCount = 0;                // Количество разделов альбома ССО
var gsaUKSSSOAlbumPart_Cipher = new Array();    // Массив для сохранения значений поля "Шифр"  

// Массив для сохранения видов поставки
var gliUKSSupplyModeCount = 0;                  // Количество видов поставки
var gsaUKSSupplyMode_Name = new Array();        // Массив для сохранения значений поля "Наименование"

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
// Получение идентификатора объекта для договора:
//   asNoDoc - Номер документа
// Результат:
//   Идентификатор объекта

function GetObjID_Dogovor(asNoDoc)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliDogovorCount; i++)
    if (gsaDogovor_NoDoc[i] == asNoDoc)
      return(i);

  //
  gliDogovorCount = gliDogovorCount + 1;
  gsaDogovor_NoDoc[gliDogovorCount] = asNoDoc;

  XMLFileGAL_AddDogovor(false, gliDogovorCount, asNoDoc);
  
  return(gliDogovorCount);
} // function GetObjID_Dogovor

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
// Получение идентификатора объекта для матценности:
//   asName - Наименование
// Результат:
//   Идентификатор объекта

function GetObjID_MC(asName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliMCCount; i++)
    if (gsaMC_Name[i] == asName)
      return(i);

  //
  gliMCCount = gliMCCount + 1;
  gsaMC_Name[gliMCCount] = asName;

  XMLFileGAL_AddMC(false, gliMCCount, asName);
  
  return(gliMCCount);
} // function GetObjID_MC

//------------------------------------------------------------------------------
// Получение идентификатора объекта для единицы подвижного состава:
//   asName - Наименование
// Результат:
//   Идентификатор объекта

function GetObjID_MoveCell(asName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliMoveCellCount; i++)
    if (gsaMoveCell_Name[i] == asName)
      return(i);

  //
  gliMoveCellCount = gliMoveCellCount + 1;
  gsaMoveCell_Name[gliMoveCellCount] = asName;

  XMLFileGAL_AddMoveCell(false, gliMoveCellCount, asName);
  
  return(gliMoveCellCount);
} // function GetObjID_MoveCell

//------------------------------------------------------------------------------
// Получение идентификатора объекта для ПЗС:
//   asDocNmb - Номер документа
// Результат:
//   Идентификатор объекта

function GetObjID_OCSDoc(asDocNmb)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliOCSDocCount; i++)
    if (gsaOCSDoc_DocNmb[i] == asDocNmb)
      return(i);

  //
  gliOCSDocCount = gliOCSDocCount + 1;
  gsaOCSDoc_DocNmb[gliOCSDocCount] = asDocNmb;

  XMLFileGAL_AddOCSDoc(false, gliOCSDocCount, asDocNmb);
  
  return(gliOCSDocCount);
} // function GetObjID_OCSDoc

//------------------------------------------------------------------------------
// Получение идентификатора объекта для сотрудника:
//   asFIO - ФИО
// Результат:
//   Идентификатор объекта

function GetObjID_Person(asFIO)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliPersonCount; i++)
    if (gsaPerson_FIO[i] == asFIO)
      return(i);

  //
  gliPersonCount = gliPersonCount + 1;
  gsaPerson_FIO[gliPersonCount] = asFIO;

  XMLFileGAL_AddPerson(false, gliPersonCount, asFIO);
  
  return(gliPersonCount);
} // function GetObjID_Person

//------------------------------------------------------------------------------
// Получение идентификатора объекта для грузополучателя:
//   asOrgName      - Наименование организации-грузополучателя
//   asMarPunktName - Наименование пункта маршрута
//   asPersonFIO    - ФИО сотрудника, отв. за приемку
// Результат:
//   Идентификатор объекта

function GetObjID_UKSConsignee(asOrgName, asMarPunktName, asPersonFIO)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliUKSConsigneeCount; i++)
    if (
      (gsaUKSConsignee_OrgName[i]      == asOrgName) &&
      (gsaUKSConsignee_MarPunktName[i] == asMarPunktName) &&
      (gsaUKSConsignee_PersonFIO[i]    == asPersonFIO))
      return(i);

  //
  gliUKSConsigneeCount = gliUKSConsigneeCount + 1;
  gsaUKSConsignee_OrgName[gliUKSConsigneeCount]      = asOrgName;
  gsaUKSConsignee_MarPunktName[gliUKSConsigneeCount] = asMarPunktName;
  gsaUKSConsignee_PersonFIO[gliUKSConsigneeCount]    = asPersonFIO;

  XMLFileGAL_AddUKSConsignee(false, gliUKSConsigneeCount, asOrgName, asMarPunktName, asPersonFIO);
  
  return(gliUKSConsigneeCount);
} // function GetObjID_UKSConsignee

//------------------------------------------------------------------------------
// Получение идентификатора объекта для раздела альбома ССО:
//   asCipher - Шифр
// Результат:
//   Идентификатор объекта

function GetObjID_UKSSSOAlbumPart(asCipher)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliUKSSSOAlbumPartCount; i++)
    if (gsaUKSSSOAlbumPart_Cipher[i] == asCipher)
      return(i);

  //
  gliUKSSSOAlbumPartCount = gliUKSSSOAlbumPartCount + 1;
  gsaUKSSSOAlbumPart_Cipher[gliUKSSSOAlbumPartCount] = asCipher;

  XMLFileGAL_AddUKSSSOAlbumPart(false, gliUKSSSOAlbumPartCount, asCipher);
  
  return(gliUKSSSOAlbumPartCount);
} // function GetObjID_UKSSSOAlbumPart

//------------------------------------------------------------------------------
// Получение идентификатора объекта для вида поставки:
//   asName - Наименование
// Результат:
//   Идентификатор объекта

function GetObjID_UKSSupplyMode(asName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliUKSSupplyModeCount; i++)
    if (gsaUKSSupplyMode_Name[i] == asName)
      return(i);

  //
  gliUKSSupplyModeCount = gliUKSSupplyModeCount + 1;
  gsaUKSSupplyMode_Name[gliUKSSupplyModeCount] = asName;

  XMLFileGAL_AddUKSSupplyMode(false, gliUKSSupplyModeCount, asName);
  
  return(gliUKSSupplyModeCount);
} // function GetObjID_UKSSupplyMode

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
// Добавление договора в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asNoDoc       - Номер договора

function XMLFileGAL_AddDogovor(abCheckExists, asID, asNoDoc)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Dogovor', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_Dogovor,
    asNoDoc,
    'Dogovor',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NoDoc', asNoDoc, '');

  return;
} // function XMLFileGAL_AddDogovor

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
// Добавление матценности в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры: 
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMC(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vsName;                            //

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MC', asID))
      return(0);
  
  // Создание объекта
  vsName = asName;
  if (
    (vsName == null) || 
    (vsName == 0) || 
    (vsName == ''))
    vsName = '(id = ' + asID + ')';
  
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_MC, 
    vsName,
    'MC', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства', 
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', vsName, '');

  return(1);
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// Добавление единицы подвижного состава в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование

function XMLFileGAL_AddMoveCell(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MoveCell', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_MoveCell,
    asName,
    'MoveCell',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return;
} // function XMLFileGAL_AddMoveCell

//------------------------------------------------------------------------------
// Добавление пообъектной заказной спецификации в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asDocNmb      - Номер документа
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddOCSDoc(abCheckExists, asID, asDocNmb)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OCSDoc', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_OCSDoc, 
    asDocNmb, 
    'OCSDoc', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства',
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DocNmb', asDocNmb, '');
  
  return(1);
} // function XMLFileGAL_AddOCSDoc

//------------------------------------------------------------------------------
// Добавление позиции ПЗС в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры: 
//   abCheckExists    - Признак проверки существования объекта
//   asID             - Идентификатор
//   asСOCSDoc        - Ссылка на ПЗС
//   asPID            - PID ПЗС
//   asSetPID         - PID контрактации
//   asProjectPID     - PID проекта
//   asMainPID        - PID АК
//   asСBuildSubObj   - Ссылка на подъобъект строительства
//   asCSSOAlbumPart  - Ссылка на раздел альбома ССО
//   asCDogovorSMR    - Ссылка на договор СМР
//   asCMC            - Ссылка на МЦ
//   asdCount         - Объем поставок в уч.ЕИ
//   asdCostNDS       - Цена за уч.ЕИ с НДС
//   asCConsignee     - Ссылка на грузополучателя
//   asCDeliveryMode  - Ссылка на способ доставки
//   asCSupplyMode    - Ссылка на вид поставки
//   asIsDelRec       - Признак удаления позиции
//   asCExecutor      - Ссылка на отв. сотрудника
//   asDeliveryMonth  - Месяц периода поставки
//   asDeliveryYear   - Год периода поставки
//   asdCount2        - Объем поставок в доп.ЕИ
//   asdMainCost      - Цена Управления поставок
//   asMCType         - Тип МТР
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddOCSPos(abCheckExists, asID, asСOCSDoc, asPID, asSetPID, asProjectPID,
  asMainPID, asСBuildSubObj, asCSSOAlbumPart, asCDogovorSMR, asCMC, asdCount, asdCostNDS,
  asCConsignee, asCDeliveryMode, asCSupplyMode, asIsDelRec, asCExecutor, asDeliveryMonth,
  asDeliveryYear, asdCount2, asdMainCost, asMCType)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vsName;                            //

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OCSPos', asID))
      return(0);
  
  // Создание объекта
  vsName = 'PID ' + asPID;
  if (
    (vsName == null) || 
    (vsName == 0) || 
    (vsName == ''))
    vsName = '(id = ' + asID + ')';
  
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_OCSPos, 
    vsName,
    'OCSPos', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства', 
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cOCSDoc'      , asСOCSDoc      , 'OCSDoc');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PID'          , asPID          , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'SetPID'       , asSetPID       , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ProjectPID'   , asProjectPID   , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MainPID'      , asMainPID      , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cBuildSubObj' , asСBuildSubObj , 'KatStroy');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cSSOAlbumPart', asCSSOAlbumPart, 'UKSSSOAlbumPart');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDogovorSMR'  , asCDogovorSMR  , 'Dogovor');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMC'          , asCMC          , 'MC');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dCount'       , asdCount       , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dCostNDS'     , asdCostNDS     , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cConsignee'   , asCConsignee   , 'UKSConsignee');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDeliveryMode', asCDeliveryMode, 'MoveCell');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cSupplyMode'  , asCSupplyMode  , 'UKSSupplyMode');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'IsDelRec'     , asIsDelRec     , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cExecutor'    , asCExecutor    , 'Person');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DeliveryMonth', asDeliveryMonth, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DeliverYear'  , asDeliveryYear , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dCount2'      , asdCount2      , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dMainCost'    , asdMainCost    , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MCType'       , asMCType       , '');

  return(1);
} // function XMLFileGAL_AddOCSPos

//------------------------------------------------------------------------------
// Добавление сотрудника в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asFIO         - ФИО сотрудника

function XMLFileGAL_AddPerson(abCheckExists, asID, asFIO)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Person', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_Person,
    asFIO,
    'Person',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'FIO', asFIO, '');

  return;
} // function XMLFileGAL_AddPerson

//------------------------------------------------------------------------------
// Добавление грузополучателя в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists  - Признак проверки существования объекта
//   asID           - Идентификатор
//   asOrgName      - Наименование организации-грузополучателя
//   asMarPunktName - Наименование пункта маршрута
//   asPersonFIO    - ФИО сотрудника, отв. за приемку

function XMLFileGAL_AddUKSConsignee(abCheckExists, asID, asOrgName, asMarPunktName, asPersonFIO)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UKSConsignee', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UKSConsignee,
    asOrgName + ', ' + asMarPunktName + ', ' + asPersonFIO,
    'UKSConsignee',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'OrgName'     , asOrgName     , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MarPunktName', asMarPunktName, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PersonFIO'   , asPersonFIO   , '');

  return;
} // function XMLFileGAL_AddUKSConsignee

//------------------------------------------------------------------------------
// Добавление раздела альбома ССО в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asCipher      - Шифр

function XMLFileGAL_AddUKSSSOAlbumPart(abCheckExists, asID, asCipher)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UKSSSOAlbumPart', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart,
    asCipher,
    'UKSSSOAlbumPart',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Cipher', asCipher, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asCipher, '');

  return;
} // function XMLFileGAL_AddUKSSSOAlbumPart

//------------------------------------------------------------------------------
// Добавление вида поставки в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование

function XMLFileGAL_AddUKSSupplyMode(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UKSSupplyMode', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UKSSupplyMode,
    asName,
    'UKSSupplyMode',
    asID);

  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    'Свойства',
    'Prop_Values',
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return;
} // function XMLFileGAL_AddUKSSupplyMode

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

  // Договоры
  gliXMLFileGAL_Node_Clt_Dogovor = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Договоры',
    'Data.Dogovor',
    'Object');

  // Объекты строительства
  gliXMLFileGAL_Node_Clt_KatStroy = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Объекты строительства',
    'Data.KatStroy',
    'Object');

  // Матценности
  gliXMLFileGAL_Node_Clt_MC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Матценности',
    'Data.MC',
    'Object');

  // Единицы подвижного состава
  gliXMLFileGAL_Node_Clt_MoveCell = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Единицы подвижного состава',
    'Data.MoveCell',
    'Object');

  // Пообъектные заказные спецификации
  gliXMLFileGAL_Node_Clt_OCSDoc = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Пообъектные заказные спецификации',
    'Data.OCSDoc',
    'Object');

  // Позиции ПЗС
  gliXMLFileGAL_Node_Clt_OCSPos = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Позиции ПЗС',
    'Data.OCSPos',
    'Object');

  // Сотрудники
  gliXMLFileGAL_Node_Clt_Person = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Сотрудники',
    'Data.Person',
    'Object');

  // Грузополучатели, отгрузочные реквизиты
  gliXMLFileGAL_Node_Clt_UKSConsignee = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Грузополучатели, отгрузочные реквизиты',
    'Data.UKSConsignee',
    'Object');

  // Разделы альбома ССО
  gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Разделы альбома ССО',
    'Data.UKSSSOAlbumPart',
    'Object');

  // Виды поставки
  gliXMLFileGAL_Node_Clt_UKSSupplyMode = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Виды поставки',
    'Data.UKSSupplyMode',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// Выгрузка данных в XML-файл

function XMLFileGAL_UnloadData()
{

// Локальные переменные
var i;                       //
var vsDocNmb;                // Значение поля "Номер ПЗС"
var vsPID;                   // Значение поля "PID ПЗС"
var vsSetPID;                // Значение поля "PID контрактации"
var vsProjectPID;            // Значение поля "PID проекта"
var vsMainPID;               // Значение поля "PID АК"
var vsBuildSubObjCode;       // Значение поля "Код подъобъекта строительства"
var vsSSOAlbumPartCipher;    // Значение поля "Шифр раздела альбома ССО"
var vsDogovorSMRNoDoc;       // Значение поля "Номер договора СМР"
var vsMCName;                // Значение поля "Краткое наименование МТР"
var vsdCount;                // Значение поля "Объем поставок в уч.ЕИ"
var vsdCostNDS;              // Значение поля "Цена за уч.ЕИ с НДС"
var vsConsigneeOrgName;      // Значение поля "Грузополучатель, отгрузочные реквизиты (организация)"
var vsConsigneeMarPunktName; // Значение поля "Грузополучатель, отгрузочные реквизиты (пункт маршрута)"
var vsConsigneePersonFIO;    // Значение поля "Грузополучатель, отгрузочные реквизиты (сотрудник, отв. за приемку)"
var vsDeliveryModeName;      // Значение поля "Способ доставки"
var vsSupplyModeName;        // Значение поля "Вид поставки"
var vsIsDelRec;              // Значение поля "Признак удаления позиции"
var vsExecutorFIO;           // Значение поля "Отв. сотрудник"
var vsDeliveryPeriod;        // Значение поля "Период поставки"
var vsdCount2;               // Значение поля "Объем поставок в доп.ЕИ"
var vsdMainCost;             // Значение поля "Цена Управления поставок"
var vsMCType;                // Значение поля "Тип МТР"
//
var vsСOCSDoc;
var vsCBuildSubObj;
var vsCSSOAlbumPart;
var vsCDogovorSMR;
var vsCMC;
var vsCConsignee;
var vsCDeliveryMode;
var vsCSupplyMode;
var vsCExecutor;
var vsDeliveryMonth;
var vsDeliveryYear;

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
      'Данные для позиций ПЗС извлекаются только из указанной выше вкладки.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // Выгрузка данных
  i = gliDataRowNmb_Begin;

  do
  {
    // Проверка прерывания процесса выполнения со стороны пользователя
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsDocNmb                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_DocNmb).Value;
    vsPID                   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_PID).Value;
    vsSetPID                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_SetPID).Value;
    vsProjectPID            = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_ProjectPID).Value;
    vsMainPID               = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_MainPID).Value;
    vsBuildSubObjCode       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_BuildSubObjCode).Value;
    vsSSOAlbumPartCipher    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_SSOAlbumPartCipher).Value;
    vsDogovorSMRNoDoc       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_DogovorSMRNoDoc).Value;
    vsMCName                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_MCName).Value;
    vsdCount                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_dCount).Value;
    vsdCostNDS              = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_dCostNDS).Value;
    vsConsigneeOrgName      = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_ConsigneeOrgName).Value;
    vsConsigneeMarPunktName = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_ConsigneeMarPunktName).Value;
    vsConsigneePersonFIO    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_ConsigneePersonFIO).Value;
    vsDeliveryModeName      = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_DeliveryModeName).Value;
    vsSupplyModeName        = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_SupplyModeName).Value;
    vsIsDelRec              = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_IsDelRec).Value;
    vsExecutorFIO           = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_ExecutorFIO).Value;
    vsDeliveryPeriod        = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_DeliveryPeriod).Value;
    vsdCount2               = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_dCount2).Value;
    vsdMainCost             = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_dMainCost).Value;
    vsMCType                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_MCType).Value;

    if (
      (vsDocNmb == '') ||
      (vsDocNmb == null))
      break;

    //
    vsBuildSubObjCode = vsBuildSubObjCode.replace(/^\s+/,'').replace(/\s+$/,'');

    //
    vsSSOAlbumPartCipher = vsSSOAlbumPartCipher.substring(0, 60);

    //
    if (
      (vsIsDelRec == null) ||
      (vsIsDelRec == '')) 
      vsIsDelRec = '0'
    else
      vsIsDelRec = '1';

    //
    if (vsMCType == 'М')
      vsMCType = '1'
    else
      vsMCType = '0';

    //
    vsDeliveryMonth = '1';
    vsDeliveryYear = '0';

    if (
      (vsDeliveryPeriod != null) &&
      (vsDeliveryPeriod != '')) 
    {
      vsDeliveryMonth = vsDeliveryPeriod.substring(3, 2);
      vsDeliveryYear  = vsDeliveryPeriod.substring(6, 4);
    }

    // Получение идентификатора для ПЗС
    vsСOCSDoc = GetObjID_OCSDoc(vsDocNmb);

    // Получение идентификатора для объекта строительства
    vsCBuildSubObj = '0';

    if (vsBuildSubObjCode == null)
      vsBuildSubObjCode = '';

    if (vsBuildSubObjCode != '')
      vsCBuildSubObj = GetObjID_KatStroy(vsBuildSubObjCode);

    // Получение идентификатора для раздела альбома ССО
    vsCSSOAlbumPart = '0';

    if (vsSSOAlbumPartCipher == null)
      vsSSOAlbumPartCipher = '';

    if (vsSSOAlbumPartCipher != '')
      vsCSSOAlbumPart = GetObjID_UKSSSOAlbumPart(vsSSOAlbumPartCipher);

    // Получение идентификатора для договора
    vsCDogovorSMR = '0';

    if (vsDogovorSMRNoDoc == null)
      vsDogovorSMRNoDoc = '';

    if (vsDogovorSMRNoDoc != '')
      vsCDogovorSMR = GetObjID_Dogovor(vsDogovorSMRNoDoc);

    // Получение идентификатора для матценности
    vsCMC = '0';

    if (vsMCName == null)
      vsMCName = '';

    if (vsMCName != '')
      vsCMC = GetObjID_MC(vsMCName);

    // Получение идентификатора для грузополучателя
    vsCConsignee = '0';

    if (vsConsigneeOrgName == null)
      vsConsigneeOrgName = '';

    if (vsConsigneeMarPunktName == null)
      vsConsigneeMarPunktName = '';

    if (vsConsigneePersonFIO == null)
      vsConsigneePersonFIO = '';

    if (
      (vsConsigneeOrgName != '') &&
      (vsConsigneeMarPunktName != '') &&
      (vsConsigneePersonFIO != ''))
      vsCConsignee = GetObjID_UKSConsignee(
        vsConsigneeOrgName, 
        vsConsigneeMarPunktName, 
        vsConsigneePersonFIO);

    // Получение идентификатора для способа доставки
    vsCDeliveryMode = '0';

    if (vsDeliveryModeName == null)
      vsDeliveryModeName = '';

    if (vsDeliveryModeName != '')
      vsCDeliveryMode = GetObjID_MoveCell(vsDeliveryModeName);

    // Получение идентификатора для вида поставки
    vsCSupplyMode = '0';

    if (vsSupplyModeName == null)
      vsSupplyModeName = '';

    if (vsSupplyModeName != '')
      vsCSupplyMode = GetObjID_UKSSupplyMode(vsSupplyModeName);

    // Получение идентификатора для ответственного исполнителя
    vsCExecutor = '0';

    if (vsExecutorFIO == null)
      vsExecutorFIO = '';

    if (vsExecutorFIO != '')
      vsCExecutor = GetObjID_Person(vsExecutorFIO);

    // Добавление позиции ПЗС
    gliGlobID = gliGlobID + 1;

    XMLFileGAL_AddOCSPos(
      false, 
      gliGlobID, 
      vsDocNmb,
      vsPID,
      vsSetPID,
      vsProjectPID,
      vsMainPID,
      vsCBuildSubObj,
      vsCSSOAlbumPart,
      vsCDogovorSMR,
      vsCMC,
      vsdCount,
      vsdCostNDS,
      vsCConsignee,
      vsCDeliveryMode,
      vsCSupplyMode,
      vsIsDelRec,
      vsCExecutor,
      vsDeliveryMonth,
      vsDeliveryYear,
      vsdCount2,
      vsdMainCost,
      vsMCType);

    if (gliGlobID > 100000)
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
