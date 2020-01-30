/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� ������� ��������������-��������������� ����������  ##
## �� ��� "INTERMECH" � ��� "���������-ERP" � �������������� IMBaseAPI,       ##
## SearchAPI, TechCardAPI                                                     ##
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

//
var gwExportMode;                          // ����� �������� ������

// �������
var goIMBaseAPI;                           // API-������ IMBaseAPI
var goImDataBase;                          // API-������ ImDataBase
var goSearchAPI;                           // API-������ SearchAPI
var goTechCardAPI;                         // API-������ TechCardAPI
var goXMLFileGAL;                          // DOM-�������� ��� ������������ XML-����� �
                                           //   ������� ���������-ERP

// ������� ��� ��������� IMBase
var goIMBaseAPI_Catalog_TC_CEH;            // ����
var goIMBaseAPI_Catalog_TC_OBORUD;         // ������������
var goIMBaseAPI_Catalog_TC_OPER;           // ��������
var goIMBaseAPI_Catalog_CTL000055;         // ���� �����
var goIMBaseAPI_Catalog_TC_WORKERS;        // ������� �������������
var goIMBaseAPI_Catalog_CTL000001;         // ���������
var goIMBaseAPI_Catalog_TC_OSNAST;         // ��������

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_TypeMC;         // Handle ����-��������� "���� ������������"
var gliXMLFileGAL_Node_Clt_GrpMC;          // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_ED;             // Handle ����-��������� "������� ���������"
var gliXMLFileGAL_Node_Clt_Podr;           // Handle ����-��������� "�������������"
var gliXMLFileGAL_Node_Clt_EqGroup;        // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_MnfOper;        // Handle ����-��������� "��������������� ��������"
var gliXMLFileGAL_Node_Clt_KaWork;         // Handle ����-��������� "���� �����"
var gliXMLFileGAL_Node_Clt_Profession;     // Handle ����-��������� "���������"
var gliXMLFileGAL_Node_Clt_ObjRem;         // Handle ����-��������� "������� ������������"
var gliXMLFileGAL_Node_Clt_Person;         // Handle ����-��������� "����������"
var gliXMLFileGAL_Node_Clt_KatAbbr;        // Handle ����-��������� "������������ ����������"
var gliXMLFileGAL_Node_Clt_Params;         // Handle ����-��������� "��������� (������������ ���������)"
var gliXMLFileGAL_Node_Clt_MC;             // Handle ����-��������� "�����������"
var gliXMLFileGAL_Node_Clt_OtpEd;          // Handle ����-��������� "��������� ������� ���������"
var gliXMLFileGAL_Node_Clt_KatMarsh;       // Handle ����-��������� "���������� �����"
var gliXMLFileGAL_Node_Clt_Hdr_KS;         // Handle ����-��������� "��������������� ������������"
var gliXMLFileGAL_Node_Clt_AttrNam;        // Handle ����-��������� "������� ��������"

//
var gliGlobID;                             // ���������� ������������� ��������

// ���������� ��� ���������� ����� ������� ���������
var gsFieldName_Podr_KodCeh;               // ��� ���� "��� ����" � �������� "����"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
var gsFieldName_Podr_KodUch;               // ��� ���� "��� �������" � �������� "����"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
var gsFieldName_Podr_CehName;              // ��� ���� "������������ ����" � �������� "����"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
var gsFieldName_Podr_UchName;              // ��� ���� "������������ �������" � �������� "����"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
var gsFieldName_Podr_KodASUP;              // ��� ���� "��� ����" � �������� "����" (������������ ���
                                           //   ����������� ������ ����� � ��������)
//
var gsFieldName_Equip_Name;                // ��� ���� "������������" � �������� "������������"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
var gsFieldName_Equip_KodASUP;             // ��� ���� "��� ����" � �������� "������������"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
//
var gsFieldName_Oper_Kod;                  // ��� ���� "��� ��������" � �������� "��������"
                                           //   (������������ ��� ����������� ������ ����� � ��������)
//
var gsFieldName_KaWork_Code;               // ��� ���� "��� ���� �����" � �������� "���� �����"
                                           //   (������������ ��� ����������� ������ ����� � ��������)

// �������������� ������� ��������� ��� �������� ������������
var gsAttrNam_MC_VersionNmb_ID;            // ������������� �������� �������� "����� ������"
var gsAttrNam_MC_InvNmbDoc_ID;             // ������������� �������� �������� "����������� ����� ���������"
var gsAttrNam_MC_BuildCode_ID;             // ������������� �������� �������� "��� ����������"
var gsAttrNam_MC_Litera_ID;                // ������������� �������� �������� "������"

// �������������� ���������� ���� (������������ ���������) � XML-�����
// � ������� ���������-ERP
//var gliParameter_BaseParams_ID;            // ������� ��������� (INTERMECH)
var gliParameter_OperParams_ID;            // ��������� �����������
var gliOperParam_Razrjad_ID;               // �������� ����������� -> �������� ������
var gliOperParam_WrkCond_ID;               // �������� ����������� -> ��� ������� �����
var gliOperParam_OpRazr_ID;                // �������� ����������� -> ������ ��������
var gliOperParam_MechRate_ID;              // �������� ����������� -> ������� �����������
var gliOperParam_WrkDetQnt_ID;             // �������� ����������� -> ���������� ������������
                                           //   �������������� �������
var gliOperParam_PartVol_ID;               // �������� ����������� -> ����� ������������ ������
var gliOperParam_KOneTm_ID;                // �������� ����������� -> ����������� �������� �������
var gliOperParam_tmPreFin_ID;              // �������� ����������� -> ����� ���������������-
                                           //   ��������������� �������
var gliOperParam_tmServ_ID;                // �������� ����������� -> ����� ���������������� �������
var gliOperParam_tmOpMash_ID;              // �������� ����������� -> ����� ��������� ������� (��������)
var gliOperParam_tmOpMan_ID;               // �������� ����������� -> ����� ��������� ������� (������)
var gliOperParam_EdTime_ID;                // �������� ����������� -> ������� ��������� �������
var gliParameter_NormCategory_ID;          // ��������� ����
var gliParameter_MatNorm_ID;               // ������������ �����
var gliParameter_ToolsNorm_ID;             // ���������������� �����
var gliParameter_JobNorm_ID;               // �������� �����
var gliJobNormParam_tmOpMan_ID;            // �������� �������� ���� -> ����� ��������� ������� (������)
var gliJobNormParam_Razrjad_ID;            // �������� �������� ���� -> �������� ������
var gliJobNormParam_EdTime_ID;             // �������� �������� ���� -> ������� ��������� �������
var gliParameter_EqNorm_ID;                // ����� ������������� �����������
var gliEqNormParam_tmOpMash_ID;            // �������� ���� ������������� ������������ -> ����� ���������
                                           //   ������� (��������)
var gliEqNormParam_EdTime_ID;              // �������� ���� ������������� ������������ -> ������� ��������
                                           //   �������
//
var gliPodrCount;                          // ���������� �������������
var gsaFieldValue_Podr_ID;                 // ������ ��� ���������� ��������������� �������������
var gsaFieldValue_Podr_KodASUP;            // ������ ��� ���������� ����� ������������� (����)
var gsaFieldValue_Podr_KodCeh;             // ������ ��� ���������� ����� ����� ��� �������������
var gsaFieldValue_Podr_KodUch;             // ������ ��� ���������� ����� �������� ��� �������������
var gsaFieldValue_Podr_Name;               // ������ ��� ���������� ������������ �������������
var gsaFieldValue_Podr_cPodr;              // ������ ��� ���������� ������ �� ����������� �������������
                                           //   (��� �������������)
var gsaFieldValue_Podr_PrUch;              // ������ ��� ���������� �������� ���/������� (0/1) (��� �������������)

//
var gliEdCount;                            // ���������� ������ ��������
var gsaFieldValue_Ed_ID;                   // ������ ��� ���������� ��������������� ������ ��������
var gsaFieldValue_Ed_Abbr;                 // ������ ��� ���������� ����������� ������ ��������
var gsaFieldValue_Ed_Name;                 // ������ ��� ���������� ������������ ������ ��������

// ������� ��� ���������� ��������, ����������� � ���� "������� ���������"
var gliProcessCount_Ed;                // ���������� ��������� � �������
var gsaProcess_Ed_ImID;                // ������ ��� ���������� ������� "�� (��������)"
var gsaProcess_Ed_GalID;               // ������ ��� ���������� ������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "������ ������������"
var gliProcessCount_EqGroup;           // ���������� ��������� � �������
var gsaProcess_EqGroup_ImID;           // ������ ��� ���������� ������� "�� (��������)"
var gsaProcess_EqGroup_GalID;          // ������ ��� ���������� ������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "��� �����"
var gliProcessCount_KaWork;            // ���������� ��������� � �������
var gsaProcess_KaWork_ImID;            // ������ ��� ���������� "�� (��������)"
var gsaProcess_KaWork_GalID;           // ������ ��� ���������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "�����������"
var gliProcessCount_MC;                // ���������� ��������� � �������
var gsaProcess_MC_ImID;                // ������ ��� ���������� "�� (��������)"
var gsaProcess_MC_GalID;               // ������ ��� ���������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "��������������� ��������"
var gliProcessCount_MnfOper;           // ���������� ��������� � �������
var gsaProcess_MnfOper_ImID;           // ������ ��� ���������� "�� (��������)"
var gsaProcess_MnfOper_GalID;          // ������ ��� ���������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "������ �������"
var gliProcessCount_ObjRem;            // ���������� ��������� � �������
var gsaProcess_ObjRem_ImID;            // ������ ��� ���������� "�� (��������)"
var gsaProcess_ObjRem_GalID;           // ������ ��� ���������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "�������������"
var gliProcessCount_Podr;              // ���������� ��������� � �������
var gsaProcess_Podr_ImID;              // ������ ��� ���������� ������� "�� (��������)"
var gsaProcess_Podr_GalID;             // ������ ��� ���������� ������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "���������, ���������"
var gliProcessCount_Profession;        // ���������� ��������� � �������
var gsaProcess_Profession_ImID;        // ������ ��� ���������� "�� (��������)"
var gsaProcess_Profession_GalID;       // ������ ��� ���������� "�� (���������)"

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
// ��������� �������������� ������� ��� ��������, ����������� � ���� "������� ���������":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asName        - ������������
//   asAbbr        - ����������� ������������
// ���������:
//   ������������� �������

function GetObjGalID_Ed(abCheckExists, asImID, asGalID, asName, asAbbr)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Ed; i++)
        if (gsaProcess_Ed_ImID[i] == asImID)
          return(gsaProcess_Ed_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Ed; i++)
        if (gsaProcess_Ed_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_Ed_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_Ed = gliProcessCount_Ed + 1;
 
    gsaProcess_Ed_ImID[gliProcessCount_Ed]  = asImID;
    gsaProcess_Ed_GalID[gliProcessCount_Ed] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddEd(false, asGalID, asName, asAbbr);

    return(asGalID);
  } // try

  catch(vrdEvent)
  {
    Message('GetObjGalID_Ed => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_Ed

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "������ ������������":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asCode        - ���
//   asName        - ������������
// ���������:
//   ������������� �������

function GetObjGalID_EqGroup(abCheckExists, asImID, asGalID, asCode, asName)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_EqGroup; i++)
        if (gsaProcess_EqGroup_ImID[i] == asImID)
          return(gsaProcess_EqGroup_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_EqGroup; i++)
        if (gsaProcess_EqGroup_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_EqGroup_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_EqGroup = gliProcessCount_EqGroup + 1;

    gsaProcess_EqGroup_ImID[gliProcessCount_EqGroup]  = asImID;
    gsaProcess_EqGroup_GalID[gliProcessCount_EqGroup] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddEqGroup(false, asGalID, asCode, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_EqGroup => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_EqGroup

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "��� �����":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asCode        - ���
//   asName        - ������������
// ���������:
//   ������������� �������

function GetObjGalID_KaWork(abCheckExists, asImID, asGalID, asCode, asName)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KaWork; i++)
        if (gsaProcess_KaWork_ImID[i] == asImID)
          return(gsaProcess_KaWork_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KaWork; i++)
        if (gsaProcess_KaWork_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_KaWork_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_KaWork = gliProcessCount_KaWork + 1;

    gsaProcess_KaWork_ImID[gliProcessCount_KaWork]  = asImID;
    gsaProcess_KaWork_GalID[gliProcessCount_KaWork] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddKaWork(false, asGalID, asCode, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_KaWork => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_KaWork

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "�����������":
//   abCheckExists        - ������� �������� ������������� �������
//   asImID               - �� (��������)
//   asGalID              - �� (���������)
//   asName               - ������������
//   asBarKod             - �������������� �����
//   asObozn              - ���
//   asKind               - �������������� ��
//   asCType              - ������ �� ��� ��
//   asTNVED              - ��� �����
//   asRemMC              - ����������
//   asAtlLastDate        - ���� ��������� �����������
//   asMassa              - �����
//   asPrMat              - ������� ���������
//   asCEd                - ������ �� ������� ������� ��������
//   asAttrVal_VersionNmb - �������� �������� �������� "����� ������"
//   asAttrVal_InvNmbDoc  - �������� �������� �������� "����������� ����� ���������"
//   asAttrVal_BuildCode  - �������� �������� �������� "��� ����������"
//   asAttrVal_Litera     - �������� �������� �������� "������"
// ���������:
//   ������������� �������

function GetObjGalID_MC(abCheckExists, asImID, asGalID, asName, asBarKod, asObozn, asKind,
  asCType, asTNVED, asRemMC, asAtlLastDate, asMassa, asPrMat, asCEd, asAttrVal_VersionNmb,
  asAttrVal_InvNmbDoc, asAttrVal_BuildCode, asAttrVal_Litera)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MC; i++)
        if (gsaProcess_MC_ImID[i] == asImID)
          return(gsaProcess_MC_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MC; i++)
        if (gsaProcess_MC_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_MC_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_MC = gliProcessCount_MC + 1;

    gsaProcess_MC_ImID[gliProcessCount_MC]  = asImID;
    gsaProcess_MC_GalID[gliProcessCount_MC] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddMC(
        false,
        asGalID,
        asName,
        asBarKod,
        asObozn,
        asKind,
        asCType,
        asTNVED,
        asRemMC,
        asAtlLastDate,
        asMassa,
        asPrMat,
        asCEd,
        asAttrVal_VersionNmb,
        asAttrVal_InvNmbDoc,
        asAttrVal_BuildCode,
        asAttrVal_Litera);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_MC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_MC

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "��������������� ��������":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asLNum        - ���
//   asName        - ������������
// ���������:
//   ������������� �������

function GetObjGalID_MnfOper(abCheckExists, asImID, asGalID, asLNum, asName)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MnfOper; i++)
        if (gsaProcess_MnfOper_ImID[i] == asImID)
          return(gsaProcess_MnfOper_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_MnfOper; i++)
        if (gsaProcess_MnfOper_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_MnfOper_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_MnfOper = gliProcessCount_MnfOper + 1;

    gsaProcess_MnfOper_ImID[gliProcessCount_MnfOper]  = asImID;
    gsaProcess_MnfOper_GalID[gliProcessCount_MnfOper] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddMnfOper(false, asGalID, asLNum, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_MnfOper => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_MnfOper

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "������ �������":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asName        - ������������
//   asInNum       - ����������� �����
//   asCEqGroup    - ������ �� ������ �����������
// ���������:
//   ������������� �������

function GetObjGalID_ObjRem(abCheckExists, asImID, asGalID, asName, asInNum, asCEqGroup)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_ObjRem; i++)
        if (gsaProcess_ObjRem_ImID[i] == asImID)
          return(gsaProcess_ObjRem_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_ObjRem; i++)
        if (gsaProcess_ObjRem_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_ObjRem_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_ObjRem = gliProcessCount_ObjRem + 1;

    gsaProcess_ObjRem_ImID[gliProcessCount_ObjRem]  = asImID;
    gsaProcess_ObjRem_GalID[gliProcessCount_ObjRem] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddObjRem(false, asGalID, asName, asInNum, asCEqGroup);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_ObjRem => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_ObjRem

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "�������������":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asKod         - ���
//   asName        - ������������
//   asCPodr       - ������ �� ����������� �������������
// ���������:
//   ������������� �������

function GetObjGalID_Podr(abCheckExists, asImID, asGalID, asKod, asName, asCPodr)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Podr; i++)
        if (gsaProcess_Podr_ImID[i] == asImID)
          return(gsaProcess_Podr_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Podr; i++)
        if (gsaProcess_Podr_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_Podr_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_Podr = gliProcessCount_Podr + 1;

    gsaProcess_Podr_ImID[gliProcessCount_Podr]  = asImID;
    gsaProcess_Podr_GalID[gliProcessCount_Podr] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddPodr(false, asGalID, asKod, asName, asCPodr);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_Podr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_Podr

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "���������, ���������":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   asCode        - ���
//   asName        - ������������
// ���������:
//   ������������� �������

function GetObjGalID_Profession(abCheckExists, asImID, asGalID, asCode, asName)
{

// ��������� ����������
var i;         // ���������� �����
var vbNeedAdd; // ������� ������������� ���������� �������

  try
  {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Profession; i++)
        if (gsaProcess_Profession_ImID[i] == asImID)
          return(gsaProcess_Profession_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_Profession; i++)
        if (gsaProcess_Profession_GalID[i] == asGalID)
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_Profession_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_Profession = gliProcessCount_Profession + 1;

    gsaProcess_Profession_ImID[gliProcessCount_Profession]  = asImID;
    gsaProcess_Profession_GalID[gliProcessCount_Profession] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddProfession(false, asGalID, asCode, asName);

    return(asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_Profession => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_Profession

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
// ������� ������������ ����� ������� � �� �������� �� ������ � ������
// ���������:
//   asParamValStr - ������ � �������������� ����� ������� � �� ����������
// ���������:
//   ������ � �������������� ����� ������� � �� ����������

function IMBaseAPI_SplitParams(asParamValStr)
{

// ��������� ����������
var i;             // ���������� �����
var vsRegExpr1;    // ������ ��� ������
var vsRegExpr2;    // ������ ��� ������
var vsParamValStr; // ������ � �������������� ����� ������� � �� ����������
var vsaValues1;    // 1-��������� ������
var vsaValues2;    // 2-��������� ������ (��������� �������)

  try
  {
    // ������ ������������ ���� '",' � ',"' �� '\n'
    vsRegExpr1 = /",/g;
    vsParamValStr = asParamValStr.replace(vsRegExpr1,'\n');

    vsRegExpr2 = /,"/g;
    vsParamValStr = vsParamValStr.replace(vsRegExpr2,'\n');

    vsRegExpr3 = /,[a-z]/gi;
    vsParamValStr = vsParamValStr.replace(vsRegExpr3,'\n$&');

    vsRegExpr4 = /,[�-�]/gi;
    vsParamValStr = vsParamValStr.replace(vsRegExpr4,'\n$&');

    // �������������� ������ � ������ � ����������� �� ���������, �����������
    // �������� '\n'
    vsaValues1 = vsParamValStr.split('\n');

    vsaValues2 = new Array();

    for (i = 0; i < vsaValues1.length; i++)
    {
      // �������������� ��������� (��������� ��� �� ������ � ����� ��������)
      //vsaValues1[i] = vsaValues1[i].substr(0, vsaValues1[i].length - 1);

      if (vsaValues1[i] != null)
        if (
          (vsaValues1[i]. substr(0, 1) == '"') ||
          (vsaValues1[i]. substr(0, 1) == ','))
          vsaValues1[i] = vsaValues1[i].substr(1, vsaValues1[i].length - 1);

      if (vsaValues1[i] != null)
        if (vsaValues1[i].substr(vsaValues1[i].length - 1, 1) == '"')
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
  } // try

  catch (vrdEvent) 
  {
    Message('IMBaseAPI_SplitParams => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function IMBaseAPI_SplitParams

//------------------------------------------------------------------------------
// ����� �������� ��������� � �������
// ���������:
//   asaArray           - ������ � ����������� � �� ����������
//   aliParamNameIndex  - ������ 2-�� ������ ��� ������������ ����������
//   aliParamValueIndex - ������ 2-�� ������ ��� �������� ����������
//   asParamName        - ������������ ���������
// ���������:
//   �������� ��������� (���� �������� �� ������ � �������, �� ������ ������)

function IMBaseAPI_GetParamValueFromArray(asaArray, aliParamNameIndex,
  aliParamValueIndex, asParamName)
{

// ��������� ����������
var vsParamName; // ������������ ��������� � ������� ��������
var i;           // ���������� �����
var vliLength;   // ������ ������� �� 1-�� ������

  try
  {
    vsParamName = asParamName.toUpperCase();
    vliLength = asaArray.length;

    for (i = 0; i < vliLength; i++)
    {
      if (vsParamName == asaArray[i][aliParamNameIndex].toUpperCase())
        return asaArray[i][aliParamValueIndex];
    }

    return '';
  } // try

  catch (vrdEvent) 
  {
    Message('IMBaseAPI_GetParamValueFromArray => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function IMBaseAPI_GetParamValueFromArray

//------------------------------------------------------------------------------
// �������� API-�������
// ���������:
//   Num - ��� API-�������:
//     1: SearchAPI
//     2: TechCardAPI
//     3: IMBaseAPI
//     4: TechXMLDataExchangeAPI
//     5: IMBaseAPI
// ���������:
//   ��������� �� API-������

function LoadAPIObj(Num)
{

// ��������� ����������
var vliWaitTime;             // ������ �������� �������� ������� � �������������
var voAPIObj;                // ������ �� API-������
var vdtStartLoadObjDateTime; // ����-����� ������ �������� �������
var vdtCurrectDateTime;      // ������� ����-����
var vbIsLogin;               // ������� �������� �������

  try
  {
    vliWaitTime = 10000; // 10 ���
    vdtStartLoadObjDateTime = new Date();
    vdtCurrectDateTime = new Date();

    switch(Num)
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
    } // switch(Num)

    return voAPIObj;
  } // try

  catch (vrdEvent) 
  {
    Message('LoadAPIObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
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

  try
  {
    vsParamName = asParamName.toUpperCase();
    vliLength = asaArray.length;

    for (i = 0; i < vliLength; i++)
    {
      if (vsParamName == asaArray[i][aliParamNameIndex].toUpperCase())
        return asaArray[i][aliParamValueIndex];
    }

    return '';
  } // try

  catch (vrdEvent) 
  {
    Message('SearchAPI_GetParamValueFromArray => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
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

  try
  {
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
  } // try

  catch (vrdEvent) 
  {
    Message('SearchAPI_SplitParams => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function SearchAPI_SplitParams

//------------------------------------------------------------------------------
// ����������� ������, � ������� �������� ����� � �������� ������� ��������
// � ��������������� ������, � ������� ��������� ��� ����� � �����������������
// ������� ��������
// ���������:
//   asDecimal - ���������� ������ �����
// ���������:
//   ����������������� ������ �����

function toHex(asDecimal)
{

// ��������� ����������
var vsHex; // ��������� �������
var vsTmp; // ��������� ������

  try
  {
    vsTmp = new String('000000');

    if (asDecimal == null)
      return '000000';

    vsHex = parseInt(asDecimal).toString(16);
    vsHex = vsTmp.slice(0, 6 - vsHex.length) + vsHex.toUpperCase();

    return vsHex;
  } // try

  catch (vrdEvent) 
  {
    Message('toHex => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function toHex

//------------------------------------------------------------------------------
// ���������� �������� �������� ��� ������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asWTable      - ��� �������
//   asName        - �������� ��������
//   asAttrType    - ��� ������ �������� ��������
//   asRType       - ��������� ��� ���������
//   asRObject     - ������������� ��� ���������
//   asCoTable     - ��� ������� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddAttrNam(abCheckExists, asID, asWTable, asName, asAttrType,
  asRType, asRObject, asCoTable)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('AttrNam', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_AttrNam,
      '������� � ' + asWTable + ': ' + asName,
      'AttrNam',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'WTable'  , asWTable  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AttrType', asAttrType, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'RType'   , asRType   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'RObject' , asRObject , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'coTable' , asCoTable , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddAttrNam => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddAttrNam

//------------------------------------------------------------------------------
// ���������� ���������������� ����� ��� �������� ���������� ����� � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists                  - ������� �������� ������������� �������
//   asID                           - �������������
//   aliXMLFileGAL_Node_Clt_AttlVal - Handle ����-��������� "�������� ������� ���������"
//   asCoTable                      - ��� �������, ��� ������ ������� ����������� �������� �������� ��������
//   asCAttrNam                     - ������ �� ������������ �������� ��������
//   asVString                      - �������� ���� "STRING"
//   asVDouble                      - �������� ���� "DOUBLE"
//   asVDate                        - �������� ���� "DATE"
//   asVTime                        - �������� ���� "TIME"
//   asVComp                        - �������� ���� "COMP"
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddAttrVal(abCheckExists, asID, aliXMLFileGAL_Node_Clt_AttlVal,
  asCoTable, asCAttrNam, asVString, asVDouble, asVDate, asVTime, asVComp)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('AttrVal_Tbl' + asCoTable, asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_AttlVal,
      '�������� ' + asID,
      'AttrVal_Tbl' + asCoTable,
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cAttrNam', asCAttrNam, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vString' , asVString , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vDouble' , asVDouble , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vDate'   , asVDate   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vTime'   , asVTime   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'vComp'   , asVComp   , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddAttrVal => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddAttrVal

//------------------------------------------------------------------------------
// ���������� ������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
//   asAbbr        - ����������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddEd(abCheckExists, asID, asName, asAbbr)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('ED', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_ED,
      asName,
      'ED',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr', asAbbr, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddEd

//------------------------------------------------------------------------------
// ���������� ������ ������������ � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asCode        - ���
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddEqGroup(abCheckExists, asID, asCode, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('EqGroup', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_EqGroup,
      asName,
      'EqGroup',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddEqGroup => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddEqGroup

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������ ������������" � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asKod         - ���
//   asName        - ������������

function XMLFileGAL_AddGrpMC(abCheckExists, asID, asKod, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('GrpMC', asID))
        return;

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_GrpMC,
      asName,
      'GrpMC',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod'  , asKod  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , asName , '');

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddGrpMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddGrpMC

//------------------------------------------------------------------------------
// ���������� ��������������� ������������ � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists    - ������� �������� ������������� �������
//   asID             - �������������
//   aliMC_ID         - ������������� ��
//   asName           - ������������
//   asDocCode        - �����������
//   asaChildObjects  - ������ ��������������� ��������, �������� � ��
//   asaChildObjCount - ������ ��� ���������� ���������� ��� �������� ��������
//   asaChildObjRefMU - ������ ��� ���������� ������ �� ������� ��������� ��
//                        �������� ��������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddHdrKS(abCheckExists, asID, aliMC_ID, asName, asDocCode,
  asaChildObjects, asaChildObjCount, asaChildObjRefMU)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;          // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues;  // Handle ����-��������� "�������� �������"
var i;                                  // ���������� �����
var vliXMLFileGAL_Node_Clt_PSLines;     // Handle ����-��������� "������� ��"
var vliXMLFileGAL_Node_PSLines;         // Handle ����-������� "������� ��"
var vliXMLFileGAL_Node_Clt_PSLines_PV;  // Handle ����-��������� "�������� ������� ������� ��"
var vliChildMC_ID;                      // ������������� ��������� �������

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Hdr_KS', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Hdr_KS,
      asName,
      'Hdr_KS',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DocCode' , asDocCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cTypeIzd', '4', '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product' , '1', '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cIzd'    , aliMC_ID, 'MC');

    // �������� ��������� ��� ������� ��������������� ������������ � XML-�����
    vliXMLFileGAL_Node_Clt_PSLines = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '������� ������������',
      'Data.PS_Lines_HdrKS',
      'Object');

    // ���� �� ��������, �������� � ������ �������� �������
    for (i = 0; i < asaChildObjects.length; i++)
    {
      // �������� ������� ��������������� ������������ � XML-�����
      vliXMLFileGAL_Node_PSLines = XMLFileGAL_AddTag_Object(
        vliXMLFileGAL_Node_Clt_PSLines,
        '������� "' + (i + 1) * 10 + '"',
        'PS_Lines_HdrKS',
        gliGlobID++);

      // �������� ��������� ������� ��� ������� ��������������� ������������ � XML-�����
      vliXMLFileGAL_Node_Clt_PSLines_PV = XMLFileGAL_AddTag_Collection(
        vliXMLFileGAL_Node_PSLines,
        '��������',
        'Prop_Values',
        'prop_value');

      // �������� ��������� ������������������� �������
      vliChildMC_ID = XMLFileGAL_UnloadObj(asaChildObjects[i]);

      // ���������� �������� ������� ��� ������� ������� ������������
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'lNum', (i + 1) * 10       , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cDet', vliChildMC_ID      , 'MC');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'wDet', '4'                , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'Kol' , asaChildObjCount[i], '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cEd' , asaChildObjRefMU[i], 'OtpEd');
    } // for (i = 0; i < asaChildObjects.length; i++)

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddHdrKS => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddHdrKS

//------------------------------------------------------------------------------
// ���������� ������������ ��������� ������ "������������ ���������" � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asAbbr        - ������������ ���������
//   asCode        - ��� ���������
//   asRole        - ��� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddKatAbbr(abCheckExists, asID, asAbbr, asCode, asRole)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('KatAbbr', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_KatAbbr,
      asAbbr + ' -> ' + asRole,
      'KatAbbr',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr', asAbbr, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Role', asRole, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddKatAbbr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddKatAbbr

//------------------------------------------------------------------------------
// ���������� ���������� ����� � XML-���� � ������� ���������-ERP
// ���������:
//   aoTechProcess - ������ "����������" � TechCardAPI
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asShifr       - ���� (���) �����������
//   asName        - ������������ ���������� �����
//   asTObject     - ��� �������, ��� �������� ����������� ��
//   asCObject     - ������ �� ������, ��� �������� ����������� ��
//   asProduct     - ������� ����� ��� �������� ����� (������ = 1):
//                     0 - �����,
//                     1 - ������� ������
//   asEdNorm      - ����������� ���������� �������, ��� �������� ����������� ��
//   asCEd         - ������ �� ������� ��������� �������, ��� �������� ����������� ��
//   asMinVol      - ����������� ������ ������ ��� �����������
//   asCheckers_1  - ������ �� ���������� 1, �������������� �������� (����������)
//   asAddedSign_1 - ����������� ������� ���������� 1, �������������� �������� (����������)
//   asCheckDt_1   - ���� ���������� 1
//   asCheckers_2  - ������ �� ���������� 2, �������������� �������� (��������)
//   asAddedSign_2 - ����������� ������� ���������� 2, �������������� �������� (��������)
//   asCheckDt_2   - ���� ���������� 2
//   asCheckers_3  - ������ �� ���������� 3, �������������� �������� (��������)
//   asAddedSign_3 - ����������� ������� ���������� 3, �������������� �������� (��������)
//   asCheckDt_3   - ���� ���������� 3
//   asParGroup    - ������ �� ������ ���������� ��� �������/�������� ��
//   asCNormGroup  - ������ �� ������ ���� ��� �������/�������� ��
//   aliHdrKS_ID   - ������������� ��������������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddKatMarsh(aoTechProcess, abCheckExists, asID,
  asShifr, asName, asTObject, asCObject, asProduct,
  asEdNorm, asCEd, asMinVol, asCheckers_1, asAddedSign_1, asCheckDt_1,
  asCheckers_2, asAddedSign_2, asCheckDt_2, asCheckers_3, asAddedSign_3, asCheckDt_3,
  asParGroup, asCNormGroup, aliHdrKS_ID)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Clt_MarshSp;    // Handle ����-��������� "�������/�������� ���������� �����"

  try
  {
    // �������� ������������� ������� aoTechProcess
    if (aoTechProcess == null)
      return(0);

    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('KatMarsh', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_KatMarsh,
      asName,
      'KatMarsh',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kind'        , '1'          , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Shifr'       , asShifr      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'        , asName       , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'     , asTObject    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'     , asCObject    , 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'     , asProduct    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'EdNorm'      , asEdNorm     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'         , asCEd        , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'MinVol'      , asMinVol     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Checkers[1]' , asCheckers_1 , 'Person');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AddedSign[1]', asAddedSign_1, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'CheckDt[1]'  , asCheckDt_1  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Checkers[2]' , asCheckers_2 , 'Person');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AddedSign[2]', asAddedSign_2, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'CheckDt[2]'  , asCheckDt_2  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Checkers[3]' , asCheckers_3 , 'Person');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'AddedSign[3]', asAddedSign_3, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'CheckDt[3]'  , asCheckDt_3  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup'    , asParGroup   , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormGroup'  , asCNormGroup , 'Params');

    // �������� ��������� ��� ������� ���������� �����
    vliXMLFileGAL_Node_Clt_MarshSp = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '������� ���������� �����',
      'Data.Marsh_Sp',
      'Object');

    // �������� �������� �����������
    XMLFileGAL_UnloadTPOpers(aoTechProcess.Opers, vliXMLFileGAL_Node_Clt_MarshSp, asCObject, aliHdrKS_ID);

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddKatMarsh => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddKatMarsh

//------------------------------------------------------------------------------
// ���������� ���� ����� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asCode        - ���
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddKaWork(abCheckExists, asID, asCode, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('KaWork', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_KaWork,
      asName,
      'KaWork',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code', asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name', asName, '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddKaWork => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddKaWork

//------------------------------------------------------------------------------
// ���������� �������/�������� ���������� ����� � XML-���� � ������� ���������-ERP
// ���������:
//   aoTPOper                       - ������ "�������� �����������" � TechCardAPI
//   abCheckExists                  - ������� �������� ������������� �������
//   asID                           - �������������
//   aliXMLFileGAL_Node_Clt_MarshSp - Handle ����-��������� "�������/�������� ���������� �����"
//   asNum                          - ����� �������/�������� ���������� �����
//   asWOpe                         - ��� ������� ��� �������� (��� ��������������� �������� = 11007)
//   asNOpe                         - ������ �� ��������������� ��������
//   asEdNorm                       - ���������� ������������ ������� �� ��������� ��
//   asCEd                          - ������ �� ������� ��������� ��� ������������ ������� ��
//                                      ��������� ��
//   asTDep                         - ��� ����������� (��� ������������� = 2)
//   asCDep                         - ������ �� ����������
//   aliMC_ID                       - ������������� �����������
//   aliHdrKS_ID                    - ������������� ��������������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSp(aoTPOper, abCheckExists, asID, aliXMLFileGAL_Node_Clt_MarshSp,
  asNum, asWOpe, asNOpe, asEdNorm, asCEd, asTDep, asCDep, aliMC_ID, aliHdrKS_ID)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;              // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues;      // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Clt_ParamVolMarshSp; // Handle ����-��������� "�������� ���������� ��������"
var vliXMLFileGAL_Node_Clt_Normas;          // Handle ����-��������� "����� �� ��������"
//
var vliParamVol_ID;                         // ������������� �������� ���������
var vsParamName;                            // ������������ ���������
var vsCParams;                              // ������ �� �������� ������ "������������ ���������"
var vsValue;                                // �������� ���������

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Marsh_Sp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_MarshSp,
      '������� ' + asNum,
      'Marsh_Sp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Num'   , asNum, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wOpe'  , asWOpe, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'nOpe'  , asNOpe, 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'EdNorm', asEdNorm, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'   , asCEd, 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tDep'  , asTDep, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDep'  , asCDep, 'Podr');

    //``````````````````````````````````````````````````````````````````````````
    // ��������� �������� ����������

    if (aoTPOper != null)
    {
      // �������� ��������� "�������� ���������� ��������"
      vliXMLFileGAL_Node_Clt_ParamVolMarshSp = XMLFileGAL_AddTag_Collection(
        vliXMLFileGAL_Node_Object,
        '�������� ���������� ��������',
        'Data.ParamVol_MarshSp',
        'Object');

      // ������� ��������� ������� (�� ��������� = ���)
      vsParamName = '������� ��������� �������';
      vsCParams = gliOperParam_EdTime_ID;
      vsValue = '1';

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // ����� ��������� ������� �� �������� (��)
      vsParamName = '����� ��������� ������� �� ��������';
      vsCParams = gliOperParam_tmOpMash_ID;
      vsValue = aoTPOper.Value('��');

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // ����� ���������������� ������� �� �������� (��)
      vsParamName = '����� ���������������� ������� �� ��������';
      vsCParams = gliOperParam_tmServ_ID;
      vsValue = aoTPOper.Value('��');

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // ������� ������� �� ����. ���. �����, ����� (����)
      //vsParamName = '������� ������� �� ����. ���. �����, �����';
      //vsCParams = 0; //!!!!!!!!!!!!
      //vsValue = aoTPOper.Value('����');
      //
      //if (vsValue != '')
      //{
      //  vliParamVol_ID = gliGlobID;
      //  gliGlobID = gliGlobID + 1;
      //
      //  XMLFileGAL_AddParamVolMarshSp(
      //    false,
      //    vliParamVol_ID,
      //    vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      //    vsParamName,
      //    vsCParams,
      //    vsValue);
      //} // if (vsValue != '')

      // ����� �� ����. ���. �����, ����� (����)
      //vsParamName = '����� �� ����. ���. �����, �����';
      //vsCParams = 0; //!!!!!!!!!!!!
      //vsValue = aoTPOper.Value('����');
      //
      //if (vsValue != '')
      //{
      //  vliParamVol_ID = gliGlobID;
      //  gliGlobID = gliGlobID + 1;
      //
      //  XMLFileGAL_AddParamVolMarshSp(
      //    false,
      //    vliParamVol_ID,
      //    vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      //    vsParamName,
      //    vsCParams,
      //    vsValue);
      //} // if (vsValue != '')

      // ����� ���������������-��������������� ������� (���)
      vsParamName = '����� ���������������-��������������� �������';
      vsCParams = gliOperParam_tmPreFin_ID;
      vsValue = aoTPOper.Value('���');

      if (vsValue != '')
      {
        vliParamVol_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddParamVolMarshSp(
          false,
          vliParamVol_ID,
          vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
          vsParamName,
          vsCParams,
          vsValue);
      } // if (vsValue != '')

      // ����� �������� ������� (���)
      //vsParamName = '����� �������� �������';
      //vsCParams = 0; //!!!!!!!!!!!!
      //vsValue = aoTPOper.Value('���');
      //
      //if (vsValue != '')
      //{
      //  vliParamVol_ID = gliGlobID;
      //  gliGlobID = gliGlobID + 1;
      //
      //  XMLFileGAL_AddParamVolMarshSp(
      //    false,
      //    vliParamVol_ID,
      //    vliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      //    vsParamName,
      //    vsCParams,
      //    vsValue);
      //} // if (vsValue != '')
    } // if (aoTPOper != null)

    //``````````````````````````````````````````````````````````````````````````
    // �������� ����

    // �������� ��������� "����� �� ��������"
    vliXMLFileGAL_Node_Clt_Normas = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '�����',
      'Data.Normas_MarshSp',
      'Object');

    // �������� ����� "��" ��� ������ �������� �����������
    if (aliHdrKS_ID != '0')
      XMLFileGAL_UnloadTPOper_MatNorm_BOM(
        aoTPOper,
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe,
        aliMC_ID,
        aliHdrKS_ID);

    // �������� ������������� ������� aoTPOper
    if (aoTPOper == null)
      return(0);

    // �������� ������������ ����
    XMLFileGAL_UnloadTPOper_MatNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    // �������� ���������������� ����
    XMLFileGAL_UnloadTPOper_ToolNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    // �������� �������� ����
    XMLFileGAL_UnloadTPOper_JobNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    // �������� ���� ������������� �����������
    XMLFileGAL_UnloadTPOper_EqNorm(
      aoTPOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSp

//------------------------------------------------------------------------------
// ���������� ����� ������������� ������������ ��� �������� ���������� ����� � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists                        - ������� �������� ������������� �������
//   asID                                 - �������������
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle ����-��������� "����� ��� �������/�������� ��"
//   asTObject                            - ��� �������-��������� �����
//   asCObject                            - ������ �� ������-�������� �����
//   asTResource                          - ��� ������������ �������
//   asCResource                          - ������ �� ����������� ������
//   asWProd                              - ��� �����/�������� ������
//   asProduct                            - ����� �������������: �����/�����
//   asParGroup                           - ��� ������ ����������
//   asNormSort                           - ��������� ������ ����������
//   asRasx                               - ����� �������
//   asCEd                                - ������ �� ������� ��������
//   asDNormEd                            - ������� �����������
//   asCNormEd                            - ������ �� ������� ��������� ������� �����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpEqNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      '����� ' + asID,
      'Normas_MarshSp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'EqGroup');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpEqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpEqNorm

//------------------------------------------------------------------------------
// ���������� �������� ����� ��� �������� ���������� ����� � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists                        - ������� �������� ������������� �������
//   asID                                 - �������������
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle ����-��������� "����� ��� �������/�������� ��"
//   asTObject                            - ��� �������-��������� �����
//   asCObject                            - ������ �� ������-�������� �����
//   asTResource                          - ��� ������������ �������
//   asCResource                          - ������ �� ����������� ������
//   asWProd                              - ��� �����/�������� ������
//   asProduct                            - ����� �������������: �����/�����
//   asParGroup                           - ��� ������ ����������
//   asNormSort                           - ��������� ������ ����������
//   asRasx                               - ����� �������
//   asCEd                                - ������ �� ������� ��������
//   asDNormEd                            - ������� �����������
//   asCNormEd                            - ������ �� ������� ��������� ������� �����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpJobNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      '����� ' + asID,
      'Normas_MarshSp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'Profession');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpJobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpJobNorm

//------------------------------------------------------------------------------
// ���������� ������������ ����� ��� �������� ���������� ����� � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists                        - ������� �������� ������������� �������
//   asID                                 - �������������
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle ����-��������� "����� ��� �������/�������� ��"
//   asTObject                            - ��� �������-��������� �����
//   asCObject                            - ������ �� ������-�������� �����
//   asTResource                          - ��� ������������ �������
//   asCResource                          - ������ �� ����������� ������
//   asWProd                              - ��� �����/�������� ������
//   asProduct                            - ����� �������������: �����/�����
//   asParGroup                           - ��� ������ ����������
//   asNormSort                           - ��������� ������ ����������
//   asRasx                               - ����� �������
//   asCEd                                - ������ �� ������� ��������
//   asDNormEd                            - ������� �����������
//   asCNormEd                            - ������ �� ������� ��������� ������� �����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpMatNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      '����� ' + asID,
      'Normas_MarshSp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpMatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpMatNorm

//------------------------------------------------------------------------------
// ���������� ������������ ����� (��) ��� �������� ���������� ����� � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists                        - ������� �������� ������������� �������
//   asID                                 - �������������
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle ����-��������� "����� ��� �������/�������� ��"
//   asTObject                            - ��� �������-��������� �����
//   asCObject                            - ������ �� ������-�������� �����
//   asTResource                          - ��� ������������ �������
//   asCResource                          - ������ �� ����������� ������
//   asTDoc                               - ��� ���������-����� ��� ������������ �������
//                                            (��� �� = 41)
//   asCDoc                               - ������ �� ��������-����� ��� ������������
//                                            �������
//   asWProd                              - ��� �����/�������� ������
//   asProduct                            - ����� �������������: �����/�����
//   asParGroup                           - ��� ������ ����������
//   asNormSort                           - ��������� ������ ����������
//   asRasx                               - ����� �������
//   asCEd                                - ������ �� ������� ��������
//   asDNormEd                            - ������� �����������
//   asCNormEd                            - ������ �� ������� ��������� ������� �����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpMatNorm_BOM(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asTDoc, asCDoc, asWProd, asProduct,
  asParGroup, asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      '����� ' + asID,
      'Normas_MarshSp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tDoc'     , asTDoc     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cDoc'     , asCDoc     , 'Hdr_KS');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpMatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpMatNorm_BOM

//------------------------------------------------------------------------------
// ���������� ���������������� ����� ��� �������� ���������� ����� � XML-����
// � ������� ���������-ERP
// ���������:
//   abCheckExists                        - ������� �������� ������������� �������
//   asID                                 - �������������
//   aliXMLFileGAL_Node_Clt_NormasMarshSp - Handle ����-��������� "����� ��� �������/�������� ��"
//   asTObject                            - ��� �������-��������� �����
//   asCObject                            - ������ �� ������-�������� �����
//   asTResource                          - ��� ������������ �������
//   asCResource                          - ������ �� ����������� ������
//   asWProd                              - ��� �����/�������� ������
//   asProduct                            - ����� �������������: �����/�����
//   asParGroup                           - ��� ������ ����������
//   asNormSort                           - ��������� ������ ����������
//   asRasx                               - ����� �������
//   asCEd                                - ������ �� ������� ��������
//   asDNormEd                            - ������� �����������
//   asCNormEd                            - ������ �� ������� ��������� ������� �����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpToolNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_NormasMarshSp,
      '����� ' + asID,
      'Normas_MarshSp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tObject'  , asTObject  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cObject'  , asCObject  , 'MnfOper');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'tResource', asTResource, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cResource', asCResource, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wProd'    , asWProd    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Product'  , asProduct  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup' , asParGroup , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'NormSort' , asNormSort , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Rasx'     , asRasx     , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEd'      , asCEd      , 'OtpEd');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'dNormEd'  , asDNormEd  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormEd'  , asCNormEd  , 'OtpEd');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMarshSpToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMarshSpToolNorm

//------------------------------------------------------------------------------
// ���������� ������� � ����� "�����������" � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists        - ������� �������� ������������� �������
//   asID                 - �������������
//   asName               - ������������
//   asBarKod             - �������������� �����
//   asObozn              - ���
//   asKind               - �������������� ��
//   asCType              - ������ �� ��� ��
//   asTNVED              - ��� �����
//   asRemMC              - ����������
//   asAtlLastDate        - ���� ��������� �����������
//   asMassa              - �����
//   asPrMat              - ������� ���������
//   asCEd                - ������ �� ������� ������� ��������
//   asAttrVal_VersionNmb - �������� �������� �������� "����� ������"
//   asAttrVal_InvNmbDoc  - �������� �������� �������� "����������� ����� ���������"
//   asAttrVal_BuildCode  - �������� �������� �������� "��� ����������"
//   asAttrVal_Litera     - �������� �������� �������� "������"
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMC(abCheckExists, asID, asName, asBarKod, asObozn, asKind,
  asCType, asTNVED, asRemMC, asAtlLastDate, asMassa, asPrMat, asCEd,
  asAttrVal_VersionNmb, asAttrVal_InvNmbDoc, asAttrVal_BuildCode, asAttrVal_Litera)
{

// ��������� ����������
var i;                                 // ���������� �����
//
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Clt_AttrVal;    // Handle ����-��������� �������� "AttrVal"
var vsName;                            //
var vsKind;                            //
var vsGrpMC;                           //
//
var vliAttrVal_ID;                     // ������������� ��� ����� ������������� ������������ �� ��������
var vsAttrVal_CoTable;                 //
var vsAttrVal_CAttrNam;                //
var vsAttrVal_VString;                 //
var vsAttrVal_VDouble;                 //
var vsAttrVal_VDate;                   //
var vsAttrVal_VTime;                   //
var vsAttrVal_VComp;                   //
//
var vsOtpEd_ID;                        // ������������� ��������� ������� ��������
var vsOtpEd_Name;                      // ������������ ��������� ������� ��������
var vsOtpEd_PrMC;                      // ������� ������������� () ��� ��������� ������� ��������
var vsOtpEd_CMCUsl;                    // ������ �� ��������� (�����������) ��� ��������� ������� ��������
var vsOtpEd_Koef;                      // ����������� ��������� ������������ ������� ������� ��������
var vsOtpEd_Akt;                       // ������� �������� ��������� ������� ��������
var vsOtpEd_Abbr;                      // ����������� ������������ ��������� ������� ��������
var vsOtpEd_CKatED;                    // ������ �� ������� ��������� ��� ��������� ������� ��������

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('MC', asID))
        return(0);

    vsKind = asKind;
    if (vsKind == '')
      vsKind = '1';

    vsGrpMC = '0';

    // ��������� ������� �� � ����������� �� ����
    switch (asCType)
    {
      // �����������
      case '1':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '1':

      // ��������
      case '2':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '2':

      // ��������� �������
      case '3':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '3':

      // ������
      case '4':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '4':

      // ����������� �������
      case '5':
      {
        vsGrpMC = '2109'; // �������������-�������
        break;
      } // case '5':

      // ������������� �������
      case '6':
      {
        vsGrpMC = '1060'; // ������������� ���������
        break;
      } // case '6':

      // �������� ��������
      case '7':
      {
        vsGrpMC = '1010'; // �������� ���������
        break;
      } // case '7':

      // ��������
      case '8':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '8':

      // ����������� �������
      case '9':
      {
        vsGrpMC = '0'; //
        break;
      } // case '9':

      // ��������������� ��������
      case '77':
      {
        vsGrpMC = '1020'; // ��������������� ���������
        break;
      } // case '77':

      // �������� �������
      case '777':
      {
        vsGrpMC = '1017'; // �������� ����������
        break;
      } // case '777':

      // ���������������
      case '99999998':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '99999998':

      // �����
      case '99999999':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '99999999':

      // �������� ������������ �����������
      case '100000001':
      {
        vsGrpMC = '1015'; // ��������������
        break;
      } // case '100000001':

      // �������
      case '100000003':
      {
        vsGrpMC = '2108'; // �������������
        break;
      } // case '100000003':
    } // switch (asCType)

    // �������� �������
    vsName = asName;
    if (
      (vsName == null) ||
      (vsName == 0) ||
      (vsName == ''))
      vsName = '(id = ' + asID + ')';

    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_MC,
      vsName,
      'MC',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ExternalID'  , asID         , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'        , vsName       , '');

    if (
      (asBarKod != null) &&
      (asBarKod != ''))
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'BarKod'    , asBarKod     , '');

    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Obozn'       , asObozn      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kind'        , vsKind       , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cED'         , asCEd        , 'ED');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cType'       , asCType      , 'TypeMC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cGroupMC'    , vsGrpMC      , 'GrpMC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'TNVED'       , asTNVED      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'RemMC'       , asRemMC      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ATL_LASTDATE', asAtlLastDate, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Massa'       , asMassa      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMat'       , asPrMat      , '');

    // �������� �������� ������� ���������
    if (
      ((asAttrVal_VersionNmb != null) && (asAttrVal_VersionNmb != '') && (asAttrVal_VersionNmb != '0')) ||
      ((asAttrVal_InvNmbDoc != null) && (asAttrVal_InvNmbDoc != '') && (asAttrVal_InvNmbDoc != '0')) ||
      ((asAttrVal_BuildCode != null) && (asAttrVal_BuildCode != '') && (asAttrVal_BuildCode != '0')) ||
      ((asAttrVal_Litera != null) && (asAttrVal_Litera != '') && (asAttrVal_Litera != '0')))
    {
      // �������� ��������� ��� �������� ������� ���������
      vliXMLFileGAL_Node_Clt_AttrVal = XMLFileGAL_AddTag_Collection(
        vliXMLFileGAL_Node_Object,
        '�������� ������� ���������',
        'Data.AttlVal_Tbl1411',
        'Object');

      // ���������� �������� ��� �������� �������� "����� ������"
      if (
        (asAttrVal_VersionNmb != null) &&
        (asAttrVal_VersionNmb != '') &&
        (asAttrVal_VersionNmb != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_VersionNmb_ID;
        vsAttrVal_VString  = asAttrVal_VersionNmb;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = '��/��/����';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...

      // ���������� �������� ��� �������� �������� "����������� ����� ���������"
      if (
        (asAttrVal_InvNmbDoc != null) &&
        (asAttrVal_InvNmbDoc != '') &&
        (asAttrVal_InvNmbDoc != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_InvNmbDoc_ID;
        vsAttrVal_VString  = asAttrVal_InvNmbDoc;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = '��/��/����';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...

      // ���������� �������� ��� �������� �������� "��� ����������"
      if (
        (asAttrVal_BuildCode != null) &&
        (asAttrVal_BuildCode != '') &&
        (asAttrVal_BuildCode != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_VersionNmb_ID;
        vsAttrVal_VString  = asAttrVal_BuildCode;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = '��/��/����';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...

      // ���������� �������� ��� �������� �������� "������"
      if (
        (asAttrVal_Litera != null) &&
        (asAttrVal_Litera != '') &&
        (asAttrVal_Litera != '0'))
      {
        vliAttrVal_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsAttrVal_CoTable  = '1411';
        vsAttrVal_CAttrNam = gsAttrNam_MC_Litera_ID;
        vsAttrVal_VString  = asAttrVal_Litera;
        vsAttrVal_VDouble  = '000000000000.0000';
        vsAttrVal_VDate    = '��/��/����';
        vsAttrVal_VTime    = '00:00:00';
        vsAttrVal_VComp    = '0';

        XMLFileGAL_AddAttrVal(
          false,
          vliAttrVal_ID,
          vliXMLFileGAL_Node_Clt_AttrVal,
          vsAttrVal_CoTable,
          vsAttrVal_CAttrNam,
          vsAttrVal_VString,
          vsAttrVal_VDouble,
          vsAttrVal_VDate,
          vsAttrVal_VTime,
          vsAttrVal_VComp);
      } // if (...
    } // if (...

    // ���������� ��������� ������� ��������
    for (i = 0; i < gliEdCount; i++)
    {
      if (gsaFieldValue_Ed_ID[i] == asCEd)
      {
        vsOtpEd_ID     = gliGlobID;
        gliGlobID = gliGlobID + 1;

        vsOtpEd_Name   = gsaFieldValue_Ed_Name[i];
        vsOtpEd_PrMC   = '1';
        vsOtpEd_CMCUsl = asID;
        vsOtpEd_Koef   = '1';
        vsOtpEd_Akt    = '1';
        vsOtpEd_Abbr   = gsaFieldValue_Ed_Abbr[i];
        vsOtpEd_CKatED = asCEd;

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

        break;
      } // if (gsaFieldValue_Ed_ID[i] == asCEd)
    } // for (i = 0; i < gliEdCount; i++)

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// ���������� ��������������� �������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asLNum        - ���
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMnfOper(abCheckExists, asID, asLNum, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('MnfOper', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_MnfOper,
      asName,
      'MnfOper',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'lNum'      , asLNum                      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'      , asName                      , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ParGroup'  , gliParameter_OperParams_ID  , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cNormGroup', gliParameter_NormCategory_ID, 'Params');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddMnfOper => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddMnfOper

//------------------------------------------------------------------------------
// ���������� ������� ������������ � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
//   asInNum       - ����������� �����
//   asCEqGroup    - ������ �� ������ �����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddObjRem(abCheckExists, asID, asName, asInNum, asCEqGroup)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('ObjRem', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_ObjRem,
      asName,
      'ObjRem',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'InNum'   , asInNum, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cEqGroup', asCEqGroup, 'EqGroup');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddObjRem => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddObjRem

//------------------------------------------------------------------------------
// ���������� ��������� ������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
//   asPrMC        - ������� ������������� ()
//   asCMCUsl      - ������ �� ��������� (�����������)
//   asKoef        - ����������� ��������� ������������ ������� ������� ��������
//   asAkt         - ������� �������� ��������� ������� ��������
//   asAbbr        - ����������� ������������
//   asCKatED      - ������ �� ������� ��������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddOtpEd(abCheckExists, asID, asName, asPrMC, asCMCUsl, asKoef,
  asAkt, asAbbr, asCKatED)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('OtpEd', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_OtpEd,
      asName,
      'OtpEd',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMC'  , asPrMC  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cMCUsl', asCMCUsl, 'MC');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Koef'  , asKoef  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Akt'   , asAkt   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Abbr'  , asAbbr  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cKatED', asCKatED, 'ED');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddOtpEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddOtpEd

//------------------------------------------------------------------------------
// ���������� ��������� ������ "������������ ���������" � XML-���� � �������
// ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������ ���������
//   asCode        - ������ �� ������������ ���������
//   asOwner       - ������ �� ������������ ��������
//   asNumber      - ����� ��������� � ������ �� �������
//   asCategory    - ��������� ���������
//   asWType       - ��� ��������� (�����, �������, ������ � �.�.)
//   asIsGroup     - ������� ������
//   asShowPar     - ���������� ������ ����� ������� (��� ������� �����)
//   asDefValue    - �������� ��������� �� ���������
//   asCRole       - ������ �� ���� �������� ��� �������� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddParameter(abCheckExists, asID, asName, asCode, asOwner,
  asNumber, asCategory, asWType, asIsGroup, asShowPar, asDefValue, asCRole)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;             // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues;     // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Clt_ParamsPListTbl; // Handle ����-��������� "�������� ������ ��������"
var vliPListTbl_ID;                        // ������������� �������� ������ ��������

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Params', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Params,
      asName,
      'Params',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'    , asName    , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'    , asCode    , 'KatAbbr');

    if (asOwner != '')
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Owner' , asOwner   , 'Params');

    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Owner'   , asOwner   , 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Number'  , asNumber  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Category', asCategory, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'wType'   , asWType   , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'isGroup' , asIsGroup , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ShowPar' , asShowPar , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'DefValue', asDefValue, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cRole'   , asCRole   , '');

    // �������� ��������� � ������ ���������� ��������
    switch(asCode)
    {
      // ��� ��������� = "��� ������� �����"
      case '15':
      {
        vliXMLFileGAL_Node_Clt_ParamsPListTbl = XMLFileGAL_AddTag_Collection(
          vliXMLFileGAL_Node_Object,
          '�������� ������ ��������',
          'Data.Params_PListTbl',
          'Object');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '1',
          '����������');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '2',
          '������� � �������');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '3',
          '����� ������� � �������');

        break;
      } // case '15':

      // ��� ��������� = "������� ��������� �������"
      case '37':
      {
        vliXMLFileGAL_Node_Clt_ParamsPListTbl = XMLFileGAL_AddTag_Collection(
          vliXMLFileGAL_Node_Object,
          '�������� ������ ��������',
          'Data.Params_PListTbl',
          'Object');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '1',
          '���');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '2',
          '������');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '3',
          '�������');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '4',
          '�����');

        vliPListTbl_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
        XMLFileGAL_AddPListTbl(
          false,
          vliPListTbl_ID,
          vliXMLFileGAL_Node_Clt_ParamsPListTbl,
          '5',
          '������');

        break;
      } // case '37':

    } // switch(asCode)

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddParameter => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddParameter

//------------------------------------------------------------------------------
// �������� �������� ��������� (ParamVol)
// ���������:
//   abCheckExists                          - ������� �������� ������������� �������
//   asID                                   - �������������
//   aliXMLFileGAL_Node_Clt_ParamVolMarshSp - Handle ����-��������� "�������� ���������� ��
//                                              �������� ��"
//   asParamName                            - ������������ ���������
//   asCParams                              - ������ �� �������� ������ "������������ ���������"
//   asValue                                - �������� ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddParamVolMarshSp(abCheckExists, asID, aliXMLFileGAL_Node_Clt_ParamVolMarshSp,
  asParamName, asCParams, asValue)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('ParamVol_MarshSp', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_ParamVolMarshSp,
      asParamName,
      'ParamVol_MarshSp',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cParams' , asCParams, 'Params');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Value'   , asValue  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'ValEmpty', '1'      , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddParamVolMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddParamVolMarshSp

//------------------------------------------------------------------------------
// ���������� ������ ��� ���������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asFIO         - ��� ����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddPerson(abCheckExists, asID, asFIO)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Person', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Person,
      asFIO,
      'Person',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'FIO'       , asFIO, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'IsEmployee', 'C'  , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddPerson => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddPerson

//------------------------------------------------------------------------------
// ���������� �������� ������ �������� ������������ ������ "������������ ���������"
// � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists                         - ������� �������� ������������� �������
//   asID                                  - �������������
//   aliXMLFileGAL_Node_Clt_ParamsPListTbl - Handle ����-��������� "�������� ������ ��������"
//   asNumber                              - �������� �������� �������� � ������
//                                             �������� ���������
//   asName                                - ������������ �������� � ������ ��������
//                                             ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddPListTbl(abCheckExists, asID, aliXMLFileGAL_Node_Clt_ParamsPListTbl,
  asNumber, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Params_PListTbl', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      aliXMLFileGAL_Node_Clt_ParamsPListTbl,
      asName,
      'Params_PListTbl',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Number', asNumber, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'  , asName  , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddPListTbl => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddPListTbl

//------------------------------------------------------------------------------
// ���������� ������������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asKod         - ���
//   asName        - ������������
//   asCPodr       - ������ �� ����������� �������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddPodr(abCheckExists, asID, asKod, asName, asCPodr)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vsName;                            // ������������ ������������

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Podr', asID))
        return(0);

    // �������������� ��������� ������� ������������ ������������
    vsName = asName;
    if (vsName == '')
      vsName = '<������ ������������>';

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Podr,
      vsName,
      'Podr',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod'  , asKod  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , vsName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'cPodr', asCPodr, 'Podr');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddPodr

//------------------------------------------------------------------------------
// ���������� ��������� � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asCode        - ���
//   asName        - ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddProfession(abCheckExists, asID, asCode, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('Profession', asID))
        return(0);

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_Profession,
      asName,
      'Profession',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Code'   , asCode, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name'   , asName, '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'sDopInf', asID  , '');

    return(1);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddProfession => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddProfession

//------------------------------------------------------------------------------
// ���������� ���� <Collection> (��������� ��������) � XML-���� � ������� ���������-ERP
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asCaption     - �������� �������� "caption" ��� ������������ ���� <Collection>
//   asName        - �������� �������� "name" ��� ������������ ���� <Collection>
//   asChildTags   - �������� �������� "child_tags" ��� ������������ ���� <Collection>

function XMLFileGAL_AddTag_Collection(aliParentNode, asCaption, asName, asChildTags)
{

// ��������� ����������
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  try
  {
    vliNode    = goXMLFileGAL.createElement('Collection');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'caption', asCaption);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'child_tags', asChildTags);

    return(vliNodeAdd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTag_Collection => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTag_Collection

//------------------------------------------------------------------------------
// ���������� ���� <Object> (������) � XML-���� � ������� ���������-ERP
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asName        - �������� �������� "name" ��� ������������ ���� <Object>
//   asClassId     - �������� �������� "class_id" ��� ������������ ���� <Object>
//   asId          - �������� �������� "id" ��� ������������ ���� <Object>

function XMLFileGAL_AddTag_Object(aliParentNode, asName, asClassId, asId)
{

// ��������� ����������
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  try
  {
    vliNode    = goXMLFileGAL.createElement('Object');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'class_id', asClassId);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'id', asId);

    return(vliNodeAdd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTag_Object => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTag_Object

//------------------------------------------------------------------------------
// ���������� ���� <prop_value> (�������� ��������) � XML-���� � ������� ���������-ERP
// ���������:
//   aliParentNode - Handle ������������� ���� � DOM-���������
//   asPropName    - �������� �������� "prop_name" ��� ������������ ���� <prop_value>
//   asValue       - �������� �������� "value" ��� ������������ ���� <prop_value>
//   asRltClass    - �������� �������� "rlt_class" ��� ������������ ���� <prop_value>

function XMLFileGAL_AddTag_PropValue(aliParentNode, asPropName, asValue, asRltClass)
{

// ��������� ����������
var vliNode;    // Handle ������������ ���� � DOM-���������
var vliNodeAdd; // Handle ���������� ���� � DOM-��������� ����� ������������

  try
  {
    vliNode    = goXMLFileGAL.createElement('prop_value');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'prop_name', asPropName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'value', asValue);
    if (asRltClass != '')
      XMLFileGAL_AddTagAttribute(vliNodeAdd, 'rlt_class', asRltClass);

    return(vliNodeAdd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTag_PropValue => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTag_PropValue

//------------------------------------------------------------------------------
// ���������� ��������� � ���� � XML-���� � ������� ���������-ERP
// ���������:
//   aliNode - Handle ���� � DOM-���������, ��� �������� ����������� �������
//   asName  - ������������ ��������
//   asValue - �������� ��������

function XMLFileGAL_AddTagAttribute(aliNode, asName, asValue)
{

// ��������� ����������
var vliAttr; // Handle ������������ �������� � DOM-���������

  try
  {
    vliAttr = goXMLFileGAL.createAttribute(asName);
    vliAttr.value = asValue;
    aliNode.attributes.setNamedItem(vliAttr);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTagAttribute => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTagAttribute

//------------------------------------------------------------------------------
// ���������� ������� � ����� "��� �����������" � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asKod         - ���
//   asName        - ������������
//   asKind        - �������������� ������������, ����������� � �������� ����
//   asPrMat       - ������� ������������, ����������� � �������� ����

function XMLFileGAL_AddTypeMC(abCheckExists, asID, asKod, asName, asKind, asPrMat)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  try
  {
    // �������� ������������� �������
    if (abCheckExists)
      if (XMLFileGAL_CheckExistsObj('TypeMC', asID))
        return;

    // �������� �������
    vliXMLFileGAL_Node_Object = XMLFileGAL_AddTag_Object(
      gliXMLFileGAL_Node_Clt_TypeMC,
      asName,
      'TypeMC',
      asID);

    // �������� ��������� �������
    vliXMLFileGAL_Node_Clt_PropValues = XMLFileGAL_AddTag_Collection(
      vliXMLFileGAL_Node_Object,
      '��������',
      'Prop_Values',
      'prop_value');

    // �������� �������� �������
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kod'  , asKod  , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , asName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Kind' , asKind , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'PrMat', asPrMat, '');

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_AddTypeMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_AddTypeMC

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

  try
  {
    vliNodes = goXMLFileGAL.selectNodes("//Object[@class_id = '" + asClassName + "'][@id = '" + asObjId + "']/@name");
    vbResult = (vliNodes.length > 0);

    return(vbResult);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_CheckExistsObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
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
//
var vliParameter_ID;          // ������������� ��������� ������ "������������ ���������"
var vsParamName;              // ������������ ���������
var vsParamCode;              // ������ �� ������������ ���������
var vsParamOwner;             // ������ �� ������������ ��������
var vsParamNumber;            // ����� ��������� � ������ �� �������
var vsParamCategory;          // ��������� ���������
var vsParamWType;             // ��� ��������� (�����, �������, ������ � �.�.)
var vsParamIsGroup;           // ������� ������
var vsParamShowPar;           // ���������� ������ ����� ������� (��� ������� �����)
var vsParamDefValue;          // �������� ��������� �� ���������
var vsParamCRole;             // ������ �� ���� �������� ��� �������� ���������

  try
  {
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

    XMLFileGAL_AddTagAttribute(vliNode, 'ExpSet_Code', '0');

    XMLFileGAL_AddTagAttribute(vliNode, 'ExpSet_Name',
      '���� ������� ����� �������� ������ �� INTERMECH');

    // �������� ���� <Data>
    vliNode = goXMLFileGAL.createElement('Data');
    vliData = vliDataRoot.appendChild(vliNode);

    //``````````````````````````````````````````````````````````````````````````
    // �������� �����-���������

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader('�������� �����-��������� \n   \n   ');

    // ���� ������������
    gliXMLFileGAL_Node_Clt_TypeMC = XMLFileGAL_AddTag_Collection(
      vliData,
      '���� ������������',
      'Data.TypeMC',
      'Object');

    // ������ ������������
    gliXMLFileGAL_Node_Clt_GrpMC = XMLFileGAL_AddTag_Collection(
      vliData,
      '������ ������������',
      'Data.GrpMC',
      'Object');

    // ������� ��������
    gliXMLFileGAL_Node_Clt_ED= XMLFileGAL_AddTag_Collection(
      vliData,
      '������� ���������',
      'Data.ED',
      'Object');

    // ������������
    gliXMLFileGAL_Node_Clt_Podr = XMLFileGAL_AddTag_Collection(
      vliData,
      '�������������',
      'Data.Podr',
      'Object');

    // ������ �����������
    gliXMLFileGAL_Node_Clt_EqGroup = XMLFileGAL_AddTag_Collection(
      vliData,
      '������ ������������',
      'Data.EqGroup',
      'Object');

    // ��������������� ��������
    gliXMLFileGAL_Node_Clt_MnfOper = XMLFileGAL_AddTag_Collection(
      vliData,
      '��������������� ��������',
      'Data.MnfOper',
      'Object');

    // ���� �����
    gliXMLFileGAL_Node_Clt_KaWork = XMLFileGAL_AddTag_Collection(
      vliData,
      '���� �����',
      'Data.KaWork',
      'Object');

    // ���������
    gliXMLFileGAL_Node_Clt_Profession = XMLFileGAL_AddTag_Collection(
      vliData,
      '���������',
      'Data.Profession',
      'Object');

    // ������� �����������
    gliXMLFileGAL_Node_Clt_ObjRem = XMLFileGAL_AddTag_Collection(
      vliData,
      '������� ������������',
      'Data.ObjRem',
      'Object');

    ////����������
    //gliXMLFileGAL_Node_Clt_Person = XMLFileGAL_AddTag_Collection(
    //  vliData,
    //  '����������',
    //  'Data.Person',
    //  'Object');

    // ������������ ����������
    gliXMLFileGAL_Node_Clt_KatAbbr = XMLFileGAL_AddTag_Collection(
      vliData,
      '������������ ����������',
      'Data.KatAbbr',
      'Object');

    // ��������� (������������ ���������)
    gliXMLFileGAL_Node_Clt_Params = XMLFileGAL_AddTag_Collection(
      vliData,
      '��������� (������������ ���������)',
      'Data.Params',
      'Object');

    // �����������
    gliXMLFileGAL_Node_Clt_MC = XMLFileGAL_AddTag_Collection(
      vliData,
      '�����������',
      'Data.MC',
      'Object');

    // ��������� ������� ��������
    gliXMLFileGAL_Node_Clt_OtpEd = XMLFileGAL_AddTag_Collection(
      vliData,
      '��������� ������� ���������',
      'Data.OtpEd',
      'Object');

    // ���������� �����
    gliXMLFileGAL_Node_Clt_KatMarsh = XMLFileGAL_AddTag_Collection(
      vliData,
      '���������� �����',
      'Data.KatMarsh',
      'Object');

    // ��������������� ������������
    gliXMLFileGAL_Node_Clt_Hdr_KS = XMLFileGAL_AddTag_Collection(
      vliData,
      '��������������� ������������',
      'Data.Hdr_KS',
      'Object');

    // ������� ��������
    gliXMLFileGAL_Node_Clt_AttrNam = XMLFileGAL_AddTag_Collection(
      vliData,
      '������� ��������',
      'Data.AttrNam',
      'Object');

    //``````````````````````````````````````````````````````````````````````````
    // ������������ ����� ������������

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader('������������ ����� ������������ \n   \n   ');

    XMLFileGAL_AddGrpMC(false, '1010', '1010', '�������� ���������');
    XMLFileGAL_AddGrpMC(false, '1015', '1015', '��������������');
    XMLFileGAL_AddGrpMC(false, '1017', '1017', '�������� ����������');
    XMLFileGAL_AddGrpMC(false, '1020', '1020', '��������������� ���������');
    XMLFileGAL_AddGrpMC(false, '1060', '1060', '������������� ���������');
    XMLFileGAL_AddGrpMC(false, '2108', '2108', '�������������');
    XMLFileGAL_AddGrpMC(false, '2109', '2109', '�������������-�������');

    //``````````````````````````````````````````````````````````````````````````
    // ������������ ������� ���������

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader('������������ ������� ��������� \n   \n   ');

    // ������������ ������� ��������� ��� �������� ������������
    gsAttrNam_MC_VersionNmb_ID = '1'; // ������������� �������� �������� "����� ������"
    gsAttrNam_MC_InvNmbDoc_ID  = '2'; // ������������� �������� �������� "����������� ����� ���������"
    gsAttrNam_MC_BuildCode_ID  = '3'; // ������������� �������� �������� "��� ����������"
    gsAttrNam_MC_Litera_ID     = '4'; // ������������� �������� �������� "������"

    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_VersionNmb_ID, '1411', '����� ������'               , '0', '0', '0', '0');
    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_InvNmbDoc_ID , '1411', '����������� ����� ���������', '0', '0', '0', '0');
    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_BuildCode_ID , '1411', '��� ����������'             , '0', '0', '0', '0');
    XMLFileGAL_AddAttrNam(false, gsAttrNam_MC_Litera_ID    , '1411', '������'                     , '0', '0', '0', '0');

    //``````````````````````````````````````````````````````````````````````````
    // ������������ ����������� ����������

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader('������������ ����������� ���������� \n   \n   ');

    XMLFileGAL_AddKatAbbr(false, 14, 'Razrjad'  , 14, '�������� ������');
    XMLFileGAL_AddKatAbbr(false, 15, 'WrkCond'  , 15, '��� ������� �����');
    XMLFileGAL_AddKatAbbr(false, 19, 'OpRazr'   , 19, '������ ��������');
    XMLFileGAL_AddKatAbbr(false, 20, 'MechRate' , 20, '������� �����������');
    XMLFileGAL_AddKatAbbr(false, 23, 'WrkDetQnt', 23, '���������� ������������ �������������� �������');
    XMLFileGAL_AddKatAbbr(false, 24, 'PartVol'  , 24, '����� ������������ ������');
    XMLFileGAL_AddKatAbbr(false, 25, 'KOneTm'   , 25, '����������� �������� �������');
    XMLFileGAL_AddKatAbbr(false, 27, 'tmPreFin' , 27, '����� ���������������-��������������� �������');
    XMLFileGAL_AddKatAbbr(false, 28, 'tmServ'   , 28, '����� ���������������� �������');
    XMLFileGAL_AddKatAbbr(false, 29, 'tmOpMash' , 29, '����� ��������� ������� (��������)');
    XMLFileGAL_AddKatAbbr(false, 30, 'tmOpMan'  , 30, '����� ��������� ������� (������)');
    XMLFileGAL_AddKatAbbr(false, 37, 'EdTime'   , 37, '������� ��������� �������');

    //``````````````````````````````````````````````````````````````````````````
    // ������������ ���������� ���� (������������ ���������)

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader('������������ ���������� \n   \n   ');
    vliParameter_ID = 0;
    vsParamNumber = 0;

    // ������� ��������� (INTERMECH)
    //vliParameter_ID = vliParameter_ID + 1;
    //vsParamName     = '������� ��������� (INTERMECH)';
    //vsParamCode     = '0';
    //vsParamOwner    = '0';
    //vsParamNumber   = vsParamNumber + 1;
    //vsParamCategory = '0';
    //vsParamWType    = '0';
    //vsParamIsGroup  = '1';
    //vsParamShowPar  = '0';
    //vsParamDefValue = '';
    //vsParamCRole    = '';
    //
    //gliParameter_BaseParams_ID = vliParameter_ID;
    //XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
    //  vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
    //  vsParamDefValue, vsParamCRole);

      // ��������� �����������
      vliParameter_ID = vliParameter_ID + 1;
      vsParamName     = sGetTune('ImportDataFromPDM.ParGroupMOp');//'��������� �����������';

      if (
        (vsParamName == '') ||
        (vsParamName == null))
        vsParamName   = '��������� �����������';

      vsParamCode     = '0';
      vsParamOwner    = '';//gliParameter_BaseParams_ID;
      vsParamNumber   = vsParamNumber + 1;
      vsParamCategory = '1001';
      vsParamWType    = '0';
      vsParamIsGroup  = '1';
      vsParamShowPar  = '0';
      vsParamDefValue = '';
      vsParamCRole    = '';

      gliParameter_OperParams_ID = vliParameter_ID;
      XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
        vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
        vsParamDefValue, vsParamCRole);

        // �������� ����������� -> �������� ������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '�������� ������';
        vsParamCode     = '14';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_Razrjad_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ��� ������� �����
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '��� ������� �����';
        vsParamCode     = '15';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '10';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '1';
        vsParamCRole    = '';

        gliOperParam_WrkCond_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ������ ��������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '������ ��������';
        vsParamCode     = '19';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_OpRazr_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ������� �����������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '������� �����������';
        vsParamCode     = '20';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_MechRate_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ���������� ������������ �������������� �������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '���������� ������������ �������������� �������';
        vsParamCode     = '23';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '0';
        vsParamCRole    = '';

        gliOperParam_WrkDetQnt_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ����� ������������ ������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����� ������������ ������';
        vsParamCode     = '24';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '4';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_PartVol_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ����������� �������� �������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����������� �������� �������';
        vsParamCode     = '25';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_KOneTm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ����� ���������������-��������������� �������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����� ���������������-��������������� �������';
        vsParamCode     = '27';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmPreFin_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ����� ���������������� �������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����� ���������������� �������';
        vsParamCode     = '28';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmServ_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ����� ��������� ������� (��������)
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����� ��������� ������� (��������)';
        vsParamCode     = '29';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmOpMash_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ����� ��������� ������� (������)
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����� ��������� ������� (������)';
        vsParamCode     = '30';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '3';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';

        gliOperParam_tmOpMan_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� ����������� -> ������� ��������� �������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '������� ��������� �������';
        vsParamCode     = '37';
        vsParamOwner    = gliParameter_OperParams_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '0';
        vsParamWType    = '10';
        vsParamIsGroup  = '0';
        vsParamShowPar  = '0';
        vsParamDefValue = '2';
        vsParamCRole    = '';

        gliOperParam_EdTime_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

      // ��������� ����
      vliParameter_ID = vliParameter_ID + 1;
      vsParamName     = sGetTune('ImportDataFromPDM.NormGroupMOp');//'��������� ����';

      if (
        (vsParamName == '') ||
        (vsParamName == null))
        vsParamName   = '��������� ����';

      vsParamCode     = '0';
      vsParamOwner    = '';//gliParameter_BaseParams_ID;
      vsParamNumber   = vsParamNumber + 1;
      vsParamCategory = '100';
      vsParamWType    = '3';
      vsParamIsGroup  = '1';
      vsParamShowPar  = '3';
      vsParamDefValue = '';
      vsParamCRole    = '';

      gliParameter_NormCategory_ID = vliParameter_ID;
      XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
        vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
        vsParamDefValue, vsParamCRole);

        // ������������ �����
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '������������ �����';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '101';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'�������: �����������, ������. (�������)');

        gliParameter_MatNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // ���������������� �����
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '���������������� �����';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '104';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'�������: �����������, ������. (�������)');

        gliParameter_ToolsNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

        // �������� �����
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '�������� �����';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '102';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'���������,��������� (����)');

        gliParameter_JobNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

          // �������� �������� ���� -> ����� ��������� ������� (������)
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = '����� ��������� ������� (������)';
          vsParamCode     = '30';
          vsParamOwner    = gliParameter_JobNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '3';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '3';
          vsParamDefValue = '';
          vsParamCRole    = '';

          gliJobNormParam_tmOpMan_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

          // �������� �������� ���� -> �������� ������
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = '�������� ������';
          vsParamCode     = '14';
          vsParamOwner    = gliParameter_JobNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '3';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '3';
          vsParamDefValue = '';
          vsParamCRole    = '';

          gliJobNormParam_Razrjad_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

          // �������� �������� ���� -> ������� ��������� �������
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = '������� ��������� �������';
          vsParamCode     = '37';
          vsParamOwner    = gliParameter_JobNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '10';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '0';
          vsParamDefValue = '2';
          vsParamCRole    = '';

          gliJobNormParam_EdTime_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

        // ����� ������������� �����������
        vliParameter_ID = vliParameter_ID + 1;
        vsParamName     = '����� ������������� ������������';
        vsParamCode     = '0';
        vsParamOwner    = gliParameter_NormCategory_ID;
        vsParamNumber   = vsParamNumber + 1;
        vsParamCategory = '103';
        vsParamWType    = '3';
        vsParamIsGroup  = '1';
        vsParamShowPar  = '3';
        vsParamDefValue = '';
        vsParamCRole    = '';//'������������ (������)';

        gliParameter_EqNorm_ID = vliParameter_ID;
        XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
          vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
          vsParamDefValue, vsParamCRole);

          // �������� ���� ������������� ������������ -> ����� ��������� ������� (��������)
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = '����� ��������� ������� (��������)';
          vsParamCode     = '29';
          vsParamOwner    = gliParameter_EqNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '3';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '3';
          vsParamDefValue = '';
          vsParamCRole    = '';

          gliEqNormParam_tmOpMash_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

          // �������� ���� ������������� ������������ -> ������� ��������� �������
          vliParameter_ID = vliParameter_ID + 1;
          vsParamName     = '������� ��������� �������';
          vsParamCode     = '37';
          vsParamOwner    = gliParameter_EqNorm_ID;
          vsParamNumber   = vsParamNumber + 1;
          vsParamCategory = '0';
          vsParamWType    = '10';
          vsParamIsGroup  = '0';
          vsParamShowPar  = '0';
          vsParamDefValue = '2';
          vsParamCRole    = '';

          gliEqNormParam_EdTime_ID = vliParameter_ID;
          XMLFileGAL_AddParameter(false, vliParameter_ID, vsParamName, vsParamCode, vsParamOwner,
            vsParamNumber, vsParamCategory, vsParamWType, vsParamIsGroup, vsParamShowPar,
            vsParamDefValue, vsParamCRole);

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_Prepare => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// ��������������� ���������� ������, ������������ ��� �������� ������� ��������
// IMBase � XML-���� � ������� ���������-ERP
// ���������:
//   awCatalogType - ��� ��������:
//     1: ����
//     2: ������������
//     3: ��������
//     4: ���� �����
//     5: ������� �������������
//     6: ���������
//     7: ��������

function XMLFileGAL_PrepareDataForCatalog(awCatalogType)
{

// ��������� ����������
var voQuery_F_KEY;                   // ������ ��� ���������� ������� ������
var F_KEY_Value;                     // �������� ���� F_KEY
var voQuery_FieldName_Podr_KodCeh;   // ������ ��� ���������� ������� ������
var voQuery_FieldName_Podr_KodUch;   // ������ ��� ���������� ������� ������
var voQuery_FieldName_Podr_CehName;  // ������ ��� ���������� ������� ������
var voQuery_FieldName_Podr_UchName;  // ������ ��� ���������� ������� ������
var voQuery_FieldName_Podr_KodASUP;  // ������ ��� ���������� ������� ������
var voQuery_FieldName_Equip_Name;    // ������ ��� ���������� ������� ������
var voQuery_FieldName_Equip_KodASUP; // ������ ��� ���������� ������� ������
var voQuery_FieldName_Oper_Kod;      // ������ ��� ���������� ������� ������
var voQuery_FieldName_KaWork_Code;   // ������ ��� ���������� ������� ������

  try
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    switch (awCatalogType)
    {

      //````````````````````````````````````````````````````````````````````````
      // ����
      case 1:
      {
        // ������������� ������� ��� �������� IMBase
        goIMBaseAPI_Catalog_TC_CEH = goIMBaseAPI.Catalogs.Item('TC_CEH');

        // ��������� ����������� �������������� F_KEY ��� ��������
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'TC_CEH\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // ������ ����� ��� �������� "��� ����"
        voQuery_FieldName_Podr_KodCeh = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'��� ����\' ',
          0,
          0);

        // ������ ����� ��� �������� "��� �������"
        voQuery_FieldName_Podr_KodUch = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'��� �������\' ',
          0,
          0);

        // ������ ����� ��� �������� "������������ ����"
        voQuery_FieldName_Podr_CehName = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'������������ ����\' ',
          0,
          0);

        // ������ ����� ��� �������� "������������ �������"
        voQuery_FieldName_Podr_UchName = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'������������ �������\' ',
          0,
          0);

        // ������ ����� ��� �������� "��� ���� ����"
        voQuery_FieldName_Podr_KodASUP = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'��� ���� ����\' ',
          0,
          0);

        // ���������� ���� ������� ��� ����������� ������������� ��� ���������
        // ������ ��������
        gsFieldName_Podr_KodCeh  = voQuery_FieldName_Podr_KodCeh.Fields.Item(0).Value;
        gsFieldName_Podr_KodUch  = voQuery_FieldName_Podr_KodUch.Fields.Item(0).Value;
        gsFieldName_Podr_CehName = voQuery_FieldName_Podr_CehName.Fields.Item(0).Value;
        gsFieldName_Podr_UchName = voQuery_FieldName_Podr_UchName.Fields.Item(0).Value;
        gsFieldName_Podr_KodASUP = voQuery_FieldName_Podr_KodASUP.Fields.Item(0).Value;

        // �������� ������� ������ (������������ ��������)
        voQuery_F_KEY.Close();
        voQuery_FieldName_Podr_KodCeh.Close();
        voQuery_FieldName_Podr_KodUch.Close();
        voQuery_FieldName_Podr_CehName.Close();
        voQuery_FieldName_Podr_UchName.Close();
        voQuery_FieldName_Podr_KodASUP.Close();

        // ������������� �������� ��� ���������� ������� �������������
        gliPodrCount = 0;
        gsaFieldValue_Podr_ID = new Array();
        gsaFieldValue_Podr_KodASUP = new Array();
        gsaFieldValue_Podr_KodCeh = new Array();
        gsaFieldValue_Podr_KodUch = new Array();
        gsaFieldValue_Podr_Name = new Array();
        gsaFieldValue_Podr_cPodr = new Array();
        gsaFieldValue_Podr_PrUch = new Array();

        break;
      } // case 1:

      //````````````````````````````````````````````````````````````````````````
      // ������������
      case 2:
      {
        // ������������� ������� ��� �������� IMBase
        goIMBaseAPI_Catalog_TC_OBORUD = goIMBaseAPI.Catalogs.Item('TC_OBORUD');

        // ��������� ����������� �������������� F_KEY ��� ��������
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'TC_OBORUD\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // ������ ����� ��� �������� "������������"
        voQuery_FieldName_Equip_Name = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'������������\' ',
          0,
          0);

        // ������ ����� ��� �������� "��� ����"
        voQuery_FieldName_Equip_KodASUP = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'��� ����\' ',
          0,
          0);

        // ���������� ���� ������� ��� ����������� ������������� ��� ���������
        // ������ ��������
        gsFieldName_Equip_Name    = voQuery_FieldName_Equip_Name.Fields.Item(0).Value;
        gsFieldName_Equip_KodASUP = voQuery_FieldName_Equip_KodASUP.Fields.Item(0).Value;

        // �������� ������� ������ (������������ ��������)
        voQuery_F_KEY.Close();
        voQuery_FieldName_Equip_Name.Close();
        voQuery_FieldName_Equip_KodASUP.Close();

      break;
      } // case 2:

      //````````````````````````````````````````````````````````````````````````
      // ��������
      case 3:
      {
        // ������������� ������� ��� �������� IMBase
        goIMBaseAPI_Catalog_TC_OPER = goIMBaseAPI.Catalogs.Item('TC_OPER');

        // ��������� ����������� �������������� F_KEY ��� ��������
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'TC_OPER\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // ������ ����� ��� �������� "��� ��������"
        voQuery_FieldName_Oper_Kod = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'��� ��������\' ',
          0,
          0);

        // ���������� ���� ������� ��� ����������� ������������� ��� ���������
        // ������ ��������
        gsFieldName_Oper_Kod = voQuery_FieldName_Oper_Kod.Fields.Item(0).Value;

        // �������� ������� ������ (������������ ��������)
        voQuery_F_KEY.Close();
        voQuery_FieldName_Oper_Kod.Close();

        break;
      } // case 3:

      //````````````````````````````````````````````````````````````````````````
      // ���� �����
      case 4:
      {
        // ������������� ������� ��� �������� IMBase
        goIMBaseAPI_Catalog_CTL000055 = goIMBaseAPI.Catalogs.Item('CTL000055');

        // ��������� ����������� �������������� F_KEY ��� ��������
        voQuery_F_KEY = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_key ' +
          ' FROM ' +
          '   im_tables ' +
          ' WHERE ' +
          '   f_table = \'CTL000055\' ',
          0,
          0);

        F_KEY_Value = voQuery_F_KEY.Fields.Item(0).Value;

        // ������ ����� ��� �������� "��� ���� �����"
        voQuery_FieldName_KaWork_Code = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f_field ' +
          ' FROM ' +
          '   im_fields ' +
          ' WHERE ' +
          '   f_table_id = \'' + F_KEY_Value + '\' AND ' +
          '   f_longname = \'��� ���� �����\' ',
          0,
          0);

        // ���������� ���� ������� ��� ����������� ������������� ��� ���������
        // ������ ��������
        gsFieldName_KaWork_Code = voQuery_FieldName_KaWork_Code.Fields.Item(0).Value;

        // �������� ������� ������ (������������ ��������)
        voQuery_F_KEY.Close();
        voQuery_FieldName_KaWork_Code.Close();

        break;
      } // case 4:

      //````````````````````````````````````````````````````````````````````````
      // ������� �������������
      case 5:
      {
        // ������������� ������� ��� �������� IMBase
        goIMBaseAPI_Catalog_TC_WORKERS = goIMBaseAPI.Catalogs.Item('TC_WORKERS');

        break;
      } // case 5:

      //````````````````````````````````````````````````````````````````````````
      // ���������
      case 6:
      {
        // ������������� ������� ��� �������� IMBase
        try
        {
          // ������� �������� ������� "���������"
          goIMBaseAPI_Catalog_CTL000001 = goIMBaseAPI.Catalogs.Item('CTL000159');
        } // try

        catch(vrdEvent)
        {
          // ����� - ������������ ������� "���������"
          goIMBaseAPI_Catalog_CTL000001 = goIMBaseAPI.Catalogs.Item('CTL000001');
        } // catch(vrdEvent)

        break;
      } // case 6:

      //````````````````````````````````````````````````````````````````````````
      // ��������
      case 7:
      {
        // ������������� ������� ��� �������� IMBase
        goIMBaseAPI_Catalog_TC_OSNAST = goIMBaseAPI.Catalogs.Item('TC_OSNAST');

        break;
      } // case 7:

    } // switch (awCatalogType)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_PrepareDataForCatalog => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_PrepareDataForCatalog

//------------------------------------------------------------------------------
// ��������������� ���������� ������ �������� ������������� ��� �������� � XML-����
// � ������� ���������-ERP

function XMLFileGAL_PrepareForUnloadDataPodr()
{

// ��������� ����������
var i; // ���������� �����
var j; // ���������� �����

  try
  {
    for (i = 0; i < gliPodrCount; i++)
    {
      if (gsaFieldValue_Podr_PrUch[i] == 0)
        continue;

      for (j = 0; j < gliPodrCount; j++)
      {
        if (j == i)
          continue;

        if (gsaFieldValue_Podr_PrUch[j] == 1)
          continue;

        if (gsaFieldValue_Podr_KodCeh[j] == gsaFieldValue_Podr_KodCeh[i])
        {
          gsaFieldValue_Podr_cPodr[i] = gsaFieldValue_Podr_ID[j];
          break;
        } // if (gsaFieldValue_Podr_KodCeh[j] == gsaFieldValue_Podr_KodCeh[i])
      } // for (j = 0; j < gliPodrCount; j++)
    } // for (i = 0; i < gliPodrCount; i++)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_PrepareForUnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_PrepareForUnloadDataPodr

//------------------------------------------------------------------------------
// ������� �������� ������ �� �������� IMBase � XML-���� � ������� ���������-ERP
// ���������:
//   awCatalogType - ��� ��������:
//     1: ����
//     2: ������������
//     3: ��������
//     4: ���� �����
//     5: ������� �������������
//     6: ���������
//     7: ��������

function XMLFileGAL_UnloadCatalog(awCatalogType)
{
  try
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� ������� ��������
    XMLFileGAL_PrepareDataForCatalog(awCatalogType);

    // �������� ������ ��������
    switch (awCatalogType)
    {

      //````````````````````````````````````````````````````````````````````````
      // ����
      case 1:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_CEH.Folders,
          '0');

        break;
      } // case 1:

      //````````````````````````````````````````````````````````````````````````
      // ������������
      case 2:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_OBORUD.Folders,
          '0');

        break;
      } // case 2:

      //````````````````````````````````````````````````````````````````````````
      // ��������
      case 3:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_OPER.Folders,
          '0');

        break;
      } // case 3:

      //````````````````````````````````````````````````````````````````````````
      // ���� �����
      case 4:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_CTL000055.Folders,
          '0');

        break;
      } // case 4:

      //````````````````````````````````````````````````````````````````````````
      // ������� �������������
      case 5:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_WORKERS.Folders,
          '0');

        break;
      } // case 5:

      //````````````````````````````````````````````````````````````````````````
      // ���������
      case 6:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_CTL000001.Folders,
          '0');

        break;
      } // case 6:

      //````````````````````````````````````````````````````````````````````````
      // ��������
      case 7:
      {
        // ����������� ��������� �����
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          goIMBaseAPI_Catalog_TC_OSNAST.Folders,
          '0');

        break;
      } // case 7:

    } // switch (awCatalogType)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadCatalog => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadCatalog

//------------------------------------------------------------------------------
// �������� ������ �������� ������������� � ������� ���������-ERP

function XMLFileGAL_UnloadDataPodr()
{

// ��������� ����������
var i;          // ���������� �����
var j;          // ���������� �����
var vsObjGalID; // �� ������� (���������)

  try
  {
    for (i = 0; i < gliPodrCount; i++)
    {
      // �������� ������������� � XML-�����
      vsObjGalID = GetObjGalID_Podr(
        false,
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_KodASUP[i],
        gsaFieldValue_Podr_Name[i],
        gsaFieldValue_Podr_cPodr[i]);
    } // for (i = 0; i < gliPodrCount; i++)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadDataPodr

//------------------------------------------------------------------------------
// �������� ������ �� ����� �������� IMBase � XML-���� � �������
// ���������-ERP
// ���������:
//   awCatalogType - ��� ��������:
//     1: ����
//     2: ������������
//     3: ��������
//     4: ���� �����
//     5: ������� �������������
//     6: ���������
//     7: ��������
//   aoFolder      - ������ "�����" (IImBaseFolder) � IMBaseAPI

function XMLFileGAL_UnloadFolder(awCatalogType, aoFolder)
{

// ��������� ����������
var vsParentFolderLevel;             // ��� ���������� ������ �� ����������� �����
var vsObjGalID;                      // �� ������� (���������)
//
var i;                               // ���������� �����
var j;                               // ���������� �����
var vbExistsProperty;                // ������� ������� �������������� ������� ��� ������� �����
var voPropery;                       // ������ ��� �������������� ������� ������� �����
var voRecords;                       // ������ ��� ������� ������� �����
var voTable;                         // ������ ��� ������ � ��������
var vsTableId;                       // ������������� �������
var vsFolderId;                      // ������������� �����
var vsIMBaseKey;                     // ��� ���������� IMBaseKey
var vsIMBaseKey;                     // ��� ���������� IMBaseKey
var vsKeyData;                       // ������ � ������� ��� ������, ��������������� ����������
                                     //   IMBaseKey
var vsaValues;                       // ������ �������� �������
//
var vsFieldValue_Podr_CehName;       // ������������ ����
var vsFieldValue_Podr_UchName;       // ������������ �������
var vsFieldValue_Podr_KodASUP;       // ��� ���� ��� ����/�������
var vsFieldValue_Podr_KodCeh;        // ��� ����
var vsFieldValue_Podr_KodUch;        // ��� �������
var vsFieldValue_Equip_Name;         // ������������ ������ �����������
var vsFieldValue_Equip_KodASUP;      // ��� ���� ��� ������ �����������
var vsFieldValue_Oper_Kod;           // ��� ��������
var vsFieldValue_Oper_Name;          // ������������ ��������
var vsFieldValue_KaWork_Code;        // ��� ���� �����
var vsFieldValue_KaWork_Name;        // ������������ ���� �����
var vsFieldValue_Profession_Name;    // ������������ ���������
var vsFieldValue_Profession_Kod;     // ��� ���������
var vsFieldValue_Profession_sDopInf; // ���� IMBaseKey
var vsFieldValue_MC_BaseMKey;        // ���� ������ ��������� ���������
var vsFieldValue_MC_Name;            // ������������ ��
var vsFieldValue_MC_BarKod;          // �������������� �����
var vsFieldValue_MC_Obozn;           // ��� ��
var vsFieldValue_MC_Kind;            // �������������� ��
var vsFieldValue_MC_cTypeMC;         // ������ �� ��� ��
var vsFieldValue_MC_TNVED;           // ��� ����� ��
var vsFieldValue_MC_RemMC;           // ���������� ��
var vsFieldValue_MC_AtlLastDate;     // ���� ��������� ����������� ��
var vsFieldValue_MC_Massa;           // ����� ��
var vsFieldValue_MC_PrMat;           // �������������� ��
var vsFieldValue_MC_cEd;             // ������ �� ������� ������� ��������
var vsFieldValue_MC_PriznMat;        // ������� ��������� ��� ��
var vsFieldValue_MC_VersionNmb;      // �������� �������� �������� "����� ������" ��� ��
var vsFieldValue_MC_InvNmbDoc;       // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsFieldValue_MC_BuildCode;       // �������� �������� �������� "��� ����������" ��� ��
var vsFieldValue_MC_Litera;          // �������� �������� �������� "������" ��� ��
var vbExists;                        // ������� ������������
//
var voQuery_Equipment;               // ������ ��� ���������� ������� ������ ��� ������ �����������
var vsFieldValue_ObjRem_Name;        // ������������ ������� �����������
var vsFieldValue_ObjRem_InNum;       // ����������� ����� ������� �����������

  try 
  {
    vsObjGalID = '0';

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������� ������� "�����"
    if (aoFolder == null)
      return(vsObjGalID);

    // ����������� ������ �� ����������� �����
    vsParentFolderLevel = 0;

    if (aoFolder.Parent != null)
    {
      XMLFileGAL_UnloadFolder(awCatalogType, aoFolder.Parent);
      vsParentFolderLevel = aoFolder.Parent.Level;
    } // if (aoFolder.Parent != null)

    // ��������� ������� ����� ��������
    switch (awCatalogType)
    {

      //````````````````````````````````````````````````````````````````````````
      // ����
      case 1:
        {
          // �������� ������� �������������� ������� ��� ������� �����
          vbExistsProperty = true;

          try {
            voPropery = aoFolder.Property;
          }

          catch (e) {
            vbExistsProperty = false;
          }

          // ���� � ����� ��� �������������� �������, �� ��� ����� ������������
          if (!vbExistsProperty)
            break;

          // ��������� ���� ��� ����
          vsFieldValue_Podr_KodCeh = voPropery.Values(gsFieldName_Podr_KodCeh);

          if (vsFieldValue_Podr_KodCeh == null)
            vsFieldValue_Podr_KodCeh = '';

          // ��������� ���� ��� �������
          vsFieldValue_Podr_KodUch = voPropery.Values(gsFieldName_Podr_KodUch);

          if (vsFieldValue_Podr_KodUch == null)
            vsFieldValue_Podr_KodUch = '';

          // ��������� ������������ ����
          vsFieldValue_Podr_CehName = voPropery.Values(gsFieldName_Podr_CehName);

          if (vsFieldValue_Podr_CehName == null)
            vsFieldValue_Podr_CehName = '';

          // ��������� ������������ �������
          vsFieldValue_Podr_UchName = voPropery.Values(gsFieldName_Podr_UchName);

          if (vsFieldValue_Podr_UchName == null)
            vsFieldValue_Podr_UchName = '';

          // ��������� ���� ����
          try {
            vsFieldValue_Podr_KodASUP = voPropery.Values(gsFieldName_Podr_KodASUP);

            if (vsFieldValue_Podr_KodASUP == null)
              vsFieldValue_Podr_KodASUP = '';
          }

          catch (e) {
            vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodCeh;

            if (vsFieldValue_Podr_KodUch != '')
              vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodASUP + '/' + vsFieldValue_Podr_KodUch;
          }

          // ���� � ������������� �� ����� "��� ����", �� ��� �������������
          // ������������
          if (
          (vsFieldValue_Podr_KodASUP == 0) ||
          (vsFieldValue_Podr_KodASUP == ''))
            break;

          // ���������� �������������� ������������� ��� �������� ���������� �������
          vsObjGalID = aoFolder.Level;

          // ��������� ������������ �������������
          if (vsFieldValue_Podr_UchName != '')
            vsFieldValue_Podr_CehName = vsFieldValue_Podr_UchName;

          // ���� � ������������� �� ������ "������������", �� ��� �������������
          // ������������
          //if (
          //  (vsFieldValue_Podr_CehName == 0) ||
          //  (vsFieldValue_Podr_CehName == ''))
          //  break;

          // �������� ������������� ������������� � �������
          vbExists = false;

          for (i = 0; i < gliPodrCount; i++)
            if (gsaFieldValue_Podr_ID[i] == aoFolder.Level) {
              vbExists = true;
              break;
            } //if (gsaFieldValue_Podr_ID[i] == aoFolder.Level)

          if (vbExists)
            break; // ������������� ��� ���� � �������

          // ���������� ������� ������������� � ��������
          gliPodrCount = gliPodrCount + 1;
          gsaFieldValue_Podr_ID[gliPodrCount - 1] = aoFolder.Level;
          gsaFieldValue_Podr_KodASUP[gliPodrCount - 1] = vsFieldValue_Podr_KodASUP;
          gsaFieldValue_Podr_KodCeh[gliPodrCount - 1] = vsFieldValue_Podr_KodCeh;
          gsaFieldValue_Podr_KodUch[gliPodrCount - 1] = vsFieldValue_Podr_KodUch;
          gsaFieldValue_Podr_Name[gliPodrCount - 1] = vsFieldValue_Podr_CehName;
          gsaFieldValue_Podr_cPodr[gliPodrCount - 1] = 0;
          gsaFieldValue_Podr_PrUch[gliPodrCount - 1] = 0;

          if (vsFieldValue_Podr_UchName != '')
            gsaFieldValue_Podr_PrUch[gliPodrCount - 1] = 1;

          // �������� ������������� � XML-�����
          //vsObjGalID = GetObjGalID_Podr(
          //  true,
          //  aoFolder.Level,
          //  aoFolder.Level,
          //  vsFieldValue_Podr_KodASUP,
          //  vsFieldValue_Podr_CehName,
          //  vsParentFolderLevel);

          break;
        }  // case 1:

      //````````````````````````````````````````````````````````````````````````
      // ������������
      case 2:
      {
        // �������� ������� �������������� ������� ��� ������� �����
        vbExistsProperty = true;

        try
        {
          voPropery = aoFolder.Property;
        }

        catch(e)
        {
          vbExistsProperty = false;
        }

        // ��������� ���� ���� � ������������ ��� ������ �����������
        if (! vbExistsProperty)
        {
          vsFieldValue_Equip_Name    = aoFolder.Name;
          vsFieldValue_Equip_KodASUP = aoFolder.Level;
        }
        else
        {
          vsFieldValue_Equip_Name    = voPropery.Values(gsFieldName_Equip_Name);
          vsFieldValue_Equip_KodASUP = voPropery.Values(gsFieldName_Equip_KodASUP);
        }

        // ���� � ������ ������������ �� ����� "��� ����", �� ��� ������ �����������
        // ������������
        if (
          (vsFieldValue_Equip_KodASUP == null) ||
          (vsFieldValue_Equip_KodASUP == 0) ||
          (vsFieldValue_Equip_KodASUP == ''))
        {
          //break;
          vsFieldValue_Equip_Name    = aoFolder.Name;
          vsFieldValue_Equip_KodASUP = aoFolder.Level;
        }

        // ��������� ������������ ������ �����������
        if (
          (vsFieldValue_Equip_Name == null) ||
          (vsFieldValue_Equip_Name == 0) ||
          (vsFieldValue_Equip_Name == ''))
          vsFieldValue_Equip_Name = '������ ������������ "' + aoFolder.Name + '"';

        // �������� ������ ������������ � XML-�����
        vsObjGalID = GetObjGalID_EqGroup(
          true,
          aoFolder.Level,
          aoFolder.Level,
          vsFieldValue_Equip_KodASUP,
          vsFieldValue_Equip_Name);

        // ������ ������ ������������ (����������� �������) ��� ������� ������ �����������
        voQuery_Equipment = goIMBaseAPI.Database.OpenQuery(
          ' SELECT ' +
          '   f3, ' +
          '   f5 ' +
          ' FROM ' +
          '   tc_invnom ' +
          ' WHERE ' +
          '   f1 = ' + aoFolder.Level + ' ',
          0,
          0);

        // ���� �� �������� �����������
        for (
          voQuery_Equipment.First();
          voQuery_Equipment.EOF == 0;
          voQuery_Equipment.Next())
        {
          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          vsFieldValue_ObjRem_Name  = voQuery_Equipment.Fields.Item(1).Value;
          vsFieldValue_ObjRem_InNum = voQuery_Equipment.Fields.Item(0).Value;

          // ������������� ��������� ���� ������������
          SetVisualHeader(
            '������� ������ �������� IMBase "������������" \n' +
            '������: \n' +
            vsFieldValue_Equip_Name + ' => "' + vsFieldValue_ObjRem_InNum + '"');

          // ���� � ������������ �� ����� "����������� �����", �� ��� ������������
          // ������������
          if (
            (vsFieldValue_ObjRem_InNum == null) ||
            (vsFieldValue_ObjRem_InNum == 0) ||
            (vsFieldValue_ObjRem_InNum == ''))
            continue;

          // ��������� ������������ �����������
          if (
            (vsFieldValue_ObjRem_Name == null) ||
            (vsFieldValue_ObjRem_Name == 0) ||
            (vsFieldValue_ObjRem_Name == ''))
            vsFieldValue_ObjRem_Name = aoFolder.Name;

          // �������� ������� ������������ � XML-�����
          vsObjGalID = GetObjGalID_ObjRem(
            false,
            vsFieldValue_ObjRem_InNum,
            vsFieldValue_ObjRem_InNum,
            vsFieldValue_ObjRem_Name,
            vsFieldValue_ObjRem_InNum,
            aoFolder.Level);
        } // for (...

        // �������� ������� ������ (������������ ��������)
        voQuery_Equipment.Close();

        break;
      } // case 2:

      //````````````````````````````````````````````````````````````````````````
      // ��������
    case 3:
      {
        // �������� ������� �������������� ������� ��� ������� �����
        vbExistsProperty = true;

        try 
        {
          voPropery = aoFolder.Property;
        }

        catch (e) 
        {
          vbExistsProperty = false;
        }

        // ��������� ���� ��������
        if (!vbExistsProperty)
          vsFieldValue_Oper_Kod = aoFolder.Level
        else
          vsFieldValue_Oper_Kod = voPropery.Values(gsFieldName_Oper_Kod);

        // ��������� ������������ ��������
        vsFieldValue_Oper_Name = aoFolder.Name;

        // ���� � �������� �� ����� "��� ��������", �� ��� �������
        // ������������
        if (
          (vsFieldValue_Oper_Kod == null) ||
          (vsFieldValue_Oper_Kod == 0) ||
          (vsFieldValue_Oper_Kod == '0') ||
          (vsFieldValue_Oper_Kod == '')) {
          //break;
          vsFieldValue_Oper_Kod = aoFolder.Level;
        } // if (...

        // �������� ����������� � XML-�����
        vsObjGalID = GetObjGalID_MnfOper(
          true,
          aoFolder.Level,
          vsFieldValue_Oper_Kod,
          vsFieldValue_Oper_Kod,
          vsFieldValue_Oper_Name);

        break;
      }  // case 3:

      //````````````````````````````````````````````````````````````````````````
      // ���� �����
      case 4:
      {
        // �������� ������� �������������� ������� ��� ������� �����
        vbExistsProperty = true;

        try
        {
          voPropery = aoFolder.Property;
        }

        catch(e)
        {
          vbExistsProperty = false;
        }

        // ���� � ����� ��� �������������� �������, �� ��� ����� ������������
        if (! vbExistsProperty)
          break;

        // ��������� ���� ���� �����
        vsFieldValue_KaWork_Code = voPropery.Values(gsFieldName_KaWork_Code);

        // ��������� ������������ ���� �����
        vsFieldValue_KaWork_Name = aoFolder.Name;

        // ���� � ���� ����� �� ����� "��� ���� �����", �� ���� ��� �����
        // ������������
        if (
          (vsFieldValue_KaWork_Code == null) ||
          (vsFieldValue_KaWork_Code == 0) ||
          (vsFieldValue_KaWork_Code == ''))
          break;

        // �������� ���� ����� � XML-�����
        vsObjGalID = GetObjGalID_KaWork(
          true,
          aoFolder.Level,
          aoFolder.Level,
          vsFieldValue_KaWork_Code,
          vsFieldValue_KaWork_Name);

        break;
      } // case 4:

      //````````````````````````````````````````````````````````````````````````
      // ������� �������������
      case 5:
      {
        //
        vsTableId = toHex(goIMBaseAPI_Catalog_TC_WORKERS.TableId);
        vsFolderId = toHex(aoFolder.Key);

        // ��������� ������ �� ������ ��� ������ � �������� � ������� �����
        voRecords = aoFolder.Records;

        // ���� �� ������� � ������� �����
        for (j = 1; j <= voRecords.Count; j++)
        {
          //
          vsIMBaseKey = 'i6' + vsTableId + vsFolderId + toHex(voRecords.Item(j - 1).Key);

          // ��������� ������������ ���������
          vsFieldValue_Profession_Name = voRecords.Item(j - 1).Values('������������ �����������');

          // ��������� ���� ���������
          vsFieldValue_Profession_Kod = voRecords.Item(j - 1).Values('��� ���������');

          // ��������� �������������� IMBaseKey ��� ���������
          vsFieldValue_Profession_sDopInf = vsIMBaseKey;

          // ���� ��� ������� ������������� �� ������ "������������ �����������", �� ��� ������
          // ������������
          if (
            (vsFieldValue_Profession_Name == null) ||
            (vsFieldValue_Profession_Name == 0) ||
            (vsFieldValue_Profession_Name == '0') ||
            (vsFieldValue_Profession_Name == ''))
            break;

          // ���� ��� ������� ������������� �� ����� "��� ���������", �� ��� ������
          // ������������
          if (
            (vsFieldValue_Profession_Kod == null) ||
            (vsFieldValue_Profession_Kod == 0) ||
            (vsFieldValue_Profession_Kod == '0') ||
            (vsFieldValue_Profession_Kod == ''))
            break;

          // �������� ��������� � XML-�����
          vsObjGalID = GetObjGalID_Profession(
            true,
            vsFieldValue_Profession_sDopInf,
            vsFieldValue_Profession_sDopInf,
            vsFieldValue_Profession_Kod,
            vsFieldValue_Profession_Name);
        } // for (j = 1; j <= voRecords.Count; j++)

        break;
      } // case 5:

      //````````````````````````````````````````````````````````````````````````
      // ���������
      case 6:
      {
        // ��������� ������ �� ������ ��� ������ � �������� � ������� �����
        voRecords = aoFolder.Records;

        // ���� �� ������� � ������� �����
        for (j = 1; j <= voRecords.Count; j++)
        {
          // ��������� ������ �� ������ ��� ������ � ��������
          voTable = voRecords.Item(j - 1).Table;
          if (voTable == null)
            continue;

          // �������� �������
          voTable.Open();

          // ���� �� ������� � ������� �������
          if (voTable.RecordCount > 0)
          {
            // ���������������� �� ������ ������ �������
            voTable.First();

            do
            {
              // ��������� IMBaseKey ��� ������ �������
              vsIMBaseKey = voTable.ImbaseKey;

              // ���� ������ ��������� ��������� �� ��������� �������������� � IMBaseKey
              vsFieldValue_MC_BaseMKey = vsIMBaseKey;

              // ��������� � ���� ������ ������������ ����� � �� �������� ��� ������ �������
              vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

              // ���������� ������������ � �������� �����
              vsaValues = IMBaseAPI_SplitParams(vsKeyData);

              // ����������� ������� ��� ����������� �����������
              vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ �����������');
              vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����');
              vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ �����������');
              vsFieldValue_MC_Kind        = '0'; // �������
              vsFieldValue_MC_cTypeMC     = '7'; // �������� ��������
              vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '����');
              vsFieldValue_MC_RemMC       = '';
              vsFieldValue_MC_AtlLastDate = '';
              vsFieldValue_MC_Massa       = '0';
              vsFieldValue_MC_PriznMat    = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������� ���������');
              vsFieldValue_MC_PrMat       = '0'; // ��������
              vsFieldValue_MC_cEd         = '0';
              vsFieldValue_MC_VersionNmb  = '';
              vsFieldValue_MC_InvNmbDoc   = '';
              vsFieldValue_MC_BuildCode   = '';
              vsFieldValue_MC_Litera      = '';

              // �������������� ��������� ��� ��������������� ����������
              if (
                (vsFieldValue_MC_PriznMat == '�') ||
                (vsFieldValue_MC_PriznMat == '���������������'))
              {
                vsFieldValue_MC_cTypeMC   = '77'; // ��������������� ��������

                // �����������, ����� �� ��� ���������������� ��������� ��������� �������� ��������
                //
                vsFieldValue_MC_BaseMKey = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '���� ������ ��������� ���������');

                if (
                  (vsFieldValue_MC_BaseMKey == null) ||
                  (vsFieldValue_MC_BaseMKey == ''))
                  vsFieldValue_MC_BaseMKey = vsIMBaseKey;
              } // if (...

              // ��������� ������������ ����������� �����������
              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name =
                  IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����') + ' ' +
                  vsFieldValue_MC_Obozn + ' ' +
                  vsFieldValue_MC_TNVED;

              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name = voTable.Name;

              // �������� ����������� � XML-�����
              vsObjGalID = GetObjGalID_MC(
                true,
                vsIMBaseKey,
                vsFieldValue_MC_BaseMKey,
                vsFieldValue_MC_Name,
                vsFieldValue_MC_BarKod,
                vsFieldValue_MC_Obozn,
                vsFieldValue_MC_Kind,
                vsFieldValue_MC_cTypeMC,
                vsFieldValue_MC_TNVED,
                vsFieldValue_MC_RemMC,
                vsFieldValue_MC_AtlLastDate,
                vsFieldValue_MC_Massa,
                vsFieldValue_MC_PrMat,
                vsFieldValue_MC_cEd,
                vsFieldValue_MC_VersionNmb,
                vsFieldValue_MC_InvNmbDoc,
                vsFieldValue_MC_BuildCode,
                vsFieldValue_MC_Litera);

              // ������� � ��������� ������ �������
              voTable.Next();
            } while (! voTable.EOF)
          } // if (voTable.RecordCount > 0)

          // �������� �������
          voTable.Close();
        } // for (j = 1; j <= voRecords.Count; j++)

        break;
      } // case 6:

      //````````````````````````````````````````````````````````````````````````
      // ��������
      case 7:
      {
        // ��������� ������ �� ������ ��� ������ � �������� � ������� �����
        voRecords = aoFolder.Records;

        // ���� �� ������� � ������� �����
        for (j = 1; j <= voRecords.Count; j++)
        {
          // ��������� ������ �� ������ ��� ������ � ��������
          voTable = voRecords.Item(j - 1).Table;
          if (voTable == null)
            continue;

          // �������� �������
          voTable.Open();

          // ���� �� ������� � ������� �������
          if (voTable.RecordCount > 0)
          {
            // ���������������� �� ������ ������ �������
            voTable.First();

            do
            {
              // ��������� IMBaseKey ��� ������ �������
              vsIMBaseKey = voTable.ImbaseKey;

              // ��������� � ���� ������ ������������ ����� � �� �������� ��� ������ �������
              vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

              // ���������� ������������ � �������� �����
              vsaValues = IMBaseAPI_SplitParams(vsKeyData);

              // ����������� ������� ��� ����������� �����������
              vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ ������������');
              vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����');
              vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ ������������');
              vsFieldValue_MC_Kind        = '0'; // �������
              vsFieldValue_MC_cTypeMC     = '777';
              vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '����');
              vsFieldValue_MC_RemMC       = '';
              vsFieldValue_MC_AtlLastDate = '';
              vsFieldValue_MC_Massa       = '0';
              vsFieldValue_MC_PrMat       = '2'; // ����������, ��������
              vsFieldValue_MC_cEd         = '0';
              vsFieldValue_MC_VersionNmb  = '';
              vsFieldValue_MC_InvNmbDoc   = '';
              vsFieldValue_MC_BuildCode   = '';
              vsFieldValue_MC_Litera      = '';

              // ��������� ������������ ����������� �����������
              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name =
                  IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����') + ' ' +
                  vsFieldValue_MC_Obozn + ' ' +
                  vsFieldValue_MC_TNVED;

              if (
                (vsFieldValue_MC_Name == null) ||
                (vsFieldValue_MC_Name == ''))
                vsFieldValue_MC_Name = voTable.Name;

              // �������� ����������� � XML-�����
              vsObjGalID = GetObjGalID_MC(
                true,
                vsIMBaseKey,
                vsIMBaseKey,
                vsFieldValue_MC_Name,
                vsFieldValue_MC_BarKod,
                vsFieldValue_MC_Obozn,
                vsFieldValue_MC_Kind,
                vsFieldValue_MC_cTypeMC,
                vsFieldValue_MC_TNVED,
                vsFieldValue_MC_RemMC,
                vsFieldValue_MC_AtlLastDate,
                vsFieldValue_MC_Massa,
                vsFieldValue_MC_PrMat,
                vsFieldValue_MC_cEd,
                vsFieldValue_MC_VersionNmb,
                vsFieldValue_MC_InvNmbDoc,
                vsFieldValue_MC_BuildCode,
                vsFieldValue_MC_Litera);

              // ������� � ��������� ������ �������
              voTable.Next();
            } while (! voTable.EOF)
          } // if (voTable.RecordCount > 0)

          // �������� �������
          voTable.Close();
        } // for (j = 1; j <= voRecords.Count; j++)

        break;
      } // case 7:

    } // switch (awCatalogType)

    return(vsObjGalID);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadFolder => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadFolder

//------------------------------------------------------------------------------
// ����������� �������� ������ �� ����� �������� IMBase � XML-���� � �������
// ���������-ERP
// ���������:
//   awCatalogType       - ��� ��������:
//     1: ����
//     2: ������������
//     3: ��������
//     4: ���� �����
//     5: ������� �������������
//     6: ���������
//     7: ��������
//   aoCurrentFolders    - ������ �� ������-��������� ���������
//   asParentFolderLevel - ������������� ����������� �����

function XMLFileGAL_UnloadFolders(awCatalogType, aoCurrentFolders, asParentFolderLevel)
{

// ��������� ����������
var i;                               // ���������� �����
var j;                               // ���������� �����
var k;                               // ���������� �����
var vsObjGalID;                      // �� ������� (���������)
var vliFolderCount;                  // ���������� �������������� ����� � ������� �����
var vbExistsProperty;                // ������� ������� �������������� ������� ��� ������� �����
var voPropery;                       // ������ ��� �������������� ������� ������� �����
var voRecords;                       // ������ ��� ������� ������� �����
var voTable;                         // ������ ��� ������ � ��������
var vsTableId;                       // ������������� �������
var vsFolderId;                      // ������������� �����
var vsIMBaseKey;                     // ��� ���������� IMBaseKey
var vsKeyData;                       //
var vsaValues;                       // ������ �������� �������
//
var vsFieldValue_Podr_CehName;       // ������������ ����
var vsFieldValue_Podr_UchName;       // ������������ �������
var vsFieldValue_Podr_KodASUP;       // ��� ���� ��� ����/�������
var vsFieldValue_Podr_KodCeh;        // ��� ����
var vsFieldValue_Podr_KodUch;        // ��� �������
var vsFieldValue_Equip_Name;         // ������������ ������ �����������
var vsFieldValue_Equip_KodASUP;      // ��� ���� ��� ������ �����������
var vsFieldValue_Oper_Kod;           // ��� ��������
var vsFieldValue_Oper_Name;          // ������������ ��������
var vsFieldValue_KaWork_Code;        // ��� ���� �����
var vsFieldValue_KaWork_Name;        // ������������ ���� �����
var vsFieldValue_Profession_Name;    // ������������ ���������
var vsFieldValue_Profession_Kod;     // ��� ���������
var vsFieldValue_Profession_sDopInf; // ���� IMBaseKey ��� ���������
var vsFieldValue_MC_BaseMKey;        // ���� ������ ��������� ���������
var vsFieldValue_MC_Name;            // ������������ ��
var vsFieldValue_MC_BarKod;          // �������������� �����
var vsFieldValue_MC_Obozn;           // ��� ��
var vsFieldValue_MC_Kind;            // �������������� ��
var vsFieldValue_MC_cTypeMC;         // ������ �� ��� ��
var vsFieldValue_MC_TNVED;           // ��� ����� ��
var vsFieldValue_MC_RemMC;           // ���������� ��
var vsFieldValue_MC_AtlLastDate;     // ���� ��������� ����������� ��
var vsFieldValue_MC_Massa;           // ����� ��
var vsFieldValue_MC_PrMat;           // �������������� ��
var vsFieldValue_MC_PriznMat;        // ������� ��������� ��� ��
var vsFieldValue_MC_VersionNmb;      // �������� �������� �������� "����� ������" ��� ��
var vsFieldValue_MC_InvNmbDoc;       // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsFieldValue_MC_BuildCode;       // �������� �������� �������� "��� ����������" ��� ��
var vsFieldValue_MC_Litera;          // �������� �������� �������� "������" ��� ��
//
var voQuery_Equipment;               // ������ ��� ���������� ������� ������ ��� ������ �����������
var vsFieldValue_ObjRem_Name;        // ������������ ������� �����������
var vsFieldValue_ObjRem_InNum;       // ����������� ����� ������� �����������

  try
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������� ������� aoCurrentFolders
    if (aoCurrentFolders == null)
      return;

    // ����������� ���������� �������������� ����� � ������� �����
    vliFolderCount = aoCurrentFolders.Count;

    // ���� �� �������������� ������
    for (i = 1; i <= vliFolderCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      // ��������� ������� ����� ��������
      switch (awCatalogType)
      {

        //``````````````````````````````````````````````````````````````````````
        // ����
        case 1:
        {
          // �������� ������� �������������� ������� ��� ������� �����
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // ���� � ����� ��� �������������� �������, �� ��� ����� ������������
          if (! vbExistsProperty)
            break;

          // ��������� ���� ��� ����
          vsFieldValue_Podr_KodCeh = voPropery.Values(gsFieldName_Podr_KodCeh);
          if (vsFieldValue_Podr_KodCeh == null)
            vsFieldValue_Podr_KodCeh = '';

          // ��������� ���� ��� �������
          vsFieldValue_Podr_KodUch = voPropery.Values(gsFieldName_Podr_KodUch);
          if (vsFieldValue_Podr_KodUch == null)
            vsFieldValue_Podr_KodUch = '';

          // ��������� ������������ ����
          vsFieldValue_Podr_CehName = voPropery.Values(gsFieldName_Podr_CehName);
          if (vsFieldValue_Podr_CehName == null)
            vsFieldValue_Podr_CehName = '';

          // ��������� ������������ �������
          vsFieldValue_Podr_UchName = voPropery.Values(gsFieldName_Podr_UchName);
          if (vsFieldValue_Podr_UchName == null)
            vsFieldValue_Podr_UchName = '';

          // ��������� ���� ����
          try
          {
            vsFieldValue_Podr_KodASUP = voPropery.Values(gsFieldName_Podr_KodASUP);
            if (vsFieldValue_Podr_KodASUP == null)
              vsFieldValue_Podr_KodASUP = '';
          }

          catch(e)
          {
            vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodCeh;
            if (vsFieldValue_Podr_KodUch != '')
              vsFieldValue_Podr_KodASUP = vsFieldValue_Podr_KodASUP + '/' + vsFieldValue_Podr_KodUch;
          }

          // ���� � ������������� �� ����� "��� ����", �� ��� �������������
          // ������������
          if (
            (vsFieldValue_Podr_KodASUP == 0) ||
            (vsFieldValue_Podr_KodASUP == ''))
            break;

          // ��������� ������������ ������������
          if (vsFieldValue_Podr_UchName != '')
            vsFieldValue_Podr_CehName = vsFieldValue_Podr_UchName;

          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // ���� � ������������� �� ������ "������������", �� ��� �������������
          // ������������
          //if (
          //  (vsFieldValue_Podr_CehName == 0) ||
          //  (vsFieldValue_Podr_CehName == ''))
          //  break;

          // ������������� ��������� ���� ������������
          SetVisualHeader(
            '������� ������ �������� IMBase "����" \n' +
            '������: \n' +
            vsFieldValue_Podr_CehName);

          // ���������� ������� ������������� � ��������
          gliPodrCount = gliPodrCount + 1;
          gsaFieldValue_Podr_ID[gliPodrCount - 1]      = aoCurrentFolders.Item(i - 1).Level;
          gsaFieldValue_Podr_KodASUP[gliPodrCount - 1] = vsFieldValue_Podr_KodASUP;
          gsaFieldValue_Podr_KodCeh[gliPodrCount - 1]  = vsFieldValue_Podr_KodCeh;
          gsaFieldValue_Podr_KodUch[gliPodrCount - 1]  = vsFieldValue_Podr_KodUch;
          gsaFieldValue_Podr_Name[gliPodrCount - 1]    = vsFieldValue_Podr_CehName;
          gsaFieldValue_Podr_cPodr[gliPodrCount - 1]   = 0;
          gsaFieldValue_Podr_PrUch[gliPodrCount - 1]   = 0;
          if (vsFieldValue_Podr_UchName != '')
            gsaFieldValue_Podr_PrUch[gliPodrCount - 1] = 1;

          // �������� ������������� � XML-�����
          //vsObjGalID = GetObjGalID_Podr(
          //  false,
          //  aoCurrentFolders.Item(i - 1).Level,
          //  aoCurrentFolders.Item(i - 1).Level,
          //  vsFieldValue_Podr_KodASUP,
          //  vsFieldValue_Podr_CehName,
          //  vsParentFolderLevel);

          break;
        } // case 1:

        //``````````````````````````````````````````````````````````````````````
        // ������������
        case 2:
        {
          // �������� ������� �������������� ������� ��� ������� �����
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // ��������� ���� ���� � ������������ ��� ������ �����������
          if (! vbExistsProperty)
          {
            vsFieldValue_Equip_Name    = aoCurrentFolders.Item(i - 1).Name;
            vsFieldValue_Equip_KodASUP = aoCurrentFolders.Item(i - 1).Level;
          }
          else
          {
            vsFieldValue_Equip_Name    = voPropery.Values(gsFieldName_Equip_Name);
            vsFieldValue_Equip_KodASUP = voPropery.Values(gsFieldName_Equip_KodASUP);
          }

          // ���� � ������ ������������ �� ����� "��� ����", �� ��� ������ �����������
          // ������������
          if (
            (vsFieldValue_Equip_KodASUP == null) ||
            (vsFieldValue_Equip_KodASUP == 0) ||
            (vsFieldValue_Equip_KodASUP == ''))
          {
            //break;
            vsFieldValue_Equip_Name    = aoCurrentFolders.Item(i - 1).Name;
            vsFieldValue_Equip_KodASUP = aoCurrentFolders.Item(i - 1).Level;
          }

          // ��������� ������������ ������ �����������
          if (
            (vsFieldValue_Equip_Name == null) ||
            (vsFieldValue_Equip_Name == 0) ||
            (vsFieldValue_Equip_Name == ''))
            vsFieldValue_Equip_Name = '������ ������������ "' + aoCurrentFolders.Item(i - 1).Name + '"';

          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // ������������� ��������� ���� ������������
          SetVisualHeader(
            '������� ������ �������� IMBase "������������" \n' +
            '������: \n' +
            vsFieldValue_Equip_Name);

          // �������� ������ ������������ � XML-�����
          vsObjGalID = GetObjGalID_EqGroup(
            false,
            aoCurrentFolders.Item(i - 1).Level,
            aoCurrentFolders.Item(i - 1).Level,
            vsFieldValue_Equip_KodASUP,
            vsFieldValue_Equip_Name);

          // ������ ������ ������������ (����������� �������) ��� ������� ������ �����������
          voQuery_Equipment = goIMBaseAPI.Database.OpenQuery(
            ' SELECT ' +
            '   f3, ' +
            '   f5 ' +
            ' FROM ' +
            '   tc_invnom ' +
            ' WHERE ' +
            '   f1 = ' + aoCurrentFolders.Item(i - 1).Level + ' ',
            0,
            0);

          // ���� �� �������� �����������
          for (
            voQuery_Equipment.First();
            voQuery_Equipment.EOF == 0;
            voQuery_Equipment.Next())
          {
            // �������� ���������� �������� ���������� �� ������� �����������
            if (!nNextVisual(0))
              throw new Error(10003, 'USER_ABORT');

            vsFieldValue_ObjRem_Name  = voQuery_Equipment.Fields.Item(1).Value;
            vsFieldValue_ObjRem_InNum = voQuery_Equipment.Fields.Item(0).Value;

            // ������������� ��������� ���� ������������
            SetVisualHeader(
              '������� ������ �������� IMBase "������������" \n' +
              '������: \n' +
              vsFieldValue_Equip_Name + ' => "' + vsFieldValue_ObjRem_InNum + '"');

            // ���� � ������������ �� ����� "����������� �����", �� ��� ������������
            // ������������
            if (
              (vsFieldValue_ObjRem_InNum == null) ||
              (vsFieldValue_ObjRem_InNum == 0) ||
              (vsFieldValue_ObjRem_InNum == ''))
              continue;

            // ��������� ������������ �����������
            if (
              (vsFieldValue_ObjRem_Name == null) ||
              (vsFieldValue_ObjRem_Name == 0) ||
              (vsFieldValue_ObjRem_Name == ''))
              vsFieldValue_ObjRem_Name = aoCurrentFolders.Item(i - 1).Name;

            // �������� ������� ������������ � XML-�����
            vsObjGalID = GetObjGalID_ObjRem(
              false,
              vsFieldValue_ObjRem_InNum,
              vsFieldValue_ObjRem_InNum,
              vsFieldValue_ObjRem_Name,
              vsFieldValue_ObjRem_InNum,
              aoCurrentFolders.Item(i - 1).Level);
          } // for (...

          // �������� ������� ������ (������������ ��������)
          voQuery_Equipment.Close();

          break;
        } // case 2:

        //``````````````````````````````````````````````````````````````````````
        // ��������
        case 3:
        {
          // �������� ������� �������������� ������� ��� ������� �����
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // ��������� ���� ��������
          if (! vbExistsProperty)
            vsFieldValue_Oper_Kod  = aoCurrentFolders.Item(i - 1).Level
          else
            vsFieldValue_Oper_Kod  = voPropery.Values(gsFieldName_Oper_Kod);

          // ��������� ������������ ��������
          vsFieldValue_Oper_Name = aoCurrentFolders.Item(i - 1).Name;

          // ���� � �������� �� ����� "��� ��������", �� ��� �������
          // ������������
          if (
            (vsFieldValue_Oper_Kod == null) ||
            (vsFieldValue_Oper_Kod == 0) ||
            (vsFieldValue_Oper_Kod == '0') ||
            (vsFieldValue_Oper_Kod == ''))
          {
            //break;
            vsFieldValue_Oper_Kod  = aoCurrentFolders.Item(i - 1).Level;
          } // if (...

          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // ������������� ��������� ���� ������������
          SetVisualHeader(
            '������� ������ �������� IMBase "��������" \n' +
            '������: \n' +
            vsFieldValue_Oper_Name);

          // �������� ����������� � XML-�����
          vsObjGalID = GetObjGalID_MnfOper(
            true,
            aoCurrentFolders.Item(i - 1).Level,
            vsFieldValue_Oper_Kod,
            vsFieldValue_Oper_Kod,
            vsFieldValue_Oper_Name);

          break;
        } // case 3:

        //``````````````````````````````````````````````````````````````````````
        // ���� �����
        case 4:
        {
          // �������� ������� �������������� ������� ��� ������� �����
          vbExistsProperty = true;

          try
          {
            voPropery = aoCurrentFolders.Item(i - 1).Property;
          }

          catch(e)
          {
            vbExistsProperty = false;
          }

          // ���� � ����� ��� �������������� �������, �� ��� ����� ������������
          if (! vbExistsProperty)
            break;

          // ��������� ���� ���� �����
          vsFieldValue_KaWork_Code = voPropery.Values(gsFieldName_KaWork_Code);

          // ��������� ������������ ���� �����
          vsFieldValue_KaWork_Name = aoCurrentFolders.Item(i - 1).Name;

          // ���� � ���� ����� �� ����� "��� ���� �����", �� ���� ��� �����
          // ������������
          if (
            (vsFieldValue_KaWork_Code == null) ||
            (vsFieldValue_KaWork_Code == 0) ||
            (vsFieldValue_KaWork_Code == ''))
            break;

          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // ������������� ��������� ���� ������������
          SetVisualHeader(
            '������� ������ �������� IMBase "���� �����" \n' +
            '������: \n' +
            vsFieldValue_KaWork_Name);

          // �������� ���� ����� � XML-�����
          vsObjGalID = GetObjGalID_KaWork(
            false,
            aoCurrentFolders.Item(i - 1).Level,
            aoCurrentFolders.Item(i - 1).Level,
            vsFieldValue_KaWork_Code,
            vsFieldValue_KaWork_Name);

          break;
        } // case 4:

        //``````````````````````````````````````````````````````````````````````
        // ������� �������������
        case 5:
        {
          //
          vsTableId = toHex(goIMBaseAPI_Catalog_TC_WORKERS.TableId);
          vsFolderId = toHex(aoCurrentFolders.Item(i - 1).Key);

          // ��������� ������ �� ������ ��� ������ � �������� � ������� �����
          voRecords = aoCurrentFolders.Item(i - 1).Records;

          // ���� �� ������� � ������� �����
          for (j = 1; j <= voRecords.Count; j++)
          {
            //
            vsIMBaseKey = 'i6' + vsTableId + vsFolderId + toHex(voRecords.Item(j - 1).Key);

            // ��������� ������������ ���������
            vsFieldValue_Profession_Name = voRecords.Item(j - 1).Values('������������ �����������');

            // ��������� ���� ���������
            vsFieldValue_Profession_Kod = voRecords.Item(j - 1).Values('��� ���������');

            // ��������� �������������� IMBaseKey ��� ���������
            vsFieldValue_Profession_sDopInf = vsIMBaseKey;

            // ���� ��� ������� ������������� �� ������ "������������ �����������", �� ��� ������
            // ������������
            if (
              (vsFieldValue_Profession_Name == null) ||
              (vsFieldValue_Profession_Name == 0) ||
              (vsFieldValue_Profession_Name == '0') ||
              (vsFieldValue_Profession_Name == ''))
              break;

            // ���� ��� ������� ������������� �� ����� "��� ���������", �� ��� ������
            // ������������
            if (
              (vsFieldValue_Profession_Kod == null) ||
              (vsFieldValue_Profession_Kod == 0) ||
              (vsFieldValue_Profession_Kod == '0') ||
              (vsFieldValue_Profession_Kod == ''))
              break;

            // �������� ���������� �������� ���������� �� ������� �����������
            if (!nNextVisual(0))
              throw new Error(10003, 'USER_ABORT');

            // ������������� ��������� ���� ������������
            SetVisualHeader(
              '������� ������ �������� IMBase "������� �������������" \n' +
              '������: \n' +
              vsFieldValue_Profession_Name);

            // �������� ��������� � XML-�����
            vsObjGalID = GetObjGalID_Profession(
              false,
              vsFieldValue_Profession_sDopInf,
              vsFieldValue_Profession_sDopInf,
              vsFieldValue_Profession_Kod,
              vsFieldValue_Profession_Name);
          } // for (j = 1; j <= voRecords.Count; j++)

          break;
        } // case 5:

        //``````````````````````````````````````````````````````````````````````
        // ���������
        case 6:
        {
          if (aoCurrentFolders.Item(i - 1).Name == '��������')
            continue;

          // ��������� ������ �� ������ ��� ������ � �������� � ������� �����
          voRecords = aoCurrentFolders.Item(i - 1).Records;

          // ���� �� ������� � ������� �����
          for (j = 1; j <= voRecords.Count; j++)
          {
            // ��������� ������ �� ������ ��� ������ � ��������
            voTable = voRecords.Item(j - 1).Table;
            if (voTable == null)
              continue;

            // �������� �������
            voTable.Open();

            // ���� �� ������� � ������� �������
            if (voTable.RecordCount > 0)
            {
              // ���������������� �� ������ ������ �������
              voTable.First();

              do
              {
                // ��������� IMBaseKey ��� ������ �������
                vsIMBaseKey = voTable.ImbaseKey;

                // ���� ������ ��������� ��������� �� ��������� �������������� � IMBaseKey
                vsFieldValue_MC_BaseMKey = vsIMBaseKey;

                // ��������� � ���� ������ ������������ ����� � �� �������� ��� ������ �������
                vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

                // ���������� ������������ � �������� �����
                vsaValues = IMBaseAPI_SplitParams(vsKeyData);

                // ����������� ������� ��� ����������� �����������
                vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ �����������');
                vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����');
                vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ �����������');
                vsFieldValue_MC_Kind        = '0'; // �������
                vsFieldValue_MC_cTypeMC     = '7'; // �������� ��������
                vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '����');
                vsFieldValue_MC_RemMC       = '';
                vsFieldValue_MC_AtlLastDate = '';
                vsFieldValue_MC_Massa       = '0';
                vsFieldValue_MC_PriznMat    = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������� ���������');
                vsFieldValue_MC_PrMat       = '0'; // ��������
                vsFieldValue_MC_cEd         = '0';
                vsFieldValue_MC_VersionNmb  = '';
                vsFieldValue_MC_InvNmbDoc   = '';
                vsFieldValue_MC_BuildCode   = '';
                vsFieldValue_MC_Litera      = '';

                // �������������� ��������� ��� ��������������� ����������
                if (
                  (vsFieldValue_MC_PriznMat == '�') ||
                  (vsFieldValue_MC_PriznMat == '���������������'))
                {
                  vsFieldValue_MC_cTypeMC   = '77'; // ��������������� ��������

                  // �����������, ����� �� ��� ���������������� ��������� ��������� �������� ��������
                  //
                  vsFieldValue_MC_BaseMKey = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '���� ������ ��������� ���������');

                  if (
                    (vsFieldValue_MC_BaseMKey == null) ||
                    (vsFieldValue_MC_BaseMKey == ''))
                    vsFieldValue_MC_BaseMKey = vsIMBaseKey;
                } // if (...

                // ��������� ������������ ����������� �����������
                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name =
                    IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����') + ' ' +
                    vsFieldValue_MC_Obozn + ' ' +
                    vsFieldValue_MC_TNVED;

                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name = voTable.Name;

                // �������� ���������� �������� ���������� �� ������� �����������
                if (!nNextVisual(0))
                  throw new Error(10003, 'USER_ABORT');

                // ������������� ��������� ���� ������������
                SetVisualHeader(
                  '������� ������ �������� IMBase "���������" \n' +
                  '������ (id = ' + vsIMBaseKey + '):\n' +
                  vsFieldValue_MC_Name);

                // �������� ����������� � XML-�����
                vsObjGalID = GetObjGalID_MC(
                  true,
                  vsIMBaseKey,
                  vsFieldValue_MC_BaseMKey,
                  vsFieldValue_MC_Name,
                  vsFieldValue_MC_BarKod,
                  vsFieldValue_MC_Obozn,
                  vsFieldValue_MC_Kind,
                  vsFieldValue_MC_cTypeMC,
                  vsFieldValue_MC_TNVED,
                  vsFieldValue_MC_RemMC,
                  vsFieldValue_MC_AtlLastDate,
                  vsFieldValue_MC_Massa,
                  vsFieldValue_MC_PrMat,
                  vsFieldValue_MC_cEd,
                  vsFieldValue_MC_VersionNmb,
                  vsFieldValue_MC_InvNmbDoc,
                  vsFieldValue_MC_BuildCode,
                  vsFieldValue_MC_Litera);

                // ������� � ��������� ������ �������
                voTable.Next();
              } while (! voTable.EOF)
            } // if (voTable.RecordCount > 0)

            // �������� �������
            voTable.Close();
          } // for (j = 1; j <= voRecords.Count; j++)

          break;
        } // case 6:

        //``````````````````````````````````````````````````````````````````````
        // ��������
        case 7:
        {
          // ��������� ������ �� ������ ��� ������ � �������� � ������� �����
          voRecords = aoCurrentFolders.Item(i - 1).Records;

          // ���� �� ������� � ������� �����
          for (j = 1; j <= voRecords.Count; j++)
          {
            // ��������� ������ �� ������ ��� ������ � ��������
            voTable = voRecords.Item(j - 1).Table;
            if (voTable == null)
              continue;

            // �������� �������
            voTable.Open();

            // ���� �� ������� � ������� �������
            if (voTable.RecordCount > 0)
            {
              // ���������������� �� ������ ������ �������
              voTable.First();

              do
              {
                // ��������� IMBaseKey ��� ������ �������
                vsIMBaseKey = voTable.ImbaseKey;

                // ��������� � ���� ������ ������������ ����� � �� �������� ��� ������ �������
                vsKeyData = goImDataBase.GetKeyDataEx(vsIMBaseKey);

                // ���������� ������������ � �������� �����
                vsaValues = IMBaseAPI_SplitParams(vsKeyData);

                // ����������� ������� ��� ����������� �����������
                vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ ������������');
                vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����');
                vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ ������������');
                vsFieldValue_MC_Kind        = '0'; // �������
                vsFieldValue_MC_cTypeMC     = '777';
                vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '����');
                vsFieldValue_MC_RemMC       = '';
                vsFieldValue_MC_AtlLastDate = '';
                vsFieldValue_MC_Massa       = '0';
                vsFieldValue_MC_PrMat       = '0'; // ��������
                vsFieldValue_MC_cEd         = '0';
                vsFieldValue_MC_VersionNmb  = '';
                vsFieldValue_MC_InvNmbDoc   = '';
                vsFieldValue_MC_BuildCode   = '';
                vsFieldValue_MC_Litera      = '';

                // ��������� ������������ ����������� �����������
                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name =
                    IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����') + ' ' +
                    vsFieldValue_MC_Obozn + ' ' +
                    vsFieldValue_MC_TNVED;

                if (
                  (vsFieldValue_MC_Name == null) ||
                  (vsFieldValue_MC_Name == ''))
                  vsFieldValue_MC_Name = voTable.Name;

                // �������� ���������� �������� ���������� �� ������� �����������
                if (!nNextVisual(0))
                  throw new Error(10003, 'USER_ABORT');

                // ������������� ��������� ���� ������������
                SetVisualHeader(
                  '������� ������ �������� IMBase "��������" \n' +
                  '������ (id = ' + vsIMBaseKey + '):\n' +
                  vsFieldValue_MC_Name);

                // �������� ����������� � XML-�����
                vsObjGalID = GetObjGalID_MC(
                  false,
                  vsIMBaseKey,
                  vsIMBaseKey,
                  vsFieldValue_MC_Name,
                  vsFieldValue_MC_BarKod,
                  vsFieldValue_MC_Obozn,
                  vsFieldValue_MC_Kind,
                  vsFieldValue_MC_cTypeMC,
                  vsFieldValue_MC_TNVED,
                  vsFieldValue_MC_RemMC,
                  vsFieldValue_MC_AtlLastDate,
                  vsFieldValue_MC_Massa,
                  vsFieldValue_MC_PrMat,
                  vsFieldValue_MC_cEd,
                  vsFieldValue_MC_VersionNmb,
                  vsFieldValue_MC_InvNmbDoc,
                  vsFieldValue_MC_BuildCode,
                  vsFieldValue_MC_Litera);

                // ������� � ��������� ������ �������
                voTable.Next();
              } while (! voTable.EOF)
            } // if (voTable.RecordCount > 0)

            // �������� �������
            voTable.Close();
          } // for (j = 1; j <= voRecords.Count; j++)

          break;
        } // case 7:

      } // switch (awCatalogType)

      if (aoCurrentFolders.Item(i - 1).SubFoldersCount != 0)
        XMLFileGAL_UnloadFolders(
          awCatalogType,
          aoCurrentFolders.Item(i - 1).Folders,
          aoCurrentFolders.Item(i - 1).Level);
    } // for (i = 1; i <= vliFolderCount; i++)

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadFolders => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadFolders

//------------------------------------------------------------------------------
// �������� ������� �� �������� "���������" �� ����� IMBaseKey
// � XML-���� � ������� ���������-ERP
// ���������:
//   asIMBaseKey - ���� IMBaseKey

function XMLFileGAL_UnloadIMBaseObj_MatNorm(asIMBaseKey)
{

// ��������� ����������
var vsObjGalID;                  // �� ������� (���������)
var vsKeyData;                   //
var vsaValues;                   //
var vsFieldValue_MC_BaseMKey;    // ���� ������ ��������� ���������
var vsFieldValue_MC_Name;        //
var vsFieldValue_MC_BarKod;      //
var vsFieldValue_MC_Obozn;       //
var vsFieldValue_MC_Kind;        //
var vsFieldValue_MC_cTypeMC;     //
var vsFieldValue_MC_TNVED;       //
var vsFieldValue_MC_RemMC;       //
var vsFieldValue_MC_AtlLastDate; //
var vsFieldValue_MC_Massa;       //
var vsFieldValue_MC_PrMat;       //
var vsFieldValue_MC_VersionNmb;  // �������� �������� �������� "����� ������" ��� ��
var vsFieldValue_MC_InvNmbDoc;   // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsFieldValue_MC_BuildCode;   // �������� �������� �������� "��� ����������" ��� ��
var vsFieldValue_MC_Litera;      // �������� �������� �������� "������" ��� ��
var vsFieldValue_MC_PriznMat;    // ������� ��������� ��� ��
var vsFieldValue_MC_VersionNmb;  // �������� �������� �������� "����� ������" ��� ��
var vsFieldValue_MC_InvNmbDoc;   // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsFieldValue_MC_BuildCode;   // �������� �������� �������� "��� ����������" ��� ��
var vsFieldValue_MC_Litera;      // �������� �������� �������� "������" ��� ��

  try
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    //
    if (
      (asIMBaseKey == null) ||
      (asIMBaseKey == ''))
      return;

    // ��������� � ���� ������ ������������ ����� � �� �������� ��� ������ �������
    vsKeyData = goImDataBase.GetKeyDataEx(asIMBaseKey);

    // ���� ������ ��������� ��������� �� ��������� �������������� � IMBaseKey
    vsFieldValue_MC_BaseMKey = asIMBaseKey;

    // ���������� ������������ � �������� �����
    vsaValues = IMBaseAPI_SplitParams(vsKeyData);

    // ����������� ������� ��� ����������� �����������
    vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ �����������');
    vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����');
    vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ �����������');
    vsFieldValue_MC_Kind        = '0'; // ��������
    vsFieldValue_MC_cTypeMC     = '0';
    vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '����');
    vsFieldValue_MC_RemMC       = '';
    vsFieldValue_MC_AtlLastDate = '';
    vsFieldValue_MC_Massa       = '0';
    vsFieldValue_MC_PriznMat    = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������� ���������');
    vsFieldValue_MC_PrMat       = '0'; // ��������
    vsFieldValue_MC_cEd         = '0';
    vsFieldValue_MC_VersionNmb  = '';
    vsFieldValue_MC_InvNmbDoc   = '';
    vsFieldValue_MC_BuildCode   = '';
    vsFieldValue_MC_Litera      = '';

    // ��������� ������������ ����������� �����������
    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name =
        IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����') + ' ' +
        vsFieldValue_MC_Obozn + ' ' +
        vsFieldValue_MC_TNVED;

    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name = voTable.Name;

    // �������������� ��������� ��� ��������������� ����������
    if (
      (vsFieldValue_MC_PriznMat == '�') ||
      (vsFieldValue_MC_PriznMat == '���������������'))
    {
      vsFieldValue_MC_cTypeMC   = '77'; // ��������������� ��������

      // �����������, ����� �� ��� ���������������� ��������� ��������� �������� ��������
      //
      vsFieldValue_MC_BaseMKey = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '���� ������ ��������� ���������');

      if (
        (vsFieldValue_MC_BaseMKey == null) ||
        (vsFieldValue_MC_BaseMKey == ''))
        vsFieldValue_MC_BaseMKey = asIMBaseKey;
    } // if (...

    // �������� ����������� � XML-�����
    vsObjGalID = GetObjGalID_MC(
      true,
      asIMBaseKey,
      vsFieldValue_MC_BaseMKey,
      vsFieldValue_MC_Name,
      vsFieldValue_MC_BarKod,
      vsFieldValue_MC_Obozn,
      vsFieldValue_MC_Kind,
      vsFieldValue_MC_cTypeMC,
      vsFieldValue_MC_TNVED,
      vsFieldValue_MC_RemMC,
      vsFieldValue_MC_AtlLastDate,
      vsFieldValue_MC_Massa,
      vsFieldValue_MC_PrMat,
      vsFieldValue_MC_cEd,
      vsFieldValue_MC_VersionNmb,
      vsFieldValue_MC_InvNmbDoc,
      vsFieldValue_MC_BuildCode,
      vsFieldValue_MC_Litera);

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadIMBaseObj_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadIMBaseObj_MatNorm

//------------------------------------------------------------------------------
// �������� ������� �� �������� "��������" �� ����� IMBaseKey
// � XML-���� � ������� ���������-ERP
// ���������:
//   asIMBaseKey - ���� IMBaseKey

function XMLFileGAL_UnloadIMBaseObj_ToolNorm(asIMBaseKey)
{

// ��������� ����������
var vsObjGalID;                  // �� ������� (���������)
var vsKeyData;                   //
var vsaValues;                   //
var vsFieldValue_MC_Name;        //
var vsFieldValue_MC_BarKod;      //
var vsFieldValue_MC_Obozn;       //
var vsFieldValue_MC_Kind;        //
var vsFieldValue_MC_cTypeMC;     //
var vsFieldValue_MC_TNVED;       //
var vsFieldValue_MC_RemMC;       //
var vsFieldValue_MC_AtlLastDate; //
var vsFieldValue_MC_Massa;       //
var vsFieldValue_MC_PrMat;       //
var vsFieldValue_MC_VersionNmb;  // �������� �������� �������� "����� ������" ��� ��
var vsFieldValue_MC_InvNmbDoc;   // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsFieldValue_MC_BuildCode;   // �������� �������� �������� "��� ����������" ��� ��
var vsFieldValue_MC_Litera;      // �������� �������� �������� "������" ��� ��

  try
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    //
    if (
      (asIMBaseKey == null) ||
      (asIMBaseKey == ''))
      return;

    // ��������� � ���� ������ ������������ ����� � �� �������� ��� ������ �������
    vsKeyData = goImDataBase.GetKeyDataEx(asIMBaseKey);

    // ���������� ������������ � �������� �����
    vsaValues = IMBaseAPI_SplitParams(vsKeyData);

    // ����������� ������� ��� ����������� �����������
    vsFieldValue_MC_Name        = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ ������������');
    vsFieldValue_MC_BarKod      = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����');
    vsFieldValue_MC_Obozn       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '������ ������������');
    vsFieldValue_MC_Kind        = '0'; // ��������
    vsFieldValue_MC_cTypeMC     = '777';
    vsFieldValue_MC_TNVED       = IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '����');
    vsFieldValue_MC_RemMC       = '';
    vsFieldValue_MC_AtlLastDate = '';
    vsFieldValue_MC_Massa       = '0';
    vsFieldValue_MC_PrMat       = '0'; // ��������
    vsFieldValue_MC_cEd         = '0';
    vsFieldValue_MC_VersionNmb  = '';
    vsFieldValue_MC_InvNmbDoc   = '';
    vsFieldValue_MC_BuildCode   = '';
    vsFieldValue_MC_Litera      = '';

    // ��������� ������������ ����������� �����������
    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name =
        IMBaseAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����') + ' ' +
        vsFieldValue_MC_Obozn + ' ' +
        vsFieldValue_MC_TNVED;

    if (
      (vsFieldValue_MC_Name == null) ||
      (vsFieldValue_MC_Name == ''))
      vsFieldValue_MC_Name = voTable.Name;

    // �������� ����������� � XML-�����
    vsObjGalID = GetObjGalID_MC(
      true,
      asIMBaseKey,
      asIMBaseKey,
      vsFieldValue_MC_Name,
      vsFieldValue_MC_BarKod,
      vsFieldValue_MC_Obozn,
      vsFieldValue_MC_Kind,
      vsFieldValue_MC_cTypeMC,
      vsFieldValue_MC_TNVED,
      vsFieldValue_MC_RemMC,
      vsFieldValue_MC_AtlLastDate,
      vsFieldValue_MC_Massa,
      vsFieldValue_MC_PrMat,
      vsFieldValue_MC_cEd,
      vsFieldValue_MC_VersionNmb,
      vsFieldValue_MC_InvNmbDoc,
      vsFieldValue_MC_BuildCode,
      vsFieldValue_MC_Litera);

    return;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadIMBaseObj_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadIMBaseObj_ToolNorm

//------------------------------------------------------------------------------
// ���������� ������ ��������� �� �� INTERMECH � XML-���� � ������� ���������-ERP

function XMLFileGAL_UnloadMeasureUnits()
{

// ��������� ����������
var i;              // ���������� �����
var vliRecordCount; // ���������� ������� � �������
var vsObjGalID;     // �� ������� (���������)
var vsID;           //
var vsName;         //
var vsAbbr;         //

  // ������������� �������� ��� ���������� ������� ������ ��������
  gliEdCount = 0;
  gsaFieldValue_Ed_ID = new Array();
  gsaFieldValue_Ed_Abbr = new Array();
  gsaFieldValue_Ed_Name = new Array();

  // ������ �� ����� ���� ��
  goSearchAPI.OpenQuery(
    ' SELECT ' +
    '   mu_id, ' +
    '   mu_name, ' +
    '   mu_short_name ' +
    ' FROM ' +
    '   mu ');

  // ��������� ���������� ������� � �������
  vliRecordCount = goSearchAPI.QueryRecordCount();

  // ���� �� ������� �������
  goSearchAPI.QueryGoFirst();

  for (i = 0; i < vliRecordCount; i++)
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������� "������� ���������" � XML-���� � ������� ���������-ERP
    vsID   = goSearchAPI.QueryFieldByName('mu_id');
    vsName = goSearchAPI.QueryFieldByName('mu_name');
    vsAbbr = goSearchAPI.QueryFieldByName('mu_short_name');

    vsObjGalID = GetObjGalID_Ed(
      false,
      vsID,
      vsID,
      vsName,
      vsAbbr);

    // ���������� ������� ����������� ������� ��������� � �������
    gliEdCount = gliEdCount + 1;
    gsaFieldValue_Ed_ID[gliEdCount - 1]   = vsID;
    gsaFieldValue_Ed_Abbr[gliEdCount - 1] = vsAbbr;
    gsaFieldValue_Ed_Name[gliEdCount - 1] = vsName;

    // ������� � ��������� ������ �������
    if (goSearchAPI.QueryGoNext() != 1)
      return;
  } // for (i = 0; i < len; i++)
} // function XMLFileGAL_UnloadMeasureUnits

//------------------------------------------------------------------------------
// ����������� �������� ������������������ �������� �� ������ �������

function XMLFileGAL_UnloadObj(asObjID)
{

// ��������� ����������
var i;                    // ���������� �����
var j;                    // ���������� �����
var vsObjGalID;           // �� ������� (���������)
var vsaValues;            // ������ �������� �������
var vsID;                 // ������������� �������
var vsValue_Massa;        // �������� �������� "�����"
var vsValue_ObjName;      // �������� �������� "������������"
var vsValue_ASUPCode;     // �������� �������� "��� ����"
var vsValue_VersionNmb;   // �������� �������� "������"
var vsValue_Designation;  // �������� �������� "�����������"
var vsValue_CodeOKP;      // �������� �������� "��� ���"
var vsValue_Purchased;    // �������� �������� "��������"
var vsValue_InvNmbDoc;    // �������� �������� "����������� ����� ���������"
var vsValue_Litera;       // �������� �������� "������"
var vsValue_BuildCode;    // �������� �������� "��� ����������"
var vsValue_CreateDate;   // �������� �������� "���� �������"
var vsValue_ModifyDate;   // �������� �������� "���� ����������� ���������"
var vsValue_IMBaseKey;    // �������� �������� "���� IMBase"
var vsValue_Remark;       // �������� �������� "����������"
var vsValue_MsrUnitId;    // �������� �������� "������� ���������"
var vsValue_ObjType;      // �������� �������� "��� �������"
var vsValue_PrMat;        // �������������� ��
var vsValue_TipDoc;       // ��� ���� ���������
var vliChildObjectsCount; // ���������� �������� ��������
var vsaChildObjects;      // ������ ��� ���������� ��������������� �������� ��������
var vsaChildObjCount;     // ������ ��� ���������� ���������� ��� �������� ��������
var vsaChildObjRefMU;     // ������ ��� ���������� ������ �� ������� ��������� ��
                          //   �������� ��������
var vliHdrKS_ID;          // ������������� ��������������� ������������

  try
  {
    // �������� ���������� �������� ���������� �� ������� ������������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������� �������� ������������������� �������
    goSearchAPI.OpenArticle(asObjID);

    // ��������� �������� �������� "��� �������"
    vsValue_ObjType = goSearchAPI.GetArticleKind();

    // �������� ���� �������
    if (
      (vsValue_ObjType != '1') &&         // ������������
      (vsValue_ObjType != '2') &&         // ��������
      (vsValue_ObjType != '3') &&         // ��������� �������
      (vsValue_ObjType != '4') &&         // ������
      (vsValue_ObjType != '5') &&         // ����������� �������
      (vsValue_ObjType != '6') &&         // ������ �������
      (vsValue_ObjType != '7') &&         // ��������
      (vsValue_ObjType != '8') &&         // ��������
      (vsValue_ObjType != '99999998') &&  // ���������������
      (vsValue_ObjType != '99999999') &&  // �����
      (vsValue_ObjType != '100000003') && // �������
      (vsValue_ObjType != '100000001') && // ��������
      (vsValue_ObjType != '9'))           // ����������� �������
    {
      // �������� �������� ������������������� �������
      goSearchAPI.CloseArticle();

      return (vsID); // ������ ���� ������������������ �������� ������������
    } // if (...

    // �������������� �������� ��� ������������ (��, �� � ����. �� ���� ��������� ��� �����������)
    if (vsValue_ObjType == '1') // ������������
    {
      if (vsValue_TipDoc != 'NODOC') 
      {
        // �������� �������� ������������������� �������
        goSearchAPI.CloseArticle();

        return (vsID);
      } // if (vsValue_TipDoc != 'NODOC')
    } // if (vsValue_ObjType == '1')

    // ��������� �������� �������� "�����"
    vsValue_Massa = goSearchAPI.GetArticleMassa();

    // ��������� �������� �������� "������������"
    vsValue_ObjName = goSearchAPI.GetArticleName();

    // ��������� �������� �������� "��� ����"
    vsValue_ASUPCode = '';

    if (goSearchAPI.FieldExists_Articles('��� ����')) 
      vsValue_ASUPCode = goSearchAPI.GetFieldValue_Articles('��� ����');

    // ��������� �������� �������� "������"
    vsValue_VersionNmb = '';

    if (goSearchAPI.FieldExists_Articles('field_ART_VER_ID'))
      vsValue_VersionNmb = goSearchAPI.GetFieldValue_Articles('field_ART_VER_ID');

    // ��������� �������� �������� "�����������"
    vsValue_Designation = goSearchAPI.GetArticleDesignation();

    // ��������� �������� �������� "��� ���"
    vsValue_CodeOKP = goSearchAPI.GetArticleOKP_Code();

    // ��������� �������� �������� "��������"
    vsValue_Purchased = goSearchAPI.GetArticlePurchased();

    // ��������� �������� �������� "����������� ����� ���������"
    vsValue_InvNmbDoc = goSearchAPI.GetArticleDocID();

    // ��������� �������� �������� "������"
    vsValue_Litera = goSearchAPI.GetArticleLitera();

    // ��������� �������� �������� "��� ����������"
    vsValue_BuildCode = goSearchAPI.GetArticleCode();

    // ��������� �������� �������� "���� �������"
    vsValue_CreateDate = '';

    if (goSearchAPI.FieldExists_Articles('���� �������'))
      vsValue_CreateDate = goSearchAPI.GetFieldValue_Articles('���� �������');

    // ��������� �������� �������� "���� ����������� ���������"
    vsValue_ModifyDate = '';

    if (goSearchAPI.FieldExists_Articles('���� ����������� ���������'))
        vsValue_ModifyDate = goSearchAPI.GetFieldValue_Articles('���� ����������� ���������');

    // ��������� �������� �������� "���� IMBase"
    vsValue_IMBaseKey = goSearchAPI.GetArticleImbaseKey();

    // ��������� �������� �������� "����������"
    vsValue_Remark = goSearchAPI.GetArticleRemark();

    // ��������� �������� �������� "������� ���������"
    vsValue_MsrUnitId = '';

    if (goSearchAPI.FieldExists_Articles('������� ���������'))
        vsValue_MsrUnitId = goSearchAPI.GetFieldValue_Articles('������� ���������');

    // ��������� �������� �������� "��� ���� ���������"
    vsValue_TipDoc = goSearchAPI.GetArticleTipDoc();

    // �������� �������� ������������������� �������
    goSearchAPI.CloseArticle();

    //������ �������
    //// ������ �������� ������� �������� ������������������� �������
    //vsaValues = SearchAPI_SplitParams(goSearchAPI.GetArticleParams(asObjID));
    //
    //// ��������� �������� ������� �������� ������������������� �������
    //vsValue_Massa       = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����');
    //vsValue_ObjName     = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '������������')
    //vsValue_ASUPCode    = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����')
    //vsValue_VersionNmb  = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, 'field_ART_VER_ID');
    //vsValue_Designation = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '�����������');
    //vsValue_CodeOKP     = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ���');
    //vsValue_Purchased   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '��������');
    //vsValue_InvNmbDoc   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '����������� ����� ���������');
    //vsValue_Litera      = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '������');
    //vsValue_BuildCode   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� ����������');
    //vsValue_CreateDate  = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '���� �������');
    //vsValue_ModifyDate  = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '���� ����������� ���������');
    //vsValue_IMBaseKey   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '���� IMBASE');
    //vsValue_Remark      = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '����������');
    //vsValue_MsrUnitId   = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '������� ���������');
    //vsValue_ObjType     = SearchAPI_GetParamValueFromArray(vsaValues, 0, 1, '��� �������');

    // ��������� ������� �� � ����������� �� ����
    switch (vsValue_ObjType)
    {
      // ������������
      case '1':
      {
        if (vsValue_InvNmbDoc != '-2') // ��������� � ��������� ������������ �������� ������������
          return('0');

        vsValue_PrMat = '1'; // ���
        break;
      } // case '1':

      // ��������
      case '2':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '2':

      // ��������� �������
      case '3':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '3':

      // ������
      case '4':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '4':

      // ����������� �������
      case '5':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '5':

      // ������ �������
      case '6':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '6':

      // ��������
      case '7':
      {
        vsValue_PrMat = '0'; // ��������
        break;
      } // case '7':

      // ��������
      case '8':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '8':

      // ���������������
      case '99999998':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '99999998':

      // �����
      case '99999999':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '99999999':

      // �������
      case '100000003':
      {
        vsValue_PrMat = '1'; // ���
        break;
      } // case '100000003':

      // ��������
      case '100000001':
      {
        vsValue_PrMat = '2'; // ����������, ��������
        break;
      } // case '100000001':

      // ����������� �������
      case '9':
      {
        vsValue_PrMat = '2'; // ����������, ��������
        break;
      } // case '9':
    } // switch (vsValue_ObjType)

    // ������������ �������������� ������������������� �������
    vsID = vsValue_IMBaseKey;

    if (
      (vsID == null) ||
      (vsID == '') ||
      (vsID == '0'))
      vsID = asObjID;

    // ����������� �������� �������� ��������� ������� ��� ������ ���������-ERP
    if (vsValue_Purchased == '+')
      vsValue_Purchased = '0'
    else
      vsValue_Purchased = '1';

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader(
      '������� ������������������� ������� \n' +
      '������: \n' +
      vsValue_ObjName);

    // �������� ����������� � XML-����� � ������� ���������-ERP
    if (  // ���� ������ �� IMBase
      (vsValue_IMBaseKey != null) &&
      (vsValue_IMBaseKey != '') &&
      (vsValue_IMBaseKey != '0'))
      XMLFileGAL_UnloadIMBaseObj_MatNorm(vsID)
    else // ���� ������ �� Search
      if (XMLFileGAL_AddMC(
        true,
        vsID,
        vsValue_ObjName + ' ' + vsValue_Designation,
        vsValue_ASUPCode,
        vsValue_Designation,
        vsValue_Purchased,
        vsValue_ObjType,
        vsValue_CodeOKP,
        vsValue_Remark,
        vsValue_ModifyDate,
        vsValue_Massa,
        vsValue_PrMat,
        vsValue_MsrUnitId,
        vsValue_VersionNmb,
        vsValue_InvNmbDoc,
        vsValue_BuildCode,
        vsValue_Litera) == 0)
        return(vsID);

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ��������������� � ��������������� ����������
    if (
      (gwExportMode > 1) &&
      (vsValue_ObjType != '1')) // �� ������������
    {
      // ���������� ���������������� ������� � �������
      vsaChildObjects = new Array();
      vsaChildObjCount = new Array();
      vsaChildObjRefMU = new Array();
      vliChildObjectsCount = 0;

      goSearchAPI.OpenArticleStructure(asObjID);
      goSearchAPI.asFirst();

      if (!goSearchAPI.asEof())
      {
        vliChildObjectsCount = goSearchAPI.asCount();

        for (i = 0; i < vliChildObjectsCount; i++)
        {
          vsaChildObjects[i] = goSearchAPI.asGetArtID();
          vsaChildObjCount[i] = goSearchAPI.asGetArtCount();
          vsaChildObjRefMU[i] = goSearchAPI.asGetArtCount_MU_ID();
          goSearchAPI.asNext();
        } // for (i = 0; i < vliChildObjectsCount; i++)
      } // if (!goSearchAPI.asEof())

      // ��������� ���������������� �������
      vliHdrKS_ID = '0';

      if (vliChildObjectsCount > 0)
      {
        vliHdrKS_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddHdrKS(
          true,
          vliHdrKS_ID,
          vsID,
          vsValue_ObjName,
          vsValue_Designation,
          vsaChildObjects,
          vsaChildObjCount,
          vsaChildObjRefMU);
      } // if (vliChildObjectsCount > 0)

      // ������������ ��������������� ����������
      if (gwExportMode > 2)
        XMLFileGAL_UnloadTP(asObjID, vsID, vliHdrKS_ID);
    } // if (...

    return(vsID);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObj

//------------------------------------------------------------------------------
// �������� ������������������ �������� � XML-���� � ������� ���������-ERP

function XMLFileGAL_UnloadObjects()
{

// ��������� ����������
var i;            // ���������� �����
var vliaArrayObj; // ������ ��� ���������� ��������������� ������������������ ��������
var vliIndex;     // ������ � �������
var vsArtId;      // �������� ���� "art_id"

  try
  {
    // ��������� ������� ������������������ ��������
    IMObjID_Load(goSearchAPI);

    // ��������� ������������������ ��������
    for (i = 0; i < gliIMObjID_Count; i++)
      XMLFileGAL_UnloadObj(gsaIMObjID[i]);

    // ���������� �������!!! ������ ���� ������������ ��� ���� � ������ ��������� ������
    // ������������������ �������� ��� ��������
    ////��������� ������� ������������������ ��������
    //goSearchAPI.OpenQuery(
    //  ' SELECT ' +
    //  '   art_id ' +
    //  ' FROM ' +
    //  '   articles ' +
    //  ' WHERE ' +
    //  '   section_id = 3 ');
    //
    //// ���������� �������
    //vliaArrayObj = new Array();
    //vliIndex = 0;
    //
    //do
    //{
    //  // �������� ���������� �������� ���������� �� ������� �����������
    //  if (!nNextVisual(0))
    //    throw new Error(10003, 'USER_ABORT');
    //
    //  vsArtId = goSearchAPI.QueryFieldByName('art_id');
    //  vliaArrayObj[vliIndex] = parseInt(vsArtId);
    //  vliIndex = vliIndex + 1;
    //} while (goSearchAPI.QueryGoNext() != 0);
    //
    //goSearchAPI.CloseQuery();
    //
    //// ��������� ������������������ ��������
    //for (i = 0; i < vliIndex; i++)
    //  XMLFileGAL_UnloadObj(vliaArrayObj[i]);

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadObjects => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObjects

//------------------------------------------------------------------------------
// �������� ����� ������������������ �������� � XML-���� � ������� ���������-ERP

function XMLFileGAL_UnloadObjTypes()
{

// ��������� ����������
var i;              // ���������� �����
var vliRecordCount; // ���������� ������� � �������
var vsSectionID;    // �������� ���� "section_id"
var vsSectName;     // �������� ���� "sectname"

  try
  {
    // ���������� ���� "�������� ��������" ��� �������� IMBase "��������"
    XMLFileGAL_AddTypeMC(
      false,
      '777',
      '777',
      '�������� ��������',
      1,
      2);

    // ���������� ������� ������� ����� ������������������ ��������
    goSearchAPI.OpenQuery(
      ' SELECT ' +
      '   section_id, ' +
      '   sectname ' +
      ' FROM ' +
      '   ssections ' +
      ' WHERE ' +
      '   section_id IN (1, 2, 3, 4, 5, 6, 7, 8, 99999998, 99999999, 100000001, 100000003, 77)');

    // ��������� ���������� ������� � �������
    vliRecordCount = goSearchAPI.QueryRecordCount();

    // ���� �� ������� �������
    goSearchAPI.QueryGoFirst();

    for (i = 1; i <= vliRecordCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      // ����������� �������� ������� ��� ������������ ���� ������������
      vsSectionID = goSearchAPI.QueryFieldByName('section_id');
      vsSectName  = goSearchAPI.QueryFieldByName('sectname');

      // ���������� ������� "��� ������������" � XML-���� � ������� ���������-ERP
      switch (vsSectionID)
      {
        // �����������
        case '1':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '1':

        // ���������
        case '2':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '2':

        // ��������� �������
        case '3':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '3':

        // ������
        case '4':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '4':

        // ����������� ������
        case '5':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            0,
            1);

          break;
        } // case '5':

        // ������ ������
        case '6':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            '������������� �������',
            0,
            1);

          break;
        } // case '6':

        // ���������
        case '7':
        {
          XMLFileGAL_AddTypeMC(
            false,
            '77',
            '77',
            '��������������� ���������',
            0,
            0);

          XMLFileGAL_AddTypeMC(
            false,
            '7',
            '7',
            '�������� ���������',
            0,
            0);

          break;
        } // case '7':

        // ���������
        case '8':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '8':

        // ���������������
        case '99999998':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            2);

          break;
        } // case '99999998':

        // ������
        case '99999999':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '99999999':

        // ������
        case '100000003':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            1);

          break;
        } // case '100000003':

        // ��������
        case '100000001':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            '�������� ������������ ������������',
            1,
            2);

          break;
        } // case '100000001':

        // ����������� ������
        case '9':
        {
          XMLFileGAL_AddTypeMC(
            false,
            vsSectionID,
            vsSectionID,
            vsSectName,
            1,
            2);

          break;
        } // case '9':
      } // switch (vsSectionID)

      // ������� � ��������� ������ �������
      if (goSearchAPI.QueryGoNext() != 1)
        return;
    } // for (i = 1; i <= vliRecordCount; i++)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadObjTypes => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObjTypes

//------------------------------------------------------------------------------
// �������� ����������� ��� ������������������� �������
// ���������:
//   asObjID     - ������������� ������������������� �������
//   aliMC_ID    - ������������� �����������
//   aliHdrKS_ID - ������������� ��������������� ������������
// ���������:
//   ������������� ���������� �����

function XMLFileGAL_UnloadTP(asObjID, aliMC_ID, aliHdrKS_ID)
{

// ��������� ����������
var voArticle;       // ������ "������������������ ������" � TechCardAPI
var voTechProcesses; // ������ "�����������" � TechCardAPI
var voTechProcess;   // ������ "����������" � TechCardAPI
//
var vliKatMarsh_ID;  // ������������� ����������� ���������� �����
//
var vsShifr;         // ���� (���) �����������
var vsName;          // ������������ ���������� �����
var vsTObject;       // ��� �������, ��� �������� ����������� ��
var vsCObject;       // ������ �� ������, ��� �������� ����������� ��
var vsProduct;       // ������� ����� ��� �������� ����� (������ = 1):
                     //   0 - �����,
                     //   1 - ������� ������
var vsEdNorm;        // ����������� ���������� �������, ��� �������� ����������� ��
var vsCEd;           // ������ �� ������� ��������� �������, ��� �������� ����������� ��
var vsMinVol;        // ����������� ������ ������ ��� �����������
var vsCheckers_1;    // ������ �� ���������� 1, �������������� �������� (����������)
var vsAddedSign_1;   // ����������� ������� ���������� 1, �������������� �������� (����������)
var vsCheckDt_1;     // ���� ���������� 1
var vsCheckers_2;    // ������ �� ���������� 2, �������������� �������� (��������)
var vsAddedSign_2;   // ����������� ������� ���������� 2, �������������� �������� (��������)
var vsCheckDt_2;     // ���� ���������� 2
var vsCheckers_3;    // ������ �� ���������� 3, �������������� �������� (��������)
var vsAddedSign_3;   // ����������� ������� ���������� 3, �������������� �������� (��������)
var vsCheckDt_3;     // ���� ���������� 3
var vsParGroup;      // ������ �� ������ ���������� ��� �������/�������� ��
var vsCNormGroup;    // ������ �� ������ ���� ��� �������/�������� ��

  try
  {
    // ���������� ������������������� ������� �� ��� ��������������
    voArticle = goTechCardAPI.Articles.ByArchCode(asObjID);
    if (voArticle == null)
      return;

    // ��������� ������� "����������" ��� �������� ������������������� �������
    voTechProcesses = voArticle.TechProcesses;
    if (voTechProcesses == null)
      return;

    // ���� �� ������������
    if (voTechProcesses.Count > 0)
    {
      voTechProcess = voTechProcesses.First;

      do
      {
        // �������� ���������� �������� ���������� �� ������� �����������
        if (!nNextVisual(0))
           throw new Error(10003, 'USER_ABORT');

        // ���������� �������� ��� ����� ��������� ���������� �����
        vsShifr       = voTechProcess.Value('����');
        vsName        = voTechProcess.Name + '-' + voTechProcess.Designation;
        vsTObject     = '4'; // ��� ��� ��� ����������� = 4
        vsCObject     = aliMC_ID;
        vsProduct     = '1'; // 1 - ������� ������ (0 - �����)
        vsEdNorm      = '1'; //
        vsCEd         = '0';
        vsMinVol      = voTechProcess.Value('����');
        vsCheckers_1  = voTechProcess.Value('���');
        vsAddedSign_1 = '����������';
        vsCheckDt_1   = 'DD/MM/YYYY';
        vsCheckers_2  = voTechProcess.Value('����');
        vsAddedSign_2 = '��������';
        vsCheckDt_2   = 'DD/MM/YYYY';
        vsCheckers_3  = voTechProcess.Value('���');
        vsAddedSign_3 = '��������';
        vsCheckDt_3   = 'DD/MM/YYYY';
        vsParGroup    = '0'; // GetOperParGroup();
        vsCNormGroup  = '0'; // GetoperNormGroup();

        // ��������� �������� ���� "����������� �����"
        if ((vsMinVol == '0') || (vsMinVol == null))
          vsMinVol = 1;

        // ��������� �������� ���� "����������"
        //if (vsCheckers_1 != '')
        //  vsCheckers_1 = XMLFileGAL_AddPerson(vsCheckers_1);

        // ��������� �������� ���� "��������"
        //if (vsCheckers_2 != '')
        //  vsCheckers_2 = XMLFileGAL_AddPerson(vsCheckers_2);

        // ��������� �������� ���� "��������"
        //if (vsCheckers_3 != '')
        //  vsCheckers_3 = XMLFileGAL_AddPerson(vsCheckers_3);

        // �������� ��������� ���������� �����

        // ���������� ���������� ����� � XML-���� � ������� ���������-ERP
        vliKatMarsh_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddKatMarsh(
          voTechProcess,
          true,
          vliKatMarsh_ID,
          vsShifr,
          vsName,
          vsTObject,
          vsCObject,
          vsProduct,
          vsEdNorm,
          vsCEd,
          vsMinVol,
          vsCheckers_1,
          vsAddedSign_1,
          vsCheckDt_1,
          vsCheckers_2,
          vsAddedSign_2,
          vsCheckDt_2,
          vsCheckers_3,
          vsAddedSign_3,
          vsCheckDt_3,
          vsParGroup,
          vsCNormGroup,
          aliHdrKS_ID);

        // ������� � ���������� ��
        if (voTechProcesses.EOF == 0)
          voTechProcess = voTechProcesses.Next;
      } while(voTechProcesses.EOF == 0)
    } // if (voTechProcesses.Count > 0)

    return;
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTP => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTP

//------------------------------------------------------------------------------
// �������� ���� ������������� ������������ ��� �������� �����������
// ���������:
//   aoTPOper                             - ������ "�������� �����������" � TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileGAL_UnloadTPOper_EqNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{
var voEquipments;        // ������ "����� ������������� ������������ �� ��������" � TechCardAPI
var voEquipment;         // ������ "����� ������������� ������������ �� ��������" � TechCardAPI
var voFolder;            // ������ "�����" � IMBaseAPI
//
var vsEquipment_ID;      // ������������� ������������
//
var vliMarshSpEqNorm_ID; // ������������� ��� ����� ������������� ������������ �� ��������
//
var vsTObject;           // ��� �������-��������� �����
var vsCObject;           // ������ �� ������-�������� �����
var vsTResource;         // ��� ������������ �������
var vsCResource;         // ������ �� ����������� ������
var vsWProd;             // ��� �����/�������� ������
var vsProduct;           // ����� �������������: �����/�����
var vsParGroup;          // ��� ������ ����������
var vsNormSort;          // ��������� ������ ����������
var vsRasx;              // ����� �������
var vsCEd;               // ������ �� ������� ��������
var vsDNormEd;           // ������� �����������
var vsCNormEd;           // ������ �� ������� ��������� ������� �����������

  try
  {
    // �������� ������������� ������� aoTPOper
    if (aoTPOper == null)
      return;

    // ���� �� ������ ������������� ������������ (INTERMECH)
    voEquipments = aoTPOper.Equipments;

    if (voEquipments != null)
    {
      if (voEquipments.Count > 0)
      {
        voEquipment = voEquipments.First();

        do
        {
          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // �������� ������ ������������ � XML-�����
          vsEquipment_ID = '0';

          if (
            (voEquipment.Code != null) &&
            (voEquipment.Code != '') &&
            (voEquipment.Code != '0'))
          {
            try
            {
              voFolder = goIMBaseAPI_Catalog_TC_OBORUD.FindFolder(voEquipment.Code, 1);

              if (voFolder != null)
                vsEquipment_ID = XMLFileGAL_UnloadFolder(2, voFolder);
            }

            catch(e)
            {
            }
          } // if (...

          // ���������� ����� ������������� ������������ � XML-���� (��������������)
          vliMarshSpEqNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                // ��� �������-��������� �����
          vsCObject   = asNOpe;                 // ������ �� ������-�������� �����
          vsTResource = '47';                   // ��� ������������ �������
          vsCResource = voEquipment.Code;       // ������ �� ����������� ������
          vsWProd     = '0';                    // ��� �����/�������� ������
          vsProduct   = '0';                    // ����� �������������: �����/�����
          vsParGroup  = gliParameter_EqNorm_ID; // ��� ������ ����������
          vsNormSort  = '103';                  // ��������� ������ ����������
          vsRasx      = '1';                    // ����� �������
          vsCEd       = '0';                    // ������ �� ������� ���������
          vsDNormEd   = '1';                    // ������� ������������
          vsCNormEd   = '0';                    // ������ �� ������� ��������� ������� ������������

          // ��������� ������ �� ������
          if (vsEquipment_ID != '0')
            vsCResource = vsEquipment_ID;

          // ���������� ����� ������������� ������������ � XML-����
          XMLFileGAL_AddMarshSpEqNorm(
            false,
            vliMarshSpEqNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // ������� � ��������� ����� ������������� ������������
          voEquipment = voEquipments.Next();
        } while(!voEquipments.EOF())
      } // if (voEquipments.Count > 0)
    } // if (voEquipments != null)

    //``````````````````````````````````````````````````````````````````````````
    // ��� ���� �� ���������, �.�. ���������� �� ��������� ������������� ������������
    // � �� ��������
    //// ���� �� ��������� �������� ��� ��������� ���� ��� ��������
    //
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // �������� ���������� �������� ���������� �� ������� �����������
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // ���� �� ������ ������������� ������������ ��� ������������� �������� (INTERMECH)
    //    voEquipments = voTPOperStep.Equipments;
    //
    //    if (voEquipments != null)
    //    {
    //      if (voEquipments.Count > 0)
    //      {
    //        voEquipment = voEquipments.First();
    //
    //        do
    //        {
    //          // �������� ���������� �������� ���������� �� ������� �����������
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // �������� ������ ������������ � XML-�����
    //          vsEquipment_ID = '0';
    //
    //          if (
    //            (voEquipment.Code != null) &&
    //            (voEquipment.Code != '') &&
    //            (voEquipment.Code != '0'))
    //          {
    //            try
    //            {
    //              voFolder = goIMBaseAPI_Catalog_TC_OBORUD.FindFolder(voEquipment.Code, 1);
    //
    //              if (voFolder != null)
    //                vsEquipment_ID = XMLFileGAL_UnloadFolder(2, voFolder);
    //            }
    //
    //            catch(e)
    //            {
    //            }
    //          } // if (...
    //
    //          // ���������� ����� ������������� ������������ � XML-���� (��������������)
    //          vliMarshSpEqNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                // ��� �������-��������� �����
    //          vsCObject   = asNOpe;                 // ������ �� ������-�������� �����
    //          vsTResource = '47';                   // ��� ������������ �������
    //          vsCResource = voEquipment.Code;       // ������ �� ����������� ������
    //          vsWProd     = '0';                    // ��� �����/�������� ������
    //          vsProduct   = '0';                    // ����� �������������: �����/�����
    //          vsParGroup  = gliParameter_EqNorm_ID; // ��� ������ ����������
    //          vsNormSort  = '103';                  // ��������� ������ ����������
    //          vsRasx      = '1';                    // ����� �������
    //          vsCEd       = '0';                    // ������ �� ������� ��������
    //          vsDNormEd   = '1';                    // ������� �����������
    //          vsCNormEd   = '0';                    // ������ �� ������� ��������� ������� �����������
    //
    //          // ��������� ������ �� ������
    //          if (vsEquipment_ID != '0')
    //            vsCResource = vsEquipment_ID;
    //
    //          // ���������� ����� ������������� ������������ � XML-����
    //          XMLFileGAL_AddMarshSpEqNorm(
    //            false,
    //            vliMarshSpEqNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // ������� � ��������� ����� ������������� �����������
    //          voEquipment = voEquipments.Next();
    //        } while(!voEquipments.EOF())
    //      } // if (voEquipments.Count > 0)
    //    } // if (voEquipments != null)
    //
    //    // ����� ���������� ��������
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_EqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_EqNorm

//------------------------------------------------------------------------------
// �������� �������� ���� ��� �������� �����������
// ���������:
//   aoTPOper                             - ������ "�������� �����������" � TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileGAL_UnloadTPOper_JobNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{
var voWorkers;            // ������ "�������� ����� �� ��������" � TechCardAPI
var voWorker;             // ������ "�������� ����� �� ��������" � TechCardAPI
var voFolder;             // ������ "�����" � IMBaseAPI
//
var vsWorker_ID;          // ������������� ��������� �������
//
var vliMarshSpJobNorm_ID; // ������������� ��� �������� ����� �� ��������
//
var vsTObject;            // ��� �������-��������� �����
var vsCObject;            // ������ �� ������-�������� �����
var vsTResource;          // ��� ������������ �������
var vsCResource;          // ������ �� ����������� ������
var vsWProd;              // ��� �����/�������� ������
var vsProduct;            // ����� �������������: �����/�����
var vsParGroup;           // ��� ������ ����������
var vsNormSort;           // ��������� ������ ����������
var vsRasx;               // ����� �������
var vsCEd;                // ������ �� ������� ��������
var vsDNormEd;            // ������� �����������
var vsCNormEd;            // ������ �� ������� ��������� ������� �����������

  try
  {
    // �������� ������������� ������� aoTPOper
    if (aoTPOper == null)
      return;

    // ���� �� �������� ������ (INTERMECH)
    voWorkers = aoTPOper.Workers;

    if (voWorkers != null)
    {
      if (voWorkers.Count > 0)
      {
        voWorker = voWorkers.First();

        do
        {
          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // �������� ��������� � XML-�����
          vsWorker_ID = '0';

          if (
            (voWorker.Code != null) &&
            (voWorker.Code != '') &&
            (voWorker.Code != '0')) 
          {
            try 
            {
              voFolder = goIMBaseAPI_Catalog_TC_WORKERS.FindFolder(voWorker.Code, 1);

              if (voFolder != null)
                vsWorker_ID = XMLFileGAL_UnloadFolder(5, voFolder);
            }

            catch (e) 
            {
            }
          } // if (...

          // ���������� �������� ����� � XML-���� (��������������)
          vliMarshSpJobNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                 // ��� �������-��������� �����
          vsCObject   = asNOpe;                  // ������ �� ������-�������� �����
          vsTResource = '36';                    // ��� ������������ �������
          vsCResource = voWorker.Code;           // ������ �� ����������� ������
          vsWProd     = '0';                     // ��� �����/�������� ������
          vsProduct   = '0';                     // ����� �������������: �����/�����
          vsParGroup  = gliParameter_JobNorm_ID; // ��� ������ ����������
          vsNormSort  = '102';                   // ��������� ������ ����������
          vsRasx      = '1';                     // ����� �������
          vsCEd       = '0';                     // ������ �� ������� ��������
          vsDNormEd   = '1';                     // ������� �����������
          vsCNormEd   = '0';                     // ������ �� ������� ��������� ������� �����������

          // ��������� ������ �� ������
          if (vsWorker_ID != '0')
            vsCResource = vsWorker_ID;

          // ���������� �������� ����� � XML-����
          XMLFileGAL_AddMarshSpJobNorm(
            false,
            vliMarshSpJobNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // ������� � ��������� �������� �����
          voWorker = voWorkers.Next();
        } while(!voWorkers.EOF())
      } // if (voWorkers.Count > 0)
    } // if (voWorkers != null)

    //``````````````````````````````````````````````````````````````````````````
    // ��� ���� �� ���������, �.�. ���������� �� ��������� ������������� ������������
    // � �� ��������
    //// ���� �� ��������� �������� ��� ��������� ���� ��� ��������
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // �������� ���������� �������� ���������� �� ������� �����������
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // ���� �� �������� ������ ��� ������������� �������� (INTERMECH)
    //    voWorkers = voTPOperStep.Workers;
    //
    //    if (voWorkers != null)
    //    {
    //      if (voWorkers.Count > 0)
    //      {
    //        voWorker = voWorkers.First();
    //
    //        do
    //        {
    //          // �������� ���������� �������� ���������� �� ������� �����������
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // �������� ��������� � XML-�����
    //          vsWorker_ID = '0';
    //
    //          if (
    //            (voWorker.Code != null) &&
    //            (voWorker.Code != '') &&
    //            (voWorker.Code != '0')) 
    //          {
    //            try 
    //            {
    //              voFolder = goIMBaseAPI_Catalog_TC_WORKERS.FindFolder(voWorker.Code, 1);
    //
    //              if (voFolder != null)
    //                vsWorker_ID = XMLFileGAL_UnloadFolder(5, voFolder);
    //            }
    //
    //            catch (e) 
    //            {
    //            }
    //          } // if (...
    //
    //          // ���������� �������� ����� � XML-���� (��������������)
    //          vliMarshSpJobNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                 // ��� �������-��������� �����
    //          vsCObject   = asNOpe;                  // ������ �� ������-�������� �����
    //          vsTResource = '36';                    // ��� ������������ �������
    //          vsCResource = voWorker.Code;           // ������ �� ����������� ������
    //          vsWProd     = '0';                     // ��� �����/�������� ������
    //          vsProduct   = '0';                     // ����� �������������: �����/�����
    //          vsParGroup  = gliParameter_JobNorm_ID; // ��� ������ ����������
    //          vsNormSort  = '102';                   // ��������� ������ ����������
    //          vsRasx      = '1';                     // ����� �������
    //          vsCEd       = '0';                     // ������ �� ������� ��������
    //          vsDNormEd   = '1';                     // ������� �����������
    //          vsCNormEd   = '0';                     // ������ �� ������� ��������� ������� �����������
    //
    //          // ��������� ������ �� ������
    //          if (vsWorker_ID != '0')
    //            vsCResource = vsWorker_ID;
    //
    //          // ���������� �������� ����� � XML-����
    //          XMLFileGAL_AddMarshSpJobNorm(
    //            false,
    //            vliMarshSpJobNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // ������� � ��������� �������� �����
    //          voWorker = voWorkers.Next();
    //        } while(!voWorkers.EOF())
    //      } // if (voWorkers.Count > 0)
    //    } // if (voWorkers != null)
    //
    //    // ����� ���������� ��������
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_JobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_JobNorm

//------------------------------------------------------------------------------
// �������� ������������ ���� ��� �������� �����������
// ���������:
//   aoTPOper                             - ������ "�������� �����������" � TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileGAL_UnloadTPOper_MatNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var voMaterials;          // ������ "��������� �� ��������" � TechCardAPI
var voMaterial;           // ������ "�������� �� ��������" � TechCardAPI
var voIncludeArticles;    // ������ "������, ��������� ������� �� ��������" � TechCardAPI
var voIncludeArticle;     // ������ "������, ��������� ������� �� ��������" � TechCardAPI
var voTPOperSteps;        // ������ "�������� ��� ��������" � TechCardAPI
var voTPOperStep;         // ������ "������� ��� ��������" � TechCardAPI
//
var vliMarshSpMatNorm_ID; // ������������� ��� ������������ ����� �� ��������
//
var vsTObject;            // ��� �������-��������� �����
var vsCObject;            // ������ �� ������-�������� �����
var vsTResource;          // ��� ������������ �������
var vsCResource;          // ������ �� ����������� ������
var vsWProd;              // ��� �����/�������� ������
var vsProduct;            // ����� �������������: �����/�����
var vsParGroup;           // ��� ������ ����������
var vsNormSort;           // ��������� ������ ����������
var vsRasx;               // ����� �������
var vsCEd;                // ������ �� ������� ��������
var vsDNormEd;            // ������� �����������
var vsCNormEd;            // ������ �� ������� ��������� ������� �����������

  try
  {
    // �������� ������������� ������� aoTPOper
    if (aoTPOper == null)
      return;

    //``````````````````````````````````````````````````````````````````````````
    // ���� �� ������������ ������ (INTERMECH)
    voMaterials = aoTPOper.Materials;

    if (voMaterials != null)
    {
      if (voMaterials.Count > 0)
      {
        voMaterial = voMaterials.First();

        do
        {
          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // ������� ��������� �����������
          if (
            (voMaterial.FullCode != null) &&
            (voMaterial.FullCode != ''))
            XMLFileGAL_UnloadIMBaseObj_MatNorm(voMaterial.FullCode);

          // ���������� ������������ ����� � XML-����
          vliMarshSpMatNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                 // ��� �������-��������� �����
          vsCObject   = asNOpe;                  // ������ �� ������-�������� �����
          vsTResource = '4';                     // ��� ������������ �������
          vsCResource = voMaterial.FullCode;     // ������ �� ����������� ������
          vsWProd     = '0';                     // ��� �����/�������� ������
          vsProduct   = '0';                     // ����� �������������: �����/�����
          vsParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
          vsNormSort  = '101';                   // ��������� ������ ����������
          vsRasx      = voMaterial.Norma;        // ����� �������
          vsCEd       = '0';                     // ������ �� ������� ��������
          vsDNormEd   = '1';                     // ������� �����������
          vsCNormEd   = '0';                     // ������ �� ������� ��������� ������� �����������

          XMLFileGAL_AddMarshSpMatNorm(
            false,
            vliMarshSpMatNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // ������� � ���������� ���������
          voMaterial = voMaterials.Next();
        } while(!voMaterials.EOF())
      } // if (voMaterials.Count > 0)
    } // if (voMaterials != null)

    //``````````````````````````````````````````````````````````````````````````
    // ���� �� �������� (INTERMECH)
    voIncludeArticles = aoTPOper.IncludeArticles;
    
    if (voIncludeArticles != null)
    {
      if (voIncludeArticles.Count > 0)
      {
        voIncludeArticle = voIncludeArticles.First();
    
        do
        {
          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');
    
          // ���������� ������������ ����� � XML-���� (��������������)
          vliMarshSpMatNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;
    
          vsTObject   = '11007';                         // ��� �������-��������� �����
          vsCObject   = asNOpe;                          // ������ �� ������-�������� �����
          vsTResource = '4';                             // ��� ������������ �������
          vsCResource = voIncludeArticle.Article.ArchID; // ������ �� ����������� ������ (���� Search)
          vsWProd     = '0';                             // ��� �����/�������� ������
          vsProduct   = '0';                             // ����� �������������: �����/�����
          vsParGroup  = gliParameter_MatNorm_ID;         // ��� ������ ����������
          vsNormSort  = '101';                           // ��������� ������ ����������
          vsRasx      = voIncludeArticle.CountEB;        // ����� �������
          vsCEd       = '0';                             // ������ �� ������� ��������
          vsDNormEd   = '1';                             // ������� �����������
          vsCNormEd   = '0';                             // ������ �� ������� ��������� ������� �����������

          // �������� ���������� ������������������� ������� � ������������� ���������� ��� ID
          // (���� ������ ������ �� ������ ������ IMBase, �� ID=ImBaseKey, ����� ID=ArticleID)
          vsCResource = XMLFileGAL_UnloadObj(vsCResource);

          // ���������� ������������ ����� � XML-����
          XMLFileGAL_AddMarshSpMatNorm(
            false,
            vliMarshSpMatNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);
    
          // ������� � ��������� ������� �������
          voIncludeArticle = voIncludeArticles.Next();
        } while(!voIncludeArticles.EOF())
      } // if (voIncludeArticles.Count > 0)
    } // if (voIncludeArticles != null)

    //``````````````````````````````````````````````````````````````````````````
    // ��� ���� �� ���������, �.�. ���������� �� ��������� ������������� ������������
    // � �� ��������
    //// ���� �� ��������� �������� ��� ��������� ���� ��� ��������
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // �������� ���������� �������� ���������� �� ������� �����������
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // ���� �� ������������ ������ ��� ������������� �������� (INTERMECH)
    //    voMaterials = voTPOperStep.Materials;
    //
    //    if (voMaterials != null)
    //    {
    //      if (voMaterials.Count > 0)
    //      {
    //        voMaterial = voMaterials.First();
    //
    //        do
    //        {
    //          // �������� ���������� �������� ���������� �� ������� �����������
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // ������� ��������� �����������
    //          if (
    //            (voMaterial.FullCode != null) &&
    //            (voMaterial.FullCode != ''))
    //            XMLFileGAL_UnloadIMBaseObj_MatNorm(voMaterial.FullCode);
    //
    //          // ���������� ������������ ����� � XML-����
    //          vliMarshSpMatNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                 // ��� �������-��������� �����
    //          vsCObject   = asNOpe;                  // ������ �� ������-�������� �����
    //          vsTResource = '4';                     // ��� ������������ �������
    //          vsCResource = voMaterial.FullCode;     // ������ �� ����������� ������
    //          vsWProd     = '0';                     // ��� �����/�������� ������
    //          vsProduct   = '0';                     // ����� �������������: �����/�����
    //          vsParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
    //          vsNormSort  = '101';                   // ��������� ������ ����������
    //          vsRasx      = voMaterial.Norma;        // ����� �������
    //          vsCEd       = '0';                     // ������ �� ������� ��������
    //          vsDNormEd   = '1';                     // ������� �����������
    //          vsCNormEd   = '0';                     // ������ �� ������� ��������� ������� �����������
    //
    //          XMLFileGAL_AddMarshSpMatNorm(
    //            false,
    //            vliMarshSpMatNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // ������� � ���������� ���������
    //          voMaterial = voMaterials.Next();
    //        } while(!voMaterials.EOF())
    //      } // if (voMaterials.Count > 0)
    //    } // if (voMaterials != null)
    //
    //    // ���� �� �������� ��� ������������� �������� (INTERMECH)
    //    voIncludeArticles = voTPOperStep.IncludeArticles;
    //    
    //    if (voIncludeArticles != null)
    //    {
    //      if (voIncludeArticles.Count > 0)
    //      {
    //        voIncludeArticle = voIncludeArticles.First();
    //    
    //        do
    //        {
    //          // �������� ���������� �������� ���������� �� ������� �����������
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //    
    //          // ���������� ������������ ����� � XML-���� (��������������)
    //          vliMarshSpMatNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //    
    //          vsTObject   = '11007';                         // ��� �������-��������� �����
    //          vsCObject   = asNOpe;                          // ������ �� ������-�������� �����
    //          vsTResource = '4';                             // ��� ������������ �������
    //          vsCResource = voIncludeArticle.Article.ArchID; // ������ �� ����������� ������ (���� Search)
    //          vsWProd     = '0';                             // ��� �����/�������� ������
    //          vsProduct   = '0';                             // ����� �������������: �����/�����
    //          vsParGroup  = gliParameter_MatNorm_ID;         // ��� ������ ����������
    //          vsNormSort  = '101';                           // ��������� ������ ����������
    //          vsRasx      = voIncludeArticle.CountEB;        // ����� �������
    //          vsCEd       = '0';                             // ������ �� ������� ��������
    //          vsDNormEd   = '1';                             // ������� �����������
    //          vsCNormEd   = '0';                             // ������ �� ������� ��������� ������� �����������
    //    
    //          // �������� ���������� ������������������� ������� � ������������� ���������� ��� ID
    //          // (���� ������ ������ �� ������ ������ IMBase, �� ID=ImBaseKey, ����� ID=ArticleID)
    //          vsCResource = XMLFileGAL_UnloadObj(vsCResource);
    //    
    //          // ���������� ������������ ����� � XML-����
    //          XMLFileGAL_AddMarshSpMatNorm(
    //            false,
    //            vliMarshSpMatNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //    
    //          // ������� � ��������� ������� �������
    //          voIncludeArticle = voIncludeArticles.Next();
    //        } while(!voIncludeArticles.EOF())
    //      } // if (voIncludeArticles.Count > 0)
    //    } // if (voIncludeArticles != null)
    //
    //    // ����� ���������� ��������
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_MatNorm

//------------------------------------------------------------------------------
// �������� ������������ ����� (��) ��� �������� �����������
// ���������:
//   aoTPOper                             - ������ "�������� �����������" � TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������
//   aliMC_ID                             - ������������� �����������
//   aliHdrKS_ID                          - ������������� ��������������� ������������

function XMLFileGAL_UnloadTPOper_MatNorm_BOM(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas,
  asNOpe, aliMC_ID, aliHdrKS_ID)
{

//
var vliMarshSpMatNorm_ID; // ������������� ��� ������������ ����� �� ��������
//
var vsTObject;            // ��� �������-��������� �����
var vsCObject;            // ������ �� ������-�������� �����
var vsTResource;          // ��� ������������ �������
var vsCResource;          // ������ �� ����������� ������
var vsTDoc;               // ��� ���������-����� ��� ������������ ������� (��� �� = 41)
var vsCDoc;               // ������ �� ��������-����� ��� ������������ �������
var vsWProd;              // ��� �����/�������� ������
var vsProduct;            // ����� �������������: �����/�����
var vsParGroup;           // ��� ������ ����������
var vsNormSort;           // ��������� ������ ����������
var vsRasx;               // ����� �������
var vsCEd;                // ������ �� ������� ��������
var vsDNormEd;            // ������� �����������
var vsCNormEd;            // ������ �� ������� ��������� ������� �����������

  try
  {
    // �������� ������������� ������� aoTPOper
    //if (aoTPOper == null)
    //  return;

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������������ ����� � XML-����
    vliMarshSpMatNorm_ID = gliGlobID;
    gliGlobID = gliGlobID + 1;

    vsTObject   = '11007';                 // ��� �������-��������� �����
    vsCObject   = asNOpe;                  // ������ �� ������-�������� �����
    vsTResource = '4';                     // ��� ������������ �������
    vsCResource = aliMC_ID;                // ������ �� ����������� ������
    vsTDoc      = '41';                    // ��� ���������-����� ��� ������������
                                           //   ������� (��� �� = 41)
    vsCDoc      = aliHdrKS_ID;             // ������ �� ��������-����� ��� ������������
                                           //   �������
    vsWProd     = '0';                     // ��� �����/�������� ������
    vsProduct   = '0';                     // ����� �������������: �����/�����
    vsParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
    vsNormSort  = '101';                   // ��������� ������ ����������
    vsRasx      = '1';                     // ����� �������
    vsCEd       = '0';                     // ������ �� ������� ��������
    vsDNormEd   = '1';                     // ������� �����������
    vsCNormEd   = '0';                     // ������ �� ������� ��������� ������� �����������

    XMLFileGAL_AddMarshSpMatNorm_BOM(
      false,
      vliMarshSpMatNorm_ID,
      aliXMLFileGAL_Node_Clt_MarshSpNormas,
      vsTObject,
      vsCObject,
      vsTResource,
      vsCResource,
      vsTDoc,
      vsCDoc,
      vsWProd,
      vsProduct,
      vsParGroup,
      vsNormSort,
      vsRasx,
      vsCEd,
      vsDNormEd,
      vsCNormEd);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_MatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_MatNorm_BOM

//------------------------------------------------------------------------------
// �������� ���������������� ���� ��� �������� �����������
// ���������:
//   aoTPOper                             - ������ "�������� �����������" � TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileGAL_UnloadTPOper_ToolNorm(aoTPOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var voTools;               // ������ "���������������� ����� �� ��������" � TechCardAPI
var voTool;                // ������ "���������������� ����� �� ��������" � TechCardAPI
//
var vliMarshSpToolNorm_ID; // ������������� ��� ���������������� ����� �� ��������
//
var vsTObject;             // ��� �������-��������� �����
var vsCObject;             // ������ �� ������-�������� �����
var vsTResource;           // ��� ������������ �������
var vsCResource;           // ������ �� ����������� ������
var vsWProd;               // ��� �����/�������� ������
var vsProduct;             // ����� �������������: �����/�����
var vsParGroup;            // ��� ������ ����������
var vsNormSort;            // ��������� ������ ����������
var vsRasx;                // ����� �������
var vsCEd;                 // ������ �� ������� ��������
var vsDNormEd;             // ������� �����������
var vsCNormEd;             // ������ �� ������� ��������� ������� �����������
var vsFullCode;            //

  try
  {
    // �������� ������������� ������� aoTPOper
    if (aoTPOper == null)
      return;

    // ���� �� ���������������� ������ (INTERMECH)
    voTools = aoTPOper.Tools;

    if (voTools != null)
    {
      if (voTools.Count > 0)
      {
        voTool = voTools.First();

        // ���� �� ���� ���������������� ������
        do
        {
          // �������� ���������� �������� ���������� �� ������� �����������
          if (!nNextVisual(0))
            throw new Error(10003, 'USER_ABORT');

          // ������� ��������� �����������
          vsFullCode = voTool.FullCode;
          vsFullCode = vsFullCode.substr(0, 8) + toHex(voTool.Value('OsRc')) + vsFullCode.substr(14, 6);

          if (
            (vsFullCode != null) &&
            (vsFullCode != ''))
            XMLFileGAL_UnloadIMBaseObj_ToolNorm(vsFullCode);

          // ���������� ���������������� ����� � XML-����
          vliMarshSpToolNorm_ID = gliGlobID;
          gliGlobID = gliGlobID + 1;

          vsTObject   = '11007';                   // ��� �������-��������� �����
          vsCObject   = asNOpe;                    // ������ �� ������-�������� �����
          vsTResource = '4';                       // ��� ������������ �������
          vsCResource = vsFullCode;                // ������ �� ����������� ������
          vsWProd     = '0';                       // ��� �����/�������� ������
          vsProduct   = '0';                       // ����� �������������: �����/�����
          vsParGroup  = gliParameter_ToolsNorm_ID; // ��� ������ ����������
          vsNormSort  = '104';                     // ��������� ������ ����������
          vsRasx      = voTool.Count;              // ����� �������
          vsCEd       = '0';                       // ������ �� ������� ��������
          vsDNormEd   = '1';                       // ������� �����������
          vsCNormEd   = '0';                       // ������ �� ������� ��������� ������� �����������

          XMLFileGAL_AddMarshSpToolNorm(
            false,
            vliMarshSpToolNorm_ID,
            aliXMLFileGAL_Node_Clt_MarshSpNormas,
            vsTObject,
            vsCObject,
            vsTResource,
            vsCResource,
            vsWProd,
            vsProduct,
            vsParGroup,
            vsNormSort,
            vsRasx,
            vsCEd,
            vsDNormEd,
            vsCNormEd);

          // ������� � ��������� ���������������� �����
          voTool = voTools.Next();
        } while(!voTools.EOF())
      } // if (voTools.Count > 0)
    } // if (voTools != null)

    //``````````````````````````````````````````````````````````````````````````
    // ��� ���� �� ���������, �.�. ���������� �� ��������� ������������� ������������
    // � �� ��������
    //// ���� �� ��������� �������� ��� ��������� ���� ��� ��������
    //voTPOperSteps = aoTPOper.OperIncludes;
    //
    //if (voTPOperSteps.Count != 0)
    //{
    //  voTPOperStep = voTPOperSteps.First();
    //
    //  do
    //  {
    //    // �������� ���������� �������� ���������� �� ������� �����������
    //    if (!nNextVisual(0))
    //      throw new Error(10003, 'USER_ABORT');
    //
    //    // ���� �� ���������������� ������ ��� ������������� �������� (INTERMECH)
    //    voTools = voTPOperStep.Tools;
    //
    //    if (voTools != null)
    //    {
    //      if (voTools.Count > 0)
    //      {
    //        voTool = voTools.First();
    //
    //        // ���� �� ���� ���������������� ������
    //        do
    //        {
    //          // �������� ���������� �������� ���������� �� ������� �����������
    //          if (!nNextVisual(0))
    //            throw new Error(10003, 'USER_ABORT');
    //
    //          // ������� ��������� �����������
    //          vsFullCode = voTool.FullCode;
    //          vsFullCode = vsFullCode.substr(0, 8) + toHex(voTool.Value('OsRc')) + vsFullCode.substr(14, 6);
    //
    //          if (
    //            (vsFullCode != null) &&
    //            (vsFullCode != ''))
    //            XMLFileGAL_UnloadIMBaseObj_ToolNorm(vsFullCode);
    //
    //          // ���������� ���������������� ����� � XML-����
    //          vliMarshSpToolNorm_ID = gliGlobID;
    //          gliGlobID = gliGlobID + 1;
    //
    //          vsTObject   = '11007';                   // ��� �������-��������� �����
    //          vsCObject   = asNOpe;                    // ������ �� ������-�������� �����
    //          vsTResource = '4';                       // ��� ������������ �������
    //          vsCResource = vsFullCode;                // ������ �� ����������� ������
    //          vsWProd     = '0';                       // ��� �����/�������� ������
    //          vsProduct   = '0';                       // ����� �������������: �����/�����
    //          vsParGroup  = gliParameter_ToolsNorm_ID; // ��� ������ ����������
    //          vsNormSort  = '104';                     // ��������� ������ ����������
    //          vsRasx      = voTool.Count;              // ����� �������
    //          vsCEd       = '0';                       // ������ �� ������� ��������
    //          vsDNormEd   = '1';                       // ������� �����������
    //          vsCNormEd   = '0';                       // ������ �� ������� ��������� ������� �����������
    //
    //          XMLFileGAL_AddMarshSpToolNorm(
    //            false,
    //            vliMarshSpToolNorm_ID,
    //            aliXMLFileGAL_Node_Clt_MarshSpNormas,
    //            vsTObject,
    //            vsCObject,
    //            vsTResource,
    //            vsCResource,
    //            vsWProd,
    //            vsProduct,
    //            vsParGroup,
    //            vsNormSort,
    //            vsRasx,
    //            vsCEd,
    //            vsDNormEd,
    //            vsCNormEd);
    //
    //          // ������� � ��������� ���������������� �����
    //          voTool = voTools.Next();
    //        } while(!voTools.EOF())
    //      } // if (voTools.Count > 0)
    //    } // if (voTools != null)
    //
    //    // ����� ���������� ��������
    //    voTPOperStep = voTPOperSteps.Next();
    //  } while (!voTPOperSteps.EOF())
    //} // if (voTPOperSteps.Count != 0)
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOper_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOper_ToolNorm

//------------------------------------------------------------------------------
// �������� �������� ����������� � XML-���� � ������� ���������-ERP
// ���������:
//   aoTPOpers                      - ������ "�������� �����������" � TechCardAPI
//   aliXMLFileGAL_Node_Clt_MarshSp - Handle ����-��������� "�������� ��"
//   aliMC_ID                       - ������������� �����������
//   aliHdrKS_ID                    - ������������� ��������������� ������������

function XMLFileGAL_UnloadTPOpers(aoTPOpers, aliXMLFileGAL_Node_Clt_MarshSp, aliMC_ID, aliHdrKS_ID)
{

// �������
var voTPOper;       // ������ "�������� �����������" � TechCardAPI
var voTPOperSteps;  // ������ "�������� ��� �������� �����������" � TechCardAPI
var voTPOperStep;   // ������ "������� ��� �������� �����������" � TechCardAPI
var voFolder;       // ������ "�����" � IMBaseAPI
//
var vliMarsh_Sp_ID; // ������������� �������/�������� ���������� �����
// �������� �������/�������� ���������� �����
var vsNum;          // ����� �������
var vsWOpe;         // ��� �������� (��� ��������������� �������� = 35)
var vsNOpe;         // ������ �� ��������������� ��������
var vsEdNorm;       // ������� ������������ (����������)
var vsCEd;          // ������ �� ������� ��������� ��� ������� �����������
var vsTDep;         // ��� ����������� (��� ������������� = 2)
var vsCDep;         // ������ �� ����������
var vbFirstOper;    // ������� ��������� ������ ������
var vliHdrKS_ID;    // ������������� ��������������� ������������

  try
  {
    // �������� ������������� ������� aoTPOpers
    if (aoTPOpers == null)
      return;

    // �������� ������� �������� � �����������
    if (aoTPOpers.Count == 0)
    {
      // �������� �������������� "������"
      if (
        (aliHdrKS_ID != null) &&
        (aliHdrKS_ID != '') &&
        (aliHdrKS_ID != '0'))
      {
        // ����� �������� "������" � �������� "��������"
        try
        {
          voFolder = goIMBaseAPI_Catalog_TC_OPER.FindFolder('������', 2);
        }
        catch(e)
        {
        }

        // ���������� �������� ��� ������� �������/�������� ���������� �����
        vsNum    = '001';            // ����� �������
                                     //   (= ������ �������� �����������)
        vsWOpe   = '35';             // ��� ��������
                                     //   (��� ��������������� �������� = 35)
        vsNOpe   = '0';              // ������ �� ��������������� ��������

        if (voFolder != null)        //   (= ���� (LEVEL) �������� �� ��������
          vsNOpe = voFolder.Level;   //   IMBase "��������")

        vsEdNorm = '1';              // ������� ������������ (����������)
                                     //   (= �������� ������� "������� ������������" ��� ��������
                                     //   �����������)
        vsCEd    = '0';              // ������ �� ������� ��������� ��� ������� �����������
        vsTDep   = '2';              // ��� ��� ������ �� ���-�����������
                                     //   (��� ������������� = 2)
        vsCDep   = '0';              // ������ �� ���-�����������

        // �������� ����������� � XML-�����
        if (voFolder != null)
          vsNOpe = XMLFileGAL_UnloadFolder(3, voFolder);

        // �������� �������/�������� ���������� �����
        vliMarshSp_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;

        XMLFileGAL_AddMarshSp(
          voTPOper,
          false,
          vliMarshSp_ID,
          aliXMLFileGAL_Node_Clt_MarshSp,
          vsNum,
          vsWOpe,
          vsNOpe,
          vsEdNorm,
          vsCEd,
          vsTDep,
          vsCDep,
          aliMC_ID,
          aliHdrKS_ID);
      } // if (...

      return;
    } // if (aoTPOpers.Count == 0)

    // ���� �� ���� ��������� �����������
    voTPOper = aoTPOpers.First();
    vbFirstOper = true;

    do
    {
      // ��� ������ �������� ����������� ���������� ���������
      // ������ �� ��������������� ������������
      if (vbFirstOper)
      {
        vliHdrKS_ID = aliHdrKS_ID;
        vbFirstOper = false;
      }
      else
        vliHdrKS_ID = '0';

      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      // ���������� �������� ��� ������� �������/�������� ���������� �����
      vsNum    = voTPOper.Number;        // ����� �������
                                         //   (= ������ �������� �����������)
      vsWOpe   = '35';                   // ��� ��������
                                         //   (��� ��������������� �������� = 35)
      vsNOpe   = voTPOper.Code;          // ������ �� ��������������� ��������
                                         //   (= ���� (LEVEL) �������� �� �������� IMBase "��������")
      vsEdNorm = voTPOper.Value('��');   // ������� ������������ (����������)
                                         //   (= �������� ������� "������� ������������" ��� ��������
                                         //   �����������)
      vsCEd    = '0';                    // ������ �� ������� ��������� ��� ������� ������������
      vsTDep   = '2';                    // ��� ��� ������ �� ���-�����������
                                         //   (��� ������������� = 2)
      vsCDep   = voTPOper.Place;         // ������ �� ���-�����������

      // ��������� �������� ���� "����� �������"
      if ((vsNum == '0') || (vsNum == null))
        vsNum == '1';

      // �������� ����������� � XML-�����
      if (
        (vsNOpe != '') &&
        (vsNOpe != '0'))
      {
        try
        {
          voFolder = goIMBaseAPI_Catalog_TC_OPER.FindFolder(vsNOpe, 1);

          if (voFolder != null)
            vsNOpe = XMLFileGAL_UnloadFolder(3, voFolder);
        }

        catch(e)
        {
        }
      } // if (...

      // ��������� �������� ���� "������� ������������"
      if ((vsEdNorm == '0') || (vsEdNorm == null))
        vsEdNorm == '1';

      // �������� ������������� � XML-�����
      if (
        (vsCDep != '') &&
        (vsCDep != '0'))
      {
        try
        {
          voFolder = goIMBaseAPI_Catalog_TC_CEH.FindFolder(vsCDep, 1);

          if (voFolder != null)
            vsCDep = XMLFileGAL_UnloadFolder(1, voFolder);
        }
        catch(e)
        {
        }
      } // if (...

      // �������� �������/�������� ���������� �����
      vliMarshSp_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;

      XMLFileGAL_AddMarshSp(
        voTPOper,
        false,
        vliMarshSp_ID,
        aliXMLFileGAL_Node_Clt_MarshSp,
        vsNum,
        vsWOpe,
        vsNOpe,
        vsEdNorm,
        vsCEd,
        vsTDep,
        vsCDep,
        aliMC_ID,
        vliHdrKS_ID);

      // ������� � ��������� �������� �����������
      voTPOper = aoTPOpers.Next();
    } while (!aoTPOpers.EOF())

    return;


    /*

    //------------------------------------------------------------------------------
    // ������� ������� ����� ��� ��������
    // ���������:
    //   Class   - ��� ������
    //   IdClass - ������ �� �����
    //   cEd     - ������ �� ������� ��

    function XMLFileGAL_AddPropEd(Class, IdClass, cEd)
    {
      var Node;

      Node = Root.selectNodes("//Object[@class_id = '" + Class + "'][@id = '" + IdClass + "']/Collection[@name = 'Prop_Values']/prop_value[@prop_name = 'cED']");

      if (Node.length != 0)
      {
        Node.item(0).setAttribute('value', cEd);
      }
    } // function XMLFileGAL_AddPropEd

    //------------------------------------------------------------------------------
    // ������� ������� ����� ��� ��������
    // ���������:
    //   cParent   - ������ �� ����������� ����
    //   Name      - ��� ����� (���� ����� ������ �� ��������)
    //   cObject   - ������ �� ��������
    //   tResource - ��� �����
    //   cResource - ������ �� ��
    //   Rasx      - ����������
    //   cOtpEd    - ������ �� ��������� ��
    //   TimeM     - �������� ����� ��� ������ 1 ������� = 4.18400 �����
    //   Razr      - �������� ������ (��� �������� ����)
    //   EdNormOp  - ������� �����������

    function XMLFileGAL_AddNormForOper(cParent, Name, cObject, tResource, cResource, Rasx, cOtpEd, TimeM, Razr, EdNormOp)
    {
      var Obj, Coll, Node;
      var ParGroup;
      var ExistNorm = false;
      var Kol = new Number();

      Node = Root.selectNodes("//Object[@class_id = 'Params'][@name = '" + Name + "']/@id");
      if (Node.length != 0)
        ParGroup = Node.item(0).nodeValue;
      else
        ParGroup = 0;

      // ������� �����

      Obj  = XMLFileGAL_AddTag_Object(cParent, '�����', 'Normas_MarshSp', gliGlobID++);
      Coll = XMLFileGAL_AddTag_Collection(Obj, '��������', 'Prop_Values', 'prop_value');
      XMLFileGAL_AddTag_PropValue(Coll, 'ParGroup', ParGroup, 'Params');
      XMLFileGAL_AddTag_PropValue(Coll, 'tObject', 11007, '');
      XMLFileGAL_AddTag_PropValue(Coll, 'cObject', cObject, 'MnfOper');
      XMLFileGAL_AddTag_PropValue(Coll, 'tResource', tResource, '');

      if (tResource == 4)
        XMLFileGAL_AddTag_PropValue(Coll, 'cResource', cResource, 'MC');

      if (tResource == 23)
        XMLFileGAL_AddTag_PropValue(Coll, 'cResource', cResource, 'ObjRem');

      if (tResource == 36)
        XMLFileGAL_AddTag_PropValue(Coll, 'cResource', cResource, 'Profession');

      XMLFileGAL_AddTag_PropValue(Coll, 'Rasx', Rasx, '');
      XMLFileGAL_AddTag_PropValue(Coll, 'dNormEd', EdNormOp, '');
      XMLFileGAL_AddTag_PropValue(Coll, 'cEd', cOtpEd, 'OtpEd');

      // ��������� ���� ��� �����������
      if (tResource == 23 & TimeM != 0)
      {
        Coll = XMLFileGAL_AddTag_Collection(Obj, '�������� ���������� �����', 'Data.ParamVol_NormMarshSp', 'Object');
        XMLFileGAL_AddParamVol(Coll, 1, '������������', '����� ��������� ������� (��������)', TimeM)
        XMLFileGAL_AddParamVol(Coll, 1, '������������', '������� ��������� �������', 2)
      }

      // ��������� ��� �������� ����
      if (tResource == 36)
      {
        Coll = XMLFileGAL_AddTag_Collection(Obj, '�������� ���������� �����', 'Data.ParamVol_NormMarshSp', 'Object');

        if (TimeM != 0)
        {
          XMLFileGAL_AddParamVol(Coll, 1, '�������� �����', '����� ������� �������', TimeM)
          XMLFileGAL_AddParamVol(Coll, 1, '�������� �����', '������� ��������� �������', 2)
        }

        XMLFileGAL_AddParamVol(Coll, 1, '�������� �����', '�������� ������', Razr)
      }
    } // function XMLFileGAL_AddNormForOper


    */


  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileGAL_UnloadTPOpers => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadTPOpers

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ���
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������� ��� � XML-���� � ������� ���������-ERP

function CreateXMLFileGAL_0()
{
  try
  {
    // �������� IMBaseAPI
    SetVisualHeader('�������� IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� SearchAPI
    SetVisualHeader('�������� SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ ��������
    SetVisualHeader('������� ������ ��������� \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "����"
    SetVisualHeader('������� ������ �������� IMBase "����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "������������"
    SetVisualHeader('������� ������ �������� IMBase "������������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "��������"
    SetVisualHeader('������� ������ �������� IMBase "��������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "���� �����"
    SetVisualHeader('������� ������ �������� IMBase "���� �����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "������� �������������"
    SetVisualHeader('������� ������ �������� IMBase "������� �������������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-����
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������ ��������
    SetVisualHeader('������������ �������� \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_0 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_0

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ������ ��� �������� ��
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������� ������ ��� �������� �� � XML-���� � ������� ���������-ERP

function CreateXMLFileGAL_1()
{
  try
  {
    // �������� IMBaseAPI
    SetVisualHeader('�������� IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� SearchAPI
    SetVisualHeader('�������� SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ImDataBase
    SetVisualHeader('�������� ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ ��������
    SetVisualHeader('������� ������ ��������� \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "���������"
    SetVisualHeader('������� ������ �������� IMBase "���������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "��������"
    SetVisualHeader('������� ������ �������� IMBase "��������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������������ ��������
    SetVisualHeader('�������� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-����
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������ ��������
    SetVisualHeader('������������ �������� \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_1 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_1

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ��������������� ����������
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������� ��������������� ���������� � XML-���� � ������� ���������-ERP

function CreateXMLFileGAL_2() 
{
  try
  {
    // �������� IMBaseAPI
    SetVisualHeader('�������� IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� SearchAPI
    SetVisualHeader('�������� SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ImDataBase
    SetVisualHeader('�������� ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ ��������
    SetVisualHeader('������� ������ ��������� \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "����"
    SetVisualHeader('������� ������ �������� IMBase "����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "������������"
    XMLFileGAL_PrepareDataForCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "��������"
    XMLFileGAL_PrepareDataForCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "���� �����"
    XMLFileGAL_PrepareDataForCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "������� �������������"
    XMLFileGAL_PrepareDataForCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "���������"
    XMLFileGAL_PrepareDataForCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "��������"
    XMLFileGAL_PrepareDataForCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������������ ��������
    SetVisualHeader('�������� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-����
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    // ������������ ��������
    SetVisualHeader('������������ �������� \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_2 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_2

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ��������������� ����������
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������� ��������������� ���������� � XML-���� � ������� ���������-ERP

function CreateXMLFileGAL_3()
{
  try
  {
    // �������� IMBaseAPI
    SetVisualHeader('�������� IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� SearchAPI
    SetVisualHeader('�������� SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� TechCardAPI
    SetVisualHeader('�������� TechCardAPI \n   \n   ');
    goTechCardAPI = LoadAPIObj(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ImDataBase
    SetVisualHeader('�������� ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ ��������
    SetVisualHeader('������� ������ ��������� \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "����"
    SetVisualHeader('������� ������ �������� IMBase "����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "������������"
    XMLFileGAL_PrepareDataForCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "��������"
    XMLFileGAL_PrepareDataForCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "���� �����"
    XMLFileGAL_PrepareDataForCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "������� �������������"
    XMLFileGAL_PrepareDataForCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "���������"
    XMLFileGAL_PrepareDataForCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "��������"
    XMLFileGAL_PrepareDataForCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������������ ��������
    SetVisualHeader('�������� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-����
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    // ������������ ��������
    SetVisualHeader('������������ �������� \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_3 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_3

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ��������������-��������������� ����������
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������� ��������������-��������������� ���������� � XML-���� � ������� ���������-ERP

function CreateXMLFileGAL_4()
{
  try
  {
    // �������� IMBaseAPI
    SetVisualHeader('�������� IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� SearchAPI
    SetVisualHeader('�������� SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� TechCardAPI
    SetVisualHeader('�������� TechCardAPI \n   \n   ');
    goTechCardAPI = LoadAPIObj(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ImDataBase
    SetVisualHeader('�������� ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ ��������
    SetVisualHeader('������� ������ ��������� \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "����"
    SetVisualHeader('������� ������ �������� IMBase "����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "������������"
    XMLFileGAL_PrepareDataForCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "��������"
    XMLFileGAL_PrepareDataForCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "���� �����"
    XMLFileGAL_PrepareDataForCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "������� �������������"
    XMLFileGAL_PrepareDataForCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "���������"
    XMLFileGAL_PrepareDataForCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� ������, ������������ ��� �������� �������
    // �������� IMBase "��������"
    XMLFileGAL_PrepareDataForCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������������ ��������
    SetVisualHeader('�������� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-����
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    // ������������ ��������
    SetVisualHeader('������������ �������� \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_4 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_4

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ������� ��� � ��������������-��������������� ����������
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ������� ��� � ��������������-��������������� ���������� � XML-���� � �������
// ���������-ERP

function CreateXMLFileGAL_5()
{
  try
  {
    // �������� IMBaseAPI
    SetVisualHeader('�������� IMBaseAPI \n   \n   ');
    goIMBaseAPI = LoadAPIObj(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� SearchAPI
    SetVisualHeader('�������� SearchAPI \n   \n   ');
    goSearchAPI = LoadAPIObj(1);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� TechCardAPI
    SetVisualHeader('�������� TechCardAPI \n   \n   ');
    goTechCardAPI = LoadAPIObj(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ImDataBase
    SetVisualHeader('�������� ImDataBase \n   \n   ');
    goImDataBase = LoadAPIObj(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

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

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ ��������
    SetVisualHeader('������� ������ ��������� \n   \n   ');
    XMLFileGAL_UnloadMeasureUnits();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "����"
    SetVisualHeader('������� ������ �������� IMBase "����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(1);
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "������������"
    SetVisualHeader('������� ������ �������� IMBase "������������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(2);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "��������"
    SetVisualHeader('������� ������ �������� IMBase "��������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(3);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "���� �����"
    SetVisualHeader('������� ������ �������� IMBase "���� �����" \n   \n   ');
    XMLFileGAL_UnloadCatalog(4);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "������� �������������"
    SetVisualHeader('������� ������ �������� IMBase "������� �������������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(5);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "���������"
    SetVisualHeader('������� ������ �������� IMBase "���������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(6);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������� ������ �������� IMBase "��������"
    SetVisualHeader('������� ������ �������� IMBase "��������" \n   \n   ');
    XMLFileGAL_UnloadCatalog(7);

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������������������ ��������
    SetVisualHeader('�������� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjects();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-����
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������ ��������
    SetVisualHeader('������������ �������� \n   \n   ');

    goIMBaseAPI_Catalog_TC_CEH = null;
    goIMBaseAPI_Catalog_TC_OBORUD = null;
    goIMBaseAPI_Catalog_TC_OPER = null;
    goIMBaseAPI_Catalog_CTL000055 = null;
    goIMBaseAPI_Catalog_TC_WORKERS = null;
    goIMBaseAPI_Catalog_CTL000001 = null;
    goIMBaseAPI_Catalog_TC_OSNAST = null;

    goXMLFileGAL = null;
    goImDataBase = null;
    goTechCardAPI = null;
    goIMBaseAPI = null;
    goSearchAPI = null;
  } // try

  catch (vrdEvent) 
  {
    Message('CreateXMLFileGAL_5 => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function CreateXMLFileGAL_5

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

  // ������������� ���������� ����������
  gliGlobID = 1;
  gwExportMode = GetExportMode();

  //
  gliProcessCount_Ed = 0;
  gsaProcess_Ed_ImID = new Array();
  gsaProcess_Ed_GalID = new Array();

  gliProcessCount_EqGroup = 0;
  gsaProcess_EqGroup_ImID = new Array();
  gsaProcess_EqGroup_GalID = new Array();

  gliProcessCount_KaWork = 0;
  gsaProcess_KaWork_ImID = new Array();
  gsaProcess_KaWork_GalID = new Array();

  gliProcessCount_MC = 0;
  gsaProcess_MC_ImID = new Array();
  gsaProcess_MC_GalID = new Array();

  gliProcessCount_MnfOper = 0;
  gsaProcess_MnfOper_ImID = new Array();
  gsaProcess_MnfOper_GalID = new Array();

  gliProcessCount_ObjRem = 0;
  gsaProcess_ObjRem_ImID = new Array();
  gsaProcess_ObjRem_GalID = new Array();

  gliProcessCount_Podr = 0;
  gsaProcess_Podr_ImID = new Array();
  gsaProcess_Podr_GalID = new Array();

  gliProcessCount_Profession = 0;
  gsaProcess_Profession_ImID = new Array();
  gsaProcess_Profession_GalID = new Array();

  // ������ �������� ������
  switch(gwExportMode)
  {
    // ������� ���
    case '0':
    {
      CreateXMLFileGAL_0();
      break;
    } // case '0':

    // ������� ������ ��� �������� ��
    case '1':
    {
      CreateXMLFileGAL_1();
      break;
    } // case '1':

    // ������� ��������������� ����������
    case '2':
    {
      CreateXMLFileGAL_2();
      break;
    } // case '2':

    // ������� ��������������� ����������
    case '3':
    {
      CreateXMLFileGAL_3();
      break;
    } // case '3':

    // ������� ��������������-��������������� ����������
    case '4':
    {
      CreateXMLFileGAL_4();
      break;
    } // case '4':

    // ������� ��� � ��������������-��������������� ����������
    case '5':
    {
      CreateXMLFileGAL_5();
      break;
    } // case '5':

  } // switch(gwExportMode)

  // �������� ���� ������������
  StopVisual('', 0);
} // try

catch(grdEvent)
{
  // �������� ���� ������������
  StopVisual('MAIN => ' + grdEvent.message, vfWait);
} // catch(grdEvent)
