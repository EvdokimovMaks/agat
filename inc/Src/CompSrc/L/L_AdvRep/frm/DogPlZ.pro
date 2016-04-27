#doc
Отчет о неразнесенных по договорам платежных и зачетных документов
#end
.form 'DogPlZ'
.hide
.fields
  begdate      : date :'m:DD/MM/YYYY'
  enddate      : date :'m:DD/MM/YYYY'
.endfields
 ^ ^
.fields
  контрагент_имя   : string
  d1   : double
  d2   : double
  d3   : double
!  контрагент_унн   : string
.endfields
.{
^ ^ ^ ^
.if PlZ_NextAgent
.end
.} // VozvKontrAg
.endform
