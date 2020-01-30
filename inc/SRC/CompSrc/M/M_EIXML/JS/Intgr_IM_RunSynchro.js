/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий запуск синхронизацию данных между КПС "INTERMECH"  ##
## и КИС "ГАЛАКТИКА-ERP".                                                     ##
##                                                                            ##
## В качестве параметра командной строки передается конфигурационный          ##
## XML-файл, структура которого соответствует структуре файла                 ##
## SynchroFromIM_CFG.xml.                                                     ##
##                                                                            ##
##                                                                            ##
##                          ВНИМАНИЕ!!!                                       ##
## Перед запуском данной программы нужно предварительно из командной строки   ##
## запустить команду:                                                         ##
##   galnet /regserver                                                        ##
##                                                                            ##
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
*/

//------------------------------------------------------------------------------
// Объявление переменных

//
var GalApp;                         //
var vcAlgCalcUserFunc;              //
var voAlgCalc;                      //
var voAlgCalcUserFunc_CF;           //
var xmlCfgFileName;                 //
var xmlCfgFile;                     //
var xmlNode;                        //

//
var i;                              // Переменная цикла

//
var gsFuncCode;                     // Код пользовательской функции импорта

// Параметры алгоритма, связанного с функцией, выполняющей синхронизацию данных
var Prm_wRunMode;                   // Режим выполнения алгоритма:
                                    //     0 - С отображением диалогового окна
                                    //     1 - Без отображения диалогового окна
var Prm_wFlChangeParams_1;          // Изменение параметров для этапа № 1 во время 
                                    //   выполнения:
                                    //     0 - Запрещено
                                    //     1 - Разрешено
var Prm_wAutoSaveParams_1;          // Автосохранение значений параметров для этапа № 1 
                                    //   в DSK-файле:
                                    //     0 - Выключено
                                    //     1 - Включено
var Prm_wFlChange_sDirXMLFileIM_1;  // Изменение каталога для формируемого XML-файла
                                    //   в формате INTERMECH для этапа № 1:
                                    //     0 - Запрещено
                                    //     1 - Разрешено
var Prm_wFlChange_sXMLFileNameIM_1; // Изменение наименования формируемого XML-файла
                                    //   в формате INTERMECH для этапа № 1:
                                    //     0 - Запрещено
                                    //     1 - Разрешено
var Prm_wFlChangeParams_2;          // Изменение параметров для этапа № 2 во время выполнения:
                                    //     0 - Запрещено
                                    //     1 - Разрешено
var Prm_wAutoSaveParams_2;          // Автосохранение значений параметров для этапа № 2 
                                    //   в DSK-файле:
                                    //     0 - Выключено
                                    //     1 - Включено
var Prm_wFlChange_sDirXMLFile_2;    // Изменение каталога для формируемого XML-файла 
                                    //   в формате ГАЛАКТИКА-ERP для этапа № 2:
                                    //     0 - Запрещено
                                    //     1 - Разрешено
var Prm_wFlChange_sXMLFileName_2;   // Изменение наименования формируемого XML-файла 
                                    //   в формате ГАЛАКТИКА-ERP для этапа № 2:
                                    //     0 - Запрещено
                                    //     1 - Разрешено
var Prm_wRunMode_1;                 // Режим выполнения этапа № 1:
                                    //     0 - Выгрузка данных из INTERMECH в XML-файл 
                                    //         с помощью TechXMLDataExchange
                                    //     1 - Выгрузка данных из INTERMECH в XML-файл 
                                    //         с помощью API
                                    //     2 - Использовать ранее сформированный XML-файл 
                                    //         в формате INTERMECH
                                    //     3 - Пропустить выполнение данного этапа
var Prm_sDirXMLFileIM_1;            // Каталог для формируемого XML-файла в формате INTERMECH 
                                    //   для этапа № 1
var Prm_sXMLFileNameIM_1;           // Наименование формируемого XML-файла в формате INTERMECH 
                                    //   (без расширения) для этапа № 1
var Prm_sDirXMLFileGAL_1;           // Каталог для формируемого XML-файла в формате ГАЛАКТИКА-ERP 
                                    //   для этапа № 1
var Prm_sXMLFileNameGAL_1;          // Наименование формируемого XML-файла в формате ГАЛАКТИКА-ERP 
                                    //   (без расширения) для этапа № 1
var Prm_sXMLFileIM_1;               // XML-файл в формате INTERMECH для этапа № 1
var Prm_wFlViewXMLFile_1;           // Отображать сформированный на этапе № 1 XML-файл:
                                    //     0 - Нет
                                    //     1 - Да
var Prm_wRunModeTechXML_1;          // Режим запуска модуля TechXMLDataExchange:
                                    //     0 - Экспорт НСИ
                                    //     1 - Экспорт машиностроительных объектов
                                    //     2 - Экспорт конструкторской информации
                                    //     3 - Экспорт конструкторско-технологической информации
var Prm_sTuneFileTechXML_1;         // Файл настройки экспорта данных для модуля TechXMLDataExchange
var Prm_dtLastDateOfSynchro_1;      // Дата выполнения последней синхронизации
var Prm_wRunMode_2;                 // Режим выполнения этапа № 2:
                                    //     0 - Формирование XML-файла ГАЛАКТИКА-ERP на основе 
                                    //         XML-файла INTERMECH
                                    //     1 - Использовать ранее сформированный XML-файл в формате 
                                    //         ГАЛАКТИКА-ERP
var Prm_sDirXMLFileGAL_2;           // Каталог для формируемого XML-файла в формате ГАЛАКТИКА-ERP 
                                    //   для этапа № 2
var Prm_sXMLFileNameGAL_2;          // Наименование формируемого XML-файла в формате ГАЛАКТИКА-ERP 
                                    //   (без расширения) для этапа № 2
var Prm_sXMLFileGAL_2;              // XML-файл в формате ГАЛАКТИКА-ERP для этапа № 2
var Prm_wFlViewXMLFile_2;           // Отображать сформированный на этапе № 2 XML-файл:
                                    //     0 - Нет
                                    //     1 - Да

//------------------------------------------------------------------------------
// Считывание кода функции импорта из парамтров в командной строке
gsFuncCode = "'" + WScript.Arguments.Item(0) + "'";

//------------------------------------------------------------------------------
// Загрузка приложения "Галактика"
GalApp = WScript.CreateObject('atlexec.app');

//------------------------------------------------------------------------------
// Загрузка интерфейса для запуска пользовательских функций экспорта-импорта данных
voAlgCalcUserFunc_CF = GalApp.LoadVip('M_MnPlan::iAlgCalcUserFunc_CF');

//------------------------------------------------------------------------------
// Поиск пользовательской функции экспорта-импорта по наименованию
// (настройка этой функции выполняется в "ГАЛАКТИКА-ERP" в модуле
// "Спецификации продуктов", с использованием алгоритма расчета на основе
// 4004-го системного алгоритма "Импорт данных INTERMECH => ГАЛАКТИКА-ERP")
vcAlgCalcUserFunc = voAlgCalcUserFunc_CF.FindAlgCalcUserFunc(
  'Code',      // При поиске пользовательской функции экспорта-импорта
               // использовать поле "Код"
  gsFuncCode); // Значение поля "Код" для пользовательской функции
               // "Импорт данных INTERMECH => ГАЛАКТИКА-ERP"
               // (передается в качестве параметра в командной строке)

//------------------------------------------------------------------------------
// Запуск пользовательской функции экспорта-импорта
if (vcAlgCalcUserFunc != 0)
{
  // Начальная инициализация параметров
  Prm_wRunMode                   = '';
  Prm_wFlChangeParams_1          = '';
  Prm_wAutoSaveParams_1          = '';
  Prm_wFlChange_sDirXMLFileIM_1  = '';
  Prm_wFlChange_sXMLFileNameIM_1 = '';
  Prm_wFlChangeParams_2          = '';
  Prm_wAutoSaveParams_2          = '';
  Prm_wFlChange_sDirXMLFile_2    = '';
  Prm_wFlChange_sXMLFileName_2   = '';
  Prm_wRunMode_1                 = '';
  Prm_sDirXMLFileIM_1            = '';
  Prm_sXMLFileNameIM_1           = '';
  Prm_sDirXMLFileGAL_1           = '';
  Prm_sXMLFileNameGAL_1          = '';
  Prm_sXMLFileIM_1               = '';
  Prm_wFlViewXMLFile_1           = '';
  Prm_sTuneFileTechXML_1         = '';
  Prm_wRunModeTechXML_1          = '';
  Prm_dtLastDateOfSynchro_1      = '';
  Prm_wRunMode_2                 = '';
  Prm_sDirXMLFileGAL_2           = '';
  Prm_sXMLFileNameGAL_2          = '';
  Prm_sXMLFileGAL_2              = '';
  Prm_wFlViewXMLFile_2           = '';

  //````````````````````````````````````````````````````````````````````````````
  // Считывание значений параметров из конфигурационного файла
  xmlCfgFile = new ActiveXObject("Microsoft.XMLDOM");

  xmlCfgFile.async = false;
  xmlCfgFile.validateOnParse = false;

  xmlCfgFileName = "SynchroFromIM_CFG.xml";
  if (WScript.Arguments.length > 0)
    xmlCfgFileName = WScript.Arguments(0);

  if (xmlCfgFile.load(xmlCfgFileName))
  {
    // wRunMode
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wRunMode"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wRunMode = xmlNode.nodeValue;
      
    // wFlChangeParams_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlChangeParams_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlChangeParams_1 = xmlNode.nodeValue;
    
    // wAutoSaveParams_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wAutoSaveParams_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wAutoSaveParams_1 = xmlNode.nodeValue;
    
    // wFlChange_sDirXMLFileIM_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlChange_sDirXMLFileIM_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlChange_sDirXMLFileIM_1 = xmlNode.nodeValue;
    
    // wFlChange_sXMLFileNameIM_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlChange_sXMLFileNameIM_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlChange_sXMLFileNameIM_1 = xmlNode.nodeValue;
    
    // wFlChangeParams_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlChangeParams_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlChangeParams_2 = xmlNode.nodeValue;
    
    // wAutoSaveParams_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wAutoSaveParams_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wAutoSaveParams_2 = xmlNode.nodeValue;
    
    // wFlChange_sDirXMLFile_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlChange_sDirXMLFile_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlChange_sDirXMLFile_2 = xmlNode.nodeValue;
    
    // wFlChange_sXMLFileName_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlChange_sXMLFileName_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlChange_sXMLFileName_2 = xmlNode.nodeValue;
    
    // wRunMode_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wRunMode_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wRunMode_1 = xmlNode.nodeValue;
    
    // sDirXMLFileIM_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sDirXMLFileIM_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sDirXMLFileIM_1 = xmlNode.nodeValue;
    
    // sXMLFileNameIM_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sXMLFileNameIM_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sXMLFileNameIM_1 = xmlNode.nodeValue;
    
    // sDirXMLFileGAL_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sDirXMLFileGAL_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sDirXMLFileGAL_1 = xmlNode.nodeValue;
    
    // sXMLFileNameGAL_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sXMLFileNameGAL_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sXMLFileNameGAL_1 = xmlNode.nodeValue;
    
    // sXMLFileIM_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sXMLFileIM_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sXMLFileIM_1 = xmlNode.nodeValue;
    
    // wFlViewXMLFile_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlViewXMLFile_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlViewXMLFile_1 = xmlNode.nodeValue;
    
    // sTuneFileTechXML_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sTuneFileTechXML_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sTuneFileTechXML_1 = xmlNode.nodeValue;
    
    // wRunModeTechXML_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wRunModeTechXML_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wRunModeTechXML_1 = xmlNode.nodeValue;
    
    // dtLastDateOfSynchro_1
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "dtLastDateOfSynchro_1"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_dtLastDateOfSynchro_1 = xmlNode.nodeValue;
    
    // wRunMode_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wRunMode_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wRunMode_2 = xmlNode.nodeValue;
    
    // sDirXMLFileGAL_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sDirXMLFileGAL_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sDirXMLFileGAL_2 = xmlNode.nodeValue;
    
    // sXMLFileNameGAL_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sXMLFileNameGAL_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sXMLFileNameGAL_2 = xmlNode.nodeValue;
    
    // sXMLFileGAL_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "sXMLFileGAL_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_sXMLFileGAL_2 = xmlNode.nodeValue;
    
    // wFlViewXMLFile_2
    xmlNode = xmlCfgFile.selectSingleNode(
      '/Config/parameter[@name = "wFlViewXMLFile_2"] [@value != ""]/@value '); 
      
    if (xmlNode != null) 
      Prm_wFlViewXMLFile_2 = xmlNode.nodeValue;
  } // if (xmlCfgFile.load(xmlCfgFileName))

  //````````````````````````````````````````````````````````````````````````````
  // Установка значений параметров

  // wRunMode
  if (Prm_wRunMode != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wRunMode', 
      Prm_wRunMode, 
      '');
  
  // wFlChangeParams_1
  if (Prm_wFlChangeParams_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlChangeParams_1', 
      Prm_wFlChangeParams_1, 
      '');
  
  // wAutoSaveParams_1
  if (Prm_wAutoSaveParams_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wAutoSaveParams_1', 
      Prm_wAutoSaveParams_1, 
      '');
  
  // wFlChange_sDirXMLFileIM_1
  if (Prm_wFlChange_sDirXMLFileIM_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlChange_sDirXMLFileIM_1', 
      Prm_wFlChange_sDirXMLFileIM_1, 
      '');
  
  // wFlChange_sXMLFileNameIM_1
  if (Prm_wFlChange_sXMLFileNameIM_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlChange_sXMLFileNameIM_1', 
      Prm_wFlChange_sXMLFileNameIM_1, 
      '');
  
  // wFlChangeParams_2
  if (Prm_wFlChangeParams_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlChangeParams_2', 
      Prm_wFlChangeParams_2, 
      '');
  
  // wAutoSaveParams_2
  if (Prm_wAutoSaveParams_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wAutoSaveParams_2', 
      Prm_wAutoSaveParams_2, 
      '');
  
  // wFlChange_sDirXMLFile_2
  if (Prm_wFlChange_sDirXMLFile_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlChange_sDirXMLFile_2', 
      Prm_wFlChange_sDirXMLFile_2, 
      '');
  
  // wFlChange_sXMLFileName_2
  if (Prm_wFlChange_sXMLFileName_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlChange_sXMLFileName_2', 
      Prm_wFlChange_sXMLFileName_2, 
      '');
  
  // wRunMode_1
  if (Prm_wRunMode_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wRunMode_1', 
      Prm_wRunMode_1, 
      '');
  
  // sDirXMLFileIM_1
  if (Prm_sDirXMLFileIM_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sDirXMLFileIM_1', 
      Prm_sDirXMLFileIM_1, 
      '');
  
  // sXMLFileNameIM_1
  if (Prm_sXMLFileNameIM_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sXMLFileNameIM_1', 
      Prm_sXMLFileNameIM_1, 
      '');
  
  // sDirXMLFileGAL_1
  if (Prm_sDirXMLFileGAL_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sDirXMLFileGAL_1', 
      Prm_sDirXMLFileGAL_1, 
      '');
  
  // sXMLFileNameGAL_1
  if (Prm_sXMLFileNameGAL_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sXMLFileNameGAL_1', 
      Prm_sXMLFileNameGAL_1, 
      '');
  
  // sXMLFileIM_1
  if (Prm_sXMLFileIM_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sXMLFileIM_1', 
      Prm_sXMLFileIM_1, 
      '');
  
  // wFlViewXMLFile_1
  if (Prm_wFlViewXMLFile_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlViewXMLFile_1', 
      Prm_wFlViewXMLFile_1, 
      '');
  
  // sTuneFileTechXML_1
  if (Prm_sTuneFileTechXML_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sTuneFileTechXML_1', 
      Prm_sTuneFileTechXML_1, 
      '');
  
  // wRunModeTechXML_1
  if (Prm_wRunModeTechXML_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wRunModeTechXML_1', 
      Prm_wRunModeTechXML_1, 
      '');
  
  // dtLastDateOfSynchro_1
  if (Prm_dtLastDateOfSynchro_1 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'dtLastDateOfSynchro_1', 
      Prm_dtLastDateOfSynchro_1, 
      '');
  
  // wRunMode_2
  if (Prm_wRunMode_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wRunMode_2', 
      Prm_wRunMode_2, 
      '');
  
  // sDirXMLFileGAL_2
  if (Prm_sDirXMLFileGAL_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sDirXMLFileGAL_2', 
      Prm_sDirXMLFileGAL_2, 
      '');
  
  // sXMLFileNameGAL_2
  if (Prm_sXMLFileNameGAL_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sXMLFileNameGAL_2', 
      Prm_sXMLFileNameGAL_2, 
      '');
  
  // sXMLFileGAL_2
  if (Prm_sXMLFileGAL_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'sXMLFileGAL_2', 
      Prm_sXMLFileGAL_2, 
      '');
  
  // wFlViewXMLFile_2
  if (Prm_wFlViewXMLFile_2 != '') 
    voAlgCalcUserFunc_CF.PrmVal__Add(
      'wFlViewXMLFile_2', 
      Prm_wFlViewXMLFile_2, 
      '');

  //````````````````````````````````````````````````````````````````````````````
  // Считывание перечня экспортируемых изделий

  //
  voAlgCalcUserFunc_CF.PrmVal__Del('sLocalList_IMObjID_1');
  voAlgCalcUserFunc_CF.PrmVal__Add('sLocalList_IMObjID_1', '0', '');
  
  // sLocalList_IMObjID_1
  xmlNode = xmlCfgFile.selectSingleNode(
    '/Config/parameter[@name = "sLocalList_IMObjID_1"] [@value != ""]/@value '); 

  var xmlNodes = xmlCfgFile.selectNodes(
    '/item [@value != ""]/@value '); 
    
  for (i = 0; i < xmlNodes.length; i++)
  {
    voAlgCalcUserFunc_CF.PrmVal__AddVLR(
      'sLocalList_IMObjID_1', 
      xmlNodes.item(0).nodeValue, 
      '', 
      '');
  } // for (i = 0; i < xmlNodes.length; i++)

  //````````````````````````````````````````````````````````````````````````````
  // Запуск пользовательской функции экспорта-импорта
  voAlgCalcUserFunc_CF.RunAlgCalcUserFunc(vcAlgCalcUserFunc);
} // if (vcAlgCalcUserFunc != 0)
