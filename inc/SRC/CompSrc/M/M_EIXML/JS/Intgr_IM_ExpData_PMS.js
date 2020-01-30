/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий экспорт конструкторско-технологической информации  ##
## из КПС "INTERMECH" в КИС "ГАЛАКТИКА-ERP" с использованием IMBaseAPI,       ##
## SearchAPI, TechCardAPI                                                     ##
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

//
var gwExportMode;                          // Режим экспорта данных

// Объекты
var goIMBaseAPI;                           // API-объект IMBaseAPI
var goImDataBase;                          // API-объект ImDataBase
var goSearchAPI;                           // API-объект SearchAPI
var goTechCardAPI;                         // API-объект TechCardAPI
var goXMLFileGAL;                          // DOM-документ для формируемого XML-файла в
                                           //   формате ГАЛАКТИКА-ERP

// Объекты для каталогов IMBase
var goIMBaseAPI_Catalog_TC_CEH;            // Цеха
var goIMBaseAPI_Catalog_TC_OBORUD;         // Оборудование
var goIMBaseAPI_Catalog_TC_OPER;           // Операции
var goIMBaseAPI_Catalog_CTL000055;         // Виды работ
var goIMBaseAPI_Catalog_TC_WORKERS;        // Рабочие специальности
var goIMBaseAPI_Catalog_CTL000001;         // Материалы
var goIMBaseAPI_Catalog_TC_OSNAST;         // Оснастка

// Handle узлов-коллекций в DOM-документе для формируемого XML-файла в формате ГАЛАКТИКА-ERP
var gliXMLFileGAL_Node_Clt_TypeMC;         // Handle узла-коллекции "Типы матценностей"
var gliXMLFileGAL_Node_Clt_GrpMC;          // Handle узла-коллекции "Группы матценностей"
var gliXMLFileGAL_Node_Clt_ED;             // Handle узла-коллекции "Единицы измерения"
var gliXMLFileGAL_Node_Clt_Podr;           // Handle узла-коллекции "Подразделения"
var gliXMLFileGAL_Node_Clt_EqGroup;        // Handle узла-коллекции "Группы оборудования"
var gliXMLFileGAL_Node_Clt_MnfOper;        // Handle узла-коллекции "Технологические операции"
var gliXMLFileGAL_Node_Clt_KaWork;         // Handle узла-коллекции "Виды работ"
var gliXMLFileGAL_Node_Clt_Profession;     // Handle узла-коллекции "Профессии"
var gliXMLFileGAL_Node_Clt_ObjRem;         // Handle узла-коллекции "Единицы оборудования"
var gliXMLFileGAL_Node_Clt_Person;         // Handle узла-коллекции "Сотрудники"
var gliXMLFileGAL_Node_Clt_KatAbbr;        // Handle узла-коллекции "Аббревиатуры параметров"
var gliXMLFileGAL_Node_Clt_Params;         // Handle узла-коллекции "Параметры (Спецификации продуктов)"
var gliXMLFileGAL_Node_Clt_MC;             // Handle узла-коллекции "Матценности"
var gliXMLFileGAL_Node_Clt_OtpEd;          // Handle узла-коллекции "Отпускные единицы измерения"
var gliXMLFileGAL_Node_Clt_KatMarsh;       // Handle узла-коллекции "Маршрутные карты"
var gliXMLFileGAL_Node_Clt_Hdr_KS;         // Handle узла-коллекции "Конструкторские спецификации"
var gliXMLFileGAL_Node_Clt_AttrNam;        // Handle узла-коллекции "Внешние атрибуты"

//
var gliGlobID;                             // Глобальный идентификатор объектов

// Переменные для сохранения общих свойств каталогов
var gsFieldName_Podr_KodCeh;               // Имя поля "Код цеха" в каталоге "Цеха"
                                           //   (используется при рекурсивном обходе папок в каталоге)
var gsFieldName_Podr_KodUch;               // Имя поля "Код участка" в каталоге "Цеха"
                                           //   (используется при рекурсивном обходе папок в каталоге)
var gsFieldName_Podr_CehName;              // Имя поля "Наименование цеха" в каталоге "Цеха"
                                           //   (используется при рекурсивном обходе папок в каталоге)
var gsFieldName_Podr_UchName;              // Имя поля "Наименование участка" в каталоге "Цеха"
                                           //   (используется при рекурсивном обходе папок в каталоге)
var gsFieldName_Podr_KodASUP;              // Имя поля "Код АСУП" в каталоге "Цеха" (используется при
                                           //   рекурсивном обходе папок в каталоге)
//
var gsFieldName_Equip_Name;                // Имя поля "Наименование" в каталоге "Оборудование"
                                           //   (используется при рекурсивном обходе папок в каталоге)
var gsFieldName_Equip_KodASUP;             // Имя поля "Код АСУП" в каталоге "Оборудование"
                                           //   (используется при рекурсивном обходе папок в каталоге)
//
var gsFieldName_Oper_Kod;                  // Имя поля "Код операции" в каталоге "Операции"
                                           //   (используется при рекурсивном обходе папок в каталоге)
//
var gsFieldName_KaWork_Code;               // Имя поля "Код вида работ" в каталоге "Виды работ"
                                           //   (используется при рекурсивном обходе папок в каталоге)

// Идентификаторы внешних атрибутов для каталога матценностей
var gsAttrNam_MC_VersionNmb_ID;            // Идентификатор внешнего атрибута "Номер версии"
var gsAttrNam_MC_InvNmbDoc_ID;             // Идентификатор внешнего атрибута "Инвентарный номер документа"
var gsAttrNam_MC_BuildCode_ID;             // Идентификатор внешнего атрибута "Код исполнения"
var gsAttrNam_MC_Litera_ID;                // Идентификатор внешнего атрибута "Литера"

// Идентификаторы параметров норм (Спецификации продуктов) в XML-файле
// в формате ГАЛАКТИКА-ERP
//var gliParameter_BaseParams_ID;            // Базовые параметры (INTERMECH)
var gliParameter_OperParams_ID;            // Параметры техоперации
var gliOperParam_Razrjad_ID;               // Параметр техоперации -> Тарифный разряд
var gliOperParam_WrkCond_ID;               // Параметр техоперации -> Код условий труда
var gliOperParam_OpRazr_ID;                // Параметр техоперации -> Разряд операции
var gliOperParam_MechRate_ID;              // Параметр техоперации -> Степень механизации
var gliOperParam_WrkDetQnt_ID;             // Параметр техоперации -> Количество одновременно
                                           //   обрабатываемых изделий
var gliOperParam_PartVol_ID;               // Параметр техоперации -> Объем операционной партии
var gliOperParam_KOneTm_ID;                // Параметр техоперации -> Коэффициент штучного времени
var gliOperParam_tmPreFin_ID;              // Параметр техоперации -> Норма подготовительно-
                                           //   заключительного времени
var gliOperParam_tmServ_ID;                // Параметр техоперации -> Норма вспомогательного времени
var gliOperParam_tmOpMash_ID;              // Параметр техоперации -> Норма основного времени (машинная)
var gliOperParam_tmOpMan_ID;               // Параметр техоперации -> Норма основного времени (ручная)
var gliOperParam_EdTime_ID;                // Параметр техоперации -> Единица измерения времени
var gliParameter_NormCategory_ID;          // Категории норм
var gliParameter_MatNorm_ID;               // Материальные нормы
var gliParameter_ToolsNorm_ID;             // Инструментальные нормы
var gliParameter_JobNorm_ID;               // Трудовые нормы
var gliJobNormParam_tmOpMan_ID;            // Параметр трудовых норм -> Норма основного времени (ручная)
var gliJobNormParam_Razrjad_ID;            // Параметр трудовых норм -> Тарифный разряд
var gliJobNormParam_EdTime_ID;             // Параметр трудовых норм -> Единица измерения времени
var gliParameter_EqNorm_ID;                // Нормы использования оборудовани
var gliEqNormParam_tmOpMash_ID;            // Параметр норм использования оборудования -> Норма основного
                                           //   времени (машинная)
var gliEqNormParam_EdTime_ID;              // Параметр норм использования оборудования -> Единица измерени
                                           //   времени
//
var gliPodrCount;                          // Количество подразделений
var gsaFieldValue_Podr_ID;                 // Массив для сохранения идентификаторов подразделений
var gsaFieldValue_Podr_KodASUP;            // Массив для сохранения кодов подразделений (АСУП)
var gsaFieldValue_Podr_KodCeh;             // Массив для сохранения кодов цехов для подразделений
var gsaFieldValue_Podr_KodUch;             // Массив для сохранения кодов участков для подразделений
var gsaFieldValue_Podr_Name;               // Массив для сохранения наименований подразделений
var gsaFieldValue_Podr_cPodr;              // Массив для сохранения ссылок на вышестоящее подразделение
                                           //   (для подразделений)
var gsaFieldValue_Podr_PrUch;              // Массив для сохранения признака Цех/Участок (0/1) (для подразделений)

//
var gliEdCount;                            // Количество единиц измерени
var gsaFieldValue_Ed_ID;                   // Массив для сохранения идентификаторов единиц измерени
var gsaFieldValue_Ed_Abbr;                 // Массив для сохранения аббревиатур единиц измерени
var gsaFieldValue_Ed_Name;                 // Массив для сохранения наименований единиц измерени

// Массивы для сохранения обьектов, относящихся к типу "Единица измерения"
var gliProcessCount_Ed;                // Количество элементов в массиве
var gsaProcess_Ed_ImID;                // Массив для сохранения свойств "ИД (Интермех)"
var gsaProcess_Ed_GalID;               // Массив для сохранения свойств "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Группа оборудования"
var gliProcessCount_EqGroup;           // Количество элементов в массиве
var gsaProcess_EqGroup_ImID;           // Массив для сохранения свойств "ИД (Интермех)"
var gsaProcess_EqGroup_GalID;          // Массив для сохранения свойств "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Вид работ"
var gliProcessCount_KaWork;            // Количество элементов в массиве
var gsaProcess_KaWork_ImID;            // Массив для сохранения "ИД (Интермех)"
var gsaProcess_KaWork_GalID;           // Массив для сохранения "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Матценность"
var gliProcessCount_MC;                // Количество элементов в массиве
var gsaProcess_MC_ImID;                // Массив для сохранения "ИД (Интермех)"
var gsaProcess_MC_GalID;               // Массив для сохранения "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Технологическая операция"
var gliProcessCount_MnfOper;           // Количество элементов в массиве
var gsaProcess_MnfOper_ImID;           // Массив для сохранения "ИД (Интермех)"
var gsaProcess_MnfOper_GalID;          // Массив для сохранения "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Обьект ремонта"
var gliProcessCount_ObjRem;            // Количество элементов в массиве
var gsaProcess_ObjRem_ImID;            // Массив для сохранения "ИД (Интермех)"
var gsaProcess_ObjRem_GalID;           // Массив для сохранения "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Подразделение"
var gliProcessCount_Podr;              // Количество элементов в массиве
var gsaProcess_Podr_ImID;              // Массив для сохранения свойств "ИД (Интермех)"
var gsaProcess_Podr_GalID;             // Массив для сохранения свойств "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Профессия, должность"
var gliProcessCount_Profession;        // Количество элементов в массиве
var gsaProcess_Profession_ImID;        // Массив для сохранения "ИД (Интермех)"
var gsaProcess_Profession_GalID;       // Массив для сохранения "ИД (Галактика)"

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
// Получение идентификатора объекта для обьектов, относящихся к типу "Единица измерения":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asName        - Наименование
//   asAbbr        - Сокращенное наименование
// Результат:
//   Идентификатор объекта

function GetObjGalID_Ed(abCheckExists, asImID, asGalID, asName, asAbbr)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Ed; i++)
        if (gsaProcess_Ed_ImID[i] == asImID)
          return(gsaProcess_Ed_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Ed; i++)
        if (gsaProcess_Ed_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_Ed_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_Ed = gliProcessCount_Ed + 1;
 
    gsaProcess_Ed_ImID[gliProcessCount_Ed]  = asImID;
    gsaProcess_Ed_GalID[gliProcessCount_Ed] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddEd(false, asGalID, asName, asAbbr);

    return(asGalID);
  } // try

  catch(vrdEvent)
  {
    Message('GetObjGalID_Ed => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_Ed

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Группа оборудования":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asCode        - Код
//   asName        - Наименование
// Результат:
//   Идентификатор объекта

function GetObjGalID_EqGroup(abCheckExists, asImID, asGalID, asCode, asName)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_EqGroup; i++)
        if (gsaProcess_EqGroup_ImID[i] == asImID)
          return(gsaProcess_EqGroup_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_EqGroup; i++)
        if (gsaProcess_EqGroup_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_EqGroup_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_EqGroup = gliProcessCount_EqGroup + 1;

    gsaProcess_EqGroup_ImID[gliProcessCount_EqGroup]  = asImID;
    gsaProcess_EqGroup_GalID[gliProcessCount_EqGroup] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddEqGroup(false, asGalID, asCode, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_EqGroup => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_EqGroup

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Вид работ":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asCode        - Код
//   asName        - Наименование
// Результат:
//   Идентификатор объекта

function GetObjGalID_KaWork(abCheckExists, asImID, asGalID, asCode, asName)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KaWork; i++)
        if (gsaProcess_KaWork_ImID[i] == asImID)
          return(gsaProcess_KaWork_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KaWork; i++)
        if (gsaProcess_KaWork_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_KaWork_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_KaWork = gliProcessCount_KaWork + 1;

    gsaProcess_KaWork_ImID[gliProcessCount_KaWork]  = asImID;
    gsaProcess_KaWork_GalID[gliProcessCount_KaWork] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddKaWork(false, asGalID, asCode, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_KaWork => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_KaWork

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Матценность":
//   abCheckExists        - Признак проверки существования объекта
//   asImID               - ИД (Интермех)
//   asGalID              - ИД (Галактика)
//   asName               - Наименование
//   asBarKod             - Номенклатурный номер
//   asObozn              - Код
//   asKind               - Характеристика МЦ
//   asCType              - Ссылка на тип МЦ
//   asTNVED              - Код ТНВЭД
//   asRemMC              - Примечание
//   asAtlLastDate        - Дата последней модификации
//   asMassa              - Масса
//   asPrMat              - Признак материала
//   asCEd                - Ссылка на учетную единицу измерени
//   asAttrVal_VersionNmb - Значение внешнего атрибута "Номер версии"
//   asAttrVal_InvNmbDoc  - Значение внешнего атрибута "Инвентарный номер документа"
//   asAttrVal_BuildCode  - Значение внешнего атрибута "Код исполнения"
//   asAttrVal_Litera     - Значение внешнего атрибута "Литера"
// Результат:
//   Идентификатор объекта

function GetObjGalID_MC(abCheckExists, asImID, asGalID, asName, asBarKod, asObozn, asKind,
  asCType, asTNVED, asRemMC, asAtlLastDate, asMassa, asPrMat, asCEd, asAttrVal_VersionNmb,
  asAttrVal_InvNmbDoc, asAttrVal_BuildCode, asAttrVal_Litera)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MC; i++)
        if (gsaProcess_MC_ImID[i] == asImID)
          return(gsaProcess_MC_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MC; i++)
        if (gsaProcess_MC_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_MC_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_MC = gliProcessCount_MC + 1;

    gsaProcess_MC_ImID[gliProcessCount_MC]  = asImID;
    gsaProcess_MC_GalID[gliProcessCount_MC] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddMC(
        false,
        asGalID,
        asName,
        asBarKod,
        asObozn,
        asKind,
        asCType,
        asTNVED,
        asRemMC,
        asAtlLastDate,
        asMassa,
        asPrMat,
        asCEd,
        asAttrVal_VersionNmb,
        asAttrVal_InvNmbDoc,
        asAttrVal_BuildCode,
        asAttrVal_Litera);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_MC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_MC

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Технологическая операция":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asLNum        - Код
//   asName        - Наименование
// Результат:
//   Идентификатор объекта

function GetObjGalID_MnfOper(abCheckExists, asImID, asGalID, asLNum, asName)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MnfOper; i++)
        if (gsaProcess_MnfOper_ImID[i] == asImID)
          return(gsaProcess_MnfOper_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MnfOper; i++)
        if (gsaProcess_MnfOper_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_MnfOper_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_MnfOper = gliProcessCount_MnfOper + 1;

    gsaProcess_MnfOper_ImID[gliProcessCount_MnfOper]  = asImID;
    gsaProcess_MnfOper_GalID[gliProcessCount_MnfOper] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddMnfOper(false, asGalID, asLNum, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_MnfOper => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_MnfOper

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Обьект ремонта":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asName        - Наименование
//   asInNum       - Инвентарный номер
//   asCEqGroup    - Ссылка на группу оборудовани
// Результат:
//   Идентификатор объекта

function GetObjGalID_ObjRem(abCheckExists, asImID, asGalID, asName, asInNum, asCEqGroup)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_ObjRem; i++)
        if (gsaProcess_ObjRem_ImID[i] == asImID)
          return(gsaProcess_ObjRem_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_ObjRem; i++)
        if (gsaProcess_ObjRem_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_ObjRem_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_ObjRem = gliProcessCount_ObjRem + 1;

    gsaProcess_ObjRem_ImID[gliProcessCount_ObjRem]  = asImID;
    gsaProcess_ObjRem_GalID[gliProcessCount_ObjRem] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddObjRem(false, asGalID, asName, asInNum, asCEqGroup);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_ObjRem => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_ObjRem

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Подразделение":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asKod         - Код
//   asName        - Наименование
//   asCPodr       - Ссылка на вышестоящее подразделение
// Результат:
//   Идентификатор объекта

function GetObjGalID_Podr(abCheckExists, asImID, asGalID, asKod, asName, asCPodr)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Podr; i++)
        if (gsaProcess_Podr_ImID[i] == asImID)
          return(gsaProcess_Podr_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Podr; i++)
        if (gsaProcess_Podr_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_Podr_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_Podr = gliProcessCount_Podr + 1;

    gsaProcess_Podr_ImID[gliProcessCount_Podr]  = asImID;
    gsaProcess_Podr_GalID[gliProcessCount_Podr] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddPodr(false, asGalID, asKod, asName, asCPodr);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_Podr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_Podr

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Профессия, должность":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   asCode        - Код
//   asName        - Наименование
// Результат:
//   Идентификатор объекта

function GetObjGalID_Profession(abCheckExists, asImID, asGalID, asCode, asName)
{

// Локальные переменные
var i;         // Переменная цикла
var vbNeedAdd; // Признак необходимости добавления обьекта

  try
  {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Profession; i++)
        if (gsaProcess_Profession_ImID[i] == asImID)
          return(gsaProcess_Profession_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Profession; i++)
        if (gsaProcess_Profession_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_Profession_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_Profession = gliProcessCount_Profession + 1;

    gsaProcess_Profession_ImID[gliProcessCount_Profession]  = asImID;
    gsaProcess_Profession_GalID[gliProcessCount_Profession] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddProfession(false, asGalID, asCode, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_Profession => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_Profession

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
// Перенос наименований полей таблицы и их значений из строки в массив
// Параметры:
//   asParamValStr - строка с наименованиями полей таблицы и их значениями
// Результат:
//   Массив с наименованиями полей таблицы и их значениями

function IMBaseAPI_SplitParams(asParamValStr)
{

// Локальные переменные
var i;             // Переменная цикла
var vsRegExpr1;    // Строка для поиска
var vsRegExpr2;    // Строка для поиска
var vsParamValStr; // Строка с наименованиями полей таблицы и их значениями
var vsaValues1;    // 1-уровневый массив
var vsaValues2;    // 2-уровневый массив (результат функции)

  try
  {
    // Замена разделителей вида '",' и ',"' на '\n'
    vsRegExpr1 = /",/g;
    vsParamValStr = asParamValStr.replace(vsRegExpr1,'\n');

    vsRegExpr2 = /,"/g;
    vsParamValStr = vsParamValStr.replace(vsRegExpr2,'\n');

    vsRegExpr3 = /,[a-z]/gi;
    vsParamValStr = vsParamValStr.replace(vsRegExpr3,'\n$&');

    vsRegExpr4 = /,[а-я]/gi;
    vsParamValStr = vsParamValStr.replace(vsRegExpr4,'\n$&');

    // Преобразование строки в массив с разделением по элементам, разделенным
    // символом '\n'
    vsaValues1 = vsParamValStr.split('\n');

    vsaValues2 = new Array();

    for (i = 0; i < vsaValues1.length; i++)
    {
      // Дополнительная обработка (непонятно что за символ в конце остается)
      //vsaValues1[i] = vsaValues1[i].substr(0, vsaValues1[i].length - 1);

      if (vsaValues1[i] != null)
        if (
          (vsaValues1[i]. substr(0, 1) == '"') ||
          (vsaValues1[i]. substr(0, 1) == ','))
          vsaValues1[i] = vsaValues1[i].substr(1, vsaValues1[i].length - 1);

      if (vsaValues1[i] != null)
        if (vsaValues1[i].substr(vsaValues1[i].length - 1, 1) == '"')
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
  } // try

  catch (vrdEvent) 
  {
    Message('IMBaseAPI_SplitParams => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function IMBaseAPI_SplitParams

//------------------------------------------------------------------------------
// Поиск значения параметра в массиве
// Параметры:
//   asaArray           - Массив с параметрами и их значениями
//   aliParamNameIndex  - Индекс 2-го уровня для наименований параметров
//   aliParamValueIndex - Индекс 2-го уровня для значений параметров
//   asParamName        - Наименование параметра
// Результат:
//   Значение параметра (если параметр не найден в массиве, то пустая строка)

function IMBaseAPI_GetParamValueFromArray(asaArray, aliParamNameIndex,
  aliParamValueIndex, asParamName)
{

// Локальные переменные
var vsParamName; // Наименование параметра в верхнем регистре
var i;           // Переменная цикла
var vliLength;   // Размер массива по 1-му уровню

  try
  {
    vsParamName = asParamName.toUpperCase();
    vliLength = asaArray.length;

    for (i = 0; i < vliLength; i++)
    {
      if (vsParamName == asaArray[i][aliParamNameIndex].toUpperCase())
        return asaArray[i][aliParamValueIndex];
    }

    return '';
  } // try

  catch (vrdEvent) 
  {
    Message('IMBaseAPI_GetParamValueFromArray => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function IMBaseAPI_GetParamValueFromArray

//------------------------------------------------------------------------------
// Загрузка API-объекта
// Параметры:
//   Num - Код API-объекта:
//     1: SearchAPI
//     2: TechCardAPI
//     3: IMBaseAPI
//     4: TechXMLDataExchangeAPI
//     5: IMBaseAPI
// Результат:
//   Указатель на API-объект

function LoadAPIObj(Num)
{

// Локальные переменные
var vliWaitTime;             // Период ожидания загрузки объекта в миллисекундах
var voAPIObj;                // Ссылка на API-объект
var vdtStartLoadObjDateTime; // Дата-время начала загрузки объекта
var vdtCurrectDateTime;      // Текущее дата-врем
var vbIsLogin;               // Признак загрузки объекта

  try
  {
    vliWaitTime = 10000; // 10 сек
    vdtStartLoadObjDateTime = new Date();
    vdtCurrectDateTime = new Date();

    switch(Num)
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

      // Загрузка TechCardAPI
      case 2:
      {
        voAPIObj = new ActiveXObject('TPServer.Tapplication');

        while (
          (vbIsLogin != 1) &&
          (vdtCurrectDateTime - vdtStartLoadObjDateTime < vliWaitTime))
        {
          vbIsLogin = voAPIObj.Ready();
          vdtCurrectDateTime = new Date();
        }

        if (vbIsLogin != 1)
          voAPIObj = null;

        break;
      } // case 2:

      // Загрузка IMBaseAPI
      case 3:
      {
        voAPIObj = new ActiveXObject('Imbase.ImbaseApplication');

        while (
          (vbIsLogin != 0) &&
          (vdtCurrectDateTime - vdtStartLoadObjDateTime < vliWaitTime))
        {
          vbIsLogin = voAPIObj.Status;
          vdtCurrectDateTime = new Date();
        }

        if (vbIsLogin != 0)
          voAPIObj = null;

        break;
      } // case 3:

      // Загрузка TechXMLDataExchangeAPI
      case 4:
      {
        voAPIObj = new ActiveXObject('TechXMLDataExchange.XMLAPIClass');

        while (
          (vbIsLogin != 1) &&
          (vdtCurrectDateTime - vdtStartLoadObjDateTime < vliWaitTime))
        {
          vbIsLogin = voAPIObj.Loaded();
          vdtCurrectDateTime = new Date();
        }

        if (vbIsLogin != 1)
          voAPIObj = null;

        break;
      } // case 4:

      // Загрузка IMBaseAPI
      case 5:
      {
        voAPIObj = new ActiveXObject('Imbase.ImDataBase');

        break;
      } // case 5:

      default:
        break;
    } // switch(Num)

    return voAPIObj;
  } // try

  catch (vrdEvent) 
  {
    Message('LoadAPIObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
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

  try
  {
    vsParamName = asParamName.toUpperCase();
    vliLength = asaArray.length;

    for (i = 0; i < vliLength; i++)
    {
      if (vsParamName == asaArray[i][aliParamNameIndex].toUpperCase())
        return asaArray[i][aliParamValueIndex];
    }

    return '';
  } // try

  catch (vrdEvent) 
  {
    Message('SearchAPI_GetParamValueFromArray => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
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

  try
  {
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
  } // try

  catch (vrdEvent) 
  {
    Message('SearchAPI_SplitParams => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function SearchAPI_SplitParams

//------------------------------------------------------------------------------
// Преобразует строку, в которой записано число в десячной системе счислени
// в шистисимвольную строку, в которой закписано это число в шестнадцатиричной
// системе счислени
// Параметры:
//   asDecimal - Десятичная запись числа
// Результат:
//   Шестнадцатиричная запись числа

function toHex(asDecimal)
{

// Локальные переменные
var vsHex; // Результат функции
var vsTmp; // Временная строка

  try
  {
    vsTmp = new String('000000');

    if (asDecimal == null)
      return '000000';

    vsHex = parseInt(asDecimal).toString(16);
    vsHex = vsTmp.slice(0, 6 - vsHex.length) + vsHex.toUpperCase();

    return vsHex;
  } // try

  catch (vrdEvent) 
  {
    Message('toHex => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function toHex

//------------------------------------------------------------------------------
// Добавление внешнего атрибута для таблицы в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asWTable      - Код таблицы
//   asName        - Название атрибута
//   asAttrType    - Тип данных значения атрибута
//   asRType       - Системный код аналитики
//   asRObject     - Общесистемный код аналитики
//   asCoTable     - Код таблицы аналитики
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddAttrNam(abCheckExists, asID, asWTable, asName, asAttrType,
  asRType, asRObject, asCoTable)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('AttrNam', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_AttrNam,
      'Таблица № ' + asWTable + ': ' + asName,
      'AttrNam',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'WTable'  , asWTable  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AttrType', asAttrType, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'RType'   , asRType   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'RObject' , asRObject , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'coTable' , asCoTable , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddAttrNam => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddAttrNam

//------------------------------------------------------------------------------
// Добавление инструментальной нормы для операции маршрутной карты в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                  - Признак проверки существования объекта
//   asID                           - Идентификатор
//   aliXMLFileGAL_Node_Clt_AttlVal - Handle узла-коллекции "Значения внешних атрибутов"
//   asCoTable                      - Код таблицы, для записи которой добавляется значение внешнего атрибута
//   asCAttrNam                     - Ссылка на наименование внешнего атрибута
//   asVString                      - Значение типа "STRING"
//   asVDouble                      - Значение типа "DOUBLE"
//   asVDate                        - Значение типа "DATE"
//   asVTime                        - Значение типа "TIME"
//   asVComp                        - Значение типа "COMP"
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddAttrVal(abCheckExists, asID, aliXMLFileGAL_Node_Clt_AttlVal,
  asCoTable, asCAttrNam, asVString, asVDouble, asVDate, asVTime, asVComp)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('AttrVal_Tbl' + asCoTable, asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_AttlVal,
      'Значение ' + asID,
      'AttrVal_Tbl' + asCoTable,
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAttrNam', asCAttrNam, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vString' , asVString , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vDouble' , asVDouble , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vDate'   , asVDate   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vTime'   , asVTime   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vComp'   , asVComp   , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddAttrVal => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddAttrVal

//------------------------------------------------------------------------------
// Добавление единицы измерения в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
//   asAbbr        - Сокращенное наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddEd(abCheckExists, asID, asName, asAbbr)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('ED', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_ED,
      asName,
      'ED',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr', asAbbr, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddEd

//------------------------------------------------------------------------------
// Добавление группы оборудования в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asCode        - Код
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddEqGroup(abCheckExists, asID, asCode, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('EqGroup', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_EqGroup,
      asName,
      'EqGroup',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddEqGroup => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddEqGroup

//------------------------------------------------------------------------------
// Добавление объекта с типом "Группа матценностей" в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asKod         - Код
//   asName        - Наименование

function XMLFileGAL_AddGrpMC(abCheckExists, asID, asKod, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('GrpMC', asID))
        return;

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_GrpMC,
      asName,
      'GrpMC',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod'  , asKod  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , asName , '');

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddGrpMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddGrpMC

//------------------------------------------------------------------------------
// Добавление конструкторской спецификации в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists    - Признак проверки существования объекта
//   asID             - Идентификатор
//   aliMC_ID         - Идентификатор МЦ
//   asName           - Наименование
//   asDocCode        - Обозначение
//   asaChildObjects  - Массив идентификаторов объектов, входящих в КС
//   asaChildObjCount - Массив для сохранения количества для дочерних объектов
//   asaChildObjRefMU - Массив для сохранения ссылок на единицы измерения дл
//                        дочерних объектов
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddHdrKS(abCheckExists, asID, aliMC_ID, asName, asDocCode,
  asaChildObjects, asaChildObjCount, asaChildObjRefMU)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;          // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues;  // Handle узла-коллекции "Значения свойств"
var i;                                  // Переменная цикла
var vliXMLFileGAL_Node_Clt_PSLines;     // Handle узла-коллекции "Позиции КС"
var vliXMLFileGAL_Node_PSLines;         // Handle узла-объекта "Позиция КС"
var vliXMLFileGAL_Node_Clt_PSLines_PV;  // Handle узла-коллекции "Значения свойств позиции КС"
var vliChildMC_ID;                      // Идентификатор дочернего объекта

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Hdr_KS', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Hdr_KS,
      asName,
      'Hdr_KS',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DocCode' , asDocCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cTypeIzd', '4', '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product' , '1', '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cIzd'    , aliMC_ID, 'MC');

    // Создание коллекции для позиций конструкторской спецификации в XML-файле
    vliXMLFileGAL_Node_Clt_PSLines = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Позиции спецификации',
      'Data.PS_Lines_HdrKS',
      'Object');

    // Цикл по объектам, входящим в состав текущего объекта
    for (i = 0; i < asaChildObjects.length; i++)
    {
      // Создание позиции конструкторской спецификации в XML-файле
      vliXMLFileGAL_Node_PSLines = XMLFileGAL_AddTag_Object(
        vliXMLFileGAL_Node_Clt_PSLines,
        'Позиция "' + (i + 1) * 10 + '"',
        'PS_Lines_HdrKS',
        gliGlobID++);

      // Создание коллекции свойств для позиции конструкторской спецификации в XML-файле
      vliXMLFileGAL_Node_Clt_PSLines_PV = XMLFileGAL_AddTag_Collection(
        vliXMLFileGAL_Node_PSLines,
        'Свойства',
        'Prop_Values',
        'prop_value');

      // Выгрузка дочернего машиностроительного объекта
      vliChildMC_ID = XMLFileGAL_UnloadObj(asaChildObjects[i]);

      // Добавление значений свойств для текущей позиции спецификации
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'lNum', (i + 1) * 10       , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cDet', vliChildMC_ID      , 'MC');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'wDet', '4'                , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'Kol' , asaChildObjCount[i], '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cEd' , asaChildObjRefMU[i], 'OtpEd');
    } // for (i = 0; i < asaChildObjects.length; i++)

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddHdrKS => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddHdrKS

//------------------------------------------------------------------------------
// Добавление аббревиатуры параметра модуля "Спецификации продуктов" в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asAbbr        - Аббревиатура параметра
//   asCode        - Код параметра
//   asRole        - Имя параметра
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddKatAbbr(abCheckExists, asID, asAbbr, asCode, asRole)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('KatAbbr', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_KatAbbr,
      asAbbr + ' -> ' + asRole,
      'KatAbbr',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr', asAbbr, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Role', asRole, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddKatAbbr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddKatAbbr

//------------------------------------------------------------------------------
// Добавление маршрутной карты в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aoTechProcess - Объект "Техпроцесс" в TechCardAPI
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asShifr       - Шифр (код) техпроцесса
//   asName        - Наименование маршрутной карты
//   asTObject     - Тип объекта, для которого разработана МК
//   asCObject     - Ссылка на объект, для которого разработана МК
//   asProduct     - Признак нормы или продукта выход (обычно = 1):
//                     0 - норма,
//                     1 - продукт выхода
//   asEdNorm      - Нормируемое количество объекта, для которого разработана МК
//   asCEd         - Ссылка на единицу измерения объекта, для которого разработана МК
//   asMinVol      - Минимальный размер партии для изготовлени
//   asCheckers_1  - Ссылка на сотрудника 1, подписывающего документ (Разработал)
//   asAddedSign_1 - Выполняемая функция сотрудника 1, подписывающего документ (Разработал)
//   asCheckDt_1   - Дата подписания 1
//   asCheckers_2  - Ссылка на сотрудника 2, подписывающего документ (Проверил)
//   asAddedSign_2 - Выполняемая функция сотрудника 2, подписывающего документ (Проверил)
//   asCheckDt_2   - Дата подписания 2
//   asCheckers_3  - Ссылка на сотрудника 3, подписывающего документ (Утвердил)
//   asAddedSign_3 - Выполняемая функция сотрудника 3, подписывающего документ (Утвердил)
//   asCheckDt_3   - Дата подписания 3
//   asParGroup    - Ссылка на группу параметров для позиций/операций МК
//   asCNormGroup  - Ссылка на группу норм для позиций/операций МК
//   aliHdrKS_ID   - Идентификатор конструкторской спецификации
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddKatMarsh(aoTechProcess, abCheckExists, asID,
  asShifr, asName, asTObject, asCObject, asProduct,
  asEdNorm, asCEd, asMinVol, asCheckers_1, asAddedSign_1, asCheckDt_1,
  asCheckers_2, asAddedSign_2, asCheckDt_2, asCheckers_3, asAddedSign_3, asCheckDt_3,
  asParGroup, asCNormGroup, aliHdrKS_ID)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Clt_MarshSp;    // Handle узла-коллекции "Позиции/операции маршрутной карты"

  try
  {
    // Проверка существования объекта aoTechProcess
    if (aoTechProcess == null)
      return(0);

    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('KatMarsh', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_KatMarsh,
      asName,
      'KatMarsh',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kind'        , '1'          , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Shifr'       , asShifr      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'        , asName       , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'     , asTObject    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'     , asCObject    , 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'     , asProduct    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'EdNorm'      , asEdNorm     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'         , asCEd        , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MinVol'      , asMinVol     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Checkers[1]' , asCheckers_1 , 'Person');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AddedSign[1]', asAddedSign_1, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'CheckDt[1]'  , asCheckDt_1  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Checkers[2]' , asCheckers_2 , 'Person');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AddedSign[2]', asAddedSign_2, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'CheckDt[2]'  , asCheckDt_2  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Checkers[3]' , asCheckers_3 , 'Person');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AddedSign[3]', asAddedSign_3, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'CheckDt[3]'  , asCheckDt_3  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup'    , asParGroup   , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormGroup'  , asCNormGroup , 'Params');

    // Создание коллекции для позиций маршрутной карты
    vliXMLFileGAL_Node_Clt_MarshSp = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Позиции маршрутной карты',
      'Data.Marsh_Sp',
      'Object');

    // Выгрузка операций техпроцесса
    XMLFileGAL_UnloadTPOpers(aoTechProcess.Opers, vliXMLFileGAL_Node_Clt_MarshSp, asCObject, aliHdrKS_ID);

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddKatMarsh => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddKatMarsh

//------------------------------------------------------------------------------
// Добавление вида работ в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asCode        - Код
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddKaWork(abCheckExists, asID, asCode, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('KaWork', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_KaWork,
      asName,
      'KaWork',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddKaWork => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddKaWork

//------------------------------------------------------------------------------
// Добавление позиции/операции маршрутной карты в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aoTPOper                       - Объект "Операция техпроцесса" в TechCardAPI
//   abCheckExists                  - Признак проверки существования объекта
//   asID                           - Идентификатор
//   aliXMLFileGAL_Node_Clt_MarshSp - Handle узла-коллекции "Позиции/операции маршрутной карты"
//   asNum                          - Номер позиции/операции маршрутной карты
//   asWOpe                         - Код таблицы для операции (для технологической операции = 11007)
//   asNOpe                         - Ссылка на технологическую операцию
//   asEdNorm                       - Количество нормируемого ресурса из заголовка МК
//   asCEd                          - Ссылка на единицу измерения для нормируемого ресурса из
//                                      заголовка МК
//   asTDep                         - КАУ исполнителя (для подразделений = 2)
//   asCDep                         - Ссылка на исполнител
//   aliMC_ID                       - Идентификатор матценности
//   aliHdrKS_ID                    - Идентификатор конструкторской спецификации
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSp(aoTPOper, abCheckExists, asID, aliXMLFileGAL_Node_Clt_MarshSp,
  asNum, asWOpe, asNOpe, asEdNorm, asCEd, asTDep, asCDep, aliMC_ID, aliHdrKS_ID)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;              // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues;      // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Clt_ParamVolMarshSp; // Handle узла-коллекции "Значения параметров операции"
var vliXMLFileGAL_Node_Clt_Normas;          // Handle узла-коллекции "Нормы на операцию"
//
var vliParamVol_ID;                         // Идентификатор значения параметра
var vsParamName;                            // Наименование параметра
var vsCParams;                              // Ссылка на параметр модуля "Спецификации продуктов"
var vsValue;                                // Значение параметра

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Marsh_Sp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_MarshSp,
      'Позиция ' + asNum,
      'Marsh_Sp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Num'   , asNum, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wOpe'  , asWOpe, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'nOpe'  , asNOpe, 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'EdNorm', asEdNorm, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'   , asCEd, 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tDep'  , asTDep, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDep'  , asCDep, 'Podr');

    //``````````````````````````````````````````````````````````````````````````
    // Установка значений параметров

    if (aoTPOper != null)
    {
      // Создание коллекции "Значения параметров операции"
      vliXMLFileGAL_Node_Clt_ParamVolMarshSp = XMLFileGAL_AddTag_Collection(
        vliXMLFileGAL_Node_Object,
        'Значения параметров операции',
        'Data.ParamVol_MarshSp',
        'Object');

      // Единица измерения времени (по умолчанию = час)
      vsParamName = 'Единица измерения времени';
      vsCParams = gliOperParam_EdTime_ID;
      vsValue = '1';

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // Норма основного времени на операцию (То)
      vsParamName = 'Норма основного времени на операцию';
      vsCParams = gliOperParam_tmOpMash_ID;
      vsValue = aoTPOper.Value('То');

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // Норма вспомогательного времени на операцию (Тв)
      vsParamName = 'Норма вспомогательного времени на операцию';
      vsCParams = gliOperParam_tmServ_ID;
      vsValue = aoTPOper.Value('Тв');

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // Процент времени на обсл. раб. места, отдых (Побс)
      //vsParamName = 'Процент времени на обсл. раб. места, отдых';
      //vsCParams = 0; //!!!!!!!!!!!!
      //vsValue = aoTPOper.Value('Побс');
      //
      //if (vsValue != '')
      //{
      //  vliParamVol_ID = gliGlobID;
      //  gliGlobID = gliGlobID + 1;
      //
      //  XMLFileGAL_AddParamVolMarshSp(
      //    false,
      //    vliParamVol_ID,
      //    vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      //    vsParamName,
      //    vsCParams,
      //    vsValue);
      //} // if (vsValue != '')

      // Время на обсл. раб. места, отдых (Тобс)
      //vsParamName = 'Время на обсл. раб. места, отдых';
      //vsCParams = 0; //!!!!!!!!!!!!
      //vsValue = aoTPOper.Value('Тобс');
      //
      //if (vsValue != '')
      //{
      //  vliParamVol_ID = gliGlobID;
      //  gliGlobID = gliGlobID + 1;
      //
      //  XMLFileGAL_AddParamVolMarshSp(
      //    false,
      //    vliParamVol_ID,
      //    vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      //    vsParamName,
      //    vsCParams,
      //    vsValue);
      //} // if (vsValue != '')

      // Норма подготовительно-заключительного времени (Тпз)
      vsParamName = 'Норма подготовительно-заключительного времени';
      vsCParams = gliOperParam_tmPreFin_ID;
      vsValue = aoTPOper.Value('Тпз');

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // Норма штучного времени (Тшт)
      //vsParamName = 'Норма штучного времени';
      //vsCParams = 0; //!!!!!!!!!!!!
      //vsValue = aoTPOper.Value('Тшт');
      //
      //if (vsValue != '')
      //{
      //  vliParamVol_ID = gliGlobID;
      //  gliGlobID = gliGlobID + 1;
      //
      //  XMLFileGAL_AddParamVolMarshSp(
      //    false,
      //    vliParamVol_ID,
      //    vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      //    vsParamName,
      //    vsCParams,
      //    vsValue);
      //} // if (vsValue != '')
    } // if (aoTPOper != null)

    //``````````````````````````````````````````````````````````````````````````
    // Выгрузка норм

    // Создание коллекции "Нормы на операцию"
    vliXMLFileGAL_Node_Clt_Normas = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Нормы',
      'Data.Normas_MarshSp',
      'Object');

    // Выгрузка нормы "КС" для первой операции техпроцесса
    if (aliHdrKS_ID != '0')
      XMLFileGAL_UnloadTPOper_MatNorm_BOM(
        aoTPOper,
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe,
        aliMC_ID,
        aliHdrKS_ID);

    // Проверка существования объекта aoTPOper
    if (aoTPOper == null)
      return(0);

    // Выгрузка материальных норм
    XMLFileGAL_UnloadTPOper_MatNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    // Выгрузка инструментальных норм
    XMLFileGAL_UnloadTPOper_ToolNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    // Выгрузка трудовых норм
    XMLFileGAL_UnloadTPOper_JobNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    // Выгрузка норм использования оборудовани
    XMLFileGAL_UnloadTPOper_EqNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSp

//------------------------------------------------------------------------------
// Добавление нормы использования оборудования для операции маршрутной карты в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                        - Признак проверки существования объекта
//   asID                                 - Идентификатор
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle узла-коллекции "Нормы для позиции/операции МК"
//   asTObject                            - Тип объекта-владельца нормы
//   asCObject                            - Ссылка на объект-владелец нормы
//   asTResource                          - Тип нормируемого ресурса
//   asCResource                          - Ссылка на нормируемый ресурс
//   asWProd                              - Тип нормы/продукта выхода
//   asProduct                            - Режим использования: норма/выход
//   asParGroup                           - Код группы параметров
//   asNormSort                           - Категория группы параметров
//   asRasx                               - Норма расхода
//   asCEd                                - Ссылка на единицу измерени
//   asDNormEd                            - Единица нормировани
//   asCNormEd                            - Ссылка на единицу измерения единицы нормировани
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpEqNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      'Норма ' + asID,
      'Normas_MarshSp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'EqGroup');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpEqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpEqNorm

//------------------------------------------------------------------------------
// Добавление трудовой нормы для операции маршрутной карты в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                        - Признак проверки существования объекта
//   asID                                 - Идентификатор
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle узла-коллекции "Нормы для позиции/операции МК"
//   asTObject                            - Тип объекта-владельца нормы
//   asCObject                            - Ссылка на объект-владелец нормы
//   asTResource                          - Тип нормируемого ресурса
//   asCResource                          - Ссылка на нормируемый ресурс
//   asWProd                              - Тип нормы/продукта выхода
//   asProduct                            - Режим использования: норма/выход
//   asParGroup                           - Код группы параметров
//   asNormSort                           - Категория группы параметров
//   asRasx                               - Норма расхода
//   asCEd                                - Ссылка на единицу измерени
//   asDNormEd                            - Единица нормировани
//   asCNormEd                            - Ссылка на единицу измерения единицы нормировани
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpJobNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      'Норма ' + asID,
      'Normas_MarshSp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'Profession');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpJobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpJobNorm

//------------------------------------------------------------------------------
// Добавление материальной нормы для операции маршрутной карты в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                        - Признак проверки существования объекта
//   asID                                 - Идентификатор
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle узла-коллекции "Нормы для позиции/операции МК"
//   asTObject                            - Тип объекта-владельца нормы
//   asCObject                            - Ссылка на объект-владелец нормы
//   asTResource                          - Тип нормируемого ресурса
//   asCResource                          - Ссылка на нормируемый ресурс
//   asWProd                              - Тип нормы/продукта выхода
//   asProduct                            - Режим использования: норма/выход
//   asParGroup                           - Код группы параметров
//   asNormSort                           - Категория группы параметров
//   asRasx                               - Норма расхода
//   asCEd                                - Ссылка на единицу измерени
//   asDNormEd                            - Единица нормировани
//   asCNormEd                            - Ссылка на единицу измерения единицы нормировани
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpMatNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      'Норма ' + asID,
      'Normas_MarshSp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpMatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpMatNorm

//------------------------------------------------------------------------------
// Добавление материальной нормы (КС) для операции маршрутной карты в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                        - Признак проверки существования объекта
//   asID                                 - Идентификатор
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle узла-коллекции "Нормы для позиции/операции МК"
//   asTObject                            - Тип объекта-владельца нормы
//   asCObject                            - Ссылка на объект-владелец нормы
//   asTResource                          - Тип нормируемого ресурса
//   asCResource                          - Ссылка на нормируемый ресурс
//   asTDoc                               - КАУ документа-нормы для нормируемого ресурса
//                                            (для КС = 41)
//   asCDoc                               - Ссылка на документ-норму для нормируемого
//                                            ресурса
//   asWProd                              - Тип нормы/продукта выхода
//   asProduct                            - Режим использования: норма/выход
//   asParGroup                           - Код группы параметров
//   asNormSort                           - Категория группы параметров
//   asRasx                               - Норма расхода
//   asCEd                                - Ссылка на единицу измерени
//   asDNormEd                            - Единица нормировани
//   asCNormEd                            - Ссылка на единицу измерения единицы нормировани
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpMatNorm_BOM(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asTDoc, asCDoc, asWProd, asProduct,
  asParGroup, asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      'Норма ' + asID,
      'Normas_MarshSp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tDoc'     , asTDoc     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDoc'     , asCDoc     , 'Hdr_KS');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpMatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpMatNorm_BOM

//------------------------------------------------------------------------------
// Добавление инструментальной нормы для операции маршрутной карты в XML-файл
// в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                        - Признак проверки существования объекта
//   asID                                 - Идентификатор
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle узла-коллекции "Нормы для позиции/операции МК"
//   asTObject                            - Тип объекта-владельца нормы
//   asCObject                            - Ссылка на объект-владелец нормы
//   asTResource                          - Тип нормируемого ресурса
//   asCResource                          - Ссылка на нормируемый ресурс
//   asWProd                              - Тип нормы/продукта выхода
//   asProduct                            - Режим использования: норма/выход
//   asParGroup                           - Код группы параметров
//   asNormSort                           - Категория группы параметров
//   asRasx                               - Норма расхода
//   asCEd                                - Ссылка на единицу измерени
//   asDNormEd                            - Единица нормировани
//   asCNormEd                            - Ссылка на единицу измерения единицы нормировани
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpToolNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      'Норма ' + asID,
      'Normas_MarshSp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpToolNorm

//------------------------------------------------------------------------------
// Добавление объекта с типом "Матценность" в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists        - Признак проверки существования объекта
//   asID                 - Идентификатор
//   asName               - Наименование
//   asBarKod             - Номенклатурный номер
//   asObozn              - Код
//   asKind               - Характеристика МЦ
//   asCType              - Ссылка на тип МЦ
//   asTNVED              - Код ТНВЭД
//   asRemMC              - Примечание
//   asAtlLastDate        - Дата последней модификации
//   asMassa              - Масса
//   asPrMat              - Признак материала
//   asCEd                - Ссылка на учетную единицу измерени
//   asAttrVal_VersionNmb - Значение внешнего атрибута "Номер версии"
//   asAttrVal_InvNmbDoc  - Значение внешнего атрибута "Инвентарный номер документа"
//   asAttrVal_BuildCode  - Значение внешнего атрибута "Код исполнения"
//   asAttrVal_Litera     - Значение внешнего атрибута "Литера"
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMC(abCheckExists, asID, asName, asBarKod, asObozn, asKind,
  asCType, asTNVED, asRemMC, asAtlLastDate, asMassa, asPrMat, asCEd,
  asAttrVal_VersionNmb, asAttrVal_InvNmbDoc, asAttrVal_BuildCode, asAttrVal_Litera)
{

// Локальные переменные
var i;                                 // Переменная цикла
//
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Clt_AttrVal;    // Handle узла-коллекции объектов "AttrVal"
var vsName;                            //
var vsKind;                            //
var vsGrpMC;                           //
//
var vliAttrVal_ID;                     // Идентификатор для нормы использования оборудования на операцию
var vsAttrVal_CoTable;                 //
var vsAttrVal_CAttrNam;                //
var vsAttrVal_VString;                 //
var vsAttrVal_VDouble;                 //
var vsAttrVal_VDate;                   //
var vsAttrVal_VTime;                   //
var vsAttrVal_VComp;                   //
//
var vsOtpEd_ID;                        // Идентификатор отпускной единицы измерени
var vsOtpEd_Name;                      // Наименование отпускной единицы измерени
var vsOtpEd_PrMC;                      // Признак применяемости () для отпускной единицы измерени
var vsOtpEd_CMCUsl;                    // Ссылка на владельца (матценность) для отпускной единицы измерени
var vsOtpEd_Koef;                      // Коэффициент пересчета относительно учетной единицы измерени
var vsOtpEd_Akt;                       // Признак активной отпускной единицы измерени
var vsOtpEd_Abbr;                      // Сокращенное наименование отпускной единицы измерени
var vsOtpEd_CKatED;                    // Ссылка на единицу измерения для отпускной единицы измерени

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('MC', asID))
        return(0);

    vsKind = asKind;
    if (vsKind == '')
      vsKind = '1';

    vsGrpMC = '0';

    // Уточнение свойств МЦ в зависимости от типа
    switch (asCType)
    {
      // Документаци
      case '1':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '1':

      // Комплекс
      case '2':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '2':

      // Сборочная единица
      case '3':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '3':

      // Деталь
      case '4':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '4':

      // Стандартное изделие
      case '5':
      {
        vsGrpMC = '2109'; // Полуфабрикаты-крепежи
        break;
      } // case '5':

      // Комплектующее изделие
      case '6':
      {
        vsGrpMC = '1060'; // Комплектующие материалы
        break;
      } // case '6':

      // Основной материал
      case '7':
      {
        vsGrpMC = '1010'; // Основные материалы
        break;
      } // case '7':

      // Комплект
      case '8':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '8':

      // Программное изделие
      case '9':
      {
        vsGrpMC = '0'; //
        break;
      } // case '9':

      // Вспомогательный материал
      case '77':
      {
        vsGrpMC = '1020'; // Вспомогательные материалы
        break;
      } // case '77':

      // Оснастка покупна
      case '777':
      {
        vsGrpMC = '1017'; // Покупной инструмент
        break;
      } // case '777':

      // Комплектовочное
      case '99999998':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '99999998':

      // Заказ
      case '99999999':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '99999999':

      // Оснастка собственного изготовлени
      case '100000001':
      {
        vsGrpMC = '1015'; // Специнструмент
        break;
      } // case '100000001':

      // Изделие
      case '100000003':
      {
        vsGrpMC = '2108'; // Полуфабрикаты
        break;
      } // case '100000003':
    } // switch (asCType)

    // Создание объекта
    vsName = asName;
    if (
      (vsName == null) ||
      (vsName == 0) ||
      (vsName == ''))
      vsName = '(id = ' + asID + ')';

    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_MC,
      vsName,
      'MC',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ExternalID'  , asID         , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'        , vsName       , '');

    if (
      (asBarKod != null) &&
      (asBarKod != ''))
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'BarKod'    , asBarKod     , '');

    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Obozn'       , asObozn      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kind'        , vsKind       , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'         , asCEd        , 'ED');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cType'       , asCType      , 'TypeMC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cGroupMC'    , vsGrpMC      , 'GrpMC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'TNVED'       , asTNVED      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'RemMC'       , asRemMC      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ATL_LASTDATE', asAtlLastDate, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Massa'       , asMassa      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMat'       , asPrMat      , '');

    // Создание значений внешних атрибутов
    if (
      ((asAttrVal_VersionNmb != null) && (asAttrVal_VersionNmb != '') && (asAttrVal_VersionNmb != '0')) ||
      ((asAttrVal_InvNmbDoc != null) && (asAttrVal_InvNmbDoc != '') && (asAttrVal_InvNmbDoc != '0')) ||
      ((asAttrVal_BuildCode != null) && (asAttrVal_BuildCode != '') && (asAttrVal_BuildCode != '0')) ||
      ((asAttrVal_Litera != null) && (asAttrVal_Litera != '') && (asAttrVal_Litera != '0')))
    {
      // Создание коллекции для значений внешних атрибутов
      vliXMLFileGAL_Node_Clt_AttrVal = XMLFileGAL_AddTag_Collection(
        vliXMLFileGAL_Node_Object,
        'Значения внешних атрибутов',
        'Data.AttlVal_Tbl1411',
        'Object');

      // Добавление значения для внешнего атрибута "Номер версии"
      if (
        (asAttrVal_VersionNmb != null) &&
        (asAttrVal_VersionNmb != '') &&
        (asAttrVal_VersionNmb != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_VersionNmb_ID;
        vsAttrVal_VString  = asAttrVal_VersionNmb;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = 'ДД/ММ/ГГГГ';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...

      // Добавление значения для внешнего атрибута "Инвентарный номер документа"
      if (
        (asAttrVal_InvNmbDoc != null) &&
        (asAttrVal_InvNmbDoc != '') &&
        (asAttrVal_InvNmbDoc != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_InvNmbDoc_ID;
        vsAttrVal_VString  = asAttrVal_InvNmbDoc;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = 'ДД/ММ/ГГГГ';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...

      // Добавление значения для внешнего атрибута "Код исполнения"
      if (
        (asAttrVal_BuildCode != null) &&
        (asAttrVal_BuildCode != '') &&
        (asAttrVal_BuildCode != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_VersionNmb_ID;
        vsAttrVal_VString  = asAttrVal_BuildCode;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = 'ДД/ММ/ГГГГ';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...

      // Добавление значения для внешнего атрибута "Литера"
      if (
        (asAttrVal_Litera != null) &&
        (asAttrVal_Litera != '') &&
        (asAttrVal_Litera != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_Litera_ID;
        vsAttrVal_VString  = asAttrVal_Litera;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = 'ДД/ММ/ГГГГ';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...
    } // if (...

    // Добавление отпускной единицы измерени
    for (i = 0; i < gliEdCount; i++)
    {
      if (gsaFieldValue_Ed_ID[i] == asCEd)
      {
        vsOtpEd_ID     = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsOtpEd_Name   = gsaFieldValue_Ed_Name[i];
        vsOtpEd_PrMC   = '1';
        vsOtpEd_CMCUsl = asID;
        vsOtpEd_Koef   = '1';
        vsOtpEd_Akt    = '1';
        vsOtpEd_Abbr   = gsaFieldValue_Ed_Abbr[i];
        vsOtpEd_CKatED = asCEd;

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

        break;
      } // if (gsaFieldValue_Ed_ID[i] == asCEd)
    } // for (i = 0; i < gliEdCount; i++)

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// Добавление технологической операции в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asLNum        - Код
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMnfOper(abCheckExists, asID, asLNum, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('MnfOper', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_MnfOper,
      asName,
      'MnfOper',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'lNum'      , asLNum                      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'      , asName                      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup'  , gliParameter_OperParams_ID  , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormGroup', gliParameter_NormCategory_ID, 'Params');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMnfOper => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMnfOper

//------------------------------------------------------------------------------
// Добавление единицы оборудования в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
//   asInNum       - Инвентарный номер
//   asCEqGroup    - Ссылка на группу оборудовани
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddObjRem(abCheckExists, asID, asName, asInNum, asCEqGroup)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('ObjRem', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_ObjRem,
      asName,
      'ObjRem',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'InNum'   , asInNum, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEqGroup', asCEqGroup, 'EqGroup');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddObjRem => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddObjRem

//------------------------------------------------------------------------------
// Добавление отпускной единицы измерения в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
//   asPrMC        - Признак применяемости ()
//   asCMCUsl      - Ссылка на владельца (матценность)
//   asKoef        - Коэффициент пересчета относительно учетной единицы измерени
//   asAkt         - Признак активной отпускной единицы измерени
//   asAbbr        - Сокращенное наименование
//   asCKatED      - Ссылка на единицу измерени
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddOtpEd(abCheckExists, asID, asName, asPrMC, asCMCUsl, asKoef,
  asAkt, asAbbr, asCKatED)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('OtpEd', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_OtpEd,
      asName,
      'OtpEd',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMC'  , asPrMC  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMCUsl', asCMCUsl, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Koef'  , asKoef  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Akt'   , asAkt   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr'  , asAbbr  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cKatED', asCKatED, 'ED');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddOtpEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddOtpEd

//------------------------------------------------------------------------------
// Добавление параметра модуля "Спецификации продуктов" в XML-файл в формате
// ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование параметра
//   asCode        - Ссылка на аббревиатуру параметра
//   asOwner       - Ссылка на родительский параметр
//   asNumber      - Номер параметра в группе по порядку
//   asCategory    - Категория параметра
//   asWType       - Тип параметра (целый, дробный, список и т.д.)
//   asIsGroup     - Признак группы
//   asShowPar     - Количество знаков после запятой (для дробных типов)
//   asDefValue    - Значение параметра по умолчанию
//   asCRole       - Ссылка на роль аналитик для значений параметра
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddParameter(abCheckExists, asID, asName, asCode, asOwner,
  asNumber, asCategory, asWType, asIsGroup, asShowPar, asDefValue, asCRole)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;             // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues;     // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Clt_ParamsPListTbl; // Handle узла-коллекции "Элементы списка значений"
var vliPListTbl_ID;                        // Идентификатор элемента списка значений

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Params', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Params,
      asName,
      'Params',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'    , asCode    , 'KatAbbr');

    if (asOwner != '')
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Owner' , asOwner   , 'Params');

    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Owner'   , asOwner   , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Number'  , asNumber  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Category', asCategory, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wType'   , asWType   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'isGroup' , asIsGroup , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ShowPar' , asShowPar , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DefValue', asDefValue, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cRole'   , asCRole   , '');

    // Создание элементов в списке допустимых значений
    switch(asCode)
    {
      // Код параметра = "Код условий труда"
      case '15':
      {
        vliXMLFileGAL_Node_Clt_ParamsPListTbl = XMLFileGAL_AddTag_Collection(
          vliXMLFileGAL_Node_Object,
          'Элементы списка значений',
          'Data.Params_PListTbl',
          'Object');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '1',
          'нормальные');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '2',
          'тяжелые и вредные');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '3',
          'особо тяжелые и вредные');

        break;
      } // case '15':

      // Код параметра = "Единица измерения времени"
      case '37':
      {
        vliXMLFileGAL_Node_Clt_ParamsPListTbl = XMLFileGAL_AddTag_Collection(
          vliXMLFileGAL_Node_Object,
          'Элементы списка значений',
          'Data.Params_PListTbl',
          'Object');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '1',
          'час');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '2',
          'минута');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '3',
          'секунда');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '4',
          'сутки');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '5',
          'неделя');

        break;
      } // case '37':

    } // switch(asCode)

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddParameter => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddParameter

//------------------------------------------------------------------------------
// Создание значения параметра (ParamVol)
// Параметры:
//   abCheckExists                          - Признак проверки существования объекта
//   asID                                   - Идентификатор
//   aliXMLFileGAL_Node_Clt_ParamVolMarshSp - Handle узла-коллекции "Значения параметров дл
//                                              операции МК"
//   asParamName                            - Наименование параметра
//   asCParams                              - Ссылка на параметр модуля "Спецификации продуктов"
//   asValue                                - Значение параметра
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddParamVolMarshSp(abCheckExists, asID, aliXMLFileGAL_Node_Clt_ParamVolMarshSp,
  asParamName, asCParams, asValue)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('ParamVol_MarshSp', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      asParamName,
      'ParamVol_MarshSp',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cParams' , asCParams, 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Value'   , asValue  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ValEmpty', '1'      , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddParamVolMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddParamVolMarshSp

//------------------------------------------------------------------------------
// Добавление записи для сотрудника в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asFIO         - ФИО сотрудника
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddPerson(abCheckExists, asID, asFIO)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Person', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Person,
      asFIO,
      'Person',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'FIO'       , asFIO, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'IsEmployee', 'C'  , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddPerson => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddPerson

//------------------------------------------------------------------------------
// Добавление элемента списка значений дляпараметра модуля "Спецификации продуктов"
// в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                         - Признак проверки существования объекта
//   asID                                  - Идентификатор
//   aliXMLFileGAL_Node_Clt_ParamsPListTbl - Handle узла-коллекции "Элементы списка значений"
//   asNumber                              - Числовое значение элемента в списке
//                                             значений параметра
//   asName                                - Наименование элемента в списке значений
//                                             параметра
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddPListTbl(abCheckExists, asID, aliXMLFileGAL_Node_Clt_ParamsPListTbl,
  asNumber, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Params_PListTbl', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_ParamsPListTbl,
      asName,
      'Params_PListTbl',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Number', asNumber, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddPListTbl => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddPListTbl

//------------------------------------------------------------------------------
// Добавление подразделения в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asKod         - Код
//   asName        - Наименование
//   asCPodr       - Ссылка на вышестоящее подразделение
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddPodr(abCheckExists, asID, asKod, asName, asCPodr)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vsName;                            // Наименование подразделени

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Podr', asID))
        return(0);

    // Дополнительная обработка пустого наименования подразделени
    vsName = asName;
    if (vsName == '')
      vsName = '<пустое наименование>';

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Podr,
      vsName,
      'Podr',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod'  , asKod  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , vsName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cPodr', asCPodr, 'Podr');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddPodr

//------------------------------------------------------------------------------
// Добавление профессии в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asCode        - Код
//   asName        - Наименование
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddProfession(abCheckExists, asID, asCode, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Profession', asID))
        return(0);

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Profession,
      asName,
      'Profession',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'   , asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'   , asName, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'sDopInf', asID  , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddProfession => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddProfession

//------------------------------------------------------------------------------
// Добавление тэга <Collection> (коллекция объектов) в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asCaption     - Значение атрибута "caption" для создаваемого тэга <Collection>
//   asName        - Значение атрибута "name" для создаваемого тэга <Collection>
//   asChildTags   - Значение атрибута "child_tags" для создаваемого тэга <Collection>

function XMLFileGAL_AddTag_Collection(aliParentNode, asCaption, asName, asChildTags)
{

// Локальные переменные
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  try
  {
    vliNode    = goXMLFileGAL.createElement('Collection');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'caption', asCaption);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'child_tags', asChildTags);

    return(vliNodeAdd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTag_Collection => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTag_Collection

//------------------------------------------------------------------------------
// Добавление тэга <Object> (объект) в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asName        - Значение атрибута "name" для создаваемого тэга <Object>
//   asClassId     - Значение атрибута "class_id" для создаваемого тэга <Object>
//   asId          - Значение атрибута "id" для создаваемого тэга <Object>

function XMLFileGAL_AddTag_Object(aliParentNode, asName, asClassId, asId)
{

// Локальные переменные
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  try
  {
    vliNode    = goXMLFileGAL.createElement('Object');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'class_id', asClassId);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'id', asId);

    return(vliNodeAdd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTag_Object => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTag_Object

//------------------------------------------------------------------------------
// Добавление тэга <prop_value> (значение свойства) в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliParentNode - Handle родительского узла в DOM-документе
//   asPropName    - Значение атрибута "prop_name" для создаваемого тэга <prop_value>
//   asValue       - Значение атрибута "value" для создаваемого тэга <prop_value>
//   asRltClass    - Значение атрибута "rlt_class" для создаваемого тэга <prop_value>

function XMLFileGAL_AddTag_PropValue(aliParentNode, asPropName, asValue, asRltClass)
{

// Локальные переменные
var vliNode;    // Handle создаваемого узла в DOM-документе
var vliNodeAdd; // Handle созданного узла в DOM-документе после переподцепки

  try
  {
    vliNode    = goXMLFileGAL.createElement('prop_value');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'prop_name', asPropName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'value', asValue);
    if (asRltClass != '')
      XMLFileGAL_AddTagAttribute(vliNodeAdd, 'rlt_class', asRltClass);

    return(vliNodeAdd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTag_PropValue => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTag_PropValue

//------------------------------------------------------------------------------
// Добавление аттрибута к тэгу в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aliNode - Handle узла в DOM-документе, для которого добавляется атрибут
//   asName  - Наименование атрибута
//   asValue - Значение атрибута

function XMLFileGAL_AddTagAttribute(aliNode, asName, asValue)
{

// Локальные переменные
var vliAttr; // Handle создаваемого атрибута в DOM-документе

  try
  {
    vliAttr = goXMLFileGAL.createAttribute(asName);
    vliAttr.value = asValue;
    aliNode.attributes.setNamedItem(vliAttr);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTagAttribute => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTagAttribute

//------------------------------------------------------------------------------
// Добавление объекта с типом "Тип матценности" в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asKod         - Код
//   asName        - Наименование
//   asKind        - Характеристика матценностей, относящихся к текущему типу
//   asPrMat       - Признак матценностей, относящихся к текущему типу

function XMLFileGAL_AddTypeMC(abCheckExists, asID, asKod, asName, asKind, asPrMat)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  try
  {
    // Проверка существования объекта
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('TypeMC', asID))
        return;

    // Создание объекта
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_TypeMC,
      asName,
      'TypeMC',
      asID);

    // Создание коллекции свойств
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      'Свойства',
      'Prop_Values',
      'prop_value');

    // Создание значений свойств
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod'  , asKod  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , asName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kind' , asKind , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMat', asPrMat, '');

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTypeMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTypeMC

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

  try
  {
    vliNodes = goXMLFileGAL.selectNodes("//Object[@class_id = '" + asClassName + "'][@id = '" + asObjId + "']/@name");
    vbResult = (vliNodes.length > 0);

    return(vbResult);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_CheckExistsObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
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
//
var vliParameter_ID;          // Идентификатор параметра модуля "Спецификации продуктов"
var vsParamName;              // Наименование параметра
var vsParamCode;              // Ссылка на аббревиатуру параметра
var vsParamOwner;             // Ссылка на родительский параметр
var vsParamNumber;            // Номер параметра в группе по порядку
var vsParamCategory;          // Категория параметра
var vsParamWType;             // Тип параметра (целый, дробный, список и т.д.)
var vsParamIsGroup;           // Признак группы
var vsParamShowPar;           // Количество знаков после запятой (для дробных типов)
var vsParamDefValue;          // Значение параметра по умолчанию
var vsParamCRole;             // Ссылка на роль аналитик для значений параметра

  try
  {
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

    XMLFileGAL_AddTagAttribute(vliNode, 'ExpSet_Code', '0');

    XMLFileGAL_AddTagAttribute(vliNode, 'ExpSet_Name',
      'Файл получен путем экспорта данных из INTERMECH');

    // Создание тэга <Data>
    vliNode = goXMLFileGAL.createElement('Data');
    vliData = vliDataRoot.appendChild(vliNode);

    //``````````````````````````````````````````````````````````````````````````
    // Создание тэгов-коллекций

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Создание тэгов-коллекций \n   \n   ');

    // Типы матценностей
    gliXMLFileGAL_Node_Clt_TypeMC = XMLFileGAL_AddTag_Collection(
      vliData,
      'Типы матценностей',
      'Data.TypeMC',
      'Object');

    // Группы матценностей
    gliXMLFileGAL_Node_Clt_GrpMC = XMLFileGAL_AddTag_Collection(
      vliData,
      'Группы матценностей',
      'Data.GrpMC',
      'Object');

    // Единицы измерени
    gliXMLFileGAL_Node_Clt_ED= XMLFileGAL_AddTag_Collection(
      vliData,
      'Единицы измерения',
      'Data.ED',
      'Object');

    // Подразделени
    gliXMLFileGAL_Node_Clt_Podr = XMLFileGAL_AddTag_Collection(
      vliData,
      'Подразделения',
      'Data.Podr',
      'Object');

    // Группы оборудовани
    gliXMLFileGAL_Node_Clt_EqGroup = XMLFileGAL_AddTag_Collection(
      vliData,
      'Группы оборудования',
      'Data.EqGroup',
      'Object');

    // Технологические операции
    gliXMLFileGAL_Node_Clt_MnfOper = XMLFileGAL_AddTag_Collection(
      vliData,
      'Технологические операции',
      'Data.MnfOper',
      'Object');

    // Виды работ
    gliXMLFileGAL_Node_Clt_KaWork = XMLFileGAL_AddTag_Collection(
      vliData,
      'Виды работ',
      'Data.KaWork',
      'Object');

    // Профессии
    gliXMLFileGAL_Node_Clt_Profession = XMLFileGAL_AddTag_Collection(
      vliData,
      'Профессии',
      'Data.Profession',
      'Object');

    // Единицы оборудовани
    gliXMLFileGAL_Node_Clt_ObjRem = XMLFileGAL_AddTag_Collection(
      vliData,
      'Единицы оборудования',
      'Data.ObjRem',
      'Object');

    ////Сотрудники
    //gliXMLFileGAL_Node_Clt_Person = XMLFileGAL_AddTag_Collection(
    //  vliData,
    //  'Сотрудники',
    //  'Data.Person',
    //  'Object');

    // Аббревиатуры параметров
    gliXMLFileGAL_Node_Clt_KatAbbr = XMLFileGAL_AddTag_Collection(
      vliData,
      'Аббревиатуры параметров',
      'Data.KatAbbr',
      'Object');

    // Параметры (Спецификации продуктов)
    gliXMLFileGAL_Node_Clt_Params = XMLFileGAL_AddTag_Collection(
      vliData,
      'Параметры (Спецификации продуктов)',
      'Data.Params',
      'Object');

    // Матценности
    gliXMLFileGAL_Node_Clt_MC = XMLFileGAL_AddTag_Collection(
      vliData,
      'Матценности',
      'Data.MC',
      'Object');

    // Отпускные единицы измерени
    gliXMLFileGAL_Node_Clt_OtpEd = XMLFileGAL_AddTag_Collection(
      vliData,
      'Отпускные единицы измерения',
      'Data.OtpEd',
      'Object');

    // Маршрутные карты
    gliXMLFileGAL_Node_Clt_KatMarsh = XMLFileGAL_AddTag_Collection(
      vliData,
      'Маршрутные карты',
      'Data.KatMarsh',
      'Object');

    // Конструкторские спецификации
    gliXMLFileGAL_Node_Clt_Hdr_KS = XMLFileGAL_AddTag_Collection(
      vliData,
      'Конструкторские спецификации',
      'Data.Hdr_KS',
      'Object');

    // Внешние атрибуты
    gliXMLFileGAL_Node_Clt_AttrNam = XMLFileGAL_AddTag_Collection(
      vliData,
      'Внешние атрибуты',
      'Data.AttrNam',
      'Object');

    //``````````````````````````````````````````````````````````````````````````
    // Формирование групп матценностей

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Формирование групп матценностей \n   \n   ');

    XMLFileGAL_AddGrpMC(false, '1010', '1010', 'Основные материалы');
    XMLFileGAL_AddGrpMC(false, '1015', '1015', 'Специнструмент');
    XMLFileGAL_AddGrpMC(false, '1017', '1017', 'Покупной инструмент');
    XMLFileGAL_AddGrpMC(false, '1020', '1020', 'Вспомогательные материалы');
    XMLFileGAL_AddGrpMC(false, '1060', '1060', 'Комплектующие материалы');
    XMLFileGAL_AddGrpMC(false, '2108', '2108', 'Полуфабрикаты');
    XMLFileGAL_AddGrpMC(false, '2109', '2109', 'Полуфабрикаты-крепежи');

    //``````````````````````````````````````````````````````````````````````````
    // Формирование внешних атрибутов

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Формирование внешних атрибутов \n   \n   ');

    // Формирование внешних атрибутов для каталога матценностей
    gsAttrNam_MC_VersionNmb_ID = '1'; // Идентификатор внешнего атрибута "Номер версии"
    gsAttrNam_MC_InvNmbDoc_ID  = '2'; // Идентификатор внешнего атрибута "Инвентарный номер документа"
    gsAttrNam_MC_BuildCode_ID  = '3'; // Идентификатор внешнего атрибута "Код исполнения"
    gsAttrNam_MC_Litera_ID     = '4'; // Идентификатор внешнего атрибута "Литера"

    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_VersionNmb_ID, '1411', 'Номер версии'               , '0', '0', '0', '0');
    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_InvNmbDoc_ID , '1411', 'Инвентарный номер документа', '0', '0', '0', '0');
    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_BuildCode_ID , '1411', 'Код исполнения'             , '0', '0', '0', '0');
    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_Litera_ID    , '1411', 'Литера'                     , '0', '0', '0', '0');

    //``````````````````````````````````````````````````````````````````````````
    // Формирование аббревиатур параметров

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Формирование аббревиатур параметров \n   \n   ');

    XMLFileGAL_AddKatAbbr(false, 14, 'Razrjad'  , 14, 'Тарифный разряд');
    XMLFileGAL_AddKatAbbr(false, 15, 'WrkCond'  , 15, 'Код условий труда');
    XMLFileGAL_AddKatAbbr(false, 19, 'OpRazr'   , 19, 'Разряд операции');
    XMLFileGAL_AddKatAbbr(false, 20, 'MechRate' , 20, 'Степень механизации');
    XMLFileGAL_AddKatAbbr(false, 23, 'WrkDetQnt', 23, 'Количество одновременно обрабатываемых изделий');
    XMLFileGAL_AddKatAbbr(false, 24, 'PartVol'  , 24, 'Объем операционной партии');
    XMLFileGAL_AddKatAbbr(false, 25, 'KOneTm'   , 25, 'Коэффициент штучного времени');
    XMLFileGAL_AddKatAbbr(false, 27, 'tmPreFin' , 27, 'Норма подготовительно-заключительного времени');
    XMLFileGAL_AddKatAbbr(false, 28, 'tmServ'   , 28, 'Норма вспомогательного времени');
    XMLFileGAL_AddKatAbbr(false, 29, 'tmOpMash' , 29, 'Норма основного времени (машинная)');
    XMLFileGAL_AddKatAbbr(false, 30, 'tmOpMan'  , 30, 'Норма основного времени (ручная)');
    XMLFileGAL_AddKatAbbr(false, 37, 'EdTime'   , 37, 'Единица измерения времени');

    //``````````````````````````````````````````````````````````````````````````
    // Формирование параметров норм (Спецификации продуктов)

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Формирование параметров \n   \n   ');
    vliParameter_ID = 0;
    vsParamNumber = 0;

    // Базовые параметры (INTERMECH)
    //vliParameter_ID = vliParameter_ID + 1;
    //vsParamName     = 'Базовые параметры (INTERMECH)';
    //vsParamCode     = '0';
    //vsParamOwner    = '0';
    //vsParamNumber   = vsParamNumber + 1;
    //vsParamCategory = '0';
    //vsParamWType    = '0';
    //vsParamIsGroup  = '1';
    //vsParamShowPar  = '0';
    //vsParamDefValue = '';
    //vsParamCRole    = '';
    //
    //gliParameter_BaseParams_ID = vliParameter_ID;
    //XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
    //  vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
    //  vsParamDefValue, vsParamCRole);

      // Параметры техоперации
      vliParameter_ID = vliParameter_ID + 1;
      vsParamName     = sGetTune('ImportDataFromPDM.ParGroupMOp');//'Параметры техоперации';

      if (
        (vsParamName == '') ||
        (vsParamName == null))
        vsParamName   = 'Параметры техоперации';

      vsParamCode     = '0';
      vsParamOwner    = '';//gliParameter_BaseParams_ID;
      vsParamNumber   = vsParamNumber + 1;
      vsParamCategory = '1001';
      vsParamWType    = '0';
      vsParamIsGroup  = '1';
      vsParamShowPar  = '0';
      vsParamDefValue = '';
      vsParamCRole    = '';

      gliParameter_OperParams_ID = vliParameter_ID;
      XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
        vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
        vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Тарифный разряд
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Тарифный разряд';
        vsParamCode     = '14';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_Razrjad_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Код условий труда
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Код условий труда';
        vsParamCode     = '15';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '10';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '1';
        vsParamCRole    = '';

        gliOperParam_WrkCond_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Разряд операции
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Разряд операции';
        vsParamCode     = '19';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_OpRazr_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Степень механизации
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Степень механизации';
        vsParamCode     = '20';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_MechRate_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Количество одновременно обрабатываемых изделий
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Количество одновременно обрабатываемых изделий';
        vsParamCode     = '23';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '0';
        vsParamCRole    = '';

        gliOperParam_WrkDetQnt_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Объем операционной партии
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Объем операционной партии';
        vsParamCode     = '24';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_PartVol_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Коэффициент штучного времени
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Коэффициент штучного времени';
        vsParamCode     = '25';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_KOneTm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Норма подготовительно-заключительного времени
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Норма подготовительно-заключительного времени';
        vsParamCode     = '27';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmPreFin_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Норма вспомогательного времени
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Норма вспомогательного времени';
        vsParamCode     = '28';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmServ_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Норма основного времени (машинная)
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Норма основного времени (машинная)';
        vsParamCode     = '29';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmOpMash_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Норма основного времени (ручная)
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Норма основного времени (ручная)';
        vsParamCode     = '30';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmOpMan_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Параметр техоперации -> Единица измерения времени
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Единица измерения времени';
        vsParamCode     = '37';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '10';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '2';
        vsParamCRole    = '';

        gliOperParam_EdTime_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

      // Категории норм
      vliParameter_ID = vliParameter_ID + 1;
      vsParamName     = sGetTune('ImportDataFromPDM.NormGroupMOp');//'Категории норм';

      if (
        (vsParamName == '') ||
        (vsParamName == null))
        vsParamName   = 'Категории норм';

      vsParamCode     = '0';
      vsParamOwner    = '';//gliParameter_BaseParams_ID;
      vsParamNumber   = vsParamNumber + 1;
      vsParamCategory = '100';
      vsParamWType    = '3';
      vsParamIsGroup  = '1';
      vsParamShowPar  = '3';
      vsParamDefValue = '';
      vsParamCRole    = '';

      gliParameter_NormCategory_ID = vliParameter_ID;
      XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
        vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
        vsParamDefValue, vsParamCRole);

        // Материальные нормы
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Материальные нормы';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '101';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'Изделия: Матценность, Услуга. (Изделия)');

        gliParameter_MatNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Инструментальные нормы
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Инструментальные нормы';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '104';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'Изделия: Матценность, Услуга. (Изделия)');

        gliParameter_ToolsNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // Трудовые нормы
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Трудовые нормы';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '102';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'Профессия,должность (Проф)');

        gliParameter_JobNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

          // Параметр трудовых норм -> Норма основного времени (ручная)
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = 'Норма основного времени (ручная)';
          vsParamCode     = '30';
          vsParamOwner    = gliParameter_JobNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '3';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '3';
          vsParamDefValue = '';
          vsParamCRole    = '';

          gliJobNormParam_tmOpMan_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

          // Параметр трудовых норм -> Тарифный разряд
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = 'Тарифный разряд';
          vsParamCode     = '14';
          vsParamOwner    = gliParameter_JobNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '3';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '3';
          vsParamDefValue = '';
          vsParamCRole    = '';

          gliJobNormParam_Razrjad_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

          // Параметр трудовых норм -> Единица измерения времени
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = 'Единица измерения времени';
          vsParamCode     = '37';
          vsParamOwner    = gliParameter_JobNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '10';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '0';
          vsParamDefValue = '2';
          vsParamCRole    = '';

          gliJobNormParam_EdTime_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

        // Нормы использования оборудовани
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = 'Нормы использования оборудования';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '103';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'Оборудование (Оборуд)';

        gliParameter_EqNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

          // Параметр норм использования оборудования -> Норма основного времени (машинная)
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = 'Норма основного времени (машинная)';
          vsParamCode     = '29';
          vsParamOwner    = gliParameter_EqNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '3';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '3';
          vsParamDefValue = '';
          vsParamCRole    = '';

          gliEqNormParam_tmOpMash_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

          // Параметр норм использования оборудования -> Единица измерения времени
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = 'Единица измерения времени';
          vsParamCode     = '37';
          vsParamOwner    = gliParameter_EqNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '10';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '0';
          vsParamDefValue = '2';
          vsParamCRole    = '';

          gliEqNormParam_EdTime_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_Prepare => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// Предварительная подготовка данных, используемых при экспорте записей каталога
// IMBase в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   awCatalogType - Тип каталога:
//     1: Цеха
//     2: Оборудование
//     3: Операции
//     4: Виды работ
//     5: Рабочие специальности
//     6: Материалы
//     7: Оснастка

function XMLFileGAL_PrepareDataForCatalog(awCatalogType)
{

// Локальные переменные
var voQuery_F_KEY;                   // Объект для сохранения выборки данных
var F_KEY_Value;                     // Значение поля F_KEY
var voQuery_FieldName_Podr_KodCeh;   // Объект для сохранения выборки данных
var voQuery_FieldName_Podr_KodUch;   // Объект для сохранения выборки данных
var voQuery_FieldName_Podr_CehName;  // Объект для сохранения выборки данных
var voQuery_FieldName_Podr_UchName;  // Объект для сохранения выборки данных
var voQuery_FieldName_Podr_KodASUP;  // Объект для сохранения выборки данных
var voQuery_FieldName_Equip_Name;    // Объект для сохранения выборки данных
var voQuery_FieldName_Equip_KodASUP; // Объект для сохранения выборки данных
var voQuery_FieldName_Oper_Kod;      // Объект для сохранения выборки данных
var voQuery_FieldName_KaWork_Code;   // Объект для сохранения выборки данных

  try
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    switch (awCatalogType)
    {

      //````````````````````````````````````````````````````````````````````````
      // Цеха
      case 1:
      {
        // Инициализация объекта для каталога IMBase
        goIMBaseAPI_Catalog_TC_CEH = goIMBaseAPI.Catalogs.Item('TC_CEH');

        // Получение внутреннего идентификатора F_KEY для каталога
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'TC_CEH\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // Запрос имени для свойства "Код цеха"
        voQuery_FieldName_Podr_KodCeh = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Код цеха\' ',
          0,
          0);

        // Запрос имени для свойства "Код участка"
        voQuery_FieldName_Podr_KodUch = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Код участка\' ',
          0,
          0);

        // Запрос имени для свойства "Наименование цеха"
        voQuery_FieldName_Podr_CehName = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Наименование цеха\' ',
          0,
          0);

        // Запрос имени для свойства "Наименование участка"
        voQuery_FieldName_Podr_UchName = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Наименование участка\' ',
          0,
          0);

        // Запрос имени для свойства "Код цеха АСУП"
        voQuery_FieldName_Podr_KodASUP = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Код цеха АСУП\' ',
          0,
          0);

        // Сохранение имен свойств для дальнейшего использования при обработке
        // данных каталога
        gsFieldName_Podr_KodCeh  = voQuery_FieldName_Podr_KodCeh.Fields.Item(0).Value;
        gsFieldName_Podr_KodUch  = voQuery_FieldName_Podr_KodUch.Fields.Item(0).Value;
        gsFieldName_Podr_CehName = voQuery_FieldName_Podr_CehName.Fields.Item(0).Value;
        gsFieldName_Podr_UchName = voQuery_FieldName_Podr_UchName.Fields.Item(0).Value;
        gsFieldName_Podr_KodASUP = voQuery_FieldName_Podr_KodASUP.Fields.Item(0).Value;

        // Закрытие выборок данных (освобождение ресурсов)
        voQuery_F_KEY.Close();
        voQuery_FieldName_Podr_KodCeh.Close();
        voQuery_FieldName_Podr_KodUch.Close();
        voQuery_FieldName_Podr_CehName.Close();
        voQuery_FieldName_Podr_UchName.Close();
        voQuery_FieldName_Podr_KodASUP.Close();

        // Инициализация массивов для сохранения свойств подразделений
        gliPodrCount = 0;
        gsaFieldValue_Podr_ID = new Array();
        gsaFieldValue_Podr_KodASUP = new Array();
        gsaFieldValue_Podr_KodCeh = new Array();
        gsaFieldValue_Podr_KodUch = new Array();
        gsaFieldValue_Podr_Name = new Array();
        gsaFieldValue_Podr_cPodr = new Array();
        gsaFieldValue_Podr_PrUch = new Array();

        break;
      } // case 1:

      //````````````````````````````````````````````````````````````````````````
      // Оборудование
      case 2:
      {
        // Инициализация объекта для каталога IMBase
        goIMBaseAPI_Catalog_TC_OBORUD = goIMBaseAPI.Catalogs.Item('TC_OBORUD');

        // Получение внутреннего идентификатора F_KEY для каталога
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'TC_OBORUD\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // Запрос имени для свойства "Наименование"
        voQuery_FieldName_Equip_Name = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Наименование\' ',
          0,
          0);

        // Запрос имени для свойства "Код АСУП"
        voQuery_FieldName_Equip_KodASUP = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Код АСУП\' ',
          0,
          0);

        // Сохранение имен свойств для дальнейшего использования при обработке
        // данных каталога
        gsFieldName_Equip_Name    = voQuery_FieldName_Equip_Name.Fields.Item(0).Value;
        gsFieldName_Equip_KodASUP = voQuery_FieldName_Equip_KodASUP.Fields.Item(0).Value;

        // Закрытие выборок данных (освобождение ресурсов)
        voQuery_F_KEY.Close();
        voQuery_FieldName_Equip_Name.Close();
        voQuery_FieldName_Equip_KodASUP.Close();

      break;
      } // case 2:

      //````````````````````````````````````````````````````````````````````````
      // Операции
      case 3:
      {
        // Инициализация объекта для каталога IMBase
        goIMBaseAPI_Catalog_TC_OPER = goIMBaseAPI.Catalogs.Item('TC_OPER');

        // Получение внутреннего идентификатора F_KEY для каталога
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'TC_OPER\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // Запрос имени для свойства "Код операции"
        voQuery_FieldName_Oper_Kod = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Код операции\' ',
          0,
          0);

        // Сохранение имен свойств для дальнейшего использования при обработке
        // данных каталога
        gsFieldName_Oper_Kod = voQuery_FieldName_Oper_Kod.Fields.Item(0).Value;

        // Закрытие выборок данных (освобождение ресурсов)
        voQuery_F_KEY.Close();
        voQuery_FieldName_Oper_Kod.Close();

        break;
      } // case 3:

      //````````````````````````````````````````````````````````````````````````
      // Виды работ
      case 4:
      {
        // Инициализация объекта для каталога IMBase
        goIMBaseAPI_Catalog_CTL000055 = goIMBaseAPI.Catalogs.Item('CTL000055');

        // Получение внутреннего идентификатора F_KEY для каталога
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'CTL000055\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // Запрос имени для свойства "Код вида работ"
        voQuery_FieldName_KaWork_Code = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'Код вида работ\' ',
          0,
          0);

        // Сохранение имен свойств для дальнейшего использования при обработке
        // данных каталога
        gsFieldName_KaWork_Code = voQuery_FieldName_KaWork_Code.Fields.Item(0).Value;

        // Закрытие выборок данных (освобождение ресурсов)
        voQuery_F_KEY.Close();
        voQuery_FieldName_KaWork_Code.Close();

        break;
      } // case 4:

      //````````````````````````````````````````````````````````````````````````
      // Рабочие специальности
      case 5:
      {
        // Инициализация объекта для каталога IMBase
        goIMBaseAPI_Catalog_TC_WORKERS = goIMBaseAPI.Catalogs.Item('TC_WORKERS');

        break;
      } // case 5:

      //````````````````````````````````````````````````````````````````````````
      // Материалы
      case 6:
      {
        // Инициализация объекта для каталога IMBase
        try
        {
          // Сначала поискать каталог "Материалы"
          goIMBaseAPI_Catalog_CTL000001 = goIMBaseAPI.Catalogs.Item('CTL000159');
        } // try

        catch(vrdEvent)
        {
          // Иначе - обрабатывать каталог "Сортамент"
          goIMBaseAPI_Catalog_CTL000001 = goIMBaseAPI.Catalogs.Item('CTL000001');
        } // catch(vrdEvent)

        break;
      } // case 6:

      //````````````````````````````````````````````````````````````````````````
      // Оснастка
      case 7:
      {
        // Инициализация объекта для каталога IMBase
        goIMBaseAPI_Catalog_TC_OSNAST = goIMBaseAPI.Catalogs.Item('TC_OSNAST');

        break;
      } // case 7:

    } // switch (awCatalogType)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_PrepareDataForCatalog => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_PrepareDataForCatalog

//------------------------------------------------------------------------------
// Предварительная подготовка данных каталога подразделений для выгрузки в XML-файл
// в формате ГАЛАКТИКА-ERP

function XMLFileGAL_PrepareForUnloadDataPodr()
{

// Локальные переменные
var i; // Переменная цикла
var j; // Переменная цикла

  try
  {
    for (i = 0; i < gliPodrCount; i++)
    {
      if (gsaFieldValue_Podr_PrUch[i] == 0)
        continue;

      for (j = 0; j < gliPodrCount; j++)
      {
        if (j == i)
          continue;

        if (gsaFieldValue_Podr_PrUch[j] == 1)
          continue;

        if (gsaFieldValue_Podr_KodCeh[j] == gsaFieldValue_Podr_KodCeh[i])
        {
          gsaFieldValue_Podr_cPodr[i] = gsaFieldValue_Podr_ID[j];
          break;
        } // if (gsaFieldValue_Podr_KodCeh[j] == gsaFieldValue_Podr_KodCeh[i])
      } // for (j = 0; j < gliPodrCount; j++)
    } // for (i = 0; i < gliPodrCount; i++)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_PrepareForUnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_PrepareForUnloadDataPodr

//------------------------------------------------------------------------------
// Функция выгрузки данных из каталога IMBase в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   awCatalogType - Тип каталога:
//     1: Цеха
//     2: Оборудование
//     3: Операции
//     4: Виды работ
//     5: Рабочие специальности
//     6: Материалы
//     7: Оснастка

function XMLFileGAL_UnloadCatalog(awCatalogType)
{
  try
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей каталога
    XMLFileGAL_PrepareDataForCatalog(awCatalogType);

    // Выгрузка данных каталога
    switch (awCatalogType)
    {

      //````````````````````````````````````````````````````````````````````````
      // Цеха
      case 1:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_CEH.Folders,
          '0');

        break;
      } // case 1:

      //````````````````````````````````````````````````````````````````````````
      // Оборудование
      case 2:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_OBORUD.Folders,
          '0');

        break;
      } // case 2:

      //````````````````````````````````````````````````````````````````````````
      // Операции
      case 3:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_OPER.Folders,
          '0');

        break;
      } // case 3:

      //````````````````````````````````````````````````````````````````````````
      // Виды работ
      case 4:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_CTL000055.Folders,
          '0');

        break;
      } // case 4:

      //````````````````````````````````````````````````````````````````````````
      // Рабочие специальности
      case 5:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_WORKERS.Folders,
          '0');

        break;
      } // case 5:

      //````````````````````````````````````````````````````````````````````````
      // Материалы
      case 6:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_CTL000001.Folders,
          '0');

        break;
      } // case 6:

      //````````````````````````````````````````````````````````````````````````
      // Оснастка
      case 7:
      {
        // Рекурсивная обработка папок
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_OSNAST.Folders,
          '0');

        break;
      } // case 7:

    } // switch (awCatalogType)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadCatalog => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadCatalog

//------------------------------------------------------------------------------
// Выгрузка данных каталога подразделений в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadDataPodr()
{

// Локальные переменные
var i;          // Переменная цикла
var j;          // Переменная цикла
var vsObjGalID; // ИД обьекта (Галактика)

  try
  {
    for (i = 0; i < gliPodrCount; i++)
    {
      // Создание подразделения в XML-файле
      vsObjGalID = GetObjGalID_Podr(
        false,
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_KodASUP[i],
        gsaFieldValue_Podr_Name[i],
        gsaFieldValue_Podr_cPodr[i]);
    } // for (i = 0; i < gliPodrCount; i++)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadDataPodr

//------------------------------------------------------------------------------
// Выгрузка данных из папки каталога IMBase в XML-файл в формате
// ГАЛАКТИКА-ERP
// Параметры:
//   awCatalogType - Тип каталога:
//     1: Цеха
//     2: Оборудование
//     3: Операции
//     4: Виды работ
//     5: Рабочие специальности
//     6: Материалы
//     7: Оснастка
//   aoFolder      - Объект "Папка" (IImBaseFolder) в IMBaseAPI

function XMLFileGAL_UnloadFolder(awCatalogType, aoFolder)
{

// Локальные переменные
var vsParentFolderLevel;             // Для сохранения ссылки на вышестоящую папку
var vsObjGalID;                      // ИД обьекта (Галактика)
//
var i;                               // Переменная цикла
var j;                               // Переменная цикла
var vbExistsProperty;                // Признак наличия дополнительных свойств для текущей папки
var voPropery;                       // Объект для дополнительных свойств текущей папки
var voRecords;                       // Объект для записей текущей папки
var voTable;                         // Объект для работы с таблицей
var vsTableId;                       // Идентификатор таблицы
var vsFolderId;                      // Идентификатор папки
var vsIMBaseKey;                     // Для сохранения IMBaseKey
var vsIMBaseKey;                     // Для сохранения IMBaseKey
var vsKeyData;                       // Строка с данными для записи, соответствующей очередному
                                     //   IMBaseKey
var vsaValues;                       // Массив значений свойств
//
var vsFieldValue_Podr_CehName;       // Наименование цеха
var vsFieldValue_Podr_UchName;       // Наименование участка
var vsFieldValue_Podr_KodASUP;       // Код АСУП для цеха/участка
var vsFieldValue_Podr_KodCeh;        // Код цеха
var vsFieldValue_Podr_KodUch;        // Код участка
var vsFieldValue_Equip_Name;         // Наименование группы оборудовани
var vsFieldValue_Equip_KodASUP;      // Код АСУП для группы оборудовани
var vsFieldValue_Oper_Kod;           // Код операции
var vsFieldValue_Oper_Name;          // Наименование операции
var vsFieldValue_KaWork_Code;        // Код вида работ
var vsFieldValue_KaWork_Name;        // Наименование вида работ
var vsFieldValue_Profession_Name;    // Наименование профессии
var vsFieldValue_Profession_Kod;     // Код профессии
var vsFieldValue_Profession_sDopInf; // Ключ IMBaseKey
var vsFieldValue_MC_BaseMKey;        // Ключ записи основного материала
var vsFieldValue_MC_Name;            // Наименование МЦ
var vsFieldValue_MC_BarKod;          // Номенклатурный номер
var vsFieldValue_MC_Obozn;           // Код МЦ
var vsFieldValue_MC_Kind;            // Характеристика МЦ
var vsFieldValue_MC_cTypeMC;         // Ссылка на тип МЦ
var vsFieldValue_MC_TNVED;           // Код ТНВЭД МЦ
var vsFieldValue_MC_RemMC;           // Примечание МЦ
var vsFieldValue_MC_AtlLastDate;     // Дата последней модификации МЦ
var vsFieldValue_MC_Massa;           // Масса МЦ
var vsFieldValue_MC_PrMat;           // Характеристика МЦ
var vsFieldValue_MC_cEd;             // Ссылка на учетную единицу измерени
var vsFieldValue_MC_PriznMat;        // Признак материала для МЦ
var vsFieldValue_MC_VersionNmb;      // Значение внешнего атрибута "Номер версии" для МЦ
var vsFieldValue_MC_InvNmbDoc;       // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsFieldValue_MC_BuildCode;       // Значение внешнего атрибута "Код исполнения" для МЦ
var vsFieldValue_MC_Litera;          // Значение внешнего атрибута "Литера" для МЦ
var vbExists;                        // Признак существовани
//
var voQuery_Equipment;               // Объект для сохранения выборки данных для единиц оборудовани
var vsFieldValue_ObjRem_Name;        // Наименование единицы оборудовани
var vsFieldValue_ObjRem_InNum;       // Инвентарный номер единицы оборудовани

  try 
  {
    vsObjGalID = '0';

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Проверка существования объекта "Папка"
    if (aoFolder == null)
      return(vsObjGalID);

    // Определение ссылки на вышестоящую папку
    vsParentFolderLevel = 0;

    if (aoFolder.Parent != null)
    {
      XMLFileGAL_UnloadFolder(awCatalogType, aoFolder.Parent);
      vsParentFolderLevel = aoFolder.Parent.Level;
    } // if (aoFolder.Parent != null)

    // Обработка текущей папки каталога
    switch (awCatalogType)
    {

      //````````````````````````````````````````````````````````````````````````
      // Цеха
      case 1:
        {
          // Проверка наличия дополнительных свойств для текущей папки
          vbExistsProperty = true;

          try {
            voPropery = aoFolder.Property;
          }

          catch (e) {
            vbExistsProperty = false;
          }

          // Если у папки нет дополнительных свойств, то эта папка пропускается
          if (!vbExistsProperty)
            break;

          // Получение кода для цеха
          vsFieldValue_Podr_KodCeh = voPropery.Values(gsFieldName_Podr_KodCeh);

          if (vsFieldValue_Podr_KodCeh == null)
            vsFieldValue_Podr_KodCeh = '';

          // Получение кода для участка
          vsFieldValue_Podr_KodUch = voPropery.Values(gsFieldName_Podr_KodUch);

          if (vsFieldValue_Podr_KodUch == null)
            vsFieldValue_Podr_KodUch = '';

          // Получение наименования цеха
          vsFieldValue_Podr_CehName = voPropery.Values(gsFieldName_Podr_CehName);

          if (vsFieldValue_Podr_CehName == null)
            vsFieldValue_Podr_CehName = '';

          // Получение наименования участка
          vsFieldValue_Podr_UchName = voPropery.Values(gsFieldName_Podr_UchName);

          if (vsFieldValue_Podr_UchName == null)
            vsFieldValue_Podr_UchName = '';

          // Получение кода АСУП
          try {
            vsFieldValue_Podr_KodASUP = voPropery.Values(gsFieldName_Podr_KodASUP);

            if (vsFieldValue_Podr_KodASUP == null)
              vsFieldValue_Podr_KodASUP = '';
          }

          catch (e) {
            vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodCeh;

            if (vsFieldValue_Podr_KodUch != '')
              vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodASUP + '/' + vsFieldValue_Podr_KodUch;
          }

          // Если у подразделения не задан "Код АСУП", то это подразделение
          // пропускается
          if (
          (vsFieldValue_Podr_KodASUP == 0) ||
          (vsFieldValue_Podr_KodASUP == ''))
            break;

          // Сохранение идентификатора подразделения для возврата результата функции
          vsObjGalID = aoFolder.Level;

          // Уточнение наименования подразделения
          if (vsFieldValue_Podr_UchName != '')
            vsFieldValue_Podr_CehName = vsFieldValue_Podr_UchName;

          // Если у подразделения не задано "Наименование", то это подразделение
          // пропускается
          //if (
          //  (vsFieldValue_Podr_CehName == 0) ||
          //  (vsFieldValue_Podr_CehName == ''))
          //  break;

          // Проверка существования подразделения в массиве
          vbExists = false;

          for (i = 0; i < gliPodrCount; i++)
            if (gsaFieldValue_Podr_ID[i] == aoFolder.Level) {
              vbExists = true;
              break;
            } //if (gsaFieldValue_Podr_ID[i] == aoFolder.Level)

          if (vbExists)
            break; // подразделение уже есть в массиве

          // Сохранение свойств подразделения в массивах
          gliPodrCount = gliPodrCount + 1;
          gsaFieldValue_Podr_ID[gliPodrCount - 1] = aoFolder.Level;
          gsaFieldValue_Podr_KodASUP[gliPodrCount - 1] = vsFieldValue_Podr_KodASUP;
          gsaFieldValue_Podr_KodCeh[gliPodrCount - 1] = vsFieldValue_Podr_KodCeh;
          gsaFieldValue_Podr_KodUch[gliPodrCount - 1] = vsFieldValue_Podr_KodUch;
          gsaFieldValue_Podr_Name[gliPodrCount - 1] = vsFieldValue_Podr_CehName;
          gsaFieldValue_Podr_cPodr[gliPodrCount - 1] = 0;
          gsaFieldValue_Podr_PrUch[gliPodrCount - 1] = 0;

          if (vsFieldValue_Podr_UchName != '')
            gsaFieldValue_Podr_PrUch[gliPodrCount - 1] = 1;

          // Создание подразделения в XML-файле
          //vsObjGalID = GetObjGalID_Podr(
          //  true,
          //  aoFolder.Level,
          //  aoFolder.Level,
          //  vsFieldValue_Podr_KodASUP,
          //  vsFieldValue_Podr_CehName,
          //  vsParentFolderLevel);

          break;
        }  // case 1:

      //````````````````````````````````````````````````````````````````````````
      // Оборудование
      case 2:
      {
        // Проверка наличия дополнительных свойств для текущей папки
        vbExistsProperty = true;

        try
        {
          voPropery = aoFolder.Property;
        }

        catch(e)
        {
          vbExistsProperty = false;
        }

        // Получение кода АСУП и наименования для группы оборудовани
        if (! vbExistsProperty)
        {
          vsFieldValue_Equip_Name    = aoFolder.Name;
          vsFieldValue_Equip_KodASUP = aoFolder.Level;
        }
        else
        {
          vsFieldValue_Equip_Name    = voPropery.Values(gsFieldName_Equip_Name);
          vsFieldValue_Equip_KodASUP = voPropery.Values(gsFieldName_Equip_KodASUP);
        }

        // Если у группы оборудования не задан "Код АСУП", то эта группа оборудовани
        // пропускается
        if (
          (vsFieldValue_Equip_KodASUP == null) ||
          (vsFieldValue_Equip_KodASUP == 0) ||
          (vsFieldValue_Equip_KodASUP == ''))
        {
          //break;
          vsFieldValue_Equip_Name    = aoFolder.Name;
          vsFieldValue_Equip_KodASUP = aoFolder.Level;
        }

        // Уточнение наименования группы оборудовани
        if (
          (vsFieldValue_Equip_Name == null) ||
          (vsFieldValue_Equip_Name == 0) ||
          (vsFieldValue_Equip_Name == ''))
          vsFieldValue_Equip_Name = 'Группа оборудования "' + aoFolder.Name + '"';

        // Создание группы оборудования в XML-файле
        vsObjGalID = GetObjGalID_EqGroup(
          true,
          aoFolder.Level,
          aoFolder.Level,
          vsFieldValue_Equip_KodASUP,
          vsFieldValue_Equip_Name);

        // Запрос единиц оборудования (инвентарных номеров) для текущей группы оборудовани
        voQuery_Equipment = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f3, ' +
          '   f5 ' +
          ' FROM ' +
          '   tc_invnom ' +
          ' WHERE ' +
          '   f1 = ' + aoFolder.Level + ' ',
          0,
          0);

        // Цикл по единицам оборудовани
        for (
          voQuery_Equipment.First();
          voQuery_Equipment.EOF == 0;
          voQuery_Equipment.Next())
        {
          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          vsFieldValue_ObjRem_Name  = voQuery_Equipment.Fields.Item(1).Value;
          vsFieldValue_ObjRem_InNum = voQuery_Equipment.Fields.Item(0).Value;

          // Корректировка заголовка окна визуализации
          SetVisualHeader(
            'Экспорт данных каталога IMBase "Оборудование" \n' +
            'объект: \n' +
            vsFieldValue_Equip_Name + ' => "' + vsFieldValue_ObjRem_InNum + '"');

          // Если у оборудования не задан "Инвентарный номер", то это оборудование
          // пропускается
          if (
            (vsFieldValue_ObjRem_InNum == null) ||
            (vsFieldValue_ObjRem_InNum == 0) ||
            (vsFieldValue_ObjRem_InNum == ''))
            continue;

          // Уточнение наименования оборудовани
          if (
            (vsFieldValue_ObjRem_Name == null) ||
            (vsFieldValue_ObjRem_Name == 0) ||
            (vsFieldValue_ObjRem_Name == ''))
            vsFieldValue_ObjRem_Name = aoFolder.Name;

          // Создание единицы оборудования в XML-файле
          vsObjGalID = GetObjGalID_ObjRem(
            false,
            vsFieldValue_ObjRem_InNum,
            vsFieldValue_ObjRem_InNum,
            vsFieldValue_ObjRem_Name,
            vsFieldValue_ObjRem_InNum,
            aoFolder.Level);
        } // for (...

        // Закрытие выборок данных (освобождение ресурсов)
        voQuery_Equipment.Close();

        break;
      } // case 2:

      //````````````````````````````````````````````````````````````````````````
      // Операции
    case 3:
      {
        // Проверка наличия дополнительных свойств для текущей папки
        vbExistsProperty = true;

        try 
        {
          voPropery = aoFolder.Property;
        }

        catch (e) 
        {
          vbExistsProperty = false;
        }

        // Получение кода операции
        if (!vbExistsProperty)
          vsFieldValue_Oper_Kod = aoFolder.Level
        else
          vsFieldValue_Oper_Kod = voPropery.Values(gsFieldName_Oper_Kod);

        // Получение наименования операции
        vsFieldValue_Oper_Name = aoFolder.Name;

        // Если у операции не задан "Код операции", то эта операци
        // пропускается
        if (
          (vsFieldValue_Oper_Kod == null) ||
          (vsFieldValue_Oper_Kod == 0) ||
          (vsFieldValue_Oper_Kod == '0') ||
          (vsFieldValue_Oper_Kod == '')) {
          //break;
          vsFieldValue_Oper_Kod = aoFolder.Level;
        } // if (...

        // Создание техоперации в XML-файле
        vsObjGalID = GetObjGalID_MnfOper(
          true,
          aoFolder.Level,
          vsFieldValue_Oper_Kod,
          vsFieldValue_Oper_Kod,
          vsFieldValue_Oper_Name);

        break;
      }  // case 3:

      //````````````````````````````````````````````````````````````````````````
      // Виды работ
      case 4:
      {
        // Проверка наличия дополнительных свойств для текущей папки
        vbExistsProperty = true;

        try
        {
          voPropery = aoFolder.Property;
        }

        catch(e)
        {
          vbExistsProperty = false;
        }

        // Если у папки нет дополнительных свойств, то эта папка пропускается
        if (! vbExistsProperty)
          break;

        // Получение кода вида работ
        vsFieldValue_KaWork_Code = voPropery.Values(gsFieldName_KaWork_Code);

        // Получение наименования вида работ
        vsFieldValue_KaWork_Name = aoFolder.Name;

        // Если у вида работ не задан "Код вида работ", то этот вид работ
        // пропускается
        if (
          (vsFieldValue_KaWork_Code == null) ||
          (vsFieldValue_KaWork_Code == 0) ||
          (vsFieldValue_KaWork_Code == ''))
          break;

        // Создание вида работ в XML-файле
        vsObjGalID = GetObjGalID_KaWork(
          true,
          aoFolder.Level,
          aoFolder.Level,
          vsFieldValue_KaWork_Code,
          vsFieldValue_KaWork_Name);

        break;
      } // case 4:

      //````````````````````````````````````````````````````````````````````````
      // Рабочие специальности
      case 5:
      {
        //
        vsTableId = toHex(goIMBaseAPI_Catalog_TC_WORKERS.TableId);
        vsFolderId = toHex(aoFolder.Key);

        // Получение ссылки на объект для работы с записями в текущей папке
        voRecords = aoFolder.Records;

        // Цикл по записям в текущей папке
        for (j = 1; j <= voRecords.Count; j++)
        {
          //
          vsIMBaseKey = 'i6' + vsTableId + vsFolderId + toHex(voRecords.Item(j - 1).Key);

          // Получение наименования профессии
          vsFieldValue_Profession_Name = voRecords.Item(j - 1).Values('Наименование исполнителя');

          // Получение кода профессии
          vsFieldValue_Profession_Kod = voRecords.Item(j - 1).Values('Код профессии');

          // Получение идентификатора IMBaseKey для профессии
          vsFieldValue_Profession_sDopInf = vsIMBaseKey;

          // Если для рабочей специальности не задано "Наименование исполнителя", то эта запись
          // пропускается
          if (
            (vsFieldValue_Profession_Name == null) ||
            (vsFieldValue_Profession_Name == 0) ||
            (vsFieldValue_Profession_Name == '0') ||
            (vsFieldValue_Profession_Name == ''))
            break;

          // Если для рабочей специальности не задан "Код профессии", то эта запись
          // пропускается
          if (
            (vsFieldValue_Profession_Kod == null) ||
            (vsFieldValue_Profession_Kod == 0) ||
            (vsFieldValue_Profession_Kod == '0') ||
            (vsFieldValue_Profession_Kod == ''))
            break;

          // Создание профессии в XML-файле
          vsObjGalID = GetObjGalID_Profession(
            true,
            vsFieldValue_Profession_sDopInf,
            vsFieldValue_Profession_sDopInf,
            vsFieldValue_Profession_Kod,
            vsFieldValue_Profession_Name);
        } // for (j = 1; j <= voRecords.Count; j++)

        break;
      } // case 5:

      //````````````````````````````````````````````````````````````````````````
      // Материалы
      case 6:
      {
        // Получение ссылки на объект для работы с записями в текущей папке
        voRecords = aoFolder.Records;

        // Цикл по записям в текущей папке
        for (j = 1; j <= voRecords.Count; j++)
        {
          // Получение ссылки на объект для работы с таблицей
          voTable = voRecords.Item(j - 1).Table;
          if (voTable == null)
            continue;

          // Открытие таблицы
          voTable.Open();

          // Цикл по записям в текущей таблице
          if (voTable.RecordCount > 0)
          {
            // Позиционирование на первую запись таблицы
            voTable.First();

            do
            {
              // Получение IMBaseKey для записи таблицы
              vsIMBaseKey = voTable.ImbaseKey;

              // Ключ записи основного материала по умолчанию приравнивается к IMBaseKey
              vsFieldValue_MC_BaseMKey = vsIMBaseKey;

              // Получение в виде строки наименований полей и их значений для записи таблицы
              vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

              // Разделение наименований и значений полей
              vsaValues = IMBaseAPI_SplitParams(vsKeyData);

              // Определение свойств для создаваемой матценности
              vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ ОБОЗНАЧЕНИЕ');
              vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КОД АСУП');
              vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ ОБОЗНАЧЕНИЕ');
              vsFieldValue_MC_Kind        = '0'; // Покупна
              vsFieldValue_MC_cTypeMC     = '7'; // Основной материал
              vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ГОСТ');
              vsFieldValue_MC_RemMC       = '';
              vsFieldValue_MC_AtlLastDate = '';
              vsFieldValue_MC_Massa       = '0';
              vsFieldValue_MC_PriznMat    = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПРИЗНАК МАТЕРИАЛА');
              vsFieldValue_MC_PrMat       = '0'; // Материал
              vsFieldValue_MC_cEd         = '0';
              vsFieldValue_MC_VersionNmb  = '';
              vsFieldValue_MC_InvNmbDoc   = '';
              vsFieldValue_MC_BuildCode   = '';
              vsFieldValue_MC_Litera      = '';

              // Дополнительная обработка для вспомогательных материалов
              if (
                (vsFieldValue_MC_PriznMat == 'В') ||
                (vsFieldValue_MC_PriznMat == 'ВСПОМОГАТЕЛЬНЫЙ'))
              {
                vsFieldValue_MC_cTypeMC   = '77'; // Вспомогательный материал

                // Определение, задан ли для вспомогательного материала связанный основной материал
                //
                vsFieldValue_MC_BaseMKey = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛЮЧ ЗАПИСИ ОСНОВНОГО МАТЕРИАЛА');

                if (
                  (vsFieldValue_MC_BaseMKey == null) ||
                  (vsFieldValue_MC_BaseMKey == ''))
                  vsFieldValue_MC_BaseMKey = vsIMBaseKey;
              } // if (...

              // Уточнение наименования создаваемой матценности
              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name =
                  IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛАСС') + ' ' +
                  vsFieldValue_MC_Obozn + ' ' +
                  vsFieldValue_MC_TNVED;

              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name = voTable.Name;

              // Создание матценности в XML-файле
              vsObjGalID = GetObjGalID_MC(
                true,
                vsIMBaseKey,
                vsFieldValue_MC_BaseMKey,
                vsFieldValue_MC_Name,
                vsFieldValue_MC_BarKod,
                vsFieldValue_MC_Obozn,
                vsFieldValue_MC_Kind,
                vsFieldValue_MC_cTypeMC,
                vsFieldValue_MC_TNVED,
                vsFieldValue_MC_RemMC,
                vsFieldValue_MC_AtlLastDate,
                vsFieldValue_MC_Massa,
                vsFieldValue_MC_PrMat,
                vsFieldValue_MC_cEd,
                vsFieldValue_MC_VersionNmb,
                vsFieldValue_MC_InvNmbDoc,
                vsFieldValue_MC_BuildCode,
                vsFieldValue_MC_Litera);

              // Переход к следующей записи таблицы
              voTable.Next();
            } while (! voTable.EOF)
          } // if (voTable.RecordCount > 0)

          // Закрытие таблицы
          voTable.Close();
        } // for (j = 1; j <= voRecords.Count; j++)

        break;
      } // case 6:

      //````````````````````````````````````````````````````````````````````````
      // Оснастка
      case 7:
      {
        // Получение ссылки на объект для работы с записями в текущей папке
        voRecords = aoFolder.Records;

        // Цикл по записям в текущей папке
        for (j = 1; j <= voRecords.Count; j++)
        {
          // Получение ссылки на объект для работы с таблицей
          voTable = voRecords.Item(j - 1).Table;
          if (voTable == null)
            continue;

          // Открытие таблицы
          voTable.Open();

          // Цикл по записям в текущей таблице
          if (voTable.RecordCount > 0)
          {
            // Позиционирование на первую запись таблицы
            voTable.First();

            do
            {
              // Получение IMBaseKey для записи таблицы
              vsIMBaseKey = voTable.ImbaseKey;

              // Получение в виде строки наименований полей и их значений для записи таблицы
              vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

              // Разделение наименований и значений полей
              vsaValues = IMBaseAPI_SplitParams(vsKeyData);

              // Определение свойств для создаваемой матценности
              vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ НАИМЕНОВАНИЕ');
              vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КОД АСУП');
              vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ НАИМЕНОВАНИЕ');
              vsFieldValue_MC_Kind        = '0'; // Покупна
              vsFieldValue_MC_cTypeMC     = '777';
              vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ГОСТ');
              vsFieldValue_MC_RemMC       = '';
              vsFieldValue_MC_AtlLastDate = '';
              vsFieldValue_MC_Massa       = '0';
              vsFieldValue_MC_PrMat       = '2'; // Инструмент, оснастка
              vsFieldValue_MC_cEd         = '0';
              vsFieldValue_MC_VersionNmb  = '';
              vsFieldValue_MC_InvNmbDoc   = '';
              vsFieldValue_MC_BuildCode   = '';
              vsFieldValue_MC_Litera      = '';

              // Уточнение наименования создаваемой матценности
              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name =
                  IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛАСС') + ' ' +
                  vsFieldValue_MC_Obozn + ' ' +
                  vsFieldValue_MC_TNVED;

              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name = voTable.Name;

              // Создание матценности в XML-файле
              vsObjGalID = GetObjGalID_MC(
                true,
                vsIMBaseKey,
                vsIMBaseKey,
                vsFieldValue_MC_Name,
                vsFieldValue_MC_BarKod,
                vsFieldValue_MC_Obozn,
                vsFieldValue_MC_Kind,
                vsFieldValue_MC_cTypeMC,
                vsFieldValue_MC_TNVED,
                vsFieldValue_MC_RemMC,
                vsFieldValue_MC_AtlLastDate,
                vsFieldValue_MC_Massa,
                vsFieldValue_MC_PrMat,
                vsFieldValue_MC_cEd,
                vsFieldValue_MC_VersionNmb,
                vsFieldValue_MC_InvNmbDoc,
                vsFieldValue_MC_BuildCode,
                vsFieldValue_MC_Litera);

              // Переход к следующей записи таблицы
              voTable.Next();
            } while (! voTable.EOF)
          } // if (voTable.RecordCount > 0)

          // Закрытие таблицы
          voTable.Close();
        } // for (j = 1; j <= voRecords.Count; j++)

        break;
      } // case 7:

    } // switch (awCatalogType)

    return(vsObjGalID);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadFolder => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadFolder

//------------------------------------------------------------------------------
// Рекурсивная выгрузка данных из папок каталога IMBase в XML-файл в формате
// ГАЛАКТИКА-ERP
// Параметры:
//   awCatalogType       - Тип каталога:
//     1: Цеха
//     2: Оборудование
//     3: Операции
//     4: Виды работ
//     5: Рабочие специальности
//     6: Материалы
//     7: Оснастка
//   aoCurrentFolders    - Ссылка на объект-множество каталогов
//   asParentFolderLevel - Идентификатор вышестоящей папки

function XMLFileGAL_UnloadFolders(awCatalogType, aoCurrentFolders, asParentFolderLevel)
{

// Локальные переменные
var i;                               // Переменная цикла
var j;                               // Переменная цикла
var k;                               // Переменная цикла
var vsObjGalID;                      // ИД обьекта (Галактика)
var vliFolderCount;                  // Количество обрабатываемых папок в текущей папке
var vbExistsProperty;                // Признак наличия дополнительных свойств для текущей папки
var voPropery;                       // Объект для дополнительных свойств текущей папки
var voRecords;                       // Объект для записей текущей папки
var voTable;                         // Объект для работы с таблицей
var vsTableId;                       // Идентификатор таблицы
var vsFolderId;                      // Идентификатор папки
var vsIMBaseKey;                     // Для сохранения IMBaseKey
var vsKeyData;                       //
var vsaValues;                       // Массив значений свойств
//
var vsFieldValue_Podr_CehName;       // Наименование цеха
var vsFieldValue_Podr_UchName;       // Наименование участка
var vsFieldValue_Podr_KodASUP;       // Код АСУП для цеха/участка
var vsFieldValue_Podr_KodCeh;        // Код цеха
var vsFieldValue_Podr_KodUch;        // Код участка
var vsFieldValue_Equip_Name;         // Наименование группы оборудовани
var vsFieldValue_Equip_KodASUP;      // Код АСУП для группы оборудовани
var vsFieldValue_Oper_Kod;           // Код операции
var vsFieldValue_Oper_Name;          // Наименование операции
var vsFieldValue_KaWork_Code;        // Код вида работ
var vsFieldValue_KaWork_Name;        // Наименование вида работ
var vsFieldValue_Profession_Name;    // Наименование профессии
var vsFieldValue_Profession_Kod;     // Код профессии
var vsFieldValue_Profession_sDopInf; // Ключ IMBaseKey для профессии
var vsFieldValue_MC_BaseMKey;        // Ключ записи основного материала
var vsFieldValue_MC_Name;            // Наименование МЦ
var vsFieldValue_MC_BarKod;          // Номенклатурный номер
var vsFieldValue_MC_Obozn;           // Код МЦ
var vsFieldValue_MC_Kind;            // Характеристика МЦ
var vsFieldValue_MC_cTypeMC;         // Ссылка на тип МЦ
var vsFieldValue_MC_TNVED;           // Код ТНВЭД МЦ
var vsFieldValue_MC_RemMC;           // Примечание МЦ
var vsFieldValue_MC_AtlLastDate;     // Дата последней модификации МЦ
var vsFieldValue_MC_Massa;           // Масса МЦ
var vsFieldValue_MC_PrMat;           // Характеристика МЦ
var vsFieldValue_MC_PriznMat;        // Признак материала для МЦ
var vsFieldValue_MC_VersionNmb;      // Значение внешнего атрибута "Номер версии" для МЦ
var vsFieldValue_MC_InvNmbDoc;       // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsFieldValue_MC_BuildCode;       // Значение внешнего атрибута "Код исполнения" для МЦ
var vsFieldValue_MC_Litera;          // Значение внешнего атрибута "Литера" для МЦ
//
var voQuery_Equipment;               // Объект для сохранения выборки данных для единиц оборудовани
var vsFieldValue_ObjRem_Name;        // Наименование единицы оборудовани
var vsFieldValue_ObjRem_InNum;       // Инвентарный номер единицы оборудовани

  try
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Проверка существования объекта aoCurrentFolders
    if (aoCurrentFolders == null)
      return;

    // Определение количества обрабатываемых папок в текущей папке
    vliFolderCount = aoCurrentFolders.Count;

    // Цикл по обрабатываемым папкам
    for (i = 1; i <= vliFolderCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      // Обработка текущей папки каталога
      switch (awCatalogType)
      {

        //``````````````````````````````````````````````````````````````````````
        // Цеха
        case 1:
        {
          // Проверка наличия дополнительных свойств для текущей папки
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // Если у папки нет дополнительных свойств, то эта папка пропускается
          if (! vbExistsProperty)
            break;

          // Получение кода для цеха
          vsFieldValue_Podr_KodCeh = voPropery.Values(gsFieldName_Podr_KodCeh);
          if (vsFieldValue_Podr_KodCeh == null)
            vsFieldValue_Podr_KodCeh = '';

          // Получение кода для участка
          vsFieldValue_Podr_KodUch = voPropery.Values(gsFieldName_Podr_KodUch);
          if (vsFieldValue_Podr_KodUch == null)
            vsFieldValue_Podr_KodUch = '';

          // Получение наименования цеха
          vsFieldValue_Podr_CehName = voPropery.Values(gsFieldName_Podr_CehName);
          if (vsFieldValue_Podr_CehName == null)
            vsFieldValue_Podr_CehName = '';

          // Получение наименования участка
          vsFieldValue_Podr_UchName = voPropery.Values(gsFieldName_Podr_UchName);
          if (vsFieldValue_Podr_UchName == null)
            vsFieldValue_Podr_UchName = '';

          // Получение кода АСУП
          try
          {
            vsFieldValue_Podr_KodASUP = voPropery.Values(gsFieldName_Podr_KodASUP);
            if (vsFieldValue_Podr_KodASUP == null)
              vsFieldValue_Podr_KodASUP = '';
          }

          catch(e)
          {
            vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodCeh;
            if (vsFieldValue_Podr_KodUch != '')
              vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodASUP + '/' + vsFieldValue_Podr_KodUch;
          }

          // Если у подразделения не задан "Код АСУП", то это подразделение
          // пропускается
          if (
            (vsFieldValue_Podr_KodASUP == 0) ||
            (vsFieldValue_Podr_KodASUP == ''))
            break;

          // Уточнение наименования подразделени
          if (vsFieldValue_Podr_UchName != '')
            vsFieldValue_Podr_CehName = vsFieldValue_Podr_UchName;

          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Если у подразделения не задано "Наименование", то это подразделение
          // пропускается
          //if (
          //  (vsFieldValue_Podr_CehName == 0) ||
          //  (vsFieldValue_Podr_CehName == ''))
          //  break;

          // Корректировка заголовка окна визуализации
          SetVisualHeader(
            'Экспорт данных каталога IMBase "Цеха" \n' +
            'объект: \n' +
            vsFieldValue_Podr_CehName);

          // Сохранение свойств подразделения в массивах
          gliPodrCount = gliPodrCount + 1;
          gsaFieldValue_Podr_ID[gliPodrCount - 1]      = aoCurrentFolders.Item(i - 1).Level;
          gsaFieldValue_Podr_KodASUP[gliPodrCount - 1] = vsFieldValue_Podr_KodASUP;
          gsaFieldValue_Podr_KodCeh[gliPodrCount - 1]  = vsFieldValue_Podr_KodCeh;
          gsaFieldValue_Podr_KodUch[gliPodrCount - 1]  = vsFieldValue_Podr_KodUch;
          gsaFieldValue_Podr_Name[gliPodrCount - 1]    = vsFieldValue_Podr_CehName;
          gsaFieldValue_Podr_cPodr[gliPodrCount - 1]   = 0;
          gsaFieldValue_Podr_PrUch[gliPodrCount - 1]   = 0;
          if (vsFieldValue_Podr_UchName != '')
            gsaFieldValue_Podr_PrUch[gliPodrCount - 1] = 1;

          // Создание подразделения в XML-файле
          //vsObjGalID = GetObjGalID_Podr(
          //  false,
          //  aoCurrentFolders.Item(i - 1).Level,
          //  aoCurrentFolders.Item(i - 1).Level,
          //  vsFieldValue_Podr_KodASUP,
          //  vsFieldValue_Podr_CehName,
          //  vsParentFolderLevel);

          break;
        } // case 1:

        //``````````````````````````````````````````````````````````````````````
        // Оборудование
        case 2:
        {
          // Проверка наличия дополнительных свойств для текущей папки
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // Получение кода АСУП и наименования для группы оборудовани
          if (! vbExistsProperty)
          {
            vsFieldValue_Equip_Name    = aoCurrentFolders.Item(i - 1).Name;
            vsFieldValue_Equip_KodASUP = aoCurrentFolders.Item(i - 1).Level;
          }
          else
          {
            vsFieldValue_Equip_Name    = voPropery.Values(gsFieldName_Equip_Name);
            vsFieldValue_Equip_KodASUP = voPropery.Values(gsFieldName_Equip_KodASUP);
          }

          // Если у группы оборудования не задан "Код АСУП", то эта группа оборудовани
          // пропускается
          if (
            (vsFieldValue_Equip_KodASUP == null) ||
            (vsFieldValue_Equip_KodASUP == 0) ||
            (vsFieldValue_Equip_KodASUP == ''))
          {
            //break;
            vsFieldValue_Equip_Name    = aoCurrentFolders.Item(i - 1).Name;
            vsFieldValue_Equip_KodASUP = aoCurrentFolders.Item(i - 1).Level;
          }

          // Уточнение наименования группы оборудовани
          if (
            (vsFieldValue_Equip_Name == null) ||
            (vsFieldValue_Equip_Name == 0) ||
            (vsFieldValue_Equip_Name == ''))
            vsFieldValue_Equip_Name = 'Группа оборудования "' + aoCurrentFolders.Item(i - 1).Name + '"';

          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Корректировка заголовка окна визуализации
          SetVisualHeader(
            'Экспорт данных каталога IMBase "Оборудование" \n' +
            'объект: \n' +
            vsFieldValue_Equip_Name);

          // Создание группы оборудования в XML-файле
          vsObjGalID = GetObjGalID_EqGroup(
            false,
            aoCurrentFolders.Item(i - 1).Level,
            aoCurrentFolders.Item(i - 1).Level,
            vsFieldValue_Equip_KodASUP,
            vsFieldValue_Equip_Name);

          // Запрос единиц оборудования (инвентарных номеров) для текущей группы оборудовани
          voQuery_Equipment = goIMBaseAPI.Database.OpenQuery(
            ' SELECT ' +
            '   f3, ' +
            '   f5 ' +
            ' FROM ' +
            '   tc_invnom ' +
            ' WHERE ' +
            '   f1 = ' + aoCurrentFolders.Item(i - 1).Level + ' ',
            0,
            0);

          // Цикл по единицам оборудовани
          for (
            voQuery_Equipment.First();
            voQuery_Equipment.EOF == 0;
            voQuery_Equipment.Next())
          {
            // Проверка прерывания процесса выполнения со стороны пользовател
            if (!nNextVisual(0))
              throw new Error(10003, 'USER_ABORT');

            vsFieldValue_ObjRem_Name  = voQuery_Equipment.Fields.Item(1).Value;
            vsFieldValue_ObjRem_InNum = voQuery_Equipment.Fields.Item(0).Value;

            // Корректировка заголовка окна визуализации
            SetVisualHeader(
              'Экспорт данных каталога IMBase "Оборудование" \n' +
              'объект: \n' +
              vsFieldValue_Equip_Name + ' => "' + vsFieldValue_ObjRem_InNum + '"');

            // Если у оборудования не задан "Инвентарный номер", то это оборудование
            // пропускается
            if (
              (vsFieldValue_ObjRem_InNum == null) ||
              (vsFieldValue_ObjRem_InNum == 0) ||
              (vsFieldValue_ObjRem_InNum == ''))
              continue;

            // Уточнение наименования оборудовани
            if (
              (vsFieldValue_ObjRem_Name == null) ||
              (vsFieldValue_ObjRem_Name == 0) ||
              (vsFieldValue_ObjRem_Name == ''))
              vsFieldValue_ObjRem_Name = aoCurrentFolders.Item(i - 1).Name;

            // Создание единицы оборудования в XML-файле
            vsObjGalID = GetObjGalID_ObjRem(
              false,
              vsFieldValue_ObjRem_InNum,
              vsFieldValue_ObjRem_InNum,
              vsFieldValue_ObjRem_Name,
              vsFieldValue_ObjRem_InNum,
              aoCurrentFolders.Item(i - 1).Level);
          } // for (...

          // Закрытие выборок данных (освобождение ресурсов)
          voQuery_Equipment.Close();

          break;
        } // case 2:

        //``````````````````````````````````````````````````````````````````````
        // Операции
        case 3:
        {
          // Проверка наличия дополнительных свойств для текущей папки
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // Получение кода операции
          if (! vbExistsProperty)
            vsFieldValue_Oper_Kod  = aoCurrentFolders.Item(i - 1).Level
          else
            vsFieldValue_Oper_Kod  = voPropery.Values(gsFieldName_Oper_Kod);

          // Получение наименования операции
          vsFieldValue_Oper_Name = aoCurrentFolders.Item(i - 1).Name;

          // Если у операции не задан "Код операции", то эта операци
          // пропускается
          if (
            (vsFieldValue_Oper_Kod == null) ||
            (vsFieldValue_Oper_Kod == 0) ||
            (vsFieldValue_Oper_Kod == '0') ||
            (vsFieldValue_Oper_Kod == ''))
          {
            //break;
            vsFieldValue_Oper_Kod  = aoCurrentFolders.Item(i - 1).Level;
          } // if (...

          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Корректировка заголовка окна визуализации
          SetVisualHeader(
            'Экспорт данных каталога IMBase "Операции" \n' +
            'объект: \n' +
            vsFieldValue_Oper_Name);

          // Создание техоперации в XML-файле
          vsObjGalID = GetObjGalID_MnfOper(
            true,
            aoCurrentFolders.Item(i - 1).Level,
            vsFieldValue_Oper_Kod,
            vsFieldValue_Oper_Kod,
            vsFieldValue_Oper_Name);

          break;
        } // case 3:

        //``````````````````````````````````````````````````````````````````````
        // Виды работ
        case 4:
        {
          // Проверка наличия дополнительных свойств для текущей папки
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // Если у папки нет дополнительных свойств, то эта папка пропускается
          if (! vbExistsProperty)
            break;

          // Получение кода вида работ
          vsFieldValue_KaWork_Code = voPropery.Values(gsFieldName_KaWork_Code);

          // Получение наименования вида работ
          vsFieldValue_KaWork_Name = aoCurrentFolders.Item(i - 1).Name;

          // Если у вида работ не задан "Код вида работ", то этот вид работ
          // пропускается
          if (
            (vsFieldValue_KaWork_Code == null) ||
            (vsFieldValue_KaWork_Code == 0) ||
            (vsFieldValue_KaWork_Code == ''))
            break;

          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Корректировка заголовка окна визуализации
          SetVisualHeader(
            'Экспорт данных каталога IMBase "Виды работ" \n' +
            'объект: \n' +
            vsFieldValue_KaWork_Name);

          // Создание вида работ в XML-файле
          vsObjGalID = GetObjGalID_KaWork(
            false,
            aoCurrentFolders.Item(i - 1).Level,
            aoCurrentFolders.Item(i - 1).Level,
            vsFieldValue_KaWork_Code,
            vsFieldValue_KaWork_Name);

          break;
        } // case 4:

        //``````````````````````````````````````````````````````````````````````
        // Рабочие специальности
        case 5:
        {
          //
          vsTableId = toHex(goIMBaseAPI_Catalog_TC_WORKERS.TableId);
          vsFolderId = toHex(aoCurrentFolders.Item(i - 1).Key);

          // Получение ссылки на объект для работы с записями в текущей папке
          voRecords = aoCurrentFolders.Item(i - 1).Records;

          // Цикл по записям в текущей папке
          for (j = 1; j <= voRecords.Count; j++)
          {
            //
            vsIMBaseKey = 'i6' + vsTableId + vsFolderId + toHex(voRecords.Item(j - 1).Key);

            // Получение наименования профессии
            vsFieldValue_Profession_Name = voRecords.Item(j - 1).Values('Наименование исполнителя');

            // Получение кода профессии
            vsFieldValue_Profession_Kod = voRecords.Item(j - 1).Values('Код профессии');

            // Получение идентификатора IMBaseKey для профессии
            vsFieldValue_Profession_sDopInf = vsIMBaseKey;

            // Если для рабочей специальности не задано "Наименование исполнителя", то эта запись
            // пропускается
            if (
              (vsFieldValue_Profession_Name == null) ||
              (vsFieldValue_Profession_Name == 0) ||
              (vsFieldValue_Profession_Name == '0') ||
              (vsFieldValue_Profession_Name == ''))
              break;

            // Если для рабочей специальности не задан "Код профессии", то эта запись
            // пропускается
            if (
              (vsFieldValue_Profession_Kod == null) ||
              (vsFieldValue_Profession_Kod == 0) ||
              (vsFieldValue_Profession_Kod == '0') ||
              (vsFieldValue_Profession_Kod == ''))
              break;

            // Проверка прерывания процесса выполнения со стороны пользовател
            if (!nNextVisual(0))
              throw new Error(10003, 'USER_ABORT');

            // Корректировка заголовка окна визуализации
            SetVisualHeader(
              'Экспорт данных каталога IMBase "Рабочие специальности" \n' +
              'объект: \n' +
              vsFieldValue_Profession_Name);

            // Создание профессии в XML-файле
            vsObjGalID = GetObjGalID_Profession(
              false,
              vsFieldValue_Profession_sDopInf,
              vsFieldValue_Profession_sDopInf,
              vsFieldValue_Profession_Kod,
              vsFieldValue_Profession_Name);
          } // for (j = 1; j <= voRecords.Count; j++)

          break;
        } // case 5:

        //``````````````````````````````````````````````````````````````````````
        // Материалы
        case 6:
        {
          if (aoCurrentFolders.Item(i - 1).Name == 'Покрытия')
            continue;

          // Получение ссылки на объект для работы с записями в текущей папке
          voRecords = aoCurrentFolders.Item(i - 1).Records;

          // Цикл по записям в текущей папке
          for (j = 1; j <= voRecords.Count; j++)
          {
            // Получение ссылки на объект для работы с таблицей
            voTable = voRecords.Item(j - 1).Table;
            if (voTable == null)
              continue;

            // Открытие таблицы
            voTable.Open();

            // Цикл по записям в текущей таблице
            if (voTable.RecordCount > 0)
            {
              // Позиционирование на первую запись таблицы
              voTable.First();

              do
              {
                // Получение IMBaseKey для записи таблицы
                vsIMBaseKey = voTable.ImbaseKey;

                // Ключ записи основного материала по умолчанию приравнивается к IMBaseKey
                vsFieldValue_MC_BaseMKey = vsIMBaseKey;

                // Получение в виде строки наименований полей и их значений для записи таблицы
                vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

                // Разделение наименований и значений полей
                vsaValues = IMBaseAPI_SplitParams(vsKeyData);

                // Определение свойств для создаваемой матценности
                vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ ОБОЗНАЧЕНИЕ');
                vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КОД АСУП');
                vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ ОБОЗНАЧЕНИЕ');
                vsFieldValue_MC_Kind        = '0'; // Покупна
                vsFieldValue_MC_cTypeMC     = '7'; // Основной материал
                vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ГОСТ');
                vsFieldValue_MC_RemMC       = '';
                vsFieldValue_MC_AtlLastDate = '';
                vsFieldValue_MC_Massa       = '0';
                vsFieldValue_MC_PriznMat    = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПРИЗНАК МАТЕРИАЛА');
                vsFieldValue_MC_PrMat       = '0'; // Материал
                vsFieldValue_MC_cEd         = '0';
                vsFieldValue_MC_VersionNmb  = '';
                vsFieldValue_MC_InvNmbDoc   = '';
                vsFieldValue_MC_BuildCode   = '';
                vsFieldValue_MC_Litera      = '';

                // Дополнительная обработка для вспомогательных материалов
                if (
                  (vsFieldValue_MC_PriznMat == 'В') ||
                  (vsFieldValue_MC_PriznMat == 'ВСПОМОГАТЕЛЬНЫЙ'))
                {
                  vsFieldValue_MC_cTypeMC   = '77'; // Вспомогательный материал

                  // Определение, задан ли для вспомогательного материала связанный основной материал
                  //
                  vsFieldValue_MC_BaseMKey = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛЮЧ ЗАПИСИ ОСНОВНОГО МАТЕРИАЛА');

                  if (
                    (vsFieldValue_MC_BaseMKey == null) ||
                    (vsFieldValue_MC_BaseMKey == ''))
                    vsFieldValue_MC_BaseMKey = vsIMBaseKey;
                } // if (...

                // Уточнение наименования создаваемой матценности
                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name =
                    IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛАСС') + ' ' +
                    vsFieldValue_MC_Obozn + ' ' +
                    vsFieldValue_MC_TNVED;

                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name = voTable.Name;

                // Проверка прерывания процесса выполнения со стороны пользовател
                if (!nNextVisual(0))
                  throw new Error(10003, 'USER_ABORT');

                // Корректировка заголовка окна визуализации
                SetVisualHeader(
                  'Экспорт данных каталога IMBase "Материалы" \n' +
                  'объект (id = ' + vsIMBaseKey + '):\n' +
                  vsFieldValue_MC_Name);

                // Создание матценности в XML-файле
                vsObjGalID = GetObjGalID_MC(
                  true,
                  vsIMBaseKey,
                  vsFieldValue_MC_BaseMKey,
                  vsFieldValue_MC_Name,
                  vsFieldValue_MC_BarKod,
                  vsFieldValue_MC_Obozn,
                  vsFieldValue_MC_Kind,
                  vsFieldValue_MC_cTypeMC,
                  vsFieldValue_MC_TNVED,
                  vsFieldValue_MC_RemMC,
                  vsFieldValue_MC_AtlLastDate,
                  vsFieldValue_MC_Massa,
                  vsFieldValue_MC_PrMat,
                  vsFieldValue_MC_cEd,
                  vsFieldValue_MC_VersionNmb,
                  vsFieldValue_MC_InvNmbDoc,
                  vsFieldValue_MC_BuildCode,
                  vsFieldValue_MC_Litera);

                // Переход к следующей записи таблицы
                voTable.Next();
              } while (! voTable.EOF)
            } // if (voTable.RecordCount > 0)

            // Закрытие таблицы
            voTable.Close();
          } // for (j = 1; j <= voRecords.Count; j++)

          break;
        } // case 6:

        //``````````````````````````````````````````````````````````````````````
        // Оснастка
        case 7:
        {
          // Получение ссылки на объект для работы с записями в текущей папке
          voRecords = aoCurrentFolders.Item(i - 1).Records;

          // Цикл по записям в текущей папке
          for (j = 1; j <= voRecords.Count; j++)
          {
            // Получение ссылки на объект для работы с таблицей
            voTable = voRecords.Item(j - 1).Table;
            if (voTable == null)
              continue;

            // Открытие таблицы
            voTable.Open();

            // Цикл по записям в текущей таблице
            if (voTable.RecordCount > 0)
            {
              // Позиционирование на первую запись таблицы
              voTable.First();

              do
              {
                // Получение IMBaseKey для записи таблицы
                vsIMBaseKey = voTable.ImbaseKey;

                // Получение в виде строки наименований полей и их значений для записи таблицы
                vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

                // Разделение наименований и значений полей
                vsaValues = IMBaseAPI_SplitParams(vsKeyData);

                // Определение свойств для создаваемой матценности
                vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ НАИМЕНОВАНИЕ');
                vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КОД АСУП');
                vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ НАИМЕНОВАНИЕ');
                vsFieldValue_MC_Kind        = '0'; // Покупна
                vsFieldValue_MC_cTypeMC     = '777';
                vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ГОСТ');
                vsFieldValue_MC_RemMC       = '';
                vsFieldValue_MC_AtlLastDate = '';
                vsFieldValue_MC_Massa       = '0';
                vsFieldValue_MC_PrMat       = '0'; // Материал
                vsFieldValue_MC_cEd         = '0';
                vsFieldValue_MC_VersionNmb  = '';
                vsFieldValue_MC_InvNmbDoc   = '';
                vsFieldValue_MC_BuildCode   = '';
                vsFieldValue_MC_Litera      = '';

                // Уточнение наименования создаваемой матценности
                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name =
                    IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛАСС') + ' ' +
                    vsFieldValue_MC_Obozn + ' ' +
                    vsFieldValue_MC_TNVED;

                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name = voTable.Name;

                // Проверка прерывания процесса выполнения со стороны пользовател
                if (!nNextVisual(0))
                  throw new Error(10003, 'USER_ABORT');

                // Корректировка заголовка окна визуализации
                SetVisualHeader(
                  'Экспорт данных каталога IMBase "Оснастка" \n' +
                  'объект (id = ' + vsIMBaseKey + '):\n' +
                  vsFieldValue_MC_Name);

                // Создание матценности в XML-файле
                vsObjGalID = GetObjGalID_MC(
                  false,
                  vsIMBaseKey,
                  vsIMBaseKey,
                  vsFieldValue_MC_Name,
                  vsFieldValue_MC_BarKod,
                  vsFieldValue_MC_Obozn,
                  vsFieldValue_MC_Kind,
                  vsFieldValue_MC_cTypeMC,
                  vsFieldValue_MC_TNVED,
                  vsFieldValue_MC_RemMC,
                  vsFieldValue_MC_AtlLastDate,
                  vsFieldValue_MC_Massa,
                  vsFieldValue_MC_PrMat,
                  vsFieldValue_MC_cEd,
                  vsFieldValue_MC_VersionNmb,
                  vsFieldValue_MC_InvNmbDoc,
                  vsFieldValue_MC_BuildCode,
                  vsFieldValue_MC_Litera);

                // Переход к следующей записи таблицы
                voTable.Next();
              } while (! voTable.EOF)
            } // if (voTable.RecordCount > 0)

            // Закрытие таблицы
            voTable.Close();
          } // for (j = 1; j <= voRecords.Count; j++)

          break;
        } // case 7:

      } // switch (awCatalogType)

      if (aoCurrentFolders.Item(i - 1).SubFoldersCount != 0)
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          aoCurrentFolders.Item(i - 1).Folders,
          aoCurrentFolders.Item(i - 1).Level);
    } // for (i = 1; i <= vliFolderCount; i++)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadFolders => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadFolders

//------------------------------------------------------------------------------
// Выгрузка объекта из каталога "Материалы" по ключу IMBaseKey
// в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   asIMBaseKey - Ключ IMBaseKey

function XMLFileGAL_UnloadIMBaseObj_MatNorm(asIMBaseKey)
{

// Локальные переменные
var vsObjGalID;                  // ИД обьекта (Галактика)
var vsKeyData;                   //
var vsaValues;                   //
var vsFieldValue_MC_BaseMKey;    // Ключ записи основного материала
var vsFieldValue_MC_Name;        //
var vsFieldValue_MC_BarKod;      //
var vsFieldValue_MC_Obozn;       //
var vsFieldValue_MC_Kind;        //
var vsFieldValue_MC_cTypeMC;     //
var vsFieldValue_MC_TNVED;       //
var vsFieldValue_MC_RemMC;       //
var vsFieldValue_MC_AtlLastDate; //
var vsFieldValue_MC_Massa;       //
var vsFieldValue_MC_PrMat;       //
var vsFieldValue_MC_VersionNmb;  // Значение внешнего атрибута "Номер версии" для МЦ
var vsFieldValue_MC_InvNmbDoc;   // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsFieldValue_MC_BuildCode;   // Значение внешнего атрибута "Код исполнения" для МЦ
var vsFieldValue_MC_Litera;      // Значение внешнего атрибута "Литера" для МЦ
var vsFieldValue_MC_PriznMat;    // Признак материала для МЦ
var vsFieldValue_MC_VersionNmb;  // Значение внешнего атрибута "Номер версии" для МЦ
var vsFieldValue_MC_InvNmbDoc;   // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsFieldValue_MC_BuildCode;   // Значение внешнего атрибута "Код исполнения" для МЦ
var vsFieldValue_MC_Litera;      // Значение внешнего атрибута "Литера" для МЦ

  try
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    //
    if (
      (asIMBaseKey == null) ||
      (asIMBaseKey == ''))
      return;

    // Получение в виде строки наименований полей и их значений для записи таблицы
    vsKeyData = goImDataBase.GetKeyDataEx(asIMBaseKey);

    // Ключ записи основного материала по умолчанию приравнивается к IMBaseKey
    vsFieldValue_MC_BaseMKey = asIMBaseKey;

    // Разделение наименований и значений полей
    vsaValues = IMBaseAPI_SplitParams(vsKeyData);

    // Определение свойств для создаваемой матценности
    vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ ОБОЗНАЧЕНИЕ');
    vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КОД АСУП');
    vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ ОБОЗНАЧЕНИЕ');
    vsFieldValue_MC_Kind        = '0'; // Покупная
    vsFieldValue_MC_cTypeMC     = '0';
    vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ГОСТ');
    vsFieldValue_MC_RemMC       = '';
    vsFieldValue_MC_AtlLastDate = '';
    vsFieldValue_MC_Massa       = '0';
    vsFieldValue_MC_PriznMat    = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПРИЗНАК МАТЕРИАЛА');
    vsFieldValue_MC_PrMat       = '0'; // Материал
    vsFieldValue_MC_cEd         = '0';
    vsFieldValue_MC_VersionNmb  = '';
    vsFieldValue_MC_InvNmbDoc   = '';
    vsFieldValue_MC_BuildCode   = '';
    vsFieldValue_MC_Litera      = '';

    // Уточнение наименования создаваемой матценности
    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name =
        IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛАСС') + ' ' +
        vsFieldValue_MC_Obozn + ' ' +
        vsFieldValue_MC_TNVED;

    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name = voTable.Name;

    // Дополнительная обработка для вспомогательных материалов
    if (
      (vsFieldValue_MC_PriznMat == 'В') ||
      (vsFieldValue_MC_PriznMat == 'ВСПОМОГАТЕЛЬНЫЙ'))
    {
      vsFieldValue_MC_cTypeMC   = '77'; // Вспомогательный материал

      // Определение, задан ли для вспомогательного материала связанный основной материал
      //
      vsFieldValue_MC_BaseMKey = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛЮЧ ЗАПИСИ ОСНОВНОГО МАТЕРИАЛА');

      if (
        (vsFieldValue_MC_BaseMKey == null) ||
        (vsFieldValue_MC_BaseMKey == ''))
        vsFieldValue_MC_BaseMKey = asIMBaseKey;
    } // if (...

    // Создание матценности в XML-файле
    vsObjGalID = GetObjGalID_MC(
      true,
      asIMBaseKey,
      vsFieldValue_MC_BaseMKey,
      vsFieldValue_MC_Name,
      vsFieldValue_MC_BarKod,
      vsFieldValue_MC_Obozn,
      vsFieldValue_MC_Kind,
      vsFieldValue_MC_cTypeMC,
      vsFieldValue_MC_TNVED,
      vsFieldValue_MC_RemMC,
      vsFieldValue_MC_AtlLastDate,
      vsFieldValue_MC_Massa,
      vsFieldValue_MC_PrMat,
      vsFieldValue_MC_cEd,
      vsFieldValue_MC_VersionNmb,
      vsFieldValue_MC_InvNmbDoc,
      vsFieldValue_MC_BuildCode,
      vsFieldValue_MC_Litera);

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadIMBaseObj_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadIMBaseObj_MatNorm

//------------------------------------------------------------------------------
// Выгрузка объекта из каталога "Оснастка" по ключу IMBaseKey
// в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   asIMBaseKey - Ключ IMBaseKey

function XMLFileGAL_UnloadIMBaseObj_ToolNorm(asIMBaseKey)
{

// Локальные переменные
var vsObjGalID;                  // ИД обьекта (Галактика)
var vsKeyData;                   //
var vsaValues;                   //
var vsFieldValue_MC_Name;        //
var vsFieldValue_MC_BarKod;      //
var vsFieldValue_MC_Obozn;       //
var vsFieldValue_MC_Kind;        //
var vsFieldValue_MC_cTypeMC;     //
var vsFieldValue_MC_TNVED;       //
var vsFieldValue_MC_RemMC;       //
var vsFieldValue_MC_AtlLastDate; //
var vsFieldValue_MC_Massa;       //
var vsFieldValue_MC_PrMat;       //
var vsFieldValue_MC_VersionNmb;  // Значение внешнего атрибута "Номер версии" для МЦ
var vsFieldValue_MC_InvNmbDoc;   // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsFieldValue_MC_BuildCode;   // Значение внешнего атрибута "Код исполнения" для МЦ
var vsFieldValue_MC_Litera;      // Значение внешнего атрибута "Литера" для МЦ

  try
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    //
    if (
      (asIMBaseKey == null) ||
      (asIMBaseKey == ''))
      return;

    // Получение в виде строки наименований полей и их значений для записи таблицы
    vsKeyData = goImDataBase.GetKeyDataEx(asIMBaseKey);

    // Разделение наименований и значений полей
    vsaValues = IMBaseAPI_SplitParams(vsKeyData);

    // Определение свойств для создаваемой матценности
    vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ НАИМЕНОВАНИЕ');
    vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КОД АСУП');
    vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ПОЛНОЕ НАИМЕНОВАНИЕ');
    vsFieldValue_MC_Kind        = '0'; // Покупная
    vsFieldValue_MC_cTypeMC     = '777';
    vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'ГОСТ');
    vsFieldValue_MC_RemMC       = '';
    vsFieldValue_MC_AtlLastDate = '';
    vsFieldValue_MC_Massa       = '0';
    vsFieldValue_MC_PrMat       = '0'; // Материал
    vsFieldValue_MC_cEd         = '0';
    vsFieldValue_MC_VersionNmb  = '';
    vsFieldValue_MC_InvNmbDoc   = '';
    vsFieldValue_MC_BuildCode   = '';
    vsFieldValue_MC_Litera      = '';

    // Уточнение наименования создаваемой матценности
    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name =
        IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, 'КЛАСС') + ' ' +
        vsFieldValue_MC_Obozn + ' ' +
        vsFieldValue_MC_TNVED;

    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name = voTable.Name;

    // Создание матценности в XML-файле
    vsObjGalID = GetObjGalID_MC(
      true,
      asIMBaseKey,
      asIMBaseKey,
      vsFieldValue_MC_Name,
      vsFieldValue_MC_BarKod,
      vsFieldValue_MC_Obozn,
      vsFieldValue_MC_Kind,
      vsFieldValue_MC_cTypeMC,
      vsFieldValue_MC_TNVED,
      vsFieldValue_MC_RemMC,
      vsFieldValue_MC_AtlLastDate,
      vsFieldValue_MC_Massa,
      vsFieldValue_MC_PrMat,
      vsFieldValue_MC_cEd,
      vsFieldValue_MC_VersionNmb,
      vsFieldValue_MC_InvNmbDoc,
      vsFieldValue_MC_BuildCode,
      vsFieldValue_MC_Litera);

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadIMBaseObj_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadIMBaseObj_ToolNorm

//------------------------------------------------------------------------------
// Добавление единиц измерения из БД INTERMECH в XML-файл в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadMeasureUnits()
{

// Локальные переменные
var i;              // Переменная цикла
var vliRecordCount; // Количество записей в выборке
var vsObjGalID;     // ИД обьекта (Галактика)
var vsID;           //
var vsName;         //
var vsAbbr;         //

  // Инициализация массивов для сохранения свойств единиц измерени
  gliEdCount = 0;
  gsaFieldValue_Ed_ID = new Array();
  gsaFieldValue_Ed_Abbr = new Array();
  gsaFieldValue_Ed_Name = new Array();

  // Запрос на выбор всех ЕИ
  goSearchAPI.OpenQuery(
    ' SELECT ' +
    '   mu_id, ' +
    '   mu_name, ' +
    '   mu_short_name ' +
    ' FROM ' +
    '   mu ');

  // Получение количества записей в выборке
  vliRecordCount = goSearchAPI.QueryRecordCount();

  // Цикл по записям выборки
  goSearchAPI.QueryGoFirst();

  for (i = 0; i < vliRecordCount; i++)
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Добавление объекта "Единица измерения" в XML-файл в формате ГАЛАКТИКА-ERP
    vsID   = goSearchAPI.QueryFieldByName('mu_id');
    vsName = goSearchAPI.QueryFieldByName('mu_name');
    vsAbbr = goSearchAPI.QueryFieldByName('mu_short_name');

    vsObjGalID = GetObjGalID_Ed(
      false,
      vsID,
      vsID,
      vsName,
      vsAbbr);

    // Сохранение свойств добавленной единицы измерения в массиве
    gliEdCount = gliEdCount + 1;
    gsaFieldValue_Ed_ID[gliEdCount - 1]   = vsID;
    gsaFieldValue_Ed_Abbr[gliEdCount - 1] = vsAbbr;
    gsaFieldValue_Ed_Name[gliEdCount - 1] = vsName;

    // Переход к следующей записи выборки
    if (goSearchAPI.QueryGoNext() != 1)
      return;
  } // for (i = 0; i < len; i++)
} // function XMLFileGAL_UnloadMeasureUnits

//------------------------------------------------------------------------------
// Рекурсивная выгрузка машиностроительных объектов по дереву состава

function XMLFileGAL_UnloadObj(asObjID)
{

// Локальные переменные
var i;                    // Переменная цикла
var j;                    // Переменная цикла
var vsObjGalID;           // ИД обьекта (Галактика)
var vsaValues;            // Массив значений свойств
var vsID;                 // Идентификатор объекта
var vsValue_Massa;        // Значение свойства "Масса"
var vsValue_ObjName;      // Значение свойства "Наименование"
var vsValue_ASUPCode;     // Значение свойства "Код АСУП"
var vsValue_VersionNmb;   // Значение свойства "Версия"
var vsValue_Designation;  // Значение свойства "Обозначение"
var vsValue_CodeOKP;      // Значение свойства "Код ОКП"
var vsValue_Purchased;    // Значение свойства "Покупной"
var vsValue_InvNmbDoc;    // Значение свойства "Инвентарный номер документа"
var vsValue_Litera;       // Значение свойства "Литера"
var vsValue_BuildCode;    // Значение свойства "Код исполнения"
var vsValue_CreateDate;   // Значение свойства "Дата выпуска"
var vsValue_ModifyDate;   // Значение свойства "Дата модификации документа"
var vsValue_IMBaseKey;    // Значение свойства "Ключ IMBase"
var vsValue_Remark;       // Значение свойства "Примечание"
var vsValue_MsrUnitId;    // Значение свойства "Единица измерения"
var vsValue_ObjType;      // Значение свойства "Тип объекта"
var vsValue_PrMat;        // Характеристика МЦ
var vsValue_TipDoc;       // Код типа документа
var vliChildObjectsCount; // Количество дочерних объектов
var vsaChildObjects;      // Массив для сохранения идентификаторов дочерних объектов
var vsaChildObjCount;     // Массив для сохранения количества для дочерних объектов
var vsaChildObjRefMU;     // Массив для сохранения ссылок на единицы измерения дл
                          //   дочерних объектов
var vliHdrKS_ID;          // Идентификатор конструкторской спецификации

  try
  {
    // Проверка прерывания процесса выполнения со стороны пользователя
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Установка текущего машиностроительного объекта
    goSearchAPI.OpenArticle(asObjID);

    // Получение значения свойства "Тип объекта"
    vsValue_ObjType = goSearchAPI.GetArticleKind();

    // Проверка типа объекта
    if (
      (vsValue_ObjType != '1') &&         // Документация
      (vsValue_ObjType != '2') &&         // Комплекс
      (vsValue_ObjType != '3') &&         // Сборочная единица
      (vsValue_ObjType != '4') &&         // Деталь
      (vsValue_ObjType != '5') &&         // Стандартное изделие
      (vsValue_ObjType != '6') &&         // Прочее изделие
      (vsValue_ObjType != '7') &&         // Материал
      (vsValue_ObjType != '8') &&         // Комплект
      (vsValue_ObjType != '99999998') &&  // Комплектовочное
      (vsValue_ObjType != '99999999') &&  // Заказ
      (vsValue_ObjType != '100000003') && // Изделие
      (vsValue_ObjType != '100000001') && // Оснастка
      (vsValue_ObjType != '9'))           // Программное изделие
    {
      // Закрытие текущего машиностроительного объекта
      goSearchAPI.CloseArticle();

      return (vsID); // Другие типы машиностроительных объектов игнорируются
    } // if (...

    // Дополнительная проверка для документации (ТП, СБ и проч. не надо выгружать как матценности)
    if (vsValue_ObjType == '1') // Документация
    {
      if (vsValue_TipDoc != 'NODOC') 
      {
        // Закрытие текущего машиностроительного объекта
        goSearchAPI.CloseArticle();

        return (vsID);
      } // if (vsValue_TipDoc != 'NODOC')
    } // if (vsValue_ObjType == '1')

    // Получение значения свойства "Масса"
    vsValue_Massa = goSearchAPI.GetArticleMassa();

    // Получение значения свойства "Наименование"
    vsValue_ObjName = goSearchAPI.GetArticleName();

    // Получение значения свойства "Код АСУП"
    vsValue_ASUPCode = '';

    if (goSearchAPI.FieldExists_Articles('Код АСУП')) 
      vsValue_ASUPCode = goSearchAPI.GetFieldValue_Articles('Код АСУП');

    // Получение значения свойства "Версия"
    vsValue_VersionNmb = '';

    if (goSearchAPI.FieldExists_Articles('field_ART_VER_ID'))
      vsValue_VersionNmb = goSearchAPI.GetFieldValue_Articles('field_ART_VER_ID');

    // Получение значения свойства "Обозначение"
    vsValue_Designation = goSearchAPI.GetArticleDesignation();

    // Получение значения свойства "Код ОКП"
    vsValue_CodeOKP = goSearchAPI.GetArticleOKP_Code();

    // Получение значения свойства "Покупной"
    vsValue_Purchased = goSearchAPI.GetArticlePurchased();

    // Получение значения свойства "Инвентарный номер документа"
    vsValue_InvNmbDoc = goSearchAPI.GetArticleDocID();

    // Получение значения свойства "Литера"
    vsValue_Litera = goSearchAPI.GetArticleLitera();

    // Получение значения свойства "Код исполнения"
    vsValue_BuildCode = goSearchAPI.GetArticleCode();

    // Получение значения свойства "Дата выпуска"
    vsValue_CreateDate = '';

    if (goSearchAPI.FieldExists_Articles('Дата выпуска'))
      vsValue_CreateDate = goSearchAPI.GetFieldValue_Articles('Дата выпуска');

    // Получение значения свойства "Дата модификации документа"
    vsValue_ModifyDate = '';

    if (goSearchAPI.FieldExists_Articles('Дата модификации документа'))
        vsValue_ModifyDate = goSearchAPI.GetFieldValue_Articles('Дата модификации документа');

    // Получение значения свойства "Ключ IMBase"
    vsValue_IMBaseKey = goSearchAPI.GetArticleImbaseKey();

    // Получение значения свойства "Примечание"
    vsValue_Remark = goSearchAPI.GetArticleRemark();

    // Получение значения свойства "Единица измерения"
    vsValue_MsrUnitId = '';

    if (goSearchAPI.FieldExists_Articles('Единица измерения'))
        vsValue_MsrUnitId = goSearchAPI.GetFieldValue_Articles('Единица измерения');

    // Получение значения свойства "Код типа документа"
    vsValue_TipDoc = goSearchAPI.GetArticleTipDoc();

    // Закрытие текущего машиностроительного объекта
    goSearchAPI.CloseArticle();

    //старый вариант
    //// Запрос значений свойств текущего машиностроительного объекта
    //vsaValues = SearchAPI_SplitParams(goSearchAPI.GetArticleParams(asObjID));
    //
    //// Получение значений свойств текущего машиностроительного объекта
    //vsValue_Massa       = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Масса');
    //vsValue_ObjName     = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Наименование')
    //vsValue_ASUPCode    = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Код АСУП')
    //vsValue_VersionNmb  = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'field_ART_VER_ID');
    //vsValue_Designation = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Обозначение');
    //vsValue_CodeOKP     = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Код ОКП');
    //vsValue_Purchased   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Покупной');
    //vsValue_InvNmbDoc   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Инвентарный номер документа');
    //vsValue_Litera      = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Литера');
    //vsValue_BuildCode   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Код исполнения');
    //vsValue_CreateDate  = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Дата выпуска');
    //vsValue_ModifyDate  = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Дата модификации документа');
    //vsValue_IMBaseKey   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Ключ IMBASE');
    //vsValue_Remark      = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Примечание');
    //vsValue_MsrUnitId   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Единица измерения');
    //vsValue_ObjType     = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'Тип объекта');

    // Уточнение свойств МЦ в зависимости от типа
    switch (vsValue_ObjType)
    {
      // Документация
      case '1':
      {
        if (vsValue_InvNmbDoc != '-2') // Документы с заданными инвентарными номерами пропускаются
          return('0');

        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '1':

      // Комплекс
      case '2':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '2':

      // Сборочная единица
      case '3':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '3':

      // Деталь
      case '4':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '4':

      // Стандартное изделие
      case '5':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '5':

      // Прочее изделие
      case '6':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '6':

      // Материал
      case '7':
      {
        vsValue_PrMat = '0'; // Материал
        break;
      } // case '7':

      // Комплект
      case '8':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '8':

      // Комплектовочное
      case '99999998':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '99999998':

      // Заказ
      case '99999999':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '99999999':

      // Изделие
      case '100000003':
      {
        vsValue_PrMat = '1'; // ДСЕ
        break;
      } // case '100000003':

      // Оснастка
      case '100000001':
      {
        vsValue_PrMat = '2'; // Инструмент, оснастка
        break;
      } // case '100000001':

      // Программное изделие
      case '9':
      {
        vsValue_PrMat = '2'; // Инструмент, оснастка
        break;
      } // case '9':
    } // switch (vsValue_ObjType)

    // Опеределение идентификатора машиностроительного объекта
    vsID = vsValue_IMBaseKey;

    if (
      (vsID == null) ||
      (vsID == '') ||
      (vsID == '0'))
      vsID = asObjID;

    // Конвертация значения признака покупного объекта под формат ГАЛАКТИКА-ERP
    if (vsValue_Purchased == '+')
      vsValue_Purchased = '0'
    else
      vsValue_Purchased = '1';

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader(
      'Экспорт машиностроительного объекта \n' +
      'объект: \n' +
      vsValue_ObjName);

    // Создание матценности в XML-файле в формате ГАЛАКТИКА-ERP
    if (  // если объект из IMBase
      (vsValue_IMBaseKey != null) &&
      (vsValue_IMBaseKey != '') &&
      (vsValue_IMBaseKey != '0'))
      XMLFileGAL_UnloadIMBaseObj_MatNorm(vsID)
    else // если объект из Search
      if (XMLFileGAL_AddMC(
        true,
        vsID,
        vsValue_ObjName + ' ' + vsValue_Designation,
        vsValue_ASUPCode,
        vsValue_Designation,
        vsValue_Purchased,
        vsValue_ObjType,
        vsValue_CodeOKP,
        vsValue_Remark,
        vsValue_ModifyDate,
        vsValue_Massa,
        vsValue_PrMat,
        vsValue_MsrUnitId,
        vsValue_VersionNmb,
        vsValue_InvNmbDoc,
        vsValue_BuildCode,
        vsValue_Litera) == 0)
        return(vsID);

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка конструкторской и технологической информации
    if (
      (gwExportMode > 1) &&
      (vsValue_ObjType != '1')) // не документация
    {
      // Сохранение конструкторского состава в массиве
      vsaChildObjects = new Array();
      vsaChildObjCount = new Array();
      vsaChildObjRefMU = new Array();
      vliChildObjectsCount = 0;

      goSearchAPI.OpenArticleStructure(asObjID);
      goSearchAPI.asFirst();

      if (!goSearchAPI.asEof())
      {
        vliChildObjectsCount = goSearchAPI.asCount();

        for (i = 0; i < vliChildObjectsCount; i++)
        {
          vsaChildObjects[i] = goSearchAPI.asGetArtID();
          vsaChildObjCount[i] = goSearchAPI.asGetArtCount();
          vsaChildObjRefMU[i] = goSearchAPI.asGetArtCount_MU_ID();
          goSearchAPI.asNext();
        } // for (i = 0; i < vliChildObjectsCount; i++)
      } // if (!goSearchAPI.asEof())

      // Обработка конструкторского состава
      vliHdrKS_ID = '0';

      if (vliChildObjectsCount > 0)
      {
        vliHdrKS_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddHdrKS(
          true,
          vliHdrKS_ID,
          vsID,
          vsValue_ObjName,
          vsValue_Designation,
          vsaChildObjects,
          vsaChildObjCount,
          vsaChildObjRefMU);
      } // if (vliChildObjectsCount > 0)

      // Формирование технологической информации
      if (gwExportMode > 2)
        XMLFileGAL_UnloadTP(asObjID, vsID, vliHdrKS_ID);
    } // if (...

    return(vsID);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObj

//------------------------------------------------------------------------------
// Выгрузка машиностроительных объектов в XML-файл в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadObjects()
{

// Локальные переменные
var i;            // Переменная цикла
var vliaArrayObj; // Массив для сохранения идентификаторов машиностроительных объектов
var vliIndex;     // Индекс в массиве
var vsArtId;      // Значение поля "art_id"

  try
  {
    // Получение выборки машиностроительных объектов
    IMObjID_Load(goSearchAPI);

    // Обработка машиностроительных объектов
    for (i = 0; i < gliIMObjID_Count; i++)
      XMLFileGAL_UnloadObj(gsaIMObjID[i]);

    // УСТАРЕВШИЙ ВАРИАНТ!!! Вместо него используется код выше с учетом заданного списка
    // машиностроительных объектов для экспорта
    ////Получение выборки машиностроительных объектов
    //goSearchAPI.OpenQuery(
    //  ' SELECT ' +
    //  '   art_id ' +
    //  ' FROM ' +
    //  '   articles ' +
    //  ' WHERE ' +
    //  '   section_id = 3 ');
    //
    //// Заполнение массива
    //vliaArrayObj = new Array();
    //vliIndex = 0;
    //
    //do
    //{
    //  // Проверка прерывания процесса выполнения со стороны пользовател
    //  if (!nNextVisual(0))
    //    throw new Error(10003, 'USER_ABORT');
    //
    //  vsArtId = goSearchAPI.QueryFieldByName('art_id');
    //  vliaArrayObj[vliIndex] = parseInt(vsArtId);
    //  vliIndex = vliIndex + 1;
    //} while (goSearchAPI.QueryGoNext() != 0);
    //
    //goSearchAPI.CloseQuery();
    //
    //// Обработка машиностроительных объектов
    //for (i = 0; i < vliIndex; i++)
    //  XMLFileGAL_UnloadObj(vliaArrayObj[i]);

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadObjects => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObjects

//------------------------------------------------------------------------------
// Выгрузка типов машиностроительных объектов в XML-файл в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadObjTypes()
{

// Локальные переменные
var i;              // Переменная цикла
var vliRecordCount; // Количество записей в выборке
var vsSectionID;    // Значение поля "section_id"
var vsSectName;     // Значение поля "sectname"

  try
  {
    // Добавление типа "Оснастка покупная" для каталога IMBase "Оснастка"
    XMLFileGAL_AddTypeMC(
      false,
      '777',
      '777',
      'Оснастка покупная',
      1,
      2);

    // Выполнение запроса выборки типов машиностроительных объектов
    goSearchAPI.OpenQuery(
      ' SELECT ' +
      '   section_id, ' +
      '   sectname ' +
      ' FROM ' +
      '   ssections ' +
      ' WHERE ' +
      '   section_id IN (1, 2, 3, 4, 5, 6, 7, 8, 99999998, 99999999, 100000001, 100000003, 77)');

    // Получение количества записей в выборке
    vliRecordCount = goSearchAPI.QueryRecordCount();

    // Цикл по записям выборки
    goSearchAPI.QueryGoFirst();

    for (i = 1; i <= vliRecordCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      // Определение значений свойств для создаваемого типа матценностей
      vsSectionID = goSearchAPI.QueryFieldByName('section_id');
      vsSectName  = goSearchAPI.QueryFieldByName('sectname');

      // Добавление объекта "Тип матценностей" в XML-файл в формате ГАЛАКТИКА-ERP
      switch (vsSectionID)
      {
        // Документаци
        case '1':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '1':

        // Комплексы
        case '2':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '2':

        // Сборочные единицы
        case '3':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '3':

        // Детали
        case '4':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '4':

        // Стандартные издели
        case '5':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            0,
            1);

          break;
        } // case '5':

        // Прочие издели
        case '6':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            'Комплектующие изделия',
            0,
            1);

          break;
        } // case '6':

        // Материалы
        case '7':
        {
          XMLFileGAL_AddTypeMC(
            false,
            '77',
            '77',
            'Вспомогательные материалы',
            0,
            0);

          XMLFileGAL_AddTypeMC(
            false,
            '7',
            '7',
            'Основные материалы',
            0,
            0);

          break;
        } // case '7':

        // Комплекты
        case '8':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '8':

        // Комплектовочные
        case '99999998':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            2);

          break;
        } // case '99999998':

        // Заказы
        case '99999999':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '99999999':

        // Издели
        case '100000003':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '100000003':

        // Оснастка
        case '100000001':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            'Оснастка собственного изготовления',
            1,
            2);

          break;
        } // case '100000001':

        // Программные издели
        case '9':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            2);

          break;
        } // case '9':
      } // switch (vsSectionID)

      // Переход к следующей записи выборки
      if (goSearchAPI.QueryGoNext() != 1)
        return;
    } // for (i = 1; i <= vliRecordCount; i++)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadObjTypes => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObjTypes

//------------------------------------------------------------------------------
// Выгрузка техпроцесса для машиностроительного объекта
// Параметры:
//   asObjID     - Идентификатор машиностроительного объекта
//   aliMC_ID    - Идентификатор матценности
//   aliHdrKS_ID - Идентификатор конструкторской спецификации
// Результат:
//   Идентификатор маршрутной карты

function XMLFileGAL_UnloadTP(asObjID, aliMC_ID, aliHdrKS_ID)
{

// Локальные переменные
var voArticle;       // Объект "Машиностроительный объект" в TechCardAPI
var voTechProcesses; // Объект "Техпроцессы" в TechCardAPI
var voTechProcess;   // Объект "Техпроцесс" в TechCardAPI
//
var vliKatMarsh_ID;  // Идентификатор создаваемой маршрутной карты
//
var vsShifr;         // Шифр (код) техпроцесса
var vsName;          // Наименование маршрутной карты
var vsTObject;       // Тип объекта, для которого разработана МК
var vsCObject;       // Ссылка на объект, для которого разработана МК
var vsProduct;       // Признак нормы или продукта выход (обычно = 1):
                     //   0 - норма,
                     //   1 - продукт выхода
var vsEdNorm;        // Нормируемое количество объекта, для которого разработана МК
var vsCEd;           // Ссылка на единицу измерения объекта, для которого разработана МК
var vsMinVol;        // Минимальный размер партии для изготовлени
var vsCheckers_1;    // Ссылка на сотрудника 1, подписывающего документ (Разработал)
var vsAddedSign_1;   // Выполняемая функция сотрудника 1, подписывающего документ (Разработал)
var vsCheckDt_1;     // Дата подписания 1
var vsCheckers_2;    // Ссылка на сотрудника 2, подписывающего документ (Проверил)
var vsAddedSign_2;   // Выполняемая функция сотрудника 2, подписывающего документ (Проверил)
var vsCheckDt_2;     // Дата подписания 2
var vsCheckers_3;    // Ссылка на сотрудника 3, подписывающего документ (Утвердил)
var vsAddedSign_3;   // Выполняемая функция сотрудника 3, подписывающего документ (Утвердил)
var vsCheckDt_3;     // Дата подписания 3
var vsParGroup;      // Ссылка на группу параметров для позиций/операций МК
var vsCNormGroup;    // Ссылка на группу норм для позиций/операций МК

  try
  {
    // Нахождение машиностроительного объекта по его идентификатору
    voArticle = goTechCardAPI.Articles.ByArchCode(asObjID);
    if (voArticle == null)
      return;

    // Получение объекта "Техпроцесс" для текущего машиностроительного объекта
    voTechProcesses = voArticle.TechProcesses;
    if (voTechProcesses == null)
      return;

    // Цикл по техпроцессам
    if (voTechProcesses.Count > 0)
    {
      voTechProcess = voTechProcesses.First;

      do
      {
        // Проверка прерывания процесса выполнения со стороны пользовател
        if (!nNextVisual(0))
           throw new Error(10003, 'USER_ABORT');

        // Заполнение значений для полей заголовка маршрутной карты
        vsShifr       = voTechProcess.Value('ОКДТ');
        vsName        = voTechProcess.Name + '-' + voTechProcess.Designation;
        vsTObject     = '4'; // Код КАУ для матценности = 4
        vsCObject     = aliMC_ID;
        vsProduct     = '1'; // 1 - продукт выхода (0 - норма)
        vsEdNorm      = '1'; //
        vsCEd         = '0';
        vsMinVol      = voTechProcess.Value('ОПАР');
        vsCheckers_1  = voTechProcess.Value('ФИО');
        vsAddedSign_1 = 'Разработал';
        vsCheckDt_1   = 'DD/MM/YYYY';
        vsCheckers_2  = voTechProcess.Value('Пров');
        vsAddedSign_2 = 'Проверил';
        vsCheckDt_2   = 'DD/MM/YYYY';
        vsCheckers_3  = voTechProcess.Value('Утв');
        vsAddedSign_3 = 'Утвердил';
        vsCheckDt_3   = 'DD/MM/YYYY';
        vsParGroup    = '0'; // GetOperParGroup();
        vsCNormGroup  = '0'; // GetoperNormGroup();

        // Уточнение значения поля "Минимальный объем"
        if ((vsMinVol == '0') || (vsMinVol == null))
          vsMinVol = 1;

        // Уточнение значения поля "Разработал"
        //if (vsCheckers_1 != '')
        //  vsCheckers_1 = XMLFileGAL_AddPerson(vsCheckers_1);

        // Уточнение значения поля "Проверил"
        //if (vsCheckers_2 != '')
        //  vsCheckers_2 = XMLFileGAL_AddPerson(vsCheckers_2);

        // Уточнение значения поля "Утвердил"
        //if (vsCheckers_3 != '')
        //  vsCheckers_3 = XMLFileGAL_AddPerson(vsCheckers_3);

        // Создание заголовка маршрутной карты

        // Добавление маршрутной карты в XML-файл в формате ГАЛАКТИКА-ERP
        vliKatMarsh_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddKatMarsh(
          voTechProcess,
          true,
          vliKatMarsh_ID,
          vsShifr,
          vsName,
          vsTObject,
          vsCObject,
          vsProduct,
          vsEdNorm,
          vsCEd,
          vsMinVol,
          vsCheckers_1,
          vsAddedSign_1,
          vsCheckDt_1,
          vsCheckers_2,
          vsAddedSign_2,
          vsCheckDt_2,
          vsCheckers_3,
          vsAddedSign_3,
          vsCheckDt_3,
          vsParGroup,
          vsCNormGroup,
          aliHdrKS_ID);

        // Переход к следующему ТП
        if (voTechProcesses.EOF == 0)
          voTechProcess = voTechProcesses.Next;
      } while(voTechProcesses.EOF == 0)
    } // if (voTechProcesses.Count > 0)

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTP => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTP

//------------------------------------------------------------------------------
// Выгрузка норм использования оборудования для операции техпроцесса
// Параметры:
//   aoTPOper                             - Объект "Операция техпроцесса" в TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileGAL_UnloadTPOper_EqNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{
var voEquipments;        // Объект "Нормы использования оборудования на операцию" в TechCardAPI
var voEquipment;         // Объект "Норма использования оборудования на операцию" в TechCardAPI
var voFolder;            // Объект "Папка" в IMBaseAPI
//
var vsEquipment_ID;      // Идентификатор оборудования
//
var vliMarshSpEqNorm_ID; // Идентификатор для нормы использования оборудования на операцию
//
var vsTObject;           // Тип объекта-владельца нормы
var vsCObject;           // Ссылка на объект-владелец нормы
var vsTResource;         // Тип нормируемого ресурса
var vsCResource;         // Ссылка на нормируемый ресурс
var vsWProd;             // Тип нормы/продукта выхода
var vsProduct;           // Режим использования: норма/выход
var vsParGroup;          // Код группы параметров
var vsNormSort;          // Категория группы параметров
var vsRasx;              // Норма расхода
var vsCEd;               // Ссылка на единицу измерени
var vsDNormEd;           // Единица нормировани
var vsCNormEd;           // Ссылка на единицу измерения единицы нормировани

  try
  {
    // Проверка существования объекта aoTPOper
    if (aoTPOper == null)
      return;

    // Цикл по нормам использования оборудования (INTERMECH)
    voEquipments = aoTPOper.Equipments;

    if (voEquipments != null)
    {
      if (voEquipments.Count > 0)
      {
        voEquipment = voEquipments.First();

        do
        {
          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Создание группы оборудования в XML-файле
          vsEquipment_ID = '0';

          if (
            (voEquipment.Code != null) &&
            (voEquipment.Code != '') &&
            (voEquipment.Code != '0'))
          {
            try
            {
              voFolder = goIMBaseAPI_Catalog_TC_OBORUD.FindFolder(voEquipment.Code, 1);

              if (voFolder != null)
                vsEquipment_ID = XMLFileGAL_UnloadFolder(2, voFolder);
            }

            catch(e)
            {
            }
          } // if (...

          // Добавление нормы использования оборудования в XML-файл (предподготовка)
          vliMarshSpEqNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                // Тип объекта-владельца нормы
          vsCObject   = asNOpe;                 // Ссылка на объект-владелец нормы
          vsTResource = '47';                   // Тип нормируемого ресурса
          vsCResource = voEquipment.Code;       // Ссылка на нормируемый ресурс
          vsWProd     = '0';                    // Тип нормы/продукта выхода
          vsProduct   = '0';                    // Режим использования: норма/выход
          vsParGroup  = gliParameter_EqNorm_ID; // Код группы параметров
          vsNormSort  = '103';                  // Категория группы параметров
          vsRasx      = '1';                    // Норма расхода
          vsCEd       = '0';                    // Ссылка на единицу измерения
          vsDNormEd   = '1';                    // Единица нормирования
          vsCNormEd   = '0';                    // Ссылка на единицу измерения единицы нормирования

          // Уточнение ссылки не ресурс
          if (vsEquipment_ID != '0')
            vsCResource = vsEquipment_ID;

          // Добавление нормы использования оборудования в XML-файл
          XMLFileGAL_AddMarshSpEqNorm(
            false,
            vliMarshSpEqNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // Переход к следующей норме использования оборудования
          voEquipment = voEquipments.Next();
        } while(!voEquipments.EOF())
      } // if (voEquipments.Count > 0)
    } // if (voEquipments != null)

    //``````````````````````````````````````````````````````````````````````````
    // КОД НИЖЕ НЕ ТРЕБУЕТСЯ, т.к. информация по переходам автоматически проецируется
    // и на операции
    //// Цикл по переходам операции для агрегации норм для операции
    //
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // Проверка прерывания процесса выполнения со стороны пользовател
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // Цикл по нормам использования оборудования для операционного перехода (INTERMECH)
    //    voEquipments = voTPOperStep.Equipments;
    //
    //    if (voEquipments != null)
    //    {
    //      if (voEquipments.Count > 0)
    //      {
    //        voEquipment = voEquipments.First();
    //
    //        do
    //        {
    //          // Проверка прерывания процесса выполнения со стороны пользовател
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // Создание группы оборудования в XML-файле
    //          vsEquipment_ID = '0';
    //
    //          if (
    //            (voEquipment.Code != null) &&
    //            (voEquipment.Code != '') &&
    //            (voEquipment.Code != '0'))
    //          {
    //            try
    //            {
    //              voFolder = goIMBaseAPI_Catalog_TC_OBORUD.FindFolder(voEquipment.Code, 1);
    //
    //              if (voFolder != null)
    //                vsEquipment_ID = XMLFileGAL_UnloadFolder(2, voFolder);
    //            }
    //
    //            catch(e)
    //            {
    //            }
    //          } // if (...
    //
    //          // Добавление нормы использования оборудования в XML-файл (предподготовка)
    //          vliMarshSpEqNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                // Тип объекта-владельца нормы
    //          vsCObject   = asNOpe;                 // Ссылка на объект-владелец нормы
    //          vsTResource = '47';                   // Тип нормируемого ресурса
    //          vsCResource = voEquipment.Code;       // Ссылка на нормируемый ресурс
    //          vsWProd     = '0';                    // Тип нормы/продукта выхода
    //          vsProduct   = '0';                    // Режим использования: норма/выход
    //          vsParGroup  = gliParameter_EqNorm_ID; // Код группы параметров
    //          vsNormSort  = '103';                  // Категория группы параметров
    //          vsRasx      = '1';                    // Норма расхода
    //          vsCEd       = '0';                    // Ссылка на единицу измерени
    //          vsDNormEd   = '1';                    // Единица нормировани
    //          vsCNormEd   = '0';                    // Ссылка на единицу измерения единицы нормировани
    //
    //          // Уточнение ссылки не ресурс
    //          if (vsEquipment_ID != '0')
    //            vsCResource = vsEquipment_ID;
    //
    //          // Добавление нормы использования оборудования в XML-файл
    //          XMLFileGAL_AddMarshSpEqNorm(
    //            false,
    //            vliMarshSpEqNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // Переход к следующей норме использования оборудовани
    //          voEquipment = voEquipments.Next();
    //        } while(!voEquipments.EOF())
    //      } // if (voEquipments.Count > 0)
    //    } // if (voEquipments != null)
    //
    //    // Выбор следующего перехода
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_EqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_EqNorm

//------------------------------------------------------------------------------
// Выгрузка трудовых норм для операции техпроцесса
// Параметры:
//   aoTPOper                             - Объект "Операция техпроцесса" в TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileGAL_UnloadTPOper_JobNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{
var voWorkers;            // Объект "Трудовые нормы на операцию" в TechCardAPI
var voWorker;             // Объект "Трудовая норма на операцию" в TechCardAPI
var voFolder;             // Объект "Папка" в IMBaseAPI
//
var vsWorker_ID;          // Идентификатор трудового ресурса
//
var vliMarshSpJobNorm_ID; // Идентификатор для трудовой нормы на операцию
//
var vsTObject;            // Тип объекта-владельца нормы
var vsCObject;            // Ссылка на объект-владелец нормы
var vsTResource;          // Тип нормируемого ресурса
var vsCResource;          // Ссылка на нормируемый ресурс
var vsWProd;              // Тип нормы/продукта выхода
var vsProduct;            // Режим использования: норма/выход
var vsParGroup;           // Код группы параметров
var vsNormSort;           // Категория группы параметров
var vsRasx;               // Норма расхода
var vsCEd;                // Ссылка на единицу измерени
var vsDNormEd;            // Единица нормировани
var vsCNormEd;            // Ссылка на единицу измерения единицы нормировани

  try
  {
    // Проверка существования объекта aoTPOper
    if (aoTPOper == null)
      return;

    // Цикл по трудовым нормам (INTERMECH)
    voWorkers = aoTPOper.Workers;

    if (voWorkers != null)
    {
      if (voWorkers.Count > 0)
      {
        voWorker = voWorkers.First();

        do
        {
          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Создание профессии в XML-файле
          vsWorker_ID = '0';

          if (
            (voWorker.Code != null) &&
            (voWorker.Code != '') &&
            (voWorker.Code != '0')) 
          {
            try 
            {
              voFolder = goIMBaseAPI_Catalog_TC_WORKERS.FindFolder(voWorker.Code, 1);

              if (voFolder != null)
                vsWorker_ID = XMLFileGAL_UnloadFolder(5, voFolder);
            }

            catch (e) 
            {
            }
          } // if (...

          // Добавление трудовой нормы в XML-файл (предподготовка)
          vliMarshSpJobNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                 // Тип объекта-владельца нормы
          vsCObject   = asNOpe;                  // Ссылка на объект-владелец нормы
          vsTResource = '36';                    // Тип нормируемого ресурса
          vsCResource = voWorker.Code;           // Ссылка на нормируемый ресурс
          vsWProd     = '0';                     // Тип нормы/продукта выхода
          vsProduct   = '0';                     // Режим использования: норма/выход
          vsParGroup  = gliParameter_JobNorm_ID; // Код группы параметров
          vsNormSort  = '102';                   // Категория группы параметров
          vsRasx      = '1';                     // Норма расхода
          vsCEd       = '0';                     // Ссылка на единицу измерени
          vsDNormEd   = '1';                     // Единица нормировани
          vsCNormEd   = '0';                     // Ссылка на единицу измерения единицы нормировани

          // Уточнение ссылки не ресурс
          if (vsWorker_ID != '0')
            vsCResource = vsWorker_ID;

          // Добавление трудовой нормы в XML-файл
          XMLFileGAL_AddMarshSpJobNorm(
            false,
            vliMarshSpJobNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // Переход к следующей трудовой норме
          voWorker = voWorkers.Next();
        } while(!voWorkers.EOF())
      } // if (voWorkers.Count > 0)
    } // if (voWorkers != null)

    //``````````````````````````````````````````````````````````````````````````
    // КОД НИЖЕ НЕ ТРЕБУЕТСЯ, т.к. информация по переходам автоматически проецируется
    // и на операции
    //// Цикл по переходам операции для агрегации норм для операции
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // Проверка прерывания процесса выполнения со стороны пользовател
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // Цикл по трудовым нормам для операционного перехода (INTERMECH)
    //    voWorkers = voTPOperStep.Workers;
    //
    //    if (voWorkers != null)
    //    {
    //      if (voWorkers.Count > 0)
    //      {
    //        voWorker = voWorkers.First();
    //
    //        do
    //        {
    //          // Проверка прерывания процесса выполнения со стороны пользовател
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // Создание профессии в XML-файле
    //          vsWorker_ID = '0';
    //
    //          if (
    //            (voWorker.Code != null) &&
    //            (voWorker.Code != '') &&
    //            (voWorker.Code != '0')) 
    //          {
    //            try 
    //            {
    //              voFolder = goIMBaseAPI_Catalog_TC_WORKERS.FindFolder(voWorker.Code, 1);
    //
    //              if (voFolder != null)
    //                vsWorker_ID = XMLFileGAL_UnloadFolder(5, voFolder);
    //            }
    //
    //            catch (e) 
    //            {
    //            }
    //          } // if (...
    //
    //          // Добавление трудовой нормы в XML-файл (предподготовка)
    //          vliMarshSpJobNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                 // Тип объекта-владельца нормы
    //          vsCObject   = asNOpe;                  // Ссылка на объект-владелец нормы
    //          vsTResource = '36';                    // Тип нормируемого ресурса
    //          vsCResource = voWorker.Code;           // Ссылка на нормируемый ресурс
    //          vsWProd     = '0';                     // Тип нормы/продукта выхода
    //          vsProduct   = '0';                     // Режим использования: норма/выход
    //          vsParGroup  = gliParameter_JobNorm_ID; // Код группы параметров
    //          vsNormSort  = '102';                   // Категория группы параметров
    //          vsRasx      = '1';                     // Норма расхода
    //          vsCEd       = '0';                     // Ссылка на единицу измерени
    //          vsDNormEd   = '1';                     // Единица нормировани
    //          vsCNormEd   = '0';                     // Ссылка на единицу измерения единицы нормировани
    //
    //          // Уточнение ссылки не ресурс
    //          if (vsWorker_ID != '0')
    //            vsCResource = vsWorker_ID;
    //
    //          // Добавление трудовой нормы в XML-файл
    //          XMLFileGAL_AddMarshSpJobNorm(
    //            false,
    //            vliMarshSpJobNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // Переход к следующей трудовой норме
    //          voWorker = voWorkers.Next();
    //        } while(!voWorkers.EOF())
    //      } // if (voWorkers.Count > 0)
    //    } // if (voWorkers != null)
    //
    //    // Выбор следующего перехода
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_JobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_JobNorm

//------------------------------------------------------------------------------
// Выгрузка материальных норм для операции техпроцесса
// Параметры:
//   aoTPOper                             - Объект "Операция техпроцесса" в TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileGAL_UnloadTPOper_MatNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var voMaterials;          // Объект "Материалы на операцию" в TechCardAPI
var voMaterial;           // Объект "Материал на операцию" в TechCardAPI
var voIncludeArticles;    // Объект "Детали, сборочные единицы на операцию" в TechCardAPI
var voIncludeArticle;     // Объект "Деталь, сборочная единица на операцию" в TechCardAPI
var voTPOperSteps;        // Объект "Переходы для операции" в TechCardAPI
var voTPOperStep;         // Объект "Переход для операции" в TechCardAPI
//
var vliMarshSpMatNorm_ID; // Идентификатор для материальной нормы на операцию
//
var vsTObject;            // Тип объекта-владельца нормы
var vsCObject;            // Ссылка на объект-владелец нормы
var vsTResource;          // Тип нормируемого ресурса
var vsCResource;          // Ссылка на нормируемый ресурс
var vsWProd;              // Тип нормы/продукта выхода
var vsProduct;            // Режим использования: норма/выход
var vsParGroup;           // Код группы параметров
var vsNormSort;           // Категория группы параметров
var vsRasx;               // Норма расхода
var vsCEd;                // Ссылка на единицу измерени
var vsDNormEd;            // Единица нормировани
var vsCNormEd;            // Ссылка на единицу измерения единицы нормировани

  try
  {
    // Проверка существования объекта aoTPOper
    if (aoTPOper == null)
      return;

    //``````````````````````````````````````````````````````````````````````````
    // Цикл по материальным нормам (INTERMECH)
    voMaterials = aoTPOper.Materials;

    if (voMaterials != null)
    {
      if (voMaterials.Count > 0)
      {
        voMaterial = voMaterials.First();

        do
        {
          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Экспорт связанной матценности
          if (
            (voMaterial.FullCode != null) &&
            (voMaterial.FullCode != ''))
            XMLFileGAL_UnloadIMBaseObj_MatNorm(voMaterial.FullCode);

          // Добавление материальной нормы в XML-файл
          vliMarshSpMatNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                 // Тип объекта-владельца нормы
          vsCObject   = asNOpe;                  // Ссылка на объект-владелец нормы
          vsTResource = '4';                     // Тип нормируемого ресурса
          vsCResource = voMaterial.FullCode;     // Ссылка на нормируемый ресурс
          vsWProd     = '0';                     // Тип нормы/продукта выхода
          vsProduct   = '0';                     // Режим использования: норма/выход
          vsParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
          vsNormSort  = '101';                   // Категория группы параметров
          vsRasx      = voMaterial.Norma;        // Норма расхода
          vsCEd       = '0';                     // Ссылка на единицу измерени
          vsDNormEd   = '1';                     // Единица нормировани
          vsCNormEd   = '0';                     // Ссылка на единицу измерения единицы нормировани

          XMLFileGAL_AddMarshSpMatNorm(
            false,
            vliMarshSpMatNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // Переход к следующему материалу
          voMaterial = voMaterials.Next();
        } while(!voMaterials.EOF())
      } // if (voMaterials.Count > 0)
    } // if (voMaterials != null)

    //``````````````````````````````````````````````````````````````````````````
    // Цикл по составам (INTERMECH)
    voIncludeArticles = aoTPOper.IncludeArticles;
    
    if (voIncludeArticles != null)
    {
      if (voIncludeArticles.Count > 0)
      {
        voIncludeArticle = voIncludeArticles.First();
    
        do
        {
          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');
    
          // Добавление материальной нормы в XML-файл (предподготовка)
          vliMarshSpMatNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;
    
          vsTObject   = '11007';                         // Тип объекта-владельца нормы
          vsCObject   = asNOpe;                          // Ссылка на объект-владелец нормы
          vsTResource = '4';                             // Тип нормируемого ресурса
          vsCResource = voIncludeArticle.Article.ArchID; // Ссылка на нормируемый ресурс (ключ Search)
          vsWProd     = '0';                             // Тип нормы/продукта выхода
          vsProduct   = '0';                             // Режим использования: норма/выход
          vsParGroup  = gliParameter_MatNorm_ID;         // Код группы параметров
          vsNormSort  = '101';                           // Категория группы параметров
          vsRasx      = voIncludeArticle.CountEB;        // Норма расхода
          vsCEd       = '0';                             // Ссылка на единицу измерени
          vsDNormEd   = '1';                             // Единица нормировани
          vsCNormEd   = '0';                             // Ссылка на единицу измерения единицы нормировани

          // Выгрузка связанного машиностроительного объекта с одновременным уточнением его ID
          // (если объект создан на основе записи IMBase, то ID=ImBaseKey, иначе ID=ArticleID)
          vsCResource = XMLFileGAL_UnloadObj(vsCResource);

          // Добавление материальной нормы в XML-файл
          XMLFileGAL_AddMarshSpMatNorm(
            false,
            vliMarshSpMatNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);
    
          // Переход к следующей позиции состава
          voIncludeArticle = voIncludeArticles.Next();
        } while(!voIncludeArticles.EOF())
      } // if (voIncludeArticles.Count > 0)
    } // if (voIncludeArticles != null)

    //``````````````````````````````````````````````````````````````````````````
    // КОД НИЖЕ НЕ ТРЕБУЕТСЯ, т.к. информация по переходам автоматически проецируется
    // и на операции
    //// Цикл по переходам операции для агрегации норм для операции
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // Проверка прерывания процесса выполнения со стороны пользовател
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // Цикл по материальным нормам для операционного перехода (INTERMECH)
    //    voMaterials = voTPOperStep.Materials;
    //
    //    if (voMaterials != null)
    //    {
    //      if (voMaterials.Count > 0)
    //      {
    //        voMaterial = voMaterials.First();
    //
    //        do
    //        {
    //          // Проверка прерывания процесса выполнения со стороны пользовател
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // Экспорт связанной матценности
    //          if (
    //            (voMaterial.FullCode != null) &&
    //            (voMaterial.FullCode != ''))
    //            XMLFileGAL_UnloadIMBaseObj_MatNorm(voMaterial.FullCode);
    //
    //          // Добавление материальной нормы в XML-файл
    //          vliMarshSpMatNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                 // Тип объекта-владельца нормы
    //          vsCObject   = asNOpe;                  // Ссылка на объект-владелец нормы
    //          vsTResource = '4';                     // Тип нормируемого ресурса
    //          vsCResource = voMaterial.FullCode;     // Ссылка на нормируемый ресурс
    //          vsWProd     = '0';                     // Тип нормы/продукта выхода
    //          vsProduct   = '0';                     // Режим использования: норма/выход
    //          vsParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
    //          vsNormSort  = '101';                   // Категория группы параметров
    //          vsRasx      = voMaterial.Norma;        // Норма расхода
    //          vsCEd       = '0';                     // Ссылка на единицу измерени
    //          vsDNormEd   = '1';                     // Единица нормировани
    //          vsCNormEd   = '0';                     // Ссылка на единицу измерения единицы нормировани
    //
    //          XMLFileGAL_AddMarshSpMatNorm(
    //            false,
    //            vliMarshSpMatNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // Переход к следующему материалу
    //          voMaterial = voMaterials.Next();
    //        } while(!voMaterials.EOF())
    //      } // if (voMaterials.Count > 0)
    //    } // if (voMaterials != null)
    //
    //    // Цикл по составам для операционного перехода (INTERMECH)
    //    voIncludeArticles = voTPOperStep.IncludeArticles;
    //    
    //    if (voIncludeArticles != null)
    //    {
    //      if (voIncludeArticles.Count > 0)
    //      {
    //        voIncludeArticle = voIncludeArticles.First();
    //    
    //        do
    //        {
    //          // Проверка прерывания процесса выполнения со стороны пользовател
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //    
    //          // Добавление материальной нормы в XML-файл (предподготовка)
    //          vliMarshSpMatNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //    
    //          vsTObject   = '11007';                         // Тип объекта-владельца нормы
    //          vsCObject   = asNOpe;                          // Ссылка на объект-владелец нормы
    //          vsTResource = '4';                             // Тип нормируемого ресурса
    //          vsCResource = voIncludeArticle.Article.ArchID; // Ссылка на нормируемый ресурс (ключ Search)
    //          vsWProd     = '0';                             // Тип нормы/продукта выхода
    //          vsProduct   = '0';                             // Режим использования: норма/выход
    //          vsParGroup  = gliParameter_MatNorm_ID;         // Код группы параметров
    //          vsNormSort  = '101';                           // Категория группы параметров
    //          vsRasx      = voIncludeArticle.CountEB;        // Норма расхода
    //          vsCEd       = '0';                             // Ссылка на единицу измерени
    //          vsDNormEd   = '1';                             // Единица нормировани
    //          vsCNormEd   = '0';                             // Ссылка на единицу измерения единицы нормировани
    //    
    //          // Выгрузка связанного машиностроительного объекта с одновременным уточнением его ID
    //          // (если объект создан на основе записи IMBase, то ID=ImBaseKey, иначе ID=ArticleID)
    //          vsCResource = XMLFileGAL_UnloadObj(vsCResource);
    //    
    //          // Добавление материальной нормы в XML-файл
    //          XMLFileGAL_AddMarshSpMatNorm(
    //            false,
    //            vliMarshSpMatNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //    
    //          // Переход к следующей позиции состава
    //          voIncludeArticle = voIncludeArticles.Next();
    //        } while(!voIncludeArticles.EOF())
    //      } // if (voIncludeArticles.Count > 0)
    //    } // if (voIncludeArticles != null)
    //
    //    // Выбор следующего перехода
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_MatNorm

//------------------------------------------------------------------------------
// Выгрузка материальной нормы (КС) для операции техпроцесса
// Параметры:
//   aoTPOper                             - Объект "Операция техпроцесса" в TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию
//   aliMC_ID                             - Идентификатор матценности
//   aliHdrKS_ID                          - Идентификатор конструкторской спецификации

function XMLFileGAL_UnloadTPOper_MatNorm_BOM(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas,
  asNOpe, aliMC_ID, aliHdrKS_ID)
{

//
var vliMarshSpMatNorm_ID; // Идентификатор для материальной нормы на операцию
//
var vsTObject;            // Тип объекта-владельца нормы
var vsCObject;            // Ссылка на объект-владелец нормы
var vsTResource;          // Тип нормируемого ресурса
var vsCResource;          // Ссылка на нормируемый ресурс
var vsTDoc;               // КАУ документа-нормы для нормируемого ресурса (для КС = 41)
var vsCDoc;               // Ссылка на документ-норму для нормируемого ресурса
var vsWProd;              // Тип нормы/продукта выхода
var vsProduct;            // Режим использования: норма/выход
var vsParGroup;           // Код группы параметров
var vsNormSort;           // Категория группы параметров
var vsRasx;               // Норма расхода
var vsCEd;                // Ссылка на единицу измерени
var vsDNormEd;            // Единица нормировани
var vsCNormEd;            // Ссылка на единицу измерения единицы нормировани

  try
  {
    // Проверка существования объекта aoTPOper
    //if (aoTPOper == null)
    //  return;

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Добавление материальной нормы в XML-файл
    vliMarshSpMatNorm_ID = gliGlobID;
    gliGlobID = gliGlobID + 1;

    vsTObject   = '11007';                 // Тип объекта-владельца нормы
    vsCObject   = asNOpe;                  // Ссылка на объект-владелец нормы
    vsTResource = '4';                     // КАУ нормируемого ресурса
    vsCResource = aliMC_ID;                // Ссылка на нормируемый ресурс
    vsTDoc      = '41';                    // КАУ документа-нормы для нормируемого
                                           //   ресурса (для КС = 41)
    vsCDoc      = aliHdrKS_ID;             // Ссылка на документ-норму для нормируемого
                                           //   ресурса
    vsWProd     = '0';                     // Тип нормы/продукта выхода
    vsProduct   = '0';                     // Режим использования: норма/выход
    vsParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
    vsNormSort  = '101';                   // Категория группы параметров
    vsRasx      = '1';                     // Норма расхода
    vsCEd       = '0';                     // Ссылка на единицу измерени
    vsDNormEd   = '1';                     // Единица нормировани
    vsCNormEd   = '0';                     // Ссылка на единицу измерения единицы нормировани

    XMLFileGAL_AddMarshSpMatNorm_BOM(
      false,
      vliMarshSpMatNorm_ID,
      aliXMLFileGAL_Node_Clt_MarshSpNormas,
      vsTObject,
      vsCObject,
      vsTResource,
      vsCResource,
      vsTDoc,
      vsCDoc,
      vsWProd,
      vsProduct,
      vsParGroup,
      vsNormSort,
      vsRasx,
      vsCEd,
      vsDNormEd,
      vsCNormEd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_MatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_MatNorm_BOM

//------------------------------------------------------------------------------
// Выгрузка инструментальных норм для операции техпроцесса
// Параметры:
//   aoTPOper                             - Объект "Операция техпроцесса" в TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileGAL_UnloadTPOper_ToolNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var voTools;               // Объект "Инструментальные нормы на операцию" в TechCardAPI
var voTool;                // Объект "Инструментальная норма на операцию" в TechCardAPI
//
var vliMarshSpToolNorm_ID; // Идентификатор для инструментальной нормы на операцию
//
var vsTObject;             // Тип объекта-владельца нормы
var vsCObject;             // Ссылка на объект-владелец нормы
var vsTResource;           // Тип нормируемого ресурса
var vsCResource;           // Ссылка на нормируемый ресурс
var vsWProd;               // Тип нормы/продукта выхода
var vsProduct;             // Режим использования: норма/выход
var vsParGroup;            // Код группы параметров
var vsNormSort;            // Категория группы параметров
var vsRasx;                // Норма расхода
var vsCEd;                 // Ссылка на единицу измерени
var vsDNormEd;             // Единица нормировани
var vsCNormEd;             // Ссылка на единицу измерения единицы нормировани
var vsFullCode;            //

  try
  {
    // Проверка существования объекта aoTPOper
    if (aoTPOper == null)
      return;

    // Цикл по инструментальным нормам (INTERMECH)
    voTools = aoTPOper.Tools;

    if (voTools != null)
    {
      if (voTools.Count > 0)
      {
        voTool = voTools.First();

        // цикл по всем инструментальным нормам
        do
        {
          // Проверка прерывания процесса выполнения со стороны пользовател
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // Экспорт связанной матценности
          vsFullCode = voTool.FullCode;
          vsFullCode = vsFullCode.substr(0, 8) + toHex(voTool.Value('OsRc')) + vsFullCode.substr(14, 6);

          if (
            (vsFullCode != null) &&
            (vsFullCode != ''))
            XMLFileGAL_UnloadIMBaseObj_ToolNorm(vsFullCode);

          // Добавление инструментальной нормы в XML-файл
          vliMarshSpToolNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                   // Тип объекта-владельца нормы
          vsCObject   = asNOpe;                    // Ссылка на объект-владелец нормы
          vsTResource = '4';                       // Тип нормируемого ресурса
          vsCResource = vsFullCode;                // Ссылка на нормируемый ресурс
          vsWProd     = '0';                       // Тип нормы/продукта выхода
          vsProduct   = '0';                       // Режим использования: норма/выход
          vsParGroup  = gliParameter_ToolsNorm_ID; // Код группы параметров
          vsNormSort  = '104';                     // Категория группы параметров
          vsRasx      = voTool.Count;              // Норма расхода
          vsCEd       = '0';                       // Ссылка на единицу измерени
          vsDNormEd   = '1';                       // Единица нормировани
          vsCNormEd   = '0';                       // Ссылка на единицу измерения единицы нормировани

          XMLFileGAL_AddMarshSpToolNorm(
            false,
            vliMarshSpToolNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // Переход к следующей инструментальной норме
          voTool = voTools.Next();
        } while(!voTools.EOF())
      } // if (voTools.Count > 0)
    } // if (voTools != null)

    //``````````````````````````````````````````````````````````````````````````
    // КОД НИЖЕ НЕ ТРЕБУЕТСЯ, т.к. информация по переходам автоматически проецируется
    // и на операции
    //// Цикл по переходам операции для агрегации норм для операции
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // Проверка прерывания процесса выполнения со стороны пользовател
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // Цикл по инструментальным нормам для операционного перехода (INTERMECH)
    //    voTools = voTPOperStep.Tools;
    //
    //    if (voTools != null)
    //    {
    //      if (voTools.Count > 0)
    //      {
    //        voTool = voTools.First();
    //
    //        // цикл по всем инструментальным нормам
    //        do
    //        {
    //          // Проверка прерывания процесса выполнения со стороны пользовател
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // Экспорт связанной матценности
    //          vsFullCode = voTool.FullCode;
    //          vsFullCode = vsFullCode.substr(0, 8) + toHex(voTool.Value('OsRc')) + vsFullCode.substr(14, 6);
    //
    //          if (
    //            (vsFullCode != null) &&
    //            (vsFullCode != ''))
    //            XMLFileGAL_UnloadIMBaseObj_ToolNorm(vsFullCode);
    //
    //          // Добавление инструментальной нормы в XML-файл
    //          vliMarshSpToolNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                   // Тип объекта-владельца нормы
    //          vsCObject   = asNOpe;                    // Ссылка на объект-владелец нормы
    //          vsTResource = '4';                       // Тип нормируемого ресурса
    //          vsCResource = vsFullCode;                // Ссылка на нормируемый ресурс
    //          vsWProd     = '0';                       // Тип нормы/продукта выхода
    //          vsProduct   = '0';                       // Режим использования: норма/выход
    //          vsParGroup  = gliParameter_ToolsNorm_ID; // Код группы параметров
    //          vsNormSort  = '104';                     // Категория группы параметров
    //          vsRasx      = voTool.Count;              // Норма расхода
    //          vsCEd       = '0';                       // Ссылка на единицу измерени
    //          vsDNormEd   = '1';                       // Единица нормировани
    //          vsCNormEd   = '0';                       // Ссылка на единицу измерения единицы нормировани
    //
    //          XMLFileGAL_AddMarshSpToolNorm(
    //            false,
    //            vliMarshSpToolNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // Переход к следующей инструментальной норме
    //          voTool = voTools.Next();
    //        } while(!voTools.EOF())
    //      } // if (voTools.Count > 0)
    //    } // if (voTools != null)
    //
    //    // Выбор следующего перехода
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_ToolNorm

//------------------------------------------------------------------------------
// Выгрузка операций техпроцесса в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aoTPOpers                      - Объект "Операции техпроцесса" в TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSp - Handle узла-коллекции "Операции МК"
//   aliMC_ID                       - Идентификатор матценности
//   aliHdrKS_ID                    - Идентификатор конструкторской спецификации

function XMLFileGAL_UnloadTPOpers(aoTPOpers, aliXMLFileGAL_Node_Clt_MarshSp, aliMC_ID, aliHdrKS_ID)
{

// Объекты
var voTPOper;       // Объект "Операция техпроцесса" в TechCardAPI
var voTPOperSteps;  // Объект "Переходы для операции техпроцесса" в TechCardAPI
var voTPOperStep;   // Объект "Переход для операции техпроцесса" в TechCardAPI
var voFolder;       // Объект "Папка" в IMBaseAPI
//
var vliMarsh_Sp_ID; // Идентификатор позиции/операции маршрутной карты
// Свойства позиции/операции маршрутной карты
var vsNum;          // Номер позиции
var vsWOpe;         // КАУ операции (для технологической операции = 35)
var vsNOpe;         // Ссылка на технологическую операцию
var vsEdNorm;       // Единица нормирования (количество)
var vsCEd;          // Ссылка на единицу измерения для единицы нормировани
var vsTDep;         // КАУ исполнителя (для подразделений = 2)
var vsCDep;         // Ссылка на исполнител
var vbFirstOper;    // Признак обработки первой строки
var vliHdrKS_ID;    // Идентификатор конструкторской спецификации

  try
  {
    // Проверка существования объекта aoTPOpers
    if (aoTPOpers == null)
      return;

    // Проверка наличия операций у техпроцесса
    if (aoTPOpers.Count == 0)
    {
      // Создание псевдооперации "Сборка"
      if (
        (aliHdrKS_ID != null) &&
        (aliHdrKS_ID != '') &&
        (aliHdrKS_ID != '0'))
      {
        // Поиск операции "Сборка" в каталоге "Операции"
        try
        {
          voFolder = goIMBaseAPI_Catalog_TC_OPER.FindFolder('СБОРКА', 2);
        }
        catch(e)
        {
        }

        // Заполнение значений для свойств позиции/операции маршрутной карты
        vsNum    = '001';            // Номер позиции
                                     //   (= номеру операции техпроцесса)
        vsWOpe   = '35';             // КАУ операции
                                     //   (для технологической операции = 35)
        vsNOpe   = '0';              // Ссылка на технологическую операцию

        if (voFolder != null)        //   (= коду (LEVEL) операции из каталога
          vsNOpe = voFolder.Level;   //   IMBase "Операции")

        vsEdNorm = '1';              // Единица нормирования (количество)
                                     //   (= значению понятия "Единица нормирования" для операции
                                     //   техпроцесса)
        vsCEd    = '0';              // Ссылка на единицу измерения для единицы нормировани
        vsTDep   = '2';              // КАУ для ссылки на цех-исполнитель
                                     //   (для подразделений = 2)
        vsCDep   = '0';              // Ссылка на цех-исполнитель

        // Создание техоперации в XML-файле
        if (voFolder != null)
          vsNOpe = XMLFileGAL_UnloadFolder(3, voFolder);

        // Создание позиции/операции маршрутной карты
        vliMarshSp_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddMarshSp(
          voTPOper,
          false,
          vliMarshSp_ID,
          aliXMLFileGAL_Node_Clt_MarshSp,
          vsNum,
          vsWOpe,
          vsNOpe,
          vsEdNorm,
          vsCEd,
          vsTDep,
          vsCDep,
          aliMC_ID,
          aliHdrKS_ID);
      } // if (...

      return;
    } // if (aoTPOpers.Count == 0)

    // Цикл по всем операциям техпроцесса
    voTPOper = aoTPOpers.First();
    vbFirstOper = true;

    do
    {
      // Для первой операции техпроцесса необходимо сохранить
      // ссылку на конструкторскую спецификацию
      if (vbFirstOper)
      {
        vliHdrKS_ID = aliHdrKS_ID;
        vbFirstOper = false;
      }
      else
        vliHdrKS_ID = '0';

      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      // Заполнение значений для свойств позиции/операции маршрутной карты
      vsNum    = voTPOper.Number;        // Номер позиции
                                         //   (= номеру операции техпроцесса)
      vsWOpe   = '35';                   // КАУ операции
                                         //   (для технологической операции = 35)
      vsNOpe   = voTPOper.Code;          // Ссылка на технологическую операцию
                                         //   (= коду (LEVEL) операции из каталога IMBase "Операции")
      vsEdNorm = voTPOper.Value('ЕН');   // Единица нормирования (количество)
                                         //   (= значению понятия "Единица нормирования" для операции
                                         //   техпроцесса)
      vsCEd    = '0';                    // Ссылка на единицу измерения для единицы нормирования
      vsTDep   = '2';                    // КАУ для ссылки на цех-исполнитель
                                         //   (для подразделений = 2)
      vsCDep   = voTPOper.Place;         // Ссылка на цех-исполнитель

      // Уточнение значения поля "Номер позиции"
      if ((vsNum == '0') || (vsNum == null))
        vsNum == '1';

      // Создание техоперации в XML-файле
      if (
        (vsNOpe != '') &&
        (vsNOpe != '0'))
      {
        try
        {
          voFolder = goIMBaseAPI_Catalog_TC_OPER.FindFolder(vsNOpe, 1);

          if (voFolder != null)
            vsNOpe = XMLFileGAL_UnloadFolder(3, voFolder);
        }

        catch(e)
        {
        }
      } // if (...

      // Уточнение значения поля "Единица нормирования"
      if ((vsEdNorm == '0') || (vsEdNorm == null))
        vsEdNorm == '1';

      // Создание подразделения в XML-файле
      if (
        (vsCDep != '') &&
        (vsCDep != '0'))
      {
        try
        {
          voFolder = goIMBaseAPI_Catalog_TC_CEH.FindFolder(vsCDep, 1);

          if (voFolder != null)
            vsCDep = XMLFileGAL_UnloadFolder(1, voFolder);
        }
        catch(e)
        {
        }
      } // if (...

      // Создание позиции/операции маршрутной карты
      vliMarshSp_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;

      XMLFileGAL_AddMarshSp(
        voTPOper,
        false,
        vliMarshSp_ID,
        aliXMLFileGAL_Node_Clt_MarshSp,
        vsNum,
        vsWOpe,
        vsNOpe,
        vsEdNorm,
        vsCEd,
        vsTDep,
        vsCDep,
        aliMC_ID,
        vliHdrKS_ID);

      // Переход к следующей операции техпроцесса
      voTPOper = aoTPOpers.Next();
    } while (!aoTPOpers.EOF())

    return;


    /*

    //------------------------------------------------------------------------------
    // Функция создает норму для операции
    // Параметры:
    //   Class   - имя класса
    //   IdClass - ссылка на класс
    //   cEd     - ссылка на учетную ЕИ

    function XMLFileGAL_AddPropEd(Class, IdClass, cEd)
    {
      var Node;

      Node = Root.selectNodes("//Object[@class_id = '" + Class + "'][@id = '" + IdClass + "']/Collection[@name = 'Prop_Values']/prop_value[@prop_name = 'cED']");

      if (Node.length != 0)
      {
        Node.item(0).setAttribute('value', cEd);
      }
    } // function XMLFileGAL_AddPropEd

    //------------------------------------------------------------------------------
    // Функция создает норму для операции
    // Параметры:
    //   cParent   - ссылка на вышестоящий узел
    //   Name      - имя нормы (чтоб найти ссылку на параметр)
    //   cObject   - ссылка на операцию
    //   tResource - тип нормы
    //   cResource - ссылка на МЦ
    //   Rasx      - количество
    //   cOtpEd    - ссылка на отпускную ЕИ
    //   TimeM     - машинное время или ручное 1 калория = 4.18400 Джоул
    //   Razr      - тарифный разряд (для трудовых норм)
    //   EdNormOp  - единица нормировани

    function XMLFileGAL_AddNormForOper(cParent, Name, cObject, tResource, cResource, Rasx, cOtpEd, TimeM, Razr, EdNormOp)
    {
      var Obj, Coll, Node;
      var ParGroup;
      var ExistNorm = false;
      var Kol = new Number();

      Node = Root.selectNodes("//Object[@class_id = 'Params'][@name = '" + Name + "']/@id");
      if (Node.length != 0)
        ParGroup = Node.item(0).nodeValue;
      else
        ParGroup = 0;

      // создаем норму

      Obj  = XMLFileGAL_AddTag_Object(cParent, 'Норма', 'Normas_MarshSp', gliGlobID++);
      Coll = XMLFileGAL_AddTag_Collection(Obj, 'Свойства', 'Prop_Values', 'prop_value');
      XMLFileGAL_AddTag_PropValue(Coll, 'ParGroup', ParGroup, 'Params');
      XMLFileGAL_AddTag_PropValue(Coll, 'tObject', 11007, '');
      XMLFileGAL_AddTag_PropValue(Coll, 'cObject', cObject, 'MnfOper');
      XMLFileGAL_AddTag_PropValue(Coll, 'tResource', tResource, '');

      if (tResource == 4)
        XMLFileGAL_AddTag_PropValue(Coll, 'cResource', cResource, 'MC');

      if (tResource == 23)
        XMLFileGAL_AddTag_PropValue(Coll, 'cResource', cResource, 'ObjRem');

      if (tResource == 36)
        XMLFileGAL_AddTag_PropValue(Coll, 'cResource', cResource, 'Profession');

      XMLFileGAL_AddTag_PropValue(Coll, 'Rasx', Rasx, '');
      XMLFileGAL_AddTag_PropValue(Coll, 'dNormEd', EdNormOp, '');
      XMLFileGAL_AddTag_PropValue(Coll, 'cEd', cOtpEd, 'OtpEd');

      // параметры норм для оборудовани
      if (tResource == 23 & TimeM != 0)
      {
        Coll = XMLFileGAL_AddTag_Collection(Obj, 'Значения параметров нормы', 'Data.ParamVol_NormMarshSp', 'Object');
        XMLFileGAL_AddParamVol(Coll, 1, 'Оборудования', 'Норма основного времени (машинная)', TimeM)
        XMLFileGAL_AddParamVol(Coll, 1, 'Оборудования', 'Единица измерения времени', 2)
      }

      // параметры для трудовых норм
      if (tResource == 36)
      {
        Coll = XMLFileGAL_AddTag_Collection(Obj, 'Значения параметров нормы', 'Data.ParamVol_NormMarshSp', 'Object');

        if (TimeM != 0)
        {
          XMLFileGAL_AddParamVol(Coll, 1, 'Трудовые нормы', 'Норма ручного времени', TimeM)
          XMLFileGAL_AddParamVol(Coll, 1, 'Трудовые нормы', 'Единица измерения времени', 2)
        }

        XMLFileGAL_AddParamVol(Coll, 1, 'Трудовые нормы', 'Тарифный разряд', Razr)
      }
    } // function XMLFileGAL_AddNormForOper


    */


  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOpers => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOpers

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Экспорт НСИ
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Экспорт НСИ в XML-файл в формате ГАЛАКТИКА-ERP

function CreateXMLFileGAL_0()
{
  try
  {
    // Загрузка IMBaseAPI
    SetVisualHeader('Загрузка IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка SearchAPI
    SetVisualHeader('Загрузка SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт единиц измерени
    SetVisualHeader('Экспорт единиц измерения \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Цеха"
    SetVisualHeader('Экспорт данных каталога IMBase "Цеха" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Оборудование"
    SetVisualHeader('Экспорт данных каталога IMBase "Оборудование" \n   \n   ');
    XMLFileGAL_UnloadCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Операции"
    SetVisualHeader('Экспорт данных каталога IMBase "Операции" \n   \n   ');
    XMLFileGAL_UnloadCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Виды работ"
    SetVisualHeader('Экспорт данных каталога IMBase "Виды работ" \n   \n   ');
    XMLFileGAL_UnloadCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Рабочие специальности"
    SetVisualHeader('Экспорт данных каталога IMBase "Рабочие специальности" \n   \n   ');
    XMLFileGAL_UnloadCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Освобождение ресурсов
    SetVisualHeader('Освобождение ресурсов \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_0 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_0

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Экспорт данных для каталога МЦ
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Экспорт данных для каталога МЦ в XML-файл в формате ГАЛАКТИКА-ERP

function CreateXMLFileGAL_1()
{
  try
  {
    // Загрузка IMBaseAPI
    SetVisualHeader('Загрузка IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка SearchAPI
    SetVisualHeader('Загрузка SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка ImDataBase
    SetVisualHeader('Загрузка ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт единиц измерени
    SetVisualHeader('Экспорт единиц измерения \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Материалы"
    SetVisualHeader('Экспорт данных каталога IMBase "Материалы" \n   \n   ');
    XMLFileGAL_UnloadCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Оснастка"
    SetVisualHeader('Экспорт данных каталога IMBase "Оснастка" \n   \n   ');
    XMLFileGAL_UnloadCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка мащиностроительных объектов
    SetVisualHeader('Выгрузка машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Освобождение ресурсов
    SetVisualHeader('Освобождение ресурсов \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_1 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_1

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Экспорт конструкторской информации
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Экспорт конструкторской информации в XML-файл в формате ГАЛАКТИКА-ERP

function CreateXMLFileGAL_2() 
{
  try
  {
    // Загрузка IMBaseAPI
    SetVisualHeader('Загрузка IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка SearchAPI
    SetVisualHeader('Загрузка SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка ImDataBase
    SetVisualHeader('Загрузка ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт единиц измерени
    SetVisualHeader('Экспорт единиц измерения \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Цеха"
    SetVisualHeader('Экспорт данных каталога IMBase "Цеха" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Оборудование"
    XMLFileGAL_PrepareDataForCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Операции"
    XMLFileGAL_PrepareDataForCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Виды работ"
    XMLFileGAL_PrepareDataForCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Рабочие специальности"
    XMLFileGAL_PrepareDataForCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Материалы"
    XMLFileGAL_PrepareDataForCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Оснастка"
    XMLFileGAL_PrepareDataForCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка мащиностроительных объектов
    SetVisualHeader('Выгрузка машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    // Освобождение ресурсов
    SetVisualHeader('Освобождение ресурсов \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_2 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_2

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Экспорт технологической информации
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Экспорт технологической информации в XML-файл в формате ГАЛАКТИКА-ERP

function CreateXMLFileGAL_3()
{
  try
  {
    // Загрузка IMBaseAPI
    SetVisualHeader('Загрузка IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка SearchAPI
    SetVisualHeader('Загрузка SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка TechCardAPI
    SetVisualHeader('Загрузка TechCardAPI \n   \n   ');
    goTechCardAPI = LoadAPIObj(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка ImDataBase
    SetVisualHeader('Загрузка ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт единиц измерени
    SetVisualHeader('Экспорт единиц измерения \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Цеха"
    SetVisualHeader('Экспорт данных каталога IMBase "Цеха" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Оборудование"
    XMLFileGAL_PrepareDataForCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Операции"
    XMLFileGAL_PrepareDataForCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Виды работ"
    XMLFileGAL_PrepareDataForCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Рабочие специальности"
    XMLFileGAL_PrepareDataForCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Материалы"
    XMLFileGAL_PrepareDataForCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Оснастка"
    XMLFileGAL_PrepareDataForCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка мащиностроительных объектов
    SetVisualHeader('Выгрузка машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    // Освобождение ресурсов
    SetVisualHeader('Освобождение ресурсов \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_3 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_3

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Экспорт конструкторско-технологической информации
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Экспорт конструкторско-технологической информации в XML-файл в формате ГАЛАКТИКА-ERP

function CreateXMLFileGAL_4()
{
  try
  {
    // Загрузка IMBaseAPI
    SetVisualHeader('Загрузка IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка SearchAPI
    SetVisualHeader('Загрузка SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка TechCardAPI
    SetVisualHeader('Загрузка TechCardAPI \n   \n   ');
    goTechCardAPI = LoadAPIObj(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка ImDataBase
    SetVisualHeader('Загрузка ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт единиц измерени
    SetVisualHeader('Экспорт единиц измерения \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Цеха"
    SetVisualHeader('Экспорт данных каталога IMBase "Цеха" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Оборудование"
    XMLFileGAL_PrepareDataForCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Операции"
    XMLFileGAL_PrepareDataForCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Виды работ"
    XMLFileGAL_PrepareDataForCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Рабочие специальности"
    XMLFileGAL_PrepareDataForCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Материалы"
    XMLFileGAL_PrepareDataForCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка данных, используемых при экспорте записей
    // каталога IMBase "Оснастка"
    XMLFileGAL_PrepareDataForCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка мащиностроительных объектов
    SetVisualHeader('Выгрузка машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    // Освобождение ресурсов
    SetVisualHeader('Освобождение ресурсов \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_4 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_4

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Экспорт НСИ и конструкторско-технологической информации
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Экспорт НСИ и конструкторско-технологической информации в XML-файл в формате
// ГАЛАКТИКА-ERP

function CreateXMLFileGAL_5()
{
  try
  {
    // Загрузка IMBaseAPI
    SetVisualHeader('Загрузка IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка SearchAPI
    SetVisualHeader('Загрузка SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка TechCardAPI
    SetVisualHeader('Загрузка TechCardAPI \n   \n   ');
    goTechCardAPI = LoadAPIObj(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка ImDataBase
    SetVisualHeader('Загрузка ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт единиц измерени
    SetVisualHeader('Экспорт единиц измерения \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Цеха"
    SetVisualHeader('Экспорт данных каталога IMBase "Цеха" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Оборудование"
    SetVisualHeader('Экспорт данных каталога IMBase "Оборудование" \n   \n   ');
    XMLFileGAL_UnloadCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Операции"
    SetVisualHeader('Экспорт данных каталога IMBase "Операции" \n   \n   ');
    XMLFileGAL_UnloadCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Виды работ"
    SetVisualHeader('Экспорт данных каталога IMBase "Виды работ" \n   \n   ');
    XMLFileGAL_UnloadCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Рабочие специальности"
    SetVisualHeader('Экспорт данных каталога IMBase "Рабочие специальности" \n   \n   ');
    XMLFileGAL_UnloadCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Материалы"
    SetVisualHeader('Экспорт данных каталога IMBase "Материалы" \n   \n   ');
    XMLFileGAL_UnloadCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Экспорт данных каталога IMBase "Оснастка"
    SetVisualHeader('Экспорт данных каталога IMBase "Оснастка" \n   \n   ');
    XMLFileGAL_UnloadCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка мащиностроительных объектов
    SetVisualHeader('Выгрузка машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Освобождение ресурсов
    SetVisualHeader('Освобождение ресурсов \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_5 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_5

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
    'Экспорт данных из INTERMECH  \n' +
    '                                                                      ' +
    '                                                                      \n   ',
    50);

  // Инициализация глобальных переменных
  gliGlobID = 1;
  gwExportMode = GetExportMode();

  //
  gliProcessCount_Ed = 0;
  gsaProcess_Ed_ImID = new Array();
  gsaProcess_Ed_GalID = new Array();

  gliProcessCount_EqGroup = 0;
  gsaProcess_EqGroup_ImID = new Array();
  gsaProcess_EqGroup_GalID = new Array();

  gliProcessCount_KaWork = 0;
  gsaProcess_KaWork_ImID = new Array();
  gsaProcess_KaWork_GalID = new Array();

  gliProcessCount_MC = 0;
  gsaProcess_MC_ImID = new Array();
  gsaProcess_MC_GalID = new Array();

  gliProcessCount_MnfOper = 0;
  gsaProcess_MnfOper_ImID = new Array();
  gsaProcess_MnfOper_GalID = new Array();

  gliProcessCount_ObjRem = 0;
  gsaProcess_ObjRem_ImID = new Array();
  gsaProcess_ObjRem_GalID = new Array();

  gliProcessCount_Podr = 0;
  gsaProcess_Podr_ImID = new Array();
  gsaProcess_Podr_GalID = new Array();

  gliProcessCount_Profession = 0;
  gsaProcess_Profession_ImID = new Array();
  gsaProcess_Profession_GalID = new Array();

  // Запуск экспорта данных
  switch(gwExportMode)
  {
    // Экспорт НСИ
    case '0':
    {
      CreateXMLFileGAL_0();
      break;
    } // case '0':

    // Экспорт данных для каталога МЦ
    case '1':
    {
      CreateXMLFileGAL_1();
      break;
    } // case '1':

    // Экспорт конструкторской информации
    case '2':
    {
      CreateXMLFileGAL_2();
      break;
    } // case '2':

    // Экспорт технологической информации
    case '3':
    {
      CreateXMLFileGAL_3();
      break;
    } // case '3':

    // Экспорт конструкторско-технологической информации
    case '4':
    {
      CreateXMLFileGAL_4();
      break;
    } // case '4':

    // Экспорт НСИ и конструкторско-технологической информации
    case '5':
    {
      CreateXMLFileGAL_5();
      break;
    } // case '5':

  } // switch(gwExportMode)

  // Закрытие окна визуализации
  StopVisual('', 0);
} // try

catch(grdEvent)
{
  // Закрытие окна визуализации
  StopVisual('MAIN => ' + grdEvent.message, vfWait);
} // catch(grdEvent)
