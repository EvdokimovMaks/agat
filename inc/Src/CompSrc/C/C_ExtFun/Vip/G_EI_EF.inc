/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2002 ��௮��� ���������                    �
 � ���⥬�       : ���������                                                 �
 � �஥��        : ��壠���᪨� ������                                      �
 � �����        : 5.84                                                      �
 � �����祭��    : ���譨� ��楤��� � �㭪樨 �� G_ExpImp.dll               �
 � �⢥��⢥��� : ���� ����਩ ���������� (Smile)                         �
 ���������������������������������������������������������������������������ͼ
*/

//------------------------------------------------------------------------------
// ieLib.pas
function  TemporaryDirectory                             : string;  external 'G_ExpImp.dll';
procedure GetFileInfo          ( string, var date, var time, var longint ); external 'G_ExpImp.dll';
function  SaveTuneToFile       ( comp, string )          : boolean; external 'G_ExpImp.dll';
function  RestoreTuneFromFile  ( string, word, word )    : comp;    external 'G_ExpImp.dll';
function  IsEmptyMemo          ( var anytype )           : boolean; external 'G_ExpImp.dll';
function  ExtractFormName      ( string )                : string;  external 'G_ExpImp.dll';
function  LoadResource         ( string )                : boolean; external 'G_ExpImp.dll';
function  ieTextFormInit       ( comp, string )          : integer; external 'G_ExpImp.dll';
procedure ieTextFormDone;                                           external 'G_ExpImp.dll';
function  ieTextFormFindFirstRecord ( boolean )          : boolean; external 'G_ExpImp.dll';
function  ieTextFormFindNextRecord  ( boolean )          : boolean; external 'G_ExpImp.dll';
function  ieTextFormImportField     ( boolean, word, var anytype ) : boolean; external 'G_ExpImp.dll';
function  ieTextFormSetFileName     ( string )           : boolean; external 'G_ExpImp.dll';
function  ieTextFormValidTopology   ( comp )             : boolean; external 'G_ExpImp.dll';
function  ieTextFormNumberOfRecords                      : longint; external 'G_ExpImp.dll';
function  GroupOfWords         ( string, string )        : string;  external 'G_ExpImp.dll';
function  GroupOfWordsFrom     ( string, string, string, string, string, string ) : string;  external 'G_ExpImp.dll';
function  GroupOfWordsRem      ( string, string )        : string;  external 'G_ExpImp.dll';
function  GroupOfWordsFromRem  ( string, string, string, string, string, string ) : string;  external 'G_ExpImp.dll';
function  GetBoundedSubString  ( string, char, char, byte ) : string;  external 'G_ExpImp.dll';
function  UndoFileName         ( string )                : string;  external 'G_ExpImp.dll';
function  CurrencyName         ( comp )                  : string;  external 'G_ExpImp.dll';
function  DelClassVal          ( boolean )               : integer; external 'G_ExpImp.dll';
function  DelAttrVal           ( boolean )               : integer; external 'G_ExpImp.dll';
function  FileExist            ( string )                : boolean; external 'G_ExpImp.dll';
function  IsDirectory          ( string )                : boolean; external 'G_ExpImp.dll';
function  CreateUniqueFileName ( string )                : string;  external 'G_ExpImp.dll';
function  AddSlashToPath       ( string )                : string;  external 'G_ExpImp.dll';
function  VerifyPathName       ( string , boolean)       : boolean; external 'G_ExpImp.dll';
function  StartPathName                                  : string;  external 'G_ExpImp.dll';
function  ExtractDelimitedWord ( string, byte, string )  : string;  external 'G_ExpImp.dll';
function  ParseWord ( string, byte, char )               : string;  external 'G_ExpImp.dll';
function  GetEnvString         ( string )                : string;  external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
// Xml_Func.pas
#doc
  ���樠������ � ������ 㪠��⥫� �� XMLDoc
#end
function XML_New                                                       : #TPtr; external 'G_ExpImp.dll';

#doc
����㧪� XML-���㬥�� �� 䠩��
</breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>��� 䠩��
</ul>
<br>
�������:<br>
true - �ᯥ譮, false - �訡��
#end
function XML_LoadDoc      (#TPtr, string)                            : boolean; external 'G_ExpImp.dll';

#doc
  ���� ��ࢮ�� ����㦠����� ���㬥�� �� XML-䠩��
</breaf>
<br>
��ࠬ���
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>���� 㪠��⥫� �� ��. 㧥� ��������� ���㬥��
  <li>��뫪� �� ������ 㧥� ���㬥��
  <li>��뫪� �� ���୨� 㧥� ���㬥��
</ul>
<br>
�������:<br>
  ���� 㪠��⥫� �� ��. 㧥� ���㬥��
#end
function XML_FindFirstDoc (#TPtr, #TPtr, comp, comp)               : #TPtr; external 'G_ExpImp.dll';

#doc
���� ᫥���饣� ����㦠����� ���㬥�� �� XML-䠩��
</breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>���� 㪠��⥫� �� ��. 㧥� ���-�
  <li>��뫪� �� ������ 㧥� ���㬥��
  <li>��뫪� �� ���୨� 㧥� ���㬥��
</ul>
<br>
�������:<br>
  ���� 㪠��⥫� �� ��. 㧥� ���㬥��
#end
function XML_FindNextDoc  (#TPtr, #TPtr, comp, comp)               : #TPtr; external 'G_ExpImp.dll';

#doc
������  ����
<breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>��뫪� �� IEHead - ����ன�� �/�
  <li>���� 㪠��⥫� �� ��. 㧥� ���-�
  <li>��뫪� �� ⥪�饥 ��⠮��ᠭ��
</ul>
<br>
�������:<br>
��ப���� ���祭�� ����
#end
function ImportXMLField   (#TPtr, comp, #TPtr, comp)               : string;  external 'G_ExpImp.dll';

#doc
������  ����
<breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>��뫪� �� IEHead - ����ன�� �/�
  <li>���� 㪠��⥫� �� ��. 㧥� ���-�
  <li>��뫪� �� ⥪�饥 ��⠮��ᠭ��
  <li>㪠��⥫� �� PMemoryStream, ᮤ�ঠ�� ����� 255 ᨬ�����, �������㥬�� ���祭��
</ul>
<br>
�������:<br>
��ப���� ���祭�� ����
#end
function ImportXMLFieldEx   (#TPtr, comp, #TPtr, comp, #TPtr)               : boolean;  external 'G_ExpImp.dll';

#doc
�᢮������� ��뫪� �� XML ���㬥��
</breaf>
��ࠬ����:
<ul>
  <li> ��뫪� �� XML ���㬥��
</ul>
<br>
�������:<br>
true - �ᯥ譮, false - �訡��
#end
function XML_Done         (#TPtr)                                    : boolean; external 'G_ExpImp.dll';

#doc
���������� XML-���㬥�� 㧫��� �� ���� �� �������� 㧫� ���㬥��
</breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>��뫪� �� IEHead - ����ன�� �/�
</ul>
�������:
<br>
���� 㪠��⥫� �� ��. 㧥� ���㬥��
#end
function InitXML_Doc      (#TPtr, comp)                              : #TPtr; external 'G_ExpImp.dll';

#doc
�������� �������� 㧫� ������ ���㬥��
</breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>���� 㪠��⥫� �� ��. 㧥� ⥪. ���-�
  <li>adress s current chield
  <li>������������ �������� 㧫� ���㬥��
</ul>
�������:
<br>
���� 㪠��⥫� �� ��. 㧥� ������ ���-�
#end
function XML_NewNode      (#TPtr, #TPtr, #TPtr ,string)          : longint; external 'G_ExpImp.dll';

#doc
��ᯮ�� ���� � XML-���㬥��<br>
</brief>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>���� 㪠��⥫� �� ��. 㧥� ���-�
  <li>��뫪� �� ⥪�饥 ��⠮��ᠭ��
  <li>��ᯮ���㥬�� ���祭��
  </ul>
<br>
�������:<br>
true - �ᯥ譮, false - �訡��
#end

function ExportXMLField   (#TPtr, #TPtr, comp ,string)             : boolean; external 'G_ExpImp.dll';

#doc
��ᯮ�� ���� � XML-���㬥�� ����� 255 ᨬ�����<br>
</brief>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>���� 㪠��⥫� �� ��. 㧥� ���-�
  <li>��뫪� �� ⥪�饥 ��⠮��ᠭ��
  <li>��ᯮ���㥬�� ���祭��, 㪠��⥫� �� PMemoryStream, ᮤ�ঠ�� ����� 255 ᨬ�����
  </ul>
<br>
�������:<br>
true - �ᯥ譮, false - �訡��
#end

function ExportXMLFieldEx   (#TPtr, #TPtr, comp , var anytype)             : boolean; external 'G_ExpImp.dll';

#doc
���࠭���� ���㬥�� �� 㪠������� ���
</breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XML-���㬥��
  <li>���� 㪠��⥫� �� ��. 㧥� ���-�
</ul>
�������:<br>
true - �ᯥ譮, false - �訡��
#end
function XML_SaveAs       (#TPtr, #TPtr, #TPtr ,#TPtr, string) : boolean; external 'G_ExpImp.dll';

function XML_FillMeta     (#TPtr, comp)                              : boolean; external 'G_ExpImp.dll';
function XML_GetRoot      (#TPtr)                                    : longint; external 'G_ExpImp.dll';
function XML_Release      (#TPtr)                                    : boolean; external 'G_ExpImp.dll';
//------------------------------------------------------------------------------
// XMLDOMFunc.pas

#doc
���樠������ � ������ 㪠��⥫� �� PMemoStream
�������:<br>
���� 㪠��⥫� �� PMemoStream
#end
Function MemoryStream_Init : #TPtr;         external 'G_ExpImp.dll';
#doc
�᢮�������� ��뫪� �� PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
</ul>
#end
Function MemoryStream_Done (#TPtr) : boolean; external 'G_ExpImp.dll';
#doc
���������� ��ப� � PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
<li>������塞� ⥪��
</ul>
�������:<br>
True - �᫨ �ᯥ譮
#end
Function MemoryStream_Write(#TPtr, string) : boolean; external 'G_ExpImp.dll';
#doc
����祭�� ��ப� � PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
<li>������⢮ ���뢠���� ᨬ�����
<li>��ப�, � ������ ���뢠��
</ul>
�������:<br>
True - �᫨ �ᯥ譮
#end
Function MemoryStream_Read(#TPtr, longint, var anytype) : boolean; external 'G_ExpImp.dll';
#doc
��⠭���� ����樨 � PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
<li>��⠭���������� ������
</ul>
�������:<br>
True - �᫨ �ᯥ譮
#end
Function MemoryStream_Seek(#TPtr, longint) : boolean; external 'G_ExpImp.dll';
#doc
��祭�� � PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
</ul>
�������:<br>
True - �᫨ �ᯥ譮
#end
Function MemoryStream_Truncate(#TPtr) : boolean; external 'G_ExpImp.dll';
#doc
����祭�� ����樨 PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
</ul>
�������:<br>
ࠧ��� PMemoStream
#end
Function MemoryStream_GetPos(#TPtr) : longint; external 'G_ExpImp.dll';
#doc
����祭�� ࠧ��� PMemoStream
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� PMemoStream
</ul>
�������:<br>
ࠧ��� PMemoStream
#end
Function MemoryStream_GetSize(#TPtr) : longint; external 'G_ExpImp.dll';


#doc
���樠������ � ������ 㪠��⥫� �� DOMDocument
</breaf>
�������:<br>
���� 㪠��⥫� �� XML-DOMDocument
#end
function XMLDOMDoc_New                                                     : #TPtr; external 'G_ExpImp.dll';

#doc
����㧪� DOMDocument �� 䠩��
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>��� 䠩��, ����� ���� URL
</ul>
�������:<br>
True - �᫨ �ᯥ譮
#end
function XMLDOMDoc_Load                        (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
������ DOMDocument � 䠩�
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>��� 䠩��
</ul>
�������:<br>
True - �᫨ �ᯥ譮
#end
function XMLDOMDoc_Save                        (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
����祭�� ��୥���� �������
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMElement
#end
function XMLDOMDoc_DocumentElement             (#TPtr)                   : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "Node"
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>⨯ 㧫�
<li>������������ 㧫�
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMNode
#end
function XMLDOMDoc_CreateNode                  (#TPtr, integer, string)  : #TPtr; external 'G_ExpImp.dll';
#doc
�������� 㧫� "Attribute"
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>������������ ��ਡ��
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMAttribute
#end
function XMLDOMDoc_CreateAttribute             (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "CDataSection"
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>�����
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMCDataSection
#end
function XMLDOMDoc_CreateCDataSection          (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "Comment"
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>⥪�� ���������
�������:<br>
���� 㪠��⥫� �� XMLDOMComment
#end
function XMLDOMDoc_CreateComment               (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "Comment"
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>⥪�� ��������� (����� 255 ᨬ�����)
�������:<br>
���� 㪠��⥫� �� XMLDOMComment
#end
function XMLDOMDoc_CreateCommentEx               (#TPtr, var anytype)           : #TPtr; external 'G_ExpImp.dll';


#doc
�������� 㧫� "DocumentFragment"
</breaf>
<br>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMDocumentFragment

#end
function XMLDOMDoc_CreateDocumentFragment      (#TPtr)                   : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "Element"
</breaf>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� DOMDocument
  <li>������������ �������
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMElement
#end
function XMLDOMDoc_CreateElement               (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "EntityReference"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>������������ ��뫪�
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMEntityReference
#end
function XMLDOMDoc_CreateEntityReference       (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "ProcessingInstruction"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>������������ ������樨
<li>⥪�� ������樨
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMProcessingInstruction
#end
function XMLDOMDoc_CreateProcessingInstruction (#TPtr, string, string)   : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "TextNode"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>⥪��
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMTextNode
#end
function XMLDOMDoc_CreateTextNode              (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�������� 㧫� "TextNode"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� DOMDocument
<li>⥪�� (����� 255 ᨬ�����)
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMTextNode
#end
function XMLDOMDoc_CreateTextNodeEx            (#TPtr, var anytype)           : #TPtr; external 'G_ExpImp.dll';

#doc
�⥭�� NodeValue ��� 㧫� "Attribute"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMAttribute
</ul>
�������:<br>
���祭�� ��ਡ��
#end
function XMLDOMAttribute_get_NodeValue         (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
�⥭�� NodeValue ��� 㧫� "Attribute"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMAttribute
<li>⥪�� (����� 255 ᨬ�����)
</ul>
�������:<br>
True, �᫨ �ᯥ譮
#end
function XMLDOMAttribute_get_NodeValueEx       (#TPtr, #TPtr)          : boolean;  external 'G_ExpImp.dll';

#doc
������ NodeValue ��� 㧫� "Attribute"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMAttribute
<li>���祭�� ��ਡ��
</ul>
�������:<br>
True, �᫨ �ᯥ譮
#end
function XMLDOMAttribute_set_NodeValue         (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
������ NodeValue ��� 㧫� "Attribute" (����� 255 ᨬ�����)
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMAttribute
<li>���祭�� ��ਡ��
</ul>
�������:<br>
True, �᫨ �ᯥ譮
#end
function XMLDOMAttribute_set_NodeValueEx         (#TPtr, var anytype)           : boolean; external 'G_ExpImp.dll';

#doc
���������� ��ப� � ����� ��� 㧫� "CDataSection"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMCDataSection
<li>������塞�� ��ப�
</ul>
��ࠬ����:<br>
True, �᫨ �ᯥ譮
#end
function XMLDOMCDataSection_AppendData         (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
�⥭�� Length ��� 㧫� "CDataSection"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMCDataSection
</ul>
��ࠬ����: <br>
���祭��
#end
function XMLDOMCDataSection_get_Length         (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
�⥭�� NodeValue ��� 㧫� "CDataSection"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMCDataSection
</ul>
�������:<br>
���祭��
#end
function XMLDOMCDataSection_get_NodeValue      (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
������ NodeValue ��� 㧫� "CDataSection"
</breaf>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XMLDOMCDataSection
  <li>���祭��
</ul>
�������: <br>
  True, �᫨ �ᯥ譮
#end
function XMLDOMCDataSection_set_NodeValue      (#TPtr, string)           : boolean; external 'G_ExpImp.dll';

#doc
�⥭�� �����ப� �� Data ��� 㧫� "CDataSection"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMCDataSection
<li>ᬥ饭��
<li> ���-�� ᨬ�����
</ul>
�������: <br>
���祭��
#end
function XMLDOMCDataSection_SubstringData      (#TPtr, longint, longint) : string;  external 'G_ExpImp.dll';

#doc
���������� ��ਡ�� � ��������
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMElement
<li>������������ ��ਡ��
<li>���祭�� ��ਡ��
</ul>
�������:<br>
true - �ᯥ譮, false - �訡��
#end
function XMLDOMElement_SetAttribute            (#TPtr, string, string)   : boolean; external 'G_ExpImp.dll';

#doc
���������� ��ਡ�� (����� 255 ᨬ�����) � ��������
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMElement
<li>������������ ��ਡ��
<li>���祭�� ��ਡ��
</ul>
�������:<br>
true - �ᯥ譮, false - �訡��
#end
function XMLDOMElement_SetAttributeEx            (#TPtr, string, var anytype)   : boolean; external 'G_ExpImp.dll';

#doc

</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNote
<li>���祭��
</ul>
#end
procedure XMLDOMNode_Set_Text            (#TPtr, var anytype); external 'G_ExpImp.dll';

#doc
����離� 㧫� � 㧫�-த�⥫�
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� 㧥�-த�⥫�
<li>���� 㪠��⥫� �� �����뢠��� 㧥�
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMNamedNodeMap
#end
function XMLDOMNode_AppendChild                (#TPtr, #TPtr)          : #TPtr; external 'G_ExpImp.dll';

#doc
�⥭�� Attributes ��� 㧫� "Node"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNode
�������:<br>
���� 㪠��⥫� �� XMLDOMNodeList
#end
function XMLDOMNode_get_Attributes             (#TPtr)                   : #TPtr; external 'G_ExpImp.dll';

#doc
�⥭�� ChildNodes ��� 㧫� "Node"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNode
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMNodeList
#end
function XMLDOMNode_get_ChildNodes             (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
�⥭�� NodeType ��� 㧫� "Node"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNode
</ul>
�������:<br>
���祭��
#end
function XMLDOMNode_get_NodeType               (#TPtr)                   : integer; external 'G_ExpImp.dll';

#doc
�⥭�� NodeName ��� 㧫� "Node"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNode
</ul>
�������:<br>
���祭��
#end
function XMLDOMNode_get_NodeName               (#TPtr)                   : string;  external 'G_ExpImp.dll';

#doc
 �᢮�������� ��뫪� �� XMLDOMNode
 </breaf>
 ��ࠬ����:
 <ul>
 <li>���� 㪠��⥫� �� 㧥�
 <\ul>
 �������:<br>
true - �ᯥ譮, false - �訡��
#end
function XMLDOMNode_Release                    (#TPtr)                   : boolean; external 'G_ExpImp.dll';

#doc
�⥭�� Length ��� 㧫� "NamedNodeMap"
</breaf>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNamedNodeMap
</ul>
�������:<br>
���祭��
#end
function XMLDOMNamedNodeMap_get_Length         (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
�⥭�� Item ��� 㧫� "NamedNodeMap"
</braef>
��ࠬ����:
<ul>
<li>���� 㪠��⥫� �� XMLDOMNamedNodeMap
<li>������
</ul>
�������:<br>
���� 㪠��⥫� �� XMLDOMAttribute (Item[index])
#end
function XMLDOMNamedNodeMap_get_Item           (#TPtr, longint)          : #TPtr; external 'G_ExpImp.dll';


#doc
�⥭�� Length ��� 㧫� "NodeList"
</breaf>
<br>
��ࠬ����:<br>
<ul>
<li>���� 㪠��⥫� �� XMLDOMNodeList
</ul>
�������:<br>
  ���祭��
#end
function XMLDOMNodeList_get_Length             (#TPtr)                   : longint; external 'G_ExpImp.dll';

#doc
�⥭�� Item ��� 㧫� "NodeList"
</breaf>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� XMLDOMNodeList
  <li>������
</ul>
�������:<br>
  ���� 㪠��⥫� �� XMLDOMNode (Item[index])
#end
function XMLDOMNodeList_get_Item               (#TPtr, longint)          : #TPtr; external 'G_ExpImp.dll';

#doc
�⥭�� ᯨ᪠ ������⮢ �� TagName
</breaf>
<br>
��ࠬ����:
<ul>
  <li>���� 㪠��⥫� �� DOMDocument
  <li>��� ����
</ul>
�������:<br>
  ���� 㪠��⥫� �� XMLDOMNodeList
#end
function XMLDOMDoc_GetElementsByTagName        (#TPtr, string)           : #TPtr; external 'G_ExpImp.dll';

#doc
�᢮�������� ��뫪� �� DOMDocument
</breaf>
<br>
��ࠬ����:
<ul>
  </li>���� 㪠��⥫� �� DOMDocument
</ul>
�������:<br>
  true - �ᯥ譮, false - �訡��
#end
function XMLDOMDoc_Done                        (#TPtr)                   : boolean; external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
function InitMAPIMessage : longint; external 'G_ExpImp.dll';
function DoneMAPIMessage(longint) : boolean; external 'G_ExpImp.dll';
function SetMAPIMessageSubject(string, longint) : boolean; external 'G_ExpImp.dll';
function SetMAPIMessageType(string, longint) : boolean; external 'G_ExpImp.dll';
function AddStringToMailBody(string, longint) : boolean; external 'G_ExpImp.dll';
function AddRecipientToMail(string, string, longint) : boolean; external 'G_ExpImp.dll';
function AddAttachedFileToMail(string, string, longint) : boolean; external 'G_ExpImp.dll';
function SendGalMail(longint) : longint; external 'G_ExpImp.dll';
function GetOsVersion : string; external 'G_ExpImp.dll';

function  _sGetPrivProf(string, string, string): string; external 'G_ExpImp.dll';
function  _lGetPrivProf(string, string, string): Longint; external 'G_ExpImp.dll';
procedure _WritePrivateProfileString(string, string, string, string); external 'G_ExpImp.dll';

function  Init_TableBufferService(var AnyType) : longint; external 'G_ExpImp.dll';
procedure Done_TableBufferService(longint); external 'G_ExpImp.dll';

function  Get_TableBuffer(longint, var AnyType) : boolean; external 'G_ExpImp.dll';
function  Set_TableField(longint, var AnyType, word, word) : boolean; external 'G_ExpImp.dll';

//------------------------------------------------------------------------------
// ieFileFinder.pas
function  FindFirstFile        ( string , var anytype )  : boolean; external 'G_ExpImp.dll';
function  FindNextFile         ( var anytype )           : boolean; external 'G_ExpImp.dll';
function  FindFirstFileCli     ( string , var anytype )  : boolean; external 'G_ExpImp.dll';
function  FindNextFileCli      ( var anytype )           : boolean; external 'G_ExpImp.dll';
procedure DoneFileFinderCli;                                        external 'G_ExpImp.dll';

#ifNdef Gal9_1
//------------------------------------------------------------------------------
// FastExpImp.pas
procedure FastExp(string); external 'G_ExpImp.dll';
procedure FastImp(string); external 'G_ExpImp.dll';
#end