//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1
// ���譨� �㭪樨
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// GalApp.pas
procedure PutHotCommand              (Word)                          ; external;
function  CurTableCode                                      : Word   ; external;
//------------------------------------------------------------------------------
// Period.pas
procedure CheckPeriod                                                ; external;
function  GalApp_Second_Tune                                : boolean; external;
procedure GalApp_ExtendedSecond_tune (String)                        ; external;
procedure BeforeChangeFilial                                         ; external;
procedure AfterChangeFilial                                          ; external;
//------------------------------------------------------------------------------
// GalApp.pas
function  IfDefServerApp                                    : boolean; external;
procedure RunBatchInterface          (String);                         external;
procedure RunBatchInterfaceNoModal   (String);                         external;
//------------------------------------------------------------------------------
