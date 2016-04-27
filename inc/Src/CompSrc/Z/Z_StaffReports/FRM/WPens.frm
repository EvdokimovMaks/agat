#doc
  Форма о днях рождения сотрудников
#end
.form Wpens
.hide
.fields
KatOrgname
ReportDate
nameServ1
nameServ2
nameServ3
npp
FIO
BornDate
Serv1
Serv2
Serv3
Post
Kategory
NPFmember
.endfields
 ^ ^  ^ ^ ^
.{ WPens_persCycle checkEnter
	npp ^
	FIO ^
	BornDate ^
	Serv1 ^
	Serv2 ^
	Serv3 ^
	Post  ^
	Kategory ^
	NPFmember ^
.}
.endform
