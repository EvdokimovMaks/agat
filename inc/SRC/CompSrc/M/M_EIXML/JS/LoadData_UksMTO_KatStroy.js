/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� �������� �������� ������������� �� Excel-�����     ##
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
var gsSheetName = 'KatStroy';        // ������������ Excel-�����, ����������� ������ ��� �������� �������������

//------------------------------------------------------------------------------
// ���������, ������������ ��� ��������� ����������� ������

var gliDataRowNmb_Begin = 4;         // ����� ������, � ������� ���������� ������

var gliClnNmb_Abbr       = 1;        // ����� �������, ��������������� ���� "������������ �������"
var gliClnNmb_Code       = 2;        // ����� �������, ��������������� ���� "��� �������"
var gliClnNmb_StroyCode  = 3;        // ����� �������, ��������������� ���� "��� �������"
var gliClnNmb_Name       = 4;        // ����� �������, ��������������� ���� "������"
var gliClnNmb_StroyName  = 5;        // ����� �������, ��������������� ���� "�������"
var gliClnNmb_Customer   = 6;        // ����� �������, ��������������� ���� "��������"
var gliClnNmb_Designer   = 7;        // ����� �������, ��������������� ���� "�������������"

//------------------------------------------------------------------------------
//

// �������
var goExcel;                         // API-������ Excel
var goWorkBook;                      // ������ WorkBook
var goXMLFileGAL;                    // DOM-�������� ��� ������������ XML-����� �
                                     //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_KatStroy; // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_Org;      // Handle ����-��������� "������� ���������"

//
var gliGlobID;                       // ���������� ������������� ��������

// ������ ��� ���������� �����������
var gliOrgCount = 0;                 // ���������� �����������
var gsaOrg_Name = new Array();       // ������ ��� ���������� �������� ���� "������������"

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
// ��������� �������������� ������� ��� �����������:
//   asName - ������������
// ���������:
//   ������������� �������

function GetObjID_Org(asName)
{

// ��������� ����������
var i; // ���������� �����

  for (i = 1; i <= gliOrgCount; i++)
    if (gsaOrg_Name[i] == asName)
      return(i);

  //
  gliOrgCount = gliOrgCount + 1;
  gsaOrg_Name[gliOrgCount] = asName;

  XMLFileGAL_AddOrg(false, gliOrgCount, asName);
  
  return(gliOrgCount);
} // function GetObjID_Org

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
// ���������� ������� ������������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asCode        - ���
//   asName        - ������������
//   asAbbr        - ������������
//   asCStroy      - ������ �� �������
//   asCDesigner   - ������ �� �����������-�������������
//   asCCustomer   - ������ �� �����������-��������

function XMLFileGAL_AddKatStroy(abCheckExists, asID, asCode, asName, asAbbr, asCStroy, asCDesigner, asCCustomer)
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
    asName,
    'KatStroy',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'  , asCode  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr'  , asAbbr  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cStroy', asCStroy, 'KatStroy');

  if (asCDesigner != null)
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDesigner', asCDesigner, 'Org');

  if (asCCustomer != null)
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cCustomer', asCCustomer, 'Org');

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

function XMLFileGAL_AddOrg(abCheckExists, asID, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Org', asID))
      return(0);

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_Org,
    asName,
    'Org',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return(1);
} // function XMLFileGAL_AddOrg

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

  // �������� ���������� �������� ���������� �� ������� �����������
  if (!nNextVisual(0))
    throw new Error(10003, 'USER_ABORT');

  // ������������� ��������� ���� ������������
  SetVisualHeader('�������� �����-��������� \n   \n   ');

  // ������� �������������
  gliXMLFileGAL_Node_Clt_KatStroy = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� �������������',
    'Data.KatStroy',
    'Object');

  // �����������
  gliXMLFileGAL_Node_Clt_Org = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '�����������',
    'Data.Org',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// �������� ������ � XML-����

function XMLFileGAL_UnloadData()
{

// ��������� ����������
var i;             //
var vsAbbr;        // �������� ���� "������������ �������"
var vsCode;        // �������� ���� "��� �������"
var vsStroyCode;   // �������� ���� "��� �������"
var vsName;        // �������� ���� "������"
var vsStroyName;   // �������� ���� "�������"
var vsCustomer;    // �������� ���� "��������"
var vsDesigner;    // �������� ���� "�������������"
var vsCustomer_ID; // 
var vsDesigner_ID; // 

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
      '������ ��� �������� ������������� ����������� ������ �� ��������� ���� �������.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // �������� ������
  i = gliDataRowNmb_Begin;

  do
  {
    // �������� ���������� �������� ���������� �� ������� ������������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsAbbr       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Abbr).Value;       
    vsCode       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Code).Value;       
    vsStroyCode  = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_StroyCode).Value;  
    vsName       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Name).Value;
    vsStroyName  = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_StroyName).Value;  
    vsCustomer   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Customer).Value;
    vsDesigner   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Designer).Value;   

    if (
      (vsName == '') ||
      (vsName == null))
      break;

    //
    vsCode = vsCode.replace(/^\s+/,'').replace(/\s+$/,'');
    vsStroyCode = vsStroyCode.replace(/^\s+/,'').replace(/\s+$/,'');
    vsAbbr = vsAbbr.substring(0, 20);

    // ��������� �������������� ��� ����������� "��������"
    vsCustomer_ID = '0';
    if (vsCustomer == null)
      vsCustomer = '';

    if (vsCustomer != '')
      vsCustomer_ID = GetObjID_Org(vsCustomer);

    // ��������� �������������� ��� ����������� "�������������"
    vsDesigner_ID = '0';
    if (vsDesigner == null)
      vsDesigner = '';

    if (vsDesigner != '')
      vsDesigner_ID = GetObjID_Org(vsDesigner);

    // ���������� ������� "�������"
    XMLFileGAL_AddKatStroy(true, vsStroyCode, vsStroyCode, vsStroyName, '', '0', null, null);

    //
    gliGlobID = gliGlobID + 1;

    // ���������� �������
    XMLFileGAL_AddKatStroy(false, vsCode, vsCode, vsName, vsAbbr, vsStroyCode, vsDesigner_ID, vsCustomer_ID);

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
