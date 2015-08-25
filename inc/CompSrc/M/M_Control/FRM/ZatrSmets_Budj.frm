/*
 ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
 º                     (c) 2001 ª®à¯®à æ¨ï ƒ€‹€Š’ˆŠ€                         º
 º à®¥ªâ        : ƒ€‹€Š’ˆŠ€                                                 º
 º ‘¨áâ¥¬        : Š®­âà®««¨­£                                               º
 º ‚¥àá¨ï        : 7.1                                                       º
 º  §­ ç¥­¨¥    : ‘¢®¤­ ï á¬¥â  § âà â                                      º
 º â¢¥âáâ¢¥­­ë© : “ªà ¨­ª® ‚. (UkrV)                                        º
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
*/
.set name = 'ContrZatrSmets_Budjet'
.nameinlist ' §®¢ ï ä®à¬ '
.hide
.fields
DataTimeUserStr

  Variant
  
  DobZatr
  Formula

  NameSt

  NamePeriod
  NameVidBudj
  NameBudj
  NameVarCalc
  NameBal
  TitleNamePodr
  NamePodr

  NomStat
  Statya
  Summa

  SumStolbBudj
.endfields

^
  ^
  ^
  ^

  .{.?ZatrSmets_Budj_L01;.}
 ^  .{.?ZatrSmets_Budj_L1; ^.}
    .{.?ZatrSmets_Budj_L2; ^.}
    .{.?ZatrSmets_Budj_L21; ^.}
    .{.?ZatrSmets_Budj_L22; ^.}
    .{.?ZatrSmets_Budj_L23; ^.}
    .{.?ZatrSmets_Budj_L24; ^ ^.}

  .{.?ZatrSmets_Budj_L02;.}
.{
  ^ ^ .{.?ZatrSmets_Budj_L3; ^.}
.}
  .{.?ZatrSmets_Budj_L03;.}

 .{.?ZatrSmets_Budj_L4; ^.}

.endform

.linkform 'ContrZatrSmets_Budjet_01' prototype is 'ContrZatrSmets_Budjet'
.GROUP '‘¢®¤­ ï á¬¥â  § âà â'
.nameinlist '‘¢®¤­ ï á¬¥â  § âà â.'
.fields
  
DataTimeUserStr
  Variant
  
  DobZatr
  Formula

  NameSt

  NamePeriod
  NameVidBudj
  NameBudj
  NameVarCalc
  NameBal
  TitleNamePodr
  NamePodr

  NomStat
  Statya
  Summa

  SumStolbBudj
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

             ‘¢®¤­ ï á¬¥â  § âà â


‡ âà âë:               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
‘ã¬¬  (ª®¬¡¨­ æ¨ï áã¬¬): @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.{.?ZatrSmets_Budj_L01;ÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.}
          ³ ¨¬¥­®¢ ­¨¥ áâ â¥© @@@@@@@@@@@@ .{.?ZatrSmets_Budj_L1;³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
          ³                                 .{.?ZatrSmets_Budj_L2;³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 Š®¤      ³                                 .{.?ZatrSmets_Budj_L21;³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
          ³                                 .{.?ZatrSmets_Budj_L22;³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
          ³                                 .{.?ZatrSmets_Budj_L23;³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
          ³                                 .{.?ZatrSmets_Budj_L24;³@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@.}
ÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.{.?ZatrSmets_Budj_L02;ÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.}
.{
@@@@@@@@@@³@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?ZatrSmets_Budj_L3;³ &'&&&&&&&&&&&&&&&&&.&&        .}
.}
ÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.{.?ZatrSmets_Budj_L03;ÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ.}
‚‘…ƒ                                       .{.?ZatrSmets_Budj_L4;  &'&&&&&&&&&&&&&&&&&.&&         .}


.endform