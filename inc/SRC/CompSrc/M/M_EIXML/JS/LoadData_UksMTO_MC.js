/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� �������� �� �� Excel-�����                         ##
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
var gsSheetName = 'KatMC';            // ������������ Excel-�����, ����������� ������ ��� ��

//------------------------------------------------------------------------------
// ���������, ������������ ��� ��������� �������� ������
// ���� �����-���� ���������� ���������� ����������������, �� ��� ���������� ������ 
// ���� ��������� �� ��������������� ������� ��������� JavaScript

var gliDataRowNmb_Begin = 4;          // ����� ������, � ������� ���������� ������

var gliClnNmb_Name        = 1;        // ����� �������, ��������������� ���� "������������"
var gliClnNmb_FName       = 2;        // ����� �������, ��������������� ���� "������ ������������"
var gliClnNmb_GroupMC     = 3;        // ����� �������, ��������������� ���� "�������� ������ ���"
var gliClnNmb_GroupMTR    = 15;       // ����� �������, ��������������� ���� "������ ���"
var gliClnNmb_Prizn       = 17;       // ����� �������, ��������������� ���� "�������"
var gliClnNmb_CT_Diameter = 4;        // ����� �������, ��������������� ���� "������� �����, D mm"
var gliClnNmb_CT_TS       = 5;        // ����� �������, ��������������� ���� "������� ������ �����, S mm"
var gliClnNmb_CT_ClassP   = 6;        // ����� �������, ��������������� ���� "����� ���������"
var gliClnNmb_CT_LevelK   = 7;        // ����� �������, ��������������� ���� "������� ��������"
var gliClnNmb_CT_RabD     = 8;        // ����� �������, ��������������� ���� "������� ��������"
var gliClnNmb_CT_MinTS    = 9;        // ����� �������, ��������������� ���� "����������� ����������� ������ ������������"
var gliClnNmb_CT_Sejs     = 10;       // ����� �������, ��������������� ���� "������������, ������"
var gliClnNmb_CT_TipIz    = 11;       // ����� �������, ��������������� ���� "��� ��������"
var gliClnNmb_CT_TIz      = 12;       // ����� �������, ��������������� ���� "������� ��������, ��"
var gliClnNmb_TipMarka    = 13;       // ����� �������, ��������������� ���� "���, �����"
var gliClnNmb_EdAbbr      = 14;       // ����� �������, ��������������� ���� "��.���."
var gliClnNmb_Ed2Abbr     = 18;       // ����� �������, ��������������� ���� "���.�������"

var gsMaskMC_TP_Name = '������� ���������';                // ������������ ������� �� ��� ������� ���������
var gsGrpAn_TP_Name  = '�������������� ������� ���������'; // ������������ ������ �������� ��� ������� ���������

//
var gsKAU_GroupMTR = '10009';         // ��� ��������� "������ ���"
var gsKAUName_GroupMTR = '������ ���';

// ���������� ������ �������� � ������ �������� ��� ������� ���������
var gsAnNmb_CT_Diameter = '1';        // ���������� ����� ��������� "������� �����, D mm"
var gsAnNmb_CT_TS       = '2';        // ���������� ����� ��������� "������� ������ �����, S mm"
var gsAnNmb_CT_ClassP   = '3';        // ���������� ����� ��������� "����� ���������"
var gsAnNmb_CT_LevelK   = '4';        // ���������� ����� ��������� "������� ��������"
var gsAnNmb_CT_RabD     = '5';        // ���������� ����� ��������� "������� ��������"
var gsAnNmb_CT_MinTS    = '6';        // ���������� ����� ��������� "����������� ����������� ������ ������������"
var gsAnNmb_CT_Sejs     = '7';        // ���������� ����� ��������� "������������, ������"
var gsAnNmb_CT_TipIz    = '8';        // ���������� ����� ��������� "��� ��������"
var gsAnNmb_CT_TIz      = '9';        // ���������� ����� ��������� "������� ��������, ��"

// ��� �������� � ������ �������� ��� ������� ���������
var gsKAU_CT_Diameter = '10000';      // ��� ��������� "������� �����, D mm"
var gsKAU_CT_TS       = '10001';      // ��� ��������� "������� ������ �����, S mm"
var gsKAU_CT_ClassP   = '10002';      // ��� ��������� "����� ���������"
var gsKAU_CT_LevelK   = '10003';      // ��� ��������� "������� ��������"
var gsKAU_CT_RabD     = '10004';      // ��� ��������� "������� ��������"
var gsKAU_CT_MinTS    = '10005';      // ��� ��������� "����������� ����������� ������ ������������"
var gsKAU_CT_Sejs     = '10006';      // ��� ��������� "������������, ������"
var gsKAU_CT_TipIz    = '10007';      // ��� ��������� "��� ��������"
var gsKAU_CT_TIz      = '10008';      // ��� ��������� "������� ��������, ��"

// ������������ �������� (��� �������������� ����������) � ������ �������� ��� ������� ���������
var gsKAUName_CT_Diameter = '������� �����, D mm';
var gsKAUName_CT_TS       = '������� ������ �����, S mm';
var gsKAUName_CT_ClassP   = '����� ���������';
var gsKAUName_CT_LevelK   = '������� ��������';
var gsKAUName_CT_RabD     = '������� ��������';
var gsKAUName_CT_MinTS    = '����������� ����������� ������ ������������';
var gsKAUName_CT_Sejs     = '������������, ������';
var gsKAUName_CT_TipIz    = '��� ��������';
var gsKAUName_CT_TIz      = '������� ��������, ��';

//------------------------------------------------------------------------------
//

// �������
var goExcel;                          // API-������ Excel
var goWorkBook;                       // ������ WorkBook
var goXMLFileGAL;                     // DOM-�������� ��� ������������ XML-����� �
                                      //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_DopEd;     // Handle ����-��������� "�������������� ������� ���������"
var gliXMLFileGAL_Node_Clt_ED;        // Handle ����-��������� "������� ���������"
var gliXMLFileGAL_Node_Clt_GrpAn;     // Handle ����-��������� "������ ��������"
var gliXMLFileGAL_Node_Clt_GrpMC;     // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_KAU;       // Handle ����-��������� "��� �������������� ����� (���������)"
var gliXMLFileGAL_Node_Clt_MaskMC;    // Handle ����-��������� "������� ��"
var gliXMLFileGAL_Node_Clt_MC;        // Handle ����-��������� "�����������"
var gliXMLFileGAL_Node_Clt_OtpEd;     // Handle ����-��������� "��������� ������� ���������"
var gliXMLFileGAL_Node_Clt_UserAn;    // Handle ����-��������� "���������������� ���������"

//
var gliGlobID;                        // ���������� ������������� ��������

// ������ ��� ���������� �������������� ������ ���������
var gliDopEdCount = 0;                // ���������� �������������� ������ ���������
var gsaDopEd_ShortName = new Array(); // ������ ��� ���������� �������� ���� "����������� ������������"

// ������ ��� ���������� ������ ���������
var gliEdCount = 0;                   // ���������� ������ ���������
var gsaEd_Abbr = new Array();         // ������ ��� ���������� �������� ���� "������������"

// ������ ��� ���������� ����� ������������
var gliGrpMCCount = 0;                // ���������� ����� ������������
var gsaGrpMC_Name = new Array();      // ������ ��� ���������� �������� ���� "������������"

// ������ ��� ���������� ���������������� ��������
var gliUserAnCount = 0;               // ���������� ���������������� ��������
var gsaUserAn_KodGrKau = new Array(); // ������ ��� ���������� �������� ���� "���"
var gsaUserAn_Name     = new Array(); // ������ ��� ���������� �������� ���� "������������"

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
// ��������� �������������� ������� ��� �������������� ������� ���������:
//   asShortName - ����������� ������������
// ���������:
//   ������������� �������

function GetObjID_DopEd(asShortName)
{

// ��������� ����������
var i; // ���������� �����

  for (i = 1; i <= gliDopEdCount; i++)
    if (gsaDopEd_ShortName[i] == asShortName)
      return(i);

  //
  gliDopEdCount = gliDopEdCount + 1;
  gsaDopEd_ShortName[gliDopEdCount] = asShortName;

  XMLFileGAL_AddDopEd(false, gliDopEdCount, asShortName);

  return(gliDopEdCount);
} // function GetObjID_DopEd

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

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ������ ��:
//   asName - ������������
// ���������:
//   ������������� �������

function GetObjID_GrpMC(asName)
{

// ��������� ����������
var i; // ���������� �����

  for (i = 1; i <= gliGrpMCCount; i++)
    if (gsaGrpMC_Name[i] == asName)
      return(i);

  //
  gliGrpMCCount = gliGrpMCCount + 1;
  gsaGrpMC_Name[gliGrpMCCount] = asName;

  XMLFileGAL_AddGrpMC(false, gliGrpMCCount, asName);
  
  return(gliGrpMCCount);
} // function GetObjID_GrpMC

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ���������������� ���������:
//   asKodGrKau - ���
//   asName     - ������������
// ���������:
//   ������������� �������

function GetObjID_UserAn(asKodGrKau, asName)
{

// ��������� ����������
var i; // ���������� �����

  for (i = 1; i <= gliUserAnCount; i++)
    if (
      (gsaUserAn_KodGrKau[i] == asKodGrKau) &&
      (gsaUserAn_Name[i]     == asName))
      return(i);

  //
  gliUserAnCount = gliUserAnCount + 1;
  gsaUserAn_KodGrKau[gliUserAnCount] = asKodGrKau;
  gsaUserAn_Name[gliUserAnCount]     = asName;

  XMLFileGAL_AddUserAn(false, gliUserAnCount, asKodGrKau, asName, asName);
  
  return(gliUserAnCount);
} // function GetObjID_UserAn

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
// ���������� �������������� ������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asShortName   - ����������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddDopEd(abCheckExists, asID, asShortName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('DopEd', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_DopEd, 
    asShortName, 
    'DopEd', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������',
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'     , asShortName, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ShortName', asShortName, '');
  
  return(1);
} // function XMLFileGAL_AddDopEd

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
// ���������� ������ �������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddGrpAn(abCheckExists, asID, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('GrpAn', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_GrpAn, 
    asName, 
    'GrpAn', 
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
} // function XMLFileGAL_AddGrpAn

//------------------------------------------------------------------------------
// ���������� ������ �� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������

function XMLFileGAL_AddGrpMC(abCheckExists, asID, asName)
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
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

  return;
} // function XMLFileGAL_AddGrpMC

//------------------------------------------------------------------------------
// ���������� ���� �������������� ����� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asKodGroup    - ������������� ��� ���������
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddKAU(abCheckExists, asID, asKodGroup, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KAU', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_KAU, 
    asName, 
    'KAU', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������',
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'KodGroup', asKodGroup, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName, '');
  
  return(1);
} // function XMLFileGAL_AddKAU

//------------------------------------------------------------------------------
// ���������� ������� �� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMaskMC(abCheckExists, asID, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MaskMC', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_MaskMC, 
    asName, 
    'MaskMC', 
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
} // function XMLFileGAL_AddMaskMC

//------------------------------------------------------------------------------
// ���������� ����������� � XML-���� � ������� ���������-ERP
// ���������: 
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
//   asFName       - ������ ������������
//   asGroupMC     - �������� ������ ���
//   asGroupMTR    - ������ ���
//   asPrizn       - �������
//   asCT_Diameter - ������� �����, D mm
//   asCT_TS       - ������� ������ �����, S mm
//   asCT_ClassP   - ����� ���������
//   asCT_LevelK   - ������� ��������
//   asCT_RabD     - ������� ��������
//   asCT_MinTS    - ����������� ����������� ������ ������������
//   asCT_Sejs     - ������������, ������
//   asCT_TipIz    - ��� ��������
//   asCT_TIz      - ������� ��������, ��
//   asTipMarka    - ���, �����
//   asEdID        - ��.���.
//   asEd2ID       - ���.�������
//   asEd2Name     - ���.������� (y������������)
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMC(abCheckExists, asID, asName, asFName, asGroupMC, asGroupMTR, 
  asPrizn, asCT_Diameter, asCT_TS, asCT_ClassP, asCT_LevelK, asCT_RabD, asCT_MinTS, asCT_Sejs,
  asCT_TipIz, asCT_TIz, asTipMarka, asEdID, asEd2ID, asEd2Name)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;                // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues;        // Handle ����-��������� "�������� �������"
var vsName;                                   //
var vliNode;                                  //
var vliXMLFileGAL_DopEdNode_Clt_Object;       // Handle ����-��������� "�������������� ������� ���������"
var vliXMLFileGAL_DopEdNode_Object;           // Handle ����-������� ��� ���
var vliXMLFileGAL_DopEdNode_Clt_PropValues;   // Handle ����-��������� "�������� �������" ��� ���
var vliXMLFileGAL_KauReffNode_Clt_Object;     // Handle ����-��������� "������� ���������"
var vliXMLFileGAL_KauReffNode_Object;         // Handle ����-������� ��� ������� ���������
var vliXMLFileGAL_KauReffNode_Clt_PropValues; // Handle ����-��������� "�������� �������" ��� ������� ���������
//
var vsCT_Diameter_ID;                         //
var vsCT_TS_ID;                               //
var vsCT_ClassP_ID;                           //
var vsCT_LevelK_ID;                           //
var vsCT_RabD_ID;                             //
var vsCT_MinTS_ID;                            //
var vsCT_Sejs_ID;                             //
var vsCT_TipIz_ID;                            //
var vsCT_TIz_ID;                              //

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
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , vsName    , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Obozn'   , asTipMarka, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'     , asEdID    , 'ED');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cGroupMC', asGroupMC , 'GrpMC');

  // ��������� �������������� ������� ��� ������� ���������
  if (
    (asPrizn != null) &&
    (asPrizn != ''))
  {
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMaskMC', '1', 'MaskMC');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cSloj'  , '1', 'GrpAn');

    //
    vsCT_Diameter_ID = '0';
    vsCT_TS_ID       = '0';
    vsCT_ClassP_ID   = '0';
    vsCT_LevelK_ID   = '0';
    vsCT_RabD_ID     = '0';
    vsCT_MinTS_ID    = '0';
    vsCT_Sejs_ID     = '0';
    vsCT_TipIz_ID    = '0';
    vsCT_TIz_ID      = '0';

    if ((asCT_Diameter != null) && (asCT_Diameter != ''))
      vsCT_Diameter_ID = GetObjID_UserAn(gsKAU_CT_Diameter, asCT_Diameter);

    if ((asCT_TS != null) && (asCT_TS != ''))
      vsCT_TS_ID = GetObjID_UserAn(gsKAU_CT_TS, asCT_TS);

    if ((asCT_ClassP != null) && (asCT_ClassP != ''))
      vsCT_ClassP_ID = GetObjID_UserAn(gsKAU_CT_ClassP, asCT_ClassP);

    if ((asCT_LevelK != null) && (asCT_LevelK != ''))
      vsCT_LevelK_ID = GetObjID_UserAn(gsKAU_CT_LevelK, asCT_LevelK);

    if ((asCT_RabD != null) && (asCT_RabD != ''))
      vsCT_RabD_ID = GetObjID_UserAn(gsKAU_CT_RabD, asCT_RabD);

    if ((asCT_MinTS != null) && (asCT_MinTS != ''))
      vsCT_MinTS_ID = GetObjID_UserAn(gsKAU_CT_MinTS, asCT_MinTS);

    if ((asCT_Sejs != null) && (asCT_Sejs != ''))
      vsCT_Sejs_ID = GetObjID_UserAn(gsKAU_CT_Sejs, asCT_Sejs);

    if ((asCT_TipIz != null) && (asCT_TipIz != ''))
      vsCT_TipIz_ID = GetObjID_UserAn(gsKAU_CT_TipIz, asCT_TipIz);

    if ((asCT_TIz != null) && (asCT_TIz != ''))
      vsCT_TIz_ID = GetObjID_UserAn(gsKAU_CT_TIz, asCT_TIz);

    //
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_Diameter + ']', vsCT_Diameter_ID, 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_TS       + ']', vsCT_TS_ID      , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_ClassP   + ']', vsCT_ClassP_ID  , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_LevelK   + ']', vsCT_LevelK_ID  , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_RabD     + ']', vsCT_RabD_ID    , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_MinTS    + ']', vsCT_MinTS_ID   , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_Sejs     + ']', vsCT_Sejs_ID    , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_TipIz    + ']', vsCT_TipIz_ID   , 'UserAn');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAnalit[' + gsAnNmb_CT_TIz      + ']', vsCT_TIz_ID     , 'UserAn');
  } // if (...

  vliNode = XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Remark', '(MEMO)', '');
  XMLFileGAL_Add_TagCDataSection(vliNode, asFName);

  // ���������� �������������� ������� ��������� ��� ��
  if (asEd2ID != '0')
  {
    vliXMLFileGAL_DopEdNode_Clt_Object = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_Node_Object, 
      'Data.SpDopEd_MC', 
      'SpDopEd_MC', 
      'Object');

    vliXMLFileGAL_DopEdNode_Object = XMLFileGAL_Add_Tag_Object(
      vliXMLFileGAL_DopEdNode_Clt_Object, 
      asEd2Name,
      'SpDopEd_MC', 
      asID);
    
    // �������� ��������� �������
    vliXMLFileGAL_DopEdNode_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_DopEdNode_Object, 
      '��������', 
      'Prop_Values', 
      'prop_value');

    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_DopEdNode_Clt_PropValues, 'cDopEd', asEd2ID, 'DopEd');
  } // if (asEd2ID != '0')

  // ���������� ������� ��������� ��� ��
  if (
    (asGroupMTR != null) &&
    (asGroupMTR != ''))
  {
    //
    vsGroupMTR_ID = GetObjID_UserAn(gsKAU_GroupMTR, asGroupMTR);

    vliXMLFileGAL_KauReffNode_Clt_Object = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_Node_Object, 
      'Data.KauReff_MC', 
      'KauReff_MC', 
      'Object');

    vliXMLFileGAL_KauReffNode_Object = XMLFileGAL_Add_Tag_Object(
      vliXMLFileGAL_KauReffNode_Clt_Object, 
      asEd2Name,
      'KauReff_MC', 
      asID);
    
    // �������� ��������� �������
    vliXMLFileGAL_KauReffNode_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
      vliXMLFileGAL_KauReffNode_Object, 
      '��������', 
      'Prop_Values', 
      'prop_value');
    
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_KauReffNode_Clt_PropValues, 'wKau', gsKAU_GroupMTR, 'KAU');
    XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_KauReffNode_Clt_PropValues, 'cKau', vsGroupMTR_ID , 'UserAn');
  } // if (...

  return(1);
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// ���������� ��������� ������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
//   asPrMC        - ������� ������������� ()
//   asCMCUsl      - ������ �� ��������� (�����������)
//   asKoef        - ����������� ��������� ������������ ������� ������� ���������
//   asAkt         - ������� �������� ��������� ������� ���������
//   asAbbr        - ����������� ������������
//   asCKatED      - ������ �� ������� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddOtpEd(abCheckExists, asID, asName, asPrMC, asCMCUsl, asKoef, 
  asAkt, asAbbr, asCKatED)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OtpEd', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_OtpEd, 
    asName, 
    'OtpEd', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������', 
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMC'  , asPrMC  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMCUsl', asCMCUsl, 'MC');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Koef'  , asKoef  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Akt'   , asAkt   , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr'  , asAbbr  , '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cKatED', asCKatED, 'ED');

  return(1);
} // function XMLFileGAL_AddOtpEd

//------------------------------------------------------------------------------
// ���������� ���������������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asKodGrKau    - ������������� ��� ���������
//   asKod         - ��� ���������
//   asName        - ������������ ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddUserAn(abCheckExists, asID, asKodGrKau, asCode, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('UserAn', asID))
      return(0);
  
  // �������� �������
  vliXMLFileGAL_Node_Object = XMLFileGAL_Add_Tag_Object(
    gliXMLFileGAL_Node_Clt_UserAn, 
    asName, 
    'UserAn', 
    asID);
    
  // �������� ��������� �������
  vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_Add_Tag_Collection(
    vliXMLFileGAL_Node_Object, 
    '��������',
    'Prop_Values', 
    'prop_value');

  // �������� �������� �������
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'KodGrKau', asKodGrKau, 'KAU');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'    , asCode, '');
  XMLFileGAL_Add_Tag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName, '');
  
  return(1);
} // function XMLFileGAL_AddUserAn

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

  // �������������� ������� ���������
  gliXMLFileGAL_Node_Clt_DopEd = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '�������������� ������� ���������',
    'Data.DopEd',
    'Object');

  // ������� ���������
  gliXMLFileGAL_Node_Clt_ED = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ���������',
    'Data.ED',
    'Object');

  // ������ ��������
  gliXMLFileGAL_Node_Clt_GrpAn = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������ ��������',
    'Data.GrpAn',
    'Object');

  // ������ ������������
  gliXMLFileGAL_Node_Clt_GrpMC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������ ������������',
    'Data.GrpMC',
    'Object');

  // ���� �������������� ����� (���������)
  gliXMLFileGAL_Node_Clt_KAU = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '���� �������������� ����� (���������)',
    'Data.KAU',
    'Object');

  // ������� ��
  gliXMLFileGAL_Node_Clt_MaskMC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '������� ��',
    'Data.MaskMC',
    'Object');

  // �����������
  gliXMLFileGAL_Node_Clt_MC = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '�����������',
    'Data.MC',
    'Object');

  // ��������� ������� ���������
  gliXMLFileGAL_Node_Clt_OtpEd = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '��������� ������� ���������',
    'Data.OtpEd',
    'Object');

  // ���������������� ���������
  gliXMLFileGAL_Node_Clt_UserAn = XMLFileGAL_Add_Tag_Collection(
    vliData,
    '���������������� ���������',
    'Data.UserAn',
    'Object');

  // ���������� ������� �� ��� ������� ���������
  XMLFileGAL_AddMaskMC(false, '1', gsMaskMC_TP_Name);

  // ���������� ������ �������� ��� ������� ���������
  XMLFileGAL_AddGrpAn(false, '1', gsGrpAn_TP_Name);

  // ���������� ��� ��������, ������������ � ������ �������� ��� ������� ���������
  XMLFileGAL_AddKAU(false, gsKAU_CT_Diameter, gsKAU_CT_Diameter, gsKAUName_CT_Diameter);
  XMLFileGAL_AddKAU(false, gsKAU_CT_TS      , gsKAU_CT_TS      , gsKAUName_CT_TS);
  XMLFileGAL_AddKAU(false, gsKAU_CT_ClassP  , gsKAU_CT_ClassP  , gsKAUName_CT_ClassP);
  XMLFileGAL_AddKAU(false, gsKAU_CT_LevelK  , gsKAU_CT_LevelK  , gsKAUName_CT_LevelK);
  XMLFileGAL_AddKAU(false, gsKAU_CT_RabD    , gsKAU_CT_RabD    , gsKAUName_CT_RabD);
  XMLFileGAL_AddKAU(false, gsKAU_CT_MinTS   , gsKAU_CT_MinTS   , gsKAUName_CT_MinTS);
  XMLFileGAL_AddKAU(false, gsKAU_CT_Sejs    , gsKAU_CT_Sejs    , gsKAUName_CT_Sejs);
  XMLFileGAL_AddKAU(false, gsKAU_CT_TipIz   , gsKAU_CT_TipIz   , gsKAUName_CT_TipIz);
  XMLFileGAL_AddKAU(false, gsKAU_CT_TIz     , gsKAU_CT_TIz     , gsKAUName_CT_TIz);
  XMLFileGAL_AddKAU(false, gsKAU_GroupMTR   , gsKAU_GroupMTR   , gsKAUName_GroupMTR);
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// �������� ������ � XML-����

function XMLFileGAL_UnloadData()
{

// ��������� ����������
var i;             //
var vsName;        // �������� ���� "������������"
var vsFName;       // �������� ���� "������ ������������"
var vsGroupMC;     // �������� ���� "�������� ������ ���"
var vsGroupMTR;    // �������� ���� "������ ���"
var vsPrizn;       // �������� ���� "�������"
var vsCT_Diameter; // �������� ���� "������� �����, D mm"
var vsCT_TS;       // �������� ���� "������� ������ �����, S mm"
var vsCT_ClassP;   // �������� ���� "����� ���������"
var vsCT_LevelK;   // �������� ���� "������� ��������"
var vsCT_RabD;     // �������� ���� "������� ��������"
var vsCT_MinTS;    // �������� ���� "����������� ����������� ������ ������������"
var vsCT_Sejs;     // �������� ���� "������������, ������"
var vsCT_TipIz;    // �������� ���� "��� ��������"
var vsCT_TIz;      // �������� ���� "������� ��������, ��"
var vsTipMarka;    // �������� ���� "���, �����"
var vsEdAbbr;      // �������� ���� "��.���."
var vsEd2Abbr;     // �������� ���� "���.�������"
//
var vsEd2Abbr_ID;
var vsEdAbbr_ID;
var vsGroupMC_ID;
//
var vsOtpEd_ID;     // ������������� ��������� ������� ���������
var vsOtpEd_Name;   // ������������ ��������� ������� ���������
var vsOtpEd_PrMC;   // ������� ������������� () ��� ��������� ������� ���������
var vsOtpEd_CMCUsl; // ������ �� ��������� (�����������) ��� ��������� ������� ���������
var vsOtpEd_Koef;   // ����������� ��������� ������������ ������� ������� ���������
var vsOtpEd_Akt;    // ������� �������� ��������� ������� ���������
var vsOtpEd_Abbr;   // ����������� ������������ ��������� ������� ���������
var vsOtpEd_CKatED; // ������ �� ������� ��������� ��� ��������� ������� ���������

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
      '������ ��� ������������ ����������� ������ �� ��������� ���� �������.');

    return;
  } // if (goWorkBook.ActiveSheet.Name != gsSheetName)

  // �������� ������
  i = gliDataRowNmb_Begin;

  do
  {
    // �������� ���������� �������� ���������� �� ������� ������������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    vsName        = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Name).Value;
    vsFName       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_FName).Value;
    vsGroupMC     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_GroupMC).Value;
    vsGroupMTR    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_GroupMTR).Value;
    vsPrizn       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Prizn).Value;
    vsCT_Diameter = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_Diameter).Value;
    vsCT_TS       = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_TS).Value;
    vsCT_ClassP   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_ClassP).Value;
    vsCT_LevelK   = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_LevelK).Value;
    vsCT_RabD     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_RabD).Value;
    vsCT_MinTS    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_MinTS).Value;
    vsCT_Sejs     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_Sejs).Value;
    vsCT_TipIz    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_TipIz).Value;
    vsCT_TIz      = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_CT_TIz).Value;
    vsTipMarka    = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_TipMarka).Value;
    vsEdAbbr      = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_EdAbbr).Value;
    vsEd2Abbr     = goWorkBook.ActiveSheet.Cells(i, gliClnNmb_Ed2Abbr).Value;

    if (
      (vsName == '') ||
      (vsName == null))
      break;

    vsName = vsName.replace(/^\s+/,'').replace(/\s+$/,'');

    // ��������� �������������� ��� �������������� ������� ���������
    vsEd2Abbr_ID = '0';
    if (vsEd2Abbr == null)
      vsEd2Abbr = '';

    if (vsEd2Abbr != '')
      vsEd2Abbr_ID = GetObjID_DopEd(vsEd2Abbr);

    // ��������� �������������� ��� ������� ���������
    vsEdAbbr_ID = '0';
    if (vsEdAbbr == null)
      vsEdAbbr = '';

    if (vsEdAbbr != '')
      vsEdAbbr_ID = GetObjID_ED(vsEdAbbr);

    // ��������� �������������� ��� ������ ��
    vsGroupMC_ID = '0';
    if (vsGroupMC == null)
      vsGroupMC = '';

    if (vsGroupMC != '')
      vsGroupMC_ID = GetObjID_GrpMC(vsGroupMC);

    // ���������� ��
    gliGlobID = gliGlobID + 1;

    XMLFileGAL_AddMC(
      false, 
      gliGlobID, 
      vsName, 
      vsFName, 
      vsGroupMC_ID, 
      vsGroupMTR, 
      vsPrizn,
      vsCT_Diameter,
      vsCT_TS,
      vsCT_ClassP,
      vsCT_LevelK,
      vsCT_RabD,
      vsCT_MinTS,
      vsCT_Sejs,
      vsCT_TipIz,
      vsCT_TIz,
      vsTipMarka,
      vsEdAbbr_ID,
      vsEd2Abbr_ID,
      vsEd2Abbr);

    if (gliGlobID > 100000)
      break;

    // ���������� ��������� ������� ���������
    if (vsEdAbbr != '')
    {
      vsOtpEd_ID     = gliGlobID;
      vsOtpEd_Name   = vsEdAbbr;
      vsOtpEd_PrMC   = '1';
      vsOtpEd_CMCUsl = gliGlobID;
      vsOtpEd_Koef   = '1';
      vsOtpEd_Akt    = '1';
      vsOtpEd_Abbr   = vsEdAbbr;
      vsOtpEd_CKatED = vsEdAbbr_ID;

      XMLFileGAL_AddOtpEd( 
        false, 
        vsOtpEd_ID, 
        vsOtpEd_Name, 
        vsOtpEd_PrMC, 
        vsOtpEd_CMCUsl, 
        vsOtpEd_Koef, 
        vsOtpEd_Akt, 
        vsOtpEd_Abbr, 
        vsOtpEd_CKatED);
    } // if (vsEdAbbr != '')

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
