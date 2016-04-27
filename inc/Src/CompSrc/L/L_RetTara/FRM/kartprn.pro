#doc
Задолженность по возвратной таре
#end
.form 'Kartprn'
.NameInList 'Задолженность по возвратной таре - prototype'
.hide
.var
  MC1,MC2,MC3,MC4,MC5,MC6,MC7,MC8,MC9,MC10,MC11,MC12,MC13,MC14,MC15,
  KontrAg1,KontrAg2,KontrAg3,KontrAg4,KontrAg5,KontrAg6,
  KontrAg7,KontrAg8,KontrAg9,KontrAg10,KontrAg11,KontrAg12,
  KontrAg13,KontrAg14,KontrAg15,
  Otch1,Otch2,Otch3,Otch4,Otch5,Otch6,Otch7,Otch8,Otch9,
  Otch10,Otch11,Otch12,Otch13,Otch14,Otch15  : double ;
.endvar
.fields
  карточка_до  : string
  str          : string
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
 ^ ^ ^ ^
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

  кол_отпущено     : double
  сумма_отп_НДЕ    : double
  сумма_отп_вал    : double

  кол_возвращено   : double
  сумма_возвр_НДЕ  : double
  сумма_возвр_вал  : double

  кол_возвращено_норм   : double
  сумма_возвр_НДЕ_норм  : double
  сумма_возвр_вал_норм  : double

  кол_возвращено_свнорм   : double
  сумма_возвр_НДЕ_свнорм  : double
  сумма_возвр_вал_свнорм  : double


  кол_оплачено   : double
  сумма_опл_НДЕ  : double
  сумма_опл_вал  : double

.endfields
.begin
  Otch1 := 0 ;
  Otch2 := 0 ;
  Otch3 := 0 ;
  Otch4 := 0 ;
  Otch5 := 0 ;
  Otch6 := 0 ;
  Otch7 := 0 ;
  Otch8 := 0 ;
  Otch9 := 0 ;
  Otch10 := 0 ;
  Otch11 := 0 ;
  Otch12 := 0 ;
  Otch13 := 0 ;
  Otch14 := 0 ;
  Otch15 := 0 ;

end.
.{ CHECKENTER KartKontrAg
 ^ ^ ^
.begin
  KontrAg1 := 0 ;
  KontrAg2 := 0 ;
  KontrAg3 := 0 ;
  KontrAg4 := 0 ;
  KontrAg5 := 0 ;
  KontrAg6 := 0 ;
  KontrAg7 := 0 ;
  KontrAg8 := 0 ;
  KontrAg9 := 0 ;
  KontrAg10 := 0 ;
  KontrAg11 := 0 ;
  KontrAg12 := 0 ;
  KontrAg13 := 0 ;
  KontrAg14 := 0 ;
  KontrAg15 := 0 ;

end.
.{ CHECKENTER KartMC
 ^ ^ ^
.begin
  MC1 := 0 ;
  MC2 := 0 ;
  MC3 := 0 ;
  MC4 := 0 ;
  MC5 := 0 ;
  MC6 := 0 ;
  MC7 := 0 ;
  MC8 := 0 ;
  MC9 := 0 ;
  MC10 := 0 ;
  MC11 := 0 ;
  MC12 := 0 ;
  MC13 := 0 ;
  MC14 := 0 ;
  MC15 := 0 ;
end.
.{ CHECKENTER KartDocOsn
 ^ ^ ^
  единица_изм ^
  сокр_единица_изм ^
  приход ^ ^ ^ ^ ^ ^ ^ ^ ^
  расход ^ ^ ^
  оплата ^ ^ ^
.begin
  MC1 := MC1 + кол_отпущено ;
  MC2 := MC2 + сумма_отп_НДЕ ;
  MC3 := MC3 + сумма_отп_вал ;
  MC4 := MC4 + кол_возвращено ;
  MC5 := MC5 + сумма_возвр_НДЕ ;
  MC6 := MC6 + сумма_возвр_вал ;

  MC7 := MC7 + кол_возвращено_норм ;
  MC8 := MC8 + сумма_возвр_НДЕ_норм ;
  MC9 := MC9 + сумма_возвр_вал_норм ;

  MC10 := MC10 + кол_возвращено_свнорм ;
  MC11 := MC11 + сумма_возвр_НДЕ_свнорм ;
  MC12 := MC12 + сумма_возвр_вал_свнорм ;

  MC13 := MC13 + кол_оплачено ;
  MC14 := MC14 + сумма_опл_НДЕ ;
  MC15 := MC15 + сумма_опл_вал ;

end.
.} // VozvDocOsn
.begin
  KontrAg1 := KontrAg1 + MC1 ;
  KontrAg2 := KontrAg2 + MC2 ;
  KontrAg3 := KontrAg3 + MC3 ;
  KontrAg4 := KontrAg4 + MC4 ;
  KontrAg5 := KontrAg5 + MC5 ;
  KontrAg6 := KontrAg6 + MC6 ;
  KontrAg7 := KontrAg7 + MC7 ;
  KontrAg8 := KontrAg8 + MC8 ;
  KontrAg9 := KontrAg9 + MC9 ;
  KontrAg10 := KontrAg10 + MC10 ;
  KontrAg11 := KontrAg11 + MC11 ;
  KontrAg12 := KontrAg12 + MC12 ;
  KontrAg13 := KontrAg13 + MC13 ;
  KontrAg14 := KontrAg14 + MC14 ;
  KontrAg15 := KontrAg15 + MC15 ;
end.
.} // VozvMC
.begin
  Otch1 := Otch1 + KontrAg1 ;
  Otch2 := Otch2 + KontrAg2 ;
  Otch3 := Otch3 + KontrAg3 ;
  Otch4 := Otch4 + KontrAg4 ;
  Otch5 := Otch5 + KontrAg5 ;
  Otch6 := Otch6 + KontrAg6 ;
  Otch7 := Otch7 + KontrAg7 ;
  Otch8 := Otch8 + KontrAg8 ;
  Otch9 := Otch9 + KontrAg9 ;
  Otch10 := Otch10 + KontrAg10 ;
  Otch11 := Otch11 + KontrAg11 ;
  Otch12 := Otch12 + KontrAg12 ;
  Otch13 := Otch13 + KontrAg13 ;
  Otch14 := Otch14 + KontrAg14 ;
  Otch15 := Otch15 + KontrAg15 ;
end.
.} // VozvKontrAg
.endform
