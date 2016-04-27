#doc
  Список перспективных специалистов
#end
.form persSpec
.hide
.fields
katOrgName
BossName
ReportDate
Age
Department
npp
FIO
Post
.endfields
 ^ ^ ^ ^
.{PersSpec1ICycle CheckEnter
.if PS_levelCheck
 ^
.end
.{PersSpec2ICycle  CheckEnter
 ^ ^ ^
.}
.}
.endform
