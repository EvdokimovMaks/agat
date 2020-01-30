/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� �������� ������� ��� �� Excel-�����                ##
## � XML-���� � ������� ���������-ERP                                         ##
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

//------------------------------------------------------------------------------
// ��������, ������������ ��� ����������� ������������ ������ ��������������� Excel-�����
// ��������� ����
var gsSheetName = 'OCSPos';                     // ������������ Excel-�����, ����������� ������ ��� ������� ���

//------------------------------------------------------------------------------
// ���������, ������������ ��� ��������� ����������� ������

var gliDataRowNmb_Begin = 4;                    // ����� ������, � ������� ���������� ������

var gliClnNmb_DocNmb                = 1;        // ����� �������, ��������������� ���� "����� ���"
var gliClnNmb_PID                   = 2;        // ����� �������, ��������������� ���� "PID ���"
var gliClnNmb_SetPID                = 3;        // ����� �������, ��������������� ���� "PID ������������"
var gliClnNmb_ProjectPID            = 4;        // ����� �������, ��������������� ���� "PID �������"
var gliClnNmb_MainPID               = 5;        // ����� �������, ��������������� ���� "PID ��"
var gliClnNmb_BuildSubObjCode       = 6;        // ����� �������, ��������������� ���� "��� ����������� �������������"
var gliClnNmb_SSOAlbumPartCipher    = 7;        // ����� �������, ��������������� ���� "���� ������� ������� ���"
var gliClnNmb_DogovorSMRNoDoc       = 8;        // ����� �������, ��������������� ���� "����� �������� ���"
var gliClnNmb_MCName                = 9;        // ����� �������, ��������������� ���� "������� ������������ ���"
var gliClnNmb_dCount                = 10;       // ����� �������, ��������������� ���� "����� �������� � ��.��"
var gliClnNmb_dCostNDS              = 11;       // ����� �������, ��������������� ���� "���� �� ��.�� � ���"
var gliClnNmb_ConsigneeOrgName      = 12;       // ����� �������, ��������������� ���� "���������������, ����������� ��������� (�����������)"
var gliClnNmb_ConsigneeMarPunktName = 13;       // ����� �������, ��������������� ���� "���������������, ����������� ��������� (����� ��������)"
var gliClnNmb_ConsigneePersonFIO    = 14;       // ����� �������, ��������������� ���� "���������������, ����������� ��������� (���������, ���. �� �������)"
var gliClnNmb_DeliveryModeName      = 15;       // ����� �������, ��������������� ���� "������ ��������"
var gliClnNmb_SupplyModeName        = 16;       // ����� �������, ��������������� ���� "��� ��������"
var gliClnNmb_IsDelRec              = 17;       // ����� �������, ��������������� ���� "������� �������� �������"
var gliClnNmb_ExecutorFIO           = 18;       // ����� �������, ��������������� ���� "���. ���������"
var gliClnNmb_DeliveryPeriod        = 19;       // ����� �������, ��������������� ���� "������ ��������"
var gliClnNmb_dCount2               = 20;       // ����� �������, ��������������� ���� "����� �������� � ���.��"
var gliClnNmb_dMainCost             = 21;       // ����� �������, ��������������� ���� "���� ���������� ��������"
var gliClnNmb_MCType                = 22;       // ����� �������, ��������������� ���� "��� ���"

//------------------------------------------------------------------------------
//

// �������
var goExcel;                                    // API-������ Excel
var goWorkBook;                                 // ������ WorkBook
var goXMLFileGAL;                               // DOM-�������� ��� ������������ XML-����� �
                                                //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_Dogovor;             // Handle ����-��������� "��������"
var gliXMLFileGAL_Node_Clt_KatStroy;            // Handle ����-��������� "������� �������������"
var gliXMLFileGAL_Node_Clt_MC;                  // Handle ����-��������� "�����������"
var gliXMLFileGAL_Node_Clt_MoveCell;            // Handle ����-��������� "������� ���������� �������"
var gliXMLFileGAL_Node_Clt_OCSDoc;              // Handle ����-��������� "����������� �������� ������������"
var gliXMLFileGAL_Node_Clt_OCSPos;              // Handle ����-��������� "������� ���"
var gliXMLFileGAL_Node_Clt_Person;              // Handle ����-��������� "����������"
var gliXMLFileGAL_Node_Clt_UKSConsignee;        // Handle ����-��������� "���������������, ����������� ���������"
var gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart;     // Handle ����-��������� "������� ������� ���"
var gliXMLFileGAL_Node_Clt_UKSSupplyMode;       // Handle ����-��������� "���� ��������"

//
var gliGlobID;                                  // ���������� ������������� ��������

// ������ ��� ���������� ���������
var gliDogovorCount = 0;                        // ���������� ���������
var gsaDogovor_NoDoc = new Array();             // ������ ��� ���������� �������� ���� "����� ���������"

// ������ ��� ���������� �������� �������������
var gliKatStroyCount = 0;                       // ���������� �������� �������������
var gsaKatStroy_Code = new Array();             // ������ ��� ���������� �������� ���� "���"

// ������ ��� ���������� ������������
var gliMCCount = 0;                             // ���������� ������������
var gsaMC_Name = new Array();                   // ������ ��� ���������� �������� ���� "������������"

// ������ ��� ���������� ������ ���������� �������
var gliMoveCellCount = 0;                       // ���������� ������ ���������� �������
var gsaMoveCell_Name = new Array();             // ������ ��� ���������� �������� ���� "������������"

// ������ ��� ���������� ���
var gliOCSDocCount = 0;                         // ���������� ���
var gsaOCSDoc_DocNmb = new Array();             // ������ ��� ���������� �������� ���� "����� ���������"

// ������ ��� ���������� �����������
var gliPersonCount = 0;                         // ���������� �����������
var gsaPerson_FIO = new Array();                // ������ ��� ���������� �������� ���� "���"

// ������ ��� ���������� ����������������
var gliUKSConsigneeCount = 0;                   // ���������� ����������������
var gsaUKSConsignee_OrgName = new Array();      // ������ ��� ���������� �������� ���� "������������ �����������-���������������"
var gsaUKSConsignee_MarPunktName = new Array(); // ������ ��� ���������� �������� ���� "������������ ������ ��������"
var gsaUKSConsignee_PersonFIO = new Array();    // ������ ��� ���������� �������� ���� "��� ����������, ���. �� �������"

// ������ ��� ���������� �������� ������� ���
var gliUKSSSOAlbumPartCount = 0;                // ���������� �������� ������� ���
var gsaUKSSSOAlbumPart_Cipher = new Array();    // ������ ��� ���������� �������� ���� "����"  

// ������ ��� ���������� ����� ��������
var gliUKSSupplyModeCount = 0;                  // ���������� ����� ��������
var gsaUKSSupplyMode_Name = new Array();        // ������ ��� ���������� �������� ���� "������������"

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ��������� ��������������� ��������
// 
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������:
//   asNoDoc - ����� ���������
// ���������:
//   ������������� �������

function GetObjID_Dogovor(asNoDoc)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ������� �������������:
//   asCode - ���
// ���������:
//   ������������� �������

function GetObjID_KatStroy(asCode)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� �����������:
//   asName - ������������
// ���������:
//   ������������� �������

function GetObjID_MC(asName)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ������� ���������� �������:
//   asName - ������������
// ���������:
//   ������������� �������

function GetObjID_MoveCell(asName)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ���:
//   asDocNmb - ����� ���������
// ���������:
//   ������������� �������

function GetObjID_OCSDoc(asDocNmb)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ����������:
//   asFIO - ���
// ���������:
//   ������������� �������

function GetObjID_Person(asFIO)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ���������������:
//   asOrgName      - ������������ �����������-���������������
//   asMarPunktName - ������������ ������ ��������
//   asPersonFIO    - ��� ����������, ���. �� �������
// ���������:
//   ������������� �������

function GetObjID_UKSConsignee(asOrgName, asMarPunktName, asPersonFIO)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ������� ������� ���:
//   asCipher - ����
// ���������:
//   ������������� �������

function GetObjID_UKSSSOAlbumPart(asCipher)
{

// ��������� ����������
var i; // ���������� �����

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
// ��������� �������������� ������� ��� ���� ��������:
//   asName - ������������
// ���������:
//   ������������� �������

function GetObjID_UKSSupplyMode(asName)
{

// ��������� ����������
var i; // ���������� �����

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
// ������� ������� ��� ������ � ������ XML-�����
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ���������� ���� <Collection> (��������� ��������) � XML-���� � ������� ���������-ERP
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asCaption     - �������� �������� "caption" ��� ������������ ���� <Collection>
//   asName        - �������� �������� "name" ��� ������������ ���� <Collection>
//   asChildTags   - �������� �������� "child_tags" ��� ������������ ���� <Collection>

function XMLFileGAL_Add_Tag_Collection(aliParentNode, asCaption, asName, asChildTags)
{

// ��������� ����������
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  vliNode    = goXMLFileGAL.createElement('Collection');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'caption', asCaption);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'name', asName);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'child_tags', asChildTags);

  return(vliNodeAdd);
} // function XMLFileGAL_Add_Tag_Collection

//------------------------------------------------------------------------------
// ���������� ���� <Object> (������) � XML-���� � ������� ���������-ERP
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asName        - �������� �������� "name" ��� ������������ ���� <Object>
//   asClassId     - �������� �������� "class_id" ��� ������������ ���� <Object>
//   asId          - �������� �������� "id" ��� ������������ ���� <Object>

function XMLFileGAL_Add_Tag_Object(aliParentNode, asName, asClassId, asId)
{

// ��������� ����������
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  vliNode    = goXMLFileGAL.createElement('Object');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'name', asName);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'class_id', asClassId);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'id', asId);

  return(vliNodeAdd);
} // function XMLFileGAL_Add_Tag_Object

//------------------------------------------------------------------------------
// ���������� ���� <prop_value> (�������� ��������) � XML-���� � ������� ���������-ERP
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asPropName    - �������� �������� "prop_name" ��� ������������ ���� <prop_value>
//   asValue       - �������� �������� "value" ��� ������������ ���� <prop_value>
//   asRltClass    - �������� �������� "rlt_class" ��� ������������ ���� <prop_value>

function XMLFileGAL_Add_Tag_PropValue(aliParentNode, asPropName, asValue, asRltClass)
{

// ��������� ����������
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  vliNode    = goXMLFileGAL.createElement('prop_value');
  vliNodeAdd = aliParentNode.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'prop_name', asPropName);
  XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'value', asValue);
  if (asRltClass != '')
    XMLFileGAL_Add_TagAttribute(vliNodeAdd, 'rlt_class', asRltClass);

  return(vliNodeAdd);
} // function XMLFileGAL_Add_Tag_PropValue

//------------------------------------------------------------------------------
// ���������� ��������� � ���� � XML-���� � ������� ���������-ERP
// ���������:
//   aliNode - Handle ���� � DOM-���������, ��� �������� ����������� �������
//   asName  - ������������ ��������
//   asValue - �������� ��������

function XMLFileGAL_Add_TagAttribute(aliNode, asName, asValue)
{

// ��������� ����������
var vliAttr; // Handle ������������ �������� � DOM-���������

  vliAttr = goXMLFileGAL.createAttribute(asName);
  vliAttr.value = asValue;
  aliNode.attributes.setNamedItem(vliAttr);
} // function XMLFileGAL_Add_TagAttribute

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
// ���������� �������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asNoDoc       - ����� ��������

function XMLFileGAL_AddDogovor(abCheckExists, asID, asNoDoc)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Dogovor', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_Dogovor,
    asNoDoc,
    'Dogovor',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NoDoc', asNoDoc, '');

  return;
} // function XMLFileGAL_AddDogovor

//------------------------------------------------------------------------------
// ���������� ������� ������������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asCode        - ���

function XMLFileGAL_AddKatStroy(abCheckExists, asID, asCode)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KatStroy', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_KatStroy,
    asCode,
    'KatStroy',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');

  return;
} // function XMLFileGAL_AddKatStroy

//------------------------------------------------------------------------------
// ���������� ����������� � XML-���� � ������� ���������-ERP
// ���������: 
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMC(abCheckExists, asID, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vsName;                            //

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MC', asID))
      return(0);
  
  // �������� �������
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
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������', 
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', vsName, '');

  return(1);
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// ���������� ������� ���������� ������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������

function XMLFileGAL_AddMoveCell(abCheckExists, asID, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MoveCell', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_MoveCell,
    asName,
    'MoveCell',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return;
} // function XMLFileGAL_AddMoveCell

//------------------------------------------------------------------------------
// ���������� ����������� �������� ������������ � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asDocNmb      - ����� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddOCSDoc(abCheckExists, asID, asDocNmb)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OCSDoc', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_OCSDoc, 
    asDocNmb, 
    'OCSDoc', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������',
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DocNmb', asDocNmb, '');
  
  return(1);
} // function XMLFileGAL_AddOCSDoc

//------------------------------------------------------------------------------
// ���������� ������� ��� � XML-���� � ������� ���������-ERP
// ���������: 
//   abCheckExists    - ������� �������� ������������� �������
//   asID             - �������������
//   as�OCSDoc        - ������ �� ���
//   asPID            - PID ���
//   asSetPID         - PID ������������
//   asProjectPID     - PID �������
//   asMainPID        - PID ��
//   as�BuildSubObj   - ������ �� ���������� �������������
//   asCSSOAlbumPart  - ������ �� ������ ������� ���
//   asCDogovorSMR    - ������ �� ������� ���
//   asCMC            - ������ �� ��
//   asdCount         - ����� �������� � ��.��
//   asdCostNDS       - ���� �� ��.�� � ���
//   asCConsignee     - ������ �� ���������������
//   asCDeliveryMode  - ������ �� ������ ��������
//   asCSupplyMode    - ������ �� ��� ��������
//   asIsDelRec       - ������� �������� �������
//   asCExecutor      - ������ �� ���. ����������
//   asDeliveryMonth  - ����� ������� ��������
//   asDeliveryYear   - ��� ������� ��������
//   asdCount2        - ����� �������� � ���.��
//   asdMainCost      - ���� ���������� ��������
//   asMCType         - ��� ���
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddOCSPos(abCheckExists, asID, as�OCSDoc, asPID, asSetPID, asProjectPID,
  asMainPID, as�BuildSubObj, asCSSOAlbumPart, asCDogovorSMR, asCMC, asdCount, asdCostNDS,
  asCConsignee, asCDeliveryMode, asCSupplyMode, asIsDelRec, asCExecutor, asDeliveryMonth,
  asDeliveryYear, asdCount2, asdMainCost, asMCType)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vsName;                            //

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OCSPos', asID))
      return(0);
  
  // �������� �������
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
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������', 
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cOCSDoc'      , as�OCSDoc      , 'OCSDoc');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PID'          , asPID          , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'SetPID'       , asSetPID       , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ProjectPID'   , asProjectPID   , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MainPID'      , asMainPID      , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cBuildSubObj' , as�BuildSubObj , 'KatStroy');
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
// ���������� ���������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asFIO         - ��� ����������

function XMLFileGAL_AddPerson(abCheckExists, asID, asFIO)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Person', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_Person,
    asFIO,
    'Person',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'FIO', asFIO, '');

  return;
} // function XMLFileGAL_AddPerson

//------------------------------------------------------------------------------
// ���������� ��������������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists  - ������� �������� ������������� �������
//   asID           - �������������
//   asOrgName      - ������������ �����������-���������������
//   asMarPunktName - ������������ ������ ��������
//   asPersonFIO    - ��� ����������, ���. �� �������

function XMLFileGAL_AddUKSConsignee(abCheckExists, asID, asOrgName, asMarPunktName, asPersonFIO)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UKSConsignee', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UKSConsignee,
    asOrgName + ', ' + asMarPunktName + ', ' + asPersonFIO,
    'UKSConsignee',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'OrgName'     , asOrgName     , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MarPunktName', asMarPunktName, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PersonFIO'   , asPersonFIO   , '');

  return;
} // function XMLFileGAL_AddUKSConsignee

//------------------------------------------------------------------------------
// ���������� ������� ������� ��� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asCipher      - ����

function XMLFileGAL_AddUKSSSOAlbumPart(abCheckExists, asID, asCipher)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UKSSSOAlbumPart', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart,
    asCipher,
    'UKSSSOAlbumPart',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Cipher', asCipher, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asCipher, '');

  return;
} // function XMLFileGAL_AddUKSSSOAlbumPart

//------------------------------------------------------------------------------
// ���������� ���� �������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������

function XMLFileGAL_AddUKSSupplyMode(abCheckExists, asID, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UKSSupplyMode', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UKSSupplyMode,
    asName,
    'UKSSupplyMode',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return;
} // function XMLFileGAL_AddUKSSupplyMode

//------------------------------------------------------------------------------
// ��������� ������������ ������� �� ��� ��������������
// ���������:
//   asClassName - ������������ ������ �������
//   asObjId     - ������������� �������
// ���������:
//   ������������ ������� (���� ������ �� ������, �� '')

function XMLFileGAL_CheckExistsObj(asClassName, asObjId)
{

// ��������� ����������
var vbResult; // ��������� �������
var vliNodes; // Handle ��������� ��������� ��������

  vliNodes = goXMLFileGAL.selectNodes("//Object[@class_id = '" + asClassName + "'][@id = '" + asObjId + "']/@name");
  vbResult = (vliNodes.length > 0);

  return(vbResult);
} // function XMLFileGAL_CheckExistsObj

//------------------------------------------------------------------------------
// ��������������� ���������� DOM-��������� ��� �������� ������

function XMLFileGAL_Prepare()
{

// ��������� ����������
var vliProcessingInstruction; // Handle ����������� ����������� ���������� � DOM-���������
var vliComment;               // Handle ������������ ����������� � DOM-���������
var vliNode;                  // Handle ������������ ���� � DOM-���������
var vliNodeAdd;               // Handle ���������� ���� � DOM-��������� ����� ������������
var vliDataRoot;              // Handle ��������� ���� <Data_Root> � DOM-���������
var vliData;                  // Handle ���� <Data> � DOM-���������

  // ������������� ������� ����������
  goXMLFileGAL.setProperty('SelectionLanguage', 'XPath');
  goXMLFileGAL.async           = true;
  goXMLFileGAL.validateOnParse = true;

  // ���������
  vliProcessingInstruction = goXMLFileGAL.createProcessingInstruction(
    'xml',
    'version="1.0" encoding="windows-1251"');

  goXMLFileGAL.insertBefore(vliProcessingInstruction, goXMLFileGAL.childNodes.item(0));

  // �����������
  vliComment = goXMLFileGAL.createComment('Copyright ��� "���������� ���������"');
  goXMLFileGAL.appendChild(vliComment);

  // �������� ��������� ���� <Data_Root>
  vliNode = goXMLFileGAL.createElement('Data_Root');
  vliDataRoot = goXMLFileGAL.appendChild(vliNode);

  // �������� ���� <Descript>
  vliNode = goXMLFileGAL.createElement('Descript');
  vliDataRoot.appendChild(vliNode);

  XMLFileGAL_Add_TagAttribute(vliNode, 'ExpSet_Code', '0');

  XMLFileGAL_Add_TagAttribute(vliNode, 'ExpSet_Name',
    '���� ������� ����� �������� ����� �� �� Excel-�����');

  // �������� ���� <Data>
  vliNode = goXMLFileGAL.createElement('Data');
  vliData = vliDataRoot.appendChild(vliNode);

  //````````````````````````````````````````````````````````````````````````````
  // �������� �����-���������

  // �������� ���������� �������� ���������� �� ������� ������������
  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // ������������� ��������� ���� ������������
  SetVisualHeader('�������� �����-��������� \n   \n   ');

  // ��������
  gliXMLFileGAL_Node_Clt_Dogovor = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '��������',
    'Data.Dogovor',
    'Object');

  // ������� �������������
  gliXMLFileGAL_Node_Clt_KatStroy = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� �������������',
    'Data.KatStroy',
    'Object');

  // �����������
  gliXMLFileGAL_Node_Clt_MC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '�����������',
    'Data.MC',
    'Object');

  // ������� ���������� �������
  gliXMLFileGAL_Node_Clt_MoveCell = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ���������� �������',
    'Data.MoveCell',
    'Object');

  // ����������� �������� ������������
  gliXMLFileGAL_Node_Clt_OCSDoc = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '����������� �������� ������������',
    'Data.OCSDoc',
    'Object');

  // ������� ���
  gliXMLFileGAL_Node_Clt_OCSPos = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ���',
    'Data.OCSPos',
    'Object');

  // ����������
  gliXMLFileGAL_Node_Clt_Person = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '����������',
    'Data.Person',
    'Object');

  // ���������������, ����������� ���������
  gliXMLFileGAL_Node_Clt_UKSConsignee = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '���������������, ����������� ���������',
    'Data.UKSConsignee',
    'Object');

  // ������� ������� ���
  gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ������� ���',
    'Data.UKSSSOAlbumPart',
    'Object');

  // ���� ��������
  gliXMLFileGAL_Node_Clt_UKSSupplyMode = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '���� ��������',
    'Data.UKSSupplyMode',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// �������� ������ � XML-����

function XMLFileGAL_UnloadData()
{

// ��������� ����������
var i;                       //
var vsDocNmb;                // �������� ���� "����� ���"
var vsPID;                   // �������� ���� "PID ���"
var vsSetPID;                // �������� ���� "PID ������������"
var vsProjectPID;            // �������� ���� "PID �������"
var vsMainPID;               // �������� ���� "PID ��"
var vsBuildSubObjCode;       // �������� ���� "��� ����������� �������������"
var vsSSOAlbumPartCipher;    // �������� ���� "���� ������� ������� ���"
var vsDogovorSMRNoDoc;       // �������� ���� "����� �������� ���"
var vsMCName;                // �������� ���� "������� ������������ ���"
var vsdCount;                // �������� ���� "����� �������� � ��.��"
var vsdCostNDS;              // �������� ���� "���� �� ��.�� � ���"
var vsConsigneeOrgName;      // �������� ���� "���������������, ����������� ��������� (�����������)"
var vsConsigneeMarPunktName; // �������� ���� "���������������, ����������� ��������� (����� ��������)"
var vsConsigneePersonFIO;    // �������� ���� "���������������, ����������� ��������� (���������, ���. �� �������)"
var vsDeliveryModeName;      // �������� ���� "������ ��������"
var vsSupplyModeName;        // �������� ���� "��� ��������"
var vsIsDelRec;              // �������� ���� "������� �������� �������"
var vsExecutorFIO;           // �������� ���� "���. ���������"
var vsDeliveryPeriod;        // �������� ���� "������ ��������"
var vsdCount2;               // �������� ���� "����� �������� � ���.��"
var vsdMainCost;             // �������� ���� "���� ���������� ��������"
var vsMCType;                // �������� ���� "��� ���"
//
var vs�OCSDoc;
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

  // ���������������� �� ��������������� �������
  for (i = 1; i < goWorkBook.WorkSheets.Count; i++)
    if (goWorkBook.WorkSheets(i).Name == gsSheetName)
    {
      goWorkBook.WorkSheets(i).Activate;
      break;
    }

  if (goWorkBook.ActiveSheet.Name != gsSheetName)
  {
    Message(
      '� ����� "' + GetSrcFile() + '"\n' +
      '�� ������� ������� � ������ "' + gsSheetName + '".\n' +
      '������ ��� ������� ��� ����������� ������ �� ��������� ���� �������.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // �������� ������
  i = gliDataRowNmb_Begin;

  do
  {
    // �������� ���������� �������� ���������� �� ������� ������������
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
    if (vsMCType == '�')
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

    // ��������� �������������� ��� ���
    vs�OCSDoc = GetObjID_OCSDoc(vsDocNmb);

    // ��������� �������������� ��� ������� �������������
    vsCBuildSubObj = '0';

    if (vsBuildSubObjCode == null)
      vsBuildSubObjCode = '';

    if (vsBuildSubObjCode != '')
      vsCBuildSubObj = GetObjID_KatStroy(vsBuildSubObjCode);

    // ��������� �������������� ��� ������� ������� ���
    vsCSSOAlbumPart = '0';

    if (vsSSOAlbumPartCipher == null)
      vsSSOAlbumPartCipher = '';

    if (vsSSOAlbumPartCipher != '')
      vsCSSOAlbumPart = GetObjID_UKSSSOAlbumPart(vsSSOAlbumPartCipher);

    // ��������� �������������� ��� ��������
    vsCDogovorSMR = '0';

    if (vsDogovorSMRNoDoc == null)
      vsDogovorSMRNoDoc = '';

    if (vsDogovorSMRNoDoc != '')
      vsCDogovorSMR = GetObjID_Dogovor(vsDogovorSMRNoDoc);

    // ��������� �������������� ��� �����������
    vsCMC = '0';

    if (vsMCName == null)
      vsMCName = '';

    if (vsMCName != '')
      vsCMC = GetObjID_MC(vsMCName);

    // ��������� �������������� ��� ���������������
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

    // ��������� �������������� ��� ������� ��������
    vsCDeliveryMode = '0';

    if (vsDeliveryModeName == null)
      vsDeliveryModeName = '';

    if (vsDeliveryModeName != '')
      vsCDeliveryMode = GetObjID_MoveCell(vsDeliveryModeName);

    // ��������� �������������� ��� ���� ��������
    vsCSupplyMode = '0';

    if (vsSupplyModeName == null)
      vsSupplyModeName = '';

    if (vsSupplyModeName != '')
      vsCSupplyMode = GetObjID_UKSSupplyMode(vsSupplyModeName);

    // ��������� �������������� ��� �������������� �����������
    vsCExecutor = '0';

    if (vsExecutorFIO == null)
      vsExecutorFIO = '';

    if (vsExecutorFIO != '')
      vsCExecutor = GetObjID_Person(vsExecutorFIO);

    // ���������� ������� ���
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


    // ������������� ��������� ���� ������������
    SetVisualHeader('�������� ������ � XML-���� \n ���������� �����: ' + (i - gliDataRowNmb_Begin) + ' \n   ');

    i = i + 1;
  }
  while (true);
} // function XMLFileGAL_UnloadData

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������������ XML-����� � ������� ���������-ERP
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������������ XML-����� � ������� ���������-ERP

function CreateXMLFileGAL()
{
  // �������� Excel
  SetVisualHeader('�������� Excel \n   \n   ');

  goExcel = new ActiveXObject('Excel.Application');
  goExcel.Visible = false;
  goWorkBook = goExcel.Workbooks.Open(GetSrcFile());

  // �������� DOM-��������� ��� XML-����� � ������� ���������-ERP
  SetVisualHeader('�������� DOM-��������� \n   \n   ');
  goXMLFileGAL = new ActiveXObject('MSXML.DOMDocument');

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // ��������������� ���������� XML-����� � ������� ���������-ERP
  SetVisualHeader('��������������� ���������� XML-����� \n   \n   ');
  XMLFileGAL_Prepare();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // �������� ������ � XML-����
  SetVisualHeader('�������� ������ � XML-���� \n   \n   ');
  XMLFileGAL_UnloadData();

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // ���������� ������ � XML-����
  SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
  goXMLFileGAL.save(GetXMLFile());

  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // �������� Excel
  goWorkBook = null;
  goExcel.Quit();

  // ������������ ��������
  SetVisualHeader('������������ �������� \n   \n   ');

  goXMLFileGAL = null;
  goExcel = null;
} // function CreateXMLFileGAL

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
    '������������ XML-�����  \n' +
    '                                                                      ' +
    '                                                                      \n   ',
    50);

  // ������������� ���������� ����������
  gliGlobID = 1;

  // ������������ XML-�����
  CreateXMLFileGAL();

  // �������� ���� ������������
  StopVisual('', 0);
} // try

catch(grdEvent)
{
  // �������� ���� ������������
  StopVisual('MAIN => ' + grdEvent.message, vfWait);
} // catch(grdEvent)
