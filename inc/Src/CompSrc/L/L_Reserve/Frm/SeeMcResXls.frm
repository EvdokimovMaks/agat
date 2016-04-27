//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 7.12 - логистика
// Просмотр резерва матценностей
//
//********************************************************************************

#doc
Просмотр резерва матценностей
#end
.set name='SeeMCResXls'
.NameInList 'Подробная ведомость по всем матценностям'
.hide
.var
  hdr : string
.endvar
.fields
  dfor
  cMC NameMC UchEd NalOrg:double ResOrg:double
  IsPros DatDoc NomDoc TipDoc ResDoc:double EdIzm ResDocUch:double OtvHr:double Byer Srok FIO Sklad
  DetailKol:double DetailPodr DetailMol DetailParty
  datotch MCres:double MCresUch:double MCotv:double MCpros:double
  remark
.endfields
 ^

.{
^ ^ ^ ^ ^
.{

^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ CheckEnter SeeMCResXls_Do_Loop
^ ^ ^ ^
.}
.}
^ ^ ^ ^ ^
.{
^
.}
.}

.endform