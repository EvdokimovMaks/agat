#doc
Задолженность по возвратной таре
#end
.form 'Plat'
.NameInList 'Задолженность по возвратной таре - prototype'
.hide
!.var
!  MC1,MC2,MC3,MC4,MC5,MC6,
!  KontrAg1,KontrAg2,KontrAg3,KontrAg4,KontrAg5,KontrAg6,
!  Otch1,Otch2,Otch3,Otch4,Otch5,Otch6                    : double ;
!.endvar
.fields
  // фильтр по датам
  begdate      : date :'m:DD/MM/YYYY'
  enddate      : date :'m:DD/MM/YYYY'

.endfields
 ^ ^
.fields
  контрагент_имя   : string
  d0   : double
  d1   : double
  d2   : double
  d3   : double
!  контрагент_унн   : string
.endfields
.{
 ^ ^ ^ ^ ^
.} // VozvKontrAg
.endform
