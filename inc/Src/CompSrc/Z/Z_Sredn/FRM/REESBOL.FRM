/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 7.11                                                      ║
 ║ Назначение    : Реестры отчетности по отпускам                            ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Реестры отчетности по отпускам
#end
.set name='reesbol'
.p 60
.hide
.fields
 Pred
 Podr
 Mes God
 Name_Rees
 strdat
 VidPos Кол_опл_дн: double Кол_раб_дн: double Кол_календ_дн: double Кол_раб_час: double Summa: double
 KolRab: word
 IКол_опл_дн IКол_раб_дн IКол_календ_дн IКол_раб_час ISumma IKolRab
.endfields

  ^
  ^
  ^^
  ^
  ^
.{ CheckEnter reesbol_1
.{ CheckEnter reesbol_2
 ^^^^^^^
.}
.}
 ^^^^^^
.endform

.linkform 'reesbol_01' prototype is 'reesbol'
.nameinlist 'Полная форма реестра'
.group 'Реестр отчетности по отпускам'
.p 60
.fields
CommonFormHeader
.endfields
^
.var KolList  : integer
     SumList1 : double
     SumList2 : double
     SumList3 : double
     SumList4 : double
     SumList5 : double
     SumList6 : word
 .endvar
.fields
 Pred
 Podr
 Mes God
 Name_Rees + ' '+strdat
.endfields
.begin  KolList  := 0;
        SumList1 := 0;
        SumList2 := 0;
        SumList3 := 0;
        SumList4 := 0;
        SumList5 := 0;
        SumList6 := 0;
   end.

 И  Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Реестр по отпускам на ^ месяц &&&& г.

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 И
.{ CheckEnter reesbol_1
.[h OverWrite
.begin KolList:= KolList+1 end.
 И ┌──────────────────┬───────────────────────────────┬──────────┬──────────────┬──────────┐
 │        Вид       │        Количество дней        │Количество│    Сумма     │Количество│
 │      отпуска     ├────────┬──────────┬───────────┤раб.часов │              │работников│
 │                  │оплачив.│по графику│календарных│по графику│              │          │
 ├──────────────────┼────────┼──────────┼───────────┼──────────┼──────────────┼──────────┤ И
.]h
.{ CheckEnter reesbol_2
.begin SumList1 := SumList1 + Кол_опл_дн;
       SumList2 := SumList2 + Кол_раб_дн;
       SumList3 := SumList3 + Кол_календ_дн;
       SumList4 := SumList4 + Кол_раб_час;
       SumList5 := SumList5 + Summa;
       SumList6 := SumList6 + KolRab;
  end.
.fields
 VidPos Кол_опл_дн Кол_раб_дн Кол_календ_дн Кол_раб_час Summa KolRab
.endfields
 И │@@@@@@@@@@@@@@@@@@│&'&&&&.&│&'&&&&&&.&│&'&&&&&&&.&│&'&&&&&&.&│&'&&&&&&&&&.&&│&'&&&&&&&&│ И
.}
.[f OverWrite
.fields
 KolList
 SumList1 SumList2 SumList3 SumList4 SumList5 SumList6
.endfields
 И └──────────────────┴────────┴──────────┴───────────┴──────────┴──────────────┴──────────┘
 Итого по листу &&&:  &'&&&&.& &'&&&&&&.& &'&&&&&&&.& &'&&&&&&.& &'&&&&&&&&&.&& &'&&&&&&&&
 И
.begin SumList1:=0;
       SumList2:=0;
       SumList3:=0;
       SumList4:=0;
       SumList5:=0;
       SumList6:=0;
  end.
.]f
.}
.fields
 KolList
 IКол_опл_дн IКол_раб_дн IКол_календ_дн IКол_раб_час ISumma IKolRab
.endfields
 И
 Количество листов &&&

 ИТОГО ПО РЕЕСТРУ     &'&&&&.& &'&&&&&&.& &'&&&&&&&.& &'&&&&&&.& &'&&&&&&&&&.&& &'&&&&&&&&
 И
.endform
