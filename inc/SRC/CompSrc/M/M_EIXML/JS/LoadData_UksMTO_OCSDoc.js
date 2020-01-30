/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� �������� ���������� ��� �� Excel-�����             ##
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
var gsSheetName = 'OCSDoc';          // ������������ Excel-�����, ����������� ������ ��� ���

//------------------------------------------------------------------------------
// ���������, ������������ ��� ��������� ����������� ������

var gliDataRowNmb_Begin = 4;         // ����� ������, � ������� ���������� ������

var gliClnNmb_DocNmb   = 1;          // ����� �������, ��������������� ���� "����� ���"
var gliClnNmb_BuildObj = 2;          // ����� �������, ��������������� ���� "��� ������� �������������"

//------------------------------------------------------------------------------
//

// �������
var goExcel;                         // API-������ Excel
var goWorkBook;                      // ������ WorkBook
var goXMLFileGAL;                    // DOM-�������� ��� ������������ XML-����� �
                                     //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_CESDoc;   // Handle ����-��������� "��������-������� ������������"
var gliXMLFileGAL_Node_Clt_KatStroy; // Handle ����-��������� "������� �������������"
var gliXMLFileGAL_Node_Clt_OCSDoc;   // Handle ����-��������� "����������� �������� ������������"

//
var gliGlobID;                       // ���������� ������������� ��������

// ������ ��� ���������� ���
var gliCESDocCount = 0;              // ���������� ���
var gsaCESDoc_NoDoc = new Array();   // ������ ��� ���������� �������� ���� "����� ���������"

// ������ ��� ���������� �������� �������������
var gliKatStroyCount = 0;            // ���������� �������� �������������
var gsaKatStroy_Code = new Array();  // ������ ��� ���������� �������� ���� "���"

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
// ���������� ����������� �������� ������������ � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asDocNmb      - ����� ���������
//   asCCESDoc     - ������ �� ���
//   asCBuildObj   - ������ �� ������ �������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddOCSDoc(abCheckExists, asID, asDocNmb, asCCESDoc, asCBuildObj)
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
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DocNmb'   , asDocNmb   , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cCESDoc'  , asCCESDoc  , 'CESDoc');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cBuildObj', asCBuildObj, 'KatStroy');
  
  return(1);
} // function XMLFileGAL_AddOCSDoc
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

  // ����������� �������� ������������
  gliXMLFileGAL_Node_Clt_OCSDoc = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '����������� �������� ������������',
    'Data.OCSDoc',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// �������� ������ � XML-����

function XMLFileGAL_UnloadData()
{

// ��������� ����������
var i;             //
var vsDocNmb;      // �������� ���� "����� ���"
var vsBuildObj;    // �������� ���� "������ �������������"
var vsCESDoc_ID;   // �������� ���� "����� ���"
var vsBuildObj_ID; // �������� ���� "������ �������������"

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
      '������ ��� ���������� ��� ����������� ������ �� ��������� ���� �������.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // �������� ������
  i = gliDataRowNmb_Begin;

  do
  {
    // �������� ���������� �������� ���������� �� ������� ������������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsDocNmb   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_DocNmb).Value;
    vsBuildObj = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_BuildObj).Value;

    if (
      (vsDocNmb == '') ||
      (vsDocNmb == null))
      break;

    // ��������� �������������� ��� ���
    vsCESDoc_ID = GetObjID_CESDoc(vsDocNmb);

    // ��������� �������������� ��� ������� �������������
    if (vsBuildObj == null)
      vsBuildObj = '';

    if (vsBuildObj != '')
      vsBuildObj_ID = GetObjID_KatStroy(vsBuildObj);

    // ���������� ���
    gliGlobID = gliGlobID + 1;
    XMLFileGAL_AddOCSDoc(true, gliGlobID, vsDocNmb, vsCESDoc_ID, vsBuildObj_ID);

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
