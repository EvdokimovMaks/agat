/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий конвертацию XML-файла в формате "INTERMECH" в      ##
## XML-файл в формате "ГАЛАКТИКА-ERP"                                         ##
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
var grdEvent;                          // Структура с информацией об исключительной ситуации
var gliGlobID;                         // Глобальный идентификатор объектов

// Объекты
var goXMLFileIM;                       // DOM-документ для исходного XML-файла в
                                       //   формате INTERMECH
var goXMLFileGAL;                      // DOM-документ для формируемого XML-файла в
                                       //   формате ГАЛАКТИКА-ERP

// Handle узлов-коллекций в DOM-документе для формируемого XML-файла в формате ГАЛАКТИКА-ERP
var gliXMLFileGAL_Node_Clt_TypeMC;     // Handle узла-коллекции "Типы матценностей"
var gliXMLFileGAL_Node_Clt_GrpMC;      // Handle узла-коллекции "Группы матценностей"
var gliXMLFileGAL_Node_Clt_ED;         // Handle узла-коллекции "Единицы измерения"
var gliXMLFileGAL_Node_Clt_Podr;       // Handle узла-коллекции "Подразделения"
var gliXMLFileGAL_Node_Clt_EqGroup;    // Handle узла-коллекции "Группы оборудования"
var gliXMLFileGAL_Node_Clt_MnfOper;    // Handle узла-коллекции "Технологические операции"
var gliXMLFileGAL_Node_Clt_KaWork;     // Handle узла-коллекции "Виды работ"
var gliXMLFileGAL_Node_Clt_Profession; // Handle узла-коллекции "Профессии"
var gliXMLFileGAL_Node_Clt_ObjRem;     // Handle узла-коллекции "Единицы оборудования"
var gliXMLFileGAL_Node_Clt_Person;     // Handle узла-коллекции "Сотрудники"
var gliXMLFileGAL_Node_Clt_KatAbbr;    // Handle узла-коллекции "Аббревиатуры параметров"
var gliXMLFileGAL_Node_Clt_Params;     // Handle узла-коллекции "Параметры (Спецификации продуктов)"
var gliXMLFileGAL_Node_Clt_MC;         // Handle узла-коллекции "Матценности"
var gliXMLFileGAL_Node_Clt_OtpEd;      // Handle узла-коллекции "Отпускные единицы измерения"
var gliXMLFileGAL_Node_Clt_KatMarsh;   // Handle узла-коллекции "Маршрутные карты"
var gliXMLFileGAL_Node_Clt_Hdr_KS;     // Handle узла-коллекции "Конструкторские спецификации"
var gliXMLFileGAL_Node_Clt_AttrNam;    // Handle узла-коллекции "Внешние атрибуты"

// Идентификаторы внешних атрибутов для каталога матценностей
var gsAttrNam_MC_VersionNmb_ID;        // Идентификатор внешнего атрибута "Номер версии"
var gsAttrNam_MC_InvNmbDoc_ID;         // Идентификатор внешнего атрибута "Инвентарный номер документа"
var gsAttrNam_MC_BuildCode_ID;         // Идентификатор внешнего атрибута "Код исполнения"
var gsAttrNam_MC_Litera_ID;            // Идентификатор внешнего атрибута "Литера"

// Идентификаторы параметров норм (Спецификации продуктов) в XML-файле
// в формате ГАЛАКТИКА-ERP
//var gliParameter_BaseParams_ID;        // Базовые параметры (INTERMECH)
var gliParameter_OperParams_ID;        // Параметры техоперации
var gliOperParam_Razrjad_ID;           // Параметр техоперации -> Тарифный разряд
var gliOperParam_WrkCond_ID;           // Параметр техоперации -> Код условий труда
var gliOperParam_OpRazr_ID;            // Параметр техоперации -> Разряд операции
var gliOperParam_MechRate_ID;          // Параметр техоперации -> Степень механизации
var gliOperParam_WrkDetQnt_ID;         // Параметр техоперации -> Количество одновременно
                                       //   обрабатываемых изделий
var gliOperParam_PartVol_ID;           // Параметр техоперации -> Объем операционной партии
var gliOperParam_KOneTm_ID;            // Параметр техоперации -> Коэффициент штучного времени
var gliOperParam_tmPreFin_ID;          // Параметр техоперации -> Норма подготовительно-
                                       //   заключительного времени
var gliOperParam_tmServ_ID;            // Параметр техоперации -> Норма вспомогательного времени
var gliOperParam_tmOpMash_ID;          // Параметр техоперации -> Норма основного времени (машинная)
var gliOperParam_tmOpMan_ID;           // Параметр техоперации -> Норма основного времени (ручная)
var gliOperParam_EdTime_ID;            // Параметр техоперации -> Единица измерения времени
var gliParameter_NormCategory_ID;      // Категории норм
var gliParameter_MatNorm_ID;           // Материальные нормы
var gliParameter_ToolsNorm_ID;         // Инструментальные нормы
var gliParameter_JobNorm_ID;           // Трудовые нормы
var gliJobNormParam_tmOpMan_ID;        // Параметр трудовых норм -> Норма основного времени (ручная)
var gliJobNormParam_Razrjad_ID;        // Параметр трудовых норм -> Тарифный разряд
var gliJobNormParam_EdTime_ID;         // Параметр трудовых норм -> Единица измерения времени
var gliParameter_EqNorm_ID;            // Нормы использования оборудовани
var gliEqNormParam_tmOpMash_ID;        // Параметр норм использования оборудования -> Норма основного
                                       //   времени (машинная)
var gliEqNormParam_EdTime_ID;          // Параметр норм использования оборудования -> Единица измерени
                                       //   времени

// Переменные, используемые для формирования справочника подразделений
// в XML-файле в формате ГАЛАКТИКА-ERP
var gliObjCount_Podr;                  // Количество подразделений
var gsaFieldValue_Podr_ID;             // Массив для сохранения идентификаторов подразделений
var gsaFieldValue_Podr_KodASUP;        // Массив для сохранения кодов подразделений (АСУП)
var gsaFieldValue_Podr_KodCeh;         // Массив для сохранения кодов цехов для подразделений
var gsaFieldValue_Podr_KodUch;         // Массив для сохранения кодов участков для подразделений
var gsaFieldValue_Podr_Name;           // Массив для сохранения наименований подразделений
var gsaFieldValue_Podr_cPodr;          // Массив для сохранения ссылок на вышестоящее подразделение
                                       //   (для подразделений)
var gsaFieldValue_Podr_PrUch;          // Массив для сохранения признака Цех/Участок (0/1) (для подразделений)

//
var gliObjCount_Ed;                    // Количество единиц измерени
var gsaFieldValue_Ed_ID;               // Массив для сохранения идентификаторов единиц измерени
var gsaFieldValue_Ed_Abbr;             // Массив для сохранения аббревиатур единиц измерени
var gsaFieldValue_Ed_Name;             // Массив для сохранения наименований единиц измерени

// Массивы для сохранения обьектов, относящихся к типу "Единица измерения"
var gliProcessCount_Ed;                // Количество элементов в массиве
var gsaProcess_Ed_ImID;                // Массив для сохранения свойств "ИД (Интермех)"
var gsaProcess_Ed_GalID;               // Массив для сохранения свойств "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Группа оборудования"
var gliProcessCount_EqGroup;           // Количество элементов в массиве
var gsaProcess_EqGroup_ImID;           // Массив для сохранения свойств "ИД (Интермех)"
var gsaProcess_EqGroup_GalID;          // Массив для сохранения свойств "ИД (Галактика)"

// Массивы для сохранения обьектов, относящихся к типу "Маршрутная карта"
var gliProcessCount_KatMarsh;          // Количество элементов в массиве
var gsaProcess_KatMarsh_ImID;          // Массив для сохранения "ИД (Интермех)"
var gsaProcess_KatMarsh_GalID;         // Массив для сохранения "ИД (Галактика)"

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
// Получение идентификатора объекта для обьектов, относящихся к типу "Маршрутная карта":
//   abCheckExists - Признак проверки существования объекта
//   asImID        - ИД (Интермех)
//   asGalID       - ИД (Галактика)
//   aoTP          - Элемент <tp> в XML-файле в формате "Техпроцесс" в TechCardAPI
//   asShifr       - Шифр (код) техпроцесса
//   asName        - Наименование маршрутной карты
//   asTObject     - Тип объекта, для которого разработана МК
//   asCObject     - Ссылка на объект, для которого разработана МК
//   asProduct     - Признак нормы или продукта выход (обычно = 1):
//                     0 - норма,
//                     1 - продукт выхода
//   asEdNorm      - Нормируемое количество объекта, для которого разработана МК
//   asCEd         - Ссылка на единицу измерения объекта, для которого разработана МК
//   asMinVol      - Минимальный размер партии для изготовления
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
//   Идентификатор объекта

function GetObjGalID_KatMarsh(abCheckExists, asImID, asGalID, aoTP, asShifr, asName, 
  asTObject, asCObject, asProduct, asEdNorm, asCEd, asMinVol, asCheckers_1, asAddedSign_1, asCheckDt_1,
  asCheckers_2, asAddedSign_2, asCheckDt_2, asCheckers_3, asAddedSign_3, asCheckDt_3,
  asParGroup, asCNormGroup, aliHdrKS_ID) 
{

  // Локальные переменные
  var i;         // Переменная цикла
  var vbNeedAdd; // Признак необходимости добавления обьекта

  try {
    // Определение, добавлялся ли ранее обьект с заданным ИД (Интермех)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KatMarsh; i++)
        if (gsaProcess_KatMarsh_ImID[i] == asImID)
          return (gsaProcess_KatMarsh_GalID[i]);

    // Определение необходимости добавления обьекта в XML-файл в формате ГАЛАКТИКА-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KatMarsh; i++)
        if (gsaProcess_KatMarsh_GalID[i] == asGalID) 
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_KatMarsh_GalID[i] == asGalID)

    // Добавление в массив
    gliProcessCount_KatMarsh = gliProcessCount_KatMarsh + 1;

    gsaProcess_KatMarsh_ImID[gliProcessCount_KatMarsh] = asImID;
    gsaProcess_KatMarsh_GalID[gliProcessCount_KatMarsh] = asGalID;

    // Добавление обьекта
    if (vbNeedAdd)
      XMLFileGAL_AddKatMarsh(
        aoTP,
        false,
        asGalID,
        asShifr,
        asName, 
        asTObject,
        asCObject,
        asProduct,
        asEdNorm,
        asCEd,
        asMinVol,
        asCheckers_1,
        asAddedSign_1,
        asCheckDt_1,
        asCheckers_2,
        asAddedSign_2,
        asCheckDt_2,
        asCheckers_3,
        asAddedSign_3,
        asCheckDt_3,
        asParGroup,
        asCNormGroup,
        aliHdrKS_ID);

    return (asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_KatMarsh => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_KatMarsh

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
//   asCEd                - Ссылка на учетную единицу измерения
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
// Результат:
//   Идентификатор объекта

function GetObjGalID_ObjRem(abCheckExists, asImID, asGalID, asName, asInNum)
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
      XMLFileGAL_AddObjRem(false, asGalID, asName, asInNum);

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

//------------------------------------------------------------------------------
// Получение идентификатора объекта для обьектов, относящихся к типу "Тип матценности",
// по наименованию:
//   asName - Наименование
// Результат:
//   Идентификатор объекта

function GetObjGalID_TypeMC_ByName(asName) 
{
  try
  {
    switch (asName)
    {

      // Документация
      case 'Документация':
      {
        return '1';
      }
    
      // Комплексы
      case 'Комплексы':
      {
        return '2';
      }

      // Сборочные единицы
      case 'Сборочные единицы':
      {
        return '3';
      }

      // Детали
      case 'Детали':
      {
        return '4';
      }

      // Стандартные изделия
      case 'Стандартные изделия':
      {
        return '5';
      }

      // Прочие изделия
      case 'Прочие изделия':
      {
        return '6';
      }

      // Материалы
      case 'Материалы':
      {
        return '7';
      }

      // Комплекты
      case 'Комплекты':
      {
        return '8';
      }

      // Программные изделия
      case 'Программные изделия':
      {
        return '9';
      }

      // Комплектовочные
      case 'Комплектовочные':
      {
        return '99999998';
      }

      // Заказы
      case 'Заказы':
      {
        return '99999999';
      }

      // Оснастка
      case 'Оснастка':
      {
        return '100000001';
      }

      // Изделия
      case 'Изделия':
      {
        return '100000003';
      }
    
    } // switch (asName)

    return asName;
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_TypeMC_ByName => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_TypeMC_ByName

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
// Фунцкия выполняет макроподстановки array массив с формулами и значениями
// возвращает массив с заполненными значениями
// Параметры:

function XMLFileIM_CalcValues(asaValues)
{

// Локальные переменные
var i;                 // Переменная цикла
var j;                 // Переменная цикла
var k;                 // Переменная цикла
var l;                 // Переменная цикла
var vbExistsField;     //
var vliIndexEndField;  //
var vrdEvent;          // Структура с информацией об исключительной ситуации
var vsFieldCode;       //
var vsFormula;         //
var vsSymbol;          //
var vsSymbolFieldBeg;  //
var vsSymbolFieldEnd;  //
var vsSymbolFieldBeg2; //
var vsSymbolFieldEnd2; //
var vsValue;           //

  try
  {
    //
    vsSymbolFieldBeg = '{';
    vsSymbolFieldEnd = '}';
    vsSymbolFieldBeg2 = '[';
    vsSymbolFieldEnd2 = ']';

    //
    for (i = 0; i < asaValues[0].length; i++)
    {
      if (
        (asaValues[3][i] != '') &&
        (asaValues[3][i] != null)) // проверка наличия формулы в ячейке
      {
        //``````````````````````````````````````````````````````````````````````
        // Разбор формулы с учетом полей "[...]"
        vsFormula = asaValues[3][i];
        vsValue = '';

        for (j = 0; j < vsFormula.length; j++)
        {
          // Считывание очередного символа из формулы
          vsSymbol = vsFormula.charAt(j);

          // Поиск начального символа для поля ("[")
          if (vsSymbol == vsSymbolFieldBeg2)
          {
            // Поиск конечного символа для поля ("]")
            vliIndexEndField = vsFormula.indexOf(vsSymbolFieldEnd2, j);

            // Извлечение кода поля из строки
            vsFieldCode = vsFormula.slice(j + 1, vliIndexEndField);

            // Поиск в массиве соответсвующего кода пол
            vbExistsField = false;

            for (k = 0; k <= asaValues[0].length - 1; k++)
            {
              if (vsFieldCode == asaValues[1][k])
              {
                vbExistsField = true;
                vsValue = vsValue + asaValues[2][k];
                break;
              } // if (vsFieldCode == asaValues[1][k])
            } // for (k = 0; k <= asaValues[0].length - 1; k++)

            if (!vbExistsField)
              vsValue = vsValue + vsFieldCode;

            j = vliIndexEndField;
            continue;
          } // if (vsSymbol == vsSymbolFieldBeg2)

          // Символы строки, не попавшие в код поля, просто переносятся в итоговое значение
          vsValue = vsValue + vsSymbol;
        } // for (j = 0; j < vsFormula.length; j++)

        //``````````````````````````````````````````````````````````````````````
        // Разбор формулы  с учетом полей "{...}"
        vsFormula = vsValue;
        vsValue = '';

        for (j = 0; j < vsFormula.length; j++)
        {
          // Считывание очередного символа из формулы
          vsSymbol = vsFormula.charAt(j);

          // Поиск начального символа для поля ("{")
          if (vsSymbol == vsSymbolFieldBeg)
          {
            // Поиск конечного символа для поля ("}")
            vliIndexEndField = vsFormula.indexOf(vsSymbolFieldEnd, j);

            // Извлечение кода поля из строки
            vsFieldCode = vsFormula.slice(j + 1, vliIndexEndField);

            // Поиск в массиве соответсвующего кода пол
            vbExistsField = false;

            for (k = 0; k <= asaValues[0].length - 1; k++)
            {
              if (vsFieldCode == asaValues[1][k])
              {
                vbExistsField = true;
                vsValue = vsValue + asaValues[2][k];
                break;
              } // if (vsFieldCode == asaValues[1][k])
            } // for (k = 0; k <= asaValues[0].length - 1; k++)

            if (!vbExistsField)
              vsValue = vsValue + vsFieldCode;

            j = vliIndexEndField;
            continue;
          } // if (vsSymbol == vsSymbolFieldBeg)

          // Символы строки, не попавшие в код поля, просто переносятся в итоговое значение
          vsValue = vsValue + vsSymbol;
        } // for (j = 0; j < vsFormula.length; j++)

        //``````````````````````````````````````````````````````````````````````
        // Сохранение полученного значени
        asaValues[2][i] = vsValue;
      } // if (...
    } // for (i = 0; i < asaValues[0].length; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_CalcValues => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(asaValues);
} // function XMLFileIM_CalcValues

//------------------------------------------------------------------------------
// Функция заносит в массив коды полей, наименования, и значения полей,
// соответствующие передаваемому каталогу или таблице
// Параметры:
//   aoParent         - Ссылка на каталог или таблицу в XML-файле INTERMECH
//   abGetTableFields - Требуется ли получить поля таблицы (если нет - значит поля каталога)
// Результат:
//   Двумерный массив, в котором:
//     a[0][i] код i-го пол
//     a[1][i] наименование i-го пол
//     a[2][i] значение i-го поля (для таблиц)

function XMLFileIM_GetFields(aoParent, abGetTableFields)
{

// Локальные переменные
var i;                   // Переменная цикла
var vliOccurrencesCount; // Количество элементов <occurrence>
var voForm;              // Ссылки на элемент <form>
var voFormAttribute;     // Ссылки на элемент <formattribute>
var voOccurrences;       // Ссылки на коллекцию элементов <occurrence>
var voRelForm;           // Ссылки на элемент <field>
var vrdEvent;            // Структура с информацией об исключительной ситуации
var vsaFields;           // Массив полей
var vwLastIndex;         // Последний индекс в массиве

  //
  vsaFields = new Array();

  try
  {
    //
    voOccurrences = aoParent.selectNodes('occurrence[@elementtype = "field"][@ref!= ""]/@ref');
    vliOccurrencesCount = voOccurrences.length;

    //
    vsaFields[0] = new Array(vliOccurrencesCount);
    vsaFields[1] = new Array(vliOccurrencesCount);
    vsaFields[2] = new Array(vliOccurrencesCount);

    //
    for (i = 0; i < vliOccurrencesCount; i++)
    {
      voRelForm = goXMLFileIM.selectSingleNode('/intermech/field[@id = "' +
        voOccurrences.item(i).nodeValue + '"]/relation[@ref != ""]/@ref');

      if (voRelForm != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelForm.nodeValue + '"]');

        if (voForm != null)
        {
          //
          voFormAttribute = voForm.selectSingleNode('formattribute[@name="F_FIELD"]/@value')

          if (voFormAttribute != null)
            vsaFields[0][i] = voFormAttribute.nodeValue;
          else
            vsaFields[0][i] = '';

          voFormAttribute = null;

          //
          voFormAttribute = voForm.selectSingleNode('formattribute[@name="F_LONGNAME"]/@value');

          if (voFormAttribute != null)
            vsaFields[1][i] = voFormAttribute.nodeValue;
          else
            vsaFields[1][i] = '';

          voFormAttribute = null;

          //
          vsaFields[2][i] = '';

          if (abGetTableFields)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name="F_DATA"]/@value');

            if (voFormAttribute != null)
              vsaFields[2][i] = voFormAttribute.value
            else
              vsaFields[2][i] = '';

            voFormAttribute = null;
          } // if (abGetTableFields)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelForm != null)

      voRelForm = null;
    } // for (i = 0; i < vliOccurrencesCount; i++)

    vwLastIndex = vsaFields[1].length;

    vsaFields[0][vwLastIndex] = 'IMBASE_CODE';
    vsaFields[1][vwLastIndex] = 'IMBASE_CODE';
    vsaFields[2][vwLastIndex] = '';

    vwLastIndex = vwLastIndex + 1;

    vsaFields[0][vwLastIndex] = 'F_KEY';
    vsaFields[1][vwLastIndex] = 'F_KEY';
    vsaFields[2][vwLastIndex] = '';
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_GetFields => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  voFormAttribute = null;
  voForm = null;
  voRelForm = null;
  voOccurrences = null;

  //
  return vsaFields;
} // function XMLFileIM_GetFields

//------------------------------------------------------------------------------
// Функция возвращает реальный идентификатор (код каталога + код записи в таблице)
// для заданного IMBaseKey в БД IMBase
// Параметры:
//   asIMBaseKey - Значение IMBaseKey
// Результат:
//   Реальный идентификатор (код каталога + код записи в таблице) для заданного asIMBaseKey

function XMLFileIM_GetIMBaseRecKey(asIMBaseKey) 
{
  try 
  {
    return asIMBaseKey.substr(0, 8) + asIMBaseKey.substr(14, 6);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileIM_GetIMBaseRecKey => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_GetIMBaseRecKey

//------------------------------------------------------------------------------
// Предварительная подготовка DOM-документа для XML-файла в формате INTERMECH

function XMLFileIM_Prepare()
{

// Локальные переменные
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    // Инициализация базовых параметров
    goXMLFileIM.setProperty('SelectionLanguage', 'XPath');
    goXMLFileIM.async           = true;
    goXMLFileIM.validateOnParse = true;

    // Загрузка XML-файла в формате INTERMECH
    if (goXMLFileIM.load(GetXMLFileIM()) == false)
      throw new Error (100001, 'ERR_EXISTFILESRC');
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_Prepare => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileIM_Prepare

//------------------------------------------------------------------------------
// Поиск значения параметра в массиве
// Параметры:
//   asaArray           - Массив с параметрами и их значениями
//   aliParamNameIndex  - Индекс 2-го уровня для наименований параметров
//   aliParamValueIndex - Индекс 2-го уровня для значений параметров
//   asParamName        - Наименование параметра
// Результат:
//   Значение параметра (если параметр не найден в массиве, то пустая строка)

function XMLFileIM_GetParamValueFromArray(asaArray, aliParamNameIndex,
  aliParamValueIndex, asParamName)
{

// Локальные переменные
var i;           // Переменная цикла
var vliLength;   // Размер массива по 1-му уровню
var vrdEvent;    // Структура с информацией об исключительной ситуации
var vsParamName; // Наименование параметра в верхнем регистре

  try
  {
    vsParamName = asParamName.toUpperCase();
    vliLength = asaArray[aliParamNameIndex].length;

    for (i = 0; i < vliLength; i++)
    {
      if (vsParamName == asaArray[aliParamNameIndex][i].toUpperCase())
        return asaArray[aliParamValueIndex][i];
    } // for (i = 0; i < vliLength; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_GetParamValueFromArray => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return '';
} // function XMLFileIM_GetParamValueFromArray

//------------------------------------------------------------------------------
// Функция пробегает по папкам и запускает функцию добавления объектов
// Параметры:
//   aoFolder         - Ссылка на элемент <folder>
//   asParentID       - Идентификатор вышестоящей папки
//   asaCatalogFields - Массив полей каталога
//   awCatalogType    - Тип каталога:
//     1: Цеха (TC_CEH)
//     2: Оборудование (TC_OBORUD)
//     3: Операции (TC_OPER)
//     4: Виды работ (CTL000055)
//     5: Рабочие специальности (TC_WORKERS)
//     6: Материалы (CTL000001)
//     7: Оснастка (TC_OSNAST)
//     8: Основные материалы (CTL000002)
//     9: Вспомогательные материалы (CTL000050)
//   asCatalogName    - Наименование каталога
// Результат:
//   null

function XMLFileIM_ProcessingFolder(aoFolder, asParentID, asaCatalogFields, awCatalogType, asCatalogName)
{

// Локальные переменные
var i;                   // Переменная цикла
var vliOccurrencesCount; // Количество элементов <occerrence>
var vliTablesCount;      // Количество элементов <table>
var voChildFolder;       // Дочерняя папка
var voOccurrences;       // Коллекция элементов <occerrence>
var voTable;             // Элемент <table>
var voTables;            // Коллекция элементов <table>
var vrdEvent;            // Структура с информацией об исключительной ситуации
var vsParentID;          // Идентификатор вышестоящего объекта (например, цех для участка)

  try
  {
    //
    vsParentID = asParentID;

    //
    if (
      (awCatalogType == 1) || // Цеха
      (awCatalogType == 2) || // Оборудование
      (awCatalogType == 3) || // Операции
      (awCatalogType == 4))   // Виды работ
      vsParentID = XMLFileIM_ReadFolder(aoFolder, asParentID, asaCatalogFields, awCatalogType, asCatalogName);

    //
    if (awCatalogType == 5) // Рабочие специальности
    {
      voTables = aoFolder.selectNodes('occurrence[@elementtype = "table"][@ref!= ""]/@ref');
      vliTablesCount = voTables.length;

      for (i = 0; i < vliTablesCount; i++)
      {
        if (!NextVisual())
          throw new Error(10003, 'USER_ABORT');

        voTable = goXMLFileIM.selectSingleNode('/intermech/table[@id = "' +
          voTables.item(i).value + '"]');

        if (voTable != null)
          XMLFileIM_ReadFolder(voTable, asParentID, asaCatalogFields, awCatalogType, asCatalogName);

        voTable = null;
      } // for (i = 0; i < vliTablesCount; i++)

      voTables = null;
    } // if (awCatalogType == 5)

    //
    if (
      (awCatalogType == 6) || // Материалы
      (awCatalogType == 7) || // Оснастка
      (awCatalogType == 8) || // Основные материалы
      (awCatalogType == 9))   // Вспомогательные материалы
    {
      voTables = aoFolder.selectNodes('occurrence[@elementtype = "table"][@ref!= ""]/@ref');
      vliTablesCount = voTables.length;

      for (i = 0; i < vliTablesCount; i++)
      {
        if (!NextVisual())
          throw new Error(10003, 'USER_ABORT');

        voTable = goXMLFileIM.selectSingleNode('/intermech/table[@id = "' +
          voTables.item(i).value + '"]');

        if (voTable != null)
          XMLFileIM_ReadTable(voTable, asParentID, asaCatalogFields, awCatalogType, asCatalogName);

        voTable = null;
      } // for (i = 0; i < vliTablesCount; i++)

      voTables = null;
    } // if (...

    // Рекурсивный обход папок
    voOccurrences = aoFolder.selectNodes('occurrence[@elementtype = "folder"][@ref!= ""]/@ref');
    vliOccurrencesCount = voOccurrences.length;

    //
    for (i = 0; i < vliOccurrencesCount; i++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      voChildFolder = goXMLFileIM.selectSingleNode('/intermech/folder[@id = "' +
        voOccurrences.item(i).value + '"]');

      if (voChildFolder != null)
        XMLFileIM_ProcessingFolder(voChildFolder, vsParentID, asaCatalogFields, awCatalogType, asCatalogName);

      voChildFolder = null;
    } // for (j = 0; j < vliOccurrencesCount; j++)

    voOccurrences = null;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ProcessingFolder => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  voChildFolder = null;
  voOccurrences = null;
  voTable = null;
  voTables = null;
} // function XMLFileIM_ProcessingFolder

//------------------------------------------------------------------------------
// Функция пробегает по всем каталогам и запускает функцию добавления объектов
// из каталогов
// Результат:
//   null

function XMLFileIM_ReadCatalogs()
{

// Локальные переменные
var i;                   // Переменная цикла
var j;                   // Переменная цикла
var vliCatalogsCount;    // Количество каталогов в XML-файле INTERMECH
var vliOccurrencesCount; // Количество подпапок каталога в XML-файле INTERMECH
var voCatalogs;          // Коллекция ссылок на элемент <catalog> в XML-файле INTERMECH
var voFolder;            // Ссылка на элемент <folder> в XML-файле INTERMECH
var voFormAttribute;     // Ссылка на элемент <formattribute> в XML-файле INTERMECH
var voOccurrences;       // Коллекция ссылок на элемент <occurrence> в XML-файле INTERMECH
var voRelation;          // Ссылка на элемент <relation> в XML-файле INTERMECH
var vrdEvent;            // Структура с информацией об исключительной ситуации
var vsaCatalogFields;    // Массив полей каталога
var vsCatalogName;       // Наименование типа объектов каталога
var vsTableName;         // Имя основной таблицы для каталога
var vwCatalogType;       // Тип текущего каталога

  try
  {
    //
    voCatalogs = goXMLFileIM.selectNodes('/intermech/catalog[@id != ""]');
    vliCatalogsCount = voCatalogs.length;

    for (i = 0; i < vliCatalogsCount; i++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      voRelation = voCatalogs.item(i).selectSingleNode('relation[@elementtype = "form"][@ref != ""]/@ref');

      if (voRelation == null)
        continue;

      voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
        '"]/formattribute[@name = "F_TABLE"][@value != ""]/@value');

      if (voFormAttribute != null)
      {
        vsTableName = voFormAttribute.nodeValue;

        vsaCatalogFields = XMLFileIM_GetFields(voCatalogs.item(i), false);

        voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
          '"]/formattribute[@name = "F_DESCR"][@value != ""]/@value');

        switch (vsTableName)
        {

          // Цеха
          case 'TC_CEH':
          {
            // Сброс счетчика подразделений в массиве.
            // Значения полей записей справочника цехов выгружаются сначала в
            // соответствующие массивы, а затем для каждого подразделени
            // определяется вышестоящее подразделение, после чего информаци
            // по справочнику цехов сохраняется в XML-файл в формате ГАЛАКТИКА-ERP
            gliObjCount_Podr = 0;

            // Инициализация массивов для сохранения свойств подразделений
            gsaFieldValue_Podr_ID = new Array();
            gsaFieldValue_Podr_KodASUP = new Array();
            gsaFieldValue_Podr_KodCeh = new Array();
            gsaFieldValue_Podr_KodUch = new Array();
            gsaFieldValue_Podr_Name = new Array();
            gsaFieldValue_Podr_cPodr = new Array();
            gsaFieldValue_Podr_PrUch = new Array();

            //
            vwCatalogType = 1;
            vsCatalogName = voFormAttribute.nodeValue;//'Цеха';
            break;
          }

          // Оборудование
          case 'TC_OBORUD':
          {
            vwCatalogType = 2;
            vsCatalogName = voFormAttribute.nodeValue;//'Оборудование';
            break;
          }

          // Операции
          case 'TC_OPER':
          {
            vwCatalogType = 3;
            vsCatalogName = voFormAttribute.nodeValue;//'Операции';
            break;
          }

          // Виды работ
          case 'CTL000055':
          {
            vwCatalogType = 4;
            vsCatalogName = voFormAttribute.nodeValue;//'Виды работ';
            break;
          }

          // Рабочие специальности
          case 'TC_WORKERS':
          {
            vwCatalogType = 5;
            vsCatalogName = voFormAttribute.nodeValue;//'Рабочие специальности';
            break;
          }

          // Материалы
          case 'CTL000001':
          {
            vwCatalogType = 6;
            vsCatalogName = voFormAttribute.nodeValue;//'Материалы';
            break;
          }

          // Оснастка
          case 'TC_OSNAST':
          {
            vwCatalogType = 7;
            vsCatalogName = voFormAttribute.nodeValue;//'Оснастка';
            break;
          }

          // Основные материалы
          case 'CTL000002':
          {
            vwCatalogType = 8;
            vsCatalogName = voFormAttribute.nodeValue; //'Материалы';
            break;
          }

          // Вспомогательные материалы
          case 'CTL000050':
          {
            vwCatalogType = 9;
            vsCatalogName = voFormAttribute.nodeValue; //'Материалы';
            break;
          }

        default:
          continue;
        } // switch (vsTableName)

        SetVisualHeader(
          'Конвертация данных каталога "' + vsCatalogName + '"\n' +
          ' \n' +
          ' ');

        voOccurrences = voCatalogs.item(i).selectNodes('occurrence[@elementtype = "folder"][@ref!= ""]/@ref');
        vliOccurrencesCount = voOccurrences.length;

        for (j = 0; j < vliOccurrencesCount; j++)
        {
          if (!NextVisual())
            throw new Error(10003, 'USER_ABORT');

          voFolder = goXMLFileIM.selectSingleNode('/intermech/folder[@id = "' + voOccurrences.item(j).value + '"]');

          if (voFolder != null)
            XMLFileIM_ProcessingFolder(voFolder, '0', vsaCatalogFields, vwCatalogType, vsCatalogName);

          voFolder = null;
        } // for (j = 0; j < vliOccurrencesCount; j++)

        voOccurrences = null;
      } // if (voFormAttribute != null)

      voFormAttribute = null;
      voRelation = null;
    } // for (i = 0; i < vliCatalogsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadCatalogs => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  voFolder = null;
  voOccurrences = null;
  voFormAttribute = null;
  voRelation = null;
  voCatalogs = null;
} // function XMLFileIM_ReadCatalogs

//------------------------------------------------------------------------------
// Добавляет объект, соответствующий папке
// Параметры:
//   aoFolder         - Ссылка на элемент folder документа источника
//   asParentID       - Идентификатор вышестоящего объекта (например, цех для участка)
//   asaCatalogFields - Массив полей каталога
//   awCatalogType    - Тип каталога:
//     1: Цеха (TC_CEH)
//     2: Оборудование (TC_OBORUD)
//     3: Операции (TC_OPER)
//     4: Виды работ (CTL000055)
//     5: Рабочие специальности (TC_WORKERS)
//     6: Материалы (CTL000001)
//     7: Оснастка (TC_OSNAST)
//     8: Основные материалы (CTL000002)
//     9: Вспомогательные материалы (CTL000050)
//   asCatalogName    - Наименование каталога (для визуализации)
// Результат:
//   Идентификатор добавленного объекта

function XMLFileIM_ReadFolder(aoFolder, asParentID, asaCatalogFields, awCatalogType, asCatalogName)
{

// Локальные переменные
var i;                 // Переменная цикла
var vliFieldsCount;    // Количество полей
var voForm;            // Ссылка на элемент <form>
var voFormAttribute;   // Ссылка на элемент <formattribute>
var voOccurrence;      // Ссылка на элемент <occurrence>
var voRelation;        // Ссылка на элемент <relation>
var vrdEvent;          // Структура с информацией об исключительной ситуации
var vsaValues;         // Массив полей объекта
var vsObjGalID;        // Для сохранения ИД-Галактика для обьекта
var vsParentID;        // Для сохранения ИД-Галактика для вышестоящего обьекта
// Свойства подразделения
var vsPodr_ID;         // Свойство "Идентификатор"
var vsPodr_Kod;        // Свойство "Код"
var vsPodr_Name;       // Свойство "Наименование"
var vsPodr_PrUch;      // Свойство "Признак Цех/Участок (0/1)"
var vsPodr_cPodr;      // Свойство "Ссылка на вышестоящее подразделение"
// Свойства группы оборудования
var vsEqGroup_ID;      // Свойство "Идентификатор"
var vsEqGroup_Code;    // Свойство "Код"
var vsEqGroup_Name;    // Свойство "Наименование"
// Свойства единицы оборудования
var vsObjRem_ID;       // Свойство "Идентификатор"
var vsObjRem_Name;     // Свойство "Наименование"
var vsObjRem_InNum;    // Свойство "Инвентарный номер"
// Свойства технологической операции
var vsMnfOper_ID       // Свойство "Идентификатор"
var vsMnfOper_LNum     // Свойство "Код"
var vsMnfOper_Name     // Свойство "Наименование"
// Свойства вида работ
var vsKaWork_ID;       // Свойство "Идентификатор"
var vsKaWork_Code;     // Свойство "Код"
var vsKaWork_Name;     // Свойство "Наименование"
// Свойства профессии
var vsProfession_ImID; // Свойство "Идентификатор из Интермеха"
var vsProfession_ID;   // Свойство "Идентификатор"
var vsProfession_Code; // Свойство "Код"
var vsProfession_Name; // Свойство "Наименование"

  //
  vsParentID = '0';

  try
  {
    //
    vsaValues = new Array(3);
    vsaValues[0] = new Array();
    vsaValues[1] = new Array();
    vsaValues[2] = new Array();

    vliFieldsCount = asaCatalogFields[0].length;

    for (i = 0; i < asaCatalogFields[0].length; i++)
    {
      vsaValues[0][i] = asaCatalogFields[0][i];
      vsaValues[1][i] = asaCatalogFields[1][i];
    } // for (i = 0; i < asaCatalogFields[0].length; i++)

    voOccurrence = aoFolder.selectSingleNode('occurrence[@elementtype = "record"][@ref != ""]/@ref');

    if (voOccurrence != null)
    {
      voRelation = goXMLFileIM.selectSingleNode('/intermech/record[@id = "' + voOccurrence.value +
        '"]/relation/@ref');

      if (voRelation != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.value + '"]');

        if (voForm != null)
        {
          for (i = 0; i < vsaValues[0].length; i++)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name = "' + vsaValues[0][i] + '"]/@value');

            if (voFormAttribute != null)
              vsaValues[2][i] = voFormAttribute.value
            else
              vsaValues[2][i] = '';

            voFormAttribute = null;
          } // for (i = 0; i < vsaValues[0].length; i++)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelation != null)

      voRelation = null;
    } // if (voOccurrence != null)
    else
    {
      if (awCatalogType == 2) // Оборудование
      {
        vsaValues[0][vliFieldsCount] = 'IsEqGroup';
        vsaValues[1][vliFieldsCount] = 'IsEqGroup';
        vsaValues[2][vliFieldsCount++] = '1';
      } // if (awCatalogType == 2)

      if (
        (awCatalogType == 3) || // Операции
        (awCatalogType == 5))   // Рабочие специальности
        return vsParentID;
    } // else -> if (voOccurrence != null)

    if (
      (awCatalogType == 1) || // Цеха
      (awCatalogType == 2) || // Оборудование
      (awCatalogType == 3) || // Операции
      (awCatalogType == 4) || // Виды работ
      (awCatalogType == 5))   // Рабочие специальности
    {
      voRelation = aoFolder.selectSingleNode('relation[@elementtype = "form"][@ref != ""]/@ref');

      if (voRelation != null) 
      {
        // Сохранение атрибута 'F_NAME'
        voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
          '"]/formattribute[@name = "F_NAME"]/@value');

        if (voFormAttribute != null)
        {
          vsaValues[0][vliFieldsCount] = 'F_NAME';
          vsaValues[1][vliFieldsCount] = 'F_NAME';
          vsaValues[2][vliFieldsCount++] = voFormAttribute.nodeValue;
        } // if (voFormAttribute != null)

        voFormAttribute = null;

        // Сохранение атрибута 'F_LEVEL'
        voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
          '"]/formattribute[@name = "F_LEVEL"]/@value');

        if (voFormAttribute != null)
        {
          vsaValues[0][vliFieldsCount] = 'F_LEVEL';
          vsaValues[1][vliFieldsCount] = 'F_LEVEL';
          vsaValues[2][vliFieldsCount++] = voFormAttribute.nodeValue;
        } // if (voFormAttribute != null)

        voFormAttribute = null;
      } // if (voRelation != null)

      voRelation = null;

      if (
        (awCatalogType == 1) || // Цеха
        (awCatalogType == 2))   // Оборудование
      {
        vsaValues[0][vliFieldsCount] = 'Owner';
        vsaValues[1][vliFieldsCount] = 'Owner';
        vsaValues[2][vliFieldsCount++] = asParentID;
      } // if (...
    } // if (...

    //``````````````````````````````````````````````````````````````````````````
    // Добавление объекта в XML-файл
    switch (awCatalogType)
    {

      // Цеха
      case 1:
      {
        // Чтение свойства "Идентификатор"
        vsPodr_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // Чтение свойства "Код"
        vsPodr_Kod = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Код цеха АСУП');

        // Чтение свойства "Наименование"
        vsPodr_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Наименование участка');
        vsPodr_PrUch = '1';

        if (vsPodr_Name == '')
        {
          vsPodr_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Наименование цеха');
          vsPodr_PrUch = '0';
        } // if (vsPodr_Name == '')

        // Сохранение записи в массиве
        if (
          (vsPodr_Kod != '') &&
          (vsPodr_Kod != null))
        {
          // Корректировка текста в окне визуализации
          SetVisualHeader(
            'Конвертация данных каталога "' + asCatalogName + '"\n' +
            ' объект: \n' +
            ' ' + vsPodr_Name);

          // Увеличение счетчика подразделений
          gliObjCount_Podr = gliObjCount_Podr + 1;

          // Установка свойства "Идентификатор"
          gsaFieldValue_Podr_ID[gliObjCount_Podr - 1] = vsPodr_ID;

          // Установка свойства "Код цеха АСУП"
          gsaFieldValue_Podr_KodASUP[gliObjCount_Podr - 1] = vsPodr_Kod;

          // Установка свойства "Код цеха"
          gsaFieldValue_Podr_KodCeh[gliObjCount_Podr - 1] = XMLFileIM_GetParamValueFromArray(
            vsaValues,
            0,
            2,
            'Код цеха');

          // Установка свойства "Код участка"
          gsaFieldValue_Podr_KodUch[gliObjCount_Podr - 1] = XMLFileIM_GetParamValueFromArray(
            vsaValues,
            0,
            2,
            'Код участка');

          // Установка свойства "Наименование"
          gsaFieldValue_Podr_Name[gliObjCount_Podr - 1] = vsPodr_Name;

          // Установка свойства "Ссылка на вышестоящее подразделение"
          gsaFieldValue_Podr_cPodr[gliObjCount_Podr - 1] = '0';

          // Установка свойства "Признак Цех/Участок (0/1)"
          gsaFieldValue_Podr_PrUch[gliObjCount_Podr - 1] = vsPodr_PrUch;

          // Добавление в XML-файл
          //XMLFileGAL_AddPodr(false, vsPodr_ID, vsPodr_Kod, vsPodr_Name, vsPodr_cPodr);

          // Сохранение ссылки на родительскую запись
          vsParentID = vsPodr_ID;
        } // if (...

        break;
      } // case 1:

      // Оборудование
      case 2:
      {
        // Установка свойства "Идентификатор"
        vsEqGroup_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // Установка свойства "Код"
        vsEqGroup_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');

        // Установка свойства "Наименование"
        vsEqGroup_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_NAME');

        // Корректировка текста в окне визуализации
        SetVisualHeader(
          'Конвертация данных каталога "' + asCatalogName + '"\n' +
          ' объект: \n' +
          ' ' + vsEqGroup_Name);

        // Добавление в XML-файл
        vsObjGalID = GetObjGalID_EqGroup(
          false,
          vsEqGroup_ID,
          vsEqGroup_ID,
          vsEqGroup_Code,
          vsEqGroup_Name)

        // Сохранение ссылки на родительскую запись
        vsParentID = vsEqGroup_ID;

        // УСТАРЕВШИЙ ВАРИАНТ
        //if (XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IsEqGroup') != '')
        //{
        //  // Установка свойства "Идентификатор"
        //  vsEqGroup_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_LEVEL');//'IMBASE_CODE');
        //
        //  // Установка свойства "Код"
        //  vsEqGroup_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_LEVEL');
        //
        //  // Установка свойства "Наименование"
        //  vsEqGroup_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_NAME');
        //
        //  // Корректировка текста в окне визуализации
        //  SetVisualHeader(
        //    'Конвертация данных каталога "' + asCatalogName + '"\n' +
        //    ' объект: \n' +
        //    ' ' + vsEqGroup_Name);
        //
        //  // Добавление в XML-файл
        //  XMLFileGAL_AddEqGroup(false, vsEqGroup_ID, vsEqGroup_Code, vsEqGroup_Name);
        //
        //  // Сохранение ссылки на родительскую запись
        //  vsParentID = vsEqGroup_ID;
        //} // if (XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IsEqGroup') != '')
        //else
        //{
        //  // Установка свойства "Идентификатор"
        //  vsObjRem_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_LEVEL');//'IMBASE_CODE');
        //
        //  // Установка свойства "Наименование"
        //  vsObjRem_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Наименование');
        //
        //  // Установка свойства "Инвентарный номер"
        //  vsObjRem_InNum = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код АСУП');
        //
        //  // Корректировка текста в окне визуализации
        //  SetVisualHeader(
        //    'Конвертация данных каталога "' + asCatalogName + '"\n' +
        //    ' объект: \n' +
        //    ' ' + vsObjRem_Name);
        //
        //  // Добавление в XML-файл
        //  XMLFileGAL_AddObjRem(false, vsObjRem_ID, vsObjRem_Name, vsObjRem_InNum);
        //
        //  // Сохранение ссылки на родительскую запись
        //  vsParentID = vsObjRem_ID;
        //} // else -> if (XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IsEqGroup') != '')

        break;
      } // case 2:

      // Операции
      case 3:
      {
        // Установка свойства "Идентификатор"
        vsMnfOper_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // Установка свойства "Код"
        vsMnfOper_LNum = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Код операции');

        // Установка свойства "Наименование"
        vsMnfOper_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_NAME');

        // Корректировка текста в окне визуализации
        SetVisualHeader(
          'Конвертация данных каталога "' + asCatalogName + '"\n' +
          ' объект: \n' +
          ' ' + vsMnfOper_Name);

        // Добавление в XML-файл
        vsObjGalID = GetObjGalID_MnfOper(
          true,
          vsMnfOper_ID,
          vsMnfOper_ID, //vsMnfOper_LNum,
          vsMnfOper_LNum,
          vsMnfOper_Name);

        // Сохранение ссылки на родительскую запись
        vsParentID = vsObjGalID;

        break;
      } // case 3:

      // Виды работ
      case 4:
      {
        // Установка свойства "Идентификатор"
        vsKaWork_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // Установка свойства "Код"
        vsKaWork_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Код вида работ');

        // Установка свойства "Наименование"
        vsKaWork_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_NAME');

        // Корректировка текста в окне визуализации
        SetVisualHeader(
          'Конвертация данных каталога "' + asCatalogName + '"\n' +
          ' объект: \n' +
          ' ' + vsKaWork_Name);

        // Сохранение записи
        if (
          (vsKaWork_Code != '') &&
          (vsKaWork_Code != null))
        {
          // Добавление в XML-файл
          vsObjGalID = GetObjGalID_KaWork(
            false,
            vsKaWork_ID,
            vsKaWork_ID,
            vsKaWork_Code,
            vsKaWork_Name);

          // Сохранение ссылки на родительскую запись
          vsParentID = vsKaWork_ID;
        } // if (...

        break;
      } // case 4:

      // Рабочие специальности
      case 5:
      {
        // Установка свойства "Идентификатор из Интермеха"
        vsProfession_ImID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_KEY');

        // Установка свойства "Идентификатор"
        vsProfession_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'IMBASE_CODE');
        //vsProfession_ID = XMLFileIM_GetIMBaseRecKey(vsProfession_ID);

        // Установка свойства "Код"
        vsProfession_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Код профессии');

        // Установка свойства "Наименование"
        vsProfession_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'Наименование исполнителя');

        // Корректировка текста в окне визуализации
        SetVisualHeader(
          'Конвертация данных каталога "' + asCatalogName + '"\n' +
          ' объект: \n' +
          ' ' + vsProfession_Name);

        // Добавление в XML-файл
        vsObjGalID = GetObjGalID_Profession(
          true,
          vsProfession_ImID,
          vsProfession_ID,
          vsProfession_Code,
          vsProfession_Name);

        // Сохранение ссылки на родительскую запись
        vsParentID = vsProfession_ID;

        break;
      }  // case 5:

    } // switch (awCatalogType)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadFolder => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  voFormAttribute = null;
  voForm = null;
  voRelation = null;
  voOccurrence = null;

  //
  return vsParentID;
} // function XMLFileIM_ReadFolder

//------------------------------------------------------------------------------
// Функция добавляет в xml-файл все изделия
// Параметры:
//   aoArts       - Ссылка на коллекцию элементов <art>
//   aliArtsCount - Количество элементов <art>
// Результат:
//   null

function XMLFileIM_ReadProduction()
{

// Локальные переменные
var i;                  // Переменная цикла
var j;                  // Переменная цикла
var vliArtsCount;       // Количество элементов <art>
var vliOccurencesCount; // Количество элементов <occurence>
var vliRelationsCount;  // Количество элементов <relation>
var vliTPsCount;        // Количество элементов <tp>
var voArts;             // Ссылка на коллекцию элементов <art>
var voAttrValues;       // Ссылка на коллекцию значений атрибута
var voFormAttributes;   // Ссылка на коллекцию элементов <formattribute>
var voOccurences;       // Ссылка на коллекцию элементов <occurence>
var voRelations;        // Ссылка на коллекцию элементов <relation>
var voTP;               // Ссылка на элемент <tp>
var voTPs;              // Ссылка на коллекцию элементов <tp>
var vrdEvent;           // Структура с информацией об исключительной ситуации
var vsaChildObjects;    // Массив для сохранения идентификаторов дочерних объектов
var vsaChildObjCount;   // Массив для сохранения количества для дочерних объектов
var vsaChildObjRefMU;   // Массив для сохранения ссылок на единицы измерения дл
                        //   дочерних объектов
var vsArtID;            // Для сохранения идентификатора тэга <art>                        
//                        
var vsMC_AtlLastDate;   // Дата последней модификации
var vsMC_cType;         // Ссылка на тип МЦ
var vsMC_ID;            // Идентификатор
var vsMC_Kind;          // Категория МЦ (0 - покупная, 1 - собственного производства)
var vsMC_Massa;         // Масса
var vsMC_Name;          // Наименование
var vsMC_BarKod;        // Номенклатурный номер
var vsMC_Obozn;         // Код
var vsMC_PrMat;         // Характеристика МЦ (0 - материал, 1 - ДСЕ, 2 - инструмент, оснастка)
var vsMC_cEd;           // Ссылка на учетную единицу измерения
var vsMC_RemMC;         // Примечание
var vsMC_TNVED;         // Код ТНВЭД
var vsMC_VersionNmb;    // Значение внешнего атрибута "Номер версии" для МЦ
var vsMC_InvNmbDoc;     // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsMC_BuildCode;     // Значение внешнего атрибута "Код исполнения" для МЦ
var vsMC_Litera;        // Значение внешнего атрибута "Литера" для МЦ

var vsTP_AddedSign_1;   //
var vsTP_AddedSign_2;   //
var vsTP_AddedSign_3;   //
var vsTP_CheckDt_1;     //
var vsTP_CheckDt_2;     //
var vsTP_CheckDt_3;     //
var vsTP_Checkers_1;    //
var vsTP_Checkers_2;    //
var vsTP_Checkers_3;    //
var vsTP_cEd;           //
var vsTP_cNormGroup;    //
var vsTP_cObject;       //
var vsTP_EdNorm;        //
var vsTP_HdrKS_ID;      //
var vsTP_ID;            //
var vsTP_MinVol;        //
var vsTP_Name;          //
var vsTP_ParGroup;      //
var vsTP_Product;       //
var vsTP_Shifr;         //
var vsTP_tObject;       //

  try
  {
    // Считывание всех изделий в XML-файле INTERMECH
    voArts = goXMLFileIM.getElementsByTagName('art');
    vliArtsCount = voArts.length;

    //
    SetVisualHeader('Выгрузка машиностроительных объектов \n   \n   ');

    // Цикл по машиностроительным объектам
    for(i = 0; i < vliArtsCount; i++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````
      // Формирование объекта "Матценность"

      // Считывание свойства "ID"
      vsMC_ID = voArts.item(i).getAttribute('id');

      // Получение ссылки на свойства издели
      voRelations = voArts.item(i).selectNodes('relation[@elementtype = "form"][@ref != ""]/@ref');

      if (voRelations.length == 0)
      {
        voRelations = null;
        continue;
      } // if (voRelations.length == 0)

      // Проверка, что текущий <art> не содержит "!ZAKAZ"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "!ZAKAZ"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //{
      //  voRelations = null;
      //  voFormAttributes = null;
      //  continue;
      //} // if (voFormAttributes.length != 0)
      //
      //voFormAttributes = null;

      // Проверка, что текущий <art> не содержит "!PARENT"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "!PARENT"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //{
      //  voRelations = null;
      //  voFormAttributes = null;
      //  continue;
      //} // if (voFormAttributes.length != 0)
      //
      //voFormAttributes = null;

      // Считывание свойства "Идентификатор объекта"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Идентификатор объекта"]/@value');
      
      if (voFormAttributes.length == 0)
      {
        voFormAttributes = null;
        continue;
      } // if (voFormAttributes.length == 0)
      
      vsMC_ID = voFormAttributes.item(0).nodeValue;
      
      voFormAttributes = null;

      //vsMC_ID = gliGlobID++;

      // Установка значений свойств по умолчанию
      vsMC_Name        = '';
      vsMC_BarKod      = '';
      vsMC_Obozn       = '';
      vsMC_Kind        = '1';
      vsMC_cType       = '0';
      vsMC_TNVED       = '';
      vsMC_RemMC       = '';
      vsMC_AtlLastDate = '';
      vsMC_Massa       = '0';
      vsMC_PrMat       = '1';
      vsMC_cEd         = '0';
      vsMC_VersionNmb  = '';
      vsMC_InvNmbDoc   = '';
      vsMC_BuildCode   = '';
      vsMC_Litera      = '';

      // Считывание свойства "Наименование"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Наименование"]/@value');

      if (voFormAttributes.length == 0)
      {
        voFormAttributes = null;
        continue;
      } // if (voFormAttributes.length == 0)

      vsMC_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Корректировка текста в окне визуализации
      SetVisualHeader(
        'Выгрузка машиностроительных объектов\n' +
        ' объект: \n' +
        ' ' + vsMC_Name);

      // Считывание свойства "Обозначение"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Обозначение"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Obozn = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Покупной"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Покупной"]/@value');

      if (voFormAttributes.length != 0)
        if (voFormAttributes.item(0).nodeValue == '+')
          vsMC_Kind = '0';

      voFormAttributes = null;

      // Считывание свойства "Тип МЦ"
      voFormAttributes = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Тип объекта"]/@value');

      if (voFormAttributes != null)
        vsMC_cType = voFormAttributes.nodeValue;

      if (
        (vsMC_cType == null) ||
        (vsMC_cType == ''))
        vsMC_cType = '0';

      if (vsMC_cType != '0')
        vsMC_cType = GetObjGalID_TypeMC_ByName(vsMC_cType);

      voFormAttributes = null;

      // Считывание свойства "Единица измерения"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Единица измерения"]/@value');

      if (voFormAttributes.length != 0)
          vsMC_cEd = voFormAttributes.item(0).nodeValue;

      if (
        (vsMC_cEd == null) ||
        (vsMC_cEd == ''))
          vsMC_cEd = '0';

      if (vsMC_cEd == '0')
        vsMC_cEd = 'шт';

      if (vsMC_cEd != '0')
        vsMC_cEd = GetObjGalID_Ed(true, vsMC_cEd, vsMC_cEd, vsMC_cEd, vsMC_cEd);

      // Считывание свойства "Код ОКП"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Код ОКП"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_TNVED = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Примечание"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Примечание"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_RemMC = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Дата изменения"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Дата модификации документа"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_AtlLastDate = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Масса"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Масса"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Massa = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Номер версии"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Номер версии"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_VersionNmb = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Инвентарный номер документа"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Инвентарный номер документа"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_InvNmbDoc = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Код исполнения"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Код исполнения"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_BuildCode = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Литера"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Литера"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Litera = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      //
      vsMC_PrMat = '1';

      // Добавление МЦ в XML-файл в формате ГАЛАКТИКА-ERP
      vsMC_ID = GetObjGalID_MC(
        true, 
        vsMC_ID, 
        vsMC_ID, 
        vsMC_Name + ' ' + vsMC_Obozn, 
        vsMC_BarKod, 
        vsMC_Obozn, 
        vsMC_Kind,
        vsMC_cType, 
        vsMC_TNVED, 
        vsMC_RemMC, 
        vsMC_AtlLastDate, 
        vsMC_Massa, 
        vsMC_PrMat, 
        vsMC_cEd, 
        vsMC_VersionNmb,
        vsMC_InvNmbDoc, 
        vsMC_BuildCode, 
        vsMC_Litera);

      voRelations = null;

      //````````````````````````````````````````````````````````````````````````
      // Формирование объекта "Конструкторская спецификация"

      // Считывание множества объектов, входящих в состав
      voOccurences = voArts.item(i).selectNodes('occurrence[@elementtype = "art"][@ref != ""]');

      vliOccurencesCount = voOccurences.length;

      if (vliOccurencesCount != 0) 
      {
        // Корректировка текста в окне визуализации
        SetVisualHeader(
        'Выгрузка машиностроительных объектов\n' +
        ' КС для объекта: \n' +
        ' ' + vsMC_Name);

        // Сохранение конструкторского состава в массиве
        vsaChildObjects = new Array();
        vsaChildObjCount = new Array();
        vsaChildObjRefMU = new Array();

        // Цикл по объектам, входящим в состав
        for (j = 0; j < vliOccurencesCount; j++) 
        {
          // Начальная инициализация свойств
          vsaChildObjects[j] = '0';
          vsaChildObjCount[j] = '1';
          vsaChildObjRefMU[j] = '0';

          // Считывание дочернего тэга <art\relation> для дальнейшего считывания
          // свойства "Идентификатор объекта"
          vsArtID = '0';
          
          voAttrValues = voOccurences.item(j).selectNodes('@ref');

          if (voAttrValues.length != 0)
            vsArtID = voAttrValues.item(0).nodeValue;

          voAttrValues = null;
          
          voRelations = goXMLFileIM.selectNodes('/intermech/art[@id = "' + vsArtID +
            '"]/relation[@elementtype = "form"][@ref != ""]/@ref');

          vliRelationsCount = voRelations.length;

          if (vliRelationsCount != 0)
          {
            // Считывание свойства "Идентификатор объекта"
            voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
              '"]/formattribute[@name = "Идентификатор объекта"]/@value');

            if (voFormAttributes.length != 0)
                vsaChildObjects[j] = voFormAttributes.item(0).nodeValue;

            voFormAttributes = null;
          } // if (vliRelationsCount != 0)
          
          voRelations = null;

          // Считывание тэга <occurence\relation> для дальнейшего считывания
          // свойств "Количество" и "Идентификатор единицы измерения"
          voRelations = voOccurences.item(j).selectNodes('relation[@elementtype = "form"][@ref != ""]/@ref');

          vliRelationsCount = voRelations.length;
          
          if (vliRelationsCount != 0)
          {
            // Считывание свойства "Количество"
            voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Количество"]/@value');

            if (voFormAttributes.length != 0)
              vsaChildObjCount[j] = voFormAttributes.item(0).nodeValue;

            voFormAttributes = null;

            // Считывание свойства "Идентификатор единицы измерения"
            voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Идентификатор единицы измерения"]/@value');

            if (voFormAttributes.length != 0)
              vsaChildObjRefMU[j] = voFormAttributes.item(0).nodeValue;

            voFormAttributes = null;
          } // if (vliRelationsCount != 0)
          
          voRelations = null;
        } // for (j = 0; j < vliRelationsCount; j++)

        // Создание объекта с типом "Конструкторская спецификация"
        XMLFileGAL_AddHdrKS(
          false,
          vsMC_ID,
          vsMC_ID,
          vsMC_Name,
          '',
          vsaChildObjects,
          vsaChildObjCount,
          vsaChildObjRefMU);

        vsaChildObjects = null;
        vsaChildObjCount = null;
        vsaChildObjRefMU = null;
      } // if (vliRelationsCount != 0)

      voOccurences = null;

      //````````````````````````````````````````````````````````````````````````
      // Формирование объектов "Маршрутная карта"

      // Считывание множества ТП, относящихся к текущему объекту
      voTPs = voArts.item(i).selectNodes('occurrence[@elementtype = "tp"][@ref != ""]/@ref');
      vliTPsCount = voTPs.length;

      if (vliTPsCount != 0)
      {
        // Корректировка текста в окне визуализации
        SetVisualHeader(
          'Выгрузка машиностроительных объектов\n' +
          ' ТП для объекта: \n' +
          ' ' + vsMC_Name);

        // Цикл по ТП
        for (j = 0; j < vliTPsCount; j++)
        {
          // Получение элемента <tp>
          voTP = goXMLFileIM.selectNodes('/intermech/tp[@id = "' + voTPs.item(j).nodeValue + '"]');

          if (voTP.length == 0)
          {
            voTP = null;
            continue;
          } // if (voTP.length == 0)

          // Установка значений свойств по умолчанию
          vsTP_ID          = '0';
          vsTP_Shifr       = '';
          vsTP_Name        = '';
          vsTP_tObject     = '4';
          vsTP_cObject     = vsMC_ID;
          vsTP_Product     = '1';
          vsTP_EdNorm      = '1';
          vsTP_cEd         = '0';
          vsTP_MinVol      = '0';
          vsTP_Checkers_1  = '';
          vsTP_AddedSign_1 = '';
          vsTP_CheckDt_1   = '';
          vsTP_Checkers_2  = '';
          vsTP_AddedSign_2 = '';
          vsTP_CheckDt_2   = '';
          vsTP_Checkers_3  = '';
          vsTP_AddedSign_3 = '';
          vsTP_CheckDt_3   = '';
          vsTP_ParGroup    = gliParameter_OperParams_ID;
          vsTP_cNormGroup  = gliParameter_NormCategory_ID;
          vsTP_HdrKS_ID    = vsMC_ID;

          // Получение ссылки на элемент <form>
          voRelations = voTP.item(0).selectNodes('relation[@elementtype = "form"][@ref != ""]/@ref');

          // Считывание свойства "Идентификатор документа"
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "!KEY"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_ID = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // Считывание свойства "Обозначение"
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = "ODoc"]/@value');
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Обозначение"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Shifr = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // Считывание свойства "Наименование"
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = "NDoc"]/@value');
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Наименование"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Name = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // Считывание свойства "Разработал"
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = "ФИО"]/@value');
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Разработал"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Checkers_1 = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // Считывание свойства ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_AddedSign_1 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // Считывание свойства ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_CheckDt_1 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // Считывание свойства "Проверил"
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Пров"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Checkers_2 = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // Считывание свойства ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_AddedSign_2 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // Считывание свойства ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_CheckDt_2 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // Считывание свойства "Утвердил"
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "Утв"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Checkers_3 = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // Считывание свойства ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_AddedSign_3 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // Считывание свойства ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_CheckDt_3 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // Корректировка текста в окне визуализации
          SetVisualHeader(
            'Выгрузка машиностроительных объектов\n' +
            ' ТП для объекта: \n' +
            ' ' + vsTP_Name);

          // Создание объекта с типом "Маршрутная карта"
          GetObjGalID_KatMarsh(
            true,
            vsTP_ID,
            vsTP_ID,
            voTP,
            vsTP_Shifr,
            vsTP_Name,
            vsTP_tObject,
            vsTP_cObject,
            vsTP_Product,
            vsTP_EdNorm,
            vsTP_cEd,
            vsTP_MinVol,
            vsTP_Checkers_1,
            vsTP_AddedSign_1,
            vsTP_CheckDt_1,
            vsTP_Checkers_2,
            vsTP_AddedSign_2,
            vsTP_CheckDt_2,
            vsTP_Checkers_3,
            vsTP_AddedSign_3,
            vsTP_CheckDt_3,
            vsTP_ParGroup,
            vsTP_cNormGroup,
            vsTP_HdrKS_ID);

          // Освобождение ресурсов
          voRelations = null;
          voTP = null;
        } // for (j = 0; j < vliTPsCount; j++)
      } // if (vliTPsCount != 0)

      voTPs = null;
    } // for (i = 0; i < aliArtsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadProduction => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  voFormAttributes = null;
  voRelations = null;
} // function XMLFileIM_ReadProduction

//------------------------------------------------------------------------------
// Функция добавляет все объекты из элемента "таблица" документа-источника
// Параметры:
//   aoTable          - Ссылка на элемент <table>
//   asParentID       - Идентификатор вышестоящего объекта (например, цех для участка)
//   asaCatalogFields - Массив полей каталога
//   awCatalogType    - Тип каталога:
//     1: Цеха (TC_CEH)
//     2: Оборудование (TC_OBORUD)
//     3: Операции (TC_OPER)
//     4: Виды работ (CTL000055)
//     5: Рабочие специальности (TC_WORKERS)
//     6: Материалы (CTL000001)
//     7: Оснастка (TC_OSNAST)
//     8: Основные материалы (CTL000002)
//     9: Вспомогательные материалы (CTL000050)
//   asCatalogName    - Наименование каталога (для визуализации)
// Результат:
//   null

function XMLFileIM_ReadTable(aoTable, asParentID, asaCatalogFields, awCatalogType, asCatalogName)
{

// Локальные переменные
var i;                   // Переменная цикла
var j;                   // Переменная цикла
var vliOccurrencesCount; // Количество элементов <occerrence>
var voOccurrence;        // Ссылка на элемент <occurrence>
var voOccurrences;       // Коллекция элементов <occerrence>
var voForm;              // Элемент <form>
var voFormAttribute;     // Ссылки на элемент <formattribute>
var voRelation;          // Сcылка на элемент <relation>
var voTable;             // Ссылка на элемент <table>
var vrdEvent;            // Структура с информацией об исключительной ситуации
var vsaTableFields;      // Массив полей таблицы
var vsaValues;           // Массив значений полей, где:
                         //   a[0][i] - наименование i-го пол
                         //   a[1][i] - код i-го пол
                         //   a[2][i] - значение i-го пол
                         //   a[3][i] - формула макроподстановки i-го поля

// Свойства таблицы
var vsTable_KEY;         // Поле F_KEY для записи таблицы

// Свойства матценности
var vsMC_AtlLastDate;    // Свойство "Дата последней модификации"
var vsMC_cType;          // Свойство "Ссылка на тип МЦ"
var vsMC_ImID;           // Свойство "Идентификатор для Интермеха"
var vsMC_ID;             // Свойство "Идентификатор"
var vsMC_Kind;           // Свойство "Характеристика МЦ"
var vsMC_Massa;          // Свойство "Масса"
var vsMC_Name;           // Свойство "Наименование"
var vsMC_BarKod;         // Свойство "Номенклатурный номер"
var vsMC_Obozn;          // Свойство "Код"
var vsMC_PrMat;          // Свойство "Признак материала"
var vsMC_cEd;            // Свойство "Ссылка на учетную единицу измерения"
var vsMC_RemMC;          // Свойство "Примечание"
var vsMC_TNVED;          // Свойство "Код ТНВЭД"
var vsMC_VersionNmb;     // Значение внешнего атрибута "Номер версии" для МЦ
var vsMC_InvNmbDoc;      // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsMC_BuildCode;      // Значение внешнего атрибута "Код исполнения" для МЦ
var vsMC_Litera;         // Значение внешнего атрибута "Литера" для МЦ

// Дополнительные свойства
var vsValue_Name;        // Значение "Наименование"
var vsValue_GOST;        // Значение "ГОСТ"
var vsValue_Ispolnenie;  // Значение "Исполнение"

  try 
  {
    //
    vsTable_KEY = '';

    //
    vsaValues = new Array(4);
    vsaValues[0] = new Array();
    vsaValues[1] = new Array();
    vsaValues[2] = new Array();
    vsaValues[3] = new Array();

    //
    vsaTableFields = XMLFileIM_GetFields(aoTable, true);

    // Поиск "каталоговских" кодов для нужных полей
    for (i = 0; i < vsaTableFields[0].length; i++)
    {
      vsaValues[0][i] = vsaTableFields[1][i];
      vsaValues[1][i] = XMLFileIM_GetParamValueFromArray(asaCatalogFields, 1, 0, vsaTableFields[1][i]);
      vsaValues[2][i] = '';
      vsaValues[3][i] = '';
    } // for (i = 0; i < vsaTableFields[0].length; i++)

    // Заполнение полей из записей таблицы
    voOccurrence = aoTable.selectSingleNode('occurrence[@elementtype = "record"][@ref != ""]/@ref');

    if (voOccurrence != null)
    {
      voRelation = goXMLFileIM.selectSingleNode('/intermech/record[@id = "' + voOccurrence.value +
        '"]/relation/@ref');

      if (voRelation != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.value + '"]');

        if (voForm != null) 
        {
          // Сохранение значения свойства "F_KEY" для записи таблицы
          voFormAttribute = voForm.selectSingleNode('formattribute[@name = "F_KEY"]/@value');

          if (voFormAttribute != null)
            vsTable_KEY = voFormAttribute.value;

          voFormAttribute = null;

          // Заполнение полей
          for (i = 0; i < vsaValues[1].length; i++)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name = "' + vsaValues[1][i] + '"]/@value');

            if (voFormAttribute != null)
              vsaValues[2][i] = voFormAttribute.value;

            voFormAttribute = null;
          } // for (i = 0; i < vsaValues[1].length; i++)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelation != null)

      voRelation = null;
    } // if (voOccurrence != null)

    voOccurrence = null;

    // Замена кодов полей (F1..) с "каталоговских" на "табличные"
    for (i = 0; i < vsaValues[0].length; i++)
    {
      vsaValues[1][i] = XMLFileIM_GetParamValueFromArray(vsaTableFields, 1, 0, vsaValues[0][i]);

      // Запись формулы макроподстановок
      vsaValues[3][i] = XMLFileIM_GetParamValueFromArray(vsaTableFields, 1, 2, vsaValues[0][i]);
    } // for (i = 0; i < vsaValues[0].length; i++)

    //
    voOccurrences = aoTable.selectNodes('occurrence[@elementtype = "row"][@ref != ""]/@ref');
    vliOccurrencesCount = voOccurrences.length;

    // Цикл по всем строкам таблицы
    for (j = 0; j < vliOccurrencesCount; j++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      voRelation = goXMLFileIM.selectSingleNode('/intermech/row[@id = "' + voOccurrences.item(j).value + '"]/relation/@ref');

      if (voRelation != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.value + '"]');

        if (voForm != null)
        {
          for (i = 0; i < vsaValues[0].length; i++)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name = "' + vsaValues[1][i] + '"]/@value');

            if (voFormAttribute != null)
              vsaValues[2][i] = voFormAttribute.value;

            voFormAttribute = null;
          } // for (i = 0; i < vsaValues[0].length; i++)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelation != null)

      voRelation = null;

      //
      vsaValues = XMLFileIM_CalcValues(vsaValues);

      // Добавление объекта в XML-файл
      switch (awCatalogType) 
      {
        // Материалы
        case 6:
        {
          // Установка свойства "Идентификатор"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          //vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // Установка свойства "Наименование"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Полное обозначение');

          if (vsMC_Name < '    ') 
          {
            vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Класс');

            vsValue_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Наименование');
            vsValue_GOST = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'ГОСТ');

            if (vsValue_Name > '    ')
              vsMC_Name = vsMC_Name + ' ' + vsValue_Name;

            if (vsValue_GOST > '    ')
              vsMC_Name = vsMC_Name + ' ' + vsValue_GOST;
          } // if (vsMC_Name < '    ')

          // Записи с пустыми наименованиями пропускаются
          if (vsMC_Name < '    ')
            continue;

          // Установка свойства "Номенклатурный номер"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код АСУП');

          // Установка свойства "Код"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Полное обозначение');

          // Установка свойства "Характеристика МЦ"
          vsMC_Kind = '0';

          // Установка свойства "Ссылка на тип МЦ"
          vsMC_cType = '0';

          // Установка свойства "Код ТНВЭД"
          vsMC_TNVED = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код ОКП');

          // Установка свойства "Примечание"
          vsMC_RemMC = '';

          // Установка свойства "Дата последней модификации"
          vsMC_AtlLastDate = '';

          // Установка свойства "Масса"
          vsMC_Massa = '0';

          // Установка свойства "Признак материала"
          vsMC_PrMat = '0';

          // Установка свойства "Ссылка на учетную единицу измерения"
          vsMC_cEd = '0';

          // Установка значения внешнего атрибута "Номер версии" для МЦ
          vsMC_VersionNmb = '';

          // Установка значения внешнего атрибута "Инвентарный номер документа" для МЦ
          vsMC_InvNmbDoc = '';

          // Установка значения внешнего атрибута "Код исполнения" для МЦ
          vsMC_BuildCode = '';

          // Установка значения внешнего атрибута "Литера" для МЦ
          vsMC_Litera = '';

          // Корректировка текста в окне визуализации
          SetVisualHeader(
            'Конвертация данных каталога "' + asCatalogName + '"\n' +
            ' объект: \n' +
            ' ' + vsMC_Name);

          // Добавление в XML-файл
          vsMC_ID = GetObjGalID_MC(
            true, 
            vsMC_ID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        }    // case 6:

        // Оснастка
        case 7:
        {
          // Установка свойства "Идентификатор для Интермеха"
          vsMC_ImID = vsTable_KEY + '_' + XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_KEY');

          // Установка свойства "Идентификатор"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          //vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // Установка свойства "Наименование"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Полное наименование');

          if (vsMC_Name < '    ') 
          {
            vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Наименование');

            vsValue_Ispolnenie = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Исполнение');

            if (vsValue_Ispolnenie > '    ')
              vsMC_Name = vsMC_Name + ' ' + vsValue_Ispolnenie;
          } // if (vsMC_Name < '    ')

          // Записи с пустыми наименованиями пропускаются
          if (vsMC_Name < '    ')
            continue;

          // Установка свойства "Номенклатурный номер"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код АСУП');

          // Установка свойства "Код"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Полное наименование');

          // Установка свойства "Характеристика МЦ"
          vsMC_Kind = '0';

          // Установка свойства "Ссылка на тип МЦ"
          vsMC_cType = '0';

          // Установка свойства "Код ТНВЭД"
          vsMC_TNVED = '';

          // Установка свойства "Примечание"
          vsMC_RemMC = '';

          // Установка свойства "Дата последней модификации"
          vsMC_AtlLastDate = '';

          // Установка свойства "Масса"
          vsMC_Massa = '0';

          // Установка свойства "Признак материала"
          vsMC_PrMat = '0';

          // Установка свойства "Ссылка на учетную единицу измерения"
          vsMC_cEd = '0';

          // Установка значения внешнего атрибута "Номер версии" для МЦ
          vsMC_VersionNmb = '';

          // Установка значения внешнего атрибута "Инвентарный номер документа" для МЦ
          vsMC_InvNmbDoc = '';

          // Установка значения внешнего атрибута "Код исполнения" для МЦ
          vsMC_BuildCode = '';

          // Установка значения внешнего атрибута "Литера" для МЦ
          vsMC_Litera = '';

          // Корректировка текста в окне визуализации
          SetVisualHeader(
            'Конвертация данных каталога "' + asCatalogName + '"\n' +
            ' объект: \n' +
            ' ' + vsMC_Name);

          // Добавление в XML-файл
          vsMC_ID = GetObjGalID_MC(
            true,
            vsMC_ImID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        } // case 7:

        // Основные материалы
        case 8:
        {
          // Установка свойства "Идентификатор"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // Установка свойства "Наименование"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Класс');

          vsValue_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Наименование');
          vsValue_GOST = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'ГОСТ');

          if (vsValue_Name > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_Name;

          if (vsValue_GOST > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_GOST;

          // Записи с пустыми наименованиями пропускаются
          if (vsMC_Name < '    ')
            continue;

          // Установка свойства "Номенклатурный номер"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код АСУП');

          // Установка свойства "Код"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Полное обозначение');

          // Установка свойства "Характеристика МЦ"
          vsMC_Kind = '0';

          // Установка свойства "Ссылка на тип МЦ"
          vsMC_cType = '0';

          // Установка свойства "Код ТНВЭД"
          vsMC_TNVED = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код ОКП');

          // Установка свойства "Примечание"
          vsMC_RemMC = '';

          // Установка свойства "Дата последней модификации"
          vsMC_AtlLastDate = '';

          // Установка свойства "Масса"
          vsMC_Massa = '0';

          // Установка свойства "Признак материала"
          vsMC_PrMat = '0';

          // Установка свойства "Ссылка на учетную единицу измерения"
          vsMC_cEd = '0';

          // Установка значения внешнего атрибута "Номер версии" для МЦ
          vsMC_VersionNmb = '';

          // Установка значения внешнего атрибута "Инвентарный номер документа" для МЦ
          vsMC_InvNmbDoc = '';

          // Установка значения внешнего атрибута "Код исполнения" для МЦ
          vsMC_BuildCode = '';

          // Установка значения внешнего атрибута "Литера" для МЦ
          vsMC_Litera = '';

          // Корректировка текста в окне визуализации
          SetVisualHeader(
            'Конвертация данных каталога "' + asCatalogName + '"\n' +
            ' объект: \n' +
            ' ' + vsMC_Name);

          // Добавление в XML-файл
          vsMC_ID = GetObjGalID_MC(
            true,
            vsMC_ID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        }    // case 8:

        // Вспомогательные материалы
        case 9:
        {
          // Установка свойства "Идентификатор"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // Установка свойства "Наименование"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Класс');

          vsValue_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Наименование');
          vsValue_GOST = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'ГОСТ');

          if (vsValue_Name > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_Name;

          if (vsValue_GOST > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_GOST;

          // Записи с пустыми наименованиями пропускаются
          if (vsMC_Name < '    ')
            continue;

          // Установка свойства "Номенклатурный номер"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код АСУП');

          // Установка свойства "Код"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Полное обозначение');

          // Установка свойства "Характеристика МЦ"
          vsMC_Kind = '0';

          // Установка свойства "Ссылка на тип МЦ"
          vsMC_cType = '0';

          // Установка свойства "Код ТНВЭД"
          vsMC_TNVED = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'Код ОКП');

          // Установка свойства "Примечание"
          vsMC_RemMC = '';

          // Установка свойства "Дата последней модификации"
          vsMC_AtlLastDate = '';

          // Установка свойства "Масса"
          vsMC_Massa = '0';

          // Установка свойства "Признак материала"
          vsMC_PrMat = '0';

          // Установка свойства "Ссылка на учетную единицу измерения"
          vsMC_cEd = '0';

          // Установка значения внешнего атрибута "Номер версии" для МЦ
          vsMC_VersionNmb = '';

          // Установка значения внешнего атрибута "Инвентарный номер документа" для МЦ
          vsMC_InvNmbDoc = '';

          // Установка значения внешнего атрибута "Код исполнения" для МЦ
          vsMC_BuildCode = '';

          // Установка значения внешнего атрибута "Литера" для МЦ
          vsMC_Litera = '';

          // Корректировка текста в окне визуализации
          SetVisualHeader(
            'Конвертация данных каталога "' + asCatalogName + '"\n' +
            ' объект: \n' +
            ' ' + vsMC_Name);

          // Добавление в XML-файл
          vsMC_ID = GetObjGalID_MC(
            true,
            vsMC_ID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        } // case 9:

      } // switch (awCatalogType)
    } // for (j = 0; j < vliOccurrencesCount; j++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTable => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  voFormAttribute = null;
  voForm = null;
  voRelation = null;
  voOccurrence = null;
  voOccurrences = null;
} // function XMLFileIM_ReadTable

//------------------------------------------------------------------------------
// Выгрузка норм использования оборудования для операции техпроцесса
// Параметры:
//   aoOper                               - Элемент <oper> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPOper_EqNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                         // Переменная цикла
var vliEqsCount;               // Количество элементов <eq> для элемента aoOper
                               // в XML-файле в формате INTERMECH
var voEqs;                     // Коллекция элементов <eq> для элемента aoOper
                               // в XML-файле в формате INTERMECH

//
var vsMarshSpEqNorm_ID;        // Идентификатор для нормы использования оборудования на операцию
var vsMarshSpEqNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpEqNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpEqNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpEqNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpEqNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpEqNorm_Product;   // Режим использования: норма/выход
var vsMarshSpEqNorm_ParGroup;  // Код группы параметров
var vsMarshSpEqNorm_NormSort;  // Категория группы параметров
var vsMarshSpEqNorm_Rasx;      // Норма расхода
var vsMarshSpEqNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpEqNorm_dNormEd;   // Единица нормирования
var vsMarshSpEqNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

  // Проверка существования объекта aoOper
  if (aoOper == null)
    return;

  try
  {
    //
    voEqs = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "eq"][@ref != ""]/@ref');
  
    vliEqsCount = voEqs.length;
  
    if (vliEqsCount == 0)
    {
      voEqs = null;
      return;
    } // if (vliEqsCount == 0)
  
    // Цикл по нормам использования оборудовани
    for (i = 0; i < vliEqsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpEqNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpEqNorm_tObject   = '11007';                // Тип объекта-владельца нормы
      vsMarshSpEqNorm_cObject   = asNOpe;                 // Ссылка на объект-владелец нормы
      vsMarshSpEqNorm_tResource = '47';                   // Тип нормируемого ресурса
      vsMarshSpEqNorm_cResource = '0';                    // Ссылка на нормируемый ресурс
      vsMarshSpEqNorm_wProd     = '0';                    // Тип нормы/продукта выхода
      vsMarshSpEqNorm_Product   = '0';                    // Режим использования: норма/выход
      vsMarshSpEqNorm_ParGroup  = gliParameter_EqNorm_ID; // Код группы параметров
      vsMarshSpEqNorm_NormSort  = '103';                  // Категория группы параметров
      vsMarshSpEqNorm_Rasx      = '1';                    // Норма расхода
      vsMarshSpEqNorm_cEd       = '0';                    // Ссылка на единицу измерения
      vsMarshSpEqNorm_dNormEd   = '1';                    // Единица нормирования
      vsMarshSpEqNorm_cNormEd   = '0';                    // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/eq[@id = "' + voEqs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // Считывание свойства "Идентификатор оборудования"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ИнвН"]/@value');
      
      if (voFormAttributes.length != 0)
        vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      if (vsMarshSpEqNorm_cResource == '0')
      {
        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          '"]/formattribute[@name = "A138"]/@value');

        if (voFormAttributes.length != 0)
          vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;
      } // if (vsMarshSpEqNorm_cResource == '0')

      // Добавление объекта с типом "Норма использования оборудования для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpEqNorm(
        false,
        vsMarshSpEqNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpEqNorm_tObject,
        vsMarshSpEqNorm_cObject,
        vsMarshSpEqNorm_tResource,
        vsMarshSpEqNorm_cResource,
        vsMarshSpEqNorm_wProd,
        vsMarshSpEqNorm_Product,
        vsMarshSpEqNorm_ParGroup,
        vsMarshSpEqNorm_NormSort,
        vsMarshSpEqNorm_Rasx,
        vsMarshSpEqNorm_cEd,
        vsMarshSpEqNorm_dNormEd,
        vsMarshSpEqNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliEqsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_EqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_EqNorm

//------------------------------------------------------------------------------
// Выгрузка трудовых норм для операции техпроцесса
// Параметры:
//   aoOper                               - Элемент <oper> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPOper_JobNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                          // Переменная цикла
var vliWorksCount;              // Количество элементов <work> для элемента aoOper
                                // в XML-файле в формате INTERMECH
var voWorks;                    // Коллекция элементов <work> для элемента aoOper
                                // в XML-файле в формате INTERMECH

//
var vsMarshSpJobNorm_ID;        // Идентификатор для нормы использования оборудования на операцию
var vsMarshSpJobNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpJobNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpJobNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpJobNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpJobNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpJobNorm_Product;   // Режим использования: норма/выход
var vsMarshSpJobNorm_ParGroup;  // Код группы параметров
var vsMarshSpJobNorm_NormSort;  // Категория группы параметров
var vsMarshSpJobNorm_Rasx;      // Норма расхода
var vsMarshSpJobNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpJobNorm_dNormEd;   // Единица нормирования
var vsMarshSpJobNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

// Свойства профессии
var vsProfession_ImID;          // Свойство "Идентификатор из Интермеха"
var vsProfession_ID;            // Свойство "Идентификатор"
var vsProfession_Code;          // Свойство "Код"
var vsProfession_Name;          // Свойство "Наименование"

  // Проверка существования объекта aoOper
  if (aoOper == null)
    return;

  try
  {
    //
    voWorks = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "work"][@ref != ""]/@ref');
  
    vliWorksCount = voWorks.length;
  
    if (vliWorksCount == 0)
    {
      voWorks = null;
      return;
    } // if (vliWorksCount == 0)
  
    // Цикл по трудовым нормам
    for (i = 0; i < vliWorksCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````  
      // Начальная инициализация значений свойств
      vsMarshSpJobNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpJobNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
      vsMarshSpJobNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
      vsMarshSpJobNorm_tResource = '36';                    // Тип нормируемого ресурса
      vsMarshSpJobNorm_cResource = '0';                     // Ссылка на нормируемый ресурс
      vsMarshSpJobNorm_wProd     = '0';                     // Тип нормы/продукта выхода
      vsMarshSpJobNorm_Product   = '0';                     // Режим использования: норма/выход
      vsMarshSpJobNorm_ParGroup  = gliParameter_JobNorm_ID; // Код группы параметров
      vsMarshSpJobNorm_NormSort  = '102';                   // Категория группы параметров
      vsMarshSpJobNorm_Rasx      = '1';                     // Норма расхода
      vsMarshSpJobNorm_cEd       = '0';                     // Ссылка на единицу измерения
      vsMarshSpJobNorm_dNormEd   = '1';                     // Единица нормирования
      vsMarshSpJobNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования

      //````````````````````````````````````````````````````````````````````````  
      // Считывание свойств для профессии
      vsProfession_ImID = '0';
      vsProfession_ID   = '0';
      vsProfession_Code = '';
      vsProfession_Name = '';

      voRelations = goXMLFileIM.selectNodes('/intermech/work[@id = "' + voWorks.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');

      // Считывание свойства "Идентификатор профессии из Интермеха"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "risp"]/@value');

      if (voFormAttributes.length != 0)
        vsProfession_ImID = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Идентификатор равен идентификатору профессии из Интермеха
      vsProfession_ID = vsProfession_ImID;

      // Считывание свойства "Код профессии"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "КПи"]/@value');

      if (voFormAttributes.length != 0)
        vsProfession_Code = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Наименование профессии"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "NIsp"]/@value');

      if (voFormAttributes.length != 0)
        vsProfession_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Освобождение ресурсов
      voRelations = null;

      //````````````````````````````````````````````````````````````````````````  
      // Уточнение ссылки на профессию
      vsMarshSpJobNorm_cResource = GetObjGalID_Profession(
        true,
        vsProfession_ImID,
        vsProfession_ID,
        vsProfession_Code,
        vsProfession_Name);

      //````````````````````````````````````````````````````````````````````````  
      // Добавление объекта с типом "Трудовая норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpJobNorm(
        false,
        vsMarshSpJobNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpJobNorm_tObject,
        vsMarshSpJobNorm_cObject,
        vsMarshSpJobNorm_tResource,
        vsMarshSpJobNorm_cResource,
        vsMarshSpJobNorm_wProd,
        vsMarshSpJobNorm_Product,
        vsMarshSpJobNorm_ParGroup,
        vsMarshSpJobNorm_NormSort,
        vsMarshSpJobNorm_Rasx,
        vsMarshSpJobNorm_cEd,
        vsMarshSpJobNorm_dNormEd,
        vsMarshSpJobNorm_cNormEd);
    } // for (i = 0; i < vliWorksCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_JobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_JobNorm

//------------------------------------------------------------------------------
// Выгрузка материальных норм для операции техпроцесса
// Параметры:
//   aoOper                               - Элемент <oper> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPOper_MatNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                          // Переменная цикла
var vliMatsCount;               // Количество элементов <mat> для элемента aoOper
                                // в XML-файле в формате INTERMECH
var vliSpecsCount;              // Количество элементов <spec> для элемента aoOper
                                // в XML-файле в формате INTERMECH
var voMats;                     // Коллекция элементов <mat> для элемента aoOper
                                // в XML-файле в формате INTERMECH
var voSpecs;                    // Коллекция элементов <spec> для элемента aoOper
                                // в XML-файле в формате INTERMECH

//
var vsMarshSpMatNorm_ID;        // Идентификатор для нормы использования оборудования на операцию
var vsMarshSpMatNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpMatNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpMatNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpMatNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpMatNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpMatNorm_Product;   // Режим использования: норма/выход
var vsMarshSpMatNorm_ParGroup;  // Код группы параметров
var vsMarshSpMatNorm_NormSort;  // Категория группы параметров
var vsMarshSpMatNorm_Rasx;      // Норма расхода
var vsMarshSpMatNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpMatNorm_dNormEd;   // Единица нормирования
var vsMarshSpMatNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

  // Проверка существования объекта aoOper
  if (aoOper == null)
    return;

  try
  {
    //``````````````````````````````````````````````````````````````````````````
    // Материалы
  
    //
    voMats = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "mat"][@ref != ""]/@ref');
  
    vliMatsCount = voMats.length;
  
    if (vliMatsCount == 0)
    {
      voMats = null;
      return;
    } // if (vliMatsCount == 0)
  
    // Цикл по материальным нормам
    for (i = 0; i < vliMatsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
      vsMarshSpMatNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
      vsMarshSpMatNorm_tResource = '4';                     // Тип нормируемого ресурса
      vsMarshSpMatNorm_cResource = '0';                     // Ссылка на нормируемый ресурс
      vsMarshSpMatNorm_wProd     = '0';                     // Тип нормы/продукта выхода
      vsMarshSpMatNorm_Product   = '0';                     // Режим использования: норма/выход
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
      vsMarshSpMatNorm_NormSort  = '101';                   // Категория группы параметров
      vsMarshSpMatNorm_Rasx      = '1';                     // Норма расхода
      vsMarshSpMatNorm_cEd       = '0';                     // Ссылка на единицу измерения
      vsMarshSpMatNorm_dNormEd   = '1';                     // Единица нормирования
      vsMarshSpMatNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/mat[@id = "' + voMats.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// Считывание свойства "Идентификатор материала"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "Идентификатор материала"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;

      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "%MAT"]/@value');

      if (voFormAttributes.length != 0)
      {
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
        vsMarshSpMatNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpMatNorm_cResource);
      } // if (voFormAttributes.length != 0)
  
      voFormAttributes = null;
  
      // Считывание свойства "Количество материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Нрвм"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Добавление объекта с типом "Материальная норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliMatsCount; i++)
  
    //``````````````````````````````````````````````````````````````````````````
    // Состав
  
    //
    voSpecs = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "spec"][@ref != ""]/@ref');
  
    vliSpecsCount = voSpecs.length;
  
    if (vliSpecsCount == 0)
    {
      voSpecs = null;
      return;
    } // if (vliSpecsCount == 0)
  
    // Цикл по материальным нормам
    for (i = 0; i < vliSpecsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
      vsMarshSpMatNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
      vsMarshSpMatNorm_tResource = '4';                     // Тип нормируемого ресурса
      vsMarshSpMatNorm_cResource = '0';                     // Ссылка на нормируемый ресурс
      vsMarshSpMatNorm_wProd     = '0';                     // Тип нормы/продукта выхода
      vsMarshSpMatNorm_Product   = '0';                     // Режим использования: норма/выход
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
      vsMarshSpMatNorm_NormSort  = '101';                   // Категория группы параметров
      vsMarshSpMatNorm_Rasx      = '1';                     // Норма расхода
      vsMarshSpMatNorm_cEd       = '0';                     // Ссылка на единицу измерения
      vsMarshSpMatNorm_dNormEd   = '1';                     // Единица нормирования
      vsMarshSpMatNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/spec[@id = "' + voSpecs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// Считывание свойства "Идентификатор материала"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "Идентификатор материала"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ArtN"]/@value');

      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Количество материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "PhNm"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Добавление объекта с типом "Материальная норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliSpecsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_MatNorm

//------------------------------------------------------------------------------
// Выгрузка материальной нормы (КС) для операции техпроцесса
// Параметры:
//   aoOper                               - Элемент <oper> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию
//   aliMC_ID                             - Идентификатор матценности
//   aliHdrKS_ID                          - Идентификатор конструкторской спецификации

function XMLFileIM_ReadTPOper_MatNorm_BOM(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas,
  asNOpe, aliMC_ID, aliHdrKS_ID)
{

// Локальные переменные
var vsMarshSpMatNorm_ID;        // Идентификатор для нормы использования оборудования на операцию
var vsMarshSpMatNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpMatNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpMatNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpMatNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpMatNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpMatNorm_Product;   // Режим использования: норма/выход
var vsMarshSpMatNorm_ParGroup;  // Код группы параметров
var vsMarshSpMatNorm_NormSort;  // Категория группы параметров
var vsMarshSpMatNorm_Rasx;      // Норма расхода
var vsMarshSpMatNorm_cEd;       // Ссылка на единицу измерени
var vsMarshSpMatNorm_dNormEd;   // Единица нормировани
var vsMarshSpMatNorm_cNormEd;   // Ссылка на единицу измерения единицы нормировани

  // Проверка существования объекта aoOper
  if (aoOper == null)
    return;

  try
  {
    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');
  
    // Добавление материальной нормы в XML-файл
    vsMarshSpMatNorm_ID = gliGlobID;
    gliGlobID = gliGlobID + 1;
  
    vsMarshSpMatNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
    vsMarshSpMatNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
    vsMarshSpMatNorm_tResource = '4';                     // КАУ нормируемого ресурса
    vsMarshSpMatNorm_cResource = aliMC_ID;                // Ссылка на нормируемый ресурс
    vsMarshSpMatNorm_tDoc      = '41';                    // КАУ документа-нормы для нормируемого
                                                          //   ресурса (для КС = 41)
    vsMarshSpMatNorm_cDoc      = aliHdrKS_ID;             // Ссылка на документ-норму для нормируемого
                                                          //   ресурса
    vsMarshSpMatNorm_wProd     = '0';                     // Тип нормы/продукта выхода
    vsMarshSpMatNorm_Product   = '0';                     // Режим использования: норма/выход
    vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
    vsMarshSpMatNorm_NormSort  = '101';                   // Категория группы параметров
    vsMarshSpMatNorm_Rasx      = '1';                     // Норма расхода
    vsMarshSpMatNorm_cEd       = '0';                     // Ссылка на единицу измерения
    vsMarshSpMatNorm_dNormEd   = '1';                     // Единица нормирования
    vsMarshSpMatNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования
  
    XMLFileGAL_AddMarshSpMatNorm_BOM(
      false,
      vsMarshSpMatNorm_ID,
      aliXMLFileGAL_Node_Clt_MarshSpNormas,
      vsMarshSpMatNorm_tObject,
      vsMarshSpMatNorm_cObject,
      vsMarshSpMatNorm_tResource,
      vsMarshSpMatNorm_cResource,
      vsMarshSpMatNorm_tDoc,
      vsMarshSpMatNorm_cDoc,
      vsMarshSpMatNorm_wProd,
      vsMarshSpMatNorm_Product,
      vsMarshSpMatNorm_ParGroup,
      vsMarshSpMatNorm_NormSort,
      vsMarshSpMatNorm_Rasx,
      vsMarshSpMatNorm_cEd,
      vsMarshSpMatNorm_dNormEd,
      vsMarshSpMatNorm_cNormEd);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_MatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_MatNorm_BOM

//------------------------------------------------------------------------------
// Выгрузка инструментальных норм для операции техпроцесса
// Параметры:
//   aoOper                               - Элемент <oper> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPOper_ToolNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                           // Переменная цикла
var vliToolsCount;               // Количество элементов <tool> для элемента aoOper
                                 // в XML-файле в формате INTERMECH
var voTools;                     // Коллекция элементов <tool> для элемента aoOper
                                 // в XML-файле в формате INTERMECH

//
var vsMarshSpToolNorm_ID;        // Идентификатор для нормы использования оборудования на операцию
var vsMarshSpToolNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpToolNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpToolNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpToolNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpToolNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpToolNorm_Product;   // Режим использования: норма/выход
var vsMarshSpToolNorm_ParGroup;  // Код группы параметров
var vsMarshSpToolNorm_NormSort;  // Категория группы параметров
var vsMarshSpToolNorm_Rasx;      // Норма расхода
var vsMarshSpToolNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpToolNorm_dNormEd;   // Единица нормирования
var vsMarshSpToolNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

// Свойства матценности
var vsMC_AtlLastDate;            // Свойство "Дата последней модификации"
var vsMC_cType;                  // Свойство "Ссылка на тип МЦ"
var vsMC_ImID;                   // Свойство "Идентификатор для Интермеха"
var vsMC_ID;                     // Свойство "Идентификатор"
var vsMC_Kind;                   // Свойство "Характеристика МЦ"
var vsMC_Massa;                  // Свойство "Масса"
var vsMC_Name;                   // Свойство "Наименование"
var vsMC_BarKod;                 // Свойство "Номенклатурный номер"
var vsMC_Obozn;                  // Свойство "Код"
var vsMC_PrMat;                  // Свойство "Признак материала"
var vsMC_cEd;                    // Свойство "Ссылка на учетную единицу измерения"
var vsMC_RemMC;                  // Свойство "Примечание"
var vsMC_TNVED;                  // Свойство "Код ТНВЭД"
var vsMC_VersionNmb;             // Значение внешнего атрибута "Номер версии" для МЦ
var vsMC_InvNmbDoc;              // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsMC_BuildCode;              // Значение внешнего атрибута "Код исполнения" для МЦ
var vsMC_Litera;                 // Значение внешнего атрибута "Литера" для МЦ

  // Проверка существования объекта aoOper
  if (aoOper == null)
    return;

  try
  {
    //
    voTools = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "tool"][@ref != ""]/@ref');
  
    vliToolsCount = voTools.length;
  
    if (vliToolsCount == 0)
    {
      voTools = null;
      return;
    } // if (vliToolsCount == 0)
  
    // Цикл по оснастке
    for (i = 0; i < vliToolsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````
      // Начальная инициализация значений свойств
      vsMarshSpToolNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpToolNorm_tObject   = '11007';                   // Тип объекта-владельца нормы
      vsMarshSpToolNorm_cObject   = asNOpe;                    // Ссылка на объект-владелец нормы
      vsMarshSpToolNorm_tResource = '4';                       // Тип нормируемого ресурса
      vsMarshSpToolNorm_cResource = '0';                       // Ссылка на нормируемый ресурс
      vsMarshSpToolNorm_wProd     = '0';                       // Тип нормы/продукта выхода
      vsMarshSpToolNorm_Product   = '0';                       // Режим использования: норма/выход
      vsMarshSpToolNorm_ParGroup  = gliParameter_ToolsNorm_ID; // Код группы параметров
      vsMarshSpToolNorm_NormSort  = '104';                     // Категория группы параметров
      vsMarshSpToolNorm_Rasx      = '1';                       // Норма расхода
      vsMarshSpToolNorm_cEd       = '0';                       // Ссылка на единицу измерения
      vsMarshSpToolNorm_dNormEd   = '1';                       // Единица нормирования
      vsMarshSpToolNorm_cNormEd   = '0';                       // Ссылка на единицу измерения единицы нормирования

      voRelations = goXMLFileIM.selectNodes('/intermech/tool[@id = "' + voTools.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0)
      {
        vsMarshSpToolNorm_cResource = voFormAttributes.item(0).nodeValue;
        //vsMarshSpToolNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpToolNorm_cResource);
      } // if (voFormAttributes.length != 0)
  
      voFormAttributes = null;
  
      // Считывание свойства "Количество оснастки"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "КоВО"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      //````````````````````````````````````````````````````````````````````````
      // Установка свойств для МЦ, соответствующей оснастке

      // Установка значений свойств по умолчанию
      vsMC_ImID        = '0';
      vsMC_ID          = '0';
      vsMC_Name        = '';
      vsMC_BarKod      = '';
      vsMC_Obozn       = '';
      vsMC_Kind        = '1';
      vsMC_cType       = '0';
      vsMC_TNVED       = '';
      vsMC_RemMC       = '';
      vsMC_AtlLastDate = '';
      vsMC_Massa       = '0';
      vsMC_PrMat       = '1';
      vsMC_cEd         = '0';
      vsMC_VersionNmb  = '';
      vsMC_InvNmbDoc   = '';
      vsMC_BuildCode   = '';
      vsMC_Litera      = '';

      // vsMC_ImID
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "TypR"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = vsMC_ImID + '_' + voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_ID
      vsMC_ID = vsMC_ImID;

      // vsMC_Name
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ОСН"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_BarKod
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "О_ВО"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BarKod = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Obozn
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "О_ВО"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Obozn = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_Kind
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Kind = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cType
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cType = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_TNVED
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_TNVED = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_RemMC
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "К_ос"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_RemMC = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_AtlLastDate
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_AtlLastDate = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Massa
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "МасО"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Massa = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_PrMat
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_PrMat = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cEd
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cEd = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_VersionNmb
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_VersionNmb = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_InvNmbDoc
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_InvNmbDoc = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_BuildCode
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BuildCode = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Litera
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Litera = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // Освобождение ресурсов
      voRelations = null;

      //````````````````````````````````````````````````````````````````````````
      // Уточнение ссылки на оснастку
      vsMarshSpToolNorm_cResource = GetObjGalID_MC(
        true,
        vsMC_ImID,
        vsMC_ID,
        vsMC_Name,
        vsMC_BarKod,
        vsMC_Obozn,
        vsMC_Kind,
        vsMC_cType,
        vsMC_TNVED,
        vsMC_RemMC,
        vsMC_AtlLastDate,
        vsMC_Massa,
        vsMC_PrMat,
        vsMC_cEd,
        vsMC_VersionNmb,
        vsMC_InvNmbDoc,
        vsMC_BuildCode,
        vsMC_Litera);

      //````````````````````````````````````````````````````````````````````````
      // Добавление объекта с типом "Материальная норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpToolNorm(
        false,
        vsMarshSpToolNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpToolNorm_tObject,
        vsMarshSpToolNorm_cObject,
        vsMarshSpToolNorm_tResource,
        vsMarshSpToolNorm_cResource,
        vsMarshSpToolNorm_wProd,
        vsMarshSpToolNorm_Product,
        vsMarshSpToolNorm_ParGroup,
        vsMarshSpToolNorm_NormSort,
        vsMarshSpToolNorm_Rasx,
        vsMarshSpToolNorm_cEd,
        vsMarshSpToolNorm_dNormEd,
        vsMarshSpToolNorm_cNormEd);
    } // for (i = 0; i < vliToolsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_ToolNorm

//------------------------------------------------------------------------------
// Выгрузка операций техпроцесса в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aoTP                           - Элемент <tp> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSp - Handle узла-коллекции "Операции МК" в XML-файле в формате ГАЛАКТИКА-ERP
//   aliMC_ID                       - Идентификатор матценности
//   aliHdrKS_ID                    - Идентификатор конструкторской спецификации

function XMLFileIM_ReadTPOpers(aoTP, aliXMLFileGAL_Node_Clt_MarshSp, aliMC_ID, aliHdrKS_ID)
{

var i;                // Переменная цикла

// Объекты
var voFormAttributes;   // Ссылка на коллекцию элементов <formattribute>
//var voOccurences;       // Ссылка на коллекцию элементов <occurence>
var vliOpersCount;    // Количество элементов <oper> в XML-файле в формате INTERMECH
var voOpers;          // Коллекция элементов <oper> в XML-файле в формате INTERMECH
var voRelations;        // Ссылка на коллекцию элементов <relation>
//var voTPOperStep;     // Объект "Переход для операции техпроцесса" в TechCardAPI
//var voTPOperSteps;    // Объект "Переходы для операции техпроцесса" в TechCardAPI

//
var vliMarsh_Sp_ID;   // Идентификатор позиции/операции маршрутной карты

// Свойства позиции/операции маршрутной карты
var vsMarshSp_Num;    // Номер позиции
var vsMarshSp_wOpe;   // КАУ операции (для технологической операции = 35)
var vsMarshSp_nOpe;   // Ссылка на технологическую операцию
var vsMarshSp_EdNorm; // Единица нормирования (количество)
var vsMarshSp_cEd;    // Ссылка на единицу измерения для единицы нормирования
var vsMarshSp_tDep;   // КАУ исполнителя (для подразделений = 2)
var vsMarshSp_cDep;   // Ссылка на исполнителя

//
var vbFirstOper;      // Признак обработки первой строки
var vliHdrKS_ID;      // Идентификатор конструкторской спецификациия

  // Проверка существования объекта aoTP
  if (aoTP == null)
    return;

  // Проверка наличия объектов в коллекции
  if (aoTP.length == 0)
    return;

  try
  {
    // Считывание операций техпроцесса
    voOpers = aoTP.item(0).selectNodes('occurrence[@elementtype = "oper"][@ref != ""]/@ref');
  
    if (voOpers == null)
      return;
  
    vliOpersCount = voOpers.length;
  
    // Проверка наличия операций у техпроцесса
    if (vliOpersCount == 0)
    {
      // Создание псевдооперации "Сборка"
      if (
        (aliHdrKS_ID != null) &&
        (aliHdrKS_ID != '') &&
        (aliHdrKS_ID != '0'))
      {
        // Поиск операции "Сборка" в каталоге "Операции"
        //try
        //{
        //  voFolder = goIMBaseAPI_Catalog_TC_OPER.FindFolder('СБОРКА', 2);
        //}
        //catch(e)
        //{
        //}
  
        // Начальная инициализация значений для свойств позиции/операции маршрутной карты
        vsMarshSp_Num    = '001'; // Номер позиции
                                  //   (= номеру операции техпроцесса)
        vsMarshSp_wOpe   = '35';  // КАУ операции
                                  //   (для технологической операции = 35)
        vsMarshSp_nOpe   = '0';//??????   // Ссылка на технологическую операцию
        vsMarshSp_EdNorm = '1';   // Единица нормирования (количество)
                                  //   (= значению понятия "Единица нормирования" для операции
                                  //   техпроцесса)
        vsMarshSp_cEd    = '0';   // Ссылка на единицу измерения для единицы нормирования
        vsMarshSp_tDep   = '2';   // КАУ для ссылки на цех-исполнитель
                                  //   (для подразделений = 2)
        vsMarshSp_cDep   = '0';   // Ссылка на цех-исполнитель
  
        // Создание позиции/операции маршрутной карты
        vliMarshSp_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
  
        XMLFileGAL_AddMarshSp(
          null,//voOpers,
          false,
          vliMarshSp_ID,
          aliXMLFileGAL_Node_Clt_MarshSp,
          vsMarshSp_Num,
          vsMarshSp_wOpe,
          vsMarshSp_nOpe,
          vsMarshSp_EdNorm,
          vsMarshSp_cEd,
          vsMarshSp_tDep,
          vsMarshSp_cDep,
          aliMC_ID,
          aliHdrKS_ID);
      } // if (...
  
      return;
    } // if (vliOpersCount == 0)
  
    // Цикл по всем операциям техпроцесса
    vbFirstOper = true;
  
    for (i = 0; i < vliOpersCount; i++)
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
  
      // Начальная инициализация значений для свойств позиции/операции маршрутной карты
      vliMarshSp_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSp_Num    = '00'; // Номер позиции
                               //   (= номеру операции техпроцесса)
      vsMarshSp_wOpe   = '35'; // КАУ операции
                               //   (для технологической операции = 35)
      vsMarshSp_nOpe   = '0';  // Ссылка на технологическую операцию
                               //   (= коду (LEVEL) операции из каталога IMBase "Операции")
      vsMarshSp_EdNorm = '1';  // Единица нормирования (количество)
                               //   (= значению понятия "Единица нормирования" для операции
                               //   техпроцесса)
      vsMarshSp_cEd    = '0';  // Ссылка на единицу измерения для единицы нормирования
      vsMarshSp_tDep   = '2';  // КАУ для ссылки на цех-исполнитель
                               //   (для подразделений = 2)
      vsMarshSp_cDep   = '0';  // Ссылка на цех-исполнитель
   
      // Получение идентификатора на форму
      voRelations = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + voOpers.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      if (voRelations.length == 0)
      {
        voRelations = null;
        continue;
      } // if (voRelations.length == 0)
  
      // Считывание свойства "Номер операции"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "N_ОП"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_Num = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Считывание свойства "Ссылка на технологическую операцию"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "Копк"]/@value');

      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "К_ОП"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_nOpe = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Считывание свойства "Единица нормирования"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ЕН"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_EdNorm = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Считывание свойства "Ссылка на цех-исполнитель"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "кцех"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_cDep = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Уточнение значения поля "Номер позиции"
      if (
        (vsMarshSp_Num == '0') ||
        (vsMarshSp_Num == null))
        vsMarshSp_Num == '1';
  
      // Уточнение значения поля "Единица нормирования"
      if ((vsMarshSp_EdNorm == '0') || (vsMarshSp_EdNorm == null))
        vsMarshSp_EdNorm == '01';

      // Создание позиции/операции маршрутной карты
      XMLFileGAL_AddMarshSp(
        voOpers.item(i),
        false,
        vliMarshSp_ID,
        aliXMLFileGAL_Node_Clt_MarshSp,
        vsMarshSp_Num,
        vsMarshSp_wOpe,
        vsMarshSp_nOpe,
        vsMarshSp_EdNorm,
        vsMarshSp_cEd,
        vsMarshSp_tDep,
        vsMarshSp_cDep,
        aliMC_ID,
        vliHdrKS_ID);
        
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliTPOpersCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOpers => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
  
  return;
} // function XMLFileIM_ReadTPOpers

//------------------------------------------------------------------------------
// Выгрузка норм использования оборудования для операционного перехода
// Параметры:
//   aoStep                               - Элемент <step> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPStep_EqNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                         // Переменная цикла
var vliEqsCount;               // Количество элементов <eq> для элемента aoStep
                               // в XML-файле в формате INTERMECH
var voEqs;                     // Коллекция элементов <eq> для элемента aoStep
                               // в XML-файле в формате INTERMECH

//
var vsMarshSpEqNorm_ID;        // Идентификатор для нормы использования оборудования дл
                               // операционного перехода
var vsMarshSpEqNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpEqNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpEqNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpEqNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpEqNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpEqNorm_Product;   // Режим использования: норма/выход
var vsMarshSpEqNorm_ParGroup;  // Код группы параметров
var vsMarshSpEqNorm_NormSort;  // Категория группы параметров
var vsMarshSpEqNorm_Rasx;      // Норма расхода
var vsMarshSpEqNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpEqNorm_dNormEd;   // Единица нормирования
var vsMarshSpEqNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

  // Проверка существования объекта aoStep
  if (aoStep == null)
    return;

  try
  {
    //
    voEqs = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "eq"][@ref != ""]/@ref');
  
    vliEqsCount = voEqs.length;
  
    if (vliEqsCount == 0)
    {
      voEqs = null;
      return;
    } // if (vliEqsCount == 0)
  
    // Цикл по нормам использования оборудовани
    for (i = 0; i < vliEqsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpEqNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpEqNorm_tObject   = '11007';                // Тип объекта-владельца нормы
      vsMarshSpEqNorm_cObject   = asNOpe;                 // Ссылка на объект-владелец нормы
      vsMarshSpEqNorm_tResource = '47';                   // Тип нормируемого ресурса
      vsMarshSpEqNorm_cResource = '0';                    // Ссылка на нормируемый ресурс
      vsMarshSpEqNorm_wProd     = '0';                    // Тип нормы/продукта выхода
      vsMarshSpEqNorm_Product   = '0';                    // Режим использования: норма/выход
      vsMarshSpEqNorm_ParGroup  = gliParameter_EqNorm_ID; // Код группы параметров
      vsMarshSpEqNorm_NormSort  = '103';                  // Категория группы параметров
      vsMarshSpEqNorm_Rasx      = '1';                    // Норма расхода
      vsMarshSpEqNorm_cEd       = '0';                    // Ссылка на единицу измерения
      vsMarshSpEqNorm_dNormEd   = '1';                    // Единица нормирования
      vsMarshSpEqNorm_cNormEd   = '0';                    // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/eq[@id = "' + voEqs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // Считывание свойства "Идентификатор оборудования"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "инвн"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      if (vsMarshSpEqNorm_cResource == '0') 
      {
        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          '"]/formattribute[@name = "A138"]/@value');

        if (voFormAttributes.length != 0)
          vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;
      } // if (vsMarshSpEqNorm_cResource == '0')
  
      // Добавление объекта с типом "Норма использования оборудования для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpEqNorm(
        false,
        vsMarshSpEqNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpEqNorm_tObject,
        vsMarshSpEqNorm_cObject,
        vsMarshSpEqNorm_tResource,
        vsMarshSpEqNorm_cResource,
        vsMarshSpEqNorm_wProd,
        vsMarshSpEqNorm_Product,
        vsMarshSpEqNorm_ParGroup,
        vsMarshSpEqNorm_NormSort,
        vsMarshSpEqNorm_Rasx,
        vsMarshSpEqNorm_cEd,
        vsMarshSpEqNorm_dNormEd,
        vsMarshSpEqNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliEqsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_EqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_EqNorm

//------------------------------------------------------------------------------
// Выгрузка трудовых норм для операционного перехода
// Параметры:
//   aoStep                               - Элемент <step> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPStep_JobNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                          // Переменная цикла
var vliWorksCount;              // Количество элементов <work> для элемента aoStep
                                // в XML-файле в формате INTERMECH
var voWorks;                    // Коллекция элементов <work> для элемента aoStep
                                // в XML-файле в формате INTERMECH

//
var vsMarshSpJobNorm_ID;        // Идентификатор для нормы использования оборудования дл
                                // операционного перехода
var vsMarshSpJobNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpJobNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpJobNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpJobNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpJobNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpJobNorm_Product;   // Режим использования: норма/выход
var vsMarshSpJobNorm_ParGroup;  // Код группы параметров
var vsMarshSpJobNorm_NormSort;  // Категория группы параметров
var vsMarshSpJobNorm_Rasx;      // Норма расхода
var vsMarshSpJobNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpJobNorm_dNormEd;   // Единица нормирования
var vsMarshSpJobNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

  // Проверка существования объекта aoStep
  if (aoStep == null)
    return;

  try
  {
    //
    voWorks = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "work"][@ref != ""]/@ref');
  
    vliWorksCount = voWorks.length;
  
    if (vliWorksCount == 0)
    {
      voWorks = null;
      return;
    } // if (vliWorksCount == 0)
  
    // Цикл по трудовым нормам
    for (i = 0; i < vliWorksCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpJobNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpJobNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
      vsMarshSpJobNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
      vsMarshSpJobNorm_tResource = '36';                    // Тип нормируемого ресурса
      vsMarshSpJobNorm_cResource = '0';                     // Ссылка на нормируемый ресурс
      vsMarshSpJobNorm_wProd     = '0';                     // Тип нормы/продукта выхода
      vsMarshSpJobNorm_Product   = '0';                     // Режим использования: норма/выход
      vsMarshSpJobNorm_ParGroup  = gliParameter_JobNorm_ID; // Код группы параметров
      vsMarshSpJobNorm_NormSort  = '102';                   // Категория группы параметров
      vsMarshSpJobNorm_Rasx      = '1';                     // Норма расхода
      vsMarshSpJobNorm_cEd       = '0';                     // Ссылка на единицу измерения
      vsMarshSpJobNorm_dNormEd   = '1';                     // Единица нормирования
      vsMarshSpJobNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/eq[@id = "' + voWorks.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // Считывание свойства "Идентификатор профессии"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "risp"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpJobNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Добавление объекта с типом "Трудовая норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpJobNorm(
        false,
        vsMarshSpJobNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpJobNorm_tObject,
        vsMarshSpJobNorm_cObject,
        vsMarshSpJobNorm_tResource,
        vsMarshSpJobNorm_cResource,
        vsMarshSpJobNorm_wProd,
        vsMarshSpJobNorm_Product,
        vsMarshSpJobNorm_ParGroup,
        vsMarshSpJobNorm_NormSort,
        vsMarshSpJobNorm_Rasx,
        vsMarshSpJobNorm_cEd,
        vsMarshSpJobNorm_dNormEd,
        vsMarshSpJobNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliWorksCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_JobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_JobNorm

//------------------------------------------------------------------------------
// Выгрузка материальных норм для операционного перехода
// Параметры:
//   aoStep                               - Элемент <step> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPStep_MatNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                          // Переменная цикла
var vliMatsCount;               // Количество элементов <mat> для элемента aoStep
                                // в XML-файле в формате INTERMECH
var vliSpecsCount;              // Количество элементов <spec> для элемента aoStep
                                // в XML-файле в формате INTERMECH
var voMats;                     // Коллекция элементов <mat> для элемента aoStep
                                // в XML-файле в формате INTERMECH
var voSpecs;                    // Коллекция элементов <spec> для элемента aoStep
                                // в XML-файле в формате INTERMECH

//
var vsMarshSpMatNorm_ID;        // Идентификатор для нормы использования оборудования дл
                                // операционного перехода
var vsMarshSpMatNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpMatNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpMatNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpMatNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpMatNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpMatNorm_Product;   // Режим использования: норма/выход
var vsMarshSpMatNorm_ParGroup;  // Код группы параметров
var vsMarshSpMatNorm_NormSort;  // Категория группы параметров
var vsMarshSpMatNorm_Rasx;      // Норма расхода
var vsMarshSpMatNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpMatNorm_dNormEd;   // Единица нормирования
var vsMarshSpMatNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

  // Проверка существования объекта aoStep
  if (aoStep == null)
    return;

  try
  {
    //``````````````````````````````````````````````````````````````````````````
    // Материалы

    //
    voMats = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "mat"][@ref != ""]/@ref');
  
    vliMatsCount = voMats.length;
  
    if (vliMatsCount == 0)
    {
      voMats = null;
      return;
    } // if (vliMatsCount == 0)
  
    // Цикл по материальным нормам
    for (i = 0; i < vliMatsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
      vsMarshSpMatNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
      vsMarshSpMatNorm_tResource = '4';                     // Тип нормируемого ресурса
      vsMarshSpMatNorm_cResource = '0';                     // Ссылка на нормируемый ресурс
      vsMarshSpMatNorm_wProd     = '0';                     // Тип нормы/продукта выхода
      vsMarshSpMatNorm_Product   = '0';                     // Режим использования: норма/выход
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
      vsMarshSpMatNorm_NormSort  = '101';                   // Категория группы параметров
      vsMarshSpMatNorm_Rasx      = '1';                     // Норма расхода
      vsMarshSpMatNorm_cEd       = '0';                     // Ссылка на единицу измерения
      vsMarshSpMatNorm_dNormEd   = '1';                     // Единица нормирования
      vsMarshSpMatNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/mat[@id = "' + voMats.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// Считывание свойства "Идентификатор материала"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "Идентификатор материала"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "%MAT"]/@value');

      if (voFormAttributes.length != 0) 
      {
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
        vsMarshSpMatNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpMatNorm_cResource);
      } // if (voFormAttributes.length != 0)

      voFormAttributes = null;

      // Считывание свойства "Количество материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Нрвм"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
 
      // Добавление объекта с типом "Материальная норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliMatsCount; i++)
  
    //``````````````````````````````````````````````````````````````````````````
    // Состав
  
    //
    voSpecs = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "spec"][@ref != ""]/@ref');
  
    vliSpecsCount = voSpecs.length;
  
    if (vliSpecsCount == 0)
    {
      voSpecs = null;
      return;
    } // if (vliSpecsCount == 0)
  
    // Цикл по материальным нормам
    for (i = 0; i < vliSpecsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // Начальная инициализация значений свойств
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // Тип объекта-владельца нормы
      vsMarshSpMatNorm_cObject   = asNOpe;                  // Ссылка на объект-владелец нормы
      vsMarshSpMatNorm_tResource = '4';                     // Тип нормируемого ресурса
      vsMarshSpMatNorm_cResource = '0';                     // Ссылка на нормируемый ресурс
      vsMarshSpMatNorm_wProd     = '0';                     // Тип нормы/продукта выхода
      vsMarshSpMatNorm_Product   = '0';                     // Режим использования: норма/выход
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // Код группы параметров
      vsMarshSpMatNorm_NormSort  = '101';                   // Категория группы параметров
      vsMarshSpMatNorm_Rasx      = '1';                     // Норма расхода
      vsMarshSpMatNorm_cEd       = '0';                     // Ссылка на единицу измерения
      vsMarshSpMatNorm_dNormEd   = '1';                     // Единица нормирования
      vsMarshSpMatNorm_cNormEd   = '0';                     // Ссылка на единицу измерения единицы нормирования
  
      voRelations = goXMLFileIM.selectNodes('/intermech/spec[@id = "' + voSpecs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// Считывание свойства "Идентификатор материала"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "Идентификатор материала"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ArtN"]/@value');

      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // Считывание свойства "Количество материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Нрвм"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Добавление объекта с типом "Материальная норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliSpecsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_MatNorm

//------------------------------------------------------------------------------
// Выгрузка инструментальных норм для операционного перехода
// Параметры:
//   aoStep                               - Элемент <step> в XML-файле в формате INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle узла-коллекции "Нормы для операции МК"
//   asNOpe                               - Ссылка на технологическую операцию

function XMLFileIM_ReadTPStep_ToolNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// Локальные переменные
var i;                           // Переменная цикла
var vliToolsCount;               // Количество элементов <tool> для элемента aoStep
                                 // в XML-файле в формате INTERMECH
var voTools;                     // Коллекция элементов <tool> для элемента aoStep
                                 // в XML-файле в формате INTERMECH

//
var vsMarshSpToolNorm_ID;        // Идентификатор для нормы использования оборудования дл
                                 // операционного перехода
var vsMarshSpToolNorm_tObject;   // Тип объекта-владельца нормы
var vsMarshSpToolNorm_cObject;   // Ссылка на объект-владелец нормы
var vsMarshSpToolNorm_tResource; // Тип нормируемого ресурса
var vsMarshSpToolNorm_cResource; // Ссылка на нормируемый ресурс
var vsMarshSpToolNorm_wProd;     // Тип нормы/продукта выхода
var vsMarshSpToolNorm_Product;   // Режим использования: норма/выход
var vsMarshSpToolNorm_ParGroup;  // Код группы параметров
var vsMarshSpToolNorm_NormSort;  // Категория группы параметров
var vsMarshSpToolNorm_Rasx;      // Норма расхода
var vsMarshSpToolNorm_cEd;       // Ссылка на единицу измерения
var vsMarshSpToolNorm_dNormEd;   // Единица нормирования
var vsMarshSpToolNorm_cNormEd;   // Ссылка на единицу измерения единицы нормирования

// Свойства матценности
var vsMC_AtlLastDate;            // Свойство "Дата последней модификации"
var vsMC_cType;                  // Свойство "Ссылка на тип МЦ"
var vsMC_ImID;                   // Свойство "Идентификатор для Интермеха"
var vsMC_ID;                     // Свойство "Идентификатор"
var vsMC_Kind;                   // Свойство "Характеристика МЦ"
var vsMC_Massa;                  // Свойство "Масса"
var vsMC_Name;                   // Свойство "Наименование"
var vsMC_BarKod;                 // Свойство "Номенклатурный номер"
var vsMC_Obozn;                  // Свойство "Код"
var vsMC_PrMat;                  // Свойство "Признак материала"
var vsMC_cEd;                    // Свойство "Ссылка на учетную единицу измерения"
var vsMC_RemMC;                  // Свойство "Примечание"
var vsMC_TNVED;                  // Свойство "Код ТНВЭД"
var vsMC_VersionNmb;             // Значение внешнего атрибута "Номер версии" для МЦ
var vsMC_InvNmbDoc;              // Значение внешнего атрибута "Инвентарный номер документа" для МЦ
var vsMC_BuildCode;              // Значение внешнего атрибута "Код исполнения" для МЦ
var vsMC_Litera;                 // Значение внешнего атрибута "Литера" для МЦ

  // Проверка существования объекта aoStep
  if (aoStep == null)
    return;

  try
  {
    //
    voTools = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "tool"][@ref != ""]/@ref');
  
    vliToolsCount = voTools.length;
  
    if (vliToolsCount == 0)
    {
      voTools = null;
      return;
    } // if (vliToolsCount == 0)
  
    // Цикл по оснастке
    for (i = 0; i < vliToolsCount; i++)
    {
      // Проверка прерывания процесса выполнения со стороны пользовател
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````
      // Начальная инициализация значений свойств
      vsMarshSpToolNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpToolNorm_tObject   = '11007';                   // Тип объекта-владельца нормы
      vsMarshSpToolNorm_cObject   = asNOpe;                    // Ссылка на объект-владелец нормы
      vsMarshSpToolNorm_tResource = '4';                       // Тип нормируемого ресурса
      vsMarshSpToolNorm_cResource = '0';                       // Ссылка на нормируемый ресурс
      vsMarshSpToolNorm_wProd     = '0';                       // Тип нормы/продукта выхода
      vsMarshSpToolNorm_Product   = '0';                       // Режим использования: норма/выход
      vsMarshSpToolNorm_ParGroup  = gliParameter_ToolsNorm_ID; // Код группы параметров
      vsMarshSpToolNorm_NormSort  = '104';                     // Категория группы параметров
      vsMarshSpToolNorm_Rasx      = '1';                       // Норма расхода
      vsMarshSpToolNorm_cEd       = '0';                       // Ссылка на единицу измерения
      vsMarshSpToolNorm_dNormEd   = '1';                       // Единица нормирования
      vsMarshSpToolNorm_cNormEd   = '0';                       // Ссылка на единицу измерения единицы нормирования

      voRelations = goXMLFileIM.selectNodes('/intermech/tool[@id = "' + voTools.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // Считывание свойства "Количество оснастки"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "КоВО"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      voRelations = goXMLFileIM.selectNodes('/intermech/tool[@id = "' + voTools.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');

      // Считывание свойства "Идентификатор материала"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0) {
        vsMarshSpToolNorm_cResource = voFormAttributes.item(0).nodeValue;
        //vsMarshSpToolNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpToolNorm_cResource);
      } // if (voFormAttributes.length != 0)

      voFormAttributes = null;

      // Считывание свойства "Количество оснастки"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "КоВО"]/@value');

      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_Rasx = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      //````````````````````````````````````````````````````````````````````````
      // Установка свойств для МЦ, соответствующей оснастке

      // Установка значений свойств по умолчанию
      vsMC_ImID        = '0';
      vsMC_ID          = '0';
      vsMC_Name        = '';
      vsMC_BarKod      = '';
      vsMC_Obozn       = '';
      vsMC_Kind        = '1';
      vsMC_cType       = '0';
      vsMC_TNVED       = '';
      vsMC_RemMC       = '';
      vsMC_AtlLastDate = '';
      vsMC_Massa       = '0';
      vsMC_PrMat       = '1';
      vsMC_cEd         = '0';
      vsMC_VersionNmb  = '';
      vsMC_InvNmbDoc   = '';
      vsMC_BuildCode   = '';
      vsMC_Litera      = '';

      // vsMC_ImID
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "TypR"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = vsMC_ImID + '_' + voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_ID
      vsMC_ID = vsMC_ImID;

      // vsMC_Name
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ОСН"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_BarKod
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "О_ВО"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BarKod = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Obozn
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "О_ВО"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Obozn = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_Kind
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Kind = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cType
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cType = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_TNVED
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_TNVED = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_RemMC
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "К_ос"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_RemMC = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_AtlLastDate
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_AtlLastDate = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Massa
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "МасО"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Massa = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_PrMat
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_PrMat = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cEd
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cEd = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_VersionNmb
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_VersionNmb = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_InvNmbDoc
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_InvNmbDoc = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_BuildCode
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BuildCode = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Litera
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Litera = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // Освобождение ресурсов
      voRelations = null;

      //````````````````````````````````````````````````````````````````````````
      // Уточнение ссылки на оснастку
      vsMarshSpToolNorm_cResource = GetObjGalID_MC(
        true,
        vsMC_ImID,
        vsMC_ID,
        vsMC_Name,
        vsMC_BarKod,
        vsMC_Obozn,
        vsMC_Kind,
        vsMC_cType,
        vsMC_TNVED,
        vsMC_RemMC,
        vsMC_AtlLastDate,
        vsMC_Massa,
        vsMC_PrMat,
        vsMC_cEd,
        vsMC_VersionNmb,
        vsMC_InvNmbDoc,
        vsMC_BuildCode,
        vsMC_Litera);

      //````````````````````````````````````````````````````````````````````````
      // Добавление объекта с типом "Материальная норма для операции МК"
      // в XML-файл в формате ГАЛАКТИКА-ERP
      XMLFileGAL_AddMarshSpToolNorm(
        false,
        vsMarshSpToolNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpToolNorm_tObject,
        vsMarshSpToolNorm_cObject,
        vsMarshSpToolNorm_tResource,
        vsMarshSpToolNorm_cResource,
        vsMarshSpToolNorm_wProd,
        vsMarshSpToolNorm_Product,
        vsMarshSpToolNorm_ParGroup,
        vsMarshSpToolNorm_NormSort,
        vsMarshSpToolNorm_Rasx,
        vsMarshSpToolNorm_cEd,
        vsMarshSpToolNorm_dNormEd,
        vsMarshSpToolNorm_cNormEd);
  
      // Освобождение ресурсов
      voRelations = null;
    } // for (i = 0; i < vliToolsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_ToolNorm

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

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('AttrNam', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddAttrNam => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('AttrVal_Tbl' + asCoTable, asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddAttrVal => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddAttrVal

//------------------------------------------------------------------------------
// Добавление объекта с типом "Единица измерения" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ED', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddEd

//------------------------------------------------------------------------------
// Добавление объекта с типом "Группа оборудования" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('EqGroup', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddEqGroup => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
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
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('GrpMC', asID))
      return;

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddGrpMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return;
} // function XMLFileGAL_AddGrpMC

//------------------------------------------------------------------------------
// Добавление объекта с типом "Конструкторская спецификация" в XML-файл в формате
// ГАЛАКТИКА-ERP
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
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var i;                                 // Переменная цикла
var vliXMLFileGAL_Node_Clt_PSLines;    // Handle узла-коллекции "Позиции КС"
var vliXMLFileGAL_Node_PSLines;        // Handle узла-объекта "Позиция КС"
var vliXMLFileGAL_Node_Clt_PSLines_PV; // Handle узла-коллекции "Значения свойств позиции КС"
var vliChildMC_ID;                     // Идентификатор дочернего объекта

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Hdr_KS', asID))
      return(0);

  try
  {
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
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'EdNorm'  , '1', '');
  
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
  
      // Добавление значений свойств для текущей позиции спецификации
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'lNum', (i + 1) * 10       , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cDet', asaChildObjects[i] , 'MC');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'wDet', '4'                , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'Kol' , asaChildObjCount[i], '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cEd' , asaChildObjRefMU[i], 'OtpEd');
    } // for (i = 0; i < asaChildObjects.length; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddHdrKS => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddHdrKS

//------------------------------------------------------------------------------
// Добавление объекта с типом "Аббревиатура параметра модуля "Спецификации продуктов""
// в XML-файл в формате ГАЛАКТИКА-ERP
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
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KatAbbr', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddKatAbbr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddKatAbbr

//------------------------------------------------------------------------------
// Добавление маршрутной карты в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aoTP          - Элемент <tp> в XML-файле в формате "Техпроцесс" в TechCardAPI
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
//   asMinVol      - Минимальный размер партии для изготовления
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

function XMLFileGAL_AddKatMarsh(aoTP, abCheckExists, asID,
  asShifr, asName, asTObject, asCObject, asProduct,
  asEdNorm, asCEd, asMinVol, asCheckers_1, asAddedSign_1, asCheckDt_1,
  asCheckers_2, asAddedSign_2, asCheckDt_2, asCheckers_3, asAddedSign_3, asCheckDt_3,
  asParGroup, asCNormGroup, aliHdrKS_ID)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Clt_MarshSp;    // Handle узла-коллекции "Позиции/операции маршрутной карты"

  // Проверка существования объекта aoTechProcess
  if (aoTP == null)
    return(0);

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KatMarsh', asID))
      return(0);

  try
  {
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
    XMLFileIM_ReadTPOpers(aoTP, vliXMLFileGAL_Node_Clt_MarshSp, asCObject, aliHdrKS_ID);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddKatMarsh => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddKatMarsh

//------------------------------------------------------------------------------
// Добавление объекта с типом "Вид работ" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KaWork', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddKaWork => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddKaWork

//------------------------------------------------------------------------------
// Добавление позиции/операции маршрутной карты в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   aoOper                         - Элемент <oper> в XML-файле в формате INTERMECH
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
//   asCDep                         - Ссылка на исполнителя
//   aliMC_ID                       - Идентификатор матценности
//   aliHdrKS_ID                    - Идентификатор конструкторской спецификации
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSp(aoOper, abCheckExists, asID, aliXMLFileGAL_Node_Clt_MarshSp,
  asNum, asWOpe, asNOpe, asEdNorm, asCEd, asTDep, asCDep, aliMC_ID, aliHdrKS_ID)
{

// Локальные переменные
var i;                                      // Переменная цикла
//
var voRelations;                            // Ссылка на коллекцию элементов <relation>
//
var vliXMLFileGAL_Node_Object;              // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues;      // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Clt_ParamVolMarshSp; // Handle узла-коллекции "Значения параметров операции"
var vliXMLFileGAL_Node_Clt_Normas;          // Handle узла-коллекции "Нормы на операцию"
//
var vliStepsCount;                          // Количество элементов <oper> в XML-файле в формате INTERMECH
var voSteps;                                // Коллекция элементов <oper> в XML-файле в формате INTERMECH
//
var vliParamVol_ID;                         // Идентификатор значения параметра
var vsParamName;                            // Наименование параметра
var vsCParams;                              // Ссылка на параметр модуля "Спецификации продуктов"
var vsValue;                                // Значение параметра

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Marsh_Sp', asID))
      return(0);

  try
  {
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
    if (aoOper != null)
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

      // Получение идентификатора на форму
      voRelations = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      if (voRelations.length == 0)
        voRelations = null;

      if (voRelations != null) 
      {
        // Норма основного времени на операцию (То)
        vsParamName = 'Норма основного времени на операцию';
        vsCParams = gliOperParam_tmOpMash_ID;
        vsValue = '';

        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "То"]/@value');

        if (voFormAttributes.length != 0)
          vsValue = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;

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
        vsValue = '';

        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Тв"]/@value');

        if (voFormAttributes.length != 0)
          vsValue = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;

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
        //vsValue = '';
        //
        //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        //  '"]/formattribute[@name = "Побс"]/@value');
        //
        //if (voFormAttributes.length != 0)
        //  vsValue = voFormAttributes.item(0).nodeValue;
        //
        //voFormAttributes = null;
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
        //vsValue = '';
        //
        //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        //  '"]/formattribute[@name = "Тобс"]/@value');
        //
        //if (voFormAttributes.length != 0)
        //  vsValue = voFormAttributes.item(0).nodeValue;
        //
        //voFormAttributes = null;
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
        vsValue = '';

        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "Тпз"]/@value');

        if (voFormAttributes.length != 0)
          vsValue = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;

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
        //vsValue = '';
        //
        //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        //  '"]/formattribute[@name = "Тшт"]/@value');
        //
        //if (voFormAttributes.length != 0)
        //  vsValue = voFormAttributes.item(0).nodeValue;
        //
        //voFormAttributes = null;
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

        // Освобождение ресурсов
        voRelations = null;
      } // if (voRelations != 0)
    } // if (aoOper != null)
  
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
      XMLFileIM_ReadTPOper_MatNorm_BOM(
        aoOper,
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe,
        aliMC_ID,
        aliHdrKS_ID);
    
    // Проверка существования объекта aoOper
    if (aoOper == null)
      return(0);
    
    // Выгрузка материальных норм для операции
    XMLFileIM_ReadTPOper_MatNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
  
    // Выгрузка инструментальных норм для операции
    XMLFileIM_ReadTPOper_ToolNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
  
    // Выгрузка трудовых норм для операции
    XMLFileIM_ReadTPOper_JobNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
    
    // Выгрузка норм использования оборудования для операции
    XMLFileIM_ReadTPOper_EqNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
  
    // Считывание операционных переходов
    voSteps = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "step"][@ref != ""]/@ref');

    vliStepsCount = voSteps.length;

    if (vliStepsCount == 0) 
    {
      voSteps = null;
      return;
    } // if (vliStepsCount == 0)
    
    // Цикл по операционным переходам
    for(i = 0; i < vliStepsCount; i++)
    {
      // Выгрузка материальных норм для операционного перехода
      XMLFileIM_ReadTPStep_MatNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);

      // Выгрузка инструментальных норм для операционного перехода
      XMLFileIM_ReadTPStep_ToolNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);

      // Выгрузка трудовых норм для операционного перехода
      XMLFileIM_ReadTPStep_JobNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);

      // Выгрузка норм использования оборудования для операционного перехода
      XMLFileIM_ReadTPStep_EqNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);
    } // for(i = 0; i < vliStepsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - Ссылка на единицу измерения
//   asDNormEd                            - Единица нормирования
//   asCNormEd                            - Ссылка на единицу измерения единицы нормирования
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpEqNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpEqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - Ссылка на единицу измерения
//   asDNormEd                            - Единица нормирования
//   asCNormEd                            - Ссылка на единицу измерения единицы нормирования
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpJobNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpJobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - Ссылка на единицу измерения
//   asDNormEd                            - Единица нормирования
//   asCNormEd                            - Ссылка на единицу измерения единицы нормирования
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpMatNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpMatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - Ссылка на единицу измерения
//   asDNormEd                            - Единица нормирования
//   asCNormEd                            - Ссылка на единицу измерения единицы нормирования
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpMatNorm_BOM(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asTDoc, asCDoc, asWProd, asProduct,
  asParGroup, asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpMatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - Ссылка на единицу измерения
//   asDNormEd                            - Единица нормирования
//   asCNormEd                            - Ссылка на единицу измерения единицы нормирования
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddMarshSpToolNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// Локальные переменные
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                - Ссылка на учетную единицу измерения
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

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MC', asID))
      return(0);

  try
  {
    vsKind = asKind;
    
    if (vsKind == '')
      vsKind = '1';
  
    vsGrpMC = '0';
  
    // Уточнение свойств МЦ в зависимости от типа
    switch (asCType)
    {
      // Документация
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
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'BarKod'    , vsBarKod     , '');
  
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
        vsAttrVal_CAttrNam = gsAttrNam_MC_BuildCode_ID;
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
  
    // Добавление отпускной единицы измерения
    for (i = 0; i < gliObjCount_Ed; i++)
    {
      if (gsaFieldValue_Ed_ID[i] == asCEd)
      {
        vsOtpEd_ID = gliGlobID;
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
    } // for (i = 0; i < gliObjCount_Ed; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// Добавление объекта с типом "Технологическая операция" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MnfOper', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMnfOper => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddMnfOper

//------------------------------------------------------------------------------
// Добавление объекта с типом "Единица оборудования" в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asName        - Наименование
//   asInNum       - Инвентарный номер
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddObjRem(abCheckExists, asID, asName, asInNum)
{

// Локальные переменные
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ObjRem', asID))
      return(0);

  try
  {
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
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , asName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'InNum', asInNum, '');
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddObjRem => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddObjRem

//------------------------------------------------------------------------------
// Добавление объекта с типом "Отпускная единица измерения" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OtpEd', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddOtpEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddOtpEd

//------------------------------------------------------------------------------
// Добавление объекта с типом "Параметра модуля "Спецификации продуктов"" в XML-файл
// в формате ГАЛАКТИКА-ERP
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
var vliPListTbl_ID;                        // Идентификатор элемента списка значений
var vliXMLFileGAL_Node_Clt_ParamsPListTbl; // Handle узла-коллекции "Элементы списка значений"
var vliXMLFileGAL_Node_Clt_PropValues;     // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;             // Handle узла-объекта
var vrdEvent;                              // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Params', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddParameter => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_ParamsPListTbl = null;
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
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

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ParamVol_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddParamVolMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddParamVolMarshSp

//------------------------------------------------------------------------------
// Добавление объекта с типом "Сотрудник" в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists - Признак проверки существования объекта
//   asID          - Идентификатор
//   asFIO         - ФИО сотрудника
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddPerson(abCheckExists, asID, asFIO)
{

// Локальные переменные
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Person', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddPerson => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddPerson

//------------------------------------------------------------------------------
// Добавление объекта с типом "Элемент списка значений для параметра модуля "Спецификации продуктов""
// в XML-файл в формате ГАЛАКТИКА-ERP
// Параметры:
//   abCheckExists                    - Признак проверки существования объекта
//   asID                             - Идентификатор
//   aliXMLFileGAL_Node_Clt_ParamsPListTbl - Handle узла-коллекции "Элементы списка значений"
//   asNumber                         - Числовое значение элемента в списке
//                                        значений параметра
//   asName                           - Наименование элемента в списке значений
//                                        параметра
// Результат:
//   0 - объект не добавлялся, 1 - объект добавлен

function XMLFileGAL_AddPListTbl(abCheckExists, asID, aliXMLFileGAL_Node_Clt_ParamsPListTbl,
  asNumber, asName)
{

// Локальные переменные
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Params_PListTbl', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddPListTbl => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddPListTbl

//------------------------------------------------------------------------------
// Добавление объекта с типом "Подразделение" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации
var vsName;                            // Наименование подразделени

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Podr', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddPodr

//------------------------------------------------------------------------------
// Добавление объекта с типом "Профессия" в XML-файл в формате ГАЛАКТИКА-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Profession', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddProfession => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
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
var vrdEvent;   // Структура с информацией об исключительной ситуации

  try
  {
    vliNode    = goXMLFileGAL.createElement('Collection');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'caption', asCaption);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'child_tags', asChildTags);

    vliNode = null;

    return(vliNodeAdd);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTag_Collection => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliNode = null;
  vliNodeAdd = null;

  //
  return(null);
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
var vrdEvent;   // Структура с информацией об исключительной ситуации

  try
  {
    vliNode    = goXMLFileGAL.createElement('Object');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'class_id', asClassId);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'id', asId);

    vliNode = null;

    return(vliNodeAdd);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTag_Object => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliNode = null;
  vliNodeAdd = null;

  //
  return(null);
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTag_PropValue => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliNode = null;
  vliNodeAdd = null;

  //
  return(null);
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
var vliAttr;  // Handle создаваемого атрибута в DOM-документе
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    vliAttr = goXMLFileGAL.createAttribute(asName);
    vliAttr.value = asValue;
    aliNode.attributes.setNamedItem(vliAttr);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTagAttribute => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliAttr = null;

  //
  return;
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle узла-коллекции "Значения свойств"
var vliXMLFileGAL_Node_Object;         // Handle узла-объекта
var vrdEvent;                          // Структура с информацией об исключительной ситуации

  // Проверка существования объекта
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('TypeMC', asID))
      return;

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTypeMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return;
} // function XMLFileGAL_AddTypeMC

//------------------------------------------------------------------------------
// Проверка существования объекта в XML-файле в формате ГАЛАКТИКА-ERP
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
var vrdEvent; // Структура с информацией об исключительной ситуации

  vbResult = false;

  try
  {
    vliNodes = goXMLFileGAL.selectNodes("//Object[@class_id = '" + asClassName + "'][@id = '" +
      asObjId + "']/@name");

    vbResult = (vliNodes.length > 0);
    vliNodes = null;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_CheckExistsObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  vliNodes = null;

  //
  return(vbResult);
} // function XMLFileGAL_CheckExistsObj

//------------------------------------------------------------------------------
// Предварительная подготовка DOM-документа (XML-файла в формате ГАЛАТИКА-ERP)
// для загрузки данных

function XMLFileGAL_Prepare()
{

// Локальные переменные
var vliProcessingInstruction; // Handle создаваемой управляющей инструкции в DOM-документе
var vliComment;               // Handle создаваемого комментария в DOM-документе
var vliNode;                  // Handle создаваемого узла в DOM-документе
var vliNodeAdd;               // Handle созданного узла в DOM-документе после переподцепки
var vliDataRoot;              // Handle корневого узла <Data_Root> в DOM-документе
var vliData;                  // Handle узла <Data> в DOM-документе
var vrdEvent;                 // Структура с информацией об исключительной ситуации
//
var vliParameter_ID;          // Идентификатор параметра модуля "Спецификации продуктов"
var vsParamCategory;          // Категория параметра
var vsParamCode;              // Ссылка на аббревиатуру параметра
var vsParamCRole;             // Ссылка на роль аналитик для значений параметра
var vsParamDefValue;          // Значение параметра по умолчанию
var vsParamIsGroup;           // Признак группы
var vsParamName;              // Наименование параметра
var vsParamNumber;            // Номер параметра в группе по порядку
var vsParamOwner;             // Ссылка на родительский параметр
var vsParamShowPar;           // Количество знаков после запятой (для дробных типов)
var vsParamWType;             // Тип параметра (целый, дробный, список и т.д.)

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
      'Файл получен путем конвертации XML-файла INTERMECH в XML-файл ГАЛАКТИКА-ERP');

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

    //````````````````````````````````````````````````````````````````````````````
    // Формирование внешних атрибутов

    // Проверка прерывания процесса выполнения со стороны пользовател
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Корректировка заголовка окна визуализации
    SetVisualHeader('Формирование внешних атрибутов \n   \n   \n   ');

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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_Prepare => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// Предварительная подготовка данных каталога подразделений для выгрузки в XML-файл
// в формате ГАЛАКТИКА-ERP

function XMLFileGAL_PrepareForUnloadDataPodr()
{

// Локальные переменные
var i;        // Переменная цикла
var j;        // Переменная цикла
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    for (i = 0; i < gliObjCount_Podr; i++)
    {
      if (gsaFieldValue_Podr_PrUch[i] == 0)
        continue;

      for (j = 0; j < gliObjCount_Podr; j++)
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
      } // for (j = 0; j < gliObjCount_Podr; j++)
    } // for (i = 0; i < gliObjCount_Podr; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_PrepareForUnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_PrepareForUnloadDataPodr

//------------------------------------------------------------------------------
// Функция выгрузки данных в каталогах из XML-файла в формате INTERMECH

function XMLFileGAL_UnloadCatalogs()
{

// Локальные переменные
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    //
    XMLFileIM_ReadCatalogs();
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadCatalogs => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadCatalogs

//------------------------------------------------------------------------------
// Выгрузка данных каталога подразделений в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadDataPodr()
{

// Локальные переменные
var i;        // Переменная цикла
var j;        // Переменная цикла
var vsGalID;  // ИД (Галактика)
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    for (i = 0; i < gliObjCount_Podr; i++)
    {
      // Поиск/создание подразделения в XML-файле
      vsGalID = GetObjGalID_Podr(
        false,
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_KodASUP[i],
        gsaFieldValue_Podr_Name[i],
        gsaFieldValue_Podr_cPodr[i]);
    } // for (i = 0; i < gliObjCount_Podr; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadDataPodr

//------------------------------------------------------------------------------
// Выгрузка единиц измерения в XML-файл в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadMeasureUnits()
{
  // Инициализация массивов для сохранения свойств единиц измерени
  //gliObjCount_Ed = 0;
  //gsaFieldValue_Ed_ID[gliObjCount_Ed - 1] = new Array();
  //gsaFieldValue_Ed_Abbr[gliObjCount_Ed - 1] = new Array();
  //gsaFieldValue_Ed_Name[gliObjCount_Ed - 1] = new Array();
} // function XMLFileGAL_UnloadMeasureUnits

//------------------------------------------------------------------------------
// Выгрузка типов машиностроительных объектов в XML-файл в формате ГАЛАКТИКА-ERP

function XMLFileGAL_UnloadObjTypes()
{

// Локальные переменные
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    // Документация
    XMLFileGAL_AddTypeMC(
      false,
      '1',
      '1',
      'Документация',
      1,
      1);

    // Комплексы
    XMLFileGAL_AddTypeMC(
      false,
      '2',
      '2',
      'Комплексы',
      1,
      1);

    // Сборочные единицы
    XMLFileGAL_AddTypeMC(
      false,
      '3',
      '3',
      'Сборочные единицы',
      1,
      1);

    // Детали
    XMLFileGAL_AddTypeMC(
      false,
      '4',
      '4',
      'Детали',
      1,
      1);

    // Стандартные издели
    XMLFileGAL_AddTypeMC(
      false,
      '5',
      '5',
      'Стандартные изделия',
      0,
      1);

    // Прочие издели
    XMLFileGAL_AddTypeMC(
      false,
      '6',
      '6',
      'Комплектующие изделия',
      0,
      1);

    // Материалы
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

    // Комплекты
    XMLFileGAL_AddTypeMC(
      false,
      '8',
      '8',
      'Комплекты',
      1,
      1);

    // Программные издели
    XMLFileGAL_AddTypeMC(
      false,
      '9',
      '9',
      'Программные изделия',
      1,
      2);

    // Оснастка покупная (для каталога IMBase "Оснастка")
    XMLFileGAL_AddTypeMC(
      false,
      '777',
      '777',
      'Оснастка покупная',
      1,
      2);

    // Комплектовочные
    XMLFileGAL_AddTypeMC(
      false,
      '99999998',
      '99999998',
      'Комплектовочные',
      1,
      2);

    // Заказы
    XMLFileGAL_AddTypeMC(
      false,
      '99999999',
      '99999999',
      'Заказы',
      1,
      1);

    // Оснастка
    XMLFileGAL_AddTypeMC(
      false,
      '100000001',
      '100000001',
      'Оснастка собственного изготовления',
      1,
      2);

    // Изделия
    XMLFileGAL_AddTypeMC(
      false,
      '100000003',
      '100000003',
      'Изделия',
      1,
      1);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadObjTypes => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObjTypes

//------------------------------------------------------------------------------
// Функция выгрузки данных по изделиям из XML-файла в формате INTERMECH

function XMLFileGAL_UnloadProductionData()
{

// Локальные переменные
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    //
    XMLFileIM_ReadProduction();
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadProductionData => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadProductionData

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// Конвертация XML-файла INTERMECH в XML-файл ГАЛАКТИКА-ERP
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// Конвертация XML-файла INTERMECH в XML-файл ГАЛАКТИКА-ERP

function ConvertXMLFile()
{

// Локальные переменные
var vrdEvent; // Структура с информацией об исключительной ситуации

  try
  {
    // Загрузка DOM-документа для XML-файла в формате INTERMECH
    SetVisualHeader('Загрузка DOM-документа для XML-файла в формате INTERMECH \n   \n   ');
    goXMLFileIM = new ActiveXObject('MSXML.DOMDocument');

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка DOM-документа для XML-файла в формате INTERMECH
    SetVisualHeader('Предварительная подготовка XML-файла \n   \n   ');
    XMLFileIM_Prepare();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Загрузка DOM-документа для XML-файла в формате ГАЛАКТИКА-ERP
    SetVisualHeader('Загрузка DOM-документа для XML-файла в формате ГАЛАКТИКА-ERP \n   \n   ');
    goXMLFileGAL = new ActiveXObject('MSXML.DOMDocument');

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Предварительная подготовка DOM-документа для XML-файла в формате ГАЛАКТИКА-ERP
    SetVisualHeader('Предварительная подготовка XML-файла \n   \n   ');
    XMLFileGAL_Prepare();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Выгрузка единиц измерения в XML-файл в формате ГАЛАКТИКА-ERP
    XMLFileGAL_UnloadMeasureUnits();

    // Экспорт типов машиностроительных объектов
    SetVisualHeader('Экспорт типов машиностроительных объектов \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Конвертация данных из каталогов
    SetVisualHeader('Конвертация данных из каталогов \n   \n   ');
    XMLFileGAL_UnloadCatalogs();
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Конвертация данных по изделиям
    SetVisualHeader('Конвертация данных по изделиям \n   \n   ');
    XMLFileGAL_UnloadProductionData();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // Сохранение данных в XML-файл в форма ГАЛАКТИКА-ERP
    SetVisualHeader('Сохранение данных в XML-файл \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');
  } // try

  catch(vrdEvent)
  {
    Message('ConvertXMLFile => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // Освобождение ресурсов
  SetVisualHeader('Освобождение ресурсов \n   \n   ');

  goXMLFileIM = null;
  goXMLFileGAL = null;
} // function ConvertXMLFile

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
    'Конвертация XML-файла INTERMECH в XML-файл ГАЛАКТИКА-ERP  \n' +
    ' \n' +
    ' ',
    50);

  // Инициализация глобальных переменных
  gliGlobID = 1;

  //
  gsXMLFileIM = GetXMLFileIM();
  gsXMLFileGAL = GetXMLFileGAL();

  //
  gliProcessCount_Ed = 0;
  gsaProcess_Ed_ImID = new Array();
  gsaProcess_Ed_GalID = new Array();

  gliProcessCount_EqGroup = 0;
  gsaProcess_EqGroup_ImID = new Array();
  gsaProcess_EqGroup_GalID = new Array();

  gliProcessCount_KatMarsh = 0;
  gsaProcess_KatMarsh_ImID = new Array();
  gsaProcess_KatMarsh_GalID = new Array();

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

  // Создание XML-файла в формате ГАЛАКТИКА-ERP
  ConvertXMLFile();

  // Закрытие окна визуализации
  StopVisual('', 0);
} // try

catch(grdEvent)
{
  // Закрытие окна визуализации
  StopVisual('MAIN => ' + grdEvent.message, vfWait);
} // catch(grdEvent)
