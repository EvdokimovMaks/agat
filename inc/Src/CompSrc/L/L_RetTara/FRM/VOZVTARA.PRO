#doc
Задолженность по возвратной таре
#end
.form 'VozvTara'
.NameInList 'Задолженность по возвратной таре - prototype'
.hide
.var
  MC1,MC2,MC3,MC4,MC5,MC6,
  KontrAg1,KontrAg2,KontrAg3,KontrAg4,KontrAg5,KontrAg6,
  Otch1,Otch2,Otch3,Otch4,Otch5,Otch6                    : double ;
.endvar
.fields
  // фильтр по датам
  begdate      : date :'m:DD/MM/YYYY'
  enddate      : date :'m:DD/MM/YYYY'

  ValTar       : comp    // код валюты для отчетов
  ValTarName   : string  // ее наименование
  ValTarSimv   : string  // символ валюты
  ValNatName   : string  // наименование нац.валюты
  ValNatSimv   : string  // символ нац. валюты
  nRecPrice    : comp    // nRec прайс-листа

  итого_цикл_1 : string  // итого по : - уровень 1
  итого_цикл_2 : string  // итого по : - уровень 2
  порядок_сорт : word    // вариант сортировки в отчете
.endfields
 ^ ^
 ^ ^ ^ ^ ^ ^
 ^ ^
 ^
.fields
  контрагент_нрек  : comp
  контрагент_имя   : string
  контрагент_унн   : string

  мц_нрек          : comp
  мц_имя           : string
  мц_ном           : string

  до_нрек          : comp
  до_дата          : string
  до_номер         : string

  единица_изм      : string
  сокр_единица_изм : string

  долг_кол_в_уч_ед : double
  кол_отпущено     : double
  сумма_отп_НДЕ    : double
  сумма_отп_вал    : double

  кол_возвращено   : double
  сумма_возвр_НДЕ  : double
  сумма_возвр_вал  : double
.endfields
.begin
  Otch1 := 0 ;
  Otch2 := 0 ;
  Otch3 := 0 ;
  Otch4 := 0 ;
  Otch5 := 0 ;
  Otch6 := 0 ;
end.
.{ CHECKENTER VozvKontrAg
 ^ ^ ^
.begin
  KontrAg1 := 0 ;
  KontrAg2 := 0 ;
  KontrAg3 := 0 ;
  KontrAg4 := 0 ;
  KontrAg5 := 0 ;
  KontrAg6 := 0 ;
end.
.{ CHECKENTER VozvMC
 ^ ^ ^
.begin
  MC1 := 0 ;
  MC2 := 0 ;
  MC3 := 0 ;
  MC4 := 0 ;
  MC5 := 0 ;
  MC6 := 0 ;
end.
.{ CHECKENTER VozvDocOsn
 ^ ^ ^
  единица_изм ^
  сокр_единица_изм ^
  долг_кол_в_уч_ед ^
  приход ^ ^ ^
  расход ^ ^ ^
.begin
  MC1 := MC1 + кол_отпущено ;
  MC2 := MC2 + сумма_отп_НДЕ ;
  MC3 := MC3 + сумма_отп_вал ;
  MC4 := MC4 + кол_возвращено ;
  MC5 := MC5 + сумма_возвр_НДЕ ;
  MC6 := MC6 + сумма_возвр_вал ;
end.
.} // VozvDocOsn
.begin
  KontrAg1 := KontrAg1 + MC1 ;
  KontrAg2 := KontrAg2 + MC2 ;
  KontrAg3 := KontrAg3 + MC3 ;
  KontrAg4 := KontrAg4 + MC4 ;
  KontrAg5 := KontrAg5 + MC5 ;
  KontrAg6 := KontrAg6 + MC6 ;
end.
.} // VozvMC
.begin
  Otch1 := Otch1 + KontrAg1 ;
  Otch2 := Otch2 + KontrAg2 ;
  Otch3 := Otch3 + KontrAg3 ;
  Otch4 := Otch4 + KontrAg4 ;
  Otch5 := Otch5 + KontrAg5 ;
  Otch6 := Otch6 + KontrAg6 ;
end.
.} // VozvKontrAg
.endform
