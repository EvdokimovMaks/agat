/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2004 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 7.11                                                      ║
 ║ Назначение    : Реестр отчетности по заболеваемости                       ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Реестр отчетности по заболеваемости
#end
.set name='reesubol'
.p 60
.hide
.fields
 Pred
 Podr
 Mes God
 Name_Rees
 strdat
 VidPos
 Кол_календ_дн: double
 Кол_раб_дн: double   Кол_раб_час: double   Summa: double
 Кол_раб_дн_o: double Кол_раб_час_o: double Summa_o: double
 Кол_раб_дн_d: double Кол_раб_час_d: double Summa_d: double 
 SumPrev: double KolRab: word CountEvents: word
 IКол_календ_дн
 IКол_раб_дн   IКол_раб_час   ISumma
 IКол_раб_дн_o IКол_раб_час_o ISumma_o
 IКол_раб_дн_d IКол_раб_час_d ISumma_d
 ISumPrev IKolRab ICountEvents
.endfields

  ^
  ^
  ^^
  ^
  ^
.{ CheckEnter reesubol_1
.{ CheckEnter reesubol_2
 ^ ^ ^^^ ^^^ ^^^ ^ ^ ^
.}
.}
   ^ ^^^ ^^^ ^^^ ^ ^ ^
.endform

.linkform 'reesubol_01' prototype is 'reesubol'
.nameinlist 'Полная форма реестра'
.group 'Реестр отчетности по заболеваемости1'
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
     SumList5 : word
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

  Предприятие  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   БРеестр  заболеваемости на ^ месяц &&&& г. Б

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{ CheckEnter reesubol_1
.[h OverWrite
.begin KolList:= KolList+1 end.
 И ┌────────────────┬──────────────┬──────────────┬──────────────┬──────────────┬──────────┬──────────┐
 │     Группа     │Кол-во календ.│Кол-во рабочих│Кол-во рабочих│    Сумма     │Количество│Количество│
 │ заболеваемости │дней болезни  │дней болезни  │часов  болезни│   пособия    │работников│ случаев  │
 ├────────────────┼──────────────┼──────────────┼──────────────┼──────────────┼──────────┼──────────┤ И
.]h
.{ CheckEnter reesubol_2
.begin SumList1 := SumList1 + Кол_раб_дн;
       SumList2 := SumList2 + Кол_раб_час;
       SumList3 := SumList3 + Кол_календ_дн;
       SumList4 := SumList4 + Summa;
       SumList5 := SumList5 + KolRab;
       SumList6 := SumList6 + CountEvents;
  end.
.fields
 VidPos Кол_календ_дн Кол_раб_дн Кол_раб_час Summa KolRab CountEvents
.endfields
 И │@@@@@@@@@@@@@@@@│  &'&&&&&&&&&&│  &'&&&&&&&.&&│&'&&&&&&&&&.&&│&'&&&&&&&&&.&&│&'&&&&&&&&│&'&&&&&&&&│ И

.}
.[f OverWrite
.fields
 KolList
 SumList3 SumList1 SumList2 SumList4 SumList5 SumList6
.endfields
 И └────────────────┴──────────────┴──────────────┴──────────────┴──────────────┴──────────┴──────────┘
Итого по листу &&&: &'&&&&&&&&&&& &'&&&&&&&&.&&  &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&& &'&&&&&&&&
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
 IКол_календ_дн  IКол_раб_дн   IКол_раб_час  ISumma IKolRab ICountEvents
.endfields
 И
 Количество листов &&&

 ИТОГО ПО РЕЕСТРУ  &'&&&&&&&&&&&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&& &'&&&&&&&&&
 И
.endform
!
!
!
.linkform 'reesubol_02' prototype is 'reesubol'
.nameinlist 'Полная форма реестра'
.group 'Реестр отчетности по заболеваемости2'
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
     SumList5 : word
     SumList6 : word
.endvar
.fields
 Pred
 Podr
 Mes God
 Name_Rees+ ' '+strdat
.endfields
.begin  KolList  := 0;
        SumList1 := 0;
        SumList2 := 0;
        SumList3 := 0;
        SumList4 := 0;
        SumList5 := 0;
        SumList6 := 0;
  end.

  Предприятие  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   БРеестр  заболеваемости на ^ месяц &&&& г. Б

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{ CheckEnter reesubol_1
.[h OverWrite
.begin KolList:= KolList+1 end.
 И ┌─────────────────┬──────────────┬──────────────┬──────────────┬──────────────┬──────────┬──────────┐
 │     Группа      │Кол-во календ.│Кол-во рабочих│Кол-во рабочих│    Сумма     │Количество│Количество│
 │ заболеваемости  │дней болезни  │дней болезни  │часов  болезни│   пособия    │работников│  случаев │
 ├─────────────────┼──────────────┼──────────────┼──────────────┼──────────────┼──────────┼──────────┤ И
.]h
.{ CheckEnter reesubol_2
.begin SumList1 := SumList1 + Кол_раб_дн;
       SumList2 := SumList2 + Кол_раб_час;
       SumList3 := SumList3 + Кол_календ_дн;
       SumList4 := SumList4 + Summa;
       SumList5 := SumList5 + KolRab;
       SumList6 := SumList6 + CountEvents;
  end.
.fields
 VidPos Кол_календ_дн Кол_раб_дн Кол_раб_час Summa  KolRab CountEvents
.endfields
 И │@@@@@@@@@@@@@@@@@│ &'&&&&&&&&&&&│ &'&&&&&&&&.&&│&'&&&&&&&&&.&&│&'&&&&&&&&&.&&│&'&&&&&&&&│&'&&&&&&&&│ И
.}
.[f OverWrite
.fields
 KolList
 SumList3 SumList1 SumList2 SumList4 SumList5 SumList6
.endfields
 И └─────────────────┴──────────────┴──────────────┴──────────────┴──────────────┴──────────┴──────────┘
Итого по листу &&&: &'&&&&&&&&&&&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&& &'&&&&&&&&
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
 IКол_календ_дн  IКол_раб_дн   IКол_раб_час   ISumma IKolRab ICountEvents
.endfields
 И
 Количество листов &&&

 ИТОГО ПО РЕЕСТРУ   &'&&&&&&&&&&&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&&&&& &'&&&&&&&&
 И
.endform
!
!
!
.linkform 'reesubol_03' prototype is 'reesubol'
.nameinlist 'Раздельно по основному и дополнительному больничному'
.group 'Реестр отчетности по заболеваемости2'
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
     SumList1_d: double
     SumList2_d: double
     SumList4_d: double
     SumListPrev: double
     SumList5  : word
     SumList6  : word
.endvar
.fields
 Pred
 Podr
 Mes God
 Name_Rees+ ' '+strdat
.endfields
.begin  KolList  := 0;
        SumList1 := 0;
        SumList2 := 0;
        SumList3 := 0;
        SumList4 := 0;
        SumList1_d:= 0;
        SumList2_d:= 0;
        SumList4_d:= 0;
        SumListPrev:= 0;
        SumList5 := 0;
        SumList6   := 0;
   end.

 Ш  Предприятие  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Реестр  заболеваемости на ^ месяц &&&& г.

  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{ CheckEnter reesubol_1
.[h OverWrite
.begin KolList:= KolList+1 end.
 ┌────────────────┬───────────┬──────────────────────────────────────────┬──────────────────────────────────────────┬───────────────┬──────────┬──────────┐
 │                │количество │    По основному больничному листу        │  По дополнительному больничному листу    │     Сумма     │Количество│Количество│
 │    Группа      │календарных├────────────┬─────────────┬───────────────┼────────────┬─────────────┬───────────────┤   превышения  │работников│  случаев │
 │ заболеваемости │   дней    │кол-во раб. │кол-во раб.  │     Сумма     │кол-во раб. │кол-во раб.  │     Сумма     │               │          │          │
 │                │ болезни   │дней болезни│часов болезни│    пособия    │дней болезни│часов болезни│    пособия    │               │          │          │
 ├────────────────┼───────────┼────────────┼─────────────┼───────────────┼────────────┼─────────────┼───────────────┼───────────────┼──────────┼──────────┤
.]h
.{ CheckEnter reesubol_2
.fields
 VidPos Кол_календ_дн Кол_раб_дн_o Кол_раб_час_o Summa_o
 Кол_раб_дн_d Кол_раб_час_d  Summa_d SumPrev KolRab CountEvents
.endfields
.begin
  SumList1:= SumList1 + Кол_раб_дн_o;
  SumList2:= SumList2 + Кол_раб_час_o;
  SumList3:= SumList3 + Кол_календ_дн;
  SumList4:= SumList4 + Summa_o;
  SumList1_d:= SumList1_d + Кол_раб_дн_d;
  SumList2_d:= SumList2_d + Кол_раб_час_d;
  SumList4_d:= SumList4_d + Summa_d;
  SumListPrev:= SumListPrev + SumPrev;
  SumList5  := SumList5 + KolRab;
  SumList6  := SumList6 + CountEvents;
  end.
 │@@@@@@@@@@@@@@@@│ &'&&&&&&&&│&'&&&&&&&.&&│&'&&&&&&&&.&&│&'&&&&&&&&&&.&&│ &'&&&&&&.&&│&'&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&│&'&&&&&&&&│
.}
.[f OverWrite
.fields
 KolList
 SumList3 SumList1 SumList2 SumList4 SumList1_d SumList2_d SumList4_d SumListPrev SumList5 SumList6 
.endfields
 └────────────────┴───────────┴────────────┴─────────────┴───────────────┴────────────┴─────────────┴───────────────┴───────────────┴──────────┴──────────┘
Итого по листу &&&:&'&&&&&&&&& &'&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&& &'&&&&&&&&

.begin
  SumList1:=0;
  SumList2:=0;
  SumList3:=0;
  SumList4:=0;
  SumList1_d:=0;
  SumList2_d:=0;
  SumList4_d:=0;
  SumListPrev:=0;
  SumList5:=0;
  SumList6:=0;
  end.
.]f
.}
.fields
 KolList
 IКол_календ_дн IКол_раб_дн_o IКол_раб_час_o ISumma_o
 IКол_раб_дн_d IКол_раб_час_d ISumma_d ISumPrev IKolRab ICountEvents
.endfields

 Количество листов &&&

 ИТОГО ПО РЕЕСТРУ  &'&&&&&&&&& &'&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&&&&.&& &'&&&&&&&& &'&&&&&&&&   

.endform
