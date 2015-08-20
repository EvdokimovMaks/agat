/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.20                                                      ║
 ║ Назначение    : Свод по алиментам                                         ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ║ Изменения     :                                                           ║
 ║     Автор: Василевская Анна Вячеславовна Дата: 17/11/97  14:45            ║
 ║     Цель : доработка __________________________________                   ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Свод по алиментам
#end
.set name='SvodAlim'
.p 60
.hide
.fields
 Pred
 Podr
 NVidUd
 Mes God
 Npp PrPer TabN FIO SumNach:double Proc SumUdPre:double SumUd:double PochSbor:double SumPer:double
 ItogSumNach ItogSPre ItogSumUd ItogPochSbor ItogSumPer
 StrItogSumNach
.endfields

   ^
   ^
   ^
   ^ ^
.{
.{
   ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
  ^ ^ ^ ^ ^
  ^
.endform
!
!
!
.Linkform 'SvodAlim_01' Prototype is 'SvodAlim'
.nameinlist 'Полная форма свода по алиментам'
.p 60
.var KolList     : integer
     SumNachList : double
     SumPerList  : double
     SumPList    : double
     PochSborList: double
     SumUdList   : double
.endvar
.fields
CommonFormHeader
.endfields
^
.fields
 Pred
 Podr
 NVidUd
 Mes God
.endfields

.begin KolList     :=0;
       SumNachList :=0;
       SumPerList  :=0;
       SumPList    :=0;
       PochSborList:=0;
       SumUdList   :=0;
 end.

 Ш
   Организация: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^

                                 СВОД ПО АЛИМЕНТАМ
                                ^
                                за ^ месяц  &&&& г.

.{
.[h OverWrite
.begin KolList:=KolList+1 end.
──────┬──────────────┬───────┬──────────────────────────────┬────────────────┬───────┬────────────────┬────────────────┬───────────┬──────────────┐
 N -  │Номер исполни-│Таб.   │        Фамилия И.О.          │Сумма, с которой│Процент│Сумма алиментов,│Сумма,удержанная│ Почтовый  │    Сумма     │
 п/п  │тельного листа│номер  │        плательщика           │     удержано*  │ удерж.│удержанная ранее│в текущем месяце│   сбор    │ перечисления │
──────┼──────────────┼───────┼──────────────────────────────┼────────────────┼───────┼────────────────┼────────────────┼───────────┼──────────────┤
.]h
.{
.begin
 SumNachList  := SumNachList  + SumNach;
 SumPerList   := SumPerList   + SumPer;
 SumPList     := SumPList     + SumUdPre;
 PochSborList := PochSborList + PochSbor;
 SumUdList    := SumUdList    + SumUd;
end.
.fields
 Npp PrPer TabN FIO SumNach Proc SumUdPre SumUd PochSbor SumPer
.endfields
 &&&&&│&&&&&&&&&&&&&&│&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&.&&│ &&.&& │&'&&&&&&&&&&&.&&│&'&&&&&&&&&&&.&&│&'&&&&&&.&&│&'&&&&&&&&&.&&│
.}
.[f OverWrite
.fields
 KolList
 SumNachList
 SumPList
 SumUdList
 PochSborList
 SumPerList
.endfields
──────┴──────────────┴───────┴──────────────────────────────┴────────────────┴───────┴────────────────┴────────────────┴───────────┴──────────────┘
    *Графа заполняется только в случае задания суммы алиментов частью дохода

 Б Итого по листу &&&:                                     &'&&&&&&&&&&&&&&&.&&         &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& &'&&&&&&.&& &'&&&&&&&&&.&& Б
.begin
SumNachList  := 0;
SumPerList   := 0;
SumPList     := 0;
PochSborList := 0;
SumUdList    := 0;
end.
.]f
.}
.fields
 ItogSumNach ItogSPre ItogSumUd ItogPochSbor ItogSumPer
 StrItogSumNach
.endfields
 Б ИТОГО ПО СВОДУ:                                         &'&&&&&&&&&&&&&&&.&&         &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& &'&&&&&&.&& &'&&&&&&&&&.&& Б

 ИТОГО УДЕРЖАНО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                         ( сумма прописью ) Ш

.endform
!
!
!
.Linkform 'SvodAlim_02' Prototype is 'SvodAlim'
.nameinlist 'Сокращенная форма свода по алиментам'
.p 60
.var KolList: integer
     SumNachList : double
     SumPList    : double
     SumUdList   : double
.endvar
.fields
CommonFormHeader
.endfields
^
.fields
 Pred
 Podr
 NVidUd
 Mes God
.endfields

.begin KolList:= 0;
       SumNachList:= 0;
       SumPList   := 0;
       SumUdList  := 0;
 end.


 Р   Организация: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^

                                 СВОД ПО АЛИМЕНТАМ
                                 ^
                                за ^ месяц  &&&& г.
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
──────┬──────────────┬────────┬──────────────────────────────┬────────────────┬───────┬────────────────┬────────────────┐
 N -  │Номер исполни-│ Таб.   │        Фамилия И.О.          │Сумма, с которой│Процент│Сумма алиментов,│Сумма,удержанная│
 п/п  │тельного листа│ номер  │        плательщика           │     удержано*  │ удерж.│удержанная ранее│в текущем месяце│
──────┼──────────────┼────────┼──────────────────────────────┼────────────────┼───────┼────────────────┼────────────────┤
.]h
.{
.begin
 SumNachList  := SumNachList  + SumNach;
 SumPList     := SumPList     + SumUdPre;
 SumUdList    := SumUdList    + SumUd;
end.
.fields
 Npp PrPer TabN FIO SumNach Proc SumUdPre SumUd
.endfields
 &&&&&│&&&&&&&&&&&&&&│&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&.&&│ &&.&& │&'&&&&&&&&&&&.&&│&'&&&&&&&&&&&.&&│
.}
.[f OverWrite
.fields
 KolList
 SumNachList
 SumPList
 SumUdList
.endfields
──────┴──────────────┴────────┴──────────────────────────────┴────────────────┴───────┴────────────────┴────────────────┘
    *Графа заполняется только в случае задания суммы алиментов частью дохода

 Б Итого по листу &&&:                                      &'&&&&&&&&&&&&&&&.&&         &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& Б
.begin
SumNachList  := 0;
SumPList     := 0;
SumUdList    := 0;
end.
.]f
.}
.fields
 ItogSumNach ItogSPre ItogSumUd
 StrItogSumNach
.endfields
 Б ИТОГО ПО СВОДУ:                                          &'&&&&&&&&&&&&&&&.&&         &'&&&&&&&&&&&.&& &'&&&&&&&&&&&.&& Б

 ИТОГО УДЕРЖАНО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                         ( сумма прописью ) Р

.endform
