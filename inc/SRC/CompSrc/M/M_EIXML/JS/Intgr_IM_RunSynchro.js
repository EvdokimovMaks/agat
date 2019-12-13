/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� ������ ������������� ������ ����� ��� "INTERMECH"  ##
## � ��� "���������-ERP".                                                     ##
##                                                                            ##
## � �������� ��������� ��������� ������ ���������� ����������������          ##
## XML-����, ��������� �������� ������������� ��������� �����                 ##
## SynchroFromIM_CFG.xml.                                                     ##
##                                                                            ##
##                                                                            ##
##                          ��������!!!                                       ##
## ����� �������� ������ ��������� ����� �������������� �� ��������� ������   ##
## ��������� �������:                                                         ##
##   galnet /regserver                                                        ##
##                                                                            ##
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
*/

//------------------------------------------------------------------------------
// ���������� ����������

//
var GalApp;                         //
var vcAlgCalcUserFunc;              //
var voAlgCalc;                      //
var voAlgCalcUserFunc_CF;           //
var xmlCfgFileName;                 //
var xmlCfgFile;                     //
var xmlNode;                        //

//
var i;                              // ���������� �����

//
var gsFuncCode;                     // ��� ���������������� ������� �������

// ��������� ���������, ���������� � ��������, ����������� ������������� ������
var Prm_wRunMode;                   // ����� ���������� ���������:
                                    //     0 - � ������������ ����������� ����
                                    //     1 - ��� ����������� ����������� ����
var Prm_wFlChangeParams_1;          // ��������� ���������� ��� ����� � 1 �� ����� 
                                    //   ����������:
                                    //     0 - ���������
                                    //     1 - ���������
var Prm_wAutoSaveParams_1;          // �������������� �������� ���������� ��� ����� � 1 
                                    //   � DSK-�����:
                                    //     0 - ���������
                                    //     1 - ��������
var Prm_wFlChange_sDirXMLFileIM_1;  // ��������� �������� ��� ������������ XML-�����
                                    //   � ������� INTERMECH ��� ����� � 1:
                                    //     0 - ���������
                                    //     1 - ���������
var Prm_wFlChange_sXMLFileNameIM_1; // ��������� ������������ ������������ XML-�����
                                    //   � ������� INTERMECH ��� ����� � 1:
                                    //     0 - ���������
                                    //     1 - ���������
var Prm_wFlChangeParams_2;          // ��������� ���������� ��� ����� � 2 �� ����� ����������:
                                    //     0 - ���������
                                    //     1 - ���������
var Prm_wAutoSaveParams_2;          // �������������� �������� ���������� ��� ����� � 2 
                                    //   � DSK-�����:
                                    //     0 - ���������
                                    //     1 - ��������
var Prm_wFlChange_sDirXMLFile_2;    // ��������� �������� ��� ������������ XML-����� 
                                    //   � ������� ���������-ERP ��� ����� � 2:
                                    //     0 - ���������
                                    //     1 - ���������
var Prm_wFlChange_sXMLFileName_2;   // ��������� ������������ ������������ XML-����� 
                                    //   � ������� ���������-ERP ��� ����� � 2:
                                    //     0 - ���������
                                    //     1 - ���������
var Prm_wRunMode_1;                 // ����� ���������� ����� � 1:
                                    //     0 - �������� ������ �� INTERMECH � XML-���� 
                                    //         � ������� TechXMLDataExchange
                                    //     1 - �������� ������ �� INTERMECH � XML-���� 
                                    //         � ������� API
                                    //     2 - ������������ ����� �������������� XML-���� 
                                    //         � ������� INTERMECH
                                    //     3 - ���������� ���������� ������� �����
var Prm_sDirXMLFileIM_1;            // ������� ��� ������������ XML-����� � ������� INTERMECH 
                                    //   ��� ����� � 1
var Prm_sXMLFileNameIM_1;           // ������������ ������������ XML-����� � ������� INTERMECH 
                                    //   (��� ����������) ��� ����� � 1
var Prm_sDirXMLFileGAL_1;           // ������� ��� ������������ XML-����� � ������� ���������-ERP 
                                    //   ��� ����� � 1
var Prm_sXMLFileNameGAL_1;          // ������������ ������������ XML-����� � ������� ���������-ERP 
                                    //   (��� ����������) ��� ����� � 1
var Prm_sXMLFileIM_1;               // XML-���� � ������� INTERMECH ��� ����� � 1
var Prm_wFlViewXMLFile_1;           // ���������� �������������� �� ����� � 1 XML-����:
                                    //     0 - ���
                                    //     1 - ��
var Prm_wRunModeTechXML_1;          // ����� ������� ������ TechXMLDataExchange:
                                    //     0 - ������� ���
                                    //     1 - ������� ������������������ ��������
                                    //     2 - ������� ��������������� ����������
                                    //     3 - ������� ��������������-��������������� ����������
var Prm_sTuneFileTechXML_1;         // ���� ��������� �������� ������ ��� ������ TechXMLDataExchange
var Prm_dtLastDateOfSynchro_1;      // ���� ���������� ��������� �������������
var Prm_wRunMode_2;                 // ����� ���������� ����� � 2:
                                    //     0 - ������������ XML-����� ���������-ERP �� ������ 
                                    //         XML-����� INTERMECH
                                    //     1 - ������������ ����� �������������� XML-���� � ������� 
                                    //         ���������-ERP
var Prm_sDirXMLFileGAL_2;           // ������� ��� ������������ XML-����� � ������� ���������-ERP 
                                    //   ��� ����� � 2
var Prm_sXMLFileNameGAL_2;          // ������������ ������������ XML-����� � ������� ���������-ERP 
                                    //   (��� ����������) ��� ����� � 2
var Prm_sXMLFileGAL_2;              // XML-���� � ������� ���������-ERP ��� ����� � 2
var Prm_wFlViewXMLFile_2;           // ���������� �������������� �� ����� � 2 XML-����:
                                    //     0 - ���
                                    //     1 - ��

//------------------------------------------------------------------------------
// ���������� ���� ������� ������� �� ��������� � ��������� ������
gsFuncCode = "'" + WScript.Arguments.Item(0) + "'";

//------------------------------------------------------------------------------
// �������� ���������� "���������"
GalApp = WScript.CreateObject('atlexec.app');

//------------------------------------------------------------------------------
// �������� ���������� ��� ������� ���������������� ������� ��������-������� ������
voAlgCalcUserFunc_CF = GalApp.LoadVip('M_MnPlan::iAlgCalcUserFunc_CF');

//------------------------------------------------------------------------------
// ����� ���������������� ������� ��������-������� �� ������������
// (��������� ���� ������� ����������� � "���������-ERP" � ������
// "������������ ���������", � �������������� ��������� ������� �� ������
// 4004-�� ���������� ��������� "������ ������ INTERMECH => ���������-ERP")
vcAlgCalcUserFunc = voAlgCalcUserFunc_CF.FindAlgCalcUserFunc(
  'Code',      // ��� ������ ���������������� ������� ��������-�������
               // ������������ ���� "���"
  gsFuncCode); // �������� ���� "���" ��� ���������������� �������
               // "������ ������ INTERMECH => ���������-ERP"
               // (���������� � �������� ��������� � ��������� ������)

//------------------------------------------------------------------------------
// ������ ���������������� ������� ��������-�������
if (vcAlgCalcUserFunc != 0)
{
  // ��������� ������������� ����������
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
  // ���������� �������� ���������� �� ����������������� �����
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
  // ��������� �������� ����������

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
  // ���������� ������� �������������� �������

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
  // ������ ���������������� ������� ��������-�������
  voAlgCalcUserFunc_CF.RunAlgCalcUserFunc(vcAlgCalcUserFunc);
} // if (vcAlgCalcUserFunc != 0)
