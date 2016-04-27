/*
{
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Контур логистики                                          ║
 ║ Версия        : 5.84                                                      ║
 ║ Назначение    : Отчет "Взаиморасчеты по аналитическим разрезам на дату"   ║
 ║ Ответственный : Шелепов А.Ф.                                              ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
}
*/
#doc
Отчет "Взаиморасчеты по аналитическим разрезам на дату"
#end
.set name 'RepOperBAL'
//.group 'Баланс расчетов в НДЕ'
.hide
.fields
  ItogLevelIn
  dForm
  NameGroup
  strDateValut
  nLevel  : word
  sNameGr1
  sNameGr2
  sNameGr3
  sNameGr4
  sNameGr5
  sNameGr6
  sNameGr7
  sNameGr8
  sNameGr9
  sNameGr10
  NameLevel
  isList  : word
  Sum1    : double
  Sum2    : double
  Sum3    : double
  Sum4    : double
  Sum5    : double
  Sum6    : double
  Sum7    : double
  Sum8    : double
  Sum9    : double
  Sum10    : double
.endfields
итоговые суммы в ^
дата                 ^
группировка в отчете ^
Курсы валют при пересчете в НДЕ ^
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.endform

#doc
Сальдо взаиморасчетов
#end
.linkform 'RepOperBal_1' prototype is 'RepOperBal'
.nameinlist 'Сальдо взаиморасчетов'
.group 'Баланс расчетов в валюте документов'
.fields
  CommonFormHeader
  dForm
  NameGroup
.endfields
^
 Г                  Б А Л А Н С  В З А И М О Р А С Ч Е Т О В Г
 Б    Дата отчета ^
    Группировка в отчете: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
 Г──────────────────────────────────────────────┬─────────────────────────────
        Н а и м е н о в а н и е               │         Сальдо
                                              │     взаиморасчетов
──────────────────────────────────────────────┴───────────────────────────── Г
.{?Internal;sNameGr1<>'';
.fields
  sNameGr1
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr2<>'';
.fields
  sNameGr2
.endfields
 Б   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr3<>'';
.fields
  sNameGr3
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr4<>'';
.fields
  sNameGr4
.endfields
 Б         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr5<>'';
.fields
  sNameGr5
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr6<>'';
.fields
  sNameGr6
.endfields
 Б               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr7<>'';
.fields
  sNameGr7
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr8<>'';
.fields
  sNameGr8
.endfields
 Б                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr9<>'';
.fields
  sNameGr9
.endfields
 Б                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr10<>'';
.fields
  sNameGr10
.endfields
 Б                           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{
.{?Internal;nLevel=1;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=2;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=3;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=4;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=5;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=6;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=7;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=8;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=9;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=10
.{?Internal;isList=1;
.fields
  NameLevel
  Sum5
.endfields
                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum5
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.}
────────────────────────────────────────────────────────────────────────────
.endform

#doc
Сальдо взаиморасчетов (развернутое)
#end
.linkform 'RepOperBal_2' prototype is 'RepOperBal'
.nameinlist 'Сальдо взаиморасчетов (развернутое)'
.group 'Баланс расчетов в валюте документов'
.fields
  CommonFormHeader
  dForm
  NameGroup
.endfields
^
 Б                                               Б А Л А Н С  В З А И М О Р А С Ч Е Т О В
    Дата отчета ^
    Группировка в отчете: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
─────────────────────────────────────────┬──────────────────┬────────────────────┬───────────────────┬─────────────────────┬──────────────────
        Н а и м е н о в а н и е          │   Сумма продаж   │   Сумма входящих   │   Сумма закупок   │   Сумма исходящих   │      Сальдо
                                         │                  │      платежей      │                   │      платежей       │  взаиморасчетов
─────────────────────────────────────────┴──────────────────┴────────────────────┴───────────────────┴─────────────────────┴────────────────── Б
.{?Internal;sNameGr1<>'';
.fields
  sNameGr1
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr2<>'';
.fields
  sNameGr2
.endfields
 Б   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr3<>'';
.fields
  sNameGr3
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr4<>'';
.fields
  sNameGr4
.endfields
 Б         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr5<>'';
.fields
  sNameGr5
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr6<>'';
.fields
  sNameGr6
.endfields
 Б               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr7<>'';
.fields
  sNameGr7
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr8<>'';
.fields
  sNameGr8
.endfields
 Б                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr9<>'';
.fields
  sNameGr9
.endfields
 Б                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr10<>'';
.fields
  sNameGr10
.endfields
 Б                           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{
.{?Internal;nLevel=1;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=2;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=3;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=4;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=5;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=6;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=7;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=8;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
              @@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б              @@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=9;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
                @@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б                @@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=10;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
                  @@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum1
  Sum2
  Sum3
  Sum4
  Sum5
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.}
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.endform

#doc
Сальдо взаиморасчетов в НДЕ
#end
.linkform 'RepOperBal_3' prototype is 'RepOperBal'
.nameinlist 'Сальдо взаиморасчетов в НДЕ'
.group 'Баланс расчетов в НДЕ'
.var
 s : string
.endvar
.begin
 s := if(Trim(ItogLevelIn)='','в НДЕ',ItogLevelIn)
end.
.fields
  CommonFormHeader
  '( '+s+' )'
  dForm
  NameGroup
  strDateValut
.endfields
^
 Б                  Б А Л А Н С  В З А И М О Р А С Ч Е Т О В
    @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Дата отчета ^
    Группировка в отчете: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Курсы валют при пересчете: ^
──────────────────────────────────────────────┬─────────────────────────────
        Н а и м е н о в а н и е               │         Сальдо
                                              │     взаиморасчетов
──────────────────────────────────────────────┴───────────────────────────── Б
.{?Internal;sNameGr1<>'';
.fields
  sNameGr1
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr2<>'';
.fields
  sNameGr2
.endfields
 Б   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr3<>'';
.fields
  sNameGr3
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr4<>'';
.fields
  sNameGr4
.endfields
 Б         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr5<>'';
.fields
  sNameGr5
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr6<>'';
.fields
  sNameGr6
.endfields
 Б               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr7<>'';
.fields
  sNameGr7
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr8<>'';
.fields
  sNameGr8
.endfields
 Б                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr9<>'';
.fields
  sNameGr9
.endfields
 Б                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr10<>'';
.fields
  sNameGr10
.endfields
 Б                           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{
.{?Internal;nLevel=1;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=2;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=3;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=4;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=5;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=6;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=7;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=8;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=9;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=10
.{?Internal;isList=1;
.fields
  NameLevel
  Sum6
.endfields
                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum6
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@   &'#&&&&&&&&&&&&&&&&&&&&.&& Б
.}
.}
.}
────────────────────────────────────────────────────────────────────────────
.endform

#doc
Сальдо взаиморасчетов в НДЕ (развернутое)
#end
.linkform 'RepOperBal_4' prototype is 'RepOperBal'
.nameinlist 'Сальдо взаиморасчетов в НДЕ (развернутое)'
.group 'Баланс расчетов в НДЕ'
.var
 s : string
.endvar
.begin
 s := if(Trim(ItogLevelIn)='','в НДЕ',ItogLevelIn)
end.
.fields
  CommonFormHeader
  '( '+s+' )'
  dForm
  NameGroup
  strDateValut
.endfields
^
 Б                                               Б А Л А Н С  В З А И М О Р А С Ч Е Т О В
    @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Дата отчета ^
    Группировка в отчете: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Курсы валют при пересчете: ^
─────────────────────────────────────────┬──────────────────┬────────────────────┬───────────────────┬─────────────────────┬──────────────────
        Н а и м е н о в а н и е          │   Сумма продаж   │   Сумма входящих   │   Сумма закупок   │   Сумма исходящих   │      Сальдо
                                         │                  │      платежей      │                   │      платежей       │  взаиморасчетов
─────────────────────────────────────────┴──────────────────┴────────────────────┴───────────────────┴─────────────────────┴────────────────── Б
.{?Internal;sNameGr1<>'';
.fields
  sNameGr1
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr2<>'';
.fields
  sNameGr2
.endfields
 Б   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr3<>'';
.fields
  sNameGr3
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr4<>'';
.fields
  sNameGr4
.endfields
 Б         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr5<>'';
.fields
  sNameGr5
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr6<>'';
.fields
  sNameGr6
.endfields
 Б               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr7<>'';
.fields
  sNameGr7
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr8<>'';
.fields
  sNameGr8
.endfields
 Б                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr9<>'';
.fields
  sNameGr9
.endfields
 Б                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{?Internal;sNameGr10<>'';
.fields
  sNameGr10
.endfields
 Б                           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б
.}
.{
.{?Internal;nLevel=1;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=2;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=3;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=4;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=5;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=6;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=7;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б            @@@@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=8;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
              @@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б              @@@@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=9;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
                @@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б                @@@@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.{?Internal;nLevel=10;
.{?Internal;isList=1;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
                  @@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&
.}
.{?Internal;isList=0;
.fields
  NameLevel
  Sum7
  Sum8
  Sum9
  Sum10
  Sum6
.endfields
 Б                  @@@@@@@@@@@@@@@@@@@@@@  &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&   &'#&&&&&&&&&&&&.&&  &'#&&&&&&&&&&&&.&& Б
.}
.}
.}
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
.endform
