/*
 г===========================================================================¬
 ¦                     (c)корпорация ГАЛАКТИКА                               ¦
 ¦ Проект        : ГАЛАКТИКА                                                 ¦
 ¦ Система       : Заработная плата                                          ¦
 ¦ Версия        : 8.10                                                      ¦
 ¦ Назначение    : Протокол заседания комиссии по назначению пособий         ¦
 L===========================================================================-
*/

#doc
Протокол заседания комиссии по назначению пособий 
#end
.set name= 'ProtokolPos'
.hide
.fields
NomProtok
DayForm
MonthForm
YearForm
NameOrg
PredsedKom
ChlenKom1
ChlenKom2
ChlenKom3

FioPerson
FioPersonSecond

VidPosSum


VidPosOne
Psum

VidEverPos
FioChild
DateBornChild
Proc
DateBeg
DateEnd
.endfields

^^^^^
^^^^
.{  Pos_01 CheckEnter
 ^
 ^
.{  Pos_04 CheckEnter
 ^
.}
.{  Pos_02 CheckEnter
 ^^
.}
.{  Pos_03 CheckEnter
 ^^^^^^
.}
.}

.endform          
 
