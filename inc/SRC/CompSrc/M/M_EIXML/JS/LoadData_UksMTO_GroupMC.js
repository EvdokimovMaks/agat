/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� �������� ����� �� �� Excel-�����                   ##
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
var gsSheetName = 'GroupMC';      // ������������ Excel-�����, ����������� ������ ��� ����� ��

//------------------------------------------------------------------------------
// ���������, ������������ ��� ��������� ����������� ������

var gliDataRowNmb_Begin = 4;      // ����� ������, � ������� ���������� ������

var gliClnNmb_Kod    = 3;         // ����� �������, ��������������� ���� "���"
var gliClnNmb_Name   = 2;         // ����� �������, ��������������� ���� "������������"
var gliClnNmb_EdAbbr = 4;         // ����� �������, ��������������� ���� "������� ���������"

//------------------------------------------------------------------------------
//

// �������
var goExcel;                      // API-������ Excel
var goWorkBook;                   // ������ WorkBook
var goXMLFileGAL;                 // DOM-�������� ��� ������������ XML-����� �
                                  //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_GrpMC; // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_ED;    // Handle ����-��������� "������� ���������"

//
var gliGlobID;                    // ���������� ������������� ��������

// ������ ��� ���������� ������ ���������
var gliEdCount = 0;               // ���������� ������ ���������
var gsaEd_Abbr = new Array();     // ������ ��� ���������� �������� ���� "������������"

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
// ��������� �������������� ������� ��� ������� ���������:
//   asAbbr - ������������
// ���������:
//   ������������� �������

function GetObjID_ED(asAbbr)
{

// ��������� ����������
var i; // ���������� �����

  for (i = 1; i <= gliEdCount; i++)
    if (gsaEd_Abbr[i] == asAbbr)
      return(i);

  //
  gliEdCount = gliEdCount + 1;
  gsaEd_Abbr[gliEdCount] = asAbbr;

  XMLFileGAL_AddED(false, gliEdCount, asAbbr);
  
  return(gliEdCount);
} // function GetObjID_ED

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

//------------------------------------------------------------------------------
// ���������� ������ CDataSection � ���� � XML-���� � ������� ���������-ERP
// ���������:
//   aliNode - Handle ���� � DOM-���������, ��� �������� ����������� ������ CDataSection
//   asValue - �������� ��������

function XMLFileGAL_Add_TagCDataSection(aliNode, asValue)
{

// ��������� ����������
var vliCDATASection; // Handle ���������� ������ CDataSection � DOM-���������

  vliCDATASection = goXMLFileGAL.createCDATASection(asValue);
  aliNode.appendChild(vliCDATASection);
} // function XMLFileGAL_Add_TagCDataSection

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
// ���������� ������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asAbbr        - ����������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddED(abCheckExists, asID, asAbbr)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ED', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_ED, 
    asAbbr, 
    'ED', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������',
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asAbbr, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr', asAbbr, '');
  
  return(1);
} // function XMLFileGAL_AddED

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������ ������������" � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asKod         - ���
//   asName        - ������������
//   asCEd         - ������ �� ������� ���������

function XMLFileGAL_AddGrpMC(abCheckExists, asID, asKod, asName, asCEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('GrpMC', asID))
      return;

  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_GrpMC,
    asName,
    'GrpMC',
    asID);

  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object,
    '��������',
    'Prop_Values',
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod' , asKod , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'LKod', asKod.length, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED' , asCEd , 'ED');

  return;
} // function XMLFileGAL_AddGrpMC

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

  // ������ ������������
  gliXMLFileGAL_Node_Clt_GrpMC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������ ������������',
    'Data.GrpMC',
    'Object');

  // ������� ���������
  gliXMLFileGAL_Node_Clt_ED = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ���������',
    'Data.ED',
    'Object');
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// �������� ������ � XML-����

function XMLFileGAL_UnloadData()
{

// ��������� ����������
var i;           //
var vsKod;       //
var vsName;      //
var vsEdAbbr;    //
var vsEdAbbr_ID; //

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
      '������ ��� ����� �� ����������� ������ �� ��������� ���� �������.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // �������� ������
  i = gliDataRowNmb_Begin;

  do
  {
    // �������� ���������� �������� ���������� �� ������� ������������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsKod    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Kod).Value;
    vsName   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Name).Value;
    vsEdAbbr = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_EdAbbr).Value;

    if (
      (vsKod == '') ||
      (vsKod == null))
      break;

    // ��������� �������������� ��� ������� ���������
    vsEdAbbr_ID = '0';
    if (vsEdAbbr == null)
      vsEdAbbr = '';

    if (vsEdAbbr != '')
      vsEdAbbr_ID = GetObjID_ED(vsEdAbbr);

    //
    gliGlobID = gliGlobID + 1;

    XMLFileGAL_AddGrpMC(false, gliGlobID, vsKod, vsName, vsEdAbbr_ID);

    if (gliGlobID > 10000)
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
