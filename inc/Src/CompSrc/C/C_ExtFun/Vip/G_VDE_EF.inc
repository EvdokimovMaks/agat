//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ���譨� �㪭樨 : "������⥪� �㭪権 ࠡ��� � VDE"
//------------------------------------------------------------------------------

/*-----------------------------------------------------------------------------------------*/
/* ������� ��魮�⥩ vFilters.pas */
/*-----------------------------------------------------------------------------------------*/

Function  VUpdateFilterHash (Comp): Boolean;           external 'G_VDE.dll';
Function  VOpenFilterId (Comp): Longint;               external 'G_VDE.dll';
Function  VOpenFilterName (String): Longint;           external 'G_VDE.dll';

Function  VParse 
          (String, Comp, Comp, String, Comp, 
           Boolean                          ): Longint; external 'G_VDE.dll';


Function  VParseStream 
          (var AnyType, String, Comp, Comp, 
           String,      Comp,   Boolean     ): Longint; external 'G_VDE.dll';


Function  VParseStreamAndSave
          (var AnyType, String, Comp, Comp  ): Longint; external 'G_VDE.dll';


Function  VParseAndSave (String, Comp, Comp ): Longint; external 'G_VDE.dll';
Function  DefType (String, Comp): Byte;                 external 'G_VDE.dll';
Function  GetErrorDefType: String;                      external 'G_VDE.dll';
Function  GetErrorParse: String;                        external 'G_VDE.dll';
Procedure VQueryFilterValue (Boolean);                  external 'G_VDE.dll';

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
Function  isTreeGroup   (LongInt, Comp): Boolean;       external 'G_VDE.dll';
// ��᢮���� ���� ��魮�� ���祭�� �����䨪��஢ ����娨
Function  vdFillFields( Longint, Comp, Comp ): Boolean; external 'G_VDE.dll'; 

/*-----------------------------------------------------------------------------------------*/
/* ��� ࠡ��� � ��ꥪ⮬ "������ᠫ쭠� ������" HierMain.pas*/
/*-----------------------------------------------------------------------------------------*/

   Function  InitHierarchy (Comp): LongInt;                      external 'G_VDE.dll';
   Procedure DoneHierarchy (LongInt);                            external 'G_VDE.dll';
   Procedure LoadHierarchy (LongInt);                            external 'G_VDE.dll';
   Function  ReOpenHierTable (LongInt, Word): Integer;           external 'G_VDE.dll';

   Function  SetDefSubTree (LongInt, Integer, Comp): Integer;    external 'G_VDE.dll';
   Function  InsertSubTree (LongInt, Integer): Comp;             external 'G_VDE.dll';
   Function  UpdateSubTree (LongInt, Integer): Integer;          external 'G_VDE.dll';
   Function  DeleteSubTree (LongInt, Comp): Integer;             external 'G_VDE.dll';
   Function  GetHierBuffer (LongInt, Integer): Integer;          external 'G_VDE.dll';
   Function  SetHierBuffer (LongInt, Integer): Integer;          external 'G_VDE.dll';

   Procedure GetDescrTunes
             (LongInt, var AnyType, var AnyType, var AnyType, 
              var AnyType, var AnyType, var AnyType);            external 'G_VDE.dll';
   Procedure GetHierTunes
             (LongInt, var AnyType, var AnyType, var AnyType, 
              var AnyType, var AnyType, var AnyType, var AnyType, 
              var AnyType, var AnyType);                         external 'G_VDE.dll';
   Function  GetFieldTunes (LongInt, Integer, Integer): Boolean; external 'G_VDE.dll';

   Function  LoadHierView (LongInt): Boolean;                    external 'G_VDE.dll';
   Function  LoadFieldsView (LongInt): Boolean;                  external 'G_VDE.dll';

   Function  SetDescrTunes (LongInt, Comp, Comp, Comp): Boolean; external 'G_VDE.dll';
   Function  SetHierTunes (LongInt, Integer, Integer, Integer, 
                           Integer, Word): Boolean;              external 'G_VDE.dll';
   Function  SetFieldTunes (LongInt, Integer, Integer): Boolean; external 'G_VDE.dll';

   Function  GetTuneTopNode (LongInt): Comp;                     external 'G_VDE.dll';

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
   Function  vdLoadConstant (LongInt) : Boolean;       external 'G_VDE.dll';

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

   Function  InitStack (Integer, Integer, Integer): Longint;    external 'G_VDE.dll';
   Procedure DoneStack (Longint);                               external 'G_VDE.dll';
   Function  PushStack (Longint, var AnyType): Boolean;         external 'G_VDE.dll';
   Function  PopStack (Longint, var AnyType): Boolean;          external 'G_VDE.dll';
   Function  DropStack (Longint): Boolean;                      external 'G_VDE.dll';
   Function  GetStack (Longint, var AnyType): Boolean;          external 'G_VDE.dll';
   Procedure ClearStack (Longint);                              external 'G_VDE.dll';
   Function  CountStack (Longint): Longint;                     external 'G_VDE.dll';

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
   Procedure vCloseInterfaceToHash (Longint);                   external 'G_VDE.dll';
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
   Function  vdFieldWord (LongInt, String): Word;               external 'G_VDE.dll';
   Procedure vdSetFieldWord (LongInt, String, Word);            external 'G_VDE.dll';
   Function  vdFieldDouble (Longint, String): Double;           external 'G_VDE.dll';
   Function  vdFieldComp (Longint, String): Comp;               external 'G_VDE.dll';
   Function  vdFieldCompID (Longint): Comp;                     external 'G_VDE.dll';
   Procedure vdSetFieldComp (Longint, String, Comp);            external 'G_VDE.dll';
   Function  vdFieldDate (Longint, String): Date;               external 'G_VDE.dll';
   Procedure vdSetFieldDate (Longint, String, Date);            external 'G_VDE.dll';
   Function  vdFieldString (Longint, String): String;           external 'G_VDE.dll';
   Function  vdFieldByte (Longint, String): Byte;               external 'G_VDE.dll';
   Function  vdFieldInteger (Longint, String): Integer;         external 'G_VDE.dll';
   Function  vdFieldLongint (Longint, String): Longint;         external 'G_VDE.dll';
   Function  vdFieldTime (Longint, String): Time;               external 'G_VDE.dll';

// �㭪樨 ����㯠 � �����
   Function  vdOpenTable (Comp, String, Word): Longint;         external 'G_VDE.dll';
   Procedure vdCloseTable (Longint);                            external 'G_VDE.dll';
   Function  vdCreateEntity (Comp, String, Word): Longint;      external 'G_VDE.dll';
   Procedure vdFree (Longint);                                  external 'G_VDE.dll';
   Function  vdSetVar (Longint, String, var AnyType ): Boolean; external 'G_VDE.dll';
   Function  vdSetPos (Longint, Comp): Boolean;                 external 'G_VDE.dll';
   Function  vdField (Longint, String): Longint;                external 'G_VDE.dll';
   Function  vdInsert (Longint): Boolean;                       external 'G_VDE.dll';
   Function  vdUpdate (Longint): Boolean;                       external 'G_VDE.dll';
   Function  vdDelete (Longint): Boolean;                       external 'G_VDE.dll';
   Procedure vdBuild  (Longint);                                external 'G_VDE.dll';
   Procedure vdSetFieldString (Longint, String);                external 'G_VDE.dll';
   Procedure vdClearBuffer (Longint);                           external 'G_VDE.dll';

/* ������� ���祭�� */
   Function vdRescanField (Longint, String): String;            external 'G_VDE.dll';
   Function vdRescanPos (Longint, Comp): Boolean;               external 'G_VDE.dll';
   Function vdRescanLink
            (Longint, String, Comp, String) : String;           external 'G_VDE.dll';

/* ��� ������樨 */
   Function  vdGetFirst (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdGetLast  (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdGetNext  (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdGetPrev  (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdMoveBy   (Longint, Longint): Boolean;            external 'G_VDE.dll';

/* ��魮��� */
   Function  vdEntity (Longint,String): Longint;                external 'G_VDE.dll';
   Function  vdOwner (Longint): Longint;                        external 'G_VDE.dll';
   Function  vdEof (Longint) : Boolean;                         external 'G_VDE.dll';
   Function  vdRecordCount (Longint) : Longint;                 external 'G_VDE.dll';
   Procedure vdOrder (Longint, String);                         external 'G_VDE.dll';
   Function  vdLocate (Longint, String): Boolean;               external 'G_VDE.dll';
   Procedure vdSetCache (Longint, Boolean);                     external 'G_VDE.dll';
   Procedure vdSetMaxRows (Longint, Longint);                   external 'G_VDE.dll';
   Function  vdPick (Longint): Comp;                            external 'G_VDE.dll';
   Function  vdSetFilter (Longint, Comp): Boolean;              external 'G_VDE.dll';
   Function  vdCheckCurFilter (Comp, Comp): Boolean;            external 'G_VDE.dll';
   Procedure vdRunEditInterface;                                external 'G_VDE.dll';
   Function  vdPickField (Longint, String): Boolean;            external 'G_VDE.dll';
   Procedure vdClearField (Longint, String);                    external 'G_VDE.dll';
   Function  vdEdit (Longint): Boolean;                         external 'G_VDE.dll';
   Function  vdGetCurrentRecordID (Longint): Comp;              external 'G_VDE.dll';

/* ��� 䨫��஢ atlantis-a */
   Procedure vdAddFilter (Longint, String, var AnyType);        external 'G_VDE.dll';
   Procedure vdClearFilter (Longint);                           external 'G_VDE.dll';
   Function  vdGetFilter (Longint) : Boolean;                   external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* ��������  vDefs.pas */
/*-----------------------------------------------------------------------------------------*/

   Function vdLoadSegmentDef (Word, Comp): Boolean; external 'G_VDE.dll';
   Function vdGetSegmentOption (Comp): Word;        external 'G_VDE.dll';
   Procedure vdDeleteSegment (Comp);                external 'G_VDE.dll';
   Function vdCalcFieldOffset (Comp): integer;      external 'G_VDE.dll';
   Function vdPickEntity (Longint): Comp;           external 'G_VDE.dll';
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
Function vtAddArea (Longint, String, Byte): Longint;      external 'G_VDE.dll';

! ���� ������� ⨯�� � ������
Function vtGetArea (Longint, String): Longint;            external 'G_VDE.dll';

! ���� ⨯ �� �����(2 ��ࠬ���) � ������ ⨯�� (���� ��ࠬ���)
Function vtGetType (Longint, String): Longint;            external 'G_VDE.dll';
! ���� ��������� ⨯ �� ft-����⠭�
Function vtTypeByftConst (Byte): Longint;                 external 'G_VDE.dll';

! ������� ������������ ⨯ ��ப� � ���. �᫮� ᨬ����� Byte
Function vtCteateTStr (Byte): Longint;                    external 'G_VDE.dll';

! ������� ����������(2 ��ࠬ���) ⨯ � ������ ⨯��(1 ��ࠬ���)
! ���ᠭ�� ⨯� (3 ��ࠬ���) ������ 㦥 ���� ᮧ����
Function vtAddTypeAs (Longint, String, Longint): Longint; external 'G_VDE.dll';

! ������ ��� ⨯� (1 ��ࠬ���)
Function vtNameOf (Longint): String;                      external 'G_VDE.dll';

! ���� ���ᠭ�� ⨯� (1 ��ࠬ���)
Function vtTypeDef (Longint): Longint;                    external 'G_VDE.dll';
                                                      
! ������ ftConst ⨯� (1 ��ࠬ���)
Function vtftConstant (Longint): byte;                    external 'G_VDE.dll';

! ������� ������
Function vtNewRecord: Longint;                            external 'G_VDE.dll';

! �������� � ������ (1 ��ࠬ���) ���� � ������ (2 ��ࠬ���)
! � ⨯�� (3 ��ࠬ���) � ���� �����
! 4 ��ࠬ��� - 0     - �᭮���� ���� �����
!              1-100 - ��ਠ��� �����
! ����� ����� � ����� ������ ���� 㭨�����
//Function vtAddToRecord(Longint,String,Longint,Byte):Longint;  external 'G_VDE.dll';

! ���� ���� ����� (1 ��ࠬ���) �� ����� (2 ��ࠬ���)
Function vtGetField (Longint, String): Longint;           external 'G_VDE.dll';

! ������ ᬥ饭�� ���� � ����� (1 ��ࠬ���)
Function vtFieldOffset (Longint): Longint;                external 'G_VDE.dll';

! ������� ⨯ Array[0..Num-1] of type
! Num  - ���� ��ࠬ���
! Type - ��ன ��ࠬ���
Function vtArrayOf (Word,Longint): Longint;               external 'G_VDE.dll';

! ������ ����� ⨯� (1 ��ࠬ���)
Function vtTypeLen (Longint): Longint;                    external 'G_VDE.dll';

! ������� ������� ⨯�� ��� ���
! �� ��㤠� - false
Function vtDel (Longint): Boolean;                        external 'G_VDE.dll';
/*-----------------------------------------------------------------------------------------*/