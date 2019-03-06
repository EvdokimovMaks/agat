
#ifndef Diadoc_Const
#define Diadoc_Const

Function  GetFirstObj(iParrentObj: integer, iObj: integer, iStatus: integer, _LastID : string)            : longint; external 'GalDiadocProxy.dll#GetFirstObj';
Function  GetNextObj(iParrentObj: integer, iObj: integer)                                                 : Boolean; external 'GalDiadocProxy.dll#GetNextObj';
Function  sGet_Param(iObj: integer, iPar: integer)                                                        : string;  external 'GalDiadocProxy.dll#sGet_Param';
Function  sLongGetFirst_Param(iObj : integer, iPar : integer)                                             : string;  external 'GalDiadocProxy.dll#sLongGetFirst_Param';
Function  sLongGetNext_Param                                                                              : string;  external 'GalDiadocProxy.dll#sLongGetNext_Param';
Function  iGet_Param(iObj: integer, iPar: integer)                                                        : longint; external 'GalDiadocProxy.dll#iGet_Param';
Function  cGet_ArrayParam(iObj: integer, iPar: integer, iIndex : longint)                                 : char;    external 'GalDiadocProxy.dll#cGet_ArrayParam';
Function  SetCurObj(iObj: integer, _ObjID: string, _ObjID1: string)                                       : boolean; external 'GalDiadocProxy.dll#SetCurObj';
Function  Get_Content(_messageId : string, _entityId : string)                                            : longint; external 'GalDiadocProxy.dll#Get_Content';
Function  GetFirstDocument(_Status : string, _CounterBoxID : string, _TimeStampFrom : string, _TimeStampTo : string
                     , _DateFrom : string, _DateTo : string, _DeptID : string, bExcludeSubDept : boolean) : longint; external 'GalDiadocProxy.dll#GetFirstDocument';
Function  GetNextDocument(_Status : string, _CounterBoxID : string, _TimeStampFrom : string, _TimeStampTo : string
                     , _DateFrom : string, _DateTo : string, _DeptID : string, bExcludeSubDept : boolean) : boolean; external 'GalDiadocProxy.dll#GetNextDocument';
Function  Get_PrintForm(_messageId : string, _entityId : string)                                          : longint; external 'GalDiadocProxy.dll#Get_PrintForm';
Function  DiadocRunFunc(iFunc : integer, _Par1 : string, _Par2 : string, _Par3 : string
                                       , _Par4 : string, _Par5 : string, _Par6 : string)                  : boolean; external 'GalDiadocProxy.dll#DiadocRunFunc';
Function  CreateNewObject(iParrentObj : integer, iObj : integer)                                          : boolean; external 'GalDiadocProxy.dll#CreateNewObject';
Function  SetObj_SParam(iObj : integer, iPar : integer, sParam : string)                                  : boolean; external 'GalDiadocProxy.dll#SetObj_SParam';
Function  SetObj_IParam(iObj : integer, iPar : integer, iParam : integer)                                 : boolean; external 'GalDiadocProxy.dll#SetObj_IParam';
Function  SetAdd_ArrayParam(iObj : integer, iPar : integer, sChar : char)                                 : boolean; external 'GalDiadocProxy.dll#SetAdd_ArrayParam';

const
  ceD_Obj_Zerro                                       = 0;
  ceD_Obj_MyBox                                       = 1;
  ceD_Obj_Organization                                = 2;
  ceD_Obj_Counteragent                                = 3;
  ceD_Obj_Address                                     = 4;
  ceD_Obj_Box                                         = 5;
  ceD_Obj_Document                                    = 6;
  ceD_Obj_BoxEvent                                    = 7;
  ceD_Obj_Department                                  = 8;
  ceD_Obj_OrganizationUserPermissions                 = 9;
  ceD_Obj_PermissionsSelDepartment                    = 10;
  ceD_Obj_Message                                     = 11;
  ceD_Obj_MessagePatch                                = 12;
  ceD_Obj_Entity                                      = 13;
  ceD_Obj_Content                                     = 14;
  ceD_Obj_DraftToMessage                              = 15;
  ceD_Obj_EntityPatch                                 = 16;
  ceD_Obj_ResolutionInfo                              = 17;
  ceD_Obj_ResolutionRequestInfo                       = 18;
  ceD_Obj_ResolutionTarget                            = 19;
  ceD_Obj_ResolutionRequestDenialInfo                 = 20;
  ceD_Obj_InitialDocumentIds                          = 21;
  ceD_Obj_SubordinateDocumentIds                      = 22;
  ceD_Obj_InvoiceMetadata                             = 23;
  ceD_Obj_Torg12Metadata                              = 24;
  ceD_Obj_InvoiceRevisionMetadata                     = 25;
  ceD_Obj_InvoiceCorrectionMetadata                   = 26;
  ceD_Obj_InvoiceCorrectionRevisionMetadata           = 27;
  ceD_Obj_AcceptanceCertificateMetadata               = 28;
  ceD_Obj_ProformaInvoiceMetadata                     = 29;
  ceD_Obj_XmlTorg12Metadata                           = 30;
  ceD_Obj_XmlAcceptanceCertificateMetadata            = 31;
  ceD_Obj_Torg13Metadata                              = 32;
  ceD_Obj_PriceListMetadata                           = 33;
  ceD_Obj_ResolutionStatus                            = 34;
  ceD_Obj_ForwardDocumentEvent                        = 35;
  ceD_Obj_ReconciliationActMetadata                   = 36;
  ceD_Obj_ContractMetadata                            = 37;
  ceD_Obj_SupplementaryAgreementMetadata              = 38;
  ceD_Obj_CustomDataItem                              = 39;
  ceD_Obj_PrintForm                                   = 40;
  ceD_Obj_MessageToPost                               = 41;
  ceD_Obj_XmlDocumentAttachment                       = 42;
  ceD_Obj_SignedContent                               = 43;
  ceD_Obj_MyOrganization                              = 44;
  ceD_Obj_ErrorString                                 = 45;
  ceD_Obj_Certificate                                 = 46;
  ceD_Obj_CertSystemStore                             = 47;
  ceD_Obj_CurVectorChar                               = 48;
  ceD_Obj_MyCertificate                               = 49;
  ceD_Obj_AuthToken                                   = 50;
  ceD_Obj_ErrorCode                                   = 51;
  ceD_Obj_MessagePatchToPost                          = 52;
  ceD_Obj_ReceiptAttachment                           = 53;
  ceD_Obj_RequestedSignatureRejection                 = 54;
  ceD_Obj_Signer                                      = 55;
  ceD_Obj_MyUser                                      = 56;
  ceD_Obj_OrganizationUser                            = 57;
  ceD_Obj_OrganizationUserList                        = 58;
  ceD_Obj_DocumentId                                  = 59;
  ceD_Obj_UniversalTransferDocumentMetadata           = 60;
  ceD_Obj_UniversalTransferDocumentRevisionMetadata   = 61;
  ceD_Obj_UniversalCorrectionDocumentMetadata         = 62;
  ceD_Obj_UniversalCorrectionDocumentRevisionMetadata = 63;
  ceD_Obj_BasicDocumentAttachment                     = 64;
  ceD_Obj_NonformalizedAttachment                     = 65;
  ceD_Obj_DocumentSignature                           = 66;
  ceD_Obj_RevocationRequestAttachment                 = 67;
  ceD_Obj_XmlSignatureRejectionAttachment             = 68;
  ceD_Obj_ReconciliationActAttachment                 = 69;
  ceD_Obj_RecipientTitleAttachment                    = 70;

  ceD_Funcs_GetOrganizationByInn              = 1;
  ceD_Funcs_PostCurDiadocMessage              = 2;
  ceD_Funcs_GetOrganizationById               = 3;
  ceD_Funcs_ShowCertificateUI                 = 4;
  ceD_Funcs_InitDiadocAPIForCert              = 5;
  ceD_Funcs_AuthenticateByPassword            = 6;
  ceD_Funcs_AuthenticateByCertificate         = 7;
  ceD_Funcs_Disconnect                        = 8;
  ceD_Funcs_ClearLastError                    = 9;
  ceD_Funcs_SignCurContent                    = 10;
  ceD_Funcs_PostCurDiadocMessagePatch         = 11;
  ceD_Funcs_SetSignerCertificate              = 12;
  ceD_Funcs_GenerateInvoiceDocumentReceiptXml = 13;
  ceD_Funcs_SetSignContentFromWebFile         = 14;
  ceD_Funcs_FindMagicSign                     = 15;
  ceD_Funcs_SignCurContentANDFillDocSign      = 16;
  ceD_Funcs_GenerateRevocationRequestXml      = 17;
  ceD_Funcs_GenerateSignatureRejectionXml     = 18;
  ceD_Funcs_Delete                            = 19;
  ceD_Funcs_RecycleDraft                      = 20;
  ceD_Funcs_MoveDocuments                     = 21;

  ceD_Status_UnknownCounteragentStatus = 0;
  ceD_Status_IsMyCounteragent          = 1;
  ceD_Status_InvitesMe                 = 2;
  ceD_Status_IsInvitedByMe             = 3;
  ceD_Status_RejectsMe                 = 5;
  ceD_Status_IsRejectedByMe            = 6;
  ceD_Status_NotInCounteragentList     = 7;

  ceD_ReqStatus_IsMyCounteragent       = 1;
  ceD_ReqStatus_InvitesMe              = 2;
  ceD_ReqStatus_IsInvitedByMe          = 3;
  ceD_ReqStatus_Rejected               = 4;

  ceD_Org_IsInit                       = 0;
  ceD_Org_OrgId                        = 1;
  ceD_Org_Inn                          = 2;
  ceD_Org_Kpp                          = 3;
  ceD_Org_FullName                     = 4;
  ceD_Org_ShortName                    = 5;
  ceD_Org_Ogrn                         = 8;
  ceD_Org_FnsParticipantId             = 9;
  ceD_Org_FnsRegistrationDate          = 11;
  ceD_Org_IfnsCode                     = 13;
  ceD_Org_isPilot                      = 14;
  ceD_Org_IsActive                     = 15;
  ceD_Org_IsTest                       = 16;
  ceD_Org_IsBranch                     = 17;
  ceD_Org_IsRoaming                    = 18;
  ceD_Org_IsEmployee                   = 19;
  ceD_Org_InvitationCount              = 20;
  ceD_Org_SearchCount                  = 21;
  ceD_Org_Sociability                  = 22;

  ceD_Count_IsInit                     = 0;
  ceD_Count_IndexKey                   = 1;
  ceD_Count_OrgID                      = 2;
  ceD_Count_Status                     = 3;
  ceD_Count_LastEventTimestampTicks    = 4;
  ceD_Count_MessageFromCounteragent    = 6;
  ceD_Count_MessageToCounteragent      = 7;

  ceD_Org_Addr_IsInit                  = 0;
  ceD_Org_Addr_ZipCode                 = 1;
  ceD_Org_Addr_Region                  = 2;
  ceD_Org_Addr_Territory               = 3;
  ceD_Org_Addr_City                    = 4;
  ceD_Org_Addr_Locality                = 5;
  ceD_Org_Addr_Street                  = 6;
  ceD_Org_Addr_Building                = 7;
  ceD_Org_Addr_Block                   = 8;
  ceD_Org_Addr_Apartment               = 9;
  ceD_Org_Addr_ForeignCountry          = 101;
  ceD_Org_Addr_ForeignAddress          = 102;

  ceD_Department_DepartmentId          = 1;
  ceD_Department_ParentDepartmentId    = 2;
  ceD_Department_Name                  = 3;
  ceD_Department_Abbreviation          = 4;
  ceD_Department_KppD                  = 5;

  ceD_OrgUser_Id                         = 1;
  ceD_OrgUser_Name                       = 2;
  ceD_OrgUser_Permissions                = 3;
  ceD_OrgUser_Position                   = 4;

  ceD_MyUser_Id                          = 1;
  ceD_MyUser_LastName                    = 2;
  ceD_MyUser_FirstName                   = 3;
  ceD_MyUser_MiddleName                  = 4;

  ceD_OrgUserPerm_UserDepartmentId       = 1;
  ceD_OrgUserPerm_IsAdministrator        = 2;
  ceD_OrgUserPerm_DocumentAccessLevel    = 3;
  ceD_OrgUserPerm_CanSignDocuments       = 4;
  ceD_OrgUserPerm_CanManageCounteragents = 6;
  ceD_OrgUserPerm_CanAddResolutions      = 7;
  ceD_OrgUserPerm_CanRequestResolutions  = 8;
  ceD_OrgUserPerm_SelectedDepartmentIds  = 9;
  ceD_OrgUserPerm_CanCreateDocuments     = 11;

  ceD_DAL_UnknownDocumentAccessLevel   = -1;
  ceD_DAL_DepartmentOnly               = 0;
  ceD_DAL_DepartmentAndSubdepartments  = 1;
  ceD_DAL_AllDocuments                 = 2;
  ceD_DAL_SelectedDepartments          = 3;

  ceD_Box_BoxId                        = 1;
  ceD_Box_Title                        = 2;
  ceD_Box_OrgId                        = 3;
  ceD_Box_InvoiceFormatVersion         = 4;

  ceD_InvoiceFormatVersion_v5_01       = 1;
  ceD_InvoiceFormatVersion_v5_02       = 2;

  ceD_Doc_IndexKey                             = 1;
  ceD_Doc_MessageId                            = 2;
  ceD_Doc_EntityId                             = 3;
  ceD_Doc_CreationTimestampTicks               = 4;
  ceD_Doc_CounteragentBoxId                    = 5;
  ceD_Doc_DocumentType                         = 6;
  ceD_Doc_FileName                             = 10;
  ceD_Doc_DocumentDate                         = 11;
  ceD_Doc_DocumentNumber                       = 12;
  ceD_Doc_NonformalizedDocMetadata_Status      = 13;
  ceD_Doc_TrustConnectionRequestMD_Status      = 14;
  ceD_Doc_IsDeleted                            = 24;
  ceD_Doc_DepartmentId                         = 25;
  ceD_Doc_IsTest                               = 26;
  ceD_Doc_FromDepartmentId                     = 27;
  ceD_Doc_ToDepartmentId                       = 28;
  ceD_Doc_CustomDocumentId                     = 30;
  ceD_Doc_RevocationStatus                     = 32;
  ceD_Doc_SendTimestampTicks                   = 33;
  ceD_Doc_DeliveryTimestampTicks               = 34;
  ceD_Doc_PriceListAgreementMetadata_Status    = 36;
  ceD_Doc_CertificateRegistryMetadata_Status   = 37;
  ceD_Doc_ServiceDetailsMetadata_Status        = 41;
  ceD_Doc_RoamingNotificationStatus            = 42;
  ceD_Doc_HasCustomPrintForm                   = 43;
  ceD_Doc_PacketId                             = 45;
  ceD_Doc_DocumentDirection                    = 46;
  ceD_Doc_LastModificationTimestampTicks       = 47;
  ceD_Doc_IsEncryptedContent                   = 48;
  ceD_Doc_SenderSignatureStatus                = 49;
  ceD_Doc_IsRead                               = 51;
  ceD_Doc_RoamingNotificationStatusDescription = 52;

  ceD_InitDocumentIds_MessageId                = 1;
  ceD_InitDocumentIds_EntityId                 = 2;

  ceD_SubDocumentIds_MessageId                 = 1;
  ceD_SubDocumentIds_EntityId                  = 2;

  ceD_InvoiceMD_IsInit                         = 0;
  ceD_InvoiceMD_InvoiceStatus                  = 1;
  ceD_InvoiceMD_Total                          = 2;
  ceD_InvoiceMD_Vat                            = 3;
  ceD_InvoiceMD_Currency                       = 4;
  ceD_InvoiceMD_ConfirmationDateTimeTicks      = 5;
  ceD_InvoiceMD_InvoiceAmendmentFlags          = 6;

  ceD_Torg12MD_IsInit                          = 0;
  ceD_Torg12MD_Status                          = 1;
  ceD_Torg12MD_Total                           = 2;
  ceD_Torg12MD_Vat                             = 3;
  ceD_Torg12MD_Grounds                         = 4;
  ceD_Torg12MD_ReceiptStatus                   = 5;

  ceD_InvRevMD_IsInit                          = 0;
  ceD_InvRevMD_Status                          = 1;
  ceD_InvRevMD_OriginalInvoiceNumber           = 2;
  ceD_InvRevMD_OriginalInvoiceDate             = 3;
  ceD_InvRevMD_Total                           = 4;
  ceD_InvRevMD_Vat                             = 5;
  ceD_InvRevMD_Currency                        = 6;
  ceD_InvRevMD_ConfirmationDateTimeTicks       = 7;
  ceD_InvRevMD_InvoiceAmendmentFlags           = 8;

  ceD_InvCorMD_IsInit                          = 0;
  ceD_InvCorMD_Status                          = 1;
  ceD_InvCorMD_OriginalInvoiceNumber           = 2;
  ceD_InvCorMD_OriginalInvoiceDate             = 3;
  ceD_InvCorMD_OriginalInvoiceRevisionNumber   = 4;
  ceD_InvCorMD_OriginalInvoiceRevisionDate     = 5;
  ceD_InvCorMD_TotalInc                        = 6;
  ceD_InvCorMD_TotalDec                        = 7;
  ceD_InvCorMD_VatInc                          = 8;
  ceD_InvCorMD_VatDec                          = 9;
  ceD_InvCorMD_Currency                        = 10;
  ceD_InvCorMD_ConfirmationDateTimeTicks       = 11;
  ceD_InvCorMD_InvoiceAmendmentFlags           = 12;

  ceD_InvCorRevMD_IsInit                          = 0;
  ceD_InvCorRevMD_Status                          = 1;
  ceD_InvCorRevMD_OriginalInvoiceNumber           = 2;
  ceD_InvCorRevMD_OriginalInvoiceDate             = 3;
  ceD_InvCorRevMD_OriginalInvoiceRevisionNumber   = 4;
  ceD_InvCorRevMD_OriginalInvoiceRevisionDate     = 5;
  ceD_InvCorRevMD_OriginalInvoiceCorrectionNumber = 6;
  ceD_InvCorRevMD_OriginalInvoiceCorrectionDate   = 7;
  ceD_InvCorRevMD_TotalInc                        = 8;
  ceD_InvCorRevMD_TotalDec                        = 9;
  ceD_InvCorRevMD_VatInc                          = 10;
  ceD_InvCorRevMD_VatDec                          = 11;
  ceD_InvCorRevMD_Currency                        = 12;
  ceD_InvCorRevMD_ConfirmationDateTimeTicks       = 13;
  ceD_InvCorRevMD_InvoiceAmendmentFlags           = 14;

  ceD_AccCertMD_IsInit                              = 0;
  ceD_AccCertMD_DocumentStatus                      = 1;
  ceD_AccCertMD_Total                               = 2;
  ceD_AccCertMD_Vat                                 = 3;
  ceD_AccCertMD_Grounds                             = 4;
  ceD_AccCertMD_ReceiptStatus                       = 5;

  ceD_ProfInvMD_IsInit                              = 0;
  ceD_ProfInvMD_DocumentStatus                      = 1;
  ceD_ProfInvMD_Total                               = 2;
  ceD_ProfInvMD_Vat                                 = 3;
  ceD_ProfInvMD_Grounds                             = 4;

  ceD_XmlTorg12MD_IsInit                          = 0;
  ceD_XmlTorg12MD_Status                          = 1;
  ceD_XmlTorg12MD_Total                           = 2;
  ceD_XmlTorg12MD_Vat                             = 3;
  ceD_XmlTorg12MD_Grounds                         = 4;
  ceD_XmlTorg12MD_ReceiptStatus                   = 5;

  ceD_XmlAccCertMD_IsInit                           = 0;
  ceD_XmlAccCertMD_Status                           = 1;
  ceD_XmlAccCertMD_Total                            = 2;
  ceD_XmlAccCertMD_Vat                              = 3;
  ceD_XmlAccCertMD_Grounds                          = 4;
  ceD_XmlAccCertMD_ReceiptStatus                    = 5;

  ceD_Torg13MD_IsInit                             = 0;
  ceD_Torg13MD_Status                             = 1;
  ceD_Torg13MD_Total                              = 2;
  ceD_Torg13MD_Vat                                = 3;
  ceD_Torg13MD_Grounds                            = 4;
  ceD_Torg13MD_ReceiptStatus                      = 5;

  ceD_PriceListMD_IsInit                          = 0;
  ceD_PriceListMD_Status                          = 1;
  ceD_PriceListMD_EffectiveDate                   = 2;
  ceD_PriceListMD_ContractDocumentDate            = 3;
  ceD_PriceListMD_ContractDocumentNumber          = 4;

  ceD_ResStat_IsInit                               = 0;
  ceD_ResStat_Type                                 = 1;
  ceD_ResStat_AuthorUserId                         = 3;
  ceD_ResStat_AuthorFIO                            = 4;
  ceD_ResStat_Target_Department                    = 201;
  ceD_ResStat_Target_DepartmentId                  = 202;
  ceD_ResStat_Target_User                          = 203;
  ceD_ResStat_Target_UserId                        = 204;

  ceD_ForwDocEv_Timestamp                          = 1;
  ceD_ForwDocEv_ToBoxId                            = 2;

  ceD_ReconciliationAct_IsInit                     = 0;
  ceD_ReconciliationAct_DocumentStatus             = 1;
  ceD_ReconciliationAct_ReceiptStatus              = 2;

  ceD_ContractMD_IsInit                            = 0;
  ceD_ContractMD_DocumentStatus                    = 1;
  ceD_ContractMD_ContractPrice                     = 2;
  ceD_ContractMD_ContractType                      = 3;
  ceD_ContractMD_ReceiptStatus                     = 4;

  ceD_SupplAgr_IsInit                              = 0;
  ceD_SupplAgr_DocumentStatus                      = 1;
  ceD_SupplAgr_Total                               = 2;
  ceD_SupplAgr_ContractType                        = 3;
  ceD_SupplAgr_ContractNumber                      = 4;
  ceD_SupplAgr_ContractDate                        = 5;
  ceD_SupplAgr_ReceiptStatus                       = 6;

  ceD_UPD_IsInit                                   = 0;
  ceD_UPD_DocumentStatus                           = 1;
  ceD_UPD_Total                                    = 2;
  ceD_UPD_Vat                                      = 3;
  ceD_UPD_Grounds                                  = 4;
  ceD_UPD_DocumentFunction                         = 5;
  ceD_UPD_Currency                                 = 6;
  ceD_UPD_ConfirmationDateTimeTicks                = 8;
  ceD_UPD_InvoiceAmendmentFlags                    = 9;

  ceD_UPD_R_IsInit                                 = 0;
  ceD_UPD_R_DocumentStatus                         = 1;
  ceD_UPD_R_Total                                  = 2;
  ceD_UPD_R_Vat                                    = 3;
  ceD_UPD_R_Grounds                                = 4;
  ceD_UPD_R_DocumentFunction                       = 5;
  ceD_UPD_R_Currency                               = 6;
  ceD_UPD_R_ConfirmationDateTimeTicks              = 7;
  ceD_UPD_R_InvoiceAmendmentFlags                  = 8;
  ceD_UPD_R_OriginalInvoiceNumber                  = 9;
  ceD_UPD_R_OriginalInvoiceDate                    = 10;

  ceD_UPD_C_IsInit                                 = 0;
  ceD_UPD_C_DocumentStatus                         = 1;
  ceD_UPD_C_TotalInc                               = 2;
  ceD_UPD_C_TotalDec                               = 3;
  ceD_UPD_C_VatInc                                 = 4;
  ceD_UPD_C_VatDec                                 = 5;
  ceD_UPD_C_Grounds                                = 6;
  ceD_UPD_C_DocumentFunction                       = 7;
  ceD_UPD_C_Currency                               = 8;
  ceD_UPD_C_ConfirmationDateTimeTicks              = 9;
  ceD_UPD_C_InvoiceAmendmentFlags                  = 10;
  ceD_UPD_C_OriginalInvoiceNumber                  = 11;
  ceD_UPD_C_OriginalInvoiceDate                    = 12;
  ceD_UPD_C_OriginalInvoiceRevisionNumber          = 13;
  ceD_UPD_C_OriginalInvoiceRevisionDate            = 14;

  ceD_UPD_CR_IsInit                                = 0;
  ceD_UPD_CR_DocumentStatus                        = 1;
  ceD_UPD_CR_TotalInc                              = 2;
  ceD_UPD_CR_TotalDec                              = 3;
  ceD_UPD_CR_VatInc                                = 4;
  ceD_UPD_CR_VatDec                                = 5;
  ceD_UPD_CR_Grounds                               = 6;
  ceD_UPD_CR_DocumentFunction                      = 7;
  ceD_UPD_CR_Currency                              = 8;
  ceD_UPD_CR_ConfirmationDateTimeTicks             = 9;
  ceD_UPD_CR_InvoiceAmendmentFlags                 = 10;
  ceD_UPD_CR_OriginalInvoiceNumber                 = 11;
  ceD_UPD_CR_OriginalInvoiceDate                   = 12;
  ceD_UPD_CR_OriginalInvoiceRevisionNumber         = 13;
  ceD_UPD_CR_OriginalInvoiceRevisionDate           = 14;
  ceD_UPD_CR_OriginalInvoiceCorrectionNumber       = 15;
  ceD_UPD_CR_OriginalInvoiceCorrectionDate         = 16;

  ceD_CustomData_Key                               = 1;
  ceD_CustomData_Value                             = 2;

  ceD_BoxEvent_IsMessage                       = 1;
  ceD_BoxEvent_IsPatch                         = 2;
  ceD_BoxEvent_EventID                         = 3;

  ceD_Message_MessageId                        = 1;
  ceD_Message_TimestampTicks                   = 2;
  ceD_Message_LastPatchTimestampTicks          = 3;
  ceD_Message_FromBoxId                        = 4;
  ceD_Message_FromTitle                        = 5;
  ceD_Message_ToBoxId                          = 6;
  ceD_Message_ToTitle                          = 7;
  ceD_Message_IsDraft                          = 9;
  ceD_Message_DraftIsLocked                    = 10;
  ceD_Message_DraftIsRecycled                  = 11;
  ceD_Message_CreatedFromDraftId               = 12;
  ceD_Message_DraftIsTransformedToMessageId    = 13;
  ceD_Message_IsDeleted                        = 14;
  ceD_Message_IsTest                           = 15;
  ceD_Message_IsInternal                       = 16;
  ceD_Message_IsProxified                      = 17;
  ceD_Message_ProxyBoxId                       = 18;
  ceD_Message_ProxyTitle                       = 19;
  ceD_Message_PacketIsLocked                   = 20;

  ceD_Patch_MessageId                          = 1;
  ceD_Patch_TimestampTicks                     = 2;
  ceD_Patch_ForDraft                           = 4;
  ceD_Patch_DraftIsRecycled                    = 5;
  ceD_Patch_DraftIsTransformedToMessageId      = 6;
  ceD_Patch_DraftIsLocked                      = 7;
  ceD_Patch_MessageIsDeleted                   = 8;
  ceD_Patch_MessageIsRestored                  = 10;

  ceD_Entity_EntityType                        = 1;
  ceD_Entity_EntityId                          = 2;
  ceD_Entity_ParentEntityId                    = 3;
  ceD_Entity_AttachmentType                    = 5;
  ceD_Entity_FileName                          = 6;
  ceD_Entity_NeedRecipientSignature            = 7;
  ceD_Entity_SignerBoxId                       = 8;
  ceD_Entity_NotDeliveredEventId               = 10;
  ceD_Entity_RawCreationDate                   = 12;
  ceD_Entity_SignerDepartmentId                = 14;
  ceD_Entity_IsApprovementSignature            = 19;
  ceD_Entity_IsEncryptedContent                = 20;
  ceD_Entity_Document_IsInit                   = 21;

  ceD_EntityType_UnknownEntityType             = 0;
  ceD_EntityType_Attachment                    = 1;
  ceD_EntityType_Signature                     = 2;

  ceD_Content_Size                             = 1;
  ceD_Content_Data                             = 2;

  ceD_EntityPatch_EntityId                     = 1;
  ceD_EntityPatch_DocumentIsDeleted            = 2;
  ceD_EntityPatch_MovedToDepartmentId          = 3;
  ceD_EntityPatch_DocumentIsRestored           = 4;
  ceD_EntityPatch_ContentIsPatched             = 5;
  ceD_EntityPatch_ForwardedToBoxId             = 6;

  ceD_AttachmentType_UnknownAttachmentType                 = -1; // Reserved attachment type to report to legacy clients for newly introduced attachment types
  ceD_AttachmentType_Nonformalized                         = 0;
  ceD_AttachmentType_Invoice                               = 1;
  ceD_AttachmentType_InvoiceReceipt                        = 2;
  ceD_AttachmentType_InvoiceConfirmation                   = 3;
  ceD_AttachmentType_InvoiceCorrectionRequest              = 4;
  ceD_AttachmentType_AttachmentComment                     = 5;
  ceD_AttachmentType_DeliveryFailureNotification           = 6;
  ceD_AttachmentType_SignatureRequestRejection             = 8;
  ceD_AttachmentType_SignatureVerificationReport           = 10;
  ceD_AttachmentType_TrustConnectionRequest                = 11;
  ceD_AttachmentType_Torg12                                = 12;
  ceD_AttachmentType_InvoiceRevision                       = 13;
  ceD_AttachmentType_InvoiceCorrection                     = 14;
  ceD_AttachmentType_InvoiceCorrectionRevision             = 15;
  ceD_AttachmentType_AcceptanceCertificate                 = 16;
  ceD_AttachmentType_StructuredData                        = 17;
  ceD_AttachmentType_ProformaInvoice                       = 18;
  ceD_AttachmentType_XmlTorg12                             = 19;
  ceD_AttachmentType_XmlAcceptanceCertificate              = 20;
  ceD_AttachmentType_XmlTorg12BuyerTitle                   = 21;
  ceD_AttachmentType_XmlAcceptanceCertificateBuyerTitle    = 22;
  ceD_AttachmentType_Resolution                            = 23;
  ceD_AttachmentType_ResolutionRequest                     = 24;
  ceD_AttachmentType_ResolutionRequestDenial               = 25;
  ceD_AttachmentType_PriceList                             = 26;
  ceD_AttachmentType_Receipt                               = 27;
  ceD_AttachmentType_XmlSignatureRejection                 = 28;
  ceD_AttachmentType_RevocationRequest                     = 29;
  ceD_AttachmentType_PriceListAgreement                    = 30;
  ceD_AttachmentType_CertificateRegistry                   = 34;
  ceD_AttachmentType_ReconciliationAct                     = 35;
  ceD_AttachmentType_Contract                              = 36;
  ceD_AttachmentType_Torg13                                = 37;
  ceD_AttachmentType_ServiceDetails                        = 38;
  ceD_AttachmentType_RoamingNotification                   = 39;
  ceD_AttachmentType_SupplementaryAgreement                = 40;
  ceD_AttachmentType_UniversalTransferDocument             = 41;
  ceD_AttachmentType_UniversalTransferDocumentBuyerTitle   = 42;
  ceD_AttachmentType_UniversalTransferDocumentRevision     = 45;
  ceD_AttachmentType_UniversalCorrectionDocument           = 49;
  ceD_AttachmentType_UniversalCorrectionDocumentRevision   = 50;
  ceD_AttachmentType_UniversalCorrectionDocumentBuyerTitle = 51;
  ceD_AttachmentType_CustomData                            = 64;
  ceD_AttachmentType_MoveDocument                          = 65;
  ceD_AttachmentType_ResolutionChainAssignment             = 66;
  ceD_AttachmentType_ResolutionRouteRemoval                = 67;
  ceD_AttachmentType_Reserved                              = 68;
  ceD_AttachmentType_Cancellation                          = 69;
  ceD_AttachmentType_Edition                               = 71;

  ceD_ResolutionInfo_ResolutionType                = 1;
  ceD_ResolutionInfo_Author                        = 2;
  ceD_ResolutionInfo_InitialRequestId              = 3;

  ceD_ResolutionRequestInfo_RequestType            = 1;
  ceD_ResolutionRequestInfo_Author                 = 2;
  ceD_ResolutionRequestInfo_ResolvedWith           = 4;

  ceD_ResolutionTarget_Department                  = 1;
  ceD_ResolutionTarget_DepartmentId                = 2;
  ceD_ResolutionTarget_User                        = 3;
  ceD_ResolutionTarget_UserId                      = 4;

  ceD_ResolutionRequestDenialInfo_Author           = 1;
  ceD_ResolutionRequestDenialInfo_InitialRequestId = 2;

  ceD_PrintForm_RetryAfter                         = 1;
  ceD_PrintForm_HasContent                         = 2;
  ceD_PrintForm_ContentType                        = 3;
  ceD_PrintForm_PrintFileName                      = 4;
  ceD_PrintForm_Bytes                              = 5;

  ceD_DocumentType_UnknownDocumentType                 = -1;
  ceD_DocumentType_Nonformalized                       = 0;
  ceD_DocumentType_Invoice                             = 1;
  ceD_DocumentType_TrustConnectionRequest              = 11;
  ceD_DocumentType_Torg12                              = 12;
  ceD_DocumentType_InvoiceRevision                     = 13;
  ceD_DocumentType_InvoiceCorrection                   = 14;
  ceD_DocumentType_InvoiceCorrectionRevision           = 15;
  ceD_DocumentType_AcceptanceCertificate               = 16;
  ceD_DocumentType_ProformaInvoice                     = 18;
  ceD_DocumentType_XmlTorg12                           = 19;
  ceD_DocumentType_XmlAcceptanceCertificate            = 20;
  ceD_DocumentType_PriceList                           = 26;
  ceD_DocumentType_PriceListAgreement                  = 30;
  ceD_DocumentType_CertificateRegistry                 = 34;
  ceD_DocumentType_ReconciliationAct                   = 35;
  ceD_DocumentType_Contract                            = 36;
  ceD_DocumentType_Torg13                              = 37;
  ceD_DocumentType_ServiceDetails                      = 38;
  ceD_DocumentType_SupplementaryAgreement              = 40;
  ceD_DocumentType_UniversalTransferDocument           = 41;
  ceD_DocumentType_UniversalTransferDocumentRevision   = 45;
  ceD_DocumentType_UniversalCorrectionDocument         = 49;
  ceD_DocumentType_UniversalCorrectionDocumentRevision = 50;

  ceD_DocTypeS_AnyInvoiceDocumentType              = 'AnyInvoiceDocumentType';    // соответствует набору из четырех типов документов СФ/ИСФ/КСФ/ИКСФ (Invoice, InvoiceRevision, InvoiceCorrection, InvoiceCorrectionRevision),
  ceD_DocTypeS_AnyBilateralDocumentType            = 'AnyBilateralDocumentType';  // соответствует любому типу двусторонних документов (Nonformalized, Torg12, AcceptanceCertificate, XmlTorg12, XmlAcceptanceCertificate, TrustConnectionRequest, PriceList, PriceListAgreement, CertificateRegistry, ReconciliationAct, Contract, Torg13),
  ceD_DocTypeS_AnyUnilateralDocumentType           = 'AnyUnilateralDocumentType'; // соответствует любому типу односторонних документов (ProformaInvoice, ServiceDetails),
  ceD_DocTypeS_Any                                 = 'Any';                       // соответствует любому типу документа.

  ceD_DocumentDirection_UnknownDocumentDirection   = 0;
  ceD_DocumentDirection_Inbound                    = 1;
  ceD_DocumentDirection_Outbound                   = 2;
  ceD_DocumentDirection_Internal                   = 3;

  ceD_DocClassS_Inbound                            = 'Inbound';  //входящий документ
  ceD_DocClassS_Outbound                           = 'Outbound'; //исходящий документ
  ceD_DocClassS_Internal                           = 'Internal'; //внутренний документ

  ceD_DocStatusS_Empty                             = '';                                  //Пустое значение (любой документ указанного класса Class),
  ceD_DocStatusS_NotRead                           = 'NotRead';                           //документ не прочитан
  ceD_DocStatusS_NoRecipientSignatureRequest       = 'NoRecipientSignatureRequest';       //документ без запроса ответной подписи
  ceD_DocStatusS_WaitingForRecipientSignature      = 'WaitingForRecipientSignature';      //документ в ожидании ответной подписи
  ceD_DocStatusS_WithRecipientSignature            = 'WithRecipientSignature';            //документ с ответной подписью
  ceD_DocStatusS_RecipientSignatureRequestRejected = 'RecipientSignatureRequestRejected'; //документ с отказом от формирования ответной подписи
  ceD_DocStatusS_WaitingForSenderSignature         = 'WaitingForSenderSignature';         //документ, требующий подписания и отправки
  ceD_DocStatusS_InvalidSenderSignature            = 'InvalidSenderSignature';            //документ с невалидной подписью отправителя, требующий повторного подписания и отправки
  ceD_DocStatusS_Approved                          = 'Approved';                          //согласованный документ
  ceD_DocStatusS_Disapproved                       = 'Disapproved';                       //документ с отказом согласования
  ceD_DocStatusS_WaitingForResolution              = 'WaitingForResolution';              //документ, находящийся на согласовании или подписи
  ceD_DocStatusS_SignatureRequestRejected          = 'SignatureRequestRejected';          //документ с отказом в запросе подписи сотруднику
  ceD_DocStatusS_Finished                          = 'Finished';                          //документ с завершенным документооборотом
  ceD_DocStatusS_HaveToCreateReceipt               = 'HaveToCreateReceipt';               //тебуется подписать извещение о получении
  ceD_DocStatusS_NotFinished                       = 'NotFinished';                       //документ с незавершенным документооборотом
  ceD_DocStatusS_InvoiceAmendmentRequested         = 'InvoiceAmendmentRequested';         //имеет смысл только для счетов-фактур; документ, по которому было запрошено уточнение
  ceD_DocStatusS_RevocationIsRequestedByMe         = 'RevocationIsRequestedByMe';         //документ, по которому было запрошено аннулирование
  ceD_DocStatusS_RequestsMyRevocation              = 'RequestsMyRevocation';              //документ, по которому контрагент запросил аннулирование
  ceD_DocStatusS_RevocationAccepted                = 'RevocationAccepted';                //аннулированный документ
  ceD_DocStatusS_RevocationRejected                = 'RevocationRejected';                //документ, запрос на аннулирование которого был отклонен
  ceD_DocStatusS_NotRevoked                        = 'NotRevoked';                        //неаннулированный документ)
  ceD_WaitingForProxySignature                     = 'WaitingForProxySignature';          //документ в ожидании подписи промежуточного получателя
  ceD_WithProxySignature                           = 'WithProxySignature';                //документ с подписью промежуточного получателя
  ceD_InvalidProxySignature                        = 'InvalidProxySignature';             //документ с невалидной подписью промежуточного получателя, требующий повторного подписания и отправки
  ceD_ProxySignatureRejected                       = 'ProxySignatureRejected';            //документ с отказом от формирования подписи промежуточным получателем
  ceD_WaitingForInvoiceReceipt                     = 'WaitingForInvoiceReceipt';          //документ в ожидании получения извещения о получении счета-фактуры
  ceD_WaitingForReceipt                            = 'WaitingForReceipt';                 //документ в ожидании получения извещения о получении
  ceD_RequestsMySignature                          = 'RequestsMySignature';               //документ, по которому контрагент запросил подпись
  ceD_RoamingNotificationError                     = 'RoamingNotificationError';          //документ, с ошибкой доставки в роуминге

  ceD_RevocationStatus_UnknownRevocationStatus     = 0; // Reserved status to report to legacy clients for newly introduced statuses
  ceD_RevocationStatus_RevocationStatusNone        = 1;
  ceD_RevocationStatus_RevocationIsRequestedByMe   = 2;
  ceD_RevocationStatus_RequestsMyRevocation        = 3;
  ceD_RevocationStatus_RevocationAccepted          = 4;
  ceD_RevocationStatus_RevocationRejected          = 5;

  ceD_RoamingNoteStatus_Unknown                    = 0; // Reserved status to report to legacy clients for newly introduced statuses
  ceD_RoamingNoteStatus_None                       = 1;
  ceD_RoamingNoteStatus_Success                    = 2;
  ceD_RoamingNoteStatus_Error                      = 3;

  ceD_SenderSignatureStatus_Unknown                = 0; // Reserved status to report to legacy clients for newly introduced statuses
  ceD_SenderSignatureStatus_WaitingFor             = 1;
  ceD_SenderSignatureStatus_Unchecked              = 2;
  ceD_SenderSignatureStatus_CheckedAndValid        = 3;
  ceD_SenderSignatureStatus_CheckedAndInvalid      = 4;

  ceD_BilateralDocStat_UnknownBilateralDocumentStatus            = 0;
  ceD_BilateralDocStat_OutboundWaitingForRecipientSignature      = 1;
  ceD_BilateralDocStat_OutboundWithRecipientSignature            = 2;
  ceD_BilateralDocStat_OutboundRecipientSignatureRequestRejected = 3;
  ceD_BilateralDocStat_OutboundWaitingForSenderSignature         = 10;
  ceD_BilateralDocStat_OutboundInvalidSenderSignature            = 11;
  ceD_BilateralDocStat_InboundWaitingForRecipientSignature       = 4;
  ceD_BilateralDocStat_InboundWithRecipientSignature             = 5;
  ceD_BilateralDocStat_InboundRecipientSignatureRequestRejected  = 6;
  ceD_BilateralDocStat_InboundInvalidRecipientSignature          = 12;
  ceD_BilateralDocStat_InternalWaitingForRecipientSignature      = 7;
  ceD_BilateralDocStat_InternalWithRecipientSignature            = 8;
  ceD_BilateralDocStat_InternalRecipientSignatureRequestRejected = 9;
  ceD_BilateralDocStat_InternalWaitingForSenderSignature         = 13;
  ceD_BilateralDocStat_InternalInvalidSenderSignature            = 14;
  ceD_BilateralDocStat_InternalInvalidRecipientSignature         = 15;

  ceD_ReceiptStatus_Unknown             = 0; // Reserved state to report to legacy client for new statuses
  ceD_ReceiptStatus_None                = 1;
  ceD_ReceiptStatus_Finished            = 2;
  ceD_ReceiptStatus_HaveToCreateReceipt = 3;
  ceD_ReceiptStatus_WaitingForReceipt   = 4;

  ceD_NonformalizedDocStat_UnknownNonformalizedDocumentStatus        = 0;
  ceD_NonformalizedDocStat_OutboundNoRecipientSignatureRequest       = 1;
  ceD_NonformalizedDocStat_OutboundWaitingForRecipientSignature      = 2;
  ceD_NonformalizedDocStat_OutboundWithRecipientSignature            = 3;
  ceD_NonformalizedDocStat_OutboundRecipientSignatureRequestRejected = 4;
  ceD_NonformalizedDocStat_OutboundWaitingForSenderSignature         = 13;
  ceD_NonformalizedDocStat_OutboundInvalidSenderSignature            = 14;
  ceD_NonformalizedDocStat_InboundNoRecipientSignatureRequest        = 5;
  ceD_NonformalizedDocStat_InboundWaitingForRecipientSignature       = 6;
  ceD_NonformalizedDocStat_InboundWithRecipientSignature             = 7;
  ceD_NonformalizedDocStat_InboundRecipientSignatureRequestRejected  = 8;
  ceD_NonformalizedDocStat_InboundInvalidRecipientSignature          = 15;
  ceD_NonformalizedDocStat_InternalNoRecipientSignatureRequest       = 9;
  ceD_NonformalizedDocStat_InternalWaitingForRecipientSignature      = 10;
  ceD_NonformalizedDocStat_InternalWithRecipientSignature            = 11;
  ceD_NonformalizedDocStat_InternalRecipientSignatureRequestRejected = 12;
  ceD_NonformalizedDocStat_InternalWaitingForSenderSignature         = 16;
  ceD_NonformalizedDocStat_InternalInvalidSenderSignature            = 17;
  ceD_NonformalizedDocStat_InternalInvalidRecipientSignature         = 18;

  ceD_InvoiceStatus_UnknownInvoiceStatus                             = 0;
  ceD_InvoiceStatus_OutboundWaitingForInvoiceReceipt                 = 1;
  ceD_InvoiceStatus_OutboundNotFinished                              = 2;
  ceD_InvoiceStatus_OutboundFinished                                 = 3;
  ceD_InvoiceStatus_OutboundWaitingForSenderSignature                = 6;
  ceD_InvoiceStatus_OutboundInvalidSenderSignature                   = 7;
  ceD_InvoiceStatus_InboundNotFinished                               = 4;
  ceD_InvoiceStatus_InboundFinished                                  = 5;

  ceD_AccCertStatus_UnknownAcceptanceCertificateDocumentStatus       = 0; // Reserved status to report to legacy clients for newly introduced statuses
  ceD_AccCertStatus_OutboundWaitingForRecipientSignature             = 1;
  ceD_AccCertStatus_OutboundWithRecipientSignature                   = 2;
  ceD_AccCertStatus_OutboundRecipientSignatureRequestRejected        = 3;
  ceD_AccCertStatus_OutboundWaitingForSenderSignature                = 10;
  ceD_AccCertStatus_OutboundInvalidSenderSignature                   = 11;
  ceD_AccCertStatus_OutboundNoRecipientSignatureRequest              = 16;
  ceD_AccCertStatus_InboundWaitingForRecipientSignature              = 4;
  ceD_AccCertStatus_InboundWithRecipientSignature                    = 5;
  ceD_AccCertStatus_InboundRecipientSignatureRequestRejected         = 6;
  ceD_AccCertStatus_InboundInvalidRecipientSignature                 = 12;
  ceD_AccCertStatus_InboundNoRecipientSignatureRequest               = 17;
  ceD_AccCertStatus_InternalWaitingForRecipientSignature             = 7;
  ceD_AccCertStatus_InternalWithRecipientSignature                   = 8;
  ceD_AccCertStatus_InternalRecipientSignatureRequestRejected        = 9;
  ceD_AccCertStatus_InternalWaitingForSenderSignature                = 13;
  ceD_AccCertStatus_InternalInvalidSenderSignature                   = 14;
  ceD_AccCertStatus_InternalInvalidRecipientSignature                = 15;
  ceD_AccCertStatus_InternalNoRecipientSignatureRequest              = 18;

  ceD_UnilateralDocStatus_UnknownUnilateralDocumentStatus            = 0;
  ceD_UnilateralDocStatus_Outbound                                   = 1;
  ceD_UnilateralDocStatus_OutboundWaitingForSenderSignature          = 4;
  ceD_UnilateralDocStatus_OutboundInvalidSenderSignature             = 5;
  ceD_UnilateralDocStatus_Inbound                                    = 2;
  ceD_UnilateralDocStatus_Internal                                   = 3;
  ceD_UnilateralDocStatus_InternalWaitingForSenderSignature          = 6;
  ceD_UnilateralDocStatus_InternalInvalidSenderSignature             = 7;

  ceD_UPDStatus_UnknownDocumentStatus                                = 0;
  ceD_UPDStatus_OutboundWaitingForSenderSignature                    = 1;
  ceD_UPDStatus_OutboundWaitingForInvoiceReceiptAndRecipientSignature= 2;
  ceD_UPDStatus_OutboundWaitingForInvoiceReceipt                     = 3;
  ceD_UPDStatus_OutboundWaitingForRecipientSignature                 = 4;
  ceD_UPDStatus_OutboundWithRecipientSignature                       = 5;
  ceD_UPDStatus_OutboundRecipientSignatureRequestRejected            = 6;
  ceD_UPDStatus_OutboundInvalidSenderSignature                       = 7;
  ceD_UPDStatus_OutboundNotFinished                                  = 8;
  ceD_UPDStatus_OutboundFinished                                     = 9;
  ceD_UPDStatus_InboundWaitingForRecipientSignature                  = 16;
  ceD_UPDStatus_InboundWithRecipientSignature                        = 17;
  ceD_UPDStatus_InboundRecipientSignatureRequestRejected             = 18;
  ceD_UPDStatus_InboundInvalidRecipientSignature                     = 19;
  ceD_UPDStatus_InboundNotFinished                                   = 20;
  ceD_UPDStatus_InboundFinished                                      = 21;

  ceD_MessageToPost_FromBoxId                                        = 1;
  ceD_MessageToPost_ToBoxId                                          = 2;
  ceD_MessageToPost_Invoices                                         = 3;
  ceD_MessageToPost_NonformalizedDocuments                           = 4;
  ceD_MessageToPost_Torg12Documents                                  = 5;
  ceD_MessageToPost_AcceptanceCertificates                           = 7;
  ceD_MessageToPost_StructuredDataAttachments                        = 8;
  ceD_MessageToPost_ProformaInvoices                                 = 9;
  ceD_MessageToPost_XmlTorg12SellerTitles                            = 10;
  ceD_MessageToPost_XmlAcceptanceCertificateSellerTitles             = 11;
  ceD_MessageToPost_ToDepartmentId                                   = 12;
  ceD_MessageToPost_IsDraft                                          = 13;
  ceD_MessageToPost_LockDraft                                        = 14;
  ceD_MessageToPost_StrictDraftValidation                            = 15;
  ceD_MessageToPost_IsInternal                                       = 16;
  ceD_MessageToPost_FromDepartmentId                                 = 17;
  ceD_MessageToPost_DelaySend                                        = 18;
  ceD_MessageToPost_PriceLists                                       = 19;
  ceD_MessageToPost_PriceListAgreements                              = 20;
  ceD_MessageToPost_CertificateRegistries                            = 21;
  ceD_MessageToPost_ReconciliationActs                               = 22;
  ceD_MessageToPost_Contracts                                        = 23;
  ceD_MessageToPost_Torg13Documents                                  = 24;
  ceD_MessageToPost_ServiceDetailsDocuments                          = 25;
  ceD_MessageToPost_ProxyBoxId                                       = 26;
  ceD_MessageToPost_ProxyDepartmentId                                = 27;
  ceD_MessageToPost_EncryptedInvoices                                = 28;
  ceD_MessageToPost_EncryptedXmlTorg12SellerTitles                   = 29;
  ceD_MessageToPost_EncryptedXmlAcceptanceCertificateSellerTitles    = 30;
  ceD_MessageToPost_SupplementaryAgreements                          = 31;
  ceD_MessageToPost_LockPacket                                       = 32;
  ceD_MessageToPost_UniversalTransferDocumentSellerTitles            = 33;

  ceD_XmlDocAttach_SignedContent                                     = 1;
  ceD_XmlDocAttach_Comment                                           = 3;
  ceD_XmlDocAttach_InitialDocumentIds                                = 4;
  ceD_XmlDocAttach_SubordinateDocumentIds                            = 5;
  ceD_XmlDocAttach_CustomDocumentId                                  = 6;
  ceD_XmlDocAttach_NeedReceipt                                       = 7;
  ceD_XmlDocAttach_CustomData                                        = 8;

  ceD_BasicDocAttach_SignedContent                                   = 1;
  ceD_BasicDocAttach_FileName                                        = 2;
  ceD_BasicDocAttach_Comment                                         = 3;
  ceD_BasicDocAttach_InitialDocumentIds                              = 4;
  ceD_BasicDocAttach_SubordinateDocumentIds                          = 5;
  ceD_BasicDocAttach_DocumentDate                                    = 6;
  ceD_BasicDocAttach_DocumentNumber                                  = 7;
  ceD_BasicDocAttach_Total                                           = 8;
  ceD_BasicDocAttach_CustomDocumentId                                = 9;
  ceD_BasicDocAttach_Vat                                             = 10;
  ceD_BasicDocAttach_Grounds                                         = 11;
  ceD_BasicDocAttach_NeedReceipt                                     = 12;
  ceD_BasicDocAttach_CustomData                                      = 13;

  ceD_NonformalAttach_SignedContent                                  = 1;
  ceD_NonformalAttach_FileName                                       = 2;
  ceD_NonformalAttach_Comment                                        = 3;
  ceD_NonformalAttach_NeedRecipientSignature                         = 4;
  ceD_NonformalAttach_InitialDocumentIds                             = 5;
  ceD_NonformalAttach_SubordinateDocumentIds                         = 6;
  ceD_NonformalAttach_DocumentDate                                   = 7;
  ceD_NonformalAttach_DocumentNumber                                 = 8;
  ceD_NonformalAttach_CustomDocumentId                               = 9;
  ceD_NonformalAttach_NeedReceipt                                    = 10;
  ceD_NonformalAttach_CustomData                                     = 11;

  ceD_ReconActAttach_SignedContent                                  = 1;
  ceD_ReconActAttach_FileName                                       = 2;
  ceD_ReconActAttach_Comment                                        = 3;
  ceD_ReconActAttach_InitialDocumentIds                             = 5;
  ceD_ReconActAttach_SubordinateDocumentIds                         = 6;
  ceD_ReconActAttach_DocumentDate                                   = 7;
  ceD_ReconActAttach_DocumentNumber                                 = 8;
  ceD_ReconActAttach_CustomDocumentId                               = 9;
  ceD_ReconActAttach_NeedReceipt                                    = 10;
  ceD_ReconActAttach_CustomData                                     = 11;

  ceD_SignedContent_Content                                          = 1;
  ceD_SignedContent_Signature                                        = 2;
  ceD_SignedContent_SignByAttorney                                   = 3;
  ceD_SignedContent_NameOnShelf                                      = 4;
  ceD_SignedContent_SignWithTestSignature                            = 5;
  ceD_SignedContent_SignatureNameOnShelf                             = 6;

  ceD_Certificate_IsExpired                                          = 1;
  ceD_Certificate_IsTooEarly                                         = 2;
  ceD_Certificate_HasPrivateKey                                      = 3;
  ceD_Certificate_FriendlyName                                       = 4;
  ceD_Certificate_Thumbprint                                         = 5;
  ceD_Certificate_Name                                               = 6;
  ceD_Certificate_IssuerName                                         = 7;
  ceD_Certificate_OrganizationName                                   = 8;
  ceD_Certificate_ValidFrom                                          = 9;
  ceD_Certificate_ValidTo                                            = 10;
  ceD_Certificate_Thumbprint_Length                                  = 11;
  ceD_Certificate_HasAccessToAnyBox                                  = 12;

  ceD_MessagePatchToPost_BoxId                                       = 1;
  ceD_MessagePatchToPost_MessageId                                   = 2;
  ceD_MessagePatchToPost_Receipts                                    = 3;
  ceD_MessagePatchToPost_CorrectionRequests                          = 4;
  ceD_MessagePatchToPost_Signatures                                  = 5;
  ceD_MessagePatchToPost_RequestedSignatureRejections                = 6;
  ceD_MessagePatchToPost_XmlTorg12BuyerTitles                        = 7;
  ceD_MessagePatchToPost_XmlAcceptanceCertificateBuyerTitles         = 8;
  ceD_MessagePatchToPost_Resolutions                                 = 9;
  ceD_MessagePatchToPost_ResolutionRequests                          = 10;
  ceD_MessagePatchToPost_ResolutionRequestCancellations              = 11;
  ceD_MessagePatchToPost_ResolutionRequestDenials                    = 12;
  ceD_MessagePatchToPost_ResolutionRequestDenialCancellations        = 13;
  ceD_MessagePatchToPost_RevocationRequests                          = 14;
  ceD_MessagePatchToPost_XmlSignatureRejections                      = 15;
  ceD_MessagePatchToPost_CustomDataPatches                           = 16;
  ceD_MessagePatchToPost_ResolutionChainAssignments                  = 17;
  ceD_MessagePatchToPost_SignatureVerifications                      = 18;
  ceD_MessagePatchToPost_EditDocumentPacketCommands                  = 19;
  ceD_MessagePatchToPost_UniversalTransferDocumentBuyerTitles        = 20;

  ceD_ReceiptAttach_ParentEntityId                                   = 1;
  ceD_ReceiptAttach_SignedContent                                    = 2;

  ceD_ReceipTitleAttach_ParentEntityId                               = 1;
  ceD_ReceipTitleAttach_SignedContent                                = 2;

  ceD_DoctSign_ParentEntityId                                        = 1;
  ceD_DoctSign_Signature                                             = 2;
  ceD_DoctSign_SignWithTestSignature                                 = 4;
  ceD_DoctSign_IsApprovementSignature                                = 5;
  ceD_DoctSign_SignatureNameOnShelf                                  = 6;
  ceD_DoctSign_PatchedContentId                                      = 7;
  ceD_DoctSign_SignedContent                                         = 8;

  ceD_RevocationReqAttach_ParentEntityId                             = 1;
  ceD_RevocationReqAttach_SignedContent                              = 2;

  ceD_SignRejection_ParentEntityId                                   = 1;
  ceD_SignRejection_SignedContent                                    = 2;

  ceD_XmlSignRejection_ParentEntityId                                = 1;
  ceD_XmlSignRejection_SignedContent                                 = 2;

  ceD_Signer_SignerCertificate                                       = 1;
  ceD_SignerD_Surname                                                = 201;
  ceD_SignerD_FirstName                                              = 202;
  ceD_SignerD_Patronymic                                             = 203;
  ceD_SignerD_JobTitle                                               = 204;
  ceD_SignerD_Inn                                                    = 205;
  ceD_SignerD_SoleProprietorRegistrationCertificate                  = 206;
  ceD_Signer_SignerCertificateThumbprint                             = 3;

  ceD_DocID_MessageId = 1;
  ceD_DocID_EntityId  = 2;

  ceD_StatDoc_Finished          = 1;
  ceD_StatDoc_Waiting           = 2;
  ceD_StatDoc_NeedSign          = 3;
  ceD_StatDoc_NotCorrect        = 4;
  ceD_StatDoc_Reject            = 5;
  ceD_StatDoc_Revocated         = 6;
  ceD_StatDoc_RevocationRequest = 7;
  ceD_StatDoc_NeedReciept       = 8;

end;

#end

/*
delete all from DIAEVENT;
delete all from DIAMESSAGE;
delete all from DIAMESSAGEPATCH;
delete all from DIAENTITY;
delete all from DIADRAFTTOMESSAGE;
delete all from DIAENTITYPATCH;
delete all from DiaDocument;
delete all from DiaInitialDocId;
delete all from DiaSubordinateDocId;
delete all from DiaTorg12MD;
delete all from DiaInvoiceMD;
delete all from DiaInvoiceRevMD;
delete all from DiaInvoiceCorMD;
delete all from DiaInvoiceCorRevMD;
delete all from DiaAcceptanceCertMD;
delete all from DiaProformaInvoiceMD;
delete all from DiaXmlTorg12MD;
delete all from DiaXmlAccCertMD; //
delete all from DiaTorg13MD;
delete all from DiaPriceListMD;
delete all from DiaResolutionStatus;
delete all from DiaForwardDocEvent;
delete all from DiaReconciliationAct;
delete all from DiaContractMD;
delete all from DiaSuppAgreementMD;
delete all from DiaCustomData;
delete all from DiaOrganization;
delete all from DiaBox;
delete all from DiaAddress;
*/

