//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 7.12 - ��ࠢ����� ���ᮭ����
// ���� � �᫮���� ��㤠 �� ࠡ��� �����
//------------------------------------------------------------------------------

#doc
���� � �᫮���� ��㤠 �� ࠡ��� �����
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
