//******************************************************************************
//                                                    (c) корпорация ГАЛАКТИКА
// ГАЛАКТИКА 8.1x Производственный контур
//                Внешние процедуры и функции из G_Mnf.dll
//******************************************************************************

//------------------------------------------------------------------------------
// MNF_Fun.pas

procedure InitFileFind(Byte, String);                          external 'G_Mnf.dll';
procedure FreeFileFind;                                        external 'G_Mnf.dll';
function  NextFileFind                               : String; external 'G_Mnf.dll';

procedure ContainerIn(var AnyType, var AnyType, Byte);         external 'G_Mnf.dll';
function  ContainerOut(var AnyType, Byte)            : String; external 'G_Mnf.dll';

function  ConvTime(Double, Word, Word)               : Double; external 'G_Mnf.dll';
function  TimeToDuration(Time, Word)                 : Double; external 'G_Mnf.dll';
function  DurationToTime(Double, Word)               : Time;   external 'G_Mnf.dll';