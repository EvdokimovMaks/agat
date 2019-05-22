//------------------------------------------------------------------------------
//                                           (c) корпорация ГАЛАКТИКА
// Версия        : 7.12
// Назначение    : Отчет по привязки КПС к должностям по подразделениям
//------------------------------------------------------------------------------

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! Departments_KPS
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
Отчет по привязки КПС к должностям по подразделениям
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
 _RCOEF

.endfields
 NAME_DOC : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ Departments_KPSNewDeptCycle CheckEnter
 Naim_Dept: ^
.{ Departments_KPSNewPostCycle CheckEnter
   _POSTCAT : ^
   _VREDCAT : ^
   _USLCAT  : ^
   _TERRUSL : ^
   _RCOEF   : ^
.} //Departments_KPSPostCycle
.} //Departments_KPSDeptCycle
.endform
