/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий выгрузку МЦ из Excel-файла                         ##
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
var gsSheetName = 'KatMC';            // Наименование Excel-листа, содержащего данные для МЦ

//------------------------------------------------------------------------------
// Параметры, используемые для настройки выгрузки данных
// Если какое-либо объявление переменной закомментировано, то эта переменная должна 
// быть объявлена на соответствующей вкладке алгоритма JavaScript

var gliDataRowNmb_Begin = 4;          // Номер строки, с которой начинаются данные

var gliClnNmb_Name        = 1;        // Номер колонки, соответствующей полю "Наименование"
var gliClnNmb_FName       = 2;        // Номер колонки, соответствующей полю "Полное наименование"
var gliClnNmb_GroupMC     = 3;        // Номер колонки, соответствующей полю "Основная группа МТР"
var gliClnNmb_GroupMTR    = 15;       // Номер колонки, соответствующей полю "Группа МТР"
var gliClnNmb_Prizn       = 17;       // Номер колонки, соответствующей полю "Признак"
var gliClnNmb_CT_Diameter = 4;        // Номер колонки, соответствующей полю "Диаметр трубы, D mm"
var gliClnNmb_CT_TS       = 5;        // Номер колонки, соответствующей полю "Толщина стенки трубы, S mm"
var gliClnNmb_CT_ClassP   = 6;        // Номер колонки, соответствующей полю "Класс прочности"
var gliClnNmb_CT_LevelK   = 7;        // Номер колонки, соответствующей полю "Уровень качества"
var gliClnNmb_CT_RabD     = 8;        // Номер колонки, соответствующей полю "Рабочее давление"
var gliClnNmb_CT_MinTS    = 9;        // Номер колонки, соответствующей полю "Минимальная температура стенки нефтепровода"
var gliClnNmb_CT_Sejs     = 10;       // Номер колонки, соответствующей полю "Сейсмичность, баллов"
var gliClnNmb_CT_TipIz    = 11;       // Номер колонки, соответствующей полю "Тип изоляции"
var gliClnNmb_CT_TIz      = 12;       // Номер колонки, соответствующей полю "Толщина изоляции, мм"
var gliClnNmb_TipMarka    = 13;       // Номер колонки, соответствующей полю "Тип, марка"
var gliClnNmb_EdAbbr      = 14;       // Номер колонки, соответствующей полю "Ед.изм."
var gliClnNmb_Ed2Abbr     = 18;       // Номер колонки, соответствующей полю "Доп.единица"

var gsMaskMC_TP_Name = 'Трубная продукция';                // Наименование шаблона МЦ для трубной продукции
var gsGrpAn_TP_Name  = 'Характеристики трубной продукции'; // Наименование группы аналитик для трубной продукции

//
var gsKAU_GroupMTR = '10009';         // КАУ аналитики "Группа МТР"
var gsKAUName_GroupMTR = 'Группа МТР';

// Порядковые номера аналитик в группе аналитик для трубной продукции
var gsAnNmb_CT_Diameter = '1';        // Порядковый номер аналитики "Диаметр трубы, D mm"
var gsAnNmb_CT_TS       = '2';        // Порядковый номер аналитики "Толщина стенки трубы, S mm"
var gsAnNmb_CT_ClassP   = '3';        // Порядковый номер аналитики "Класс прочности"
var gsAnNmb_CT_LevelK   = '4';        // Порядковый номер аналитики "Уровень качества"
var gsAnNmb_CT_RabD     = '5';        // Порядковый номер аналитики "Рабочее давление"
var gsAnNmb_CT_MinTS    = '6';        // Порядковый номер аналитики "Минимальная температура стенки нефтепровода"
var gsAnNmb_CT_Sejs     = '7';        // Порядковый номер аналитики "Сейсмичность, баллов"
var gsAnNmb_CT_TipIz    = '8';        // Порядковый номер аналитики "Тип изоляции"
var gsAnNmb_CT_TIz      = '9';        // Порядковый номер аналитики "Толщина изоляции, мм"

// КАУ аналитик в группе аналитик для трубной продукции
var gsKAU_CT_Diameter = '10000';      // КАУ аналитики "Диаметр трубы, D mm"
var gsKAU_CT_TS       = '10001';      // КАУ аналитики "Толщина стенки трубы, S mm"
var gsKAU_CT_ClassP   = '10002';      // КАУ аналитики "Класс прочности"
var gsKAU_CT_LevelK   = '10003';      // КАУ аналитики "Уровень качества"
var gsKAU_CT_RabD     = '10004';      // КАУ аналитики "Рабочее давление"
var gsKAU_CT_MinTS    = '10005';      // КАУ аналитики "Минимальная температура стенки нефтепровода"
var gsKAU_CT_Sejs     = '10006';      // КАУ аналитики "Сейсмичность, баллов"
var gsKAU_CT_TipIz    = '10007';      // КАУ аналитики "Тип изоляции"
var gsKAU_CT_TIz      = '10008';      // КАУ аналитики "Толщина изоляции, мм"

// Наименования аналитик (для дополнительной информации) в группе аналитик для трубной продукции
var gsKAUName_CT_Diameter = 'Диаметр трубы, D mm';
var gsKAUName_CT_TS       = 'Толщина стенки трубы, S mm';
var gsKAUName_CT_ClassP   = 'Класс прочности';
var gsKAUName_CT_LevelK   = 'Уровень качества';
var gsKAUName_CT_RabD     = 'Рабочее давление';
var gsKAUName_CT_MinTS    = 'Минимальная температура стенки нефтепровода';
var gsKAUName_CT_Sejs     = 'Сейсмичность, баллов';
var gsKAUName_CT_TipIz    = 'Тип изоляции';
var gsKAUName_CT_TIz      = 'Толщина изоляции, мм';

//------------------------------------------------------------------------------
//

// Объекты
var goExcel;                          // API-объект Excel
var goWorkBook;                       // Объект WorkBook
var goXMLFileGAL;                     // DOM-документ для формируемого XML-файла в
                                      //   формате ГАЛАКТИКА-ERP

// Handle узлов-коллекций в DOM-документе для формируемого XML-файла в формате ГАЛАКТИКА-ERP
var gliXMLFileGAL_Node_Clt_DopEd;     // Handle узла-коллекции "Дополнительные единицы измерения"
var gliXMLFileGAL_Node_Clt_ED;        // Handle узла-коллекции "Единицы измерения"
var gliXMLFileGAL_Node_Clt_GrpAn;     // Handle узла-коллекции "Группы аналитик"
var gliXMLFileGAL_Node_Clt_GrpMC;     // Handle узла-коллекции "Группы матценностей"
var gliXMLFileGAL_Node_Clt_KAU;       // Handle узла-коллекции "Код аналитического учета (Аналитика)"
var gliXMLFileGAL_Node_Clt_MaskMC;    // Handle узла-коллекции "Шаблоны МЦ"
var gliXMLFileGAL_Node_Clt_MC;        // Handle узла-коллекции "Матценности"
var gliXMLFileGAL_Node_Clt_OtpEd;     // Handle узла-коллекции "Отпускные единицы измерения"
var gliXMLFileGAL_Node_Clt_UserAn;    // Handle узла-коллекции "Пользовательские аналитики"

//
var gliGlobID;                        // Глобальный идентификатор объектов

// Массив для сохранения дополнительных единиц измерения
var gliDopEdCount = 0;                // Количество дополнительных единиц измерения
var gsaDopEd_ShortName = new Array(); // Массив для сохранения значений поля "Сокращенное наименование"

// Массив для сохранения единиц измерения
var gliEdCount = 0;                   // Количество единиц измерения
var gsaEd_Abbr = new Array();         // Массив для сохранения значений поля "Аббревиатура"

// Массив для сохранения групп матценностей
var gliGrpMCCount = 0;                // Количество групп матценностей
var gsaGrpMC_Name = new Array();      // Массив для сохранения значений поля "Наименование"

// Массив для сохранения пользовательских аналитик
var gliUserAnCount = 0;               // Количество пользовательских аналитик
var gsaUserAn_KodGrKau = new Array(); // Массив для сохранения значений поля "КАУ"
var gsaUserAn_Name     = new Array(); // Массив для сохранения значений поля "Наименование"

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
// Получение идентификатора объекта для дополнительной единицы измерения:
//   asShortName - Сокращенное наименование
// Результат:
//   Идентификатор объекта

function GetObjID_DopEd(asShortName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliDopEdCount; i++)
    if (gsaDopEd_ShortName[i] == asShortName)
      return(i);

  //
  gliDopEdCount = gliDopEdCount + 1;
  gsaDopEd_ShortName[gliDopEdCount] = asShortName;

  XMLFileGAL_AddDopEd(false, gliDopEdCount, asShortName);

  return(gliDopEdCount);
} // function GetObjID_DopEd

//------------------------------------------------------------------------------
// Получение идентификатора объекта для единицы измерения:
//   asAbbr - Аббревиатура
// Результат:
//   Идентификатор объекта

function GetObjID_ED(asAbbr)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliEdCount; i++)
    if (gsaEd_Abbr[i] == asAbbr)
      return(i);

  //
  gliEdCount = gliEdCount + 1;
  gsaEd_Abbr[gliEdCount] = asAbbr;

  XMLFileGAL_AddED(false, gliEdCount, asAbbr);
  
  return(gliEdCount);
} // function GetObjID_ED

//------------------------------------------------------------------------------
// Получение идентификатора объекта для группы МЦ:
//   asName - Наименование
// Результат:
//   Идентификатор объекта

function GetObjID_GrpMC(asName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliGrpMCCount; i++)
    if (gsaGrpMC_Name[i] == asName)
      return(i);

  //
  gliGrpMCCount = gliGrpMCCount + 1;
  gsaGrpMC_Name[gliGrpMCCount] = asName;

  XMLFileGAL_AddGrpMC(false, gliGrpMCCount, asName);
  
  return(gliGrpMCCount);
} // function GetObjID_GrpMC

//------------------------------------------------------------------------------
// Получение идентификатора объекта для пользовательской аналитики:
//   asKodGrKau - КАУ
//   asName     - Наименование
// Результат:
//   Идентификатор объекта

function GetObjID_UserAn(asKodGrKau, asName)
{

// Локальные переменные
var i; // Переменная цикла

  for (i = 1; i <= gliUserAnCount; i++)
    if (
      (gsaUserAn_KodGrKau[i] == asKodGrKau) &&
      (gsaUserAn_Name[i]     == asName))
      return(i);

  //
  gliUserAnCount = gliUserAnCount + 1;
  gsaUserAn_KodGrKau[gliUserAnCount] = asKodGrKau;
  gsaUserAn_Name[gliUserAnCount]     = asName;

  XMLFileGAL_AddUserAn(false, gliUserAnCount, asKodGrKau, asName, asName);
  
  return(gliUserAnCount);
} // function GetObjID_UserAn

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

//------------------------------------------------------------------------------
// Добавление секции CDataSection к тэгу в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliNode - Handle узла в DOM-документе, для которого добавляется секция CDataSection
//   asValue - Значение атрибута

function XMLFileGAL_Add_TagCDataSection(aliNode, asValue)
{

// Локальные переменные
var vliCDATASection; // Handle создаваемй секции CDataSection в DOM-документе

  vliCDATASection = goXMLFileGAL.createCDATASection(asValue);
  aliNode.appendChild(vliCDATASection);
} // function XMLFileGAL_Add_TagCDataSection

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
// Добавление дополнительной единицы измерения в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asShortName   - Сокращенное наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddDopEd(abCheckExists, asID, asShortName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('DopEd', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_DopEd, 
    asShortName, 
    'DopEd', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства',
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'     , asShortName, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ShortName', asShortName, '');
  
  return(1);
} // function XMLFileGAL_AddDopEd

//------------------------------------------------------------------------------
// Добавление единицы измерения в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asAbbr        - Сокращенное наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddED(abCheckExists, asID, asAbbr)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ED', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_ED, 
    asAbbr, 
    'ED', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства',
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asAbbr, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr', asAbbr, '');
  
  return(1);
} // function XMLFileGAL_AddED

//------------------------------------------------------------------------------
// Добавление группы аналитик в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddGrpAn(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('GrpAn', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_GrpAn, 
    asName, 
    'GrpAn', 
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
} // function XMLFileGAL_AddGrpAn

//------------------------------------------------------------------------------
// Добавление группы МЦ в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование

function XMLFileGAL_AddGrpMC(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('GrpMC', asID))
      return;

  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_GrpMC,
    asName,
    'GrpMC',
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
} // function XMLFileGAL_AddGrpMC

//------------------------------------------------------------------------------
// Добавление кода аналитического учета в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asKodGroup    - Общесистемный код аналитики
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddKAU(abCheckExists, asID, asKodGroup, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KAU', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_KAU, 
    asName, 
    'KAU', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства',
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'KodGroup', asKodGroup, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName, '');
  
  return(1);
} // function XMLFileGAL_AddKAU

//------------------------------------------------------------------------------
// Добавление шаблона МЦ в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMaskMC(abCheckExists, asID, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MaskMC', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_MaskMC, 
    asName, 
    'MaskMC', 
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
} // function XMLFileGAL_AddMaskMC

//------------------------------------------------------------------------------
// Добавление матценности в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры: 
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
//   asFName       - Полное наименование
//   asGroupMC     - Основная группа МТР
//   asGroupMTR    - Группа МТР
//   asPrizn       - Признак
//   asCT_Diameter - Диаметр трубы, D mm
//   asCT_TS       - Толщина стенки трубы, S mm
//   asCT_ClassP   - Класс прочности
//   asCT_LevelK   - Уровень качества
//   asCT_RabD     - Рабочее давление
//   asCT_MinTS    - Минимальная температура стенки нефтепровода
//   asCT_Sejs     - Сейсмичность, баллов
//   asCT_TipIz    - Тип изоляции
//   asCT_TIz      - Толщина изоляции, мм
//   asTipMarka    - Тип, марка
//   asEdID        - Ед.изм.
//   asEd2ID       - Доп.единица
//   asEd2Name     - Доп.единица (yнаименование)
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMC(abCheckExists, asID, asName, asFName, asGroupMC, asGroupMTR, 
  asPrizn, asCT_Diameter, asCT_TS, asCT_ClassP, asCT_LevelK, asCT_RabD, asCT_MinTS, asCT_Sejs,
  asCT_TipIz, asCT_TIz, asTipMarka, asEdID, asEd2ID, asEd2Name)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;                // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues;        // Handle узла-коллекции "Значения свойств"
var vsName;                                   //
var vliNode;                                  //
var vliXMLFileGAL_DopEdNode_Clt_Object;       // Handle узла-коллекции "Дополнительные единицы измерения"
var vliXMLFileGAL_DopEdNode_Object;           // Handle узла-объекта для ДЕИ
var vliXMLFileGAL_DopEdNode_Clt_PropValues;   // Handle узла-коллекции "Значения свойств" для ДЕИ
var vliXMLFileGAL_KauReffNode_Clt_Object;     // Handle узла-коллекции "Внешняя аналитика"
var vliXMLFileGAL_KauReffNode_Object;         // Handle узла-объекта для внешней аналитики
var vliXMLFileGAL_KauReffNode_Clt_PropValues; // Handle узла-коллекции "Значения свойств" для внешней аналитики
//
var vsCT_Diameter_ID;                         //
var vsCT_TS_ID;                               //
var vsCT_ClassP_ID;                           //
var vsCT_LevelK_ID;                           //
var vsCT_RabD_ID;                             //
var vsCT_MinTS_ID;                            //
var vsCT_Sejs_ID;                             //
var vsCT_TipIz_ID;                            //
var vsCT_TIz_ID;                              //

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
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , vsName    , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Obozn'   , asTipMarka, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'     , asEdID    , 'ED');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cGroupMC', asGroupMC , 'GrpMC');

  // Установка дополнительных свойств для трубной продукции
  if (
    (asPrizn != null) &&
    (asPrizn != ''))
  {
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMaskMC', '1', 'MaskMC');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cSloj'  , '1', 'GrpAn');

    //
    vsCT_Diameter_ID = '0';
    vsCT_TS_ID       = '0';
    vsCT_ClassP_ID   = '0';
    vsCT_LevelK_ID   = '0';
    vsCT_RabD_ID     = '0';
    vsCT_MinTS_ID    = '0';
    vsCT_Sejs_ID     = '0';
    vsCT_TipIz_ID    = '0';
    vsCT_TIz_ID      = '0';

    if ((asCT_Diameter != null) && (asCT_Diameter != ''))
      vsCT_Diameter_ID = GetObjID_UserAn(gsKAU_CT_Diameter, asCT_Diameter);

    if ((asCT_TS != null) && (asCT_TS != ''))
      vsCT_TS_ID = GetObjID_UserAn(gsKAU_CT_TS, asCT_TS);

    if ((asCT_ClassP != null) && (asCT_ClassP != ''))
      vsCT_ClassP_ID = GetObjID_UserAn(gsKAU_CT_ClassP, asCT_ClassP);

    if ((asCT_LevelK != null) && (asCT_LevelK != ''))
      vsCT_LevelK_ID = GetObjID_UserAn(gsKAU_CT_LevelK, asCT_LevelK);

    if ((asCT_RabD != null) && (asCT_RabD != ''))
      vsCT_RabD_ID = GetObjID_UserAn(gsKAU_CT_RabD, asCT_RabD);

    if ((asCT_MinTS != null) && (asCT_MinTS != ''))
      vsCT_MinTS_ID = GetObjID_UserAn(gsKAU_CT_MinTS, asCT_MinTS);

    if ((asCT_Sejs != null) && (asCT_Sejs != ''))
      vsCT_Sejs_ID = GetObjID_UserAn(gsKAU_CT_Sejs, asCT_Sejs);

    if ((asCT_TipIz != null) && (asCT_TipIz != ''))
      vsCT_TipIz_ID = GetObjID_UserAn(gsKAU_CT_TipIz, asCT_TipIz);

    if ((asCT_TIz != null) && (asCT_TIz != ''))
      vsCT_TIz_ID = GetObjID_UserAn(gsKAU_CT_TIz, asCT_TIz);

    //
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_Diameter + ']', vsCT_Diameter_ID, 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_TS       + ']', vsCT_TS_ID      , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_ClassP   + ']', vsCT_ClassP_ID  , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_LevelK   + ']', vsCT_LevelK_ID  , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_RabD     + ']', vsCT_RabD_ID    , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_MinTS    + ']', vsCT_MinTS_ID   , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_Sejs     + ']', vsCT_Sejs_ID    , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_TipIz    + ']', vsCT_TipIz_ID   , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_TIz      + ']', vsCT_TIz_ID     , 'UserAn');
  } // if (...

  vliNode = XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Remark', '(MEMO)', '');
  XMLFileGAL_Add_TagCDataSection(vliNode, asFName);

  // Добавление дополнительной единицы измерения для МЦ
  if (asEd2ID != '0')
  {
    vliXMLFileGAL_DopEdNode_Clt_Object = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_Node_Object, 
      'Data.SpDopEd_MC', 
      'SpDopEd_MC', 
      'Object');

    vliXMLFileGAL_DopEdNode_Object = XMLFileGAL_Add_Tag_Object(
      vliXMLFileGAL_DopEdNode_Clt_Object, 
      asEd2Name,
      'SpDopEd_MC', 
      asID);
    
    // Создание коллекции свойств
    vliXMLFileGAL_DopEdNode_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_DopEdNode_Object, 
      'Свойства', 
      'Prop_Values', 
      'prop_value');

    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_DopEdNode_Clt_PropValues, 'cDopEd', asEd2ID, 'DopEd');
  } // if (asEd2ID != '0')

  // Добавление внешней аналитики для МЦ
  if (
    (asGroupMTR != null) &&
    (asGroupMTR != ''))
  {
    //
    vsGroupMTR_ID = GetObjID_UserAn(gsKAU_GroupMTR, asGroupMTR);

    vliXMLFileGAL_KauReffNode_Clt_Object = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_Node_Object, 
      'Data.KauReff_MC', 
      'KauReff_MC', 
      'Object');

    vliXMLFileGAL_KauReffNode_Object = XMLFileGAL_Add_Tag_Object(
      vliXMLFileGAL_KauReffNode_Clt_Object, 
      asEd2Name,
      'KauReff_MC', 
      asID);
    
    // Создание коллекции свойств
    vliXMLFileGAL_KauReffNode_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_KauReffNode_Object, 
      'Свойства', 
      'Prop_Values', 
      'prop_value');
    
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_KauReffNode_Clt_PropValues, 'wKau', gsKAU_GroupMTR, 'KAU');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_KauReffNode_Clt_PropValues, 'cKau', vsGroupMTR_ID , 'UserAn');
  } // if (...

  return(1);
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// Добавление отпускной единицы измерения в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
//   asPrMC        - Признак применяемости ()
//   asCMCUsl      - Ссылка на владельца (матценность)
//   asKoef        - Коэффициент пересчета относительно учетной единицы измерения
//   asAkt         - Признак активной отпускной единицы измерения
//   asAbbr        - Сокращенное наименование
//   asCKatED      - Ссылка на единицу измерения
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddOtpEd(abCheckExists, asID, asName, asPrMC, asCMCUsl, asKoef, 
  asAkt, asAbbr, asCKatED)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OtpEd', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_OtpEd, 
    asName, 
    'OtpEd', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства', 
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMC'  , asPrMC  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMCUsl', asCMCUsl, 'MC');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Koef'  , asKoef  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Akt'   , asAkt   , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr'  , asAbbr  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cKatED', asCKatED, 'ED');

  return(1);
} // function XMLFileGAL_AddOtpEd

//------------------------------------------------------------------------------
// Добавление пользовательской аналитики в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asKodGrKau    - Общесистемный код аналитики
//   asKod         - Код аналитики
//   asName        - Наименование аналитики
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddUserAn(abCheckExists, asID, asKodGrKau, asCode, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UserAn', asID))
      return(0);
  
  // Создание объекта
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UserAn, 
    asName, 
    'UserAn', 
    asID);
    
  // Создание коллекции свойств
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    'Свойства',
    'Prop_Values', 
    'prop_value');

  // Создание значений свойств
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'KodGrKau', asKodGrKau, 'KAU');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'    , asCode, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName, '');
  
  return(1);
} // function XMLFileGAL_AddUserAn

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

  // Дополнительные единицы измерения
  gliXMLFileGAL_Node_Clt_DopEd = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Дополнительные единицы измерения',
    'Data.DopEd',
    'Object');

  // Единицы измерения
  gliXMLFileGAL_Node_Clt_ED = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Единицы измерения',
    'Data.ED',
    'Object');

  // Группы аналитик
  gliXMLFileGAL_Node_Clt_GrpAn = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Группы аналитик',
    'Data.GrpAn',
    'Object');

  // Группы матценностей
  gliXMLFileGAL_Node_Clt_GrpMC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Группы матценностей',
    'Data.GrpMC',
    'Object');

  // Коды аналитического учета (Аналитики)
  gliXMLFileGAL_Node_Clt_KAU = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Коды аналитического учета (Аналитики)',
    'Data.KAU',
    'Object');

  // Шаблоны МЦ
  gliXMLFileGAL_Node_Clt_MaskMC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Шаблоны МЦ',
    'Data.MaskMC',
    'Object');

  // Матценности
  gliXMLFileGAL_Node_Clt_MC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Матценности',
    'Data.MC',
    'Object');

  // Отпускные единицы измерения
  gliXMLFileGAL_Node_Clt_OtpEd = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Отпускные единицы измерения',
    'Data.OtpEd',
    'Object');

  // Пользовательские аналитики
  gliXMLFileGAL_Node_Clt_UserAn = XMLFileGAL_Add_Tag_Collection(
    vliData,
    'Пользовательские аналитики',
    'Data.UserAn',
    'Object');

  // Добавление шаблона МЦ для трубной продукции
  XMLFileGAL_AddMaskMC(false, '1', gsMaskMC_TP_Name);

  // Добавление группы аналитик для трубной продукции
  XMLFileGAL_AddGrpAn(false, '1', gsGrpAn_TP_Name);

  // Добавление КАУ аналитик, используемых в группе аналитик для трубной продукции
  XMLFileGAL_AddKAU(false, gsKAU_CT_Diameter, gsKAU_CT_Diameter, gsKAUName_CT_Diameter);
  XMLFileGAL_AddKAU(false, gsKAU_CT_TS      , gsKAU_CT_TS      , gsKAUName_CT_TS);
  XMLFileGAL_AddKAU(false, gsKAU_CT_ClassP  , gsKAU_CT_ClassP  , gsKAUName_CT_ClassP);
  XMLFileGAL_AddKAU(false, gsKAU_CT_LevelK  , gsKAU_CT_LevelK  , gsKAUName_CT_LevelK);
  XMLFileGAL_AddKAU(false, gsKAU_CT_RabD    , gsKAU_CT_RabD    , gsKAUName_CT_RabD);
  XMLFileGAL_AddKAU(false, gsKAU_CT_MinTS   , gsKAU_CT_MinTS   , gsKAUName_CT_MinTS);
  XMLFileGAL_AddKAU(false, gsKAU_CT_Sejs    , gsKAU_CT_Sejs    , gsKAUName_CT_Sejs);
  XMLFileGAL_AddKAU(false, gsKAU_CT_TipIz   , gsKAU_CT_TipIz   , gsKAUName_CT_TipIz);
  XMLFileGAL_AddKAU(false, gsKAU_CT_TIz     , gsKAU_CT_TIz     , gsKAUName_CT_TIz);
  XMLFileGAL_AddKAU(false, gsKAU_GroupMTR   , gsKAU_GroupMTR   , gsKAUName_GroupMTR);
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// Выгрузка данных в XML-файл

function XMLFileGAL_UnloadData()
{

// Локальные переменные
var i;             //
var vsName;        // Значение поля "Наименование"
var vsFName;       // Значение поля "Полное наименование"
var vsGroupMC;     // Значение поля "Основная группа МТР"
var vsGroupMTR;    // Значение поля "Группа МТР"
var vsPrizn;       // Значение поля "Признак"
var vsCT_Diameter; // Значение поля "Диаметр трубы, D mm"
var vsCT_TS;       // Значение поля "Толщина стенки трубы, S mm"
var vsCT_ClassP;   // Значение поля "Класс прочности"
var vsCT_LevelK;   // Значение поля "Уровень качества"
var vsCT_RabD;     // Значение поля "Рабочее давление"
var vsCT_MinTS;    // Значение поля "Минимальная температура стенки нефтепровода"
var vsCT_Sejs;     // Значение поля "Сейсмичность, баллов"
var vsCT_TipIz;    // Значение поля "Тип изоляции"
var vsCT_TIz;      // Значение поля "Толщина изоляции, мм"
var vsTipMarka;    // Значение поля "Тип, марка"
var vsEdAbbr;      // Значение поля "Ед.изм."
var vsEd2Abbr;     // Значение поля "Доп.единица"
//
var vsEd2Abbr_ID;
var vsEdAbbr_ID;
var vsGroupMC_ID;
//
var vsOtpEd_ID;     // Идентификатор отпускной единицы измерения
var vsOtpEd_Name;   // Наименование отпускной единицы измерения
var vsOtpEd_PrMC;   // Признак применяемости () для отпускной единицы измерения
var vsOtpEd_CMCUsl; // Ссылка на владельца (матценность) для отпускной единицы измерения
var vsOtpEd_Koef;   // Коэффициент пересчета относительно учетной единицы измерения
var vsOtpEd_Akt;    // Признак активной отпускной единицы измерения
var vsOtpEd_Abbr;   // Сокращенное наименование отпускной единицы измерения
var vsOtpEd_CKatED; // Ссылка на единицу измерения для отпускной единицы измерения

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
      'Данные для матценностей извлекаются только из указанной выше вкладки.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // Выгрузка данных
  i = gliDataRowNmb_Begin;

  do
  {
    // Проверка прерывания процесса выполнения со стороны пользователя
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsName        = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Name).Value;
    vsFName       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_FName).Value;
    vsGroupMC     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_GroupMC).Value;
    vsGroupMTR    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_GroupMTR).Value;
    vsPrizn       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Prizn).Value;
    vsCT_Diameter = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_Diameter).Value;
    vsCT_TS       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_TS).Value;
    vsCT_ClassP   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_ClassP).Value;
    vsCT_LevelK   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_LevelK).Value;
    vsCT_RabD     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_RabD).Value;
    vsCT_MinTS    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_MinTS).Value;
    vsCT_Sejs     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_Sejs).Value;
    vsCT_TipIz    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_TipIz).Value;
    vsCT_TIz      = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_TIz).Value;
    vsTipMarka    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_TipMarka).Value;
    vsEdAbbr      = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_EdAbbr).Value;
    vsEd2Abbr     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Ed2Abbr).Value;

    if (
      (vsName == '') ||
      (vsName == null))
      break;

    vsName = vsName.replace(/^\s+/,'').replace(/\s+$/,'');

    // Получение идентификатора для дополнительной единицы измерения
    vsEd2Abbr_ID = '0';
    if (vsEd2Abbr == null)
      vsEd2Abbr = '';

    if (vsEd2Abbr != '')
      vsEd2Abbr_ID = GetObjID_DopEd(vsEd2Abbr);

    // Получение идентификатора для единицы измерения
    vsEdAbbr_ID = '0';
    if (vsEdAbbr == null)
      vsEdAbbr = '';

    if (vsEdAbbr != '')
      vsEdAbbr_ID = GetObjID_ED(vsEdAbbr);

    // Получение идентификатора для группы МЦ
    vsGroupMC_ID = '0';
    if (vsGroupMC == null)
      vsGroupMC = '';

    if (vsGroupMC != '')
      vsGroupMC_ID = GetObjID_GrpMC(vsGroupMC);

    // Добавление МЦ
    gliGlobID = gliGlobID + 1;

    XMLFileGAL_AddMC(
      false, 
      gliGlobID, 
      vsName, 
      vsFName, 
      vsGroupMC_ID, 
      vsGroupMTR, 
      vsPrizn,
      vsCT_Diameter,
      vsCT_TS,
      vsCT_ClassP,
      vsCT_LevelK,
      vsCT_RabD,
      vsCT_MinTS,
      vsCT_Sejs,
      vsCT_TipIz,
      vsCT_TIz,
      vsTipMarka,
      vsEdAbbr_ID,
      vsEd2Abbr_ID,
      vsEd2Abbr);

    if (gliGlobID > 100000)
      break;

    // Добавление отпускной единицы измерения
    if (vsEdAbbr != '')
    {
      vsOtpEd_ID     = gliGlobID;
      vsOtpEd_Name   = vsEdAbbr;
      vsOtpEd_PrMC   = '1';
      vsOtpEd_CMCUsl = gliGlobID;
      vsOtpEd_Koef   = '1';
      vsOtpEd_Akt    = '1';
      vsOtpEd_Abbr   = vsEdAbbr;
      vsOtpEd_CKatED = vsEdAbbr_ID;

      XMLFileGAL_AddOtpEd( 
        false, 
        vsOtpEd_ID, 
        vsOtpEd_Name, 
        vsOtpEd_PrMC, 
        vsOtpEd_CMCUsl, 
        vsOtpEd_Koef, 
        vsOtpEd_Akt, 
        vsOtpEd_Abbr, 
        vsOtpEd_CKatED);
    } // if (vsEdAbbr != '')

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
