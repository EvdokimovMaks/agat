//------------------------------------------------------------------------------
//                                                      (c) Š®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€
//------------------------------------------------------------------------------
// ƒ « ªâ¨ª  - Ÿ¤à®
// ‚­¥è­¨¥ äã­ªæ¨¨ ¨§ G_Tree.dll
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// AnUchTr.pas
function  AnInitTreeBuilder  (Integer,Word,Byte)         : #TPtr; external 'G_Tree.dll';
procedure AnUploadTemp       (#TPtr,Word)                       ; external 'G_Tree.dll';
procedure AnUploadTemp_New   (#TPtr,Word,var AnyType)           ; external 'G_Tree.dll';
//------------------------------------------------------------------------------
// RepTree.pas
function  InitTreeBuilderEx  (Integer,Word,Byte)         : #TPtr; external 'G_Tree.dll';
function  InitTreeBuilder    (Integer)                   : #TPtr; external 'G_Tree.dll';
//------------------------------------------------------------------------------
// TreeRep.pas
procedure DoneTreeBuilder    (#TPtr)                            ; external 'G_Tree.dll';
function  SetReportStyles    (#TPtr,LongInt,String)    : boolean; external 'G_Tree.dll';
function  TuneLevel          (#TPtr,Byte,Word,LongInt,String,Word,LongInt,Word)
                                                         : boolean; external 'G_Tree.dll';
function  TuneSum            (#TPtr,Byte,Byte,LongInt) : boolean; external 'G_Tree.dll';
function  BuildTunedTree     (#TPtr,Word)              : boolean; external 'G_Tree.dll';
Procedure SetTempIndex       (#TPtr,Byte)                       ; external 'G_Tree.dll';
function  AddSorts           (#TPtr,String)            : longint; external 'G_Tree.dll';
procedure MakeSortsInTempIer (#TPtr)                            ; external 'G_Tree.dll';
procedure TuneStructName     (#TPtr,Byte,Word)                  ; external 'G_Tree.dll';
function  TuneKAULevel       (#TPtr,Byte,Word)         : word   ; external 'G_Tree.dll';
procedure TuneRuleSort       (#TPtr,Byte,Word)                  ; external 'G_Tree.dll';
//------------------------------------------------------------------------------
