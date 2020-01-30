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
var gsSheetName = 'SpCES';                   // ������������ Excel-�����, ����������� ������ ��� ������� ���

//------------------------------------------------------------------------------
// ���������, ������������ ��� ��������� ����������� ������

var gliDataRowNmb_Begin = 4;                 // ����� ������, � ������� ���������� ������

var gliClnNmb_NoDoc              = 1;        // ����� �������, ��������������� ���� "����� ���"
var gliClnNmb_KatStroyCode       = 4;        // ����� �������, ��������������� ���� "��� ����������� �������������"
var gliClnNmb_SSOAlbumPartCipher = 6;        // ����� �������, ��������������� ���� "���� ������� ������� ���"
var gliClnNmb_PID                = 7;        // ����� �������, ��������������� ���� "PID �������"
var gliClnNmb_Name               = 8;        // ����� �������, ��������������� ���� "������� ������������ ���"
var gliClnNmb_Kol                = 9;        // ����� �������, ��������������� ���� "����������"

//------------------------------------------------------------------------------
//

// �������
var goExcel;                                 // API-������ Excel
var goWorkBook;                              // ������ WorkBook
var goXMLFileGAL;                            // DOM-�������� ��� ������������ XML-����� �
                                             //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_CESDoc;           // Handle ����-��������� "��������-������� ������������"
var gliXMLFileGAL_Node_Clt_KatStroy;         // Handle ����-��������� "������� �������������"
var gliXMLFileGAL_Node_Clt_MC;               // Handle ����-��������� "�����������"
var gliXMLFileGAL_Node_Clt_SpCES;            // Handle ����-��������� "������� ���"
var gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart;  // Handle ����-��������� "������� ������� ���"

//
var gliGlobID;                               // ���������� ������������� ��������

// ������ ��� ���������� ���
var gliCESDocCount = 0;                      // ���������� ���
var gsaCESDoc_NoDoc = new Array();           // ������ ��� ���������� �������� ���� "����� ���������"

// ������ ��� ���������� �������� �������������
var gliKatStroyCount = 0;                    // ���������� �������� �������������
var gsaKatStroy_Code = new Array();          // ������ ��� ���������� �������� ���� "���"

// ������ ��� ���������� ������������
var gliMCCount = 0;                          // ���������� ������������
var gsaMC_Name = new Array();                // ������ ��� ���������� �������� ���� "������������"

// ������ ��� ���������� �������� ������� ���
var gliUKSSSOAlbumPartCount = 0;             // ���������� �������� ������� ���
var gsaUKSSSOAlbumPart_Cipher = new Array(); // ������ ��� ���������� �������� ���� "����"

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
// ��������� �������������� ������� ��� ���:
//   asNoDoc - ����� ���������
// ���������:
//   ������������� �������

function GetObjID_CESDoc(asNoDoc)
{

// ��������� ����������
var i; // ���������� �����

  for (i = 1; i <= gliCESDocCount; i++)
    if (gsaCESDoc_NoDoc[i] == asNoDoc)
      return(i);

  //
  gliCESDocCount = gliCESDocCount + 1;
  gsaCESDoc_NoDoc[gliCESDocCount] = asNoDoc;

  XMLFileGAL_AddCESDoc(false, gliCESDocCount, asNoDoc);
  
  return(gliCESDocCount);
} // function GetObjID_CESDoc

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
// ���������� ��������-������� ������������ � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asNoDoc       - ����� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddCESDoc(abCheckExists, asID, asNoDoc)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('CESDoc', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_CESDoc, 
    asNoDoc, 
    'CESDoc', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������',
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NoDoc', asNoDoc, '');
  
  return(1);
} // function XMLFileGAL_AddCESDoc

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
// ���������� ������� ��� � XML-���� � ������� ���������-ERP
// ���������: 
//   abCheckExists   - ������� �������� ������������� �������
//   asID            - �������������
//   as��ESDoc       - �������� ���� "������ �� ���"
//   as�KatStroy     - �������� ���� "������ �� ���������� �������������"
//   asCSSOAlbumPart - �������� ���� "������ �� ������ ������� ���"
//   asPID           - �������� ���� "PID �������"
//   asCMC           - �������� ���� "������ �� ��"
//   asName          - �������� ���� "������������"
//   asKol           - �������� ���� "����������"
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddSpCES(abCheckExists, asID, as��ESDoc, as�KatStroy, asCSSOAlbumPart,
 asPID, asCMC, asName, asKol)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vsName;                            //

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('SpCES', asID))
      return(0);
  
  // �������� �������
  vsName = 'PID ' + asPID + ', ' + asName;
  if (
    (vsName == null) || 
    (vsName == 0) || 
    (vsName == ''))
    vsName = '(id = ' + asID + ')';
  
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_SpCES, 
    vsName,
    'SpCES', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������', 
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cCESDoc'      , as��ESDoc      , 'CESDoc');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cKatStroy'    , as�KatStroy    , 'KatStroy');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cSSOAlbumPart', asCSSOAlbumPart, 'UKSSSOAlbumPart');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PID'          , asPID          , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMC'          , asCMC          , 'MC');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'         , asName         , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kol'          , asKol          , '');

  return(1);
} // function XMLFileGAL_AddSpCES

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

  // ��������-������� ������������
  gliXMLFileGAL_Node_Clt_CESDoc = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '��������-������� ������������',
    'Data.CESDoc',
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

  // ������� ���
  gliXMLFileGAL_Node_Clt_SpCES = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ���',
    'Data.SpCES',
    'Object');

  // ������� ������� ���
  gliXMLFileGAL_Node_Clt_UKSSSOAlbumPart = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ������� ���',
    'Data.UKSSSOAlbumPart',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// �������� ������ � XML-����

function XMLFileGAL_UnloadData()
{

// ��������� ����������
var i;                    //
var vsNoDoc;              // �������� ���� "����� ���"
var vsKatStroyCode;       // �������� ���� "��� ����������� �������������"
var vsSSOAlbumPartCipher; // �������� ���� "���� ������� ������� ���"
var vsPID;                // �������� ���� "PID �������"
var vsName;               // �������� ���� "������� ������������ ���"
var vsKol;                // �������� ���� "����������"
//
var vs��ESDoc;            // �������� ���� "������ �� ���"
var vs�KatStroy;          // �������� ���� "������ �� ���������� �������������"
var vsCSSOAlbumPart;      // �������� ���� "������ �� ������ ������� ���"
var vsCMC;                // �������� ���� "������ �� ��"

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

    vsNoDoc              = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_NoDoc).Value;
    vsKatStroyCode       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_KatStroyCode).Value;
    vsSSOAlbumPartCipher = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_SSOAlbumPartCipher).Value;
    vsPID                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_PID).Value;
    vsName               = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Name).Value;
    vsKol                = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Kol).Value;

    if (
      (vsNoDoc == '') ||
      (vsNoDoc == null))
      break;

    //
    vsKatStroyCode = vsKatStroyCode.replace(/^\s+/,'').replace(/\s+$/,'');

    //
    vsSSOAlbumPartCipher = vsSSOAlbumPartCipher.substring(0, 60);

    // ��������� �������������� ��� ���
    vs��ESDoc = GetObjID_CESDoc(vsNoDoc);

    // ��������� �������������� ��� ������� �������������
    if (vsKatStroyCode == null)
      vsKatStroyCode = '';

    if (vsKatStroyCode != '')
      vs�KatStroy = GetObjID_KatStroy(vsKatStroyCode);

    // ��������� �������������� ��� �����������
    if (vsName == null)
      vsName = '';

    if (vsName != '')
      vsCMC = GetObjID_MC(vsName);

    // ��������� �������������� ��� ������� ������� ���
    if (vsSSOAlbumPartCipher == null)
      vsSSOAlbumPartCipher = '';

    if (vsSSOAlbumPartCipher != '')
      vsCSSOAlbumPart = GetObjID_UKSSSOAlbumPart(vsSSOAlbumPartCipher);

    // ���������� ������� ���
    gliGlobID = gliGlobID + 1;

    XMLFileGAL_AddSpCES(
      false, 
      gliGlobID, 
      vs��ESDoc,
      vs�KatStroy,
      vsCSSOAlbumPart,
      vsPID,
      vsCMC,
      vsName,
      vsKol);

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
