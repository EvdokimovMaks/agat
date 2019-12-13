/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, выполняющий экспорт конструкторско-технологической информации  ##
## из КПС "INTERMECH" в КИС "ГАЛАКТИКА-ERP" с использованием                  ##
## TechXMLDataExchangeAPI                                                     ##
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

// Объекты
var goSearchAPI;              // API-объект SearchAPI
var goTechXMLDataExchangeAPI; // API-объект TechXMLDataExchangeAPI
var goXMLFileGAL;             // DOM-документ для формируемого XML-файла в 

var gsFieldValue;             // Значение поля в выборке

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
// Загрузка API-объекта
// Параметры:
//   awAPIObjCode - Код API-объекта:
//     1: SearchAPI
//     2: TechCardAPI
//     3: IMBaseAPI
//     4: TechXMLDataExchangeAPI
//     5: IMBaseAPI
// Результат:
//   Указатель на API-объект

function LoadAPIObj(awAPIObjCode)
{

// Локальные переменные
var vliWaitTime;             // Период ожидания загрузки объекта в миллисекундах
var voAPIObj;                // Ссылка на API-объект
var vdtStartLoadObjDateTime; // Дата-время начала загрузки объекта
var vdtCurrectDateTime;      // Текущее дата-время
var vbIsLogin;               // Признак загрузки объекта

  vliWaitTime = 10000; // 10 сек
  vdtStartLoadObjDateTime = new Date();
  vdtCurrectDateTime = new Date();
  
  switch(awAPIObjCode)
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
  } // switch(awAPIObjCode)

  return voAPIObj;
} // function LoadAPIObj

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

  // Загрузка TechXMLDataExchangeAPI
  SetVisualHeader('Загрузка TechXMLDataExchangeAPI \n   \n   ');
  
  goTechXMLDataExchangeAPI = LoadAPIObj(4);

  if (goTechXMLDataExchangeAPI == null)
    throw new Error(10002, 'NOT_LOADED_TECHXML');

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // Загрузка SearchAPI
  SetVisualHeader('Загрузка SearchAPI \n   \n   ');
  
  goSearchAPI = LoadAPIObj(1);

  if (goSearchAPI == null)
    throw new Error(10002, 'NOT_LOADED_SEARCH');

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // Установка шаблона экспорта данных из INTERMECH
  SetVisualHeader('Установка шаблона экспорта данных из INTERMECH \n   \n   ');
  
  goTechXMLDataExchangeAPI.SetTuneFile(GetTuneFile());
  goTechXMLDataExchangeAPI.ClearExportArts();
  goTechXMLDataExchangeAPI.ClearExportTPs();

  // Формирование списка экспортируемых машиностроительных объектов  
  SetVisualHeader('Формирование списка экспортируемых машиностроительных объектов \n   \n   ');

  goSearchAPI.OpenQuery(
    ' SELECT ' +
    '   art_id, ' +
    '   chkindate, ' +
    '   modifdate ' +
    ' FROM ' +
    '   articles ' + 
    ' WHERE ' + 
    '   section_id IN (1,2,3,4,5,6,7,8,9,77,777,99999998,99999999,100000001,100000003) ');
  
  goSearchAPI.QueryGoFirst();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
  
  if (goSearchAPI.QueryRecordCount() != 0)
  {
    do
    {
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
    
      gsFieldValue = goSearchAPI.QueryFieldByName('ART_ID');
      goTechXMLDataExchangeAPI.AddExpArtByID(gsFieldValue);
    } while (goSearchAPI.QueryGoNext() != 0);
  }
  
  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // Выполнение экспорта данных из INTERMECH
  SetVisualHeader('Экспорт данных из INTERMECH \n   \n   ');
  
  goTechXMLDataExchangeAPI.StartExport();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // Сохранение результата экспорта данных в XML-файл
  SetVisualHeader('Сохранение результата экспорта данных в XML-файл \n   \n   ');
  
  goTechXMLDataExchangeAPI.SaveXMLFile(GetXMLFileIM());
  
  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // Освобождение ресурсов
  SetVisualHeader('Освобождение ресурсов \n   \n   ');
  
  goTechXMLDataExchangeAPI = null;
  goSearchAPI = null;
  
  // Закрытие окна визуализации
  StopVisual('', 0);
} // try

catch(e)
{
  // Закрытие окна визуализации
  StopVisual(e.message, vfWait);
} // catch(e)
