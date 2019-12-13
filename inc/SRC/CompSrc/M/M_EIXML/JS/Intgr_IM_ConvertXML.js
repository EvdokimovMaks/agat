/*
################################################################################
################################################################################
################################################################################
################################################################################
################################################################################
##                                                                            ##
## JavaScript, ����������� ����������� XML-����� � ������� "INTERMECH" �      ##
## XML-���� � ������� "���������-ERP"                                         ##
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
var grdEvent;                          // ��������� � ����������� �� �������������� ��������
var gliGlobID;                         // ���������� ������������� ��������

// �������
var goXMLFileIM;                       // DOM-�������� ��� ��������� XML-����� �
                                       //   ������� INTERMECH
var goXMLFileGAL;                      // DOM-�������� ��� ������������ XML-����� �
                                       //   ������� ���������-ERP

// Handle �����-��������� � DOM-��������� ��� ������������ XML-����� � ������� ���������-ERP
var gliXMLFileGAL_Node_Clt_TypeMC;     // Handle ����-��������� "���� ������������"
var gliXMLFileGAL_Node_Clt_GrpMC;      // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_ED;         // Handle ����-��������� "������� ���������"
var gliXMLFileGAL_Node_Clt_Podr;       // Handle ����-��������� "�������������"
var gliXMLFileGAL_Node_Clt_EqGroup;    // Handle ����-��������� "������ ������������"
var gliXMLFileGAL_Node_Clt_MnfOper;    // Handle ����-��������� "��������������� ��������"
var gliXMLFileGAL_Node_Clt_KaWork;     // Handle ����-��������� "���� �����"
var gliXMLFileGAL_Node_Clt_Profession; // Handle ����-��������� "���������"
var gliXMLFileGAL_Node_Clt_ObjRem;     // Handle ����-��������� "������� ������������"
var gliXMLFileGAL_Node_Clt_Person;     // Handle ����-��������� "����������"
var gliXMLFileGAL_Node_Clt_KatAbbr;    // Handle ����-��������� "������������ ����������"
var gliXMLFileGAL_Node_Clt_Params;     // Handle ����-��������� "��������� (������������ ���������)"
var gliXMLFileGAL_Node_Clt_MC;         // Handle ����-��������� "�����������"
var gliXMLFileGAL_Node_Clt_OtpEd;      // Handle ����-��������� "��������� ������� ���������"
var gliXMLFileGAL_Node_Clt_KatMarsh;   // Handle ����-��������� "���������� �����"
var gliXMLFileGAL_Node_Clt_Hdr_KS;     // Handle ����-��������� "��������������� ������������"
var gliXMLFileGAL_Node_Clt_AttrNam;    // Handle ����-��������� "������� ��������"

// �������������� ������� ��������� ��� �������� ������������
var gsAttrNam_MC_VersionNmb_ID;        // ������������� �������� �������� "����� ������"
var gsAttrNam_MC_InvNmbDoc_ID;         // ������������� �������� �������� "����������� ����� ���������"
var gsAttrNam_MC_BuildCode_ID;         // ������������� �������� �������� "��� ����������"
var gsAttrNam_MC_Litera_ID;            // ������������� �������� �������� "������"

// �������������� ���������� ���� (������������ ���������) � XML-�����
// � ������� ���������-ERP
//var gliParameter_BaseParams_ID;        // ������� ��������� (INTERMECH)
var gliParameter_OperParams_ID;        // ��������� �����������
var gliOperParam_Razrjad_ID;           // �������� ����������� -> �������� ������
var gliOperParam_WrkCond_ID;           // �������� ����������� -> ��� ������� �����
var gliOperParam_OpRazr_ID;            // �������� ����������� -> ������ ��������
var gliOperParam_MechRate_ID;          // �������� ����������� -> ������� �����������
var gliOperParam_WrkDetQnt_ID;         // �������� ����������� -> ���������� ������������
                                       //   �������������� �������
var gliOperParam_PartVol_ID;           // �������� ����������� -> ����� ������������ ������
var gliOperParam_KOneTm_ID;            // �������� ����������� -> ����������� �������� �������
var gliOperParam_tmPreFin_ID;          // �������� ����������� -> ����� ���������������-
                                       //   ��������������� �������
var gliOperParam_tmServ_ID;            // �������� ����������� -> ����� ���������������� �������
var gliOperParam_tmOpMash_ID;          // �������� ����������� -> ����� ��������� ������� (��������)
var gliOperParam_tmOpMan_ID;           // �������� ����������� -> ����� ��������� ������� (������)
var gliOperParam_EdTime_ID;            // �������� ����������� -> ������� ��������� �������
var gliParameter_NormCategory_ID;      // ��������� ����
var gliParameter_MatNorm_ID;           // ������������ �����
var gliParameter_ToolsNorm_ID;         // ���������������� �����
var gliParameter_JobNorm_ID;           // �������� �����
var gliJobNormParam_tmOpMan_ID;        // �������� �������� ���� -> ����� ��������� ������� (������)
var gliJobNormParam_Razrjad_ID;        // �������� �������� ���� -> �������� ������
var gliJobNormParam_EdTime_ID;         // �������� �������� ���� -> ������� ��������� �������
var gliParameter_EqNorm_ID;            // ����� ������������� �����������
var gliEqNormParam_tmOpMash_ID;        // �������� ���� ������������� ������������ -> ����� ���������
                                       //   ������� (��������)
var gliEqNormParam_EdTime_ID;          // �������� ���� ������������� ������������ -> ������� ��������
                                       //   �������

// ����������, ������������ ��� ������������ ����������� �������������
// � XML-����� � ������� ���������-ERP
var gliObjCount_Podr;                  // ���������� �������������
var gsaFieldValue_Podr_ID;             // ������ ��� ���������� ��������������� �������������
var gsaFieldValue_Podr_KodASUP;        // ������ ��� ���������� ����� ������������� (����)
var gsaFieldValue_Podr_KodCeh;         // ������ ��� ���������� ����� ����� ��� �������������
var gsaFieldValue_Podr_KodUch;         // ������ ��� ���������� ����� �������� ��� �������������
var gsaFieldValue_Podr_Name;           // ������ ��� ���������� ������������ �������������
var gsaFieldValue_Podr_cPodr;          // ������ ��� ���������� ������ �� ����������� �������������
                                       //   (��� �������������)
var gsaFieldValue_Podr_PrUch;          // ������ ��� ���������� �������� ���/������� (0/1) (��� �������������)

//
var gliObjCount_Ed;                    // ���������� ������ ��������
var gsaFieldValue_Ed_ID;               // ������ ��� ���������� ��������������� ������ ��������
var gsaFieldValue_Ed_Abbr;             // ������ ��� ���������� ����������� ������ ��������
var gsaFieldValue_Ed_Name;             // ������ ��� ���������� ������������ ������ ��������

// ������� ��� ���������� ��������, ����������� � ���� "������� ���������"
var gliProcessCount_Ed;                // ���������� ��������� � �������
var gsaProcess_Ed_ImID;                // ������ ��� ���������� ������� "�� (��������)"
var gsaProcess_Ed_GalID;               // ������ ��� ���������� ������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "������ ������������"
var gliProcessCount_EqGroup;           // ���������� ��������� � �������
var gsaProcess_EqGroup_ImID;           // ������ ��� ���������� ������� "�� (��������)"
var gsaProcess_EqGroup_GalID;          // ������ ��� ���������� ������� "�� (���������)"

// ������� ��� ���������� ��������, ����������� � ���� "���������� �����"
var gliProcessCount_KatMarsh;          // ���������� ��������� � �������
var gsaProcess_KatMarsh_ImID;          // ������ ��� ���������� "�� (��������)"
var gsaProcess_KatMarsh_GalID;         // ������ ��� ���������� "�� (���������)"

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
// ��������� �������������� ������� ��� ��������, ����������� � ���� "���������� �����":
//   abCheckExists - ������� �������� ������������� �������
//   asImID        - �� (��������)
//   asGalID       - �� (���������)
//   aoTP          - ������� <tp> � XML-����� � ������� "����������" � TechCardAPI
//   asShifr       - ���� (���) �����������
//   asName        - ������������ ���������� �����
//   asTObject     - ��� �������, ��� �������� ����������� ��
//   asCObject     - ������ �� ������, ��� �������� ����������� ��
//   asProduct     - ������� ����� ��� �������� ����� (������ = 1):
//                     0 - �����,
//                     1 - ������� ������
//   asEdNorm      - ����������� ���������� �������, ��� �������� ����������� ��
//   asCEd         - ������ �� ������� ��������� �������, ��� �������� ����������� ��
//   asMinVol      - ����������� ������ ������ ��� ������������
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
//   ������������� �������

function GetObjGalID_KatMarsh(abCheckExists, asImID, asGalID, aoTP, asShifr, asName, 
  asTObject, asCObject, asProduct, asEdNorm, asCEd, asMinVol, asCheckers_1, asAddedSign_1, asCheckDt_1,
  asCheckers_2, asAddedSign_2, asCheckDt_2, asCheckers_3, asAddedSign_3, asCheckDt_3,
  asParGroup, asCNormGroup, aliHdrKS_ID) 
{

  // ��������� ����������
  var i;         // ���������� �����
  var vbNeedAdd; // ������� ������������� ���������� �������

  try {
    // �����������, ���������� �� ����� ������ � �������� �� (��������)
    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KatMarsh; i++)
        if (gsaProcess_KatMarsh_ImID[i] == asImID)
          return (gsaProcess_KatMarsh_GalID[i]);

    // ����������� ������������� ���������� ������� � XML-���� � ������� ���������-ERP
    vbNeedAdd = true;

    if (abCheckExists)
      for (i = 1; i <= gliProcessCount_KatMarsh; i++)
        if (gsaProcess_KatMarsh_GalID[i] == asGalID) 
        {
          vbNeedAdd = false;
          break;
        } // if (gsaProcess_KatMarsh_GalID[i] == asGalID)

    // ���������� � ������
    gliProcessCount_KatMarsh = gliProcessCount_KatMarsh + 1;

    gsaProcess_KatMarsh_ImID[gliProcessCount_KatMarsh] = asImID;
    gsaProcess_KatMarsh_GalID[gliProcessCount_KatMarsh] = asGalID;

    // ���������� �������
    if (vbNeedAdd)
      XMLFileGAL_AddKatMarsh(
        aoTP,
        false,
        asGalID,
        asShifr,
        asName, 
        asTObject,
        asCObject,
        asProduct,
        asEdNorm,
        asCEd,
        asMinVol,
        asCheckers_1,
        asAddedSign_1,
        asCheckDt_1,
        asCheckers_2,
        asAddedSign_2,
        asCheckDt_2,
        asCheckers_3,
        asAddedSign_3,
        asCheckDt_3,
        asParGroup,
        asCNormGroup,
        aliHdrKS_ID);

    return (asGalID);
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_KatMarsh => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_KatMarsh

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
//   asCEd                - ������ �� ������� ������� ���������
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
// ���������:
//   ������������� �������

function GetObjGalID_ObjRem(abCheckExists, asImID, asGalID, asName, asInNum)
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
      XMLFileGAL_AddObjRem(false, asGalID, asName, asInNum);

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

//------------------------------------------------------------------------------
// ��������� �������������� ������� ��� ��������, ����������� � ���� "��� �����������",
// �� ������������:
//   asName - ������������
// ���������:
//   ������������� �������

function GetObjGalID_TypeMC_ByName(asName) 
{
  try
  {
    switch (asName)
    {

      // ������������
      case '������������':
      {
        return '1';
      }
    
      // ���������
      case '���������':
      {
        return '2';
      }

      // ��������� �������
      case '��������� �������':
      {
        return '3';
      }

      // ������
      case '������':
      {
        return '4';
      }

      // ����������� �������
      case '����������� �������':
      {
        return '5';
      }

      // ������ �������
      case '������ �������':
      {
        return '6';
      }

      // ���������
      case '���������':
      {
        return '7';
      }

      // ���������
      case '���������':
      {
        return '8';
      }

      // ����������� �������
      case '����������� �������':
      {
        return '9';
      }

      // ���������������
      case '���������������':
      {
        return '99999998';
      }

      // ������
      case '������':
      {
        return '99999999';
      }

      // ��������
      case '��������':
      {
        return '100000001';
      }

      // �������
      case '�������':
      {
        return '100000003';
      }
    
    } // switch (asName)

    return asName;
  } // try

  catch (vrdEvent) 
  {
    Message('GetObjGalID_TypeMC_ByName => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function GetObjGalID_TypeMC_ByName

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
// ������� ��������� ���������������� array ������ � ��������� � ����������
// ���������� ������ � ������������ ����������
// ���������:

function XMLFileIM_CalcValues(asaValues)
{

// ��������� ����������
var i;                 // ���������� �����
var j;                 // ���������� �����
var k;                 // ���������� �����
var l;                 // ���������� �����
var vbExistsField;     //
var vliIndexEndField;  //
var vrdEvent;          // ��������� � ����������� �� �������������� ��������
var vsFieldCode;       //
var vsFormula;         //
var vsSymbol;          //
var vsSymbolFieldBeg;  //
var vsSymbolFieldEnd;  //
var vsSymbolFieldBeg2; //
var vsSymbolFieldEnd2; //
var vsValue;           //

  try
  {
    //
    vsSymbolFieldBeg = '{';
    vsSymbolFieldEnd = '}';
    vsSymbolFieldBeg2 = '[';
    vsSymbolFieldEnd2 = ']';

    //
    for (i = 0; i < asaValues[0].length; i++)
    {
      if (
        (asaValues[3][i] != '') &&
        (asaValues[3][i] != null)) // �������� ������� ������� � ������
      {
        //``````````````````````````````````````````````````````````````````````
        // ������ ������� � ������ ����� "[...]"
        vsFormula = asaValues[3][i];
        vsValue = '';

        for (j = 0; j < vsFormula.length; j++)
        {
          // ���������� ���������� ������� �� �������
          vsSymbol = vsFormula.charAt(j);

          // ����� ���������� ������� ��� ���� ("[")
          if (vsSymbol == vsSymbolFieldBeg2)
          {
            // ����� ��������� ������� ��� ���� ("]")
            vliIndexEndField = vsFormula.indexOf(vsSymbolFieldEnd2, j);

            // ���������� ���� ���� �� ������
            vsFieldCode = vsFormula.slice(j + 1, vliIndexEndField);

            // ����� � ������� ��������������� ���� ���
            vbExistsField = false;

            for (k = 0; k <= asaValues[0].length - 1; k++)
            {
              if (vsFieldCode == asaValues[1][k])
              {
                vbExistsField = true;
                vsValue = vsValue + asaValues[2][k];
                break;
              } // if (vsFieldCode == asaValues[1][k])
            } // for (k = 0; k <= asaValues[0].length - 1; k++)

            if (!vbExistsField)
              vsValue = vsValue + vsFieldCode;

            j = vliIndexEndField;
            continue;
          } // if (vsSymbol == vsSymbolFieldBeg2)

          // ������� ������, �� �������� � ��� ����, ������ ����������� � �������� ��������
          vsValue = vsValue + vsSymbol;
        } // for (j = 0; j < vsFormula.length; j++)

        //``````````````````````````````````````````````````````````````````````
        // ������ �������  � ������ ����� "{...}"
        vsFormula = vsValue;
        vsValue = '';

        for (j = 0; j < vsFormula.length; j++)
        {
          // ���������� ���������� ������� �� �������
          vsSymbol = vsFormula.charAt(j);

          // ����� ���������� ������� ��� ���� ("{")
          if (vsSymbol == vsSymbolFieldBeg)
          {
            // ����� ��������� ������� ��� ���� ("}")
            vliIndexEndField = vsFormula.indexOf(vsSymbolFieldEnd, j);

            // ���������� ���� ���� �� ������
            vsFieldCode = vsFormula.slice(j + 1, vliIndexEndField);

            // ����� � ������� ��������������� ���� ���
            vbExistsField = false;

            for (k = 0; k <= asaValues[0].length - 1; k++)
            {
              if (vsFieldCode == asaValues[1][k])
              {
                vbExistsField = true;
                vsValue = vsValue + asaValues[2][k];
                break;
              } // if (vsFieldCode == asaValues[1][k])
            } // for (k = 0; k <= asaValues[0].length - 1; k++)

            if (!vbExistsField)
              vsValue = vsValue + vsFieldCode;

            j = vliIndexEndField;
            continue;
          } // if (vsSymbol == vsSymbolFieldBeg)

          // ������� ������, �� �������� � ��� ����, ������ ����������� � �������� ��������
          vsValue = vsValue + vsSymbol;
        } // for (j = 0; j < vsFormula.length; j++)

        //``````````````````````````````````````````````````````````````````````
        // ���������� ����������� �������
        asaValues[2][i] = vsValue;
      } // if (...
    } // for (i = 0; i < asaValues[0].length; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_CalcValues => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(asaValues);
} // function XMLFileIM_CalcValues

//------------------------------------------------------------------------------
// ������� ������� � ������ ���� �����, ������������, � �������� �����,
// ��������������� ������������� �������� ��� �������
// ���������:
//   aoParent         - ������ �� ������� ��� ������� � XML-����� INTERMECH
//   abGetTableFields - ��������� �� �������� ���� ������� (���� ��� - ������ ���� ��������)
// ���������:
//   ��������� ������, � �������:
//     a[0][i] ��� i-�� ���
//     a[1][i] ������������ i-�� ���
//     a[2][i] �������� i-�� ���� (��� ������)

function XMLFileIM_GetFields(aoParent, abGetTableFields)
{

// ��������� ����������
var i;                   // ���������� �����
var vliOccurrencesCount; // ���������� ��������� <occurrence>
var voForm;              // ������ �� ������� <form>
var voFormAttribute;     // ������ �� ������� <formattribute>
var voOccurrences;       // ������ �� ��������� ��������� <occurrence>
var voRelForm;           // ������ �� ������� <field>
var vrdEvent;            // ��������� � ����������� �� �������������� ��������
var vsaFields;           // ������ �����
var vwLastIndex;         // ��������� ������ � �������

  //
  vsaFields = new Array();

  try
  {
    //
    voOccurrences = aoParent.selectNodes('occurrence[@elementtype = "field"][@ref!= ""]/@ref');
    vliOccurrencesCount = voOccurrences.length;

    //
    vsaFields[0] = new Array(vliOccurrencesCount);
    vsaFields[1] = new Array(vliOccurrencesCount);
    vsaFields[2] = new Array(vliOccurrencesCount);

    //
    for (i = 0; i < vliOccurrencesCount; i++)
    {
      voRelForm = goXMLFileIM.selectSingleNode('/intermech/field[@id = "' +
        voOccurrences.item(i).nodeValue + '"]/relation[@ref != ""]/@ref');

      if (voRelForm != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelForm.nodeValue + '"]');

        if (voForm != null)
        {
          //
          voFormAttribute = voForm.selectSingleNode('formattribute[@name="F_FIELD"]/@value')

          if (voFormAttribute != null)
            vsaFields[0][i] = voFormAttribute.nodeValue;
          else
            vsaFields[0][i] = '';

          voFormAttribute = null;

          //
          voFormAttribute = voForm.selectSingleNode('formattribute[@name="F_LONGNAME"]/@value');

          if (voFormAttribute != null)
            vsaFields[1][i] = voFormAttribute.nodeValue;
          else
            vsaFields[1][i] = '';

          voFormAttribute = null;

          //
          vsaFields[2][i] = '';

          if (abGetTableFields)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name="F_DATA"]/@value');

            if (voFormAttribute != null)
              vsaFields[2][i] = voFormAttribute.value
            else
              vsaFields[2][i] = '';

            voFormAttribute = null;
          } // if (abGetTableFields)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelForm != null)

      voRelForm = null;
    } // for (i = 0; i < vliOccurrencesCount; i++)

    vwLastIndex = vsaFields[1].length;

    vsaFields[0][vwLastIndex] = 'IMBASE_CODE';
    vsaFields[1][vwLastIndex] = 'IMBASE_CODE';
    vsaFields[2][vwLastIndex] = '';

    vwLastIndex = vwLastIndex + 1;

    vsaFields[0][vwLastIndex] = 'F_KEY';
    vsaFields[1][vwLastIndex] = 'F_KEY';
    vsaFields[2][vwLastIndex] = '';
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_GetFields => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  voFormAttribute = null;
  voForm = null;
  voRelForm = null;
  voOccurrences = null;

  //
  return vsaFields;
} // function XMLFileIM_GetFields

//------------------------------------------------------------------------------
// ������� ���������� �������� ������������� (��� �������� + ��� ������ � �������)
// ��� ��������� IMBaseKey � �� IMBase
// ���������:
//   asIMBaseKey - �������� IMBaseKey
// ���������:
//   �������� ������������� (��� �������� + ��� ������ � �������) ��� ��������� asIMBaseKey

function XMLFileIM_GetIMBaseRecKey(asIMBaseKey) 
{
  try 
  {
    return asIMBaseKey.substr(0, 8) + asIMBaseKey.substr(14, 6);
  } // try

  catch (vrdEvent) 
  {
    Message('XMLFileIM_GetIMBaseRecKey => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_GetIMBaseRecKey

//------------------------------------------------------------------------------
// ��������������� ���������� DOM-��������� ��� XML-����� � ������� INTERMECH

function XMLFileIM_Prepare()
{

// ��������� ����������
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    // ������������� ������� ����������
    goXMLFileIM.setProperty('SelectionLanguage', 'XPath');
    goXMLFileIM.async           = true;
    goXMLFileIM.validateOnParse = true;

    // �������� XML-����� � ������� INTERMECH
    if (goXMLFileIM.load(GetXMLFileIM()) == false)
      throw new Error (100001, 'ERR_EXISTFILESRC');
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_Prepare => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileIM_Prepare

//------------------------------------------------------------------------------
// ����� �������� ��������� � �������
// ���������:
//   asaArray           - ������ � ����������� � �� ����������
//   aliParamNameIndex  - ������ 2-�� ������ ��� ������������ ����������
//   aliParamValueIndex - ������ 2-�� ������ ��� �������� ����������
//   asParamName        - ������������ ���������
// ���������:
//   �������� ��������� (���� �������� �� ������ � �������, �� ������ ������)

function XMLFileIM_GetParamValueFromArray(asaArray, aliParamNameIndex,
  aliParamValueIndex, asParamName)
{

// ��������� ����������
var i;           // ���������� �����
var vliLength;   // ������ ������� �� 1-�� ������
var vrdEvent;    // ��������� � ����������� �� �������������� ��������
var vsParamName; // ������������ ��������� � ������� ��������

  try
  {
    vsParamName = asParamName.toUpperCase();
    vliLength = asaArray[aliParamNameIndex].length;

    for (i = 0; i < vliLength; i++)
    {
      if (vsParamName == asaArray[aliParamNameIndex][i].toUpperCase())
        return asaArray[aliParamValueIndex][i];
    } // for (i = 0; i < vliLength; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_GetParamValueFromArray => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return '';
} // function XMLFileIM_GetParamValueFromArray

//------------------------------------------------------------------------------
// ������� ��������� �� ������ � ��������� ������� ���������� ��������
// ���������:
//   aoFolder         - ������ �� ������� <folder>
//   asParentID       - ������������� ����������� �����
//   asaCatalogFields - ������ ����� ��������
//   awCatalogType    - ��� ��������:
//     1: ���� (TC_CEH)
//     2: ������������ (TC_OBORUD)
//     3: �������� (TC_OPER)
//     4: ���� ����� (CTL000055)
//     5: ������� ������������� (TC_WORKERS)
//     6: ��������� (CTL000001)
//     7: �������� (TC_OSNAST)
//     8: �������� ��������� (CTL000002)
//     9: ��������������� ��������� (CTL000050)
//   asCatalogName    - ������������ ��������
// ���������:
//   null

function XMLFileIM_ProcessingFolder(aoFolder, asParentID, asaCatalogFields, awCatalogType, asCatalogName)
{

// ��������� ����������
var i;                   // ���������� �����
var vliOccurrencesCount; // ���������� ��������� <occerrence>
var vliTablesCount;      // ���������� ��������� <table>
var voChildFolder;       // �������� �����
var voOccurrences;       // ��������� ��������� <occerrence>
var voTable;             // ������� <table>
var voTables;            // ��������� ��������� <table>
var vrdEvent;            // ��������� � ����������� �� �������������� ��������
var vsParentID;          // ������������� ������������ ������� (��������, ��� ��� �������)

  try
  {
    //
    vsParentID = asParentID;

    //
    if (
      (awCatalogType == 1) || // ����
      (awCatalogType == 2) || // ������������
      (awCatalogType == 3) || // ��������
      (awCatalogType == 4))   // ���� �����
      vsParentID = XMLFileIM_ReadFolder(aoFolder, asParentID, asaCatalogFields, awCatalogType, asCatalogName);

    //
    if (awCatalogType == 5) // ������� �������������
    {
      voTables = aoFolder.selectNodes('occurrence[@elementtype = "table"][@ref!= ""]/@ref');
      vliTablesCount = voTables.length;

      for (i = 0; i < vliTablesCount; i++)
      {
        if (!NextVisual())
          throw new Error(10003, 'USER_ABORT');

        voTable = goXMLFileIM.selectSingleNode('/intermech/table[@id = "' +
          voTables.item(i).value + '"]');

        if (voTable != null)
          XMLFileIM_ReadFolder(voTable, asParentID, asaCatalogFields, awCatalogType, asCatalogName);

        voTable = null;
      } // for (i = 0; i < vliTablesCount; i++)

      voTables = null;
    } // if (awCatalogType == 5)

    //
    if (
      (awCatalogType == 6) || // ���������
      (awCatalogType == 7) || // ��������
      (awCatalogType == 8) || // �������� ���������
      (awCatalogType == 9))   // ��������������� ���������
    {
      voTables = aoFolder.selectNodes('occurrence[@elementtype = "table"][@ref!= ""]/@ref');
      vliTablesCount = voTables.length;

      for (i = 0; i < vliTablesCount; i++)
      {
        if (!NextVisual())
          throw new Error(10003, 'USER_ABORT');

        voTable = goXMLFileIM.selectSingleNode('/intermech/table[@id = "' +
          voTables.item(i).value + '"]');

        if (voTable != null)
          XMLFileIM_ReadTable(voTable, asParentID, asaCatalogFields, awCatalogType, asCatalogName);

        voTable = null;
      } // for (i = 0; i < vliTablesCount; i++)

      voTables = null;
    } // if (...

    // ����������� ����� �����
    voOccurrences = aoFolder.selectNodes('occurrence[@elementtype = "folder"][@ref!= ""]/@ref');
    vliOccurrencesCount = voOccurrences.length;

    //
    for (i = 0; i < vliOccurrencesCount; i++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      voChildFolder = goXMLFileIM.selectSingleNode('/intermech/folder[@id = "' +
        voOccurrences.item(i).value + '"]');

      if (voChildFolder != null)
        XMLFileIM_ProcessingFolder(voChildFolder, vsParentID, asaCatalogFields, awCatalogType, asCatalogName);

      voChildFolder = null;
    } // for (j = 0; j < vliOccurrencesCount; j++)

    voOccurrences = null;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ProcessingFolder => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  voChildFolder = null;
  voOccurrences = null;
  voTable = null;
  voTables = null;
} // function XMLFileIM_ProcessingFolder

//------------------------------------------------------------------------------
// ������� ��������� �� ���� ��������� � ��������� ������� ���������� ��������
// �� ���������
// ���������:
//   null

function XMLFileIM_ReadCatalogs()
{

// ��������� ����������
var i;                   // ���������� �����
var j;                   // ���������� �����
var vliCatalogsCount;    // ���������� ��������� � XML-����� INTERMECH
var vliOccurrencesCount; // ���������� �������� �������� � XML-����� INTERMECH
var voCatalogs;          // ��������� ������ �� ������� <catalog> � XML-����� INTERMECH
var voFolder;            // ������ �� ������� <folder> � XML-����� INTERMECH
var voFormAttribute;     // ������ �� ������� <formattribute> � XML-����� INTERMECH
var voOccurrences;       // ��������� ������ �� ������� <occurrence> � XML-����� INTERMECH
var voRelation;          // ������ �� ������� <relation> � XML-����� INTERMECH
var vrdEvent;            // ��������� � ����������� �� �������������� ��������
var vsaCatalogFields;    // ������ ����� ��������
var vsCatalogName;       // ������������ ���� �������� ��������
var vsTableName;         // ��� �������� ������� ��� ��������
var vwCatalogType;       // ��� �������� ��������

  try
  {
    //
    voCatalogs = goXMLFileIM.selectNodes('/intermech/catalog[@id != ""]');
    vliCatalogsCount = voCatalogs.length;

    for (i = 0; i < vliCatalogsCount; i++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      voRelation = voCatalogs.item(i).selectSingleNode('relation[@elementtype = "form"][@ref != ""]/@ref');

      if (voRelation == null)
        continue;

      voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
        '"]/formattribute[@name = "F_TABLE"][@value != ""]/@value');

      if (voFormAttribute != null)
      {
        vsTableName = voFormAttribute.nodeValue;

        vsaCatalogFields = XMLFileIM_GetFields(voCatalogs.item(i), false);

        voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
          '"]/formattribute[@name = "F_DESCR"][@value != ""]/@value');

        switch (vsTableName)
        {

          // ����
          case 'TC_CEH':
          {
            // ����� �������� ������������� � �������.
            // �������� ����� ������� ����������� ����� ����������� ������� �
            // ��������������� �������, � ����� ��� ������� ������������
            // ������������ ����������� �������������, ����� ���� ���������
            // �� ����������� ����� ����������� � XML-���� � ������� ���������-ERP
            gliObjCount_Podr = 0;

            // ������������� �������� ��� ���������� ������� �������������
            gsaFieldValue_Podr_ID = new Array();
            gsaFieldValue_Podr_KodASUP = new Array();
            gsaFieldValue_Podr_KodCeh = new Array();
            gsaFieldValue_Podr_KodUch = new Array();
            gsaFieldValue_Podr_Name = new Array();
            gsaFieldValue_Podr_cPodr = new Array();
            gsaFieldValue_Podr_PrUch = new Array();

            //
            vwCatalogType = 1;
            vsCatalogName = voFormAttribute.nodeValue;//'����';
            break;
          }

          // ������������
          case 'TC_OBORUD':
          {
            vwCatalogType = 2;
            vsCatalogName = voFormAttribute.nodeValue;//'������������';
            break;
          }

          // ��������
          case 'TC_OPER':
          {
            vwCatalogType = 3;
            vsCatalogName = voFormAttribute.nodeValue;//'��������';
            break;
          }

          // ���� �����
          case 'CTL000055':
          {
            vwCatalogType = 4;
            vsCatalogName = voFormAttribute.nodeValue;//'���� �����';
            break;
          }

          // ������� �������������
          case 'TC_WORKERS':
          {
            vwCatalogType = 5;
            vsCatalogName = voFormAttribute.nodeValue;//'������� �������������';
            break;
          }

          // ���������
          case 'CTL000001':
          {
            vwCatalogType = 6;
            vsCatalogName = voFormAttribute.nodeValue;//'���������';
            break;
          }

          // ��������
          case 'TC_OSNAST':
          {
            vwCatalogType = 7;
            vsCatalogName = voFormAttribute.nodeValue;//'��������';
            break;
          }

          // �������� ���������
          case 'CTL000002':
          {
            vwCatalogType = 8;
            vsCatalogName = voFormAttribute.nodeValue; //'���������';
            break;
          }

          // ��������������� ���������
          case 'CTL000050':
          {
            vwCatalogType = 9;
            vsCatalogName = voFormAttribute.nodeValue; //'���������';
            break;
          }

        default:
          continue;
        } // switch (vsTableName)

        SetVisualHeader(
          '����������� ������ �������� "' + vsCatalogName + '"\n' +
          ' \n' +
          ' ');

        voOccurrences = voCatalogs.item(i).selectNodes('occurrence[@elementtype = "folder"][@ref!= ""]/@ref');
        vliOccurrencesCount = voOccurrences.length;

        for (j = 0; j < vliOccurrencesCount; j++)
        {
          if (!NextVisual())
            throw new Error(10003, 'USER_ABORT');

          voFolder = goXMLFileIM.selectSingleNode('/intermech/folder[@id = "' + voOccurrences.item(j).value + '"]');

          if (voFolder != null)
            XMLFileIM_ProcessingFolder(voFolder, '0', vsaCatalogFields, vwCatalogType, vsCatalogName);

          voFolder = null;
        } // for (j = 0; j < vliOccurrencesCount; j++)

        voOccurrences = null;
      } // if (voFormAttribute != null)

      voFormAttribute = null;
      voRelation = null;
    } // for (i = 0; i < vliCatalogsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadCatalogs => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  voFolder = null;
  voOccurrences = null;
  voFormAttribute = null;
  voRelation = null;
  voCatalogs = null;
} // function XMLFileIM_ReadCatalogs

//------------------------------------------------------------------------------
// ��������� ������, ��������������� �����
// ���������:
//   aoFolder         - ������ �� ������� folder ��������� ���������
//   asParentID       - ������������� ������������ ������� (��������, ��� ��� �������)
//   asaCatalogFields - ������ ����� ��������
//   awCatalogType    - ��� ��������:
//     1: ���� (TC_CEH)
//     2: ������������ (TC_OBORUD)
//     3: �������� (TC_OPER)
//     4: ���� ����� (CTL000055)
//     5: ������� ������������� (TC_WORKERS)
//     6: ��������� (CTL000001)
//     7: �������� (TC_OSNAST)
//     8: �������� ��������� (CTL000002)
//     9: ��������������� ��������� (CTL000050)
//   asCatalogName    - ������������ �������� (��� ������������)
// ���������:
//   ������������� ������������ �������

function XMLFileIM_ReadFolder(aoFolder, asParentID, asaCatalogFields, awCatalogType, asCatalogName)
{

// ��������� ����������
var i;                 // ���������� �����
var vliFieldsCount;    // ���������� �����
var voForm;            // ������ �� ������� <form>
var voFormAttribute;   // ������ �� ������� <formattribute>
var voOccurrence;      // ������ �� ������� <occurrence>
var voRelation;        // ������ �� ������� <relation>
var vrdEvent;          // ��������� � ����������� �� �������������� ��������
var vsaValues;         // ������ ����� �������
var vsObjGalID;        // ��� ���������� ��-��������� ��� �������
var vsParentID;        // ��� ���������� ��-��������� ��� ������������ �������
// �������� �������������
var vsPodr_ID;         // �������� "�������������"
var vsPodr_Kod;        // �������� "���"
var vsPodr_Name;       // �������� "������������"
var vsPodr_PrUch;      // �������� "������� ���/������� (0/1)"
var vsPodr_cPodr;      // �������� "������ �� ����������� �������������"
// �������� ������ ������������
var vsEqGroup_ID;      // �������� "�������������"
var vsEqGroup_Code;    // �������� "���"
var vsEqGroup_Name;    // �������� "������������"
// �������� ������� ������������
var vsObjRem_ID;       // �������� "�������������"
var vsObjRem_Name;     // �������� "������������"
var vsObjRem_InNum;    // �������� "����������� �����"
// �������� ��������������� ��������
var vsMnfOper_ID       // �������� "�������������"
var vsMnfOper_LNum     // �������� "���"
var vsMnfOper_Name     // �������� "������������"
// �������� ���� �����
var vsKaWork_ID;       // �������� "�������������"
var vsKaWork_Code;     // �������� "���"
var vsKaWork_Name;     // �������� "������������"
// �������� ���������
var vsProfession_ImID; // �������� "������������� �� ���������"
var vsProfession_ID;   // �������� "�������������"
var vsProfession_Code; // �������� "���"
var vsProfession_Name; // �������� "������������"

  //
  vsParentID = '0';

  try
  {
    //
    vsaValues = new Array(3);
    vsaValues[0] = new Array();
    vsaValues[1] = new Array();
    vsaValues[2] = new Array();

    vliFieldsCount = asaCatalogFields[0].length;

    for (i = 0; i < asaCatalogFields[0].length; i++)
    {
      vsaValues[0][i] = asaCatalogFields[0][i];
      vsaValues[1][i] = asaCatalogFields[1][i];
    } // for (i = 0; i < asaCatalogFields[0].length; i++)

    voOccurrence = aoFolder.selectSingleNode('occurrence[@elementtype = "record"][@ref != ""]/@ref');

    if (voOccurrence != null)
    {
      voRelation = goXMLFileIM.selectSingleNode('/intermech/record[@id = "' + voOccurrence.value +
        '"]/relation/@ref');

      if (voRelation != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.value + '"]');

        if (voForm != null)
        {
          for (i = 0; i < vsaValues[0].length; i++)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name = "' + vsaValues[0][i] + '"]/@value');

            if (voFormAttribute != null)
              vsaValues[2][i] = voFormAttribute.value
            else
              vsaValues[2][i] = '';

            voFormAttribute = null;
          } // for (i = 0; i < vsaValues[0].length; i++)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelation != null)

      voRelation = null;
    } // if (voOccurrence != null)
    else
    {
      if (awCatalogType == 2) // ������������
      {
        vsaValues[0][vliFieldsCount] = 'IsEqGroup';
        vsaValues[1][vliFieldsCount] = 'IsEqGroup';
        vsaValues[2][vliFieldsCount++] = '1';
      } // if (awCatalogType == 2)

      if (
        (awCatalogType == 3) || // ��������
        (awCatalogType == 5))   // ������� �������������
        return vsParentID;
    } // else -> if (voOccurrence != null)

    if (
      (awCatalogType == 1) || // ����
      (awCatalogType == 2) || // ������������
      (awCatalogType == 3) || // ��������
      (awCatalogType == 4) || // ���� �����
      (awCatalogType == 5))   // ������� �������������
    {
      voRelation = aoFolder.selectSingleNode('relation[@elementtype = "form"][@ref != ""]/@ref');

      if (voRelation != null) 
      {
        // ���������� �������� 'F_NAME'
        voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
          '"]/formattribute[@name = "F_NAME"]/@value');

        if (voFormAttribute != null)
        {
          vsaValues[0][vliFieldsCount] = 'F_NAME';
          vsaValues[1][vliFieldsCount] = 'F_NAME';
          vsaValues[2][vliFieldsCount++] = voFormAttribute.nodeValue;
        } // if (voFormAttribute != null)

        voFormAttribute = null;

        // ���������� �������� 'F_LEVEL'
        voFormAttribute = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.nodeValue +
          '"]/formattribute[@name = "F_LEVEL"]/@value');

        if (voFormAttribute != null)
        {
          vsaValues[0][vliFieldsCount] = 'F_LEVEL';
          vsaValues[1][vliFieldsCount] = 'F_LEVEL';
          vsaValues[2][vliFieldsCount++] = voFormAttribute.nodeValue;
        } // if (voFormAttribute != null)

        voFormAttribute = null;
      } // if (voRelation != null)

      voRelation = null;

      if (
        (awCatalogType == 1) || // ����
        (awCatalogType == 2))   // ������������
      {
        vsaValues[0][vliFieldsCount] = 'Owner';
        vsaValues[1][vliFieldsCount] = 'Owner';
        vsaValues[2][vliFieldsCount++] = asParentID;
      } // if (...
    } // if (...

    //``````````````````````````````````````````````````````````````````````````
    // ���������� ������� � XML-����
    switch (awCatalogType)
    {

      // ����
      case 1:
      {
        // ������ �������� "�������������"
        vsPodr_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // ������ �������� "���"
        vsPodr_Kod = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '��� ���� ����');

        // ������ �������� "������������"
        vsPodr_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '������������ �������');
        vsPodr_PrUch = '1';

        if (vsPodr_Name == '')
        {
          vsPodr_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '������������ ����');
          vsPodr_PrUch = '0';
        } // if (vsPodr_Name == '')

        // ���������� ������ � �������
        if (
          (vsPodr_Kod != '') &&
          (vsPodr_Kod != null))
        {
          // ������������� ������ � ���� ������������
          SetVisualHeader(
            '����������� ������ �������� "' + asCatalogName + '"\n' +
            ' ������: \n' +
            ' ' + vsPodr_Name);

          // ���������� �������� �������������
          gliObjCount_Podr = gliObjCount_Podr + 1;

          // ��������� �������� "�������������"
          gsaFieldValue_Podr_ID[gliObjCount_Podr - 1] = vsPodr_ID;

          // ��������� �������� "��� ���� ����"
          gsaFieldValue_Podr_KodASUP[gliObjCount_Podr - 1] = vsPodr_Kod;

          // ��������� �������� "��� ����"
          gsaFieldValue_Podr_KodCeh[gliObjCount_Podr - 1] = XMLFileIM_GetParamValueFromArray(
            vsaValues,
            0,
            2,
            '��� ����');

          // ��������� �������� "��� �������"
          gsaFieldValue_Podr_KodUch[gliObjCount_Podr - 1] = XMLFileIM_GetParamValueFromArray(
            vsaValues,
            0,
            2,
            '��� �������');

          // ��������� �������� "������������"
          gsaFieldValue_Podr_Name[gliObjCount_Podr - 1] = vsPodr_Name;

          // ��������� �������� "������ �� ����������� �������������"
          gsaFieldValue_Podr_cPodr[gliObjCount_Podr - 1] = '0';

          // ��������� �������� "������� ���/������� (0/1)"
          gsaFieldValue_Podr_PrUch[gliObjCount_Podr - 1] = vsPodr_PrUch;

          // ���������� � XML-����
          //XMLFileGAL_AddPodr(false, vsPodr_ID, vsPodr_Kod, vsPodr_Name, vsPodr_cPodr);

          // ���������� ������ �� ������������ ������
          vsParentID = vsPodr_ID;
        } // if (...

        break;
      } // case 1:

      // ������������
      case 2:
      {
        // ��������� �������� "�������������"
        vsEqGroup_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // ��������� �������� "���"
        vsEqGroup_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');

        // ��������� �������� "������������"
        vsEqGroup_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_NAME');

        // ������������� ������ � ���� ������������
        SetVisualHeader(
          '����������� ������ �������� "' + asCatalogName + '"\n' +
          ' ������: \n' +
          ' ' + vsEqGroup_Name);

        // ���������� � XML-����
        vsObjGalID = GetObjGalID_EqGroup(
          false,
          vsEqGroup_ID,
          vsEqGroup_ID,
          vsEqGroup_Code,
          vsEqGroup_Name)

        // ���������� ������ �� ������������ ������
        vsParentID = vsEqGroup_ID;

        // ���������� �������
        //if (XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IsEqGroup') != '')
        //{
        //  // ��������� �������� "�������������"
        //  vsEqGroup_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_LEVEL');//'IMBASE_CODE');
        //
        //  // ��������� �������� "���"
        //  vsEqGroup_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_LEVEL');
        //
        //  // ��������� �������� "������������"
        //  vsEqGroup_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_NAME');
        //
        //  // ������������� ������ � ���� ������������
        //  SetVisualHeader(
        //    '����������� ������ �������� "' + asCatalogName + '"\n' +
        //    ' ������: \n' +
        //    ' ' + vsEqGroup_Name);
        //
        //  // ���������� � XML-����
        //  XMLFileGAL_AddEqGroup(false, vsEqGroup_ID, vsEqGroup_Code, vsEqGroup_Name);
        //
        //  // ���������� ������ �� ������������ ������
        //  vsParentID = vsEqGroup_ID;
        //} // if (XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IsEqGroup') != '')
        //else
        //{
        //  // ��������� �������� "�������������"
        //  vsObjRem_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_LEVEL');//'IMBASE_CODE');
        //
        //  // ��������� �������� "������������"
        //  vsObjRem_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������������');
        //
        //  // ��������� �������� "����������� �����"
        //  vsObjRem_InNum = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ����');
        //
        //  // ������������� ������ � ���� ������������
        //  SetVisualHeader(
        //    '����������� ������ �������� "' + asCatalogName + '"\n' +
        //    ' ������: \n' +
        //    ' ' + vsObjRem_Name);
        //
        //  // ���������� � XML-����
        //  XMLFileGAL_AddObjRem(false, vsObjRem_ID, vsObjRem_Name, vsObjRem_InNum);
        //
        //  // ���������� ������ �� ������������ ������
        //  vsParentID = vsObjRem_ID;
        //} // else -> if (XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IsEqGroup') != '')

        break;
      } // case 2:

      // ��������
      case 3:
      {
        // ��������� �������� "�������������"
        vsMnfOper_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // ��������� �������� "���"
        vsMnfOper_LNum = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '��� ��������');

        // ��������� �������� "������������"
        vsMnfOper_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_NAME');

        // ������������� ������ � ���� ������������
        SetVisualHeader(
          '����������� ������ �������� "' + asCatalogName + '"\n' +
          ' ������: \n' +
          ' ' + vsMnfOper_Name);

        // ���������� � XML-����
        vsObjGalID = GetObjGalID_MnfOper(
          true,
          vsMnfOper_ID,
          vsMnfOper_ID, //vsMnfOper_LNum,
          vsMnfOper_LNum,
          vsMnfOper_Name);

        // ���������� ������ �� ������������ ������
        vsParentID = vsObjGalID;

        break;
      } // case 3:

      // ���� �����
      case 4:
      {
        // ��������� �������� "�������������"
        vsKaWork_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_LEVEL');//'IMBASE_CODE');

        // ��������� �������� "���"
        vsKaWork_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '��� ���� �����');

        // ��������� �������� "������������"
        vsKaWork_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_NAME');

        // ������������� ������ � ���� ������������
        SetVisualHeader(
          '����������� ������ �������� "' + asCatalogName + '"\n' +
          ' ������: \n' +
          ' ' + vsKaWork_Name);

        // ���������� ������
        if (
          (vsKaWork_Code != '') &&
          (vsKaWork_Code != null))
        {
          // ���������� � XML-����
          vsObjGalID = GetObjGalID_KaWork(
            false,
            vsKaWork_ID,
            vsKaWork_ID,
            vsKaWork_Code,
            vsKaWork_Name);

          // ���������� ������ �� ������������ ������
          vsParentID = vsKaWork_ID;
        } // if (...

        break;
      } // case 4:

      // ������� �������������
      case 5:
      {
        // ��������� �������� "������������� �� ���������"
        vsProfession_ImID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'F_KEY');

        // ��������� �������� "�������������"
        vsProfession_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, 'IMBASE_CODE');
        //vsProfession_ID = XMLFileIM_GetIMBaseRecKey(vsProfession_ID);

        // ��������� �������� "���"
        vsProfession_Code = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '��� ���������');

        // ��������� �������� "������������"
        vsProfession_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 1, 2, '������������ �����������');

        // ������������� ������ � ���� ������������
        SetVisualHeader(
          '����������� ������ �������� "' + asCatalogName + '"\n' +
          ' ������: \n' +
          ' ' + vsProfession_Name);

        // ���������� � XML-����
        vsObjGalID = GetObjGalID_Profession(
          true,
          vsProfession_ImID,
          vsProfession_ID,
          vsProfession_Code,
          vsProfession_Name);

        // ���������� ������ �� ������������ ������
        vsParentID = vsProfession_ID;

        break;
      }  // case 5:

    } // switch (awCatalogType)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadFolder => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  voFormAttribute = null;
  voForm = null;
  voRelation = null;
  voOccurrence = null;

  //
  return vsParentID;
} // function XMLFileIM_ReadFolder

//------------------------------------------------------------------------------
// ������� ��������� � xml-���� ��� �������
// ���������:
//   aoArts       - ������ �� ��������� ��������� <art>
//   aliArtsCount - ���������� ��������� <art>
// ���������:
//   null

function XMLFileIM_ReadProduction()
{

// ��������� ����������
var i;                  // ���������� �����
var j;                  // ���������� �����
var vliArtsCount;       // ���������� ��������� <art>
var vliOccurencesCount; // ���������� ��������� <occurence>
var vliRelationsCount;  // ���������� ��������� <relation>
var vliTPsCount;        // ���������� ��������� <tp>
var voArts;             // ������ �� ��������� ��������� <art>
var voAttrValues;       // ������ �� ��������� �������� ��������
var voFormAttributes;   // ������ �� ��������� ��������� <formattribute>
var voOccurences;       // ������ �� ��������� ��������� <occurence>
var voRelations;        // ������ �� ��������� ��������� <relation>
var voTP;               // ������ �� ������� <tp>
var voTPs;              // ������ �� ��������� ��������� <tp>
var vrdEvent;           // ��������� � ����������� �� �������������� ��������
var vsaChildObjects;    // ������ ��� ���������� ��������������� �������� ��������
var vsaChildObjCount;   // ������ ��� ���������� ���������� ��� �������� ��������
var vsaChildObjRefMU;   // ������ ��� ���������� ������ �� ������� ��������� ��
                        //   �������� ��������
var vsArtID;            // ��� ���������� �������������� ���� <art>                        
//                        
var vsMC_AtlLastDate;   // ���� ��������� �����������
var vsMC_cType;         // ������ �� ��� ��
var vsMC_ID;            // �������������
var vsMC_Kind;          // ��������� �� (0 - ��������, 1 - ������������ ������������)
var vsMC_Massa;         // �����
var vsMC_Name;          // ������������
var vsMC_BarKod;        // �������������� �����
var vsMC_Obozn;         // ���
var vsMC_PrMat;         // �������������� �� (0 - ��������, 1 - ���, 2 - ����������, ��������)
var vsMC_cEd;           // ������ �� ������� ������� ���������
var vsMC_RemMC;         // ����������
var vsMC_TNVED;         // ��� �����
var vsMC_VersionNmb;    // �������� �������� �������� "����� ������" ��� ��
var vsMC_InvNmbDoc;     // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsMC_BuildCode;     // �������� �������� �������� "��� ����������" ��� ��
var vsMC_Litera;        // �������� �������� �������� "������" ��� ��

var vsTP_AddedSign_1;   //
var vsTP_AddedSign_2;   //
var vsTP_AddedSign_3;   //
var vsTP_CheckDt_1;     //
var vsTP_CheckDt_2;     //
var vsTP_CheckDt_3;     //
var vsTP_Checkers_1;    //
var vsTP_Checkers_2;    //
var vsTP_Checkers_3;    //
var vsTP_cEd;           //
var vsTP_cNormGroup;    //
var vsTP_cObject;       //
var vsTP_EdNorm;        //
var vsTP_HdrKS_ID;      //
var vsTP_ID;            //
var vsTP_MinVol;        //
var vsTP_Name;          //
var vsTP_ParGroup;      //
var vsTP_Product;       //
var vsTP_Shifr;         //
var vsTP_tObject;       //

  try
  {
    // ���������� ���� ������� � XML-����� INTERMECH
    voArts = goXMLFileIM.getElementsByTagName('art');
    vliArtsCount = voArts.length;

    //
    SetVisualHeader('�������� ������������������ �������� \n   \n   ');

    // ���� �� ������������������ ��������
    for(i = 0; i < vliArtsCount; i++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````
      // ������������ ������� "�����������"

      // ���������� �������� "ID"
      vsMC_ID = voArts.item(i).getAttribute('id');

      // ��������� ������ �� �������� ������
      voRelations = voArts.item(i).selectNodes('relation[@elementtype = "form"][@ref != ""]/@ref');

      if (voRelations.length == 0)
      {
        voRelations = null;
        continue;
      } // if (voRelations.length == 0)

      // ��������, ��� ������� <art> �� �������� "!ZAKAZ"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "!ZAKAZ"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //{
      //  voRelations = null;
      //  voFormAttributes = null;
      //  continue;
      //} // if (voFormAttributes.length != 0)
      //
      //voFormAttributes = null;

      // ��������, ��� ������� <art> �� �������� "!PARENT"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "!PARENT"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //{
      //  voRelations = null;
      //  voFormAttributes = null;
      //  continue;
      //} // if (voFormAttributes.length != 0)
      //
      //voFormAttributes = null;

      // ���������� �������� "������������� �������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "������������� �������"]/@value');
      
      if (voFormAttributes.length == 0)
      {
        voFormAttributes = null;
        continue;
      } // if (voFormAttributes.length == 0)
      
      vsMC_ID = voFormAttributes.item(0).nodeValue;
      
      voFormAttributes = null;

      //vsMC_ID = gliGlobID++;

      // ��������� �������� ������� �� ���������
      vsMC_Name        = '';
      vsMC_BarKod      = '';
      vsMC_Obozn       = '';
      vsMC_Kind        = '1';
      vsMC_cType       = '0';
      vsMC_TNVED       = '';
      vsMC_RemMC       = '';
      vsMC_AtlLastDate = '';
      vsMC_Massa       = '0';
      vsMC_PrMat       = '1';
      vsMC_cEd         = '0';
      vsMC_VersionNmb  = '';
      vsMC_InvNmbDoc   = '';
      vsMC_BuildCode   = '';
      vsMC_Litera      = '';

      // ���������� �������� "������������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "������������"]/@value');

      if (voFormAttributes.length == 0)
      {
        voFormAttributes = null;
        continue;
      } // if (voFormAttributes.length == 0)

      vsMC_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ������������� ������ � ���� ������������
      SetVisualHeader(
        '�������� ������������������ ��������\n' +
        ' ������: \n' +
        ' ' + vsMC_Name);

      // ���������� �������� "�����������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�����������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Obozn = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "��������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��������"]/@value');

      if (voFormAttributes.length != 0)
        if (voFormAttributes.item(0).nodeValue == '+')
          vsMC_Kind = '0';

      voFormAttributes = null;

      // ���������� �������� "��� ��"
      voFormAttributes = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��� �������"]/@value');

      if (voFormAttributes != null)
        vsMC_cType = voFormAttributes.nodeValue;

      if (
        (vsMC_cType == null) ||
        (vsMC_cType == ''))
        vsMC_cType = '0';

      if (vsMC_cType != '0')
        vsMC_cType = GetObjGalID_TypeMC_ByName(vsMC_cType);

      voFormAttributes = null;

      // ���������� �������� "������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "������� ���������"]/@value');

      if (voFormAttributes.length != 0)
          vsMC_cEd = voFormAttributes.item(0).nodeValue;

      if (
        (vsMC_cEd == null) ||
        (vsMC_cEd == ''))
          vsMC_cEd = '0';

      if (vsMC_cEd == '0')
        vsMC_cEd = '��';

      if (vsMC_cEd != '0')
        vsMC_cEd = GetObjGalID_Ed(true, vsMC_cEd, vsMC_cEd, vsMC_cEd, vsMC_cEd);

      // ���������� �������� "��� ���"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��� ���"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_TNVED = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "����������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_RemMC = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "���� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "���� ����������� ���������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_AtlLastDate = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "�����"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�����"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Massa = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "����� ������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����� ������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_VersionNmb = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "����������� ����� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����������� ����� ���������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_InvNmbDoc = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "��� ����������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��� ����������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_BuildCode = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "������"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Litera = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      //
      vsMC_PrMat = '1';

      // ���������� �� � XML-���� � ������� ���������-ERP
      vsMC_ID = GetObjGalID_MC(
        true, 
        vsMC_ID, 
        vsMC_ID, 
        vsMC_Name + ' ' + vsMC_Obozn, 
        vsMC_BarKod, 
        vsMC_Obozn, 
        vsMC_Kind,
        vsMC_cType, 
        vsMC_TNVED, 
        vsMC_RemMC, 
        vsMC_AtlLastDate, 
        vsMC_Massa, 
        vsMC_PrMat, 
        vsMC_cEd, 
        vsMC_VersionNmb,
        vsMC_InvNmbDoc, 
        vsMC_BuildCode, 
        vsMC_Litera);

      voRelations = null;

      //````````````````````````````````````````````````````````````````````````
      // ������������ ������� "��������������� ������������"

      // ���������� ��������� ��������, �������� � ������
      voOccurences = voArts.item(i).selectNodes('occurrence[@elementtype = "art"][@ref != ""]');

      vliOccurencesCount = voOccurences.length;

      if (vliOccurencesCount != 0) 
      {
        // ������������� ������ � ���� ������������
        SetVisualHeader(
        '�������� ������������������ ��������\n' +
        ' �� ��� �������: \n' +
        ' ' + vsMC_Name);

        // ���������� ���������������� ������� � �������
        vsaChildObjects = new Array();
        vsaChildObjCount = new Array();
        vsaChildObjRefMU = new Array();

        // ���� �� ��������, �������� � ������
        for (j = 0; j < vliOccurencesCount; j++) 
        {
          // ��������� ������������� �������
          vsaChildObjects[j] = '0';
          vsaChildObjCount[j] = '1';
          vsaChildObjRefMU[j] = '0';

          // ���������� ��������� ���� <art\relation> ��� ����������� ����������
          // �������� "������������� �������"
          vsArtID = '0';
          
          voAttrValues = voOccurences.item(j).selectNodes('@ref');

          if (voAttrValues.length != 0)
            vsArtID = voAttrValues.item(0).nodeValue;

          voAttrValues = null;
          
          voRelations = goXMLFileIM.selectNodes('/intermech/art[@id = "' + vsArtID +
            '"]/relation[@elementtype = "form"][@ref != ""]/@ref');

          vliRelationsCount = voRelations.length;

          if (vliRelationsCount != 0)
          {
            // ���������� �������� "������������� �������"
            voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
              '"]/formattribute[@name = "������������� �������"]/@value');

            if (voFormAttributes.length != 0)
                vsaChildObjects[j] = voFormAttributes.item(0).nodeValue;

            voFormAttributes = null;
          } // if (vliRelationsCount != 0)
          
          voRelations = null;

          // ���������� ���� <occurence\relation> ��� ����������� ����������
          // ������� "����������" � "������������� ������� ���������"
          voRelations = voOccurences.item(j).selectNodes('relation[@elementtype = "form"][@ref != ""]/@ref');

          vliRelationsCount = voRelations.length;
          
          if (vliRelationsCount != 0)
          {
            // ���������� �������� "����������"
            voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "����������"]/@value');

            if (voFormAttributes.length != 0)
              vsaChildObjCount[j] = voFormAttributes.item(0).nodeValue;

            voFormAttributes = null;

            // ���������� �������� "������������� ������� ���������"
            voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "������������� ������� ���������"]/@value');

            if (voFormAttributes.length != 0)
              vsaChildObjRefMU[j] = voFormAttributes.item(0).nodeValue;

            voFormAttributes = null;
          } // if (vliRelationsCount != 0)
          
          voRelations = null;
        } // for (j = 0; j < vliRelationsCount; j++)

        // �������� ������� � ����� "��������������� ������������"
        XMLFileGAL_AddHdrKS(
          false,
          vsMC_ID,
          vsMC_ID,
          vsMC_Name,
          '',
          vsaChildObjects,
          vsaChildObjCount,
          vsaChildObjRefMU);

        vsaChildObjects = null;
        vsaChildObjCount = null;
        vsaChildObjRefMU = null;
      } // if (vliRelationsCount != 0)

      voOccurences = null;

      //````````````````````````````````````````````````````````````````````````
      // ������������ �������� "���������� �����"

      // ���������� ��������� ��, ����������� � �������� �������
      voTPs = voArts.item(i).selectNodes('occurrence[@elementtype = "tp"][@ref != ""]/@ref');
      vliTPsCount = voTPs.length;

      if (vliTPsCount != 0)
      {
        // ������������� ������ � ���� ������������
        SetVisualHeader(
          '�������� ������������������ ��������\n' +
          ' �� ��� �������: \n' +
          ' ' + vsMC_Name);

        // ���� �� ��
        for (j = 0; j < vliTPsCount; j++)
        {
          // ��������� �������� <tp>
          voTP = goXMLFileIM.selectNodes('/intermech/tp[@id = "' + voTPs.item(j).nodeValue + '"]');

          if (voTP.length == 0)
          {
            voTP = null;
            continue;
          } // if (voTP.length == 0)

          // ��������� �������� ������� �� ���������
          vsTP_ID          = '0';
          vsTP_Shifr       = '';
          vsTP_Name        = '';
          vsTP_tObject     = '4';
          vsTP_cObject     = vsMC_ID;
          vsTP_Product     = '1';
          vsTP_EdNorm      = '1';
          vsTP_cEd         = '0';
          vsTP_MinVol      = '0';
          vsTP_Checkers_1  = '';
          vsTP_AddedSign_1 = '';
          vsTP_CheckDt_1   = '';
          vsTP_Checkers_2  = '';
          vsTP_AddedSign_2 = '';
          vsTP_CheckDt_2   = '';
          vsTP_Checkers_3  = '';
          vsTP_AddedSign_3 = '';
          vsTP_CheckDt_3   = '';
          vsTP_ParGroup    = gliParameter_OperParams_ID;
          vsTP_cNormGroup  = gliParameter_NormCategory_ID;
          vsTP_HdrKS_ID    = vsMC_ID;

          // ��������� ������ �� ������� <form>
          voRelations = voTP.item(0).selectNodes('relation[@elementtype = "form"][@ref != ""]/@ref');

          // ���������� �������� "������������� ���������"
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "!KEY"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_ID = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // ���������� �������� "�����������"
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = "ODoc"]/@value');
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "�����������"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Shifr = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // ���������� �������� "������������"
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = "NDoc"]/@value');
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "������������"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Name = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // ���������� �������� "����������"
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = "���"]/@value');
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "����������"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Checkers_1 = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // ���������� �������� ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_AddedSign_1 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // ���������� �������� ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_CheckDt_1 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // ���������� �������� "��������"
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "����"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Checkers_2 = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // ���������� �������� ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_AddedSign_2 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // ���������� �������� ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_CheckDt_2 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // ���������� �������� "��������"
          voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
            '"]/formattribute[@name = "���"]/@value');

          if (voFormAttributes.length != 0)
            vsTP_Checkers_3 = voFormAttributes.item(0).nodeValue;

          voFormAttributes = null;

          // ���������� �������� ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_AddedSign_3 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // ���������� �������� ""
          //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          //  '"]/formattribute[@name = ""]/@value');
          //
          //if (voFormAttributes.length != 0)
          //  vsTP_CheckDt_3 = voFormAttributes.item(0).nodeValue;
          //
          //voFormAttributes = null;

          // ������������� ������ � ���� ������������
          SetVisualHeader(
            '�������� ������������������ ��������\n' +
            ' �� ��� �������: \n' +
            ' ' + vsTP_Name);

          // �������� ������� � ����� "���������� �����"
          GetObjGalID_KatMarsh(
            true,
            vsTP_ID,
            vsTP_ID,
            voTP,
            vsTP_Shifr,
            vsTP_Name,
            vsTP_tObject,
            vsTP_cObject,
            vsTP_Product,
            vsTP_EdNorm,
            vsTP_cEd,
            vsTP_MinVol,
            vsTP_Checkers_1,
            vsTP_AddedSign_1,
            vsTP_CheckDt_1,
            vsTP_Checkers_2,
            vsTP_AddedSign_2,
            vsTP_CheckDt_2,
            vsTP_Checkers_3,
            vsTP_AddedSign_3,
            vsTP_CheckDt_3,
            vsTP_ParGroup,
            vsTP_cNormGroup,
            vsTP_HdrKS_ID);

          // ������������ ��������
          voRelations = null;
          voTP = null;
        } // for (j = 0; j < vliTPsCount; j++)
      } // if (vliTPsCount != 0)

      voTPs = null;
    } // for (i = 0; i < aliArtsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadProduction => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  voFormAttributes = null;
  voRelations = null;
} // function XMLFileIM_ReadProduction

//------------------------------------------------------------------------------
// ������� ��������� ��� ������� �� �������� "�������" ���������-���������
// ���������:
//   aoTable          - ������ �� ������� <table>
//   asParentID       - ������������� ������������ ������� (��������, ��� ��� �������)
//   asaCatalogFields - ������ ����� ��������
//   awCatalogType    - ��� ��������:
//     1: ���� (TC_CEH)
//     2: ������������ (TC_OBORUD)
//     3: �������� (TC_OPER)
//     4: ���� ����� (CTL000055)
//     5: ������� ������������� (TC_WORKERS)
//     6: ��������� (CTL000001)
//     7: �������� (TC_OSNAST)
//     8: �������� ��������� (CTL000002)
//     9: ��������������� ��������� (CTL000050)
//   asCatalogName    - ������������ �������� (��� ������������)
// ���������:
//   null

function XMLFileIM_ReadTable(aoTable, asParentID, asaCatalogFields, awCatalogType, asCatalogName)
{

// ��������� ����������
var i;                   // ���������� �����
var j;                   // ���������� �����
var vliOccurrencesCount; // ���������� ��������� <occerrence>
var voOccurrence;        // ������ �� ������� <occurrence>
var voOccurrences;       // ��������� ��������� <occerrence>
var voForm;              // ������� <form>
var voFormAttribute;     // ������ �� ������� <formattribute>
var voRelation;          // �c���� �� ������� <relation>
var voTable;             // ������ �� ������� <table>
var vrdEvent;            // ��������� � ����������� �� �������������� ��������
var vsaTableFields;      // ������ ����� �������
var vsaValues;           // ������ �������� �����, ���:
                         //   a[0][i] - ������������ i-�� ���
                         //   a[1][i] - ��� i-�� ���
                         //   a[2][i] - �������� i-�� ���
                         //   a[3][i] - ������� ���������������� i-�� ����

// �������� �������
var vsTable_KEY;         // ���� F_KEY ��� ������ �������

// �������� �����������
var vsMC_AtlLastDate;    // �������� "���� ��������� �����������"
var vsMC_cType;          // �������� "������ �� ��� ��"
var vsMC_ImID;           // �������� "������������� ��� ���������"
var vsMC_ID;             // �������� "�������������"
var vsMC_Kind;           // �������� "�������������� ��"
var vsMC_Massa;          // �������� "�����"
var vsMC_Name;           // �������� "������������"
var vsMC_BarKod;         // �������� "�������������� �����"
var vsMC_Obozn;          // �������� "���"
var vsMC_PrMat;          // �������� "������� ���������"
var vsMC_cEd;            // �������� "������ �� ������� ������� ���������"
var vsMC_RemMC;          // �������� "����������"
var vsMC_TNVED;          // �������� "��� �����"
var vsMC_VersionNmb;     // �������� �������� �������� "����� ������" ��� ��
var vsMC_InvNmbDoc;      // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsMC_BuildCode;      // �������� �������� �������� "��� ����������" ��� ��
var vsMC_Litera;         // �������� �������� �������� "������" ��� ��

// �������������� ��������
var vsValue_Name;        // �������� "������������"
var vsValue_GOST;        // �������� "����"
var vsValue_Ispolnenie;  // �������� "����������"

  try 
  {
    //
    vsTable_KEY = '';

    //
    vsaValues = new Array(4);
    vsaValues[0] = new Array();
    vsaValues[1] = new Array();
    vsaValues[2] = new Array();
    vsaValues[3] = new Array();

    //
    vsaTableFields = XMLFileIM_GetFields(aoTable, true);

    // ����� "�������������" ����� ��� ������ �����
    for (i = 0; i < vsaTableFields[0].length; i++)
    {
      vsaValues[0][i] = vsaTableFields[1][i];
      vsaValues[1][i] = XMLFileIM_GetParamValueFromArray(asaCatalogFields, 1, 0, vsaTableFields[1][i]);
      vsaValues[2][i] = '';
      vsaValues[3][i] = '';
    } // for (i = 0; i < vsaTableFields[0].length; i++)

    // ���������� ����� �� ������� �������
    voOccurrence = aoTable.selectSingleNode('occurrence[@elementtype = "record"][@ref != ""]/@ref');

    if (voOccurrence != null)
    {
      voRelation = goXMLFileIM.selectSingleNode('/intermech/record[@id = "' + voOccurrence.value +
        '"]/relation/@ref');

      if (voRelation != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.value + '"]');

        if (voForm != null) 
        {
          // ���������� �������� �������� "F_KEY" ��� ������ �������
          voFormAttribute = voForm.selectSingleNode('formattribute[@name = "F_KEY"]/@value');

          if (voFormAttribute != null)
            vsTable_KEY = voFormAttribute.value;

          voFormAttribute = null;

          // ���������� �����
          for (i = 0; i < vsaValues[1].length; i++)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name = "' + vsaValues[1][i] + '"]/@value');

            if (voFormAttribute != null)
              vsaValues[2][i] = voFormAttribute.value;

            voFormAttribute = null;
          } // for (i = 0; i < vsaValues[1].length; i++)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelation != null)

      voRelation = null;
    } // if (voOccurrence != null)

    voOccurrence = null;

    // ������ ����� ����� (F1..) � "�������������" �� "���������"
    for (i = 0; i < vsaValues[0].length; i++)
    {
      vsaValues[1][i] = XMLFileIM_GetParamValueFromArray(vsaTableFields, 1, 0, vsaValues[0][i]);

      // ������ ������� ����������������
      vsaValues[3][i] = XMLFileIM_GetParamValueFromArray(vsaTableFields, 1, 2, vsaValues[0][i]);
    } // for (i = 0; i < vsaValues[0].length; i++)

    //
    voOccurrences = aoTable.selectNodes('occurrence[@elementtype = "row"][@ref != ""]/@ref');
    vliOccurrencesCount = voOccurrences.length;

    // ���� �� ���� ������� �������
    for (j = 0; j < vliOccurrencesCount; j++)
    {
      if (!NextVisual())
        throw new Error(10003, 'USER_ABORT');

      voRelation = goXMLFileIM.selectSingleNode('/intermech/row[@id = "' + voOccurrences.item(j).value + '"]/relation/@ref');

      if (voRelation != null)
      {
        voForm = goXMLFileIM.selectSingleNode('/intermech/form[@id = "' + voRelation.value + '"]');

        if (voForm != null)
        {
          for (i = 0; i < vsaValues[0].length; i++)
          {
            voFormAttribute = voForm.selectSingleNode('formattribute[@name = "' + vsaValues[1][i] + '"]/@value');

            if (voFormAttribute != null)
              vsaValues[2][i] = voFormAttribute.value;

            voFormAttribute = null;
          } // for (i = 0; i < vsaValues[0].length; i++)
        } // if (voForm != null)

        voForm = null;
      } // if (voRelation != null)

      voRelation = null;

      //
      vsaValues = XMLFileIM_CalcValues(vsaValues);

      // ���������� ������� � XML-����
      switch (awCatalogType) 
      {
        // ���������
        case 6:
        {
          // ��������� �������� "�������������"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          //vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // ��������� �������� "������������"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������ �����������');

          if (vsMC_Name < '    ') 
          {
            vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '�����');

            vsValue_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������������');
            vsValue_GOST = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '����');

            if (vsValue_Name > '    ')
              vsMC_Name = vsMC_Name + ' ' + vsValue_Name;

            if (vsValue_GOST > '    ')
              vsMC_Name = vsMC_Name + ' ' + vsValue_GOST;
          } // if (vsMC_Name < '    ')

          // ������ � ������� �������������� ������������
          if (vsMC_Name < '    ')
            continue;

          // ��������� �������� "�������������� �����"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ����');

          // ��������� �������� "���"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������ �����������');

          // ��������� �������� "�������������� ��"
          vsMC_Kind = '0';

          // ��������� �������� "������ �� ��� ��"
          vsMC_cType = '0';

          // ��������� �������� "��� �����"
          vsMC_TNVED = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ���');

          // ��������� �������� "����������"
          vsMC_RemMC = '';

          // ��������� �������� "���� ��������� �����������"
          vsMC_AtlLastDate = '';

          // ��������� �������� "�����"
          vsMC_Massa = '0';

          // ��������� �������� "������� ���������"
          vsMC_PrMat = '0';

          // ��������� �������� "������ �� ������� ������� ���������"
          vsMC_cEd = '0';

          // ��������� �������� �������� �������� "����� ������" ��� ��
          vsMC_VersionNmb = '';

          // ��������� �������� �������� �������� "����������� ����� ���������" ��� ��
          vsMC_InvNmbDoc = '';

          // ��������� �������� �������� �������� "��� ����������" ��� ��
          vsMC_BuildCode = '';

          // ��������� �������� �������� �������� "������" ��� ��
          vsMC_Litera = '';

          // ������������� ������ � ���� ������������
          SetVisualHeader(
            '����������� ������ �������� "' + asCatalogName + '"\n' +
            ' ������: \n' +
            ' ' + vsMC_Name);

          // ���������� � XML-����
          vsMC_ID = GetObjGalID_MC(
            true, 
            vsMC_ID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        }    // case 6:

        // ��������
        case 7:
        {
          // ��������� �������� "������������� ��� ���������"
          vsMC_ImID = vsTable_KEY + '_' + XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'F_KEY');

          // ��������� �������� "�������������"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          //vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // ��������� �������� "������������"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������ ������������');

          if (vsMC_Name < '    ') 
          {
            vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������������');

            vsValue_Ispolnenie = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '����������');

            if (vsValue_Ispolnenie > '    ')
              vsMC_Name = vsMC_Name + ' ' + vsValue_Ispolnenie;
          } // if (vsMC_Name < '    ')

          // ������ � ������� �������������� ������������
          if (vsMC_Name < '    ')
            continue;

          // ��������� �������� "�������������� �����"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ����');

          // ��������� �������� "���"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������ ������������');

          // ��������� �������� "�������������� ��"
          vsMC_Kind = '0';

          // ��������� �������� "������ �� ��� ��"
          vsMC_cType = '0';

          // ��������� �������� "��� �����"
          vsMC_TNVED = '';

          // ��������� �������� "����������"
          vsMC_RemMC = '';

          // ��������� �������� "���� ��������� �����������"
          vsMC_AtlLastDate = '';

          // ��������� �������� "�����"
          vsMC_Massa = '0';

          // ��������� �������� "������� ���������"
          vsMC_PrMat = '0';

          // ��������� �������� "������ �� ������� ������� ���������"
          vsMC_cEd = '0';

          // ��������� �������� �������� �������� "����� ������" ��� ��
          vsMC_VersionNmb = '';

          // ��������� �������� �������� �������� "����������� ����� ���������" ��� ��
          vsMC_InvNmbDoc = '';

          // ��������� �������� �������� �������� "��� ����������" ��� ��
          vsMC_BuildCode = '';

          // ��������� �������� �������� �������� "������" ��� ��
          vsMC_Litera = '';

          // ������������� ������ � ���� ������������
          SetVisualHeader(
            '����������� ������ �������� "' + asCatalogName + '"\n' +
            ' ������: \n' +
            ' ' + vsMC_Name);

          // ���������� � XML-����
          vsMC_ID = GetObjGalID_MC(
            true,
            vsMC_ImID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        } // case 7:

        // �������� ���������
        case 8:
        {
          // ��������� �������� "�������������"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // ��������� �������� "������������"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '�����');

          vsValue_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������������');
          vsValue_GOST = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '����');

          if (vsValue_Name > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_Name;

          if (vsValue_GOST > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_GOST;

          // ������ � ������� �������������� ������������
          if (vsMC_Name < '    ')
            continue;

          // ��������� �������� "�������������� �����"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ����');

          // ��������� �������� "���"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������ �����������');

          // ��������� �������� "�������������� ��"
          vsMC_Kind = '0';

          // ��������� �������� "������ �� ��� ��"
          vsMC_cType = '0';

          // ��������� �������� "��� �����"
          vsMC_TNVED = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ���');

          // ��������� �������� "����������"
          vsMC_RemMC = '';

          // ��������� �������� "���� ��������� �����������"
          vsMC_AtlLastDate = '';

          // ��������� �������� "�����"
          vsMC_Massa = '0';

          // ��������� �������� "������� ���������"
          vsMC_PrMat = '0';

          // ��������� �������� "������ �� ������� ������� ���������"
          vsMC_cEd = '0';

          // ��������� �������� �������� �������� "����� ������" ��� ��
          vsMC_VersionNmb = '';

          // ��������� �������� �������� �������� "����������� ����� ���������" ��� ��
          vsMC_InvNmbDoc = '';

          // ��������� �������� �������� �������� "��� ����������" ��� ��
          vsMC_BuildCode = '';

          // ��������� �������� �������� �������� "������" ��� ��
          vsMC_Litera = '';

          // ������������� ������ � ���� ������������
          SetVisualHeader(
            '����������� ������ �������� "' + asCatalogName + '"\n' +
            ' ������: \n' +
            ' ' + vsMC_Name);

          // ���������� � XML-����
          vsMC_ID = GetObjGalID_MC(
            true,
            vsMC_ID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        }    // case 8:

        // ��������������� ���������
        case 9:
        {
          // ��������� �������� "�������������"
          vsMC_ID = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, 'IMBASE_CODE');
          vsMC_ID = XMLFileIM_GetIMBaseRecKey(vsMC_ID);

          // ��������� �������� "������������"
          vsMC_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '�����');

          vsValue_Name = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������������');
          vsValue_GOST = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '����');

          if (vsValue_Name > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_Name;

          if (vsValue_GOST > '    ')
            vsMC_Name = vsMC_Name + ' ' + vsValue_GOST;

          // ������ � ������� �������������� ������������
          if (vsMC_Name < '    ')
            continue;

          // ��������� �������� "�������������� �����"
          vsMC_BarKod = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ����');

          // ��������� �������� "���"
          vsMC_Obozn = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '������ �����������');

          // ��������� �������� "�������������� ��"
          vsMC_Kind = '0';

          // ��������� �������� "������ �� ��� ��"
          vsMC_cType = '0';

          // ��������� �������� "��� �����"
          vsMC_TNVED = XMLFileIM_GetParamValueFromArray(vsaValues, 0, 2, '��� ���');

          // ��������� �������� "����������"
          vsMC_RemMC = '';

          // ��������� �������� "���� ��������� �����������"
          vsMC_AtlLastDate = '';

          // ��������� �������� "�����"
          vsMC_Massa = '0';

          // ��������� �������� "������� ���������"
          vsMC_PrMat = '0';

          // ��������� �������� "������ �� ������� ������� ���������"
          vsMC_cEd = '0';

          // ��������� �������� �������� �������� "����� ������" ��� ��
          vsMC_VersionNmb = '';

          // ��������� �������� �������� �������� "����������� ����� ���������" ��� ��
          vsMC_InvNmbDoc = '';

          // ��������� �������� �������� �������� "��� ����������" ��� ��
          vsMC_BuildCode = '';

          // ��������� �������� �������� �������� "������" ��� ��
          vsMC_Litera = '';

          // ������������� ������ � ���� ������������
          SetVisualHeader(
            '����������� ������ �������� "' + asCatalogName + '"\n' +
            ' ������: \n' +
            ' ' + vsMC_Name);

          // ���������� � XML-����
          vsMC_ID = GetObjGalID_MC(
            true,
            vsMC_ID,
            vsMC_ID,
            vsMC_Name,
            vsMC_BarKod,
            vsMC_Obozn,
            vsMC_Kind,
            vsMC_cType,
            vsMC_TNVED,
            vsMC_RemMC,
            vsMC_AtlLastDate,
            vsMC_Massa,
            vsMC_PrMat,
            vsMC_cEd,
            vsMC_VersionNmb,
            vsMC_InvNmbDoc,
            vsMC_BuildCode,
            vsMC_Litera);

          break;
        } // case 9:

      } // switch (awCatalogType)
    } // for (j = 0; j < vliOccurrencesCount; j++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTable => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  voFormAttribute = null;
  voForm = null;
  voRelation = null;
  voOccurrence = null;
  voOccurrences = null;
} // function XMLFileIM_ReadTable

//------------------------------------------------------------------------------
// �������� ���� ������������� ������������ ��� �������� �����������
// ���������:
//   aoOper                               - ������� <oper> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPOper_EqNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                         // ���������� �����
var vliEqsCount;               // ���������� ��������� <eq> ��� �������� aoOper
                               // � XML-����� � ������� INTERMECH
var voEqs;                     // ��������� ��������� <eq> ��� �������� aoOper
                               // � XML-����� � ������� INTERMECH

//
var vsMarshSpEqNorm_ID;        // ������������� ��� ����� ������������� ������������ �� ��������
var vsMarshSpEqNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpEqNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpEqNorm_tResource; // ��� ������������ �������
var vsMarshSpEqNorm_cResource; // ������ �� ����������� ������
var vsMarshSpEqNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpEqNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpEqNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpEqNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpEqNorm_Rasx;      // ����� �������
var vsMarshSpEqNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpEqNorm_dNormEd;   // ������� ������������
var vsMarshSpEqNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

  // �������� ������������� ������� aoOper
  if (aoOper == null)
    return;

  try
  {
    //
    voEqs = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "eq"][@ref != ""]/@ref');
  
    vliEqsCount = voEqs.length;
  
    if (vliEqsCount == 0)
    {
      voEqs = null;
      return;
    } // if (vliEqsCount == 0)
  
    // ���� �� ������ ������������� �����������
    for (i = 0; i < vliEqsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpEqNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpEqNorm_tObject   = '11007';                // ��� �������-��������� �����
      vsMarshSpEqNorm_cObject   = asNOpe;                 // ������ �� ������-�������� �����
      vsMarshSpEqNorm_tResource = '47';                   // ��� ������������ �������
      vsMarshSpEqNorm_cResource = '0';                    // ������ �� ����������� ������
      vsMarshSpEqNorm_wProd     = '0';                    // ��� �����/�������� ������
      vsMarshSpEqNorm_Product   = '0';                    // ����� �������������: �����/�����
      vsMarshSpEqNorm_ParGroup  = gliParameter_EqNorm_ID; // ��� ������ ����������
      vsMarshSpEqNorm_NormSort  = '103';                  // ��������� ������ ����������
      vsMarshSpEqNorm_Rasx      = '1';                    // ����� �������
      vsMarshSpEqNorm_cEd       = '0';                    // ������ �� ������� ���������
      vsMarshSpEqNorm_dNormEd   = '1';                    // ������� ������������
      vsMarshSpEqNorm_cNormEd   = '0';                    // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/eq[@id = "' + voEqs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // ���������� �������� "������������� ������������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
      
      if (voFormAttributes.length != 0)
        vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      if (vsMarshSpEqNorm_cResource == '0')
      {
        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          '"]/formattribute[@name = "A138"]/@value');

        if (voFormAttributes.length != 0)
          vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;
      } // if (vsMarshSpEqNorm_cResource == '0')

      // ���������� ������� � ����� "����� ������������� ������������ ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpEqNorm(
        false,
        vsMarshSpEqNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpEqNorm_tObject,
        vsMarshSpEqNorm_cObject,
        vsMarshSpEqNorm_tResource,
        vsMarshSpEqNorm_cResource,
        vsMarshSpEqNorm_wProd,
        vsMarshSpEqNorm_Product,
        vsMarshSpEqNorm_ParGroup,
        vsMarshSpEqNorm_NormSort,
        vsMarshSpEqNorm_Rasx,
        vsMarshSpEqNorm_cEd,
        vsMarshSpEqNorm_dNormEd,
        vsMarshSpEqNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliEqsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_EqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_EqNorm

//------------------------------------------------------------------------------
// �������� �������� ���� ��� �������� �����������
// ���������:
//   aoOper                               - ������� <oper> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPOper_JobNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                          // ���������� �����
var vliWorksCount;              // ���������� ��������� <work> ��� �������� aoOper
                                // � XML-����� � ������� INTERMECH
var voWorks;                    // ��������� ��������� <work> ��� �������� aoOper
                                // � XML-����� � ������� INTERMECH

//
var vsMarshSpJobNorm_ID;        // ������������� ��� ����� ������������� ������������ �� ��������
var vsMarshSpJobNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpJobNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpJobNorm_tResource; // ��� ������������ �������
var vsMarshSpJobNorm_cResource; // ������ �� ����������� ������
var vsMarshSpJobNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpJobNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpJobNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpJobNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpJobNorm_Rasx;      // ����� �������
var vsMarshSpJobNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpJobNorm_dNormEd;   // ������� ������������
var vsMarshSpJobNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

// �������� ���������
var vsProfession_ImID;          // �������� "������������� �� ���������"
var vsProfession_ID;            // �������� "�������������"
var vsProfession_Code;          // �������� "���"
var vsProfession_Name;          // �������� "������������"

  // �������� ������������� ������� aoOper
  if (aoOper == null)
    return;

  try
  {
    //
    voWorks = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "work"][@ref != ""]/@ref');
  
    vliWorksCount = voWorks.length;
  
    if (vliWorksCount == 0)
    {
      voWorks = null;
      return;
    } // if (vliWorksCount == 0)
  
    // ���� �� �������� ������
    for (i = 0; i < vliWorksCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````  
      // ��������� ������������� �������� �������
      vsMarshSpJobNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpJobNorm_tObject   = '11007';                 // ��� �������-��������� �����
      vsMarshSpJobNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
      vsMarshSpJobNorm_tResource = '36';                    // ��� ������������ �������
      vsMarshSpJobNorm_cResource = '0';                     // ������ �� ����������� ������
      vsMarshSpJobNorm_wProd     = '0';                     // ��� �����/�������� ������
      vsMarshSpJobNorm_Product   = '0';                     // ����� �������������: �����/�����
      vsMarshSpJobNorm_ParGroup  = gliParameter_JobNorm_ID; // ��� ������ ����������
      vsMarshSpJobNorm_NormSort  = '102';                   // ��������� ������ ����������
      vsMarshSpJobNorm_Rasx      = '1';                     // ����� �������
      vsMarshSpJobNorm_cEd       = '0';                     // ������ �� ������� ���������
      vsMarshSpJobNorm_dNormEd   = '1';                     // ������� ������������
      vsMarshSpJobNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������

      //````````````````````````````````````````````````````````````````````````  
      // ���������� ������� ��� ���������
      vsProfession_ImID = '0';
      vsProfession_ID   = '0';
      vsProfession_Code = '';
      vsProfession_Name = '';

      voRelations = goXMLFileIM.selectNodes('/intermech/work[@id = "' + voWorks.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');

      // ���������� �������� "������������� ��������� �� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "risp"]/@value');

      if (voFormAttributes.length != 0)
        vsProfession_ImID = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ������������� ����� �������������� ��������� �� ���������
      vsProfession_ID = vsProfession_ImID;

      // ���������� �������� "��� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "���"]/@value');

      if (voFormAttributes.length != 0)
        vsProfession_Code = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "������������ ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "NIsp"]/@value');

      if (voFormAttributes.length != 0)
        vsProfession_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ������������ ��������
      voRelations = null;

      //````````````````````````````````````````````````````````````````````````  
      // ��������� ������ �� ���������
      vsMarshSpJobNorm_cResource = GetObjGalID_Profession(
        true,
        vsProfession_ImID,
        vsProfession_ID,
        vsProfession_Code,
        vsProfession_Name);

      //````````````````````````````````````````````````````````````````````````  
      // ���������� ������� � ����� "�������� ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpJobNorm(
        false,
        vsMarshSpJobNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpJobNorm_tObject,
        vsMarshSpJobNorm_cObject,
        vsMarshSpJobNorm_tResource,
        vsMarshSpJobNorm_cResource,
        vsMarshSpJobNorm_wProd,
        vsMarshSpJobNorm_Product,
        vsMarshSpJobNorm_ParGroup,
        vsMarshSpJobNorm_NormSort,
        vsMarshSpJobNorm_Rasx,
        vsMarshSpJobNorm_cEd,
        vsMarshSpJobNorm_dNormEd,
        vsMarshSpJobNorm_cNormEd);
    } // for (i = 0; i < vliWorksCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_JobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_JobNorm

//------------------------------------------------------------------------------
// �������� ������������ ���� ��� �������� �����������
// ���������:
//   aoOper                               - ������� <oper> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPOper_MatNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                          // ���������� �����
var vliMatsCount;               // ���������� ��������� <mat> ��� �������� aoOper
                                // � XML-����� � ������� INTERMECH
var vliSpecsCount;              // ���������� ��������� <spec> ��� �������� aoOper
                                // � XML-����� � ������� INTERMECH
var voMats;                     // ��������� ��������� <mat> ��� �������� aoOper
                                // � XML-����� � ������� INTERMECH
var voSpecs;                    // ��������� ��������� <spec> ��� �������� aoOper
                                // � XML-����� � ������� INTERMECH

//
var vsMarshSpMatNorm_ID;        // ������������� ��� ����� ������������� ������������ �� ��������
var vsMarshSpMatNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpMatNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpMatNorm_tResource; // ��� ������������ �������
var vsMarshSpMatNorm_cResource; // ������ �� ����������� ������
var vsMarshSpMatNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpMatNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpMatNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpMatNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpMatNorm_Rasx;      // ����� �������
var vsMarshSpMatNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpMatNorm_dNormEd;   // ������� ������������
var vsMarshSpMatNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

  // �������� ������������� ������� aoOper
  if (aoOper == null)
    return;

  try
  {
    //``````````````````````````````````````````````````````````````````````````
    // ���������
  
    //
    voMats = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "mat"][@ref != ""]/@ref');
  
    vliMatsCount = voMats.length;
  
    if (vliMatsCount == 0)
    {
      voMats = null;
      return;
    } // if (vliMatsCount == 0)
  
    // ���� �� ������������ ������
    for (i = 0; i < vliMatsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // ��� �������-��������� �����
      vsMarshSpMatNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
      vsMarshSpMatNorm_tResource = '4';                     // ��� ������������ �������
      vsMarshSpMatNorm_cResource = '0';                     // ������ �� ����������� ������
      vsMarshSpMatNorm_wProd     = '0';                     // ��� �����/�������� ������
      vsMarshSpMatNorm_Product   = '0';                     // ����� �������������: �����/�����
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
      vsMarshSpMatNorm_NormSort  = '101';                   // ��������� ������ ����������
      vsMarshSpMatNorm_Rasx      = '1';                     // ����� �������
      vsMarshSpMatNorm_cEd       = '0';                     // ������ �� ������� ���������
      vsMarshSpMatNorm_dNormEd   = '1';                     // ������� ������������
      vsMarshSpMatNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/mat[@id = "' + voMats.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// ���������� �������� "������������� ���������"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "������������� ���������"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;

      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "%MAT"]/@value');

      if (voFormAttributes.length != 0)
      {
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
        vsMarshSpMatNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpMatNorm_cResource);
      } // if (voFormAttributes.length != 0)
  
      voFormAttributes = null;
  
      // ���������� �������� "���������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� ������� � ����� "������������ ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliMatsCount; i++)
  
    //``````````````````````````````````````````````````````````````````````````
    // ������
  
    //
    voSpecs = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "spec"][@ref != ""]/@ref');
  
    vliSpecsCount = voSpecs.length;
  
    if (vliSpecsCount == 0)
    {
      voSpecs = null;
      return;
    } // if (vliSpecsCount == 0)
  
    // ���� �� ������������ ������
    for (i = 0; i < vliSpecsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // ��� �������-��������� �����
      vsMarshSpMatNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
      vsMarshSpMatNorm_tResource = '4';                     // ��� ������������ �������
      vsMarshSpMatNorm_cResource = '0';                     // ������ �� ����������� ������
      vsMarshSpMatNorm_wProd     = '0';                     // ��� �����/�������� ������
      vsMarshSpMatNorm_Product   = '0';                     // ����� �������������: �����/�����
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
      vsMarshSpMatNorm_NormSort  = '101';                   // ��������� ������ ����������
      vsMarshSpMatNorm_Rasx      = '1';                     // ����� �������
      vsMarshSpMatNorm_cEd       = '0';                     // ������ �� ������� ���������
      vsMarshSpMatNorm_dNormEd   = '1';                     // ������� ������������
      vsMarshSpMatNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/spec[@id = "' + voSpecs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// ���������� �������� "������������� ���������"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "������������� ���������"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ArtN"]/@value');

      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "���������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "PhNm"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� ������� � ����� "������������ ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliSpecsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_MatNorm

//------------------------------------------------------------------------------
// �������� ������������ ����� (��) ��� �������� �����������
// ���������:
//   aoOper                               - ������� <oper> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������
//   aliMC_ID                             - ������������� �����������
//   aliHdrKS_ID                          - ������������� ��������������� ������������

function XMLFileIM_ReadTPOper_MatNorm_BOM(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas,
  asNOpe, aliMC_ID, aliHdrKS_ID)
{

// ��������� ����������
var vsMarshSpMatNorm_ID;        // ������������� ��� ����� ������������� ������������ �� ��������
var vsMarshSpMatNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpMatNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpMatNorm_tResource; // ��� ������������ �������
var vsMarshSpMatNorm_cResource; // ������ �� ����������� ������
var vsMarshSpMatNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpMatNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpMatNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpMatNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpMatNorm_Rasx;      // ����� �������
var vsMarshSpMatNorm_cEd;       // ������ �� ������� ��������
var vsMarshSpMatNorm_dNormEd;   // ������� �����������
var vsMarshSpMatNorm_cNormEd;   // ������ �� ������� ��������� ������� �����������

  // �������� ������������� ������� aoOper
  if (aoOper == null)
    return;

  try
  {
    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');
  
    // ���������� ������������ ����� � XML-����
    vsMarshSpMatNorm_ID = gliGlobID;
    gliGlobID = gliGlobID + 1;
  
    vsMarshSpMatNorm_tObject   = '11007';                 // ��� �������-��������� �����
    vsMarshSpMatNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
    vsMarshSpMatNorm_tResource = '4';                     // ��� ������������ �������
    vsMarshSpMatNorm_cResource = aliMC_ID;                // ������ �� ����������� ������
    vsMarshSpMatNorm_tDoc      = '41';                    // ��� ���������-����� ��� ������������
                                                          //   ������� (��� �� = 41)
    vsMarshSpMatNorm_cDoc      = aliHdrKS_ID;             // ������ �� ��������-����� ��� ������������
                                                          //   �������
    vsMarshSpMatNorm_wProd     = '0';                     // ��� �����/�������� ������
    vsMarshSpMatNorm_Product   = '0';                     // ����� �������������: �����/�����
    vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
    vsMarshSpMatNorm_NormSort  = '101';                   // ��������� ������ ����������
    vsMarshSpMatNorm_Rasx      = '1';                     // ����� �������
    vsMarshSpMatNorm_cEd       = '0';                     // ������ �� ������� ���������
    vsMarshSpMatNorm_dNormEd   = '1';                     // ������� ������������
    vsMarshSpMatNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������
  
    XMLFileGAL_AddMarshSpMatNorm_BOM(
      false,
      vsMarshSpMatNorm_ID,
      aliXMLFileGAL_Node_Clt_MarshSpNormas,
      vsMarshSpMatNorm_tObject,
      vsMarshSpMatNorm_cObject,
      vsMarshSpMatNorm_tResource,
      vsMarshSpMatNorm_cResource,
      vsMarshSpMatNorm_tDoc,
      vsMarshSpMatNorm_cDoc,
      vsMarshSpMatNorm_wProd,
      vsMarshSpMatNorm_Product,
      vsMarshSpMatNorm_ParGroup,
      vsMarshSpMatNorm_NormSort,
      vsMarshSpMatNorm_Rasx,
      vsMarshSpMatNorm_cEd,
      vsMarshSpMatNorm_dNormEd,
      vsMarshSpMatNorm_cNormEd);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_MatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_MatNorm_BOM

//------------------------------------------------------------------------------
// �������� ���������������� ���� ��� �������� �����������
// ���������:
//   aoOper                               - ������� <oper> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPOper_ToolNorm(aoOper, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                           // ���������� �����
var vliToolsCount;               // ���������� ��������� <tool> ��� �������� aoOper
                                 // � XML-����� � ������� INTERMECH
var voTools;                     // ��������� ��������� <tool> ��� �������� aoOper
                                 // � XML-����� � ������� INTERMECH

//
var vsMarshSpToolNorm_ID;        // ������������� ��� ����� ������������� ������������ �� ��������
var vsMarshSpToolNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpToolNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpToolNorm_tResource; // ��� ������������ �������
var vsMarshSpToolNorm_cResource; // ������ �� ����������� ������
var vsMarshSpToolNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpToolNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpToolNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpToolNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpToolNorm_Rasx;      // ����� �������
var vsMarshSpToolNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpToolNorm_dNormEd;   // ������� ������������
var vsMarshSpToolNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

// �������� �����������
var vsMC_AtlLastDate;            // �������� "���� ��������� �����������"
var vsMC_cType;                  // �������� "������ �� ��� ��"
var vsMC_ImID;                   // �������� "������������� ��� ���������"
var vsMC_ID;                     // �������� "�������������"
var vsMC_Kind;                   // �������� "�������������� ��"
var vsMC_Massa;                  // �������� "�����"
var vsMC_Name;                   // �������� "������������"
var vsMC_BarKod;                 // �������� "�������������� �����"
var vsMC_Obozn;                  // �������� "���"
var vsMC_PrMat;                  // �������� "������� ���������"
var vsMC_cEd;                    // �������� "������ �� ������� ������� ���������"
var vsMC_RemMC;                  // �������� "����������"
var vsMC_TNVED;                  // �������� "��� �����"
var vsMC_VersionNmb;             // �������� �������� �������� "����� ������" ��� ��
var vsMC_InvNmbDoc;              // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsMC_BuildCode;              // �������� �������� �������� "��� ����������" ��� ��
var vsMC_Litera;                 // �������� �������� �������� "������" ��� ��

  // �������� ������������� ������� aoOper
  if (aoOper == null)
    return;

  try
  {
    //
    voTools = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "tool"][@ref != ""]/@ref');
  
    vliToolsCount = voTools.length;
  
    if (vliToolsCount == 0)
    {
      voTools = null;
      return;
    } // if (vliToolsCount == 0)
  
    // ���� �� ��������
    for (i = 0; i < vliToolsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````
      // ��������� ������������� �������� �������
      vsMarshSpToolNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpToolNorm_tObject   = '11007';                   // ��� �������-��������� �����
      vsMarshSpToolNorm_cObject   = asNOpe;                    // ������ �� ������-�������� �����
      vsMarshSpToolNorm_tResource = '4';                       // ��� ������������ �������
      vsMarshSpToolNorm_cResource = '0';                       // ������ �� ����������� ������
      vsMarshSpToolNorm_wProd     = '0';                       // ��� �����/�������� ������
      vsMarshSpToolNorm_Product   = '0';                       // ����� �������������: �����/�����
      vsMarshSpToolNorm_ParGroup  = gliParameter_ToolsNorm_ID; // ��� ������ ����������
      vsMarshSpToolNorm_NormSort  = '104';                     // ��������� ������ ����������
      vsMarshSpToolNorm_Rasx      = '1';                       // ����� �������
      vsMarshSpToolNorm_cEd       = '0';                       // ������ �� ������� ���������
      vsMarshSpToolNorm_dNormEd   = '1';                       // ������� ������������
      vsMarshSpToolNorm_cNormEd   = '0';                       // ������ �� ������� ��������� ������� ������������

      voRelations = goXMLFileIM.selectNodes('/intermech/tool[@id = "' + voTools.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0)
      {
        vsMarshSpToolNorm_cResource = voFormAttributes.item(0).nodeValue;
        //vsMarshSpToolNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpToolNorm_cResource);
      } // if (voFormAttributes.length != 0)
  
      voFormAttributes = null;
  
      // ���������� �������� "���������� ��������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      //````````````````````````````````````````````````````````````````````````
      // ��������� ������� ��� ��, ��������������� ��������

      // ��������� �������� ������� �� ���������
      vsMC_ImID        = '0';
      vsMC_ID          = '0';
      vsMC_Name        = '';
      vsMC_BarKod      = '';
      vsMC_Obozn       = '';
      vsMC_Kind        = '1';
      vsMC_cType       = '0';
      vsMC_TNVED       = '';
      vsMC_RemMC       = '';
      vsMC_AtlLastDate = '';
      vsMC_Massa       = '0';
      vsMC_PrMat       = '1';
      vsMC_cEd         = '0';
      vsMC_VersionNmb  = '';
      vsMC_InvNmbDoc   = '';
      vsMC_BuildCode   = '';
      vsMC_Litera      = '';

      // vsMC_ImID
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "TypR"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = vsMC_ImID + '_' + voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_ID
      vsMC_ID = vsMC_ImID;

      // vsMC_Name
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "���"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_BarKod
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "�_��"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BarKod = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Obozn
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�_��"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Obozn = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_Kind
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Kind = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cType
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cType = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_TNVED
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_TNVED = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_RemMC
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�_��"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_RemMC = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_AtlLastDate
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_AtlLastDate = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Massa
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Massa = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_PrMat
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_PrMat = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cEd
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cEd = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_VersionNmb
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_VersionNmb = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_InvNmbDoc
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_InvNmbDoc = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_BuildCode
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BuildCode = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Litera
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Litera = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // ������������ ��������
      voRelations = null;

      //````````````````````````````````````````````````````````````````````````
      // ��������� ������ �� ��������
      vsMarshSpToolNorm_cResource = GetObjGalID_MC(
        true,
        vsMC_ImID,
        vsMC_ID,
        vsMC_Name,
        vsMC_BarKod,
        vsMC_Obozn,
        vsMC_Kind,
        vsMC_cType,
        vsMC_TNVED,
        vsMC_RemMC,
        vsMC_AtlLastDate,
        vsMC_Massa,
        vsMC_PrMat,
        vsMC_cEd,
        vsMC_VersionNmb,
        vsMC_InvNmbDoc,
        vsMC_BuildCode,
        vsMC_Litera);

      //````````````````````````````````````````````````````````````````````````
      // ���������� ������� � ����� "������������ ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpToolNorm(
        false,
        vsMarshSpToolNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpToolNorm_tObject,
        vsMarshSpToolNorm_cObject,
        vsMarshSpToolNorm_tResource,
        vsMarshSpToolNorm_cResource,
        vsMarshSpToolNorm_wProd,
        vsMarshSpToolNorm_Product,
        vsMarshSpToolNorm_ParGroup,
        vsMarshSpToolNorm_NormSort,
        vsMarshSpToolNorm_Rasx,
        vsMarshSpToolNorm_cEd,
        vsMarshSpToolNorm_dNormEd,
        vsMarshSpToolNorm_cNormEd);
    } // for (i = 0; i < vliToolsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOper_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPOper_ToolNorm

//------------------------------------------------------------------------------
// �������� �������� ����������� � XML-���� � ������� ���������-ERP
// ���������:
//   aoTP                           - ������� <tp> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSp - Handle ����-��������� "�������� ��" � XML-����� � ������� ���������-ERP
//   aliMC_ID                       - ������������� �����������
//   aliHdrKS_ID                    - ������������� ��������������� ������������

function XMLFileIM_ReadTPOpers(aoTP, aliXMLFileGAL_Node_Clt_MarshSp, aliMC_ID, aliHdrKS_ID)
{

var i;                // ���������� �����

// �������
var voFormAttributes;   // ������ �� ��������� ��������� <formattribute>
//var voOccurences;       // ������ �� ��������� ��������� <occurence>
var vliOpersCount;    // ���������� ��������� <oper> � XML-����� � ������� INTERMECH
var voOpers;          // ��������� ��������� <oper> � XML-����� � ������� INTERMECH
var voRelations;        // ������ �� ��������� ��������� <relation>
//var voTPOperStep;     // ������ "������� ��� �������� �����������" � TechCardAPI
//var voTPOperSteps;    // ������ "�������� ��� �������� �����������" � TechCardAPI

//
var vliMarsh_Sp_ID;   // ������������� �������/�������� ���������� �����

// �������� �������/�������� ���������� �����
var vsMarshSp_Num;    // ����� �������
var vsMarshSp_wOpe;   // ��� �������� (��� ��������������� �������� = 35)
var vsMarshSp_nOpe;   // ������ �� ��������������� ��������
var vsMarshSp_EdNorm; // ������� ������������ (����������)
var vsMarshSp_cEd;    // ������ �� ������� ��������� ��� ������� ������������
var vsMarshSp_tDep;   // ��� ����������� (��� ������������� = 2)
var vsMarshSp_cDep;   // ������ �� �����������

//
var vbFirstOper;      // ������� ��������� ������ ������
var vliHdrKS_ID;      // ������������� ��������������� �������������

  // �������� ������������� ������� aoTP
  if (aoTP == null)
    return;

  // �������� ������� �������� � ���������
  if (aoTP.length == 0)
    return;

  try
  {
    // ���������� �������� �����������
    voOpers = aoTP.item(0).selectNodes('occurrence[@elementtype = "oper"][@ref != ""]/@ref');
  
    if (voOpers == null)
      return;
  
    vliOpersCount = voOpers.length;
  
    // �������� ������� �������� � �����������
    if (vliOpersCount == 0)
    {
      // �������� �������������� "������"
      if (
        (aliHdrKS_ID != null) &&
        (aliHdrKS_ID != '') &&
        (aliHdrKS_ID != '0'))
      {
        // ����� �������� "������" � �������� "��������"
        //try
        //{
        //  voFolder = goIMBaseAPI_Catalog_TC_OPER.FindFolder('������', 2);
        //}
        //catch(e)
        //{
        //}
  
        // ��������� ������������� �������� ��� ������� �������/�������� ���������� �����
        vsMarshSp_Num    = '001'; // ����� �������
                                  //   (= ������ �������� �����������)
        vsMarshSp_wOpe   = '35';  // ��� ��������
                                  //   (��� ��������������� �������� = 35)
        vsMarshSp_nOpe   = '0';//??????   // ������ �� ��������������� ��������
        vsMarshSp_EdNorm = '1';   // ������� ������������ (����������)
                                  //   (= �������� ������� "������� ������������" ��� ��������
                                  //   �����������)
        vsMarshSp_cEd    = '0';   // ������ �� ������� ��������� ��� ������� ������������
        vsMarshSp_tDep   = '2';   // ��� ��� ������ �� ���-�����������
                                  //   (��� ������������� = 2)
        vsMarshSp_cDep   = '0';   // ������ �� ���-�����������
  
        // �������� �������/�������� ���������� �����
        vliMarshSp_ID = gliGlobID;
        gliGlobID = gliGlobID + 1;
  
        XMLFileGAL_AddMarshSp(
          null,//voOpers,
          false,
          vliMarshSp_ID,
          aliXMLFileGAL_Node_Clt_MarshSp,
          vsMarshSp_Num,
          vsMarshSp_wOpe,
          vsMarshSp_nOpe,
          vsMarshSp_EdNorm,
          vsMarshSp_cEd,
          vsMarshSp_tDep,
          vsMarshSp_cDep,
          aliMC_ID,
          aliHdrKS_ID);
      } // if (...
  
      return;
    } // if (vliOpersCount == 0)
  
    // ���� �� ���� ��������� �����������
    vbFirstOper = true;
  
    for (i = 0; i < vliOpersCount; i++)
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
  
      // ��������� ������������� �������� ��� ������� �������/�������� ���������� �����
      vliMarshSp_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSp_Num    = '00'; // ����� �������
                               //   (= ������ �������� �����������)
      vsMarshSp_wOpe   = '35'; // ��� ��������
                               //   (��� ��������������� �������� = 35)
      vsMarshSp_nOpe   = '0';  // ������ �� ��������������� ��������
                               //   (= ���� (LEVEL) �������� �� �������� IMBase "��������")
      vsMarshSp_EdNorm = '1';  // ������� ������������ (����������)
                               //   (= �������� ������� "������� ������������" ��� ��������
                               //   �����������)
      vsMarshSp_cEd    = '0';  // ������ �� ������� ��������� ��� ������� ������������
      vsMarshSp_tDep   = '2';  // ��� ��� ������ �� ���-�����������
                               //   (��� ������������� = 2)
      vsMarshSp_cDep   = '0';  // ������ �� ���-�����������
   
      // ��������� �������������� �� �����
      voRelations = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + voOpers.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      if (voRelations.length == 0)
      {
        voRelations = null;
        continue;
      } // if (voRelations.length == 0)
  
      // ���������� �������� "����� ��������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "N_��"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_Num = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� �������� "������ �� ��������������� ��������"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "����"]/@value');

      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�_��"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_nOpe = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� �������� "������� ������������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_EdNorm = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� �������� "������ �� ���-�����������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSp_cDep = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ��������� �������� ���� "����� �������"
      if (
        (vsMarshSp_Num == '0') ||
        (vsMarshSp_Num == null))
        vsMarshSp_Num == '1';
  
      // ��������� �������� ���� "������� ������������"
      if ((vsMarshSp_EdNorm == '0') || (vsMarshSp_EdNorm == null))
        vsMarshSp_EdNorm == '01';

      // �������� �������/�������� ���������� �����
      XMLFileGAL_AddMarshSp(
        voOpers.item(i),
        false,
        vliMarshSp_ID,
        aliXMLFileGAL_Node_Clt_MarshSp,
        vsMarshSp_Num,
        vsMarshSp_wOpe,
        vsMarshSp_nOpe,
        vsMarshSp_EdNorm,
        vsMarshSp_cEd,
        vsMarshSp_tDep,
        vsMarshSp_cDep,
        aliMC_ID,
        vliHdrKS_ID);
        
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliTPOpersCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPOpers => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
  
  return;
} // function XMLFileIM_ReadTPOpers

//------------------------------------------------------------------------------
// �������� ���� ������������� ������������ ��� ������������� ��������
// ���������:
//   aoStep                               - ������� <step> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPStep_EqNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                         // ���������� �����
var vliEqsCount;               // ���������� ��������� <eq> ��� �������� aoStep
                               // � XML-����� � ������� INTERMECH
var voEqs;                     // ��������� ��������� <eq> ��� �������� aoStep
                               // � XML-����� � ������� INTERMECH

//
var vsMarshSpEqNorm_ID;        // ������������� ��� ����� ������������� ������������ ��
                               // ������������� ��������
var vsMarshSpEqNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpEqNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpEqNorm_tResource; // ��� ������������ �������
var vsMarshSpEqNorm_cResource; // ������ �� ����������� ������
var vsMarshSpEqNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpEqNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpEqNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpEqNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpEqNorm_Rasx;      // ����� �������
var vsMarshSpEqNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpEqNorm_dNormEd;   // ������� ������������
var vsMarshSpEqNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

  // �������� ������������� ������� aoStep
  if (aoStep == null)
    return;

  try
  {
    //
    voEqs = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "eq"][@ref != ""]/@ref');
  
    vliEqsCount = voEqs.length;
  
    if (vliEqsCount == 0)
    {
      voEqs = null;
      return;
    } // if (vliEqsCount == 0)
  
    // ���� �� ������ ������������� �����������
    for (i = 0; i < vliEqsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpEqNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpEqNorm_tObject   = '11007';                // ��� �������-��������� �����
      vsMarshSpEqNorm_cObject   = asNOpe;                 // ������ �� ������-�������� �����
      vsMarshSpEqNorm_tResource = '47';                   // ��� ������������ �������
      vsMarshSpEqNorm_cResource = '0';                    // ������ �� ����������� ������
      vsMarshSpEqNorm_wProd     = '0';                    // ��� �����/�������� ������
      vsMarshSpEqNorm_Product   = '0';                    // ����� �������������: �����/�����
      vsMarshSpEqNorm_ParGroup  = gliParameter_EqNorm_ID; // ��� ������ ����������
      vsMarshSpEqNorm_NormSort  = '103';                  // ��������� ������ ����������
      vsMarshSpEqNorm_Rasx      = '1';                    // ����� �������
      vsMarshSpEqNorm_cEd       = '0';                    // ������ �� ������� ���������
      vsMarshSpEqNorm_dNormEd   = '1';                    // ������� ������������
      vsMarshSpEqNorm_cNormEd   = '0';                    // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/eq[@id = "' + voEqs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // ���������� �������� "������������� ������������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      if (vsMarshSpEqNorm_cResource == '0') 
      {
        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
          '"]/formattribute[@name = "A138"]/@value');

        if (voFormAttributes.length != 0)
          vsMarshSpEqNorm_cResource = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;
      } // if (vsMarshSpEqNorm_cResource == '0')
  
      // ���������� ������� � ����� "����� ������������� ������������ ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpEqNorm(
        false,
        vsMarshSpEqNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpEqNorm_tObject,
        vsMarshSpEqNorm_cObject,
        vsMarshSpEqNorm_tResource,
        vsMarshSpEqNorm_cResource,
        vsMarshSpEqNorm_wProd,
        vsMarshSpEqNorm_Product,
        vsMarshSpEqNorm_ParGroup,
        vsMarshSpEqNorm_NormSort,
        vsMarshSpEqNorm_Rasx,
        vsMarshSpEqNorm_cEd,
        vsMarshSpEqNorm_dNormEd,
        vsMarshSpEqNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliEqsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_EqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_EqNorm

//------------------------------------------------------------------------------
// �������� �������� ���� ��� ������������� ��������
// ���������:
//   aoStep                               - ������� <step> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPStep_JobNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                          // ���������� �����
var vliWorksCount;              // ���������� ��������� <work> ��� �������� aoStep
                                // � XML-����� � ������� INTERMECH
var voWorks;                    // ��������� ��������� <work> ��� �������� aoStep
                                // � XML-����� � ������� INTERMECH

//
var vsMarshSpJobNorm_ID;        // ������������� ��� ����� ������������� ������������ ��
                                // ������������� ��������
var vsMarshSpJobNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpJobNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpJobNorm_tResource; // ��� ������������ �������
var vsMarshSpJobNorm_cResource; // ������ �� ����������� ������
var vsMarshSpJobNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpJobNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpJobNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpJobNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpJobNorm_Rasx;      // ����� �������
var vsMarshSpJobNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpJobNorm_dNormEd;   // ������� ������������
var vsMarshSpJobNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

  // �������� ������������� ������� aoStep
  if (aoStep == null)
    return;

  try
  {
    //
    voWorks = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "work"][@ref != ""]/@ref');
  
    vliWorksCount = voWorks.length;
  
    if (vliWorksCount == 0)
    {
      voWorks = null;
      return;
    } // if (vliWorksCount == 0)
  
    // ���� �� �������� ������
    for (i = 0; i < vliWorksCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpJobNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpJobNorm_tObject   = '11007';                 // ��� �������-��������� �����
      vsMarshSpJobNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
      vsMarshSpJobNorm_tResource = '36';                    // ��� ������������ �������
      vsMarshSpJobNorm_cResource = '0';                     // ������ �� ����������� ������
      vsMarshSpJobNorm_wProd     = '0';                     // ��� �����/�������� ������
      vsMarshSpJobNorm_Product   = '0';                     // ����� �������������: �����/�����
      vsMarshSpJobNorm_ParGroup  = gliParameter_JobNorm_ID; // ��� ������ ����������
      vsMarshSpJobNorm_NormSort  = '102';                   // ��������� ������ ����������
      vsMarshSpJobNorm_Rasx      = '1';                     // ����� �������
      vsMarshSpJobNorm_cEd       = '0';                     // ������ �� ������� ���������
      vsMarshSpJobNorm_dNormEd   = '1';                     // ������� ������������
      vsMarshSpJobNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/eq[@id = "' + voWorks.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "risp"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpJobNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� ������� � ����� "�������� ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpJobNorm(
        false,
        vsMarshSpJobNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpJobNorm_tObject,
        vsMarshSpJobNorm_cObject,
        vsMarshSpJobNorm_tResource,
        vsMarshSpJobNorm_cResource,
        vsMarshSpJobNorm_wProd,
        vsMarshSpJobNorm_Product,
        vsMarshSpJobNorm_ParGroup,
        vsMarshSpJobNorm_NormSort,
        vsMarshSpJobNorm_Rasx,
        vsMarshSpJobNorm_cEd,
        vsMarshSpJobNorm_dNormEd,
        vsMarshSpJobNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliWorksCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_JobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_JobNorm

//------------------------------------------------------------------------------
// �������� ������������ ���� ��� ������������� ��������
// ���������:
//   aoStep                               - ������� <step> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPStep_MatNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                          // ���������� �����
var vliMatsCount;               // ���������� ��������� <mat> ��� �������� aoStep
                                // � XML-����� � ������� INTERMECH
var vliSpecsCount;              // ���������� ��������� <spec> ��� �������� aoStep
                                // � XML-����� � ������� INTERMECH
var voMats;                     // ��������� ��������� <mat> ��� �������� aoStep
                                // � XML-����� � ������� INTERMECH
var voSpecs;                    // ��������� ��������� <spec> ��� �������� aoStep
                                // � XML-����� � ������� INTERMECH

//
var vsMarshSpMatNorm_ID;        // ������������� ��� ����� ������������� ������������ ��
                                // ������������� ��������
var vsMarshSpMatNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpMatNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpMatNorm_tResource; // ��� ������������ �������
var vsMarshSpMatNorm_cResource; // ������ �� ����������� ������
var vsMarshSpMatNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpMatNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpMatNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpMatNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpMatNorm_Rasx;      // ����� �������
var vsMarshSpMatNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpMatNorm_dNormEd;   // ������� ������������
var vsMarshSpMatNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

  // �������� ������������� ������� aoStep
  if (aoStep == null)
    return;

  try
  {
    //``````````````````````````````````````````````````````````````````````````
    // ���������

    //
    voMats = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "mat"][@ref != ""]/@ref');
  
    vliMatsCount = voMats.length;
  
    if (vliMatsCount == 0)
    {
      voMats = null;
      return;
    } // if (vliMatsCount == 0)
  
    // ���� �� ������������ ������
    for (i = 0; i < vliMatsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // ��� �������-��������� �����
      vsMarshSpMatNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
      vsMarshSpMatNorm_tResource = '4';                     // ��� ������������ �������
      vsMarshSpMatNorm_cResource = '0';                     // ������ �� ����������� ������
      vsMarshSpMatNorm_wProd     = '0';                     // ��� �����/�������� ������
      vsMarshSpMatNorm_Product   = '0';                     // ����� �������������: �����/�����
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
      vsMarshSpMatNorm_NormSort  = '101';                   // ��������� ������ ����������
      vsMarshSpMatNorm_Rasx      = '1';                     // ����� �������
      vsMarshSpMatNorm_cEd       = '0';                     // ������ �� ������� ���������
      vsMarshSpMatNorm_dNormEd   = '1';                     // ������� ������������
      vsMarshSpMatNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/mat[@id = "' + voMats.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// ���������� �������� "������������� ���������"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "������������� ���������"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "%MAT"]/@value');

      if (voFormAttributes.length != 0) 
      {
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
        vsMarshSpMatNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpMatNorm_cResource);
      } // if (voFormAttributes.length != 0)

      voFormAttributes = null;

      // ���������� �������� "���������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
 
      // ���������� ������� � ����� "������������ ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliMatsCount; i++)
  
    //``````````````````````````````````````````````````````````````````````````
    // ������
  
    //
    voSpecs = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "spec"][@ref != ""]/@ref');
  
    vliSpecsCount = voSpecs.length;
  
    if (vliSpecsCount == 0)
    {
      voSpecs = null;
      return;
    } // if (vliSpecsCount == 0)
  
    // ���� �� ������������ ������
    for (i = 0; i < vliSpecsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');
  
      // ��������� ������������� �������� �������
      vsMarshSpMatNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpMatNorm_tObject   = '11007';                 // ��� �������-��������� �����
      vsMarshSpMatNorm_cObject   = asNOpe;                  // ������ �� ������-�������� �����
      vsMarshSpMatNorm_tResource = '4';                     // ��� ������������ �������
      vsMarshSpMatNorm_cResource = '0';                     // ������ �� ����������� ������
      vsMarshSpMatNorm_wProd     = '0';                     // ��� �����/�������� ������
      vsMarshSpMatNorm_Product   = '0';                     // ����� �������������: �����/�����
      vsMarshSpMatNorm_ParGroup  = gliParameter_MatNorm_ID; // ��� ������ ����������
      vsMarshSpMatNorm_NormSort  = '101';                   // ��������� ������ ����������
      vsMarshSpMatNorm_Rasx      = '1';                     // ����� �������
      vsMarshSpMatNorm_cEd       = '0';                     // ������ �� ������� ���������
      vsMarshSpMatNorm_dNormEd   = '1';                     // ������� ������������
      vsMarshSpMatNorm_cNormEd   = '0';                     // ������ �� ������� ��������� ������� ������������
  
      voRelations = goXMLFileIM.selectNodes('/intermech/spec[@id = "' + voSpecs.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      //// ���������� �������� "������������� ���������"
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "������������� ���������"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "ArtN"]/@value');

      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_cResource = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // ���������� �������� "���������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpMatNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� ������� � ����� "������������ ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpMatNorm(
        false,
        vsMarshSpMatNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpMatNorm_tObject,
        vsMarshSpMatNorm_cObject,
        vsMarshSpMatNorm_tResource,
        vsMarshSpMatNorm_cResource,
        vsMarshSpMatNorm_wProd,
        vsMarshSpMatNorm_Product,
        vsMarshSpMatNorm_ParGroup,
        vsMarshSpMatNorm_NormSort,
        vsMarshSpMatNorm_Rasx,
        vsMarshSpMatNorm_cEd,
        vsMarshSpMatNorm_dNormEd,
        vsMarshSpMatNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliSpecsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_MatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_MatNorm

//------------------------------------------------------------------------------
// �������� ���������������� ���� ��� ������������� ��������
// ���������:
//   aoStep                               - ������� <step> � XML-����� � ������� INTERMECH
//   aliXMLFileGAL_Node_Clt_MarshSpNormas - Handle ����-��������� "����� ��� �������� ��"
//   asNOpe                               - ������ �� ��������������� ��������

function XMLFileIM_ReadTPStep_ToolNorm(aoStep, aliXMLFileGAL_Node_Clt_MarshSpNormas, asNOpe)
{

// ��������� ����������
var i;                           // ���������� �����
var vliToolsCount;               // ���������� ��������� <tool> ��� �������� aoStep
                                 // � XML-����� � ������� INTERMECH
var voTools;                     // ��������� ��������� <tool> ��� �������� aoStep
                                 // � XML-����� � ������� INTERMECH

//
var vsMarshSpToolNorm_ID;        // ������������� ��� ����� ������������� ������������ ��
                                 // ������������� ��������
var vsMarshSpToolNorm_tObject;   // ��� �������-��������� �����
var vsMarshSpToolNorm_cObject;   // ������ �� ������-�������� �����
var vsMarshSpToolNorm_tResource; // ��� ������������ �������
var vsMarshSpToolNorm_cResource; // ������ �� ����������� ������
var vsMarshSpToolNorm_wProd;     // ��� �����/�������� ������
var vsMarshSpToolNorm_Product;   // ����� �������������: �����/�����
var vsMarshSpToolNorm_ParGroup;  // ��� ������ ����������
var vsMarshSpToolNorm_NormSort;  // ��������� ������ ����������
var vsMarshSpToolNorm_Rasx;      // ����� �������
var vsMarshSpToolNorm_cEd;       // ������ �� ������� ���������
var vsMarshSpToolNorm_dNormEd;   // ������� ������������
var vsMarshSpToolNorm_cNormEd;   // ������ �� ������� ��������� ������� ������������

// �������� �����������
var vsMC_AtlLastDate;            // �������� "���� ��������� �����������"
var vsMC_cType;                  // �������� "������ �� ��� ��"
var vsMC_ImID;                   // �������� "������������� ��� ���������"
var vsMC_ID;                     // �������� "�������������"
var vsMC_Kind;                   // �������� "�������������� ��"
var vsMC_Massa;                  // �������� "�����"
var vsMC_Name;                   // �������� "������������"
var vsMC_BarKod;                 // �������� "�������������� �����"
var vsMC_Obozn;                  // �������� "���"
var vsMC_PrMat;                  // �������� "������� ���������"
var vsMC_cEd;                    // �������� "������ �� ������� ������� ���������"
var vsMC_RemMC;                  // �������� "����������"
var vsMC_TNVED;                  // �������� "��� �����"
var vsMC_VersionNmb;             // �������� �������� �������� "����� ������" ��� ��
var vsMC_InvNmbDoc;              // �������� �������� �������� "����������� ����� ���������" ��� ��
var vsMC_BuildCode;              // �������� �������� �������� "��� ����������" ��� ��
var vsMC_Litera;                 // �������� �������� �������� "������" ��� ��

  // �������� ������������� ������� aoStep
  if (aoStep == null)
    return;

  try
  {
    //
    voTools = goXMLFileIM.selectNodes('/intermech/step[@id = "' + aoStep.nodeValue +
      '"]/occurrence[@elementtype = "tool"][@ref != ""]/@ref');
  
    vliToolsCount = voTools.length;
  
    if (vliToolsCount == 0)
    {
      voTools = null;
      return;
    } // if (vliToolsCount == 0)
  
    // ���� �� ��������
    for (i = 0; i < vliToolsCount; i++)
    {
      // �������� ���������� �������� ���������� �� ������� �����������
      if (!nNextVisual(0))
        throw new Error(10003, 'USER_ABORT');

      //````````````````````````````````````````````````````````````````````````
      // ��������� ������������� �������� �������
      vsMarshSpToolNorm_ID = gliGlobID;
      gliGlobID = gliGlobID + 1;
  
      vsMarshSpToolNorm_tObject   = '11007';                   // ��� �������-��������� �����
      vsMarshSpToolNorm_cObject   = asNOpe;                    // ������ �� ������-�������� �����
      vsMarshSpToolNorm_tResource = '4';                       // ��� ������������ �������
      vsMarshSpToolNorm_cResource = '0';                       // ������ �� ����������� ������
      vsMarshSpToolNorm_wProd     = '0';                       // ��� �����/�������� ������
      vsMarshSpToolNorm_Product   = '0';                       // ����� �������������: �����/�����
      vsMarshSpToolNorm_ParGroup  = gliParameter_ToolsNorm_ID; // ��� ������ ����������
      vsMarshSpToolNorm_NormSort  = '104';                     // ��������� ������ ����������
      vsMarshSpToolNorm_Rasx      = '1';                       // ����� �������
      vsMarshSpToolNorm_cEd       = '0';                       // ������ �� ������� ���������
      vsMarshSpToolNorm_dNormEd   = '1';                       // ������� ������������
      vsMarshSpToolNorm_cNormEd   = '0';                       // ������ �� ������� ��������� ������� ������������

      voRelations = goXMLFileIM.selectNodes('/intermech/tool[@id = "' + voTools.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_cResource = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;
  
      // ���������� �������� "���������� ��������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');
  
      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_Rasx = voFormAttributes.item(0).nodeValue;
  
      voFormAttributes = null;

      voRelations = goXMLFileIM.selectNodes('/intermech/tool[@id = "' + voTools.item(i).nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');

      // ���������� �������� "������������� ���������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0) {
        vsMarshSpToolNorm_cResource = voFormAttributes.item(0).nodeValue;
        //vsMarshSpToolNorm_cResource = XMLFileIM_GetIMBaseRecKey(vsMarshSpToolNorm_cResource);
      } // if (voFormAttributes.length != 0)

      voFormAttributes = null;

      // ���������� �������� "���������� ��������"
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');

      if (voFormAttributes.length != 0)
        vsMarshSpToolNorm_Rasx = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      //````````````````````````````````````````````````````````````````````````
      // ��������� ������� ��� ��, ��������������� ��������

      // ��������� �������� ������� �� ���������
      vsMC_ImID        = '0';
      vsMC_ID          = '0';
      vsMC_Name        = '';
      vsMC_BarKod      = '';
      vsMC_Obozn       = '';
      vsMC_Kind        = '1';
      vsMC_cType       = '0';
      vsMC_TNVED       = '';
      vsMC_RemMC       = '';
      vsMC_AtlLastDate = '';
      vsMC_Massa       = '0';
      vsMC_PrMat       = '1';
      vsMC_cEd         = '0';
      vsMC_VersionNmb  = '';
      vsMC_InvNmbDoc   = '';
      vsMC_BuildCode   = '';
      vsMC_Litera      = '';

      // vsMC_ImID
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "OsRc"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "TypR"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_ImID = vsMC_ImID + '_' + voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_ID
      vsMC_ID = vsMC_ImID;

      // vsMC_Name
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "���"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Name = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_BarKod
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "�_��"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BarKod = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Obozn
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�_��"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Obozn = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_Kind
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Kind = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cType
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cType = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_TNVED
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_TNVED = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_RemMC
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "�_��"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_RemMC = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_AtlLastDate
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_AtlLastDate = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Massa
      voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "����"]/@value');

      if (voFormAttributes.length != 0)
        vsMC_Massa = voFormAttributes.item(0).nodeValue;

      voFormAttributes = null;

      // vsMC_PrMat
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_PrMat = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_cEd
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_cEd = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_VersionNmb
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_VersionNmb = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_InvNmbDoc
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_InvNmbDoc = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_BuildCode
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_BuildCode = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // vsMC_Litera
      //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
      //  '"]/formattribute[@name = "xxx"]/@value');
      //
      //if (voFormAttributes.length != 0)
      //  vsMC_Litera = voFormAttributes.item(0).nodeValue;
      //
      //voFormAttributes = null;

      // ������������ ��������
      voRelations = null;

      //````````````````````````````````````````````````````````````````````````
      // ��������� ������ �� ��������
      vsMarshSpToolNorm_cResource = GetObjGalID_MC(
        true,
        vsMC_ImID,
        vsMC_ID,
        vsMC_Name,
        vsMC_BarKod,
        vsMC_Obozn,
        vsMC_Kind,
        vsMC_cType,
        vsMC_TNVED,
        vsMC_RemMC,
        vsMC_AtlLastDate,
        vsMC_Massa,
        vsMC_PrMat,
        vsMC_cEd,
        vsMC_VersionNmb,
        vsMC_InvNmbDoc,
        vsMC_BuildCode,
        vsMC_Litera);

      //````````````````````````````````````````````````````````````````````````
      // ���������� ������� � ����� "������������ ����� ��� �������� ��"
      // � XML-���� � ������� ���������-ERP
      XMLFileGAL_AddMarshSpToolNorm(
        false,
        vsMarshSpToolNorm_ID,
        aliXMLFileGAL_Node_Clt_MarshSpNormas,
        vsMarshSpToolNorm_tObject,
        vsMarshSpToolNorm_cObject,
        vsMarshSpToolNorm_tResource,
        vsMarshSpToolNorm_cResource,
        vsMarshSpToolNorm_wProd,
        vsMarshSpToolNorm_Product,
        vsMarshSpToolNorm_ParGroup,
        vsMarshSpToolNorm_NormSort,
        vsMarshSpToolNorm_Rasx,
        vsMarshSpToolNorm_cEd,
        vsMarshSpToolNorm_dNormEd,
        vsMarshSpToolNorm_cNormEd);
  
      // ������������ ��������
      voRelations = null;
    } // for (i = 0; i < vliToolsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileIM_ReadTPStep_ToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileIM_ReadTPStep_ToolNorm

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

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('AttrNam', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddAttrNam => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('AttrVal_Tbl' + asCoTable, asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddAttrVal => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddAttrVal

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������� ���������" � XML-���� � ������� ���������-ERP
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
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ED', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddEd

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������ ������������" � XML-���� � ������� ���������-ERP
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
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('EqGroup', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddEqGroup => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
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
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('GrpMC', asID))
      return;

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddGrpMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return;
} // function XMLFileGAL_AddGrpMC

//------------------------------------------------------------------------------
// ���������� ������� � ����� "��������������� ������������" � XML-���� � �������
// ���������-ERP
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
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var i;                                 // ���������� �����
var vliXMLFileGAL_Node_Clt_PSLines;    // Handle ����-��������� "������� ��"
var vliXMLFileGAL_Node_PSLines;        // Handle ����-������� "������� ��"
var vliXMLFileGAL_Node_Clt_PSLines_PV; // Handle ����-��������� "�������� ������� ������� ��"
var vliChildMC_ID;                     // ������������� ��������� �������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Hdr_KS', asID))
      return(0);

  try
  {
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
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'EdNorm'  , '1', '');
  
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
  
      // ���������� �������� ������� ��� ������� ������� ������������
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'lNum', (i + 1) * 10       , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cDet', asaChildObjects[i] , 'MC');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'wDet', '4'                , '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'Kol' , asaChildObjCount[i], '');
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PSLines_PV, 'cEd' , asaChildObjRefMU[i], 'OtpEd');
    } // for (i = 0; i < asaChildObjects.length; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddHdrKS => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddHdrKS

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������������ ��������� ������ "������������ ���������""
// � XML-���� � ������� ���������-ERP
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
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KatAbbr', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddKatAbbr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddKatAbbr

//------------------------------------------------------------------------------
// ���������� ���������� ����� � XML-���� � ������� ���������-ERP
// ���������:
//   aoTP          - ������� <tp> � XML-����� � ������� "����������" � TechCardAPI
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
//   asMinVol      - ����������� ������ ������ ��� ������������
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

function XMLFileGAL_AddKatMarsh(aoTP, abCheckExists, asID,
  asShifr, asName, asTObject, asCObject, asProduct,
  asEdNorm, asCEd, asMinVol, asCheckers_1, asAddedSign_1, asCheckDt_1,
  asCheckers_2, asAddedSign_2, asCheckDt_2, asCheckers_3, asAddedSign_3, asCheckDt_3,
  asParGroup, asCNormGroup, aliHdrKS_ID)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Clt_MarshSp;    // Handle ����-��������� "�������/�������� ���������� �����"

  // �������� ������������� ������� aoTechProcess
  if (aoTP == null)
    return(0);

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KatMarsh', asID))
      return(0);

  try
  {
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
    XMLFileIM_ReadTPOpers(aoTP, vliXMLFileGAL_Node_Clt_MarshSp, asCObject, aliHdrKS_ID);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddKatMarsh => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddKatMarsh

//------------------------------------------------------------------------------
// ���������� ������� � ����� "��� �����" � XML-���� � ������� ���������-ERP
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
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('KaWork', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddKaWork => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddKaWork

//------------------------------------------------------------------------------
// ���������� �������/�������� ���������� ����� � XML-���� � ������� ���������-ERP
// ���������:
//   aoOper                         - ������� <oper> � XML-����� � ������� INTERMECH
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
//   asCDep                         - ������ �� �����������
//   aliMC_ID                       - ������������� �����������
//   aliHdrKS_ID                    - ������������� ��������������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSp(aoOper, abCheckExists, asID, aliXMLFileGAL_Node_Clt_MarshSp,
  asNum, asWOpe, asNOpe, asEdNorm, asCEd, asTDep, asCDep, aliMC_ID, aliHdrKS_ID)
{

// ��������� ����������
var i;                                      // ���������� �����
//
var voRelations;                            // ������ �� ��������� ��������� <relation>
//
var vliXMLFileGAL_Node_Object;              // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues;      // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Clt_ParamVolMarshSp; // Handle ����-��������� "�������� ���������� ��������"
var vliXMLFileGAL_Node_Clt_Normas;          // Handle ����-��������� "����� �� ��������"
//
var vliStepsCount;                          // ���������� ��������� <oper> � XML-����� � ������� INTERMECH
var voSteps;                                // ��������� ��������� <oper> � XML-����� � ������� INTERMECH
//
var vliParamVol_ID;                         // ������������� �������� ���������
var vsParamName;                            // ������������ ���������
var vsCParams;                              // ������ �� �������� ������ "������������ ���������"
var vsValue;                                // �������� ���������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Marsh_Sp', asID))
      return(0);

  try
  {
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
    if (aoOper != null)
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

      // ��������� �������������� �� �����
      voRelations = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
        '"]/relation[@elementtype = "form"][@ref != ""]/@ref');
  
      if (voRelations.length == 0)
        voRelations = null;

      if (voRelations != null) 
      {
        // ����� ��������� ������� �� �������� (��)
        vsParamName = '����� ��������� ������� �� ��������';
        vsCParams = gliOperParam_tmOpMash_ID;
        vsValue = '';

        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��"]/@value');

        if (voFormAttributes.length != 0)
          vsValue = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;

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
        vsValue = '';

        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "��"]/@value');

        if (voFormAttributes.length != 0)
          vsValue = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;

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
        //vsValue = '';
        //
        //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        //  '"]/formattribute[@name = "����"]/@value');
        //
        //if (voFormAttributes.length != 0)
        //  vsValue = voFormAttributes.item(0).nodeValue;
        //
        //voFormAttributes = null;
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
        //vsValue = '';
        //
        //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        //  '"]/formattribute[@name = "����"]/@value');
        //
        //if (voFormAttributes.length != 0)
        //  vsValue = voFormAttributes.item(0).nodeValue;
        //
        //voFormAttributes = null;
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
        vsValue = '';

        voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        '"]/formattribute[@name = "���"]/@value');

        if (voFormAttributes.length != 0)
          vsValue = voFormAttributes.item(0).nodeValue;

        voFormAttributes = null;

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
        //vsValue = '';
        //
        //voFormAttributes = goXMLFileIM.selectNodes('/intermech/form[@id = "' + voRelations.item(0).nodeValue +
        //  '"]/formattribute[@name = "���"]/@value');
        //
        //if (voFormAttributes.length != 0)
        //  vsValue = voFormAttributes.item(0).nodeValue;
        //
        //voFormAttributes = null;
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

        // ������������ ��������
        voRelations = null;
      } // if (voRelations != 0)
    } // if (aoOper != null)
  
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
      XMLFileIM_ReadTPOper_MatNorm_BOM(
        aoOper,
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe,
        aliMC_ID,
        aliHdrKS_ID);
    
    // �������� ������������� ������� aoOper
    if (aoOper == null)
      return(0);
    
    // �������� ������������ ���� ��� ��������
    XMLFileIM_ReadTPOper_MatNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
  
    // �������� ���������������� ���� ��� ��������
    XMLFileIM_ReadTPOper_ToolNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
  
    // �������� �������� ���� ��� ��������
    XMLFileIM_ReadTPOper_JobNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
    
    // �������� ���� ������������� ������������ ��� ��������
    XMLFileIM_ReadTPOper_EqNorm(
      aoOper,
      vliXMLFileGAL_Node_Clt_Normas,
      asNOpe);
  
    // ���������� ������������ ���������
    voSteps = goXMLFileIM.selectNodes('/intermech/oper[@id = "' + aoOper.nodeValue +
      '"]/occurrence[@elementtype = "step"][@ref != ""]/@ref');

    vliStepsCount = voSteps.length;

    if (vliStepsCount == 0) 
    {
      voSteps = null;
      return;
    } // if (vliStepsCount == 0)
    
    // ���� �� ������������ ���������
    for(i = 0; i < vliStepsCount; i++)
    {
      // �������� ������������ ���� ��� ������������� ��������
      XMLFileIM_ReadTPStep_MatNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);

      // �������� ���������������� ���� ��� ������������� ��������
      XMLFileIM_ReadTPStep_ToolNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);

      // �������� �������� ���� ��� ������������� ��������
      XMLFileIM_ReadTPStep_JobNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);

      // �������� ���� ������������� ������������ ��� ������������� ��������
      XMLFileIM_ReadTPStep_EqNorm(
        voSteps.item(i),
        vliXMLFileGAL_Node_Clt_Normas,
        asNOpe);
    } // for(i = 0; i < vliStepsCount; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - ������ �� ������� ���������
//   asDNormEd                            - ������� ������������
//   asCNormEd                            - ������ �� ������� ��������� ������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpEqNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpEqNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - ������ �� ������� ���������
//   asDNormEd                            - ������� ������������
//   asCNormEd                            - ������ �� ������� ��������� ������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpJobNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpJobNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - ������ �� ������� ���������
//   asDNormEd                            - ������� ������������
//   asCNormEd                            - ������ �� ������� ��������� ������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpMatNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpMatNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - ������ �� ������� ���������
//   asDNormEd                            - ������� ������������
//   asCNormEd                            - ������ �� ������� ��������� ������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpMatNorm_BOM(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asTDoc, asCDoc, asWProd, asProduct,
  asParGroup, asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpMatNorm_BOM => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                                - ������ �� ������� ���������
//   asDNormEd                            - ������� ������������
//   asCNormEd                            - ������ �� ������� ��������� ������� ������������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddMarshSpToolNorm(abCheckExists, asID, aliXMLFileGAL_Node_Clt_NormasMarshSp,
  asTObject, asCObject, asTResource, asCResource, asWProd, asProduct, asParGroup,
  asNormSort, asRasx, asCEd, asDNormEd, asCNormEd)
{

// ��������� ����������
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Normas_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMarshSpToolNorm => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
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
//   asCEd                - ������ �� ������� ������� ���������
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

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MC', asID))
      return(0);

  try
  {
    vsKind = asKind;
    
    if (vsKind == '')
      vsKind = '1';
  
    vsGrpMC = '0';
  
    // ��������� ������� �� � ����������� �� ����
    switch (asCType)
    {
      // ������������
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
      XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'BarKod'    , vsBarKod     , '');
  
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
        vsAttrVal_CAttrNam = gsAttrNam_MC_BuildCode_ID;
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
  
    // ���������� ��������� ������� ���������
    for (i = 0; i < gliObjCount_Ed; i++)
    {
      if (gsaFieldValue_Ed_ID[i] == asCEd)
      {
        vsOtpEd_ID = gliGlobID;
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
    } // for (i = 0; i < gliObjCount_Ed; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddMC

//------------------------------------------------------------------------------
// ���������� ������� � ����� "��������������� ��������" � XML-���� � ������� ���������-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('MnfOper', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddMnfOper => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddMnfOper

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������� ������������" � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asName        - ������������
//   asInNum       - ����������� �����
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddObjRem(abCheckExists, asID, asName, asInNum)
{

// ��������� ����������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ObjRem', asID))
      return(0);

  try
  {
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
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'Name' , asName , '');
    XMLFileGAL_AddTag_PropValue(vliXMLFileGAL_Node_Clt_PropValues, 'InNum', asInNum, '');
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddObjRem => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddObjRem

//------------------------------------------------------------------------------
// ���������� ������� � ����� "��������� ������� ���������" � XML-���� � ������� ���������-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('OtpEd', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddOtpEd => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddOtpEd

//------------------------------------------------------------------------------
// ���������� ������� � ����� "��������� ������ "������������ ���������"" � XML-����
// � ������� ���������-ERP
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
var vliPListTbl_ID;                        // ������������� �������� ������ ��������
var vliXMLFileGAL_Node_Clt_ParamsPListTbl; // Handle ����-��������� "�������� ������ ��������"
var vliXMLFileGAL_Node_Clt_PropValues;     // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;             // Handle ����-�������
var vrdEvent;                              // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Params', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddParameter => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_ParamsPListTbl = null;
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
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

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('ParamVol_MarshSp', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddParamVolMarshSp => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return(1);
} // function XMLFileGAL_AddParamVolMarshSp

//------------------------------------------------------------------------------
// ���������� ������� � ����� "���������" � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists - ������� �������� ������������� �������
//   asID          - �������������
//   asFIO         - ��� ����������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddPerson(abCheckExists, asID, asFIO)
{

// ��������� ����������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Person', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddPerson => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddPerson

//------------------------------------------------------------------------------
// ���������� ������� � ����� "������� ������ �������� ��� ��������� ������ "������������ ���������""
// � XML-���� � ������� ���������-ERP
// ���������:
//   abCheckExists                    - ������� �������� ������������� �������
//   asID                             - �������������
//   aliXMLFileGAL_Node_Clt_ParamsPListTbl - Handle ����-��������� "�������� ������ ��������"
//   asNumber                         - �������� �������� �������� � ������
//                                        �������� ���������
//   asName                           - ������������ �������� � ������ ��������
//                                        ���������
// ���������:
//   0 - ������ �� ����������, 1 - ������ ��������

function XMLFileGAL_AddPListTbl(abCheckExists, asID, aliXMLFileGAL_Node_Clt_ParamsPListTbl,
  asNumber, asName)
{

// ��������� ����������
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Params_PListTbl', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddPListTbl => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddPListTbl

//------------------------------------------------------------------------------
// ���������� ������� � ����� "�������������" � XML-���� � ������� ���������-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������
var vsName;                            // ������������ ������������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Podr', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
} // function XMLFileGAL_AddPodr

//------------------------------------------------------------------------------
// ���������� ������� � ����� "���������" � XML-���� � ������� ���������-ERP
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('Profession', asID))
      return(0);

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddProfession => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return(1);
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
var vrdEvent;   // ��������� � ����������� �� �������������� ��������

  try
  {
    vliNode    = goXMLFileGAL.createElement('Collection');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'caption', asCaption);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'child_tags', asChildTags);

    vliNode = null;

    return(vliNodeAdd);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTag_Collection => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliNode = null;
  vliNodeAdd = null;

  //
  return(null);
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
var vrdEvent;   // ��������� � ����������� �� �������������� ��������

  try
  {
    vliNode    = goXMLFileGAL.createElement('Object');
    vliNodeAdd = aliParentNode.appendChild(vliNode);

    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'name', asName);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'class_id', asClassId);
    XMLFileGAL_AddTagAttribute(vliNodeAdd, 'id', asId);

    vliNode = null;

    return(vliNodeAdd);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTag_Object => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliNode = null;
  vliNodeAdd = null;

  //
  return(null);
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTag_PropValue => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliNode = null;
  vliNodeAdd = null;

  //
  return(null);
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
var vliAttr;  // Handle ������������ �������� � DOM-���������
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    vliAttr = goXMLFileGAL.createAttribute(asName);
    vliAttr.value = asValue;
    aliNode.attributes.setNamedItem(vliAttr);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTagAttribute => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliAttr = null;

  //
  return;
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
var vliXMLFileGAL_Node_Clt_PropValues; // Handle ����-��������� "�������� �������"
var vliXMLFileGAL_Node_Object;         // Handle ����-�������
var vrdEvent;                          // ��������� � ����������� �� �������������� ��������

  // �������� ������������� �������
  if (abCheckExists)
    if (XMLFileGAL_CheckExistsObj('TypeMC', asID))
      return;

  try
  {
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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_AddTypeMC => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliXMLFileGAL_Node_Clt_PropValues = null;
  vliXMLFileGAL_Node_Object = null;

  //
  return;
} // function XMLFileGAL_AddTypeMC

//------------------------------------------------------------------------------
// �������� ������������� ������� � XML-����� � ������� ���������-ERP
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
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  vbResult = false;

  try
  {
    vliNodes = goXMLFileGAL.selectNodes("//Object[@class_id = '" + asClassName + "'][@id = '" +
      asObjId + "']/@name");

    vbResult = (vliNodes.length > 0);
    vliNodes = null;
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_CheckExistsObj => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  vliNodes = null;

  //
  return(vbResult);
} // function XMLFileGAL_CheckExistsObj

//------------------------------------------------------------------------------
// ��������������� ���������� DOM-��������� (XML-����� � ������� ��������-ERP)
// ��� �������� ������

function XMLFileGAL_Prepare()
{

// ��������� ����������
var vliProcessingInstruction; // Handle ����������� ����������� ���������� � DOM-���������
var vliComment;               // Handle ������������ ����������� � DOM-���������
var vliNode;                  // Handle ������������ ���� � DOM-���������
var vliNodeAdd;               // Handle ���������� ���� � DOM-��������� ����� ������������
var vliDataRoot;              // Handle ��������� ���� <Data_Root> � DOM-���������
var vliData;                  // Handle ���� <Data> � DOM-���������
var vrdEvent;                 // ��������� � ����������� �� �������������� ��������
//
var vliParameter_ID;          // ������������� ��������� ������ "������������ ���������"
var vsParamCategory;          // ��������� ���������
var vsParamCode;              // ������ �� ������������ ���������
var vsParamCRole;             // ������ �� ���� �������� ��� �������� ���������
var vsParamDefValue;          // �������� ��������� �� ���������
var vsParamIsGroup;           // ������� ������
var vsParamName;              // ������������ ���������
var vsParamNumber;            // ����� ��������� � ������ �� �������
var vsParamOwner;             // ������ �� ������������ ��������
var vsParamShowPar;           // ���������� ������ ����� ������� (��� ������� �����)
var vsParamWType;             // ��� ��������� (�����, �������, ������ � �.�.)

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
      '���� ������� ����� ����������� XML-����� INTERMECH � XML-���� ���������-ERP');

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

    //````````````````````````````````````````````````````````````````````````````
    // ������������ ������� ���������

    // �������� ���������� �������� ���������� �� ������� �����������
    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ������������� ��������� ���� ������������
    SetVisualHeader('������������ ������� ��������� \n   \n   \n   ');

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
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_Prepare => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_Prepare

//------------------------------------------------------------------------------
// ��������������� ���������� ������ �������� ������������� ��� �������� � XML-����
// � ������� ���������-ERP

function XMLFileGAL_PrepareForUnloadDataPodr()
{

// ��������� ����������
var i;        // ���������� �����
var j;        // ���������� �����
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    for (i = 0; i < gliObjCount_Podr; i++)
    {
      if (gsaFieldValue_Podr_PrUch[i] == 0)
        continue;

      for (j = 0; j < gliObjCount_Podr; j++)
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
      } // for (j = 0; j < gliObjCount_Podr; j++)
    } // for (i = 0; i < gliObjCount_Podr; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_PrepareForUnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_PrepareForUnloadDataPodr

//------------------------------------------------------------------------------
// ������� �������� ������ � ��������� �� XML-����� � ������� INTERMECH

function XMLFileGAL_UnloadCatalogs()
{

// ��������� ����������
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    //
    XMLFileIM_ReadCatalogs();
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadCatalogs => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadCatalogs

//------------------------------------------------------------------------------
// �������� ������ �������� ������������� � ������� ���������-ERP

function XMLFileGAL_UnloadDataPodr()
{

// ��������� ����������
var i;        // ���������� �����
var j;        // ���������� �����
var vsGalID;  // �� (���������)
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    for (i = 0; i < gliObjCount_Podr; i++)
    {
      // �����/�������� ������������� � XML-�����
      vsGalID = GetObjGalID_Podr(
        false,
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_ID[i],
        gsaFieldValue_Podr_KodASUP[i],
        gsaFieldValue_Podr_Name[i],
        gsaFieldValue_Podr_cPodr[i]);
    } // for (i = 0; i < gliObjCount_Podr; i++)
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadDataPodr => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadDataPodr

//------------------------------------------------------------------------------
// �������� ������ ��������� � XML-���� � ������� ���������-ERP

function XMLFileGAL_UnloadMeasureUnits()
{
  // ������������� �������� ��� ���������� ������� ������ ��������
  //gliObjCount_Ed = 0;
  //gsaFieldValue_Ed_ID[gliObjCount_Ed - 1] = new Array();
  //gsaFieldValue_Ed_Abbr[gliObjCount_Ed - 1] = new Array();
  //gsaFieldValue_Ed_Name[gliObjCount_Ed - 1] = new Array();
} // function XMLFileGAL_UnloadMeasureUnits

//------------------------------------------------------------------------------
// �������� ����� ������������������ �������� � XML-���� � ������� ���������-ERP

function XMLFileGAL_UnloadObjTypes()
{

// ��������� ����������
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    // ������������
    XMLFileGAL_AddTypeMC(
      false,
      '1',
      '1',
      '������������',
      1,
      1);

    // ���������
    XMLFileGAL_AddTypeMC(
      false,
      '2',
      '2',
      '���������',
      1,
      1);

    // ��������� �������
    XMLFileGAL_AddTypeMC(
      false,
      '3',
      '3',
      '��������� �������',
      1,
      1);

    // ������
    XMLFileGAL_AddTypeMC(
      false,
      '4',
      '4',
      '������',
      1,
      1);

    // ����������� ������
    XMLFileGAL_AddTypeMC(
      false,
      '5',
      '5',
      '����������� �������',
      0,
      1);

    // ������ ������
    XMLFileGAL_AddTypeMC(
      false,
      '6',
      '6',
      '������������� �������',
      0,
      1);

    // ���������
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

    // ���������
    XMLFileGAL_AddTypeMC(
      false,
      '8',
      '8',
      '���������',
      1,
      1);

    // ����������� ������
    XMLFileGAL_AddTypeMC(
      false,
      '9',
      '9',
      '����������� �������',
      1,
      2);

    // �������� �������� (��� �������� IMBase "��������")
    XMLFileGAL_AddTypeMC(
      false,
      '777',
      '777',
      '�������� ��������',
      1,
      2);

    // ���������������
    XMLFileGAL_AddTypeMC(
      false,
      '99999998',
      '99999998',
      '���������������',
      1,
      2);

    // ������
    XMLFileGAL_AddTypeMC(
      false,
      '99999999',
      '99999999',
      '������',
      1,
      1);

    // ��������
    XMLFileGAL_AddTypeMC(
      false,
      '100000001',
      '100000001',
      '�������� ������������ ������������',
      1,
      2);

    // �������
    XMLFileGAL_AddTypeMC(
      false,
      '100000003',
      '100000003',
      '�������',
      1,
      1);
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadObjTypes => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)
} // function XMLFileGAL_UnloadObjTypes

//------------------------------------------------------------------------------
// ������� �������� ������ �� �������� �� XML-����� � ������� INTERMECH

function XMLFileGAL_UnloadProductionData()
{

// ��������� ����������
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    //
    XMLFileIM_ReadProduction();
  } // try

  catch(vrdEvent)
  {
    Message('XMLFileGAL_UnloadProductionData => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  return;
} // function XMLFileGAL_UnloadProductionData

//******************************************************************************
//******************************************************************************
//******************************************************************************
//
// ����������� XML-����� INTERMECH � XML-���� ���������-ERP
//
//******************************************************************************
//******************************************************************************
//******************************************************************************

//------------------------------------------------------------------------------
// ����������� XML-����� INTERMECH � XML-���� ���������-ERP

function ConvertXMLFile()
{

// ��������� ����������
var vrdEvent; // ��������� � ����������� �� �������������� ��������

  try
  {
    // �������� DOM-��������� ��� XML-����� � ������� INTERMECH
    SetVisualHeader('�������� DOM-��������� ��� XML-����� � ������� INTERMECH \n   \n   ');
    goXMLFileIM = new ActiveXObject('MSXML.DOMDocument');

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� DOM-��������� ��� XML-����� � ������� INTERMECH
    SetVisualHeader('��������������� ���������� XML-����� \n   \n   ');
    XMLFileIM_Prepare();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� DOM-��������� ��� XML-����� � ������� ���������-ERP
    SetVisualHeader('�������� DOM-��������� ��� XML-����� � ������� ���������-ERP \n   \n   ');
    goXMLFileGAL = new ActiveXObject('MSXML.DOMDocument');

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ��������������� ���������� DOM-��������� ��� XML-����� � ������� ���������-ERP
    SetVisualHeader('��������������� ���������� XML-����� \n   \n   ');
    XMLFileGAL_Prepare();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // �������� ������ ��������� � XML-���� � ������� ���������-ERP
    XMLFileGAL_UnloadMeasureUnits();

    // ������� ����� ������������������ ��������
    SetVisualHeader('������� ����� ������������������ �������� \n   \n   ');
    XMLFileGAL_UnloadObjTypes();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ����������� ������ �� ���������
    SetVisualHeader('����������� ������ �� ��������� \n   \n   ');
    XMLFileGAL_UnloadCatalogs();
    XMLFileGAL_PrepareForUnloadDataPodr();
    XMLFileGAL_UnloadDataPodr();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ����������� ������ �� ��������
    SetVisualHeader('����������� ������ �� �������� \n   \n   ');
    XMLFileGAL_UnloadProductionData();

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');

    // ���������� ������ � XML-���� � ����� ���������-ERP
    SetVisualHeader('���������� ������ � XML-���� \n   \n   ');
    goXMLFileGAL.save(GetXMLFileGAL());

    if (!nNextVisual(0))
      throw new Error(10003, 'USER_ABORT');
  } // try

  catch(vrdEvent)
  {
    Message('ConvertXMLFile => ' + vrdEvent.message, 0);
  } // catch(vrdEvent)

  // ������������ ��������
  SetVisualHeader('������������ �������� \n   \n   ');

  goXMLFileIM = null;
  goXMLFileGAL = null;
} // function ConvertXMLFile

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
    '����������� XML-����� INTERMECH � XML-���� ���������-ERP  \n' +
    ' \n' +
    ' ',
    50);

  // ������������� ���������� ����������
  gliGlobID = 1;

  //
  gsXMLFileIM = GetXMLFileIM();
  gsXMLFileGAL = GetXMLFileGAL();

  //
  gliProcessCount_Ed = 0;
  gsaProcess_Ed_ImID = new Array();
  gsaProcess_Ed_GalID = new Array();

  gliProcessCount_EqGroup = 0;
  gsaProcess_EqGroup_ImID = new Array();
  gsaProcess_EqGroup_GalID = new Array();

  gliProcessCount_KatMarsh = 0;
  gsaProcess_KatMarsh_ImID = new Array();
  gsaProcess_KatMarsh_GalID = new Array();

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

  // �������� XML-����� � ������� ���������-ERP
  ConvertXMLFile();

  // �������� ���� ������������
  StopVisual('', 0);
} // try

catch(grdEvent)
{
  // �������� ���� ������������
  StopVisual('MAIN => ' + grdEvent.message, vfWait);
} // catch(grdEvent)
