#ifndef __MsWordFun_inc__
#define __MsWordFun_inc__
// функции работы с приложением
Function  mswOpenNewWord      (boolean, boolean) : #TPtr;                               external 'WordLib.dll';
Procedure mswCloseWord        (#TPtr);                                                  external 'WordLib.dll';
Procedure mswSetOemConversion (#TPtr, boolean);                                         external 'WordLib.dll';

// функции работы с документом
Function mswOpenDocument      (#TPtr, string) : boolean;                                external 'WordLib.dll';
Function mswCloseDocument     (#TPtr) : boolean;                                        external 'WordLib.dll';

// функции работы с таблицами документа
Function mswGetWordTablesCount(#TPtr) : longint;                                        external 'WordLib.dll';
Function mswGetTableRows      (#TPtr, longint) : longint;                               external 'WordLib.dll';
Function mswGetTableCols      (#TPtr, longint) : longint;                               external 'WordLib.dll';
Function mswCopyCellToMemo    (#TPtr, longint, longint, longint, longint) : boolean;    external 'WordLib.dll';

// функции работы с МЕМО
Function mswGetMemoLinesCount (#TPtr) : longint;                                        external 'WordLib.dll';
Function mswGetMemoLine       (#TPtr, longint) : string;                                external 'WordLib.dll';
Function mswGetMemoText       (#TPtr) : string;                                         external 'WordLib.dll';

// функции для работы с XSD MSXML6.0 SOM Schema Object Model
function BuhXml_MsXmlInstalled : boolean;                                                 external 'WordLib.dll';
function BuhXml_Create : #TPtr;                                                         external 'WordLib.dll';
procedure BuhXml_Free(#TPtr);                                                           external 'WordLib.dll';
function BuhXml_LoadSchema(#TPtr, string) : boolean;                                    external 'WordLib.dll';
function BuhXml_ErrorMsg(#TPtr) : string;                                               external 'WordLib.dll';
function BuhXml_GetSchemaCount(#TPtr) : longint;                                        external 'WordLib.dll';
function BuhXml_GetSchemaParentIdx(#TPtr, longint) : longint;                           external 'WordLib.dll';
function BuhXml_GetSchemaShortName(#TPtr, longint) : string;                            external 'WordLib.dll';
function BuhXml_GetSchemaFullName(#TPtr, longint) : string;                             external 'WordLib.dll';
function BuhXml_GetSchemaElementType(#TPtr, longint) : longint;                         external 'WordLib.dll';
function BuhXml_GetSchemaOptionalUse(#TPtr, longint) : boolean;                         external 'WordLib.dll';
function BuhXml_GetSchemaManyOccurs(#TPtr, longint) : boolean;                          external 'WordLib.dll';
function BuhXml_GetSchemaEnumeration(#TPtr, longint) : string;                          external 'WordLib.dll';
function BuhXml_GetSchemaBaseType(#TPtr, longint) : string;                             external 'WordLib.dll';
function BuhXml_GetSchemaRem(#TPtr, longint) : string;                                  external 'WordLib.dll';
function BuhXml_LoadSchemaWithElem(#TPtr, string, longint) : boolean;                   external 'WordLib.dll';
function BuhXml_ProcessZeroElements(#TPtr, string) : boolean;                           external 'WordLib.dll';
function BuhXml_ZeroElementsCount(#TPtr) : longint;                                     external 'WordLib.dll';
function BuhXml_GetZeroElementName(#TPtr, longint) : string;                            external 'WordLib.dll';

// функции для работы и менаим файлов ГНИ
function BuhXml_CreateGUID36 : string;                                                    external 'WordLib.dll';
function BuhXml_CreateGUID : string;                                                      external 'WordLib.dll';
function BuhXml_ChangeFileExt(string, string): string;                                    external 'WordLib.dll';
function BuhXml_ChangeFilePath(string, string): string;                                   external 'WordLib.dll';
function BuhXml_ExtractFilePath(string): string;                                          external 'WordLib.dll';
function BuhXml_ExtractFileDir(string): string;                                           external 'WordLib.dll';
function BuhXml_ExtractFileDrive(string): string;                                         external 'WordLib.dll';
function BuhXml_ExtractFileName(string): string;                                          external 'WordLib.dll';
function BuhXml_ExtractFileExt(string): string;                                           external 'WordLib.dll';

// функции для работы с MSXML3.0 DOM Document Object Model
function  BuhXmlDom_MsXmlInstalled : boolean;                                             external 'WordLib.dll';
function  BuhXmlDom_Create : #TPtr;                                                     external 'WordLib.dll';
procedure BuhXmlDom_Free(#TPtr);                                                        external 'WordLib.dll';
procedure BuhXmlDom_AddElements(#TPtr, string);                                         external 'WordLib.dll';
procedure BuhXmlDom_AddAttribute(#TPtr, string, string, boolean);                       external 'WordLib.dll';
procedure BuhXmlDom_SaveToFile(#TPtr, string);                                          external 'WordLib.dll';
function  BuhXmlDom_GetHasErrors(#TPtr) : boolean;                                      external 'WordLib.dll';
function  BuhXmlDom_ErrorMsg(#TPtr) : string;                                           external 'WordLib.dll';

procedure BuhXmlDom_AddElementsV(hBuhXmlDom : #TPtr, Elements : string, ElemVal : string); external 'WordLib.dll';

#endif //__MsWordFun_inc__
