#ifndef _GalSignInvoice_INC
#define _GalSignInvoice_INC
const
  URL_AIS_INVOICE  = 'https://ws.vat.gov.by:443/InvoicesWS/services/InvoicesPort';
  URL_AIS_TEST     = 'https://185.32.226.170:4443/InvoicesWS/services/InvoicesPort';

  ATR_INVOICE      = 'Invoice';
  ATR_SIGN_INVOICE = 'SignInvoice';

  // Актуальная версия EInvVatService
  MAJOR_VERSION    = 1;
  MINOR_VERSION    = 3;
  RELEASE_VERSION  = 0;
  BUILD_VERSION    = 53;

  SERVICE_CERT_CN  = 'Автоматизированный сервис портала АИС УСФ';
  SERVICE_CERT_O   = 'МНС РБ';
  SERVICE_CERT_C   = 'BY';
  SERVICE_CERT_L   = 'Минск';
end;

function GalSignInvoice_B64Encode(S: string): string; external 'GalSignInvoice.dll#GalSignInvoice_B64Encode';
function GalSignInvoice_B64Decode(S: string): string; external 'GalSignInvoice.dll#GalSignInvoice_B64Decode';
//------------------------------------------------------------------------------
// Connector
//------------------------------------------------------------------------------
function Connector_Create: #TPtr; external 'GalSignInvoice.dll#Connector_Create';
function Connector_Login(fn: #TPtr, ConnectStr: string, flag: integer): integer; external 'GalSignInvoice.dll#Connector_Login';
function Connector_Logout(fn: #TPtr): integer; external 'GalSignInvoice.dll#Connector_Logout';
function Connector_Connect(fn: #TPtr, Url: string): integer; external 'GalSignInvoice.dll#Connector_Connect';
function Connector_Disconnect(fn: #TPtr): integer; external 'GalSignInvoice.dll#Connector_Disconnect';
function Connector_CreateEDoc(fn: #TPtr): #TPtr; external 'GalSignInvoice.dll#Connector_CreateEDoc';
function Connector_SetProxy(fn: #TPtr, Host: string, Port: integer, username: string, Password: string, Version: integer): integer; external 'GalSignInvoice.dll#Connector_SetProxy';
function Connector_SendEDoc(fn: #TPtr, Doc: #TPtr): integer; external 'GalSignInvoice.dll#Connector_SendEDoc';
function Connector_GetEDoc(fn: #TPtr, Number: string): longint; external 'GalSignInvoice.dll#Connector_GetEDoc';
function Connector_Ticket(fn: #TPtr): longint; external 'GalSignInvoice.dll#Connector_Ticket';
function Connector_LastError(fn: #TPtr): string; external 'GalSignInvoice.dll#Connector_LastError';
function Connector_GetStatus(fn: #TPtr, InvVatNumber: string): longint; external 'GalSignInvoice.dll#Connector_GetStatus';
function Connector_GetList(fn: #TPtr, FromDate: string): longint; external 'GalSignInvoice.dll#Connector_GetList';
function Connector_GetMyCertProperty(fn: #TPtr, OID: string, Flags: integer): string; external 'GalSignInvoice.dll#Connector_GetMyCertProperty';
function Connector_SetServiceProperty(fn: #TPtr, ParamName: string, ParamValue: string, Falgs: integer): integer; external 'GalSignInvoice.dll#Connector_SetServiceProperty';
function Connector_Version(fn: #TPtr): string; external 'GalSignInvoice.dll#Connector_Version';
procedure Connector_Free(fn: #TPtr); external 'GalSignInvoice.dll#Connector_Free';
//------------------------------------------------------------------------------
// EDocument
//------------------------------------------------------------------------------
function EDocument_Create: #TPtr; external 'GalSignInvoice.dll#EDocument_Create';
function EDocument_LoadFromFile(fn: #TPtr, FileName: string): integer; external 'GalSignInvoice.dll#EDocument_LoadFromFile';
function EDocument_SaveToFile(fn: #TPtr, FileName: string): integer; external 'GalSignInvoice.dll#EDocument_SaveToFile';
procedure EDocument_GetData(fn: #TPtr, FileName: string, Flag: integer); external 'GalSignInvoice.dll#EDocument_GetData';
function EDocument_SetData(fn: #TPtr, Data: string, Flag: integer): integer; external 'GalSignInvoice.dll#EDocument_SetData';
function EDocument_Document(fn: #TPtr): longint; external 'GalSignInvoice.dll#EDocument_Document';
function EDocument_GetXmlNodeValue(fn: #TPtr, Nodes: string): string; external 'GalSignInvoice.dll#EDocument_GetXmlNodeValue';
function EDocument_GetXmlNodeAttribute(fn: #TPtr, Nodes: string): string; external 'GalSignInvoice.dll#EDocument_GetXmlNodeAttribute';
function EDocument_ValidateXml(fn: #TPtr, Xsd: string, Flag: integer): integer; external 'GalSignInvoice.dll#EDocument_ValidateXml';
function EDocument_Sign(fn: #TPtr, Flag: integer): integer; external 'GalSignInvoice.dll#EDocument_Sign';
function EDocument_GetSignCount(fn: #TPtr): integer; external 'GalSignInvoice.dll#EDocument_GetSignCount';
function EDocument_GetSignProperty(fn: #TPtr, ID: integer, OID: string, Flag: integer): string; external 'GalSignInvoice.dll#EDocument_GetSignProperty';
function EDocument_VerifySign(fn: #TPtr, ID: integer, Flag: integer): integer; external 'GalSignInvoice.dll#EDocument_VerifySign';
procedure EDocument_Free(fn: #TPtr); external 'GalSignInvoice.dll#EDocument_Free';
// Ticket
function EDocument_Accepted(fn: #TPtr): integer; external 'GalSignInvoice.dll#EDocument_Accepted';
function EDocument_Message(fn: #TPtr): String; external 'GalSignInvoice.dll#EDocument_Message';
function EDocument_CountMessage(fn: #TPtr): integer; external 'GalSignInvoice.dll#EDocument_CountMessage';
function EDocument_StringMessage(fn: #TPtr, indx: integer): string; external 'GalSignInvoice.dll#EDocument_StringMessage';
//------------------------------------------------------------------------------
// StatusInfo
//------------------------------------------------------------------------------
function StatusInfo_Create: #TPtr; external 'GalSignInvoice.dll#StatusInfo_Create';
function StatusInfo_Verify(fn: #TPtr): integer; external 'GalSignInvoice.dll#StatusInfo_Verify';
function StatusInfo_Status(fn: #TPtr): string; external 'GalSignInvoice.dll#StatusInfo_Status';
function StatusInfo_Since(fn: #TPtr): string;external 'GalSignInvoice.dll#StatusInfo_Since';
function StatusInfo_Message(fn: #TPtr): string; external 'GalSignInvoice.dll#StatusInfo_Message';
function StatusInfo_SaveToFile(fn: #TPtr, FileName: string): integer; external 'GalSignInvoice.dll#StatusInfo_SaveToFile';
function StatusInfo_CountMessage(fn: #TPtr): integer; external 'GalSignInvoice.dll#StatusInfo_CountMessage';
function StatusInfo_StringMessage(fn: #TPtr, indx: integer): string; external 'GalSignInvoice.dll#StatusInfo_StringMessage';
procedure StatusInfo_Free(fn: #TPtr); external 'GalSignInvoice.dll#StatusInfo_Free';
//------------------------------------------------------------------------------
// EDocList
//------------------------------------------------------------------------------
function EDocList_Create: #TPtr; external 'GalSignInvoice.dll#EDocList_Create';
function EDocList_Count(fn: #TPtr): integer; external 'GalSignInvoice.dll#EDocList_Count';
function EDocList_ToDate(fn: #TPtr): string; external 'GalSignInvoice.dll#EDocList_ToDate';
function EDocList_GetItemAttribute(fn: #TPtr, ID: integer, Attr: string): string; external 'GalSignInvoice.dll#EDocList_GetItemAttribute';
function EDocList_SaveToFile(fn: #TPtr, FileName: string): integer; external 'GalSignInvoice.dll#EDocList_SaveToFile';
function EDocList_Verify(fn: #TPtr): integer; external 'GalSignInvoice.dll#EDocList_Verify';
procedure EDocList_Free(fn: #TPtr); external 'GalSignInvoice.dll#EDocList_Free';

#endif // _GalSignInvoice_INC
