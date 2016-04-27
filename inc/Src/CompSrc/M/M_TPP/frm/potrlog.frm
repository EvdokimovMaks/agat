//------------------------------------------------------------------------------
//                                                      (c) корпорация ГАЛАКТИКА
// ГАЛАКТИКА 7.11 - Производственное планирование
// протокол разузлования
//------------------------------------------------------------------------------

#doc
Базовая форма протокола разузлования</brief>
#end

.form PotrLog
.hide
.fields
  FldHdr1
  FldHdr2
  FldHdr3
  FldHdr4
  FldStr1
.endfields
 ^
 ^
 ^
 ^
.{ PotrLoopLocal
^
.}
.endform
//****************************************************************************
.linkform PotrLog01 prototype is PotrLog
.group 'PotrLog01'
.nameinlist 'Протокол разузлования'
.fields
  CommonFormHeader
  FldHdr1
  FldHdr2
  FldHdr3
  FldHdr4
  FldStr1
.endfields
 ^
 ПРОТОКОЛ РАЗУЗЛОВАНИЯ ^

 ^
 ^
 ^

.{ PotrLoopLocal
 ^
.}
.endform
//****************************************************************************
//****************************************************************************
.linkform PotrLog02 prototype is PotrLog
.group 'PotrLog02'
.nameinlist 'Протокол проведения изменений'
.fields
  CommonFormHeader
  FldHdr1
  FldHdr2
  FldHdr3
  FldHdr4
  FldStr1
.endfields
 ^
 ^

 ^
 ^
 ^

.{ PotrLoopLocal
 ^
.}
.endform
//****************************************************************************
//****************************************************************************
.linkform PotrLog04 prototype is PotrLog
.group 'PotrLog04'
.nameinlist 'Протокол'
.fields
  CommonFormHeader
  FldHdr1
  FldStr1
.endfields
 ^
 ^

.{ PotrLoopLocal
 ^
.}
.endform
//****************************************************************************