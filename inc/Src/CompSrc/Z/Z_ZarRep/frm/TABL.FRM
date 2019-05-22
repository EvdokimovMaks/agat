 Ш/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Общая ведомость распределения                             ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ║ Изменения     : Гуз Максим Геннадьевич  17-04-98                          ║
 ║       Цель    : Добавлена печать отработанных часов и дней                ║
 ║                 Отчет в разрезе операций вынесен в отдельную форму        ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Общая ведомость распределения
#end
.set name='tabl'
.hide
.fields
 Pred
 Podr
 Zagl
 Dat1 Dat2
 accountant
 Str01
 Str1
 Str2
 Str3 Podr0 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str04
 Str4
 Vid  Naim  Sum0  Sum1  Sum2  Sum3  Sum4  Sum5  Sum6  Sum7  Sum8  Sum9  Sum10  Sum11  Sum12
 Day0 Chasf0  Day1 Chasf1  Day2 Chasf2 Day3 Chasf3  Day4 Chasf4 Day5 Chasf5  Day6 Chasf6 Day7 Chasf7
 Day8 Chasf8 Day9 Chasf9  Day10 Chasf10 Day11 Chasf11 Day12 Chasf12
 Str05
 Str5
 IStr INaim ISum0 ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay0 IChasf0 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
 pStr pNaim pSum0 pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
 dStr dNaim dSum0 dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
 PredKod PredName
.endfields
------- Заголовок формы -------
 Pred ^
 Podr ^
 Zagl ^
 Dat1 ^ Dat2 ^
 accountant ^
------- Конце заголовка формы ------
.{ cy1
.{ cy2
------ Шапка таблицы  -------
   Str01=^
   Str1=^
   Str2=^
   Str3=^
   Podr0=^  Podr1=^ Podr2=^ Podr3=^  Podr4=^   Podr5=^ Podr6=^  Podr7=^ Podr8=^ Podr9=^  Podr10=^  Podr11=^  Podr12=^
   Str04=^
   Str4=^
------- конец шапки таблицы ------
.if cy3
.{
 ------ безымянный цикл для строк таблицы ------
 Vid=^ Naim=^ Sum0=^
 Sum1=^  Sum2=^ Sum3=^ Sum4=^ Sum5=^ Sum6=^ Sum7=^  Sum8=^ Sum9=^ Sum10=^ Sum11=^ Sum12=^
.if VNachCex
-------- раздел для печати часов и дней ------
 Day0=^   Chasf0=^
 Day1=^   Chasf1=^
 Day2=^   Chasf2=^
 Day3=^   Chasf3=^
 Day4=^   Chasf4=^
 Day5=^   Chasf5=^
 Day6=^   Chasf6=^
 Day7=^   Chasf7=^
 Day8=^   Chasf8=^
 Day9=^   Chasf9=^
 Day10=^  Chasf10=^
 Day11=^  Chasf11=^
 Day12=^  Chasf12=^
 ------  конец раздела для печати часов и дней -----
.end
 Str05=^
 Str5=^
 -----  конец цикла для строк ---
.}
.end
ИТОГОВЫЕ СУММЫ:
 IStr=^   INaim=^  ISum0=^
 ISum1=^  ISum2=^  ISum3=^  ISum4=^  ISum5=^   ISum6=^
 ISum7=^  ISum8=^  ISum9=^  ISum10=^ ISum11=^  ISum12=^
 ------ конец сумм итоговых -------
.if VNachItog1
ИТОГИ ЧАСОВ И ДНЕЙ:
 IDay0=^  IChasf0=^
 IDay1=^  IChasf1=^
 IDay2=^  IChasf2=^
 IDay3=^  IChasf3=^
 IDay4=^  IChasf4=^
 IDay5=^  IChasf5=^
 IDay6=^  IChasf6=^
 IDay7=^  IChasf7=^
 IDay8=^  IChasf8=^
 IDay9=^  IChasf9=^
 IDay10=^ IChasf10=^
 IDay11=^ IChasf11=^
 IDay12=^ IChasf12=^
 ----- конец итогов по часам ------
.end
.if Saldo
 ----- раздел долга за работником для сальдо -----
 pStr=^ pNaim=^ pSum0=^
 pSum1=^ pSum2=^ pSum3=^ pSum4=^ pSum5=^ pSum6=^ pSum7=^ pSum8=^ pSum9=^ pSum10=^ pSum11=^ pSum12=^
  ----- конец раздела долга за работником для сальдо -----
.end
 ----- раздел долга за предприятием для сальдо -----
.if DolgPred
 dStr=^ dNaim=^ dSum0=^
 dSum1=^ dSum2=^ dSum3=^ dSum4=^ dSum5=^ dSum6=^ dSum7=^ dSum8=^ dSum9=^ dSum10=^ dSum11=^ dSum12=^
  ----- конец раздела долга за работником для сальдо -----
.end
.}
----- после цикла Су2  -----
.}
----- печать подразделений  ----
.{ cy4
 PredKod=^ PredName=^
.}

.endform



.linkform 'tabl_01' prototype is 'tabl'
.nameinlist 'Полная форма общей ведомости'
.fields
CommonFormHeader
.endfields
^
.fields
 Pred Podr Zagl Dat1 Dat2
 Str1
 Str2
 Str3 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str4
.endfields

 Предприятие ^
  ^
     ^
       за период с ^ по ^  г.

.{ cy1
.{ cy2

───────┬────────────────────────┬@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@│     Наименование       │      подразделения
@@@@@@@│                        │      &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&
───────┼────────────────────────┼^
.if cy3
.{
.fields
 Vid  Naim Sum1  Sum2  Sum3  Sum4  Sum5  Sum6  Sum7  Sum8  Sum9  Sum10  Sum11  Sum12
 Day1 Chasf1  Day2 Chasf2 Day3 Chasf3  Day4 Chasf4 Day5 Chasf5  Day6 Chasf6 Day7 Chasf7
 Day8 Chasf8 Day9 Chasf9  Day10 Chasf10 Day11 Chasf11 Day12 Chasf12
 Str5
.endfields
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachCex
       │ Кол-во Дней/часов      │&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
───────┼────────────────────────┼^
.}
.end
.fields
 IStr INaim ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
.endfields
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachItog1
       │ Кол-во Дней/часов      │&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
.if Saldo
.fields
 Str4
 pStr pNaim pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
.endfields
───────┼────────────────────────┼^
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
.if DolgPred
.fields
 Str4
 dStr dNaim dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
.endfields
───────┼────────────────────────┼^
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
═══════╧════════════════════════╧═════════════════════════════════════════════
.}
.}

.fields
 PredKod PredName
.endfields
 ┌──────────┬────────────────────────────────────────┐
 │Код       │  Наименование                          │
 ├──────────┼────────────────────────────────────────┤
.{ cy4
 │@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
.}
 └──────────┴────────────────────────────────────────┘
.fields
accountant
.endfields

Бухгалтер ___________ ^
.endform
!
!
!

.linkform 'tabl_03' prototype is 'tabl'
.nameinlist'Итоговая форма общей ведомости в разрезе подразделений'
.fields
CommonFormHeader
.endfields
^
.fields
 Pred Podr Zagl Dat1 Dat2
 Str1
 Str2
 Str3 Podr1 Podr2 Podr3 Podr4 Podr5 Podr6 Podr7 Podr8 Podr9 Podr10  Podr11 Podr12
 Str4
 IStr INaim ISum1 ISum2 ISum3 ISum4 ISum5 ISum6 ISum7 ISum8 ISum9 ISum10 ISum11 ISum12
 IDay1 IChasf1  IDay2 IChasf2 IDay3 IChasf3  IDay4 IChasf4 IDay5 IChasf5  IDay6 IChasf6 IDay7 IChasf7
 IDay8 IChasf8 IDay9 IChasf9  IDay10 IChasf10 IDay11 IChasf11 IDay12 IChasf12
 Str4
 pStr pNaim pSum1 pSum2 pSum3 pSum4 pSum5 pSum6 pSum7 pSum8 pSum9 pSum10 pSum11 pSum12
 Str4
 dStr dNaim dSum1 dSum2 dSum3 dSum4 dSum5 dSum6 dSum7 dSum8 dSum9 dSum10 dSum11 dSum12
 PredKod PredName
.endfields

  Предприятие ^
  ^
     ^

      за период с ^ по ^  г.

.{ cy1
.{ cy2

───────┬────────────────────────┬@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@│     Наименование       │      подразделения
@@@@@@@│                        │      &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&       &&&&&&&&&&
───────┼────────────────────────┼^
.if cy3
.{
.if VNachCex
.end
.}
.end
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&& &'&&&&&&&&&&&&&&
.if VNachItog1
       │ Кол-во Дней/часов      │&'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&& &'&&&&  &'&&&&&&
.end
.if Saldo
───────┼────────────────────────┼^
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
.if DolgPred
───────┼────────────────────────┼^
@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&& &'#&&&&&&&&&&&&&
.end
═══════╧════════════════════════╧═════════════════════════════════════════════
.}
.}
 ┌───────────┬────────────────────────────────────────┐
 │Код        │  Наименование                          │
 ├───────────┼────────────────────────────────────────┤
.{ cy4
 │@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
.}
 └───────────┴────────────────────────────────────────┘
.fields
accountant
.endfields

Бухгалтер ___________ ^

.endform Ш