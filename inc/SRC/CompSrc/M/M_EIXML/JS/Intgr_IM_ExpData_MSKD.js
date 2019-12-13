/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� ������� ��������������-��������������� ����������  ##
## �� ��� "INTERMECH" � ��� "���������-ERP" � ��������������                  ##
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
// ���������� ���������� 
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

// �������
var goSearchAPI;              // API-������ SearchAPI
var goTechXMLDataExchangeAPI; // API-������ TechXMLDataExchangeAPI
var goXMLFileGAL;             // DOM-�������� ��� ������������ XML-����� � 

var gsFieldValue;             // �������� ���� � �������

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ����� �������
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// �������� API-�������
// ���������:
//   awAPIObjCode - ��� API-�������:
//     1: SearchAPI
//     2: TechCardAPI
//     3: IMBaseAPI
//     4: TechXMLDataExchangeAPI
//     5: IMBaseAPI
// ���������:
//   ��������� �� API-������

function LoadAPIObj(awAPIObjCode)
{

// ��������� ����������
var vliWaitTime;             // ������ �������� �������� ������� � �������������
var voAPIObj;                // ������ �� API-������
var vdtStartLoadObjDateTime; // ����-����� ������ �������� �������
var vdtCurrectDateTime;      // ������� ����-�����
var vbIsLogin;               // ������� �������� �������

  vliWaitTime = 10000; // 10 ���
  vdtStartLoadObjDateTime = new Date();
  vdtCurrectDateTime = new Date();
  
  switch(awAPIObjCode)
  {
    // �������� SearchAPI
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

    // �������� TechCardAPI
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

    // �������� IMBaseAPI
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

    // �������� TechXMLDataExchangeAPI
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

    // �������� IMBaseAPI
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
// ������ ���������� �������
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

try
{
  // ����� ���� ������������ �������� �������� ������
  StartNewVisual(
    vtRotateVisual, 
    vfTimer + vfBreak + vfConfirm, 
    '������� ������ �� INTERMECH  \n' +
    '                                                                      ' + 
    '                                                                      \n   ', 
    50);

  // �������� TechXMLDataExchangeAPI
  SetVisualHeader('�������� TechXMLDataExchangeAPI \n   \n   ');
  
  goTechXMLDataExchangeAPI = LoadAPIObj(4);

  if (goTechXMLDataExchangeAPI == null)
    throw new Error(10002, 'NOT_LOADED_TECHXML');

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // �������� SearchAPI
  SetVisualHeader('�������� SearchAPI \n   \n   ');
  
  goSearchAPI = LoadAPIObj(1);

  if (goSearchAPI == null)
    throw new Error(10002, 'NOT_LOADED_SEARCH');

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // ��������� ������� �������� ������ �� INTERMECH
  SetVisualHeader('��������� ������� �������� ������ �� INTERMECH \n   \n   ');
  
  goTechXMLDataExchangeAPI.SetTuneFile(GetTuneFile());
  goTechXMLDataExchangeAPI.ClearExportArts();
  goTechXMLDataExchangeAPI.ClearExportTPs();

  // ������������ ������ �������������� ������������������ ��������  
  SetVisualHeader('������������ ������ �������������� ������������������ �������� \n   \n   ');

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
    
  // ���������� �������� ������ �� INTERMECH
  SetVisualHeader('������� ������ �� INTERMECH \n   \n   ');
  
  goTechXMLDataExchangeAPI.StartExport();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // ���������� ���������� �������� ������ � XML-����
  SetVisualHeader('���������� ���������� �������� ������ � XML-���� \n   \n   ');
  
  goTechXMLDataExchangeAPI.SaveXMLFile(GetXMLFileIM());
  
  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');
    
  // ������������ ��������
  SetVisualHeader('������������ �������� \n   \n   ');
  
  goTechXMLDataExchangeAPI = null;
  goSearchAPI = null;
  
  // �������� ���� ������������
  StopVisual('', 0);
} // try

catch(e)
{
  // �������� ���� ������������
  StopVisual(e.message, vfWait);
} // catch(e)
