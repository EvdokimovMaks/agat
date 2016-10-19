//-----------------------------------------------------------------------------
//                                                    (c) корпорация ГАЛАКТИКА
// Галактика 7.12 - заработная плата
// Ведомость начислений и удержаний по месяцам, за которые
//-----------------------------------------------------------------------------
#doc
Ведомость начислений и удержаний
#end

.set name ='vedgran'
.hide


.fields
  Pred
  Month1
  YearOtch1
  Month2
  YearOtch2
.endfields

 ^ ^ ^ ^ ^
.{ CheckEnter VedGran_NachAll
.{ CheckEnter VedGran_02All
.fields
 _NVidOp
.endfields
 ^

.{ CheckEnter VedGran_03All
.fields
  _VidOp
  _Mes
  _Год
  _NVidOp_Cycle
  _Dn
  _Chas
  _Nach : double
.endfields
 ^^^^^^^
.}

.fields
  _Itogo_vidOp
  _Itogo_Dn
  _Itogo_Chas
  _Itogo_Nach : double
.endfields
 Итого по ^ ^ ^ ^ 
.}

.fields
  _Vsego_Dn
  _Vsego_Chas
  _Vsego_Nach : double
.endfields
 Всего ^ ^ ^ 
.}
.{ CheckEnter VedGran_UdAll
.{ CheckEnter VedGran_04All
.fields
  _NVidOpU
.endfields

 ^

.{ CheckEnter VedGran_05All
.fields
  _VidOpU
  _MesU
  _ГодU
  _NVidOp_CycleU
  _DnU
  _ChasU
  _NachU : double
.endfields
 ^^^^^^^
.}

.fields
  _Itogo_vidOpU
  _Itogo_DnU
  _Itogo_ChasU
  _Itogo_NachU : double
 .endfields

Итого по ^ ^ ^ ^ 
.}

.fields
 _Vsego_DnU
 _Vsego_ChasU
 _Vsego_NachU : double
.endfields
Всего ^ ^ ^ 
.}


.{ CheckEnter VedGran_Select
.fields
  Podr
.endfields

.{ CheckEnter VedGran_Podr
 ^
.{ CheckEnter VedGran_Nach
.{ CheckEnter VedGran_02
.fields
  NVidOp
.endfields
 ^

.{ CheckEnter VedGran_03
.fields
  VidOp
  Mes
  Год
  NVidOp_Cycle
  Dn
  Chas
  Nach : double
.endfields
 ^^^^^^^
.}

.fields
  Itogo_vidOp
  Itogo_Dn
  Itogo_Chas
  Itogo_Nach : double
.endfields
 Итого по ^ ^ ^ ^ 
.}

.fields
  Vsego_Dn
  Vsego_Chas
  Vsego_Nach : double
.endfields
 Всего ^ ^ ^ 
.}
.{ CheckEnter VedGran_Ud
.{ CheckEnter VedGran_04
.fields
  NVidOpU
.endfields

 ^

.{ CheckEnter VedGran_05
.fields
  VidOpU
  MesU
  ГодU
  NVidOp_CycleU
  DnU
  ChasU
  NachU : double
.endfields
 ^^^^^^^
.}

.fields
  Itogo_vidOpU
  Itogo_DnU
  Itogo_ChasU
  Itogo_NachU : double
 .endfields

Итого по ^ ^ ^ ^ 
.}

.fields
  Vsego_DnU
  Vsego_ChasU
  Vsego_NachU : double
.endfields
Всего ^ ^ ^ 
.}
.}
.}

.endform
