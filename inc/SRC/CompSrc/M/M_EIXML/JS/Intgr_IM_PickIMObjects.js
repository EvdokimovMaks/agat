/*
###############################################################################
###############################################################################
###############################################################################
###############################################################################
###############################################################################
##                                                                           ##
## JavaScript, ����������� ���������� ������ ��������������� ��������������  ##
## ������������������ �������� �� ��� "INTERMECH" � ��� "���������-ERP".     ##
##                                                                           ##
## ������ ������� ������������������ ������� ��� �������� �������������� �   ##
## �������������� ���������������� SearchAPI                                 ##
##                                                                           ##
## ������ ��������������� �������������� ������������������ ��������         ##
## ����������� � ��������� ��������-������� ��� ����������� ���������        ##
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
// ���������� ����������

// �������
var goSearchAPI;                           // API-������ SearchAPI
var goConfigXML;                           // DOM-�������� ��� ����������������� XML-�����

//
var gwPickMode;                            // ����� ������ ����������������� ��������:
                                           //   0 - � ����������� ��������� �������� �
                                           //       ��������� �������
                                           //   1 - � ����������� ��������� �������� �
                                           //       ���������������� XML-�����
var gbExistsConfigXMLFile;                 // ������� ������������� ����������������� XML-�����
var gliDialogResult;                       // ��������� �������� ����������� ����
var gsConfigXMLFileName;                   // ��� ����������������� XML-�����
var gliIMObjID_Count;                      // ���������� ��������� ��������������� ������-
                                           //   ������������ ��������
var gliIMObjID_CurIndex;                   // ������� ������ ��� ��������� ���������������
                                           //   ������������������ ��������
var gliConfigXMLNode_sLocalList_IMObjID_1; // Handle ����, ���������������� ��������� � ������
                                           //   "sLocalList_IMObjID_1" (�������� ���������������
                                           //   ����������������� �������� ��� ��������)
//
var gsaValues;                             // ������ �������� �������

//-----------------------------------------------------------------------------
// ���������� ���� <item> (������� ������) � ���������������� XML-����
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asValue       - �������� �������� "value" ��� ������������ ���� <parameter>
// ���������:
//   Handle ���������� ���� <item>

function ConfigXML_AddTag_Item(aliParentNode, asValue)
{
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  vliNode    = goConfigXML.createElement('item');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  ConfigXML_AddTagAttribute(vliNodeAdd, 'value', asValue);

  return(vliNodeAdd);
} // function ConfigXML_AddTag_Item

//-----------------------------------------------------------------------------
// ���������� ���� <parameter> (��������) � ���������������� XML-����
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asName        - �������� �������� "name" ��� ������������ ���� <parameter>
//   asValue       - �������� �������� "value" ��� ������������ ���� <parameter>
// ���������:
//   Handle ���������� ���� <parameter>

function ConfigXML_AddTag_Parameter(aliParentNode, asName, asValue)
{
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  vliNode    = goConfigXML.createElement('parameter');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  ConfigXML_AddTagAttribute(vliNodeAdd, 'name', asName);
  ConfigXML_AddTagAttribute(vliNodeAdd, 'value', asValue);

  return(vliNodeAdd);
} // function ConfigXML_AddTag_Parameter

//-----------------------------------------------------------------------------
// ���������� ��������� � ���� � ���������������� XML-����
// ���������:
//   aliNode - Handle ���� � DOM-���������, ��� �������� ����������� �������
//   asName  - ������������ ��������
//   asValue - �������� ��������

function ConfigXML_AddTagAttribute(aliNode, asName, asValue)
{
var vliAttr; // Handle ������������ �������� � DOM-���������

  vliAttr = goConfigXML.createAttribute(asName);
  vliAttr.value = asValue;
  aliNode.attributes.setNamedItem(vliAttr);
} // function ConfigXML_AddTagAttribute

//------------------------------------------------------------------------------
// �������� ������������ ������� ����������������� XML-�����
// ���������:
//   asFileName - ��� ����������������� XML-����� (������� ���� � ���������� '.xml')

function ConfigXML_CheckFileName(asFileName)
{
var voFileSystemObject; // ������ ��� ������ � �������
var voFile;             // ������-����

  // �������� ������������ ����� �����
  if (asFileName.length < 5)
    throw new Error(5002, "INVALID_FILE_NAME");

  voFileSystemObject = new ActiveXObject("Scripting.FileSystemObject");

  // �������� ������������� �����
  gbExistsConfigXMLFile = voFileSystemObject.FileExists(asFileName);

  // ���� ���� �� ����������, �� ��������������� ������� ��� �������
  if (!gbExistsConfigXMLFile)
  {
    // ������� �������� ���������� �����
    voFile = voFileSystemObject.CreateTextFile(asFileName, true);

    if (voFile == null)
      throw new Error(5001, "ACCESS_DENIDED");

    voFile.Close();

    // �������� ���������� ����� (���� ���� ����� ������ �����)
    voFileSystemObject.DeleteFile(asFileName, true);
  } // if (!gbExistsConfigXMLFile)

  // �������� ���������� ����� (������ ���� '.xml')
  if (asFileName.slice(asFileName.length - 4, asFileName.length).toUpperCase() != '.XML')
    throw new Error(5002, "INVALID_FILE_NAME");
} // function ConfigXML_CheckFileName

//-----------------------------------------------------------------------------
// ��������������� ���������� DOM-��������� ��� ������������

function ConfigXML_Prepare()
{
var vliProcessingInstruction; // Handle ����������� ����������� ���������� � DOM-���������
var vliComment;               // Handle ������������ ����������� � DOM-���������
var vliNode;                  // Handle ������������ ���� � DOM-���������
var vliNodeAdd;               // Handle ���������� ���� � DOM-��������� ����� ������������
var vliNode_Config;           // Handle ��������� ���� <Config> � DOM-���������

  //
  goConfigXML.setProperty('SelectionLanguage', 'XPath');
  goConfigXML.async           = true;
  goConfigXML.validateOnParse = true;

  // ��������/���������� ����������������� XML-�����
  if (goConfigXML.load(gsConfigXMLFileName))
  {
    // ����� ��������� ���� <Config>
    vliNode_Config = goConfigXML.selectSingleNode('Config');

    //
    if (vliNode_Config == null)
      if (goConfigXML.childNodes.length != 0)
        throw new Error(5000, 'INVALID_ROOT_ELEMENT');

    // ����������� Handle ����, ���������������� ��������� � ������ "sLocalList_IMObjID_1"
    gliConfigXMLNode_sLocalList_IMObjID_1 = goConfigXML.selectSingleNode(
      'Config/parameter[@name = "sLocalList_IMObjID_1"]');

    // �������� ����, ���������������� ��������� � ������ "sLocalList_IMObjID_1"
    if (gliConfigXMLNode_sLocalList_IMObjID_1 == null)
      gliConfigXMLNode_sLocalList_IMObjID_1 = ConfigXML_AddTag_Parameter(
        vliNode_Config,
        'sLocalList_IMObjID_1',
        '');
  } // if (goConfigXML.load(gsConfigXMLFileName))
  else
  {
    // ���� ���� ����, �� �� ���������
    if (gbExistsConfigXMLFile)
      throw new Error(5000, "INVALID_ROOT_ELEMENT");

    // ���������
    vliProcessingInstruction = goConfigXML.createProcessingInstruction(
      'xml',
      'version="1.0" encoding="windows-1251"');
    
    goConfigXML.insertBefore(vliProcessingInstruction, goConfigXML.childNodes.item(0));
    
    // �����������
    vliComment = goConfigXML.createComment(
      ' \n' +
      'Copyright ��� "���������� ���������" \n' +
      ' \n' +
      '���������������� ���� ��� ��������� SynchroFromIM.js, ����������� ������������� \n' +
      '������ ����� "INTERMECH" � "���������-ERP". \n' +
      ' \n' +
      '���� ��� ��������� ������ ������ �������� (�.�. value=""), �� �������� \n' +
      '����� ��������� ������� �� ���������������� ��������� �������, ���������� \n' +
      '� ���������������� ��������, ����������� ������ ������ �� "INTERMECH" � "���������-ERP" \n' +
      '(����� ���� ������� ������������ � ��������� SynchroFromIM.js) \n' +
      ' \n' +
      '���������: \n' +
      ' \n' +
      '1)  wRunMode - ����� ���������� ���������: \n' +
      '      0 - � ������������ ����������� ���� \n' +
      '      1 - ��� ����������� ����������� ���� \n' +
      ' \n' +
      '2)  wFlChangeParams_1 - ��������� ���������� ��� ����� � 1 �� ����� ����������: \n' +
      '      0 - ��������� \n' +
      '      1 - ��������� \n' +
      ' \n' +
      '3)  wAutoSaveParams_1 - �������������� �������� ���������� ��� ����� � 1 \n' +
      '    � DSK-�����: \n' +
      '      0 - ��������� \n' +
      '      1 - �������� \n' +
      ' \n' +
      '4)  wFlChange_sDirXMLFileIM_1 - ��������� �������� ��� ������������XML-����� \n' +
      '    � ������� INTERMECH ��� ����� � 1: \n' +
      '      0 - ��������� \n' +
      '      1 - ��������� \n' +
      ' \n' +
      '5)  wFlChange_sXMLFileNameIM_1 - ��������� ������������ ������������ XML-����� \n' +
      '    � ������� INTERMECH ��� ����� � 1: \n' +
      '      0 - ��������� \n' +
      '      1 - ��������� \n' +
      ' \n' +
      '6)  wFlChangeParams_2 - ��������� ���������� ��� ����� � 2�� ����� ����������: \n' +
      '      0- ��������� \n' +
      '      1 - ��������� \n' +
      ' \n' +
      '7)  wAutoSaveParams_2 -�������������� �������� ���������� ��� ����� � 2 � DSK-�����: \n' +
      '      0 - ��������� \n' +
      '      1- �������� \n' +
      ' \n' +
      '8)  wFlChange_sDirXMLFile_2 - ��������� �������� ��� ������������ XML-����� \n' +
      '    � ������� ���������-ERP ��� ����� �2: \n' +
      '      0 -��������� \n' +
      '      1 - ��������� \n' +
      ' \n' +
      '9)  wFlChange_sXMLFileName_2 - ��������� ������������ ������������ XML-����� \n' +
      '    � ������� ���������-ERP ��� ����� � 2: \n' +
      '      0 - ��������� \n' +
      '      1 - ��������� \n' +
      ' \n' +
      '10) wRunMode_1 - ����� ���������� ����� � 1: \n' +
      '      0 - �������� ������ �� INTERMECH � XML-���� � ������� TechXMLDataExchange \n' +
      '      1 - �������� ������ �� INTERMECH � XML-���� � ������� API \n' +
      '      2 - ������������ ����� �������������� XML-���� � ������� INTERMECH \n' +
      '      3 - ���������� ���������� ������� ����� \n' +
      ' \n' +
      '11) sDirXMLFileIM_1 - ������� ��� ������������ XML-����� � ������� INTERMECH \n' +
      '    ��� ����� � 1 \n' +
      ' \n' +
      '12) sXMLFileNameIM_1 - ������������ ������������ XML-����� � ������� INTERMECH \n' +
      '    (��� ����������) ��� ����� � 1 \n' +
      ' \n' +
      '13) sDirXMLFileGAL_1 - ������� ��� ������������ XML-����� � ������� ���������-ERP \n' +
      '    ��� ����� � 1 \n' +
      ' \n' +
      '14) sXMLFileNameGAL_1- ������������ ������������ XML-����� � ������� ���������-ERP \n' +
      '    (��� ����������) ��� ����� � 1 \n' +
      ' \n' +
      '15) sXMLFileIM_1 - XML-���� � ������� INTERMECH ��� ����� � 1 \n' +
      ' \n' +
      '16) wFlViewXMLFile_1 - ���������� �������������� �� ����� �1 XML-����: \n' +
      '      0 - ��� \n' +
      '      1 - �� \n' +
      ' \n' +
      '17) wRunModeTechXML_1 - ����� ������� ������ TechXMLDataExchange: \n' +
      '      0 - ������� ��� \n' +
      '      1 - ������� ������������������ �������� \n' +
      '      2 - ������� ��������������� ���������� \n' +
      '      3 - ������� ��������������-��������������� ���������� \n' +
      ' \n' +
      '18) sTuneFileTechXML_1 - ���� ��������� �������� ������ ��� ������ \n' +
      '    TechXMLDataExchange \n' +
      ' \n' +
      '19) sLocalList_IMObjID_1 - �������� ��������������� ����������������� �������� ��� �������� \n' +
      ' \n' +
      '20) dtLastDateOfSynchro_1 - ���� ���������� ��������� ������������� \n' +
      ' \n' +
      '21) wRunMode_2 - ����� ���������� ����� �2: \n' +
      '      0 -������������ XML-����� ���������-ERP �� ������ XML-����� INTERMECH \n' +
      '      1 -������������ ����� �������������� XML-���� � ������� ���������-ERP \n' +
      ' \n' +
      '22) sDirXMLFileGAL_2 - ������� ��� ������������ XML-����� � ������� ���������-ERP \n' +
      '    ��� ����� � 2 \n' +
      ' \n' +
      '23) sXMLFileNameGAL_2 - ������������ ������������ XML-����� � ������� ���������-ERP \n' +
      '    (��� ����������)��� ����� � 2 \n' +
      ' \n' +
      '24) sXMLFileGAL_2 - XML-���� � ������� ���������-ERP ��� ����� � 2 \n' +
      ' \n' +
      '25) wFlViewXMLFile_2 -���������� �������������� �� ����� � 2 XML-����: \n' +
      '      0 - ��� \n' +
      '      1 - �� \n');
    
    goConfigXML.appendChild(vliComment);
    
    // �������� ��������� ���� <Config>
    vliNode = goConfigXML.createElement('Config');
    
    vliNode_Config = goConfigXML.appendChild(vliNode);
    
    // �������� ����, ���������������� ��������� � ������ "sLocalList_IMObjID_1"
    gliConfigXMLNode_sLocalList_IMObjID_1 = ConfigXML_AddTag_Parameter(
      vliNode_Config, 
      'sLocalList_IMObjID_1',
      '');
  } // else -> if (goConfigXML.load(gsConfigXMLFileName))
    
  // �������� �������� ����� ��� ����, ���������������� ��������� � ������ 
  // "sLocalList_IMObjID_1"
  while(gliConfigXMLNode_sLocalList_IMObjID_1.childNodes.length != 0)
    gliConfigXMLNode_sLocalList_IMObjID_1.removeChild(
      gliConfigXMLNode_sLocalList_IMObjID_1.childNodes.item(0));  
    
  return;
} // function ConfigXML_Prepare

//-----------------------------------------------------------------------------
// �������� API-�������
// ���������:
//   aliNum - ��� API-�������:
//     1: SearchAPI

function LoadAPIObj(aliNum)
{
var vliWaitTime;             // ������ �������� �������� ������� � �������������
var voAPIObj;                // ������ �� API-������
var vdtStartLoadObjDateTime; // ����-����� ������ �������� �������
var vdtCurrectDateTime;      // ������� ����-�����
var vbIsLogin;               // ������� �������� �������

  vliWaitTime = 20000; // 20 ���
  vdtStartLoadObjDateTime = new Date();
  vdtCurrectDateTime = new Date();

  switch(aliNum)
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

    default:
      break;
  } // switch(aliNum)

  return voAPIObj;
} // function LoadAPIObj

//------------------------------------------------------------------------------
// ����� �������� ��������� � �������
// ���������:
//   asaArray           - ������ � ����������� � �� ����������
//   aliParamNameIndex  - ������ 2-�� ������ ��� ������������ ����������
//   aliParamValueIndex - ������ 2-�� ������ ��� �������� ����������
//   asParamName        - ������������ ���������
// ���������:
//   �������� ��������� (���� �������� �� ������ � �������, �� ������ ������)

function SearchAPI_GetParamValueFromArray(asaArray, aliParamNameIndex,
  aliParamValueIndex, asParamName)
{

// ��������� ����������
var vsParamName; // ������������ ��������� � ������� ��������
var i;           // ���������� �����
var vliLength;   // ������ ������� �� 1-�� ������

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
// ������� ������������ ���������� � �� �������� �� ������ � ������
// ���������:
//   asParamValStr - ������ � �������������� ���������� � �� ����������
// ���������:
//   ������ � �������������� ���������� � �� ����������

function SearchAPI_SplitParams(asParamValStr)
{

// ��������� ����������
var i;          // ���������� �����
var vsaValues1; // 1-��������� ������
var vsaValues2; // 2-��������� ������ (��������� �������)

  // �������������� ������ � ������ � ����������� �� ���������, �����������
  // �������� '\n'
  vsaValues1 = asParamValStr.split('\n');

  vsaValues2 = new Array();

  for (i = 0; i < vsaValues1.length; i++)
  {
    // �������������� ��������� (��������� ��� �� ������ � ����� ��������)
    vsaValues1[i] = vsaValues1[i].substr(0, vsaValues1[i].length - 1);

    // �������������� �������� ������� vsaValues1 � ������ � ����������� ��
    // ���������, ����������� �������� '='
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
// ����� ������������������ �������� ��� ���������� � �� ���������-ERP
function PickIMObjects_0()
{

// ��������� ����������
var vsaValues;       // ������ �������� �������
var vsIMObjID;       // ������������� ������������������� �������
var vsValue_ObjName; // �������� �������� "������������"
var vsValue_ObjType; // �������� �������� "��� �������"
var vcEIProtocol;    // ������ �� �������� �������

  // �������� SearchAPI
  goSearchAPI = LoadAPIObj(1);

  // ������ ��������������� ������������������ ��������
  goSearchAPI.StartSelectArticles();
  goSearchAPI.SelectArticles();

  // ��������� ������ �� �������� �������
  vcEIProtocol = GetEIProtocol();

  // ���������� ��������� ��������������� � ���������������� XML-����
  gliIMObjID_Count = goSearchAPI.SelectedArticlesCount();

  for (gliIMObjID_CurIndex = 0; gliIMObjID_CurIndex < gliIMObjID_Count; gliIMObjID_CurIndex++)
  {
    // ��������� �������������� �������� ������������������� �������
    vsIMObjID = goSearchAPI.GetSelectedArticleID(gliIMObjID_CurIndex);
  
    // ������ �������� ������� �������� ������������������� �������
    vsaValues = SearchAPI_SplitParams(goSearchAPI.GetArticleParams(vsIMObjID));
  
    // ��������� �������� ������� �������� ������������������� �������
    vsValue_ObjName = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '������������');
    vsValue_ObjType = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� �������');
    
    // ��������� ������������ ���� ������������������ ��������
    switch(vsValue_ObjType)
    {
  
      // ������������
      case '1':
      {
        vsValue_ObjType = '������������';
        break;
      } // case '1':

      // ���������
      case '2':
      {
        vsValue_ObjType = '���������';
        break;
      } // case '2':

      // ��������� �������
      case '3':
      {
        vsValue_ObjType = '��������� �������';
        break;
      } // case '3':

      // ������
      case '4':
      {
        vsValue_ObjType = '������';
        break;
      } // case '4':

      // ����������� �������
      case '5':
      {
        vsValue_ObjType = '����������� �������';
        break;
      } // case '5':

      // ������ �������
      case '6':
      {
        vsValue_ObjType = '������ �������';
        break;
      } // case '6':

      // ���������
      case '7':
      {
        vsValue_ObjType = '���������';
        break;
      } // case '7':

      // ���������
      case '8':
      {
        vsValue_ObjType = '���������';
        break;
      } // case '8':

      // ����������� �������
      case '9':
      {
        vsValue_ObjType = '����������� �������';
        break;
      } // case '9':

      // ���������������
      case '99999998':
      {
        vsValue_ObjType = '���������������';
        break;
      } // case '99999998':

      // ������
      case '99999999':
      {
        vsValue_ObjType = '������';
        break;
      } // case '99999999':

      // ��������
      case '100000001':
      {
        vsValue_ObjType = '��������';
        break;
      } // case '100000001':

      // �������
      case '100000003':
      {
        vsValue_ObjType = '�������';
        break;
      } // case '100000003':

      default:
      {
        vsValue_ObjType = '��� ������ ID=' + vsValue_ObjType;
        break;
      } // default
    } // switch(aliNum)
    
    // ���������� ������� � ��������� �������
    EIXML_AddEventInProt(
      vcEIProtocol, 
      0, 
      vsIMObjID + '\n' + vsValue_ObjType + '\n' + vsValue_ObjName);
  } // for (gliIMObjID_CurIndex = 0; gliIMObjID_CurIndex < gliIMObjID_Count; gliIMObjID_CurIndex++)

  return;
} // function PickIMObjects_0

//------------------------------------------------------------------------------
// ����� ������������������ �������� ��� ���������� � ���������������� XML-�����
function PickIMObjects_1()
{
  // ���������� ����� ����������������� XML-����� �� ���������� ��������� ������
  gsConfigXMLFileName = 'SynchroFromIM_CFG.xml';

  if (WScript.Arguments.length > 0)
  {
    gsConfigXMLFileName = WScript.Arguments.Item(0); 

    if (
      (gsConfigXMLFileName == null) ||
      (gsConfigXMLFileName == ''))
      gsConfigXMLFileName = 'SynchroFromIM_CFG.xml';
  } // if (WScript.Arguments.length > 0)
  
  // �������� ������������ ����� ����������������� XML-�����
  ConfigXML_CheckFileName(gsConfigXMLFileName);

  // �������� DOM-��������� ��� ����������������� �����
  goConfigXML = new ActiveXObject('MSXML.DOMDocument');
  
  // ���������� DOM-��������� ��� �������������
  ConfigXML_Prepare();
    
  // �������� SearchAPI
  goSearchAPI = LoadAPIObj(1);
  
  // ������ ��������������� ������������������ �������� ��� ��������
  // (��� ������� ���� ������������������ ��������) � ����������
  // ���� ��������������� � ���������������� XML-����
  do
  {
    // ������ ��������������� ������������������ ��������
    goSearchAPI.StartSelectArticles();
    goSearchAPI.SelectArticles();
    
    // ���������� ��������� ��������������� � ���������������� XML-����
    gliIMObjID_Count = goSearchAPI.SelectedArticlesCount();
    
    for (gliIMObjID_CurIndex = 0; gliIMObjID_CurIndex < gliIMObjID_Count; gliIMObjID_CurIndex++)
      ConfigXML_AddTag_Item(
        gliConfigXMLNode_sLocalList_IMObjID_1, 
        goSearchAPI.GetSelectedArticleID(gliIMObjID_CurIndex));
    
    // ������ ������ ������������������ �������� ������� ����
    gliDialogResult = Message(
      '������� ������������������ ������� ������� ����?', 
      mfYesNo);
  } // do
  while (gliDialogResult != cmYes) // ���� ������������ �� ������ "������"                              
  
  // ���������� ����������������� XML-�����
  goConfigXML.save(gsConfigXMLFileName);
  
  return;
} // function PickIMObjects_1

//------------------------------------------------------------------------------
// ������ ���������� �������

  // ��������� ������ ������
  gwPickMode = GetPickMode();
  
  // ������ ������ ������������������ ��������
  switch(gwPickMode)
  {
  
    // � ����������� ��������� �������� � ��������� �������
    case '0':
    {
      PickIMObjects_0();
      break;
    } // case '0':

    // � ����������� ��������� �������� � ���������������� XML-�����
    case '1':
    {
      PickIMObjects_1();
      break;
    } // case '1':

    default:
      break;
  } // switch(aliNum)

  // ������������ ��������
  goSearchAPI.EndSelectArticles();
  goSearchAPI = null;
  goConfigXML = null;
} // try

// ��������� ������ ��� ���������� �������
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
