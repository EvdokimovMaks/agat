//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ���譨� �㪭樨 : "������⥪� �㭪権 ࠡ��� � VDE"
//------------------------------------------------------------------------------

/*-----------------------------------------------------------------------------------------*/
/* ������� ��魮�⥩ vFilters.pas */
/*-----------------------------------------------------------------------------------------*/

Function  VUpdateFilterHash (Comp): Boolean;               external 'G_VDE.dll';
Function  VOpenFilterId (Comp): #TPtr;               external 'G_VDE.dll';
Function  VOpenFilterName (String): #TPtr;           external 'G_VDE.dll';

Function  VParse
          (String, Comp, Comp, String, Comp,
           Boolean                         ): #TPtr; external 'G_VDE.dll';


Function  VParseStream
          (var AnyType, String, Comp, Comp,
           String,      Comp,   Boolean    ): #TPtr; external 'G_VDE.dll';


Function  VParseStreamAndSave
          (var AnyType, String, Comp, Comp ): #TPtr; external 'G_VDE.dll';


Function  VParseAndSave (String, Comp, Comp): #TPtr; external 'G_VDE.dll';
Function  DefType (String, Comp): Byte;                    external 'G_VDE.dll';
Function  GetErrorDefType: String;                         external 'G_VDE.dll';
Function  GetErrorParse: String;                           external 'G_VDE.dll';
Procedure VQueryFilterValue (Boolean);                     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* �㭪樮���쭮��� ���⮨⥫� ����娨  HBMain.pas */
/*-----------------------------------------------------------------------------------------*/

//����஥��� ����娨
Procedure vdBuildGroup  (Comp);                         external 'G_VDE.dll';
//�������� ��㯯�஢��
Procedure vdDeleteGroup (Comp);                         external 'G_VDE.dll';
//StringToWord...
Function  vStringToWord (String): Word;                 external 'G_VDE.dll';
//��।���� ������᪠� �� ��㯯�஢��
Function  isTreeGroup   (#TPtr, Comp): Boolean;       external 'G_VDE.dll';
// ��᢮���� ���� ��魮�� ���祭�� �����䨪��஢ ����娨
Function  vdFillFields( #TPtr, Comp, Comp ): Boolean; external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��� ࠡ��� � ��ꥪ⮬ "������ᠫ쭠� ������" HierMain.pas*/
/*-----------------------------------------------------------------------------------------*/

   Function  InitHierarchy (Comp): #TPtr;                      external 'G_VDE.dll';
   Procedure DoneHierarchy (#TPtr);                            external 'G_VDE.dll';
   Procedure LoadHierarchy (#TPtr);                            external 'G_VDE.dll';
   Function  ReOpenHierTable (#TPtr, Word): Integer;           external 'G_VDE.dll';

   Function  SetDefSubTree (#TPtr, Integer, Comp): Integer;    external 'G_VDE.dll';
   Function  InsertSubTree (#TPtr, Integer): Comp;             external 'G_VDE.dll';
   Function  UpdateSubTree (#TPtr, Integer): Integer;          external 'G_VDE.dll';
   Function  DeleteSubTree (#TPtr, Comp): Integer;             external 'G_VDE.dll';
   Function  GetHierBuffer (#TPtr, Integer): Integer;          external 'G_VDE.dll';
   Function  SetHierBuffer (#TPtr, Integer): Integer;          external 'G_VDE.dll';

   Procedure GetDescrTunes
             (#TPtr, var AnyType, var AnyType, var AnyType,
              var AnyType, var AnyType, var AnyType);            external 'G_VDE.dll';
   Procedure GetHierTunes
             (#TPtr, var AnyType, var AnyType, var AnyType,
              var AnyType, var AnyType, var AnyType, var AnyType,
              var AnyType, var AnyType);                         external 'G_VDE.dll';
   Function  GetFieldTunes (#TPtr, Integer, Integer): Boolean; external 'G_VDE.dll';

   Function  LoadHierView (#TPtr): Boolean;                    external 'G_VDE.dll';
   Function  LoadFieldsView (#TPtr): Boolean;                  external 'G_VDE.dll';

   Function  SetDescrTunes (#TPtr, Comp, Comp, Comp): Boolean; external 'G_VDE.dll';
   Function  SetHierTunes (#TPtr, Integer, Integer, Integer,
                           Integer, Word): Boolean;              external 'G_VDE.dll';
   Function  SetFieldTunes (#TPtr, Integer, Integer): Boolean; external 'G_VDE.dll';

   Function  GetTuneTopNode (#TPtr): Comp;                     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��砫쭠� ���樠������ vHierIni.pas */
/*-----------------------------------------------------------------------------------------*/

   Procedure InitCreateHierarchy;                      external 'G_VDE.dll';
   Procedure DoneCreateHierarchy;                      external 'G_VDE.dll';
   Function  CreateHierarchy
             (String, Comp, String, Comp,
              Comp,   Comp              ): Boolean;    external 'G_VDE.dll';
   Function  CreateHierarchyClassifier
             (String                    ): Boolean;    external 'G_VDE.dll';
   Function  vdLoadConstant (#TPtr) : Boolean;       external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��楤��� � �㭪樨 ��� ���㠫쭮� ࠡ��� � ����䥩ᮬ vHierFnc.pas */
/*-----------------------------------------------------------------------------------------*/

/* ������� ࠧ��� �ਭ� ������� Browse */
   Function  GetColumnSize (Longint, Integer): Integer; external;//galnet
/* ��⠭����� ࠧ��� �ਭ� ������� Browse */
   Procedure SetColumnSize (Longint, Integer, Integer); external;//galnet
/* ��⠭����� ��� ���� ���� Help-Line */
   Procedure SetHelpLine (Longint, Integer, String);    external;//galnet
   Function  vGetTableCode (Integer): Word;             external;//galnet
   Function  GetDBPath: String;                         external;//galnet
   Function  IsWindows: Boolean;                        external;//galnet

/*-----------------------------------------------------------------------------------------*/
/* ������� ��� ����  vCRC64.pas */
/*-----------------------------------------------------------------------------------------*/

   Function GenHashKey (Comp, Comp): Comp;              external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* �㭪樨 � ��楤��� ��� ࠡ��� � �⥪�� vStack.pas*/
/*-----------------------------------------------------------------------------------------*/

   Function  InitStack (Integer, Integer, Integer): #TPtr;    external 'G_VDE.dll';
   Procedure DoneStack (#TPtr);                               external 'G_VDE.dll';
   Function  PushStack (#TPtr, var AnyType): Boolean;         external 'G_VDE.dll';
   Function  PopStack (#TPtr, var AnyType): Boolean;          external 'G_VDE.dll';
   Function  DropStack (#TPtr): Boolean;                      external 'G_VDE.dll';
   Function  GetStack (#TPtr, var AnyType): Boolean;          external 'G_VDE.dll';
   Procedure ClearStack (#TPtr);                              external 'G_VDE.dll';
   Function  CountStack (#TPtr): Longint;                     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ����� ����娨 � ������������ vHierRun.pas*/
/*-----------------------------------------------------------------------------------------*/

   Procedure vRunHierNameFromMenu (String);                     external 'G_VDE.dll';
   Function  vRunHierName (String):Integer;                     external 'G_VDE.dll';
   Function  vRunHierID (Comp):Integer;                         external 'G_VDE.dll';
   Function  vHierDescrByName (String):comp;                    external 'G_VDE.dll';
   Procedure vCloseToHashHier (Longint,Comp);                   external 'G_VDE.dll';
   Function  MakeHierHash: Boolean;                             external 'G_VDE.dll';
   Procedure DelHashHier;                                       external 'G_VDE.dll';

   Procedure vFlushHashHierarchy;                               external 'G_VDE.dll';
   Procedure vNeedReScan (Integer, Word, Comp, Comp);           external 'G_VDE.dll';
   Function  vGetTableIDByGroupID (Comp): word;                 external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ����� � ������������ vHashInt.pas */
/*-----------------------------------------------------------------------------------------*/

   Function  vRunInterface (String): Integer;                   external 'G_VDE.dll';
   Procedure vRunInterfaceNoModal (String);                     external 'G_VDE.dll';
   Procedure vCloseInterfaceToHash (#TPtr);               external 'G_VDE.dll';
   Procedure vFlushHashInterface;                               external 'G_VDE.dll';
   Function  MakeInterfHash: Boolean;                           external 'G_VDE.dll';
   Procedure DelInterfHash;                                     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��� ��ࠬ���� vParams.pas */
/*-----------------------------------------------------------------------------------------*/

   Procedure vFreeParams;                                       external 'G_VDE.dll';
   Function  vGetParam (String, var AnyType): Boolean;          external 'G_VDE.dll';
   Function  vPutParam (String, var AnyType): Boolean;          external 'G_VDE.dll';
   Function  vDelParam (String): Boolean;                       external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��� 䨧��᪨� ⠡��� vHashTbl.pas */
/*-----------------------------------------------------------------------------------------*/

   Function  vHashRead (String, Comp): String;                  external 'G_VDE.dll';
   Procedure vUpDateHashVip;                                    external 'G_VDE.dll';
   Function  MakeHashTbl: Boolean;                              external 'G_VDE.dll';
   Procedure DelHashTbl;                                        external 'G_VDE.dll';
   Function  vGetFirstSurrKeyNum (Word): Integer;               external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��� 䨧��᪨� ⠡��� vReOpen.pas */
/*-----------------------------------------------------------------------------------------*/

   Function  vGetTableCodeByName (String): Integer;             external 'G_VDE.dll';
   Function  vReOpenTableByCode (Integer, Word): Integer;       external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* �ᯮ����⥫�� �㭪樨  vAccess.pas */
/*-----------------------------------------------------------------------------------------*/

/* ������� ���祭�� ���� */
   Function  vdFieldWord (#TPtr, String): Word;               external 'G_VDE.dll';
   Procedure vdSetFieldWord (#TPtr, String, Word);            external 'G_VDE.dll';
   Function  vdFieldDouble (#TPtr, String): Double;           external 'G_VDE.dll';
   Function  vdFieldComp (#TPtr, String): Comp;               external 'G_VDE.dll';
   Function  vdFieldCompID (#TPtr): Comp;                     external 'G_VDE.dll';
   Procedure vdSetFieldComp (#TPtr, String, Comp);            external 'G_VDE.dll';
   Function  vdFieldDate (#TPtr, String): Date;               external 'G_VDE.dll';
   Procedure vdSetFieldDate (#TPtr, String, Date);            external 'G_VDE.dll';
   Function  vdFieldString (#TPtr, String): String;           external 'G_VDE.dll';
   Function  vdFieldByte (#TPtr, String): Byte;               external 'G_VDE.dll';
   Function  vdFieldInteger (#TPtr, String): Integer;         external 'G_VDE.dll';
   Function  vdFieldLongint (#TPtr, String): Longint;         external 'G_VDE.dll';
   Function  vdFieldTime (#TPtr, String): Time;               external 'G_VDE.dll';

// �㭪樨 ����㯠 � �����
   Function  vdOpenTable (Comp, String, Word): #TPtr;         external 'G_VDE.dll';
   Procedure vdCloseTable (#TPtr);                            external 'G_VDE.dll';
   Function  vdCreateEntity (Comp, String, Word): #TPtr;      external 'G_VDE.dll';
   Procedure vdFree (#TPtr);                                  external 'G_VDE.dll';
   Function  vdSetVar (#TPtr, String, var AnyType ): Boolean; external 'G_VDE.dll';
   Function  vdSetPos (#TPtr, Comp): Boolean;                 external 'G_VDE.dll';
   Function  vdField (#TPtr, String): #TPtr;            external 'G_VDE.dll';
   Function  vdInsert (#TPtr): Boolean;                       external 'G_VDE.dll';
   Function  vdUpdate (#TPtr): Boolean;                       external 'G_VDE.dll';
   Function  vdDelete (#TPtr): Boolean;                       external 'G_VDE.dll';
   Procedure vdBuild  (#TPtr);                                external 'G_VDE.dll';
   Procedure vdSetFieldString (#TPtr, String);                external 'G_VDE.dll';
   Procedure vdClearBuffer (#TPtr);                           external 'G_VDE.dll';

/* ������� ���祭�� */
   Function vdRescanField (#TPtr, String): String;            external 'G_VDE.dll';
   Function vdRescanPos (#TPtr, Comp): Boolean;               external 'G_VDE.dll';
   Function vdRescanLink
            (#TPtr, String, Comp, String) : String;           external 'G_VDE.dll';

/* ��� ������樨 */
   Function  vdGetFirst (#TPtr): Boolean;                     external 'G_VDE.dll';
   Function  vdGetLast  (#TPtr): Boolean;                     external 'G_VDE.dll';
   Function  vdGetNext  (#TPtr): Boolean;                     external 'G_VDE.dll';
   Function  vdGetPrev  (#TPtr): Boolean;                     external 'G_VDE.dll';
   Function  vdMoveBy   (#TPtr, Longint): Boolean;            external 'G_VDE.dll';

/* ��魮��� */
   Function  vdEntity (#TPtr,String): #TPtr;                external 'G_VDE.dll';
   Function  vdOwner (#TPtr): #TPtr;                        external 'G_VDE.dll';
   Function  vdEof (#TPtr) : Boolean;                         external 'G_VDE.dll';
   Function  vdRecordCount (#TPtr) : Longint;                 external 'G_VDE.dll';
   Procedure vdOrder (#TPtr, String);                         external 'G_VDE.dll';
   Function  vdLocate (#TPtr, String): Boolean;               external 'G_VDE.dll';
   Procedure vdSetCache (#TPtr, Boolean);                     external 'G_VDE.dll';
   Procedure vdSetMaxRows (#TPtr, Longint);                   external 'G_VDE.dll';
   Function  vdPick (#TPtr): Comp;                            external 'G_VDE.dll';
   Function  vdSetFilter (#TPtr, Comp): Boolean;              external 'G_VDE.dll';
   Function  vdCheckCurFilter (Comp, Comp): Boolean;            external 'G_VDE.dll';
   Procedure vdRunEditInterface;                                external 'G_VDE.dll';
   Function  vdPickField (#TPtr, String): Boolean;            external 'G_VDE.dll';
   Procedure vdClearField (#TPtr, String);                    external 'G_VDE.dll';
   Function  vdEdit (#TPtr): Boolean;                         external 'G_VDE.dll';
   Function  vdGetCurrentRecordID (#TPtr): Comp;              external 'G_VDE.dll';

/* ��� 䨫��஢ atlantis-a */
   Procedure vdAddFilter (#TPtr, String, var AnyType);        external 'G_VDE.dll';
   Procedure vdClearFilter (#TPtr);                           external 'G_VDE.dll';
   Function  vdGetFilter (#TPtr) : Boolean;                   external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��������  vDefs.pas */
/*-----------------------------------------------------------------------------------------*/

   Function vdLoadSegmentDef (Word, Comp): Boolean; external 'G_VDE.dll';
   Function vdGetSegmentOption (Comp): Word;        external 'G_VDE.dll';
   Procedure vdDeleteSegment (Comp);                external 'G_VDE.dll';
   Function vdCalcFieldOffset (Comp): integer;      external 'G_VDE.dll';
   Function vdPickEntity (#TPtr): Comp;       external 'G_VDE.dll';
   Function vdGetTableID (String): Comp;            external 'G_VDE.dll';
   Function vdGetTableName (Comp): String;          external 'G_VDE.dll';
   Function vdGetTableCode (String): Word;          external 'G_VDE.dll';
   Function vdCreateAtlantisTable (String): Boolean;external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/*  ������ � ��ᯮ�� ��⠮��ᠭ�� ᫮���� VEngine �� ⥪�� vCompile.pas */
/*-----------------------------------------------------------------------------------------*/

   Procedure vdCompileVg1 (String); external 'G_VDE.dll';
//   Procedure RunVGIDE;              external 'VTools.exe';
   Procedure vdExportStructure;     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* �ᯮ����⥫�� �㭪樨  vAccess.pas */
/*-----------------------------------------------------------------------------------------*/

   Function vdEditCom (String, Comp) : Boolean;external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ���樠������ vengine vengine.pas*/
/*-----------------------------------------------------------------------------------------*/

   Function  INITVDE: Boolean;                 external 'G_VDE.dll';
   Procedure DONEVDE;                          external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/*  vSrtuct.pas */
/*-----------------------------------------------------------------------------------------*/

! ������� ������� ⨯�� � ������ � ������
! 1 ��ࠬ��� - ������� ⨯�� � ���ன ᮧ���� ����� �������
!              0-������� ������� ⨯�� (�⠭����� �⫠���-⨯�)
! 2 ��ࠬ��� - ������������ ᮧ�������� ������ (������ ���� 㭨�����)
! 3 ��ࠬ��� - �᫮ ��⮢, ��।����饥 ࠧ��� ��� ⨯��
Function vtAddArea (#TPtr, String, Byte): #TPtr;      external 'G_VDE.dll';

! ���� ������� ⨯�� � ������
Function vtGetArea (#TPtr, String): #TPtr;            external 'G_VDE.dll';

! ���� ⨯ �� �����(2 ��ࠬ���) � ������ ⨯�� (���� ��ࠬ���)
Function vtGetType (#TPtr, String): #TPtr;            external 'G_VDE.dll';
! ���� ��������� ⨯ �� ft-����⠭�
Function vtTypeByftConst (Byte): #TPtr;                 external 'G_VDE.dll';

! ������� ������������ ⨯ ��ப� � ���. �᫮� ᨬ����� Byte
Function vtCteateTStr (Byte): #TPtr;                    external 'G_VDE.dll';

! ������� ����������(2 ��ࠬ���) ⨯ � ������ ⨯��(1 ��ࠬ���)
! ���ᠭ�� ⨯� (3 ��ࠬ���) ������ 㦥 ���� ᮧ����
Function vtAddTypeAs (#TPtr, String, #TPtr): #TPtr; external 'G_VDE.dll';

! ������ ��� ⨯� (1 ��ࠬ���)
Function vtNameOf (#TPtr): String;                      external 'G_VDE.dll';

! ���� ���ᠭ�� ⨯� (1 ��ࠬ���)
Function vtTypeDef (#TPtr): #TPtr;                    external 'G_VDE.dll';

! ������ ftConst ⨯� (1 ��ࠬ���)
Function vtftConstant (#TPtr): byte;                    external 'G_VDE.dll';

! ������� ������
Function vtNewRecord: #TPtr;                            external 'G_VDE.dll';

! �������� � ������ (1 ��ࠬ���) ���� � ������ (2 ��ࠬ���)
! � ⨯�� (3 ��ࠬ���) � ���� �����
! 4 ��ࠬ��� - 0     - �᭮���� ���� �����
!              1-100 - ��ਠ��� �����
! ����� ����� � ����� ������ ���� 㭨�����
//Function vtAddToRecord(Longint,String,Longint,Byte):Longint;  external 'G_VDE.dll';

! ���� ���� ����� (1 ��ࠬ���) �� ����� (2 ��ࠬ���)
Function vtGetField (#TPtr, String): #TPtr;           external 'G_VDE.dll';

! ������ ᬥ饭�� ���� � ����� (1 ��ࠬ���)
Function vtFieldOffset (#TPtr): Longint;                external 'G_VDE.dll';

! ������� ⨯ Array[0..Num-1] of type
! Num  - ���� ��ࠬ���
! Type - ��ன ��ࠬ���
Function vtArrayOf (Word,#TPtr): #TPtr;               external 'G_VDE.dll';

! ������ ����� ⨯� (1 ��ࠬ���)
Function vtTypeLen (#TPtr): Longint;                    external 'G_VDE.dll';

! ������� ������� ⨯�� ��� ���
! �� ��㤠� - false
Function vtDel (#TPtr): Boolean;                        external 'G_VDE.dll';
/*-----------------------------------------------------------------------------------------*/
