#ifndef _GalSignInvoice_INC
#define _GalSignInvoice_INC
const
  URL_AIS_INVOICE   = 'https://ws.vat.gov.by:443/InvoicesWS/services/InvoicesPort';
  URL_AIS_TEST      = 'https://185.32.226.170:4443/InvoicesWS/services/InvoicesPort';

  ATR_INVOICE       = 'Invoice';
  ATR_SIGN_INVOICE  = 'SignInvoice';
end;
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
//------------------------------------------------------------------------------
// StatusInfo
//------------------------------------------------------------------------------
function StatusInfo_Create: #TPtr; external 'GalSignInvoice.dll#StatusInfo_Create';
function StatusInfo_Verify(fn: #TPtr): integer; external 'GalSignInvoice.dll#StatusInfo_Verify';
function StatusInfo_Status(fn: #TPtr): string; external 'GalSignInvoice.dll#StatusInfo_Status';
function StatusInfo_Since(fn: #TPtr): string;external 'GalSignInvoice.dll#StatusInfo_Since';
function StatusInfo_Message(fn: #TPtr): string; external 'GalSignInvoice.dll#StatusInfo_Message';
function StatusInfo_SaveToFile(fn: #TPtr, FileName: string): integer; external 'GalSignInvoice.dll#StatusInfo_SaveToFile';
procedure StatusInfo_Free(fn: #TPtr); external 'GalSignInvoice.dll#StatusInfo_Free';
//------------------------------------------------------------------------------
// EDocList
//------------------------------------------------------------------------------
function EDocList_Create: #TPtr; external 'GalSignInvoice.dll#EDocList_Create';
function EDocList_Count(fn: #TPtr): integer; external 'GalSignInvoice.dll#EDocList_Count';
function EDocList_ToDate(fn: #TPtr): string; external 'GalSignInvoice.dll#EDocList_ToDate';
function EDocList_GetItemAttribute(fn: #TPtr, ID: integer, Attr: string): string; external 'GalSignInvoice.dll#EDocList_GetItemAttribute';
function EDocList_SaveToFile(fn: #TPtr, FileName: string): integer; external 'GalSignInvoice.dll#EDocList_SaveToFile';
procedure EDocList_Free(fn: #TPtr); external 'GalSignInvoice.dll#EDocList_Free';

#endif // _GalSignInvoice_INC
