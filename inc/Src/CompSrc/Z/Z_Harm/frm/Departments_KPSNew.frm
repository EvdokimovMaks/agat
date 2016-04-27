//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика ERP 7.12 - Управление персоналом
// Отчет о условиях труда на рабочих местах
//------------------------------------------------------------------------------

#doc
Отчет о условиях труда на рабочих местах
#end
.form Departments_KPSNew
.hide
.fields

 NAME_DOC

 NAME_DEPT

 _POSTCAT
 _VREDCAT
 _USLCAT
 _TERRUSL
 _VISL
 _KlassPost
 _RCOEF

.endfields
 NAME_DOC : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ Departments_KPSNewDeptCycle CheckEnter
 Naim_Dept: ^
.{ Departments_KPSNewPostCycle CheckEnter
   _POSTCAT     : ^
   _VREDCAT     : ^
   _USLCAT      : ^
   _TERRUSL     : ^
   _VISL        : ^
   _KlassPost   : ^
   _RCOEF       : ^
.} //Departments_KPSPostCycle
.} //Departments_KPSDeptCycle
.endform
