#ifndef _GalHttpConnect_inG_INCLUDED
#define _GalHttpConnect_inG_INCLUDED

//#region ����� �㭪権 ��� �믮������ ������ HTTP ����ᮢ, � �ந������ ᮤ�ন�� ���� � ᮤ�ন�� � �ଠ� JSON
  #doc
    �㭪�� ᮧ����� �᭮����� ��ꥪ� ��� ࠡ��� � ����䥩ᠬ� ������⥪� GalHttpConnect.dll.
    ������� �ᯮ������: �᫨ ��ꥪ� �ᯥ譮 ᮧ���, � �����頥��� ��� ����, ���� 0.
  #end
  function HttpConnect_Create(Url : string, UserName : string, Password : string) : longint;          external 'GalHttpConnector.dll#HttpConnect_Create';

  #doc
    �㭪�� ᮧ���� ������� ��ப� � �����頥� �� ����
  #end
  function HttpConnect_CreateLongString(fn : longint) : longint;                                      external 'GalHttpConnector.dll#HttpConnect_CreateLongString';

  #doc
    ��楤�� ���⪨ ������� ��ப�
  #end
  procedure HttpConnect_ClearLongString(fn : longint, longValue : longint);                           external 'GalHttpConnector.dll#HttpConnect_ClearLongString';

  #doc
    ��楤�� ���������� aValue ��ப� 255 ᨬ����� � ������� ��ப� longValue
  #end
  procedure HttpConnect_AddValueToLongString(fn : longint, aValue : string, longValue : longint);     external 'GalHttpConnector.dll#HttpConnect_AddValueToLongString';

  #doc
    ��楤�� ���������� ������� ��ப� aValue � ������� ��ப� longValue.
  #end
  procedure HttpConnect_AddLongValueToLongString(fn : longint, aValue : longint, longValue : longint);external 'GalHttpConnector.dll#HttpConnect_AddLongValueToLongString';

  #doc
    �㭪�� ����祭�� ����� ������� ��ப�
  #end
  function HttpConnect_GetLongStringLength(fn : longint, longValue : longint) : longint;              external 'GalHttpConnector.dll#HttpConnect_GetLongStringLength';

  #doc
    �㭪�� ����祭�� ᨬ��� �� ������� ��ப�
  #end
  function HttpConnect_GetLongStringSymbol(fn : longint, longValue : longint, i : longint) : string;  external 'GalHttpConnector.dll#HttpConnect_GetLongStringSymbol';

  #doc
    �㭪�� �᢮�������� ������� ��ப�
  #end
  procedure HttpConnect_DestroyLongString(fn : longint, longValue : longint);                         external 'GalHttpConnector.dll#HttpConnect_DestroyLongString';

  #doc
    �㭪�� ����祭�� JSON-��ꥪ� (TJSONObject) �� ������� ��ப�
  #end
  function HttpConnect_JSONObjectByLongString(fn : longint, longValue : longint) : longint;                     external 'GalHttpConnector.dll#HttpConnect_JSONObjectByLongString';

  #doc
    �㭪�� ����祭�� JSON-��ꥪ� (TJSONObject �� ���祭�� JsonValue), ����祭���� �� ����� aName � த�⥫�  jsonParentObject
  #end
  function HttpConnect_JSONObjectByName(fn : longint, jsonParentObject : longint, sName : string) : longint;    external 'GalHttpConnector.dll#HttpConnect_JSONObjectByName';

  #doc
    �㭪�� ����祭�� ࠧ��� ���ᨢ� TJSONArray ��� ������⢮ ��� � TJSONObject. jsonObject �� ��� TJSONArray ��� TJSONObject
  #end
  function HttpConnect_JsonCount(fn : longint, jsonObject : longint) : longint;                                 external 'GalHttpConnector.dll#HttpConnect_JsonCount';

  #doc
    �㭪�� ����祭�� �� JSON-��ꥪ� jsonObject (TJSONObject) �� ����� sName ���祭�� � ���� ��ப� 255
  #end
  function HttpConnect_JsonObjectValueByName(fn : longint, jsonObject : longint, sName : string) : string;      external 'GalHttpConnector.dll#HttpConnect_JsonObjectValueByName';

  #doc
    �㭪�� ����祭�� �� JSON-��ꥪ� jsonObject (TJSONObject) �� ����� sName ���祭�� � ���� ������� ��ப�
  #end
  function HttpConnect_JsonObjectLongValueByName(fn : longint, jsonObject : longint, sName : string) : longint; external 'GalHttpConnector.dll#HttpConnect_JsonObjectLongValueByName';

  #doc
    �㭪�� �᢮�������� JSON-��ꥪ�
  #end
  procedure HttpConnect_JSONObjectDestroy(fn : longint, jsonObject : longint);                                  external 'GalHttpConnector.dll#HttpConnect_JSONObjectDestroy';

  #doc
    �㭪�� ����祭�� JSON-��ꥪ� (TJSONArray �� ���祭�� JsonValue), ����祭���� �� ����� sName � த�⥫�  jsonParentObject
  #end
  function HttpConnect_JSONArrayByName(fn : longint, jsonParentObject : longint, sName : string) : longint;     external 'GalHttpConnector.dll#HttpConnect_JSONArrayByName';

  #doc
    �㭪�� ����祭�� JSON-��ꥪ� �� ���ᨢ� jsonArray (TJSONArray) �� �������
  #end
  function HttpConnect_JSONObjectByIndexOfArray(fn : longint, jsonArray : longint, i : integer) : longint;      external 'GalHttpConnector.dll#HttpConnect_JSONObjectByIndexOfArray';

  #doc
    �㭪�� ����祭�� JSON-��ꥪ� �� ���ᨢ� jsonArray (TJSONArray) �� ������� � ���� ��ப� 255
  #end
  function HttpConnect_StringByIndexOfArray(fn : longint, jsonArray : longint, i : integer) : string;           external 'GalHttpConnector.dll#HttpConnect_StringByIndexOfArray';

  #doc
    �㭪�� �८�ࠧ������ JSON-��ꥪ� � ������� ��ப�
  #end
  function HttpConnect_JSONObjectToString(fn : longint, jsonObject : longint) : longint;                        external 'GalHttpConnector.dll#HttpConnect_JSONObjectToString';

  #doc
    �㭪�� �믮������ HTTP-�����
  #end
  function HttpConnect_EDISendRequest(fn : longint, sAddUrl : string,
                                      AH : longint, filename : string, TypeMethod : string) : longint;          external 'GalHttpConnector.dll#HttpConnect_EDISendRequest';

  #doc
    �㭪�� ����祭�� ���� �訡�� ��᫥���� �믮������� ����樨
  #end
  function HttpConnect_LastError(fn : longint) : longint;                                                       external 'GalHttpConnector.dll#HttpConnect_LastError';

  #doc
    �㭪�� ����祭�� ⥪�� �訡�� ��᫥���� �믮������� ����樨
  #end
  function HttpConnect_LastErrorText(fn : longint) : string;                                                    external 'GalHttpConnector.dll#HttpConnect_LastErrorText';

  #doc
    ��楤�� �᢮�������� �᭮����� ��ꥪ� � �ᯮ����⥫��� ����ᮢ.
  #end
  procedure HttpConnect_Free(fn : longint);                                                                     external 'GalHttpConnector.dll#HttpConnect_Free';

  #doc
    �㭪�� �����頥� ᣥ���ࢮ���� GUID
  #end
  function HttpConnect_GenerateGUID                : string;                                                    external 'GalHttpConnector.dll#HttpConnect_GenerateGUID';

  #doc
    �㭪�� �८�ࠧ������ ������� ��ப� �� base64. �����頥��� 㪠��⥫� �� ������� ��ப�
  #end
  function HttpConnect_DecodeBase64(fn : longint, longValue : longint) : longint;                               external 'GalHttpConnector.dll#HttpConnect_DecodeBase64';

  #doc
    �㭪�� ����㧪� �� 䠩�� ⥪�� � ������� ��ப�.
    �����ন������ Encoding -  ����஢�� (CP_UTF7 - TEncoding.UTF7, CP_UTF8 - TEncoding.UTF8, 1200 - TEncoding.Unicode)
    �᫨ ��।��� �⫨筮� �� 3 ���祭��, ����㧪� �������� ��� ��।������ ����஢��
  #end
  function  HttpConnect_LoadToFile(fn : longint, sFileName : string, Encoding : LongInt) : longint;             external 'GalHttpConnector.dll#HttpConnect_LoadToFile';

  #doc
    �㭪�� ��࠭���� ������� ��ப� � 䠩� � 㪠������ ����஢��� (CP_UTF7 - TEncoding.UTF7, CP_UTF8 - TEncoding.UTF8, 1200 - TEncoding.Unicode)
  #end
  function  HttpConnect_SaveToFile(fn : longint, longValue : longint, sFileName : string, Encoding : LongInt) : boolean;            external 'GalHttpConnector.dll#HttpConnect_SaveToFile';

  #doc
    �㭪�� ᪠稢���� � 㪠������� ���� aURL 䠩�� � ��४��� aDirectory � ������ � �ଠ� 'yyyymmdd_hhmmss.zip'.
    �������  - ��� ᪠祭��� 䠩��
  #end
  function  HttpConnect_DownloadFileFromURL(fn : longint, aURL: String, aDirectory: String): String;            external 'GalHttpConnector.dll#HttpConnect_DownloadFileFromURL';

  #doc
    �㭪�� �ᯠ����� aZipFile 䠩�� � 㤠����� ��� � ��砥 aDeleteFile=true.
    ������� - ��� �ᯠ��������� 䠩��
  #end
  function  HttpConnect_UnZipFile(fn : longint, aZipFile: String, aDeleteFile: Boolean): String; external 'GalHttpConnector.dll#HttpConnect_UnZipFile';

  #doc
    ��楤�� ����祭�� ��⮪���
  #end
  procedure HttpConnect_ResponseLogEnable(fn : longint); external 'GalHttpConnector.dll#HttpConnect_ResponseLogEnable';

  #doc
    ��楤�� ����஢���� ���� � ����
  #end
  procedure HttpConnect_ResponseLogToClipboard(fn : longint); external 'GalHttpConnector.dll#HttpConnect_ResponseLogToClipboard';

//#endregion

//#region ����� �㭪権 ������ ��⮪��� FTP
  #include GalHttpFtpConst.inc

  function  FTPCLient_Create: #TPtr;                                                                       external 'C_ArchiveLinkFnConnect.dll#FTPCLient_Create';
  procedure FTPCLient_Free(ftp:#TPtr);                                                                     external 'C_ArchiveLinkFnConnect.dll#FTPCLient_Free';
  procedure FTPCLient_CreateDirectory(ftp:#TPtr, ADirectory: String);                                      external 'C_ArchiveLinkFnConnect.dll#FTPCLient_CreateDirectory';
  procedure FTPCLient_DeleteFile(ftp:#TPtr, FileName: String);                                             external 'C_ArchiveLinkFnConnect.dll#FTPCLient_DeleteFile';
  function  FTPCLient_FindFirst(ftp:#TPtr, Path: String, Attr: LongInt): LongInt;                          external 'C_ArchiveLinkFnConnect.dll#FTPCLient_FindFirst';
  function  FTPCLient_FindNext(ftp:#TPtr): LongInt;                                                        external 'C_ArchiveLinkFnConnect.dll#FTPCLient_FindNext';
  procedure FTPCLient_FindClose(ftp:#TPtr);                                                                external 'C_ArchiveLinkFnConnect.dll#FTPCLient_FindClose';
  function  FTPCLient_SearchRec_GetTime(ftp:#TPtr): LongInt;                                               external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SearchRec_GetTime';
  function  FTPCLient_SearchRec_GetSize(ftp:#TPtr): LongInt;                                               external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SearchRec_GetSize';
  function  FTPCLient_SearchRec_GetAttr(ftp:#TPtr): LongInt;                                               external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SearchRec_GetAttr';
  function  FTPCLient_SearchRec_GetName(ftp:#TPtr): String;                                                external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SearchRec_GetName';
  function  FTPCLient_SearchRec_GetExcludeAttr(ftp:#TPtr): LongInt;                                        external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SearchRec_GetExcludeAttr';
  function  FTPCLient_GetCurrentDirectory(ftp:#TPtr): String;                                              external 'C_ArchiveLinkFnConnect.dll#FTPCLient_GetCurrentDirectory';
  procedure FTPCLient_GetFile(ftp:#TPtr, RemoteFile: String, LocalFile: String, FailIfExists: Boolean);    external 'C_ArchiveLinkFnConnect.dll#FTPCLient_GetFile';
  function  FTPCLient_GetFileSize(ftp:#TPtr, filename: String): LongInt;                                   external 'C_ArchiveLinkFnConnect.dll#FTPCLient_GetFileSize';
  procedure FTPCLient_PutFile(ftp:#TPtr, LocalFile: String, Remotefile: String);                           external 'C_ArchiveLinkFnConnect.dll#FTPCLient_PutFile';
  procedure FTPCLient_RemoveDirectory(ftp:#TPtr, ADirectory: String);                                      external 'C_ArchiveLinkFnConnect.dll#FTPCLient_RemoveDirectory';
  procedure FTPCLient_RenameFile(ftp:#TPtr, ExistingFile: String, NewFile: String);                        external 'C_ArchiveLinkFnConnect.dll#FTPCLient_RenameFile';
  procedure FTPCLient_SetCurrentDirectory(ftp:#TPtr, ADirectory: String);                                  external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetCurrentDirectory';
  procedure FTPCLient_Connect(ftp:#TPtr);                                                                  external 'C_ArchiveLinkFnConnect.dll#FTPCLient_Connect';
  procedure FTPCLient_Disconnect(ftp:#TPtr);                                                               external 'C_ArchiveLinkFnConnect.dll#FTPCLient_Disconnect';
  function  FTPCLient_GetConnected(ftp:#TPtr): Boolean;                                                    external 'C_ArchiveLinkFnConnect.dll#FTPCLient_GetConnected';
  procedure FTPCLient_SetServerName(ftp:#TPtr, AServerName: String);                                       external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetServerName';
  procedure FTPCLient_SetServerPort(ftp:#TPtr, AServerPort: LongInt);                                      external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetServerPort';
  procedure FTPCLient_SetUserName(ftp:#TPtr, AUserName: String);                                           external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetUserName';
  procedure FTPCLient_SetPassword(ftp:#TPtr, APassword: String);                                           external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetPassword';
  procedure FTPCLient_SetConnectTimeout(ftp:#TPtr, AConnectTimeout: LongInt);                              external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetConnectTimeout';
  procedure FTPCLient_SetSendTimeout(ftp:#TPtr, ASendTimeout: LongInt);                                    external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetSendTimeout';
  procedure FTPCLient_SetReceiveTimeout(ftp:#TPtr, AReceiveTimeout: LongInt);                              external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetReceiveTimeout';
  procedure FTPCLient_SetUploadBufferSize(ftp:#TPtr, AUploadBufferSize: LongInt);                          external 'C_ArchiveLinkFnConnect.dll#FTPCLient_SetUploadBufferSize';
  function  FTPCLient_GetLastError(ftp:#TPtr): String;                                                     external 'C_ArchiveLinkFnConnect.dll#FTPCLient_GetLastError';
//#endregion

//#region ����� �㭪権 �믮������ ������ HTTP ����ᮢ �� ��⮪��� SOAP
  function  SOAPClient_Create: #TPtr;                                                                      external 'GalHttpConnector.dll#SOAPClient_Create';
  procedure SOAPClient_SetUrl(soap: #TPtr, Url: String);                                                   external 'GalHttpConnector.dll#SOAPClient_SetUrl';
  procedure SOAPClient_AppendUrl(soap: #TPtr, AppendUrl: String);                                          external 'GalHttpConnector.dll#SOAPClient_AppendUrl';
  procedure SOAPClient_SetBasicAuth(soap: #TPtr, UserName: String, Password: String);                      external 'GalHttpConnector.dll#SOAPClient_SetBasicAuth';
  function  SOAPClient_LastHttpError(soap: #TPtr): LongInt;                                                external 'GalHttpConnector.dll#SOAPClient_LastHttpError';
  function  SOAPClient_LastHttpErrorText(soap: #TPtr): String;                                             external 'GalHttpConnector.dll#SOAPClient_LastHttpErrorText';
  procedure SOAPClient_AddRequestHeader(soap: #TPtr, aName: String, aValue: String);                       external 'GalHttpConnector.dll#SOAPClient_AddRequestHeader';
  function  SOAPClient_Execute(soap: #TPtr, RequestXML: #TPtr, ResponseXML: #TPtr) : boolean;              external 'GalHttpConnector.dll#SOAPClient_Execute';
  procedure SOAPClient_Free(soap: #TPtr);                                                                  external 'GalHttpConnector.dll#SOAPClient_Free';
  procedure SOAPClient_SetSertificateIgnore(soap: #TPtr, bIgnore: Boolean);                                external 'GalHttpConnector.dll#SOAPClient_SetSertificateIgnore';

  #doc
    ��⠭����� ०�� ������祭�� �१ �ப� �ࢥ�, ������� � ����樮���� ��⥬� �� 㬮�砭��
  #end
  procedure SOAPClient_SetProxyDefault(soap: #TPtr); external 'GalHttpConnector.dll#SOAPClient_SetProxyDefault'; 

  #doc
    ��⠭����� ०�� ������祭�� �१ �ப� �ࢥ�, � � 㪠����묨 ��ࠬ��ࠬ� �ࢥ� ���� � ���짮��⥫�
  #end
  procedure SOAPClient_SetProxyNamed(soap: #TPtr, ProxyServer : String, ProxyPort : longint, ProxyUserName : String, ProxyPassword : String); external 'GalHttpConnector.dll#SOAPClient_SetProxyNamed'; 

//#endregion

//#region ����� �㭪権 �믮������ HTTP ����ᮢ � ���-�ࢥ�� ��� ���
  function FileNetConnect_Create(Url : string, UserName : string, Password : string) : #TPtr; external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_Create';
  function FileNetConnect_LockFnDoc(fn : #TPtr, BarCode : string) : boolean;                  external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_LockFnDoc';
  function FileNetConnect_UnLockFnDoc(fn : #TPtr, BarCode : string) : boolean;                external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_UnLockFnDoc';
  function FileNetConnect_BlockedStatus(fn : #TPtr, BarCode : string) : Integer;              external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_BlockedStatus';
  function FileNetConnect_LastError(fn : #TPtr) : longint;                                    external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_LastError';
  function FileNetConnect_LastErrorText(fn : #TPtr) : string;                                 external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_LastErrorText';
  function FileNetConnect_AlHttpGetToFile(fn : #TPtr, FileName : string) : boolean;           external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_AlHttpGetToFile';
  function FileNetConnect_AlHttpPdfToFile(fn : #TPtr, FileName : string) : boolean;           external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_AlHttpPdfToFile';
  procedure FileNetConnect_Free(fn : #TPtr);                                                  external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_Free';
//#endregion

//#region �ᯮ����⥫�� �㭪樨, 㭠᫥������� �� �஥�� ��� ���
  function FileNetConnect_FolderDialog(AFolder: string, ATitle: string): string;                external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_FolderDialog';
  function FileNetConnect_GetUserName(NameFormat: longint): String;                             external 'C_ArchiveLinkFnConnect.dll#FileNetConnect_GetUserName';
//#endregion

#endif




