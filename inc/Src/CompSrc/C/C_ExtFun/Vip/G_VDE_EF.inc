//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 9.1
// Внешние фукнции : "Библиотека функций работы с VDE"
//------------------------------------------------------------------------------

/*-----------------------------------------------------------------------------------------*/
/* Фильтры сущностей vFilters.pas */
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
/* Функциональность постоителя иерархии  HBMain.pas */
/*-----------------------------------------------------------------------------------------*/

//Построение иерархии
Procedure vdBuildGroup  (Comp);                         external 'G_VDE.dll';
//Удаление группировки
Procedure vdDeleteGroup (Comp);                         external 'G_VDE.dll';
//StringToWord...
Function  vStringToWord (String): Word;                 external 'G_VDE.dll';
//Определяет иерархическая ли группировка
Function  isTreeGroup   (LongInt, Comp): Boolean;       external 'G_VDE.dll';
// Присвоение полям сущности значений классификаторов иерархии
Function  vdFillFields( Longint, Comp, Comp ): Boolean; external 'G_VDE.dll'; 

/*-----------------------------------------------------------------------------------------*/
/* Для работы с объектом "Универсальная иерархия" HierMain.pas*/
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
/* Начальная инициализация vHierIni.pas */
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
/* Процедуры и функции для визуальной работы с интерфейсом vHierFnc.pas */
/*-----------------------------------------------------------------------------------------*/

/* Получить размер ширины колонки Browse */
   Function  GetColumnSize (Longint, Integer): Integer; external;//galnet
/* Установить размер ширины колонки Browse */
   Procedure SetColumnSize (Longint, Integer, Integer); external;//galnet
/* Установить для поля новый Help-Line */
   Procedure SetHelpLine (Longint, Integer, String);    external;//galnet
   Function  vGetTableCode (Integer): Word;             external;//galnet
   Function  GetDBPath: String;                         external;//galnet
   Function  IsWindows: Boolean;                        external;//galnet

/*-----------------------------------------------------------------------------------------*/
/* Получить хэш ключ  vCRC64.pas */
/*-----------------------------------------------------------------------------------------*/

   Function GenHashKey (Comp, Comp): Comp;              external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Функции и процедуры для работы со стеком vStack.pas*/
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
/* Запуск иерархии с КЭШИРОВАНИЕМ vHierRun.pas*/
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
/* Запуск с КЭШИРОВАНИЕМ vHashInt.pas */
/*-----------------------------------------------------------------------------------------*/

   Function  vRunInterface (String): Integer;                   external 'G_VDE.dll';
   Procedure vRunInterfaceNoModal (String);                     external 'G_VDE.dll';
   Procedure vCloseInterfaceToHash (Longint);                   external 'G_VDE.dll';
   Procedure vFlushHashInterface;                               external 'G_VDE.dll';
   Function  MakeInterfHash: Boolean;                           external 'G_VDE.dll';
   Procedure DelInterfHash;                                     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Хэш параметры vParams.pas */
/*-----------------------------------------------------------------------------------------*/

   Procedure vFreeParams;                                       external 'G_VDE.dll';
   Function  vGetParam (String, var AnyType): Boolean;          external 'G_VDE.dll';
   Function  vPutParam (String, var AnyType): Boolean;          external 'G_VDE.dll';
   Function  vDelParam (String): Boolean;                       external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Хэш физических таблиц vHashTbl.pas */
/*-----------------------------------------------------------------------------------------*/

   Function  vHashRead (String, Comp): String;                  external 'G_VDE.dll';
   Procedure vUpDateHashVip;                                    external 'G_VDE.dll';
   Function  MakeHashTbl: Boolean;                              external 'G_VDE.dll';
   Procedure DelHashTbl;                                        external 'G_VDE.dll';
   Function  vGetFirstSurrKeyNum (Word): Integer;               external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Хэш физических таблиц vReOpen.pas */
/*-----------------------------------------------------------------------------------------*/

   Function  vGetTableCodeByName (String): Integer;             external 'G_VDE.dll';
   Function  vReOpenTableByCode (Integer, Word): Integer;       external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Вспомогательные функции  vAccess.pas */
/*-----------------------------------------------------------------------------------------*/

/* Получить значение поля */
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

// Функции доступа к данным
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

/* Перечитать значение */
   Function vdRescanField (Longint, String): String;            external 'G_VDE.dll';
   Function vdRescanPos (Longint, Comp): Boolean;               external 'G_VDE.dll';
   Function vdRescanLink
            (Longint, String, Comp, String) : String;           external 'G_VDE.dll';

/* для навигации */
   Function  vdGetFirst (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdGetLast  (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdGetNext  (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdGetPrev  (Longint): Boolean;                     external 'G_VDE.dll';
   Function  vdMoveBy   (Longint, Longint): Boolean;            external 'G_VDE.dll';

/* сущность */
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

/* для фильтров atlantis-a */
   Procedure vdAddFilter (Longint, String, var AnyType);        external 'G_VDE.dll';
   Procedure vdClearFilter (Longint);                           external 'G_VDE.dll';
   Function  vdGetFilter (Longint) : Boolean;                   external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Сегменты  vDefs.pas */
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
/*  Импорт и экспорт метаописания словаря VEngine из текста vCompile.pas */
/*-----------------------------------------------------------------------------------------*/

   Procedure vdCompileVg1 (String); external 'G_VDE.dll';
//   Procedure RunVGIDE;              external 'VTools.exe';
   Procedure vdExportStructure;     external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Вспомогательные функции  vAccess.pas */
/*-----------------------------------------------------------------------------------------*/

   Function vdEditCom (String, Comp) : Boolean;external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/* Инициализация vengine vengine.pas*/
/*-----------------------------------------------------------------------------------------*/

   Function  INITVDE: Boolean;                 external 'G_VDE.dll';
   Procedure DONEVDE;                          external 'G_VDE.dll';

/*-----------------------------------------------------------------------------------------*/
/*  vSrtuct.pas */
/*-----------------------------------------------------------------------------------------*/

! Создать область типов в области с именем
! 1 параметр - область типов в которой создать новую область
!              0-главная область типов (стандартные Атлантис-типы)
! 2 параметр - Наименование создаваемой области (должно быть уникальным)
! 3 параметр - число битов, определяющее размер кэша типов
Function vtAddArea (Longint, String, Byte): Longint;      external 'G_VDE.dll';

! Найти область типов в области
Function vtGetArea (Longint, String): Longint;            external 'G_VDE.dll';

! Найти тип по имени(2 параметр) в области типов (первый параметр)
Function vtGetType (Longint, String): Longint;            external 'G_VDE.dll';
! Найти элементарный тип по ft-константе
Function vtTypeByftConst (Byte): Longint;                 external 'G_VDE.dll';

! Создать неименованный тип строка с мах. числом символов Byte
Function vtCteateTStr (Byte): Longint;                    external 'G_VDE.dll';

! Создать именованный(2 параметр) тип в области типов(1 параметр)
! Описание типа (3 параметр) должно уже быть создано
Function vtAddTypeAs (Longint, String, Longint): Longint; external 'G_VDE.dll';

! Узнать имя типа (1 параметр)
Function vtNameOf (Longint): String;                      external 'G_VDE.dll';

! Найти описание типа (1 параметр)
Function vtTypeDef (Longint): Longint;                    external 'G_VDE.dll';
                                                      
! Узнать ftConst типа (1 параметр)
Function vtftConstant (Longint): byte;                    external 'G_VDE.dll';

! Создать запись
Function vtNewRecord: Longint;                            external 'G_VDE.dll';

! Добавить в запись (1 параметр) поле с именем (2 параметр)
! и типом (3 параметр) в блок записи
! 4 параметр - 0     - основной блок записи
!              1-100 - вариантные блоки
! Имена полей в записи должны быть уникальны
//Function vtAddToRecord(Longint,String,Longint,Byte):Longint;  external 'G_VDE.dll';

! Найти поле записи (1 параметр) по имени (2 параметр)
Function vtGetField (Longint, String): Longint;           external 'G_VDE.dll';

! Узнать смещение поля в записи (1 параметр)
Function vtFieldOffset (Longint): Longint;                external 'G_VDE.dll';

! Создать тип Array[0..Num-1] of type
! Num  - первый параметр
! Type - второй параметр
Function vtArrayOf (Word,Longint): Longint;               external 'G_VDE.dll';

! Узнать длину типа (1 параметр)
Function vtTypeLen (Longint): Longint;                    external 'G_VDE.dll';

! Удалить Область типов или Тип
! при неудаче - false
Function vtDel (Longint): Boolean;                        external 'G_VDE.dll';
/*-----------------------------------------------------------------------------------------*/
