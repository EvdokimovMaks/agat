/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2000 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Индивидуальная карточка                                   ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Индивидуальная карточка
#end
.set name = 'SFond'
.hide
.fields
 PersonsNumb : integer
 PachNumBegin: integer
 AllCounter  : word
 RabCounter  : word
 Страховой_номер
 TabN
 Фамилия
 Имя CharF:word CharF1
 Отчество CharF2
 квартал strквартал
 God CharF3 CharF4
 INN
 Pred
 curdate
 HP НАЕМ
 ProcPens28
 Val1
 Procent
 KolStag
 Okrug : word
 PrizSum1: word   Sum11   Sum12
 PrizSum2: word   Sum21   Sum22
 PrizSum3: word   Sum31   Sum32
 PrizSum4: word   Sum41   Sum42
 PrizSum5: word   Sum51   Sum52
 PrizSum6: word   Sum61   Sum62
 PrizSum7: word   Sum71   Sum72
 PrizSum8: word   Sum81   Sum82
 PrizSum9: word   Sum91   Sum92
 PrizSum10: word  Sum101 Sum102
 PrizSum11: word  Sum111 Sum112
 PrizSum12: word  Sum121 Sum122
 ISum1  ISum2
 НомерДоговора
 ДеньЗак
!: integer
 МесяцЗак
!: word
 ГодЗак
!: integer
 ВидВыплаты

 Наим_стажа
 nppSt Нач_стажа Кон_стажа
 TerCond
 WorkCond
 Исчисл_труд_стаж_основание
 Исчисл_труд_стаж_доп_свед1: word
 Исчисл_труд_стаж_доп_свед2: word
 Строка_Исчисл_труд_стаж_доп_свед1
 Строка_Исчисл_труд_стаж_доп_свед2
 Исчисл_труд_стаж_доп_свед3
 Выслуга_лет_основание
 Выслуга_лет_доп_свед1: word
 Выслуга_лет_доп_свед2: word
 Строка_Выслуга_лет_доп_свед1
 Строка_Выслуга_лет_доп_свед2
!новое
 Выслуга_лет_доп_свед3: double
 Ед_изм_Выслуга_лет_доп_свед3
!
 Число_записей_лгот   : byte
 Paйон_коэфф
 Код_позиции_списка1
 Код_позиции_списка1С

 Наим_стажа_Lgot
 nppStLgot
 WorkCond_Lgot
!новое
 Исчисл_труд_стаж_основание_Lgot
!
 Исчисл_труд_стаж_доп_свед1_Lgot: word
 Исчисл_труд_стаж_доп_свед2_Lgot: word
 Строка_Исчисл_труд_стаж_доп_свед1_Lgot
 Строка_Исчисл_труд_стаж_доп_свед2_Lgot
!новое
 Исчисл_труд_стаж_доп_свед3_Lgot
 Выслуга_лет_основание_Lgot
 Выслуга_лет_доп_свед1_Lgot: word
 Выслуга_лет_доп_свед2_Lgot: word
 Строка_Выслуга_лет_доп_свед1_Lgot
 Строка_Выслуга_лет_доп_свед2_Lgot

 Выслуга_лет_доп_свед3_Lgot: double
 Ед_изм_Выслуга_лет_доп_свед3_Lgot

 TerCond_Lgot
 Paйон_коэфф_Lgot
!
 Код_позиции_списка2
 Код_позиции_списка2С

 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год

 ФИО_исполнителя
 тел_исполнителя
 FIO_KP
 CodeOKPO
 itognach_Boln
 itognach_АДВ6
 itogAvans
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
.endfields
.{
   ^^^^
   Конфиденциальность информации гарантируется получателем
   Форма СЗВ-1         Код по ОКУД
                      Индивидуальные   сведения
       о трудовом стаже, заработке (вознаграждении), доходе
       и начисленных страховых взносах застрахованного лица
   Страховой номер @@@@@@@@@@@@@@@@@@@@  ^              ┌────────────────────┐
   Фамилия         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│     Тип формы      │
   Имя             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ @ исходная ^       │
   Отчество        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ @ корректирующая   │
   Отчетный период && @@@@@@@ &&&& год                  │ @ отменяющая       │
   Сведения о работодателе                              │ @ назначение пенсии│
   Регистрационный номер @@@@@@@@@@@@@@                 └────────────────────┘
   Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   ^
   Категория плательщика страховых взносов: код ^ наименование ^
   Сумма начисленных страховых взносов:
   уплачиваемых работодателем  :                   &'&&&&&&&&&&&&.&& (@@@@)
   уплачиваемых из заработка застрахованного лица: &'&&&&&&&&&&&&.&& (руб.)
   Сведения о заработке (вознаграждении), доходе за отчетный период: ^
   ^
  ┌───────────────┬─────────────────────────────────────────────────────────────────────────┐
  │               │         общие начисления, учитываемые при назначении пенсии             │
  │ Месяц         ├─────────────────────────────────┬───────────────────────────────────────┤
  │               │           всего                 │в том числе по больничным листам       │
  │               │                                 │  (листкам нетрудоспособности)         │
  │               │                                 │          и стипендии                  │
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │ Январь        │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Февраль       │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Март          │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Апрель        │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Май           │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Июнь          │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Июль          │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Август        │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Сентябрь      │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Октябрь       │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Ноябрь        │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  │ Декабрь       │& &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&.│
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │  Итого        │ ^                               │^                                      │
  └───────────────┴─────────────────────────────────┴───────────────────────────────────────┘
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
   Стаж работы за отчетный период:
  ┌──┬───────────────┬───────────────┬────────┬───────┬──────────────────────┬────────────────────────┐
  │  │    Начало     │    Конец      │Террито-│Особые │ Исчисляемый трудовой │      Выслуга лет       │
  │  │               │               │риальные│условия│        стаж          │                        │
  │ N│    периода    │   периода     │условия │ труда ├─────────┬────────────┼───────────┬────────────┤
  │  │               │               │        │       │основание│дополнитель-│ основание │дополнитель-│
  │  │(день,мес.,год)│(день,мес.,год)│ (код)  │ (код) │  (код)  │ные сведения│   (код)   │ные сведения│
  ├──┼───────────────┼───────────────┼────────┼───────┼─────────┼────────────┼───────────┼────────────┤
.{
  │^ &&.│&&&&&&&&&&&&&&&│&&&&&&&&&&&&│^       │^      │^        │ ^^^^^      │^          │^^^^^^^^^   │
.{ CheckEnter Vred1
  ^
.}
.{ CheckEnter Lgot
  ^^^^^^^^^^^^^^^^^^^
.{ CheckEnter Vred2
  ^
.}
.}
.}
  └──┴───────────────┴───────────────┴────────┴───────┴─────────┴────────────┴───────────┴────────────┘

   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   Дата "&&" @@@@@@@@ &&&& года                    М.П.
! АДВ-6
 ^^^^^^^^^^^
 ^^
.}
.endform
.linkform 'SFond_MSFond02' prototype is 'SFond'
.nameinlist'Файл для ПФ на МН (в.02.40) с разбивкой на пачки'
.group 'Отчеты на магнитных носителях (в.02.40)'
.var
 FSum11, FSum12,
 FSum21, FSum22,
 FSum31, FSum32,
 FSum41, FSum42,
 FSum51, FSum52,
 FSum61, FSum62,
 FSum71, FSum72,
 FSum81, FSum82,
 FSum91, FSum92,
 FSum101, FSum102,
 FSum111, FSum112,
 FSum121, FSum122 : double;
 rrr,rrr_2,TypeChars: String;
 my_pred    : string[40];
 my_inn     : string
 pach_nmb   : word
 nomer      : word
 MyPersonCounter: integer;
 PersonCounterOut: integer;
 StrGod     : string
 kvartal    : string
 my_nach_st : string
 my_kon_st  : string
 KolNach    : integer
 SumNach    : double
 SumBoln    : double
 RИсчисл_труд_стаж_доп_свед1     : string
 RИсчисл_труд_стаж_доп_свед2     : string
 RИсчисл_труд_стаж_доп_свед1_lgot: string
 RИсчисл_труд_стаж_доп_свед2_lgot: string
 RВыслуга_лет_доп_свед1          : string
 RВыслуга_лет_доп_свед2          : string
 RЧисло_записей_лгот             : string
 RDataDog                        : string
.endvar
.begin
  my_inn  := Upcase( Trim( Replace( inn, '"', '''' ) ) );
  my_pred := Upcase( Trim( Replace( Pred, '"', '''' ) ) );
  pach_nmb:= PachNumBegin;
  TypeChars := 'ИСХД';
  nomer   := 0;
  KolNach := 0;
  SumNach := 0;
  SumBoln := 0;
  MyPersonCounter := 0;
  PersonCounterOut:= 0;
 end.
.{
.{?internal;nomer=AllCounter
.fields
   pach_nmb
.endfields
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.}
.{?internal;(nomer=0)or(nomer=AllCounter)
.begin
  if (PersonsNumb - MyPersonCounter) >= AllCounter
  {
    MyPersonCounter := MyPersonCounter + AllCounter;
    PersonCounterOut := AllCounter;
  }
  else
    PersonCounterOut := PersonsNumb - MyPersonCounter;
end.
.fields
   my_inn
   my_pred
   pach_nmb
   curdate
   PersonCounterOut
.endfields
.begin
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
"ЗГЛВ","02.40"
"РБТД","РБТД","^","^"
"ПАЧК",^,"^",1
"ТИПД","ИНДС",^
.}
.begin
 nomer := nomer+1;
 StrGod:= God;
 if CharF  = 0 then
   TypeChars := 'ИСХД'
 else if CharF  = 1
   TypeChars := 'КОРР'
 else if CharF  = 2
   TypeChars := 'ОТМН'
 else if CharF  = 3
   TypeChars := 'ПЕНС';
 if (квартал = '1') or (квартал = '2')then kvartal:= '2'
 else
 if (квартал = '3') or (квартал = '4') then kvartal:= '4'
 else
   kvartal:= '0';
! else kvartal:= квартал
 IF (Word(ДеньЗак)<>0)and(Word(МесяцЗак)<>0)and(Word(ГодЗак)<>0)
  RDataDog:= string(Date(Word(ДеньЗак), Word(МесяцЗак), Word(ГодЗак)))
 else
  RDataDog:=''
 end.
.fields
   nomer
   TypeChars
   trim(Страховой_номер)
   trim(UpCase(Фамилия))
   trim(UpCase(Имя))
   trim(UpCase(Отчество))
   kvartal StrGod
   НомерДоговора
   RDataDog
   UpCase(ВидВыплаты)
   UpCase(HP)
   ProcPens28
   Procent
   string(SumNach)
   string(SumBoln)
   curdate
   KolNach
   KolStag
.endfields
.begin
  KolNach:= 0;
  SumNach:= 0;
  SumBoln:= 0;
 FSum11 := Double(Sum11);
 FSum12 := Double(Sum12);
 FSum21 := Double(Sum21);
 FSum22 := Double(Sum22);
 FSum31 := Double(Sum31);
 FSum32 := Double(Sum32);
 FSum41 := Double(Sum41);
 FSum42 := Double(Sum42);
 FSum51 := Double(Sum51);
 FSum52 := Double(Sum52);
 FSum61 := Double(Sum61);
 FSum62 := Double(Sum62);
 FSum71 := Double(Sum71);
 FSum72 := Double(Sum72);
 FSum81 := Double(Sum81);
 FSum82 := Double(Sum82);
 FSum91 := Double(Sum91);
 FSum92 := Double(Sum92);
 FSum101:= Double(Sum101);
 FSum102:= Double(Sum102);
 FSum111:= Double(Sum111);
 FSum112:= Double(Sum112);
 FSum121:= Double(Sum121);
 FSum122:= Double(Sum122);

 if (PrizSum1<>0) then KolNach:= KolNach+1;
 if (PrizSum2<>0) then KolNach:= KolNach+1;
 if (PrizSum3<>0) then KolNach:= KolNach+1;
 if (PrizSum4<>0) then KolNach:= KolNach+1;
 if (PrizSum5<>0) then KolNach:= KolNach+1;
 if (PrizSum6<>0) then KolNach:= KolNach+1;
 if (PrizSum7<>0) then KolNach:= KolNach+1;
 if (PrizSum8<>0) then KolNach:= KolNach+1;
 if (PrizSum9<>0) then KolNach:= KolNach+1;
 if (PrizSum10<>0) then KolNach:= KolNach+1;
 if (PrizSum11<>0) then KolNach:= KolNach+1;
 if (PrizSum12<>0) then KolNach:= KolNach+1;

 if (FSum11<>0)or(FSum12<>0) then
  begin
    SumNach:= SumNach + FSum11;
    SumBoln:= SumBoln + FSum12;
  end;
 if (FSum21<>0)or(FSum22<>0) then
  begin
    SumNach:= SumNach + FSum21;
    SumBoln:= SumBoln + FSum22;
  end;
 if (FSum31<>0)or(FSum32<>0) then
  begin
    SumNach:= SumNach + FSum31;
    SumBoln:= SumBoln + FSum32;
  end;
 if (FSum41<>0)or(FSum42<>0) then
  begin
    SumNach:= SumNach + FSum41;
    SumBoln:= SumBoln + FSum42;
  end;
 if (FSum51<>0)or(FSum52<>0) then
  begin
    SumNach:= SumNach + FSum51;
    SumBoln:= SumBoln + FSum52;
  end;
 if (FSum61<>0)or(FSum62<>0) then
  begin
    SumNach:= SumNach + FSum61;
    SumBoln:= SumBoln + FSum62;
  end;
 if (FSum71<>0)or(FSum72<>0) then
  begin
    SumNach:= SumNach + FSum71;
    SumBoln:= SumBoln + FSum72;
  end;
 if (FSum81<>0)or(FSum82<>0) then
  begin
    SumNach:= SumNach + FSum81;
    SumBoln:= SumBoln + FSum82;
  end;
 if (FSum91<>0)or(FSum92<>0) then
  begin
    SumNach:= SumNach + FSum91;
    SumBoln:= SumBoln + FSum92;
  end;
 if (FSum101<>0)or(FSum102<>0) then
  begin
    SumNach:= SumNach + FSum101;
    SumBoln:= SumBoln + FSum102;
  end;
 if (FSum111<>0)or(FSum112<>0) then
  begin
    SumNach:= SumNach + FSum111;
    SumBoln:= SumBoln + FSum112;
  end;
 if (FSum121<>0)or(FSum122<>0) then
  begin
    SumNach:= SumNach + FSum121;
    SumBoln:= SumBoln + FSum122;
  end;
  if Okrug = 2
  {
    rrr   := '666666666666667.88';
    rrr_2 := '-666666666666667.88';
  }
  else if Okrug = 0
  {
    rrr   :='666666666666667';
    rrr_2 :='-666666666666667';
  }
end.
"ИНДС",^,"^","^","^","^","^",^,^,"^","^","^","^","РУБ",^,^,^,^,"^",^,^
.fields
 if (FSum11>=0,DoubleToStr(FSum11,rrr),DoubleToStr(FSum11,rrr_2)) if (FSum12>=0,DoubleToStr(FSum12,rrr),DoubleToStr(FSum12,rrr_2))
 if (FSum21>=0,DoubleToStr(FSum21,rrr),DoubleToStr(FSum21,rrr_2)) if (FSum22>=0,DoubleToStr(FSum22,rrr),DoubleToStr(FSum22,rrr_2))
 if (FSum31>=0,DoubleToStr(FSum31,rrr),DoubleToStr(FSum31,rrr_2)) if (FSum32>=0,DoubleToStr(FSum32,rrr),DoubleToStr(FSum32,rrr_2))
 if (FSum41>=0,DoubleToStr(FSum41,rrr),DoubleToStr(FSum41,rrr_2)) if (FSum42>=0,DoubleToStr(FSum42,rrr),DoubleToStr(FSum42,rrr_2))
 if (FSum51>=0,DoubleToStr(FSum51,rrr),DoubleToStr(FSum51,rrr_2)) if (FSum52>=0,DoubleToStr(FSum52,rrr),DoubleToStr(FSum52,rrr_2))
 if (FSum61>=0,DoubleToStr(FSum61,rrr),DoubleToStr(FSum61,rrr_2)) if (FSum62>=0,DoubleToStr(FSum62,rrr),DoubleToStr(FSum62,rrr_2))
 if (FSum71>=0,DoubleToStr(FSum71,rrr),DoubleToStr(FSum71,rrr_2)) if (FSum72>=0,DoubleToStr(FSum72,rrr),DoubleToStr(FSum72,rrr_2))
 if (FSum81>=0,DoubleToStr(FSum81,rrr),DoubleToStr(FSum81,rrr_2)) if (FSum82>=0,DoubleToStr(FSum82,rrr),DoubleToStr(FSum82,rrr_2))
 if (FSum91>=0,DoubleToStr(FSum91,rrr),DoubleToStr(FSum91,rrr_2)) if (FSum92>=0,DoubleToStr(FSum92,rrr),DoubleToStr(FSum92,rrr_2))
 if (FSum101>=0,DoubleToStr(FSum101,rrr),DoubleToStr(FSum101,rrr_2)) if (FSum102>=0,DoubleToStr(FSum102,rrr),DoubleToStr(FSum102,rrr_2))
 if (FSum111>=0,DoubleToStr(FSum111,rrr),DoubleToStr(FSum111,rrr_2)) if (FSum112>=0,DoubleToStr(FSum112,rrr),DoubleToStr(FSum112,rrr_2))
 if (FSum121>=0,DoubleToStr(FSum121,rrr),DoubleToStr(FSum121,rrr_2)) if (FSum122>=0,DoubleToStr(FSum122,rrr),DoubleToStr(FSum122,rrr_2))
   Наим_стажа
   nppSt
   my_nach_st my_kon_st
   UpCase(TerCond)
   UpCase(WorkCond)
   UpCase(Исчисл_труд_стаж_основание)
   RИсчисл_труд_стаж_доп_свед1
   RИсчисл_труд_стаж_доп_свед2
   UpCase(Исчисл_труд_стаж_доп_свед3)
   UpCase(Выслуга_лет_основание)
   RВыслуга_лет_доп_свед1
   RВыслуга_лет_доп_свед2
   Код_позиции_списка1
   RЧисло_записей_лгот
   Paйон_коэфф

 Наим_стажа_Lgot
 nppStLgot
 WorkCond_Lgot
 RИсчисл_труд_стаж_доп_свед1_Lgot
 RИсчисл_труд_стаж_доп_свед2_Lgot
 Код_позиции_списка2
.endfields
.{?internal;(PrizSum1<>0)
"НЧСЛ",1,^,^
.}
.{?internal;(PrizSum2<>0)
"НЧСЛ",2,^,^
.}
.{?internal;(PrizSum3<>0)
"НЧСЛ",3,^,^
.}
.{?internal;(PrizSum4<>0)
"НЧСЛ",4,^,^
.}
.{?internal;(PrizSum5<>0)
"НЧСЛ",5,^,^
.}
.{?internal;(PrizSum6<>0)
"НЧСЛ",6,^,^
.}
.{?internal;(PrizSum7<>0)
"НЧСЛ",7,^,^
.}
.{?internal;(PrizSum8<>0)
"НЧСЛ",8,^,^
.}
.{?internal;(PrizSum9<>0)
"НЧСЛ",9,^,^
.}
.{?internal;(PrizSum10<>0)
"НЧСЛ",10,^,^
.}
.{?internal;(PrizSum11<>0)
"НЧСЛ",11,^,^
.}
.{?internal;(PrizSum12<>0)
"НЧСЛ",12,^,^
.}
.{
.begin
 my_nach_st:= Нач_стажа;
 my_kon_st := Кон_стажа;
 IF Исчисл_труд_стаж_доп_свед1=0 then
  RИсчисл_труд_стаж_доп_свед1:='0'
 else
  RИсчисл_труд_стаж_доп_свед1:= string(Исчисл_труд_стаж_доп_свед1);
 if Исчисл_труд_стаж_доп_свед2=0 then
  RИсчисл_труд_стаж_доп_свед2:= '0'
 else
  RИсчисл_труд_стаж_доп_свед2:= string(Исчисл_труд_стаж_доп_свед2);
 if Выслуга_лет_доп_свед1=0 then
  RВыслуга_лет_доп_свед1:= '0'
 else
  RВыслуга_лет_доп_свед1:= string(Выслуга_лет_доп_свед1);
 if Выслуга_лет_доп_свед2=0 then
  RВыслуга_лет_доп_свед2:= '0'
 else
  RВыслуга_лет_доп_свед2:= string(Выслуга_лет_доп_свед2);
 IF Число_записей_лгот=0 then RЧисло_записей_лгот:= '0'
 else RЧисло_записей_лгот:= string(Число_записей_лгот);
 end.
.{?internal;Trim(Наим_стажа) <> 'АВАНС'
"^",^,"^","^","^","^","^",^,^,"^","^",^,^,"^",^,^
.{ CheckEnter Vred1
.}
.}
.{ CheckEnter Lgot
.begin
 if  Исчисл_труд_стаж_доп_свед1_Lgot=0 then
  RИсчисл_труд_стаж_доп_свед1_Lgot:= '0'
 else
  RИсчисл_труд_стаж_доп_свед1_Lgot:= string(Исчисл_труд_стаж_доп_свед1_Lgot);
 if  Исчисл_труд_стаж_доп_свед2_Lgot=0 then
  RИсчисл_труд_стаж_доп_свед2_Lgot:= '0'
 else
  RИсчисл_труд_стаж_доп_свед2_Lgot:= string(Исчисл_труд_стаж_доп_свед2_Lgot)
 end.
"^",^,"^",^,^,"^"
.{ CheckEnter Vred2
.}
.} //CheckEnter Lgot
.} //стаж
.}
.endform
!
!
!
.linkform 'SFond_MSFond04' prototype is 'SFond'
.nameinlist'Файл для ПФ на МН (в.02.40) без разбивки на пачки'
.group 'На магнитных носителях (в.02.40)'
.var
 my_pred    : string[40];
 FSum11, FSum12,
 FSum21, FSum22,
 FSum31, FSum32,
 FSum41, FSum42,
 FSum51, FSum52,
 FSum61, FSum62,
 FSum71, FSum72,
 FSum81, FSum82,
 FSum91, FSum92,
 FSum101, FSum102,
 FSum111, FSum112,
 FSum121, FSum122 : double;
 rrr,rrr_2, TypeChars: String;
 my_inn     : string
 pach_nmb   : word
 nomer      : word
 StrGod     : string
 kvartal    : string
 my_nach_st : String
 my_kon_st  : String
 KolNach    : integer
 SumNach    : double
 SumBoln    : double
 Counter    : integer
 RИсчисл_труд_стаж_доп_свед1     : string
 RИсчисл_труд_стаж_доп_свед2     : string
 RИсчисл_труд_стаж_доп_свед1_lgot: string
 RИсчисл_труд_стаж_доп_свед2_lgot: string
 RВыслуга_лет_доп_свед1          : string
 RВыслуга_лет_доп_свед2          : string
 RЧисло_записей_лгот             : string
 RDataDog                        : string
.endvar
.begin
  my_inn  := Upcase( Trim( Replace( inn, '"', '''' ) ) );
  my_pred := Upcase( Trim( Replace( Pred, '"', '''' ) ) );
 pach_nmb:= PachNumBegin;
 nomer  := 0;
 KolNach:= 0;
 SumNach:= 0;
 SumBoln:= 0;
 Counter:= 1;
end.
.{
.{?internal;(nomer=0)
.fields
   my_inn
   my_pred
   pach_nmb
   curdate
   PersonsNumb
.endfields
"ЗГЛВ","02.40"
"РБТД","РБТД","^","^"
"ПАЧК",^,"^",1
"ТИПД","ИНДС",^
.}
.begin
 nomer := nomer+1;
 StrGod := God;
 if CharF  = 0 then
   TypeChars := 'ИСХД'
 else if CharF  = 1
   TypeChars := 'КОРР'
 else if CharF  = 2
   TypeChars := 'ОТМН'
 else if CharF  = 3
   TypeChars := 'ПЕНС';
 if (квартал = '1') or (квартал = '2')then kvartal:= '2'
 else
 if (квартал = '3') or (квартал = '4') then kvartal:= '4'
 else
   kvartal:= '0';
! else kvartal:= квартал
 IF (Word(ДеньЗак)<>0)and(Word(МесяцЗак)<>0)and(Word(ГодЗак)<>0)
  RDataDog:= string(Date(Word(ДеньЗак), Word(МесяцЗак), Word(ГодЗак)))
 else
  RDataDog:=''
 end.
.fields
   nomer
   TypeChars
   trim(Страховой_номер)
   trim(UpCase(Фамилия))
   trim(UpCase(Имя))
   trim(UpCase(Отчество))
   kvartal StrGod
   НомерДоговора
   RDataDog
   UpCase(ВидВыплаты)
   UpCase(HP)
   ProcPens28
   Procent
   string(SumNach)
   string(SumBoln)
   curdate
   KolNach
   KolStag
.endfields
.begin
 KolNach:= 0;
 SumNach:= 0;
 SumBoln:= 0;
 FSum11 := Double(Sum11);
 FSum12 := Double(Sum12);
 FSum21 := Double(Sum21);
 FSum22 := Double(Sum22);
 FSum31 := Double(Sum31);
 FSum32 := Double(Sum32);
 FSum41 := Double(Sum41);
 FSum42 := Double(Sum42);
 FSum51 := Double(Sum51);
 FSum52 := Double(Sum52);
 FSum61 := Double(Sum61);
 FSum62 := Double(Sum62);
 FSum71 := Double(Sum71);
 FSum72 := Double(Sum72);
 FSum81 := Double(Sum81);
 FSum82 := Double(Sum82);
 FSum91 := Double(Sum91);
 FSum92 := Double(Sum92);
 FSum101:= Double(Sum101);
 FSum102:= Double(Sum102);
 FSum111:= Double(Sum111);
 FSum112:= Double(Sum112);
 FSum121:= Double(Sum121);
 FSum122:= Double(Sum122);

 if (PrizSum1<>0) then KolNach:= KolNach+1;
 if (PrizSum2<>0) then KolNach:= KolNach+1;
 if (PrizSum3<>0) then KolNach:= KolNach+1;
 if (PrizSum4<>0) then KolNach:= KolNach+1;
 if (PrizSum5<>0) then KolNach:= KolNach+1;
 if (PrizSum6<>0) then KolNach:= KolNach+1;
 if (PrizSum7<>0) then KolNach:= KolNach+1;
 if (PrizSum8<>0) then KolNach:= KolNach+1;
 if (PrizSum9<>0) then KolNach:= KolNach+1;
 if (PrizSum10<>0) then KolNach:= KolNach+1;
 if (PrizSum11<>0) then KolNach:= KolNach+1;
 if (PrizSum12<>0) then KolNach:= KolNach+1;

 if (FSum11<>0)or(FSum12<>0) then
  begin
    SumNach:= SumNach + FSum11;
    SumBoln:= SumBoln + FSum12;
  end;
 if (FSum21<>0)or(FSum22<>0) then
  begin
    SumNach:= SumNach + FSum21;
    SumBoln:= SumBoln + FSum22;
  end;
 if (FSum31<>0)or(FSum32<>0) then
  begin
    SumNach:= SumNach + FSum31;
    SumBoln:= SumBoln + FSum32;
  end;
 if (FSum41<>0)or(FSum42<>0) then
  begin
    SumNach:= SumNach + FSum41;
    SumBoln:= SumBoln + FSum42;
  end;
 if (FSum51<>0)or(FSum52<>0) then
  begin
    SumNach:= SumNach + FSum51;
    SumBoln:= SumBoln + FSum52;
  end;
 if (FSum61<>0)or(FSum62<>0) then
  begin
    SumNach:= SumNach + FSum61;
    SumBoln:= SumBoln + FSum62;
  end;
 if (FSum71<>0)or(FSum72<>0) then
  begin
    SumNach:= SumNach + FSum71;
    SumBoln:= SumBoln + FSum72;
  end;
 if (FSum81<>0)or(FSum82<>0) then
  begin
    SumNach:= SumNach + FSum81;
    SumBoln:= SumBoln + FSum82;
  end;
 if (FSum91<>0)or(FSum92<>0) then
  begin
    SumNach:= SumNach + FSum91;
    SumBoln:= SumBoln + FSum92;
  end;
 if (FSum101<>0)or(FSum102<>0) then
  begin
    SumNach:= SumNach + FSum101;
    SumBoln:= SumBoln + FSum102;
  end;
 if (FSum111<>0)or(FSum112<>0) then
  begin
    SumNach:= SumNach + FSum111;
    SumBoln:= SumBoln + FSum112;
  end;
 if (FSum121<>0)or(FSum122<>0) then
  begin
    SumNach:= SumNach + FSum121;
    SumBoln:= SumBoln + FSum122;
  end;
  if Okrug = 2
  {
    rrr   := '666666666666667.88';
    rrr_2 := '-666666666666667.88';
  }
  else if Okrug = 0
  {
    rrr   :='666666666666667';
    rrr_2 :='-666666666666667';
  }
end.
"ИНДС",^,"^","^","^","^","^",^,^,"^","^","^","^","РУБ",^,^,^,^,"^",^,^
.fields
 if (FSum11>=0,DoubleToStr(FSum11,rrr),DoubleToStr(FSum11,rrr_2)) if (FSum12>=0,DoubleToStr(FSum12,rrr),DoubleToStr(FSum12,rrr_2))
 if (FSum21>=0,DoubleToStr(FSum21,rrr),DoubleToStr(FSum21,rrr_2)) if (FSum22>=0,DoubleToStr(FSum22,rrr),DoubleToStr(FSum22,rrr_2))
 if (FSum31>=0,DoubleToStr(FSum31,rrr),DoubleToStr(FSum31,rrr_2)) if (FSum32>=0,DoubleToStr(FSum32,rrr),DoubleToStr(FSum32,rrr_2))
 if (FSum41>=0,DoubleToStr(FSum41,rrr),DoubleToStr(FSum41,rrr_2)) if (FSum42>=0,DoubleToStr(FSum42,rrr),DoubleToStr(FSum42,rrr_2))
 if (FSum51>=0,DoubleToStr(FSum51,rrr),DoubleToStr(FSum51,rrr_2)) if (FSum52>=0,DoubleToStr(FSum52,rrr),DoubleToStr(FSum52,rrr_2))
 if (FSum61>=0,DoubleToStr(FSum61,rrr),DoubleToStr(FSum61,rrr_2)) if (FSum62>=0,DoubleToStr(FSum62,rrr),DoubleToStr(FSum62,rrr_2))
 if (FSum71>=0,DoubleToStr(FSum71,rrr),DoubleToStr(FSum71,rrr_2)) if (FSum72>=0,DoubleToStr(FSum72,rrr),DoubleToStr(FSum72,rrr_2))
 if (FSum81>=0,DoubleToStr(FSum81,rrr),DoubleToStr(FSum81,rrr_2)) if (FSum82>=0,DoubleToStr(FSum82,rrr),DoubleToStr(FSum82,rrr_2))
 if (FSum91>=0,DoubleToStr(FSum91,rrr),DoubleToStr(FSum91,rrr_2)) if (FSum92>=0,DoubleToStr(FSum92,rrr),DoubleToStr(FSum92,rrr_2))
 if (FSum101>=0,DoubleToStr(FSum101,rrr),DoubleToStr(FSum101,rrr_2)) if (FSum102>=0,DoubleToStr(FSum102,rrr),DoubleToStr(FSum102,rrr_2))
 if (FSum111>=0,DoubleToStr(FSum111,rrr),DoubleToStr(FSum111,rrr_2)) if (FSum112>=0,DoubleToStr(FSum112,rrr),DoubleToStr(FSum112,rrr_2))
 if (FSum121>=0,DoubleToStr(FSum121,rrr),DoubleToStr(FSum121,rrr_2)) if (FSum122>=0,DoubleToStr(FSum122,rrr),DoubleToStr(FSum122,rrr_2))

   Наим_стажа
   nppSt
   my_nach_st my_kon_st
   UpCase(TerCond)
   UpCase(WorkCond)
   UpCase(Исчисл_труд_стаж_основание)
   RИсчисл_труд_стаж_доп_свед1
   RИсчисл_труд_стаж_доп_свед2
   UpCase(Исчисл_труд_стаж_доп_свед3)
   UpCase(Выслуга_лет_основание)
   RВыслуга_лет_доп_свед1
   RВыслуга_лет_доп_свед2
   Код_позиции_списка1
   RЧисло_записей_лгот
   Paйон_коэфф

 Наим_стажа_Lgot
 nppStLgot
 WorkCond_Lgot
 RИсчисл_труд_стаж_доп_свед1_Lgot
 RИсчисл_труд_стаж_доп_свед2_Lgot
 Код_позиции_списка2
.endfields
.{?internal;(PrizSum1<>0)
"НЧСЛ",1,^,^
.}
.{?internal;(PrizSum2<>0)
"НЧСЛ",2,^,^
.}
.{?internal;(PrizSum3<>0)
"НЧСЛ",3,^,^
.}
.{?internal;(PrizSum4<>0)
"НЧСЛ",4,^,^
.}
.{?internal;(PrizSum5<>0)
"НЧСЛ",5,^,^
.}
.{?internal;(PrizSum6<>0)
"НЧСЛ",6,^,^
.}
.{?internal;(PrizSum7<>0)
"НЧСЛ",7,^,^
.}
.{?internal;(PrizSum8<>0)
"НЧСЛ",8,^,^
.}
.{?internal;(PrizSum9<>0)
"НЧСЛ",9,^,^
.}
.{?internal;(PrizSum10<>0)
"НЧСЛ",10,^,^
.}
.{?internal;(PrizSum11<>0)
"НЧСЛ",11,^,^
.}
.{?internal;(PrizSum12<>0)
"НЧСЛ",12,^,^
.}
.{
.begin
 my_nach_st:= Нач_стажа;
 my_kon_st := Кон_стажа;
 IF Исчисл_труд_стаж_доп_свед1=0 then
  RИсчисл_труд_стаж_доп_свед1:='0'
 else
  RИсчисл_труд_стаж_доп_свед1:= string(Исчисл_труд_стаж_доп_свед1);
 if Исчисл_труд_стаж_доп_свед2=0 then
  RИсчисл_труд_стаж_доп_свед2:= '0'
 else
  RИсчисл_труд_стаж_доп_свед2:= string(Исчисл_труд_стаж_доп_свед2);
 if Выслуга_лет_доп_свед1=0 then
  RВыслуга_лет_доп_свед1:= '0'
 else
  RВыслуга_лет_доп_свед1:= string(Выслуга_лет_доп_свед1);
 if Выслуга_лет_доп_свед2=0 then
  RВыслуга_лет_доп_свед2:= '0'
 else
  RВыслуга_лет_доп_свед2:= string(Выслуга_лет_доп_свед2);
 IF Число_записей_лгот=0 then RЧисло_записей_лгот:= '0'
 else RЧисло_записей_лгот:= string(Число_записей_лгот);
 end.
.{?internal;Trim(Наим_стажа) <> 'АВАНС'
"^",^,"^","^","^","^","^",^,^,"^","^",^,^,"^",^,^
.{ CheckEnter Vred1
.}
.}
.{ CheckEnter Lgot
.begin
 if  Исчисл_труд_стаж_доп_свед1_Lgot=0 then
  RИсчисл_труд_стаж_доп_свед1_Lgot:= '0'
 else
  RИсчисл_труд_стаж_доп_свед1_Lgot:= string(Исчисл_труд_стаж_доп_свед1_Lgot);
 if  Исчисл_труд_стаж_доп_свед2_Lgot=0 then
  RИсчисл_труд_стаж_доп_свед2_Lgot:= '0'
 else
  RИсчисл_труд_стаж_доп_свед2_Lgot:= string(Исчисл_труд_стаж_доп_свед2_Lgot);
 end.
"^",^,"^",^,^,"^"
.{ CheckEnter Vred2
.}
.}
.}
.}
.endform
!
!#ifdef _SOCNAL_
.linkform 'SFond_MSFond05' prototype is 'SFond'
.nameinlist'Файл для ПФ на МН с разбивкой на пачки (в.02.50)'
.group 'Отчеты на магнитных носителях (в.02.50)'
.var
 FSum11, FSum12,
 FSum21, FSum22,
 FSum31, FSum32,
 FSum41, FSum42,
 FSum51, FSum52,
 FSum61, FSum62,
 FSum71, FSum72,
 FSum81, FSum82,
 FSum91, FSum92,
 FSum101, FSum102,
 FSum111, FSum112,
 FSum121, FSum122 : double;
 rrr,rrr_2,TypeChars: String;
 my_pred    : string[40];
 my_inn     : string
 pach_nmb   : word
 nomer      : word
 MyPersonCounter: integer;
 PersonCounterOut: integer;
 StrGod     : string
 kvartal    : string
 my_nach_st : string
 my_kon_st  : string
 KolNach    : integer
 SumNach    : double
 SumBoln    : double
 RИсчисл_труд_стаж_доп_свед1     : string
 RИсчисл_труд_стаж_доп_свед2     : string
 RИсчисл_труд_стаж_доп_свед1_lgot: string
 RИсчисл_труд_стаж_доп_свед2_lgot: string
 RВыслуга_лет_доп_свед3_lgot     : string
 RВыслуга_лет_доп_свед1          : string
 RВыслуга_лет_доп_свед2          : string
 RВыслуга_лет_доп_свед3          : string
 RЧисло_записей_лгот             : string
 RDataDog                        : string

.endvar
.begin
  my_inn  := Upcase( Trim( Replace( inn, '"', '''' ) ) );
  my_pred := Upcase( Trim( Replace( Pred, '"', '''' ) ) );
  pach_nmb:= PachNumBegin;
  nomer   := 0;
  KolNach := 0;
  SumNach := 0;
  SumBoln := 0;
  MyPersonCounter := 0;
  PersonCounterOut:= 0;
 end.
.{
.{?internal;nomer=AllCounter
.fields
   pach_nmb
.endfields
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.}
.{?internal;(nomer=0)or(nomer=AllCounter)
.begin
  if (PersonsNumb - MyPersonCounter) >= AllCounter
  {
    MyPersonCounter := MyPersonCounter + AllCounter;
    PersonCounterOut := AllCounter;
  }
  else
    PersonCounterOut := PersonsNumb - MyPersonCounter;
end.
.fields
   my_inn
   my_pred
   pach_nmb
   curdate
   PersonCounterOut
.endfields
.begin
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
"ЗГЛВ","02.50"
"РБТД","РБТД","^","^"
"ПАЧК",^,"^",1
"ТИПД","ИНДС",^
.}
.begin
 nomer := nomer+1;
 StrGod:= God;
 if CharF  = 0 then
   TypeChars := 'ИСХД'
 else if CharF  = 1
   TypeChars := 'КОРР'
 else if CharF  = 2
   TypeChars := 'ОТМН'
 else if CharF  = 3
   TypeChars := 'ПЕНС';
 if (квартал = '1') or (квартал = '2')then kvartal:= '2'
 else
 if (квартал = '3') or (квартал = '4') then kvartal:= '4'
 else
   kvartal:= '0';
! else kvartal:= квартал
 IF (Word(ДеньЗак)<>0)and(Word(МесяцЗак)<>0)and(Word(ГодЗак)<>0)
  RDataDog:= string(Date(Word(ДеньЗак), Word(МесяцЗак), Word(ГодЗак)))
 else
  RDataDog:=''
 end.
.fields
   nomer
   TypeChars
   trim(Страховой_номер)
   trim(UpCase(Фамилия))
   trim(UpCase(Имя))
   trim(UpCase(Отчество))
   kvartal StrGod
   НомерДоговора
   RDataDog
   UpCase(ВидВыплаты)
   UpCase(HP)
   ProcPens28
   Procent
   string(SumNach)
   string(SumBoln)
   curdate
   KolNach
   KolStag
.endfields
.begin
  KolNach:= 0;
  SumNach:= 0;
  SumBoln:= 0;
 FSum11 := Double(Sum11);
 FSum12 := Double(Sum12);
 FSum21 := Double(Sum21);
 FSum22 := Double(Sum22);
 FSum31 := Double(Sum31);
 FSum32 := Double(Sum32);
 FSum41 := Double(Sum41);
 FSum42 := Double(Sum42);
 FSum51 := Double(Sum51);
 FSum52 := Double(Sum52);
 FSum61 := Double(Sum61);
 FSum62 := Double(Sum62);
 FSum71 := Double(Sum71);
 FSum72 := Double(Sum72);
 FSum81 := Double(Sum81);
 FSum82 := Double(Sum82);
 FSum91 := Double(Sum91);
 FSum92 := Double(Sum92);
 FSum101:= Double(Sum101);
 FSum102:= Double(Sum102);
 FSum111:= Double(Sum111);
 FSum112:= Double(Sum112);
 FSum121:= Double(Sum121);
 FSum122:= Double(Sum122);

 if (PrizSum1<>0) then KolNach:= KolNach+1;
 if (PrizSum2<>0) then KolNach:= KolNach+1;
 if (PrizSum3<>0) then KolNach:= KolNach+1;
 if (PrizSum4<>0) then KolNach:= KolNach+1;
 if (PrizSum5<>0) then KolNach:= KolNach+1;
 if (PrizSum6<>0) then KolNach:= KolNach+1;
 if (PrizSum7<>0) then KolNach:= KolNach+1;
 if (PrizSum8<>0) then KolNach:= KolNach+1;
 if (PrizSum9<>0) then KolNach:= KolNach+1;
 if (PrizSum10<>0) then KolNach:= KolNach+1;
 if (PrizSum11<>0) then KolNach:= KolNach+1;
 if (PrizSum12<>0) then KolNach:= KolNach+1;

 if (FSum11<>0)or(FSum12<>0) then
  begin
    SumNach:= SumNach + FSum11;
    SumBoln:= SumBoln + FSum12;
  end;
 if (FSum21<>0)or(FSum22<>0) then
  begin
    SumNach:= SumNach + FSum21;
    SumBoln:= SumBoln + FSum22;
  end;
 if (FSum31<>0)or(FSum32<>0) then
  begin
    SumNach:= SumNach + FSum31;
    SumBoln:= SumBoln + FSum32;
  end;
 if (FSum41<>0)or(FSum42<>0) then
  begin
    SumNach:= SumNach + FSum41;
    SumBoln:= SumBoln + FSum42;
  end;
 if (FSum51<>0)or(FSum52<>0) then
  begin
    SumNach:= SumNach + FSum51;
    SumBoln:= SumBoln + FSum52;
  end;
 if (FSum61<>0)or(FSum62<>0) then
  begin
    SumNach:= SumNach + FSum61;
    SumBoln:= SumBoln + FSum62;
  end;
 if (FSum71<>0)or(FSum72<>0) then
  begin
    SumNach:= SumNach + FSum71;
    SumBoln:= SumBoln + FSum72;
  end;
 if (FSum81<>0)or(FSum82<>0) then
  begin
    SumNach:= SumNach + FSum81;
    SumBoln:= SumBoln + FSum82;
  end;
 if (FSum91<>0)or(FSum92<>0) then
  begin
    SumNach:= SumNach + FSum91;
    SumBoln:= SumBoln + FSum92;
  end;
 if (FSum101<>0)or(FSum102<>0) then
  begin
    SumNach:= SumNach + FSum101;
    SumBoln:= SumBoln + FSum102;
  end;
 if (FSum111<>0)or(FSum112<>0) then
  begin
    SumNach:= SumNach + FSum111;
    SumBoln:= SumBoln + FSum112;
  end;
 if (FSum121<>0)or(FSum122<>0) then
  begin
    SumNach:= SumNach + FSum121;
    SumBoln:= SumBoln + FSum122;
  end;
  if Okrug = 2
  {
    rrr   := '666666666666667.88';
    rrr_2 := '-666666666666667.88';
  }
  else if Okrug = 0
  {
    rrr   :='666666666666667';
    rrr_2 :='-666666666666667';
  }
end.
"ИНДС",^,"^","^","^","^","^",^,^,"^","^","^","^","РУБ",^,^,^,^,"^",^,^
.fields
 if (FSum11>=0,DoubleToStr(FSum11,rrr),DoubleToStr(FSum11,rrr_2)) if (FSum12>=0,DoubleToStr(FSum12,rrr),DoubleToStr(FSum12,rrr_2))
 if (FSum21>=0,DoubleToStr(FSum21,rrr),DoubleToStr(FSum21,rrr_2)) if (FSum22>=0,DoubleToStr(FSum22,rrr),DoubleToStr(FSum22,rrr_2))
 if (FSum31>=0,DoubleToStr(FSum31,rrr),DoubleToStr(FSum31,rrr_2)) if (FSum32>=0,DoubleToStr(FSum32,rrr),DoubleToStr(FSum32,rrr_2))
 if (FSum41>=0,DoubleToStr(FSum41,rrr),DoubleToStr(FSum41,rrr_2)) if (FSum42>=0,DoubleToStr(FSum42,rrr),DoubleToStr(FSum42,rrr_2))
 if (FSum51>=0,DoubleToStr(FSum51,rrr),DoubleToStr(FSum51,rrr_2)) if (FSum52>=0,DoubleToStr(FSum52,rrr),DoubleToStr(FSum52,rrr_2))
 if (FSum61>=0,DoubleToStr(FSum61,rrr),DoubleToStr(FSum61,rrr_2)) if (FSum62>=0,DoubleToStr(FSum62,rrr),DoubleToStr(FSum62,rrr_2))
 if (FSum71>=0,DoubleToStr(FSum71,rrr),DoubleToStr(FSum71,rrr_2)) if (FSum72>=0,DoubleToStr(FSum72,rrr),DoubleToStr(FSum72,rrr_2))
 if (FSum81>=0,DoubleToStr(FSum81,rrr),DoubleToStr(FSum81,rrr_2)) if (FSum82>=0,DoubleToStr(FSum82,rrr),DoubleToStr(FSum82,rrr_2))
 if (FSum91>=0,DoubleToStr(FSum91,rrr),DoubleToStr(FSum91,rrr_2)) if (FSum92>=0,DoubleToStr(FSum92,rrr),DoubleToStr(FSum92,rrr_2))
 if (FSum101>=0,DoubleToStr(FSum101,rrr),DoubleToStr(FSum101,rrr_2)) if (FSum102>=0,DoubleToStr(FSum102,rrr),DoubleToStr(FSum102,rrr_2))
 if (FSum111>=0,DoubleToStr(FSum111,rrr),DoubleToStr(FSum111,rrr_2)) if (FSum112>=0,DoubleToStr(FSum112,rrr),DoubleToStr(FSum112,rrr_2))
 if (FSum121>=0,DoubleToStr(FSum121,rrr),DoubleToStr(FSum121,rrr_2)) if (FSum122>=0,DoubleToStr(FSum122,rrr),DoubleToStr(FSum122,rrr_2))

   Наим_стажа
   nppSt
   my_nach_st my_kon_st
!   UpCase(TerCond)
   UpCase(WorkCond)
   Код_позиции_списка1
   UpCase(Исчисл_труд_стаж_основание)
   RИсчисл_труд_стаж_доп_свед1
   RИсчисл_труд_стаж_доп_свед2
   UpCase(Исчисл_труд_стаж_доп_свед3)
   UpCase(Выслуга_лет_основание)
   RВыслуга_лет_доп_свед1
   RВыслуга_лет_доп_свед2
   DoubleToStr(Double(RВыслуга_лет_доп_свед3),'666666666666667.88')
   UpCase(TerCond)

!  Код_позиции_списка1
   Paйон_коэфф
!   Paйон_коэфф
   RЧисло_записей_лгот

 Наим_стажа_Lgot
 nppStLgot
 UpCase(WorkCond_Lgot)
 Код_позиции_списка2
 UpCase(Исчисл_труд_стаж_основание_Lgot)
 RИсчисл_труд_стаж_доп_свед1_Lgot
 RИсчисл_труд_стаж_доп_свед2_Lgot
 UpCase(Исчисл_труд_стаж_доп_свед3_Lgot)
 UpCase(Выслуга_лет_основание_Lgot)
 Выслуга_лет_доп_свед1_Lgot
 Выслуга_лет_доп_свед2_Lgot
 DoubleToStr(Double(RВыслуга_лет_доп_свед3_Lgot),'666666666666667.88')
 UpCase(TerCond_Lgot)
 Paйон_коэфф_Lgot
! Paйон_коэфф_Lgot
.endfields
.{?internal;(PrizSum1<>0)
"НЧСЛ",1,^,^
.}
.{?internal;(PrizSum2<>0)
"НЧСЛ",2,^,^
.}
.{?internal;(PrizSum3<>0)
"НЧСЛ",3,^,^
.}
.{?internal;(PrizSum4<>0)
"НЧСЛ",4,^,^
.}
.{?internal;(PrizSum5<>0)
"НЧСЛ",5,^,^
.}
.{?internal;(PrizSum6<>0)
"НЧСЛ",6,^,^
.}
.{?internal;(PrizSum7<>0)
"НЧСЛ",7,^,^
.}
.{?internal;(PrizSum8<>0)
"НЧСЛ",8,^,^
.}
.{?internal;(PrizSum9<>0)
"НЧСЛ",9,^,^
.}
.{?internal;(PrizSum10<>0)
"НЧСЛ",10,^,^
.}
.{?internal;(PrizSum11<>0)
"НЧСЛ",11,^,^
.}
.{?internal;(PrizSum12<>0)
"НЧСЛ",12,^,^
.}
.{
.begin
 my_nach_st:= Нач_стажа;
 my_kon_st := Кон_стажа;
 IF Исчисл_труд_стаж_доп_свед1=0 then
  RИсчисл_труд_стаж_доп_свед1:='0'
 else
  RИсчисл_труд_стаж_доп_свед1:= UpCase(string(Исчисл_труд_стаж_доп_свед1));

 if Исчисл_труд_стаж_доп_свед2=0 then
  RИсчисл_труд_стаж_доп_свед2:= '0'
 else
  RИсчисл_труд_стаж_доп_свед2:= UpCase(string(Исчисл_труд_стаж_доп_свед2));

 if Выслуга_лет_доп_свед1=0 then
  RВыслуга_лет_доп_свед1:= '0'
 else
  RВыслуга_лет_доп_свед1:= UpCase(string(Выслуга_лет_доп_свед1));
 if Выслуга_лет_доп_свед2=0 then
  RВыслуга_лет_доп_свед2:= '0'
 else
  RВыслуга_лет_доп_свед2:= UpCase(string(Выслуга_лет_доп_свед2));
 if Выслуга_лет_доп_свед3=0 then
  RВыслуга_лет_доп_свед3:= '0.00'
 else
  RВыслуга_лет_доп_свед3:= DoubleToStr(Выслуга_лет_доп_свед3,'66666.99');

 IF Число_записей_лгот=0 then RЧисло_записей_лгот:= '0'
 else RЧисло_записей_лгот:= string(Число_записей_лгот);
 end.
.{?internal;Trim(Наим_стажа) <> 'АВАНС'
"^",^,"^","^","^","^","^",^,^,"^","^",^,^,^,"^",^,^
.{ CheckEnter Vred1
.}
.}
.{ CheckEnter Lgot
.begin
 if  Исчисл_труд_стаж_доп_свед1_Lgot=0 then
  RИсчисл_труд_стаж_доп_свед1_Lgot:= '0'
 else
  RИсчисл_труд_стаж_доп_свед1_Lgot:= UpCase(string(Исчисл_труд_стаж_доп_свед1_Lgot));
 if  Исчисл_труд_стаж_доп_свед2_Lgot=0 then
  RИсчисл_труд_стаж_доп_свед2_Lgot:= '0'
 else
  RИсчисл_труд_стаж_доп_свед2_Lgot:= UpCase(string(Исчисл_труд_стаж_доп_свед2_Lgot));
 if  Выслуга_лет_доп_свед3_lgot=0 then
  RВыслуга_лет_доп_свед3_lgot:= '0.00'
 else
  RВыслуга_лет_доп_свед3_lgot:= DoubleToStr(Выслуга_лет_доп_свед3_lgot,'66667.99');
 end.
"^",^,"^","^","^",^,^,"^","^",^,^,^,"^",^
.{ CheckEnter Vred2
.}
.} //CheckEnter Lgot
.} //стаж
.}
.endform
!
!
!
.linkform 'SFond_b2.50' prototype is 'SFond'
.nameinlist'С итоговыми суммами по страховым взносам (в.02.50)'
.group 'Отчеты на бумаге (в.02.50)'
.var
 counter                         : integer
 pachn                           : integer
 Исчисл_труд_стаж_доп            : string
 Выслуга_лет_доп                 : string
 Исчисл_труд_стаж_доп_Lgot       : string
 Выслуга_лет_доп_Lgot            : string
 RВыслуга_лет_доп_свед3          : string
 RВыслуга_лет_доп_свед3_lgot     : string
.endvar
.fields
 pachn
 counter
 Страховой_номер
 Фамилия
 Имя CharF1
 Отчество CharF2
 strквартал
 God CharF3 CharF4
 INN
 Pred
 UpCase(HP) UpCase(НАЕМ)
 ProcPens28 Val1
 Procent
 Sum11   Sum12
 Sum21   Sum22
 Sum31   Sum32
 Sum41   Sum42
 Sum51   Sum52
 Sum61   Sum62
 Sum71   Sum72
 Sum81   Sum82
 Sum91   Sum92
 Sum101  Sum102
 Sum111  Sum112
 Sum121  Sum122
 ISum1   ISum2
 НомерДоговора
 ДеньЗак datetostr(to_date(1,Word(МесяцЗак),2000),'mon') ГодЗак
 UpCase(ВидВыплаты)

 nppSt Нач_стажа Кон_стажа
 UpCase(TerCond)
 UpCase(WorkCond)
 UpCase(Исчисл_труд_стаж_основание)
 Исчисл_труд_стаж_доп
 UpCase(Выслуга_лет_основание)
 Выслуга_лет_доп
.endfields
.begin
  counter  := 0;
  pachn    := PachNumBegin;
end.
.{
.begin
  counter:=counter + 1
end.
    ШКонфиденциальность информации гарантируется получателем Ш
    МФорма СЗВ-1 Д         Код по ОКУД И

 Б                      ИНДИВИДУАЛЬНЫЕ  СВЕДЕНИЯ                    ^-^
       О ТРУДОВОМ СТАЖЕ, ЗАРАБОТКЕ (ВОЗНАГРАЖДЕНИИ), ДОХОДЕ
       И НАЧИСЛЕННЫХ СТРАХОВЫХ ВЗНОСАХ ЗАСТРАХОВАННОГО ЛИЦА Б

   Страховой номер  Б@@@@@@@@@@@@@@@@@@@@ Б                 ┌────────────────────┐
   Фамилия          Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│     Тип формы      │
   Имя              Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ исходная         │
   Отчество         Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ корректирующая   │
   Отчетный период   @~@@@@@@@@@@@  Б&&&& Б год             │ @ отменяющая       │
   Сведения о работодателе                              │ @ назначение пенсии│
   Регистрационный номер  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б└────────────────────┘
   Наименование  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

 И   Категория плательщика страховых взносов: код  Б@@@@ Б наименование  Б@@@@@@@@@@@@@@@@@@@@ Й
   Сумма начисленных страховых взносов:
      уплачиваемых работодателем                      &'&&&&&&&&&&&&&&& (@@@@)
      уплачиваемых из заработка застрахованного лица  &'&&&&&&&&&&&&&&& (руб.)
    ИСведения о заработке (вознаграждении), доходе за отчетный период: И
 И  ┌───────────────┬─────────────────────────────────────────────────────────────────────────┐
  │               │         общие начисления, учитываемые при назначении пенсии             │
  │ Месяц         ├─────────────────────────────────┬───────────────────────────────────────┤
  │               │           всего                 │в том числе по больничным листам       │
  │               │                                 │  (листкам нетрудоспособности)         │
  │               │                                 │          и стипендии                  │
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │ Январь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Февраль       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Март          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Апрель        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Май           │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июнь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июль          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Август        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Сентябрь      │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Октябрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Ноябрь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Декабрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │  Итого        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  └───────────────┴─────────────────────────────────┴───────────────────────────────────────┘ И
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
    ИСтаж работы за отчетный период: И
 Р  ┌────┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
 Р  │    │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
 Р  │    │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
 Р  │ N  │  периода   │  периода   │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
 Р  │    │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
 Р  │    │            │            │  (код)   │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
 Р  ├────┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.{
.begin
 if  Выслуга_лет_доп_свед3=0 then
  RВыслуга_лет_доп_свед3:= ''
 else
  RВыслуга_лет_доп_свед3:= String(Выслуга_лет_доп_свед3)+
  ' '+Ед_изм_Выслуга_лет_доп_свед3;
 Исчисл_труд_стаж_доп:= Строка_Исчисл_труд_стаж_доп_свед1+
                        Строка_Исчисл_труд_стаж_доп_свед2+
                        UpCase(Исчисл_труд_стаж_доп_свед3);
 Выслуга_лет_доп     := Строка_Выслуга_лет_доп_свед1+
                        Строка_Выслуга_лет_доп_свед2+' '+
                        RВыслуга_лет_доп_свед3;
end.
 Р  │&&. │ &&&&&&&&&& │ &&&&&&&&&& │@~@@@@@@@@│@~@@@@@@@@│@~@@@@@@@│@~@@@@@@@@@@│@~@@@@@@@@@│@~@@@@@@@@@@│ Р
.{ CheckEnter Vred1
.fields
Код_позиции_списка1С
.endfields
 Р  │    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.{ CheckEnter Lgot
.begin
 if  Выслуга_лет_доп_свед3_lgot=0 then
  RВыслуга_лет_доп_свед3_lgot:= ''
 else
  RВыслуга_лет_доп_свед3_lgot:= String(Выслуга_лет_доп_свед3_lgot)+
  ' '+Ед_изм_Выслуга_лет_доп_свед3_lgot;

 Исчисл_труд_стаж_доп_Lgot:= Строка_Исчисл_труд_стаж_доп_свед1_Lgot+
                             Строка_Исчисл_труд_стаж_доп_свед2_Lgot+' '+
                             UpCase(Исчисл_труд_стаж_доп_свед3_Lgot);
 Выслуга_лет_доп_Lgot:=  Строка_Выслуга_лет_доп_свед1_Lgot+
                         Строка_Выслуга_лет_доп_свед2_Lgot+' '+
                         RВыслуга_лет_доп_свед3_Lgot;
end.
.fields
!новое
UpCase(TerCond_Lgot)
!
UpCase(WorkCond_Lgot)
!новое
UpCase( Исчисл_труд_стаж_основание_Lgot)
!
UpCase( Исчисл_труд_стаж_доп_Lgot)
!новое
UpCase( Выслуга_лет_основание_Lgot)
 Выслуга_лет_доп_Lgot
!
.endfields
 Р  │    │            │            │@~@@@@@@@@│@~@@@@@@@@│@~@@@@@@@│@~@@@@@@@@@@│@~@@@@@@@@@│@~@@@@@@@@@@│ Р
.{ CheckEnter Vred2
.fields
Код_позиции_списка2С
.endfields
 Р  │    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.}
.}
 Р  └────┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи
.fields
 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год
.endfields

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

 Дата "&&" @@@@@@@@ &&&& года                    М.П. И


.{?internal;counter=Allcounter
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
!  pachN
  counter
  counter
  pachN
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
 FIO_KP
 itognach_Boln
 itogAvans
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем   # &&

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:
┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘
 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 Дата "&&" @@@@@@@@ &&&& года                    М.П.

 Отметка "ПРИНЯТО"                                1. Сумма начислений за от-
 Специалист КП                                    четный период (за минусом
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  б/л), руб.
 ──────────────────────────                       &&&&&&&&&&&&&&&&&&&&&&&&&&
   (Ф.И.О)
                                                  2. Сумма страховых взносов
 ──────────────────────────                       за отчетный период, руб.
 Дата                                             &&&&&&&&&&&&&&&&&&&&&&&&&&

 ──────────────────────────
 Подпись
-------------------------------------------------------------------------------

.begin
  if counter = Allcounter then begin
    pachn   := pachn + 1;
    counter := 0;
    end
end.
.}

.}

.{?internal;(counter<>Allcounter)and(counter<>0)
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
!  pachN
  counter
  counter
  pachN
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
 FIO_KP
 itognach_Boln
 itogAvans
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем   # &&

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:
┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘
 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

   Дата "&&" @@@@@@@@ &&&& года                    М.П.

 Отметка "ПРИНЯТО"                                1. Сумма начислений за от-
 Специалист КП                                    четный период (за минусом
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  б/л), руб.
 ──────────────────────────                       &&&&&&&&&&&&&&&&&&&&&&&&&&
   (Ф.И.О)
                                                  2. Сумма страховых взносов
 ──────────────────────────                       за отчетный период, руб.
 Дата                                             &&&&&&&&&&&&&&&&&&&&&&&&&&

 ──────────────────────────
 Подпись
.}
.endform

!#end
.linkform 'SFond_01' prototype is 'SFond'
.nameinlist'Индивидуальная карточка (в.02.40)'
.group 'Отчеты на бумаге (в.02.40)'
.var
 counter                         : integer
 pachn                           : integer
 Исчисл_труд_стаж_доп            : string
 Выслуга_лет_доп                 : string
 Исчисл_труд_стаж_доп_Lgot       : string
.endvar
.fields
 pachn
 counter
 Страховой_номер
 Фамилия
 Имя CharF1
 Отчество CharF2
 strквартал
 God CharF3 CharF4
 INN
 Pred
 UpCase(HP) UpCase(НАЕМ)
 ProcPens28 Val1
 Procent
 Sum11   Sum12
 Sum21   Sum22
 Sum31   Sum32
 Sum41   Sum42
 Sum51   Sum52
 Sum61   Sum62
 Sum71   Sum72
 Sum81   Sum82
 Sum91   Sum92
 Sum101  Sum102
 Sum111  Sum112
 Sum121  Sum122
 ISum1   ISum2
 НомерДоговора
 ДеньЗак datetostr(to_date(1,Word(МесяцЗак),2000),'mon') ГодЗак
 UpCase(ВидВыплаты)
 nppSt Нач_стажа Кон_стажа
 UpCase(TerCond)
 UpCase(WorkCond)
 UpCase(Исчисл_труд_стаж_основание)
 Исчисл_труд_стаж_доп
 UpCase(Выслуга_лет_основание)
 Выслуга_лет_доп
.endfields
.begin
  counter  := 0;
  pachn    := PachNumBegin;
end.
.{
.begin
  counter:=counter + 1
end.
    ШКонфиденциальность информации гарантируется получателем Ш
    МФорма СЗВ-1 Д         Код по ОКУД И

 Б                      ИНДИВИДУАЛЬНЫЕ  СВЕДЕНИЯ                    ^-^
       О ТРУДОВОМ СТАЖЕ, ЗАРАБОТКЕ (ВОЗНАГРАЖДЕНИИ), ДОХОДЕ
       И НАЧИСЛЕННЫХ СТРАХОВЫХ ВЗНОСАХ ЗАСТРАХОВАННОГО ЛИЦА Б

   Страховой номер  Б@@@@@@@@@@@@@@@@@@@@ Б                 ┌────────────────────┐
   Фамилия          Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│     Тип формы      │
   Имя              Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ исходная         │
   Отчество         Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ корректирующая   │
   Отчетный период   @~@@@@@@@@@@@  Б&&&& Б год             │ @ отменяющая       │
   Сведения о работодателе                              │ @ назначение пенсии│
   Регистрационный номер  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б└────────────────────┘
   Наименование  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

 И   Категория плательщика страховых взносов: код  Б@@@@ Б наименование  Б@@@@@@@@@@@@@@@@@@@@ Й
   Сумма начисленных страховых взносов:
      уплачиваемых работодателем                     &'&&&&&&&&&&&&&&& (@@@@)
      уплачиваемых из заработка застрахованного лица &'&&&&&&&&&&&&&&& (руб.)
    ИСведения о заработке (вознаграждении), доходе за отчетный период: И
 И  ┌───────────────┬─────────────────────────────────────────────────────────────────────────┐
  │               │         общие начисления, учитываемые при назначении пенсии             │
  │ Месяц         ├─────────────────────────────────┬───────────────────────────────────────┤
  │               │           всего                 │в том числе по больничным листам       │
  │               │                                 │  (листкам нетрудоспособности)         │
  │               │                                 │          и стипендии                  │
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │ Январь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Февраль       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Март          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Апрель        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Май           │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июнь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июль          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Август        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Сентябрь      │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Октябрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Ноябрь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Декабрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │  Итого        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  └───────────────┴─────────────────────────────────┴───────────────────────────────────────┘ И
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
    ИСтаж работы за отчетный период: И
 Р  ┌───┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
 Р  │   │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
 Р  │   │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
 Р  │ N │  периода   │  периода   │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
 Р  │   │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
 Р  │   │            │            │  (код)   │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
 Р  ├───┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.{
.begin
 Исчисл_труд_стаж_доп:= Строка_Исчисл_труд_стаж_доп_свед1+
                        Строка_Исчисл_труд_стаж_доп_свед2+
                        UpCase(Исчисл_труд_стаж_доп_свед3);
 Выслуга_лет_доп     := Строка_Выслуга_лет_доп_свед1+
                        Строка_Выслуга_лет_доп_свед2;
end.
 Р  │&&.│ &&&&&&&&&& │ &&&&&&&&&& │@~@@@@@@@@│@~@@@@@@@@│@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@│ Р
.{ CheckEnter Vred1
.fields
Код_позиции_списка1С
.endfields
 Р  │   │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.{ CheckEnter Lgot
.begin
 Исчисл_труд_стаж_доп_Lgot:= Строка_Исчисл_труд_стаж_доп_свед1_Lgot+
                             Строка_Исчисл_труд_стаж_доп_свед2_Lgot;
end.
.fields
 WorkCond_Lgot
 Исчисл_труд_стаж_доп_Lgot
.endfields
 Р  │   │            │            │          │@~@@@@@@@@│         │@@@@@@@@@@@@│           │            │ Р
.{ CheckEnter Vred2
.fields
Код_позиции_списка2С
.endfields
 Р  │   │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.}
.}
 Р  └───┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи
.fields
 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год
.endfields

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

   Дата "&&" @@@@@@@@ &&&& года                    М.П. И


.{?internal;counter=Allcounter
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
!  pachN
  counter
  counter
  pachN
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем   # &&

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:

┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

   Дата "&&" @@@@@@@@ &&&& года                    М.П.
-------------------------------------------------------------------------------

.begin
  if counter = Allcounter then begin
    pachn   := pachn + 1;
    counter := 0;
    end
end.
.}

.}

.{?internal;(counter<>Allcounter)and(counter<>0)
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
!  pachN
  counter
  counter
  pachN
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем   # &&

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:

┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

   Дата "&&" @@@@@@@@ &&&& года                    М.П.
.}
.endform
!
!
!
.linkform 'SFond_03' prototype is 'SFond'
.nameinlist' Индивидуальная карточка (в.02.40)'
.group 'На бумаге (в.02.40)'
.var
 counter                         : integer
 rabvar                          : integer
 Исчисл_труд_стаж_доп            : string
 Выслуга_лет_доп                 : string
 Исчисл_труд_стаж_доп_Lgot       : string
.endvar
.fields
 counter
 Страховой_номер
 Фамилия
 Имя CharF1
 Отчество CharF2
 strквартал
 God CharF3 CharF4
 INN
 Pred
 UpCase(HP) UpCase(НАЕМ)
 ProcPens28 Val1
 Procent
 Sum11   Sum12
 Sum21   Sum22
 Sum31   Sum32
 Sum41   Sum42
 Sum51   Sum52
 Sum61   Sum62
 Sum71   Sum72
 Sum81   Sum82
 Sum91   Sum92
 Sum101  Sum102
 Sum111  Sum112
 Sum121  Sum122
 ISum1   ISum2
 НомерДоговора
 ДеньЗак datetostr(to_date(1,Word(МесяцЗак),2000),'mon') ГодЗак
 UpCase(ВидВыплаты)

 nppSt Нач_стажа Кон_стажа
 UpCase(TerCond)
 UpCase(WorkCond)
 UpCase(Исчисл_труд_стаж_основание)
 Исчисл_труд_стаж_доп
 UpCase(Выслуга_лет_основание)
 Выслуга_лет_доп
.endfields
.begin
  counter  := 0;
  rabvar   := 0;
end.
.{
.begin
  counter:=counter + 1
end.
    ШКонфиденциальность информации гарантируется получателем Ш
    МФорма СЗВ-1 Д         Код по ОКУД И

 Б                      ИНДИВИДУАЛЬНЫЕ  СВЕДЕНИЯ                    ^
       О ТРУДОВОМ СТАЖЕ, ЗАРАБОТКЕ (ВОЗНАГРАЖДЕНИИ), ДОХОДЕ
       И НАЧИСЛЕННЫХ СТРАХОВЫХ ВЗНОСАХ ЗАСТРАХОВАННОГО ЛИЦА Б

   Страховой номер  Б@@@@@@@@@@@@@@@@@@@@ Б                 ┌────────────────────┐
   Фамилия          Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│     Тип формы      │
   Имя              Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ исходная         │
   Отчество         Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ корректирующая   │
   Отчетный период   @~@@@@@@@@@@@  Б&&&& Б год             │ @ отменяющая       │
   Сведения о работодателе                              │ @ назначение пенсии│
   Регистрационный номер  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б└────────────────────┘
   Наименование  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

 И   Категория плательщика страховых взносов:код  Б@@@@ Б наименование  Б@@@@@@@@@@@@@@@@@@@@ Й
   Сумма начисленных страховых взносов:
      уплачиваемых работодателем                      &'&&&&&&&&&&&&&&& (@@@@)
      уплачиваемых из заработка застрахованного лица  &'&&&&&&&&&&&&&&& (руб.)
    ИСведения о заработке (вознаграждении), доходе за отчетный период: И
 И  ┌───────────────┬─────────────────────────────────────────────────────────────────────────┐
  │               │         общие начисления, учитываемые при назначении пенсии             │
  │ Месяц         ├─────────────────────────────────┬───────────────────────────────────────┤
  │               │           всего                 │в том числе по больничным листам       │
  │               │                                 │  (листкам нетрудоспособности)         │
  │               │                                 │          и стипендии                  │
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │ Январь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Февраль       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Март          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Апрель        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Май           │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июнь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июль          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Август        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Сентябрь      │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Октябрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Ноябрь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Декабрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │  Итого        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  └───────────────┴─────────────────────────────────┴───────────────────────────────────────┘ И
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
    ИСтаж работы за отчетный период: И
 Р  ┌────┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
 Р  │    │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
 Р  │    │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
 Р  │ N  │  периода   │   периода  │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
 Р  │    │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
 Р  │    │            │            │ (код)    │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
 Р  ├────┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.{
.begin
 Исчисл_труд_стаж_доп:= Строка_Исчисл_труд_стаж_доп_свед1+
                        Строка_Исчисл_труд_стаж_доп_свед2+
                        UpCase(Исчисл_труд_стаж_доп_свед3);
 Выслуга_лет_доп     := Строка_Выслуга_лет_доп_свед1+
                        Строка_Выслуга_лет_доп_свед2;
end.
 Р  │&&. │ &&&&&&&&&& │ &&&&&&&&&& │@~@@@@@@@@│@~@@@@@@@@│@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@│ Р
.{ CheckEnter Vred1
.fields
Код_позиции_списка1С
.endfields
 Р  │    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.{ CheckEnter Lgot
.begin
 Исчисл_труд_стаж_доп_Lgot:= Строка_Исчисл_труд_стаж_доп_свед1_Lgot+
                             Строка_Исчисл_труд_стаж_доп_свед2_Lgot;
end.
.fields
 WorkCond_Lgot
 Исчисл_труд_стаж_доп_Lgot
.endfields
 Р  │    │            │            │          │@~@@@@@@@@│         │@@@@@@@@@@@@│           │            │ Р
.{ CheckEnter Vred2
.fields
Код_позиции_списка2С
.endfields
 Р  │    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.}
.}
 Р  └────┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи Ш
.fields
 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год
.endfields

 Ш   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

   Дата "&&" @@@@@@@@ &&&& года                    М.П. И
.begin
 rabvar:=1;
end.


.}

.{?internal;(rabvar=1)
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
  counter
  counter
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:

┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘

 И Наименование должности руководителя  Подпись       Расшифровка подписи И

 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И

   Дата "&&" @@@@@@@@ &&&& года         М.П.
-------------------------------------------------------------------------------
.}
.endform
!
!
!
.linkform 'SFond_last1' prototype is 'SFond'
.nameinlist' С итоговыми суммами по страховым взносам (в.02.40)'
.group 'На бумаге (в.02.40)'
.var
 counter                         : integer
 rabvar                          : integer
 Исчисл_труд_стаж_доп            : string
 Выслуга_лет_доп                 : string
 Исчисл_труд_стаж_доп_Lgot       : string
.endvar
.fields
 counter
 Страховой_номер
 Фамилия
 Имя CharF1
 Отчество CharF2
 strквартал
 God CharF3 CharF4
 INN
 Pred
 UpCase(HP) UpCase(НАЕМ)
 ProcPens28 Val1
 Procent
 Sum11   Sum12
 Sum21   Sum22
 Sum31   Sum32
 Sum41   Sum42
 Sum51   Sum52
 Sum61   Sum62
 Sum71   Sum72
 Sum81   Sum82
 Sum91   Sum92
 Sum101  Sum102
 Sum111  Sum112
 Sum121  Sum122
 ISum1   ISum2
 НомерДоговора
 ДеньЗак datetostr(to_date(1,Word(МесяцЗак),2000),'mon') ГодЗак
 UpCase(ВидВыплаты)

 nppSt Нач_стажа Кон_стажа
 UpCase(TerCond)
 UpCase(WorkCond)
 UpCase(Исчисл_труд_стаж_основание)
 Исчисл_труд_стаж_доп
 UpCase(Выслуга_лет_основание)
 Выслуга_лет_доп_свед1
.endfields
.begin
  counter  := 0;
  rabvar   := 0;
end.
.{
.begin
  counter:=counter + 1
end.
    ШКонфиденциальность информации гарантируется получателем Ш
    МФорма СЗВ-1 Д         Код по ОКУД И

 Б                      ИНДИВИДУАЛЬНЫЕ  СВЕДЕНИЯ                    ^
       О ТРУДОВОМ СТАЖЕ, ЗАРАБОТКЕ (ВОЗНАГРАЖДЕНИИ), ДОХОДЕ
       И НАЧИСЛЕННЫХ СТРАХОВЫХ ВЗНОСАХ ЗАСТРАХОВАННОГО ЛИЦА Б

   Страховой номер  Б@@@@@@@@@@@@@@@@@@@@ Б                 ┌────────────────────┐
   Фамилия          Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│     Тип формы      │
   Имя              Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ исходная         │
   Отчество         Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ корректирующая   │
   Отчетный период   @~@@@@@@@@@@@  Б&&&& Б год             │ @ отменяющая       │
   Сведения о работодателе                              │ @ назначение пенсии│
   Регистрационный номер  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б└────────────────────┘
   Наименование  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

 И   Категория плательщика страховых взносов: код  Б@@@@ Б наименование  Б@@@@@@@@@@@@@@@@@@@@ Й
   Сумма начисленных страховых взносов:
      уплачиваемых работодателем                      &'&&&&&&&&&&&&&&& (@@@@)
      уплачиваемых из заработка застрахованного лица  &'&&&&&&&&&&&&&&& (руб.)
    ИСведения о заработке (вознаграждении), доходе за отчетный период: И
 И  ┌───────────────┬─────────────────────────────────────────────────────────────────────────┐
  │               │         общие начисления, учитываемые при назначении пенсии             │
  │ Месяц         ├─────────────────────────────────┬───────────────────────────────────────┤
  │               │           всего                 │в том числе по больничным листам       │
  │               │                                 │  (листкам нетрудоспособности)         │
  │               │                                 │          и стипендии                  │
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │ Январь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Февраль       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Март          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Апрель        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Май           │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июнь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июль          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Август        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Сентябрь      │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Октябрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Ноябрь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Декабрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │  Итого        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  └───────────────┴─────────────────────────────────┴───────────────────────────────────────┘ И
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
    ИСтаж работы за отчетный период: И
 Р  ┌───┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
 Р  │   │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
 Р  │   │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
 Р  │ N │  периода   │   периода  │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
 Р  │   │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
 Р  │   │            │            │ (код)    │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
 Р  ├───┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.{
.begin
 Исчисл_труд_стаж_доп:= Строка_Исчисл_труд_стаж_доп_свед1+
                        Строка_Исчисл_труд_стаж_доп_свед2+
                        UpCase(Исчисл_труд_стаж_доп_свед3);
 Выслуга_лет_доп     := Строка_Выслуга_лет_доп_свед1+
                        Строка_Выслуга_лет_доп_свед2;
end.
 Р  │&&.│ &&&&&&&&&& │ &&&&&&&&&& │@~@@@@@@@@│@~@@@@@@@@│@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@│ Р
.{ CheckEnter Vred1
.fields
Код_позиции_списка1С
.endfields
 Р  │   │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.{ CheckEnter Lgot
.begin
 Исчисл_труд_стаж_доп_Lgot:= Строка_Исчисл_труд_стаж_доп_свед1_Lgot+
                             Строка_Исчисл_труд_стаж_доп_свед2_Lgot;
end.
.fields
 WorkCond_Lgot
 Исчисл_труд_стаж_доп_Lgot
.endfields
 Р  │   │            │            │          │@~@@@@@@@@│         │@@@@@@@@@@@@│           │            │ Р
.{ CheckEnter Vred2
.fields
Код_позиции_списка2С
.endfields
 Р  │   │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.}
.}
 Р  └───┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи
.fields
 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год
.endfields

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

   Дата "&&" @@@@@@@@ &&&& года                    М.П. И
.begin
 rabvar:=1;
end.


.}

.{?internal;(rabvar=1)
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
  counter
  counter
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
 FIO_KP
 itognach_Boln
 itogAvans
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:
┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘
 И Наименование должности руководителя  Подпись       Расшифровка подписи

 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И

 Дата "&&" @@@@@@@@ &&&& года         М.П.

 Отметка "ПРИНЯТО"                                1. Сумма начислений за от-
 Специалист КП                                    четный период (за минусом
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  б/л), руб.
 ──────────────────────────                       &&&&&&&&&&&&&&&&&&&&&&&&&&
   (Ф.И.О)
                                                  2. Сумма страховых взносов
 ──────────────────────────                       за отчетный период, руб.
 Дата                                             &&&&&&&&&&&&&&&&&&&&&&&&&&

 ──────────────────────────
 Подпись
-------------------------------------------------------------------------------
.}
.endform
!
!
!
.linkform 'SFond_last2' prototype is 'SFond'
.nameinlist'С итоговыми суммами по страховым взносам (в.02.40)'
.group 'Отчеты на бумаге (в.02.40)'
.var
 counter                         : integer
 pachn                           : integer
 Исчисл_труд_стаж_доп            : string
 Выслуга_лет_доп                 : string
 Исчисл_труд_стаж_доп_Lgot       : string
.endvar
.fields
 pachn
 counter
 Страховой_номер
 Фамилия
 Имя CharF1
 Отчество CharF2
 strквартал
 God CharF3 CharF4
 INN
 Pred
 UpCase(HP) UpCase(НАЕМ)
 ProcPens28 Val1
 Procent
 Sum11   Sum12
 Sum21   Sum22
 Sum31   Sum32
 Sum41   Sum42
 Sum51   Sum52
 Sum61   Sum62
 Sum71   Sum72
 Sum81   Sum82
 Sum91   Sum92
 Sum101  Sum102
 Sum111  Sum112
 Sum121  Sum122
 ISum1   ISum2
 НомерДоговора
 ДеньЗак datetostr(to_date(1,Word(МесяцЗак),2000),'mon') ГодЗак
 UpCase(ВидВыплаты)

 nppSt Нач_стажа Кон_стажа
 UpCase(TerCond)
 UpCase(WorkCond)
 UpCase(Исчисл_труд_стаж_основание)
 Исчисл_труд_стаж_доп
 UpCase(Выслуга_лет_основание)
 Выслуга_лет_доп
.endfields
.begin
  counter  := 0;
  pachn    := PachNumBegin;
end.
.{
.begin
  counter:=counter + 1
end.
    ШКонфиденциальность информации гарантируется получателем Ш
    МФорма СЗВ-1 Д         Код по ОКУД И

 Б                      ИНДИВИДУАЛЬНЫЕ  СВЕДЕНИЯ                    ^-^
       О ТРУДОВОМ СТАЖЕ, ЗАРАБОТКЕ (ВОЗНАГРАЖДЕНИИ), ДОХОДЕ
       И НАЧИСЛЕННЫХ СТРАХОВЫХ ВЗНОСАХ ЗАСТРАХОВАННОГО ЛИЦА Б

   Страховой номер  Б@@@@@@@@@@@@@@@@@@@@ Б                 ┌────────────────────┐
   Фамилия          Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│     Тип формы      │
   Имя              Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ исходная         │
   Отчество         Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б│ @ корректирующая   │
   Отчетный период   @~@@@@@@@@@@@  Б&&&& Б год             │ @ отменяющая       │
   Сведения о работодателе                              │ @ назначение пенсии│
   Регистрационный номер  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б└────────────────────┘
   Наименование  Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б

 И   Категория плательщика страховых взносов: код  Б@@@@ Б наименование  Б@@@@@@@@@@@@@@@@@@@@ Й
   Сумма начисленных страховых взносов:
      уплачиваемых работодателем                      &'&&&&&&&&&&&&&&& (@@@@)
      уплачиваемых из заработка застрахованного лица  &'&&&&&&&&&&&&&&& (руб.)
    ИСведения о заработке (вознаграждении), доходе за отчетный период: И
 И  ┌───────────────┬─────────────────────────────────────────────────────────────────────────┐
  │               │         общие начисления, учитываемые при назначении пенсии             │
  │ Месяц         ├─────────────────────────────────┬───────────────────────────────────────┤
  │               │           всего                 │в том числе по больничным листам       │
  │               │                                 │  (листкам нетрудоспособности)         │
  │               │                                 │          и стипендии                  │
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │ Январь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Февраль       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Март          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Апрель        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Май           │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июнь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Июль          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Август        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Сентябрь      │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Октябрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Ноябрь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  │ Декабрь       │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  ├───────────────┼─────────────────────────────────┼───────────────────────────────────────┤
  │  Итого        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│
  └───────────────┴─────────────────────────────────┴───────────────────────────────────────┘ И
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
    ИСтаж работы за отчетный период: И
 Р  ┌────┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
 Р  │    │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
 Р  │    │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
 Р  │ N  │  периода   │  периода   │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
 Р  │    │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
 Р  │    │            │            │  (код)   │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
 Р  ├────┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.{
.begin
 Исчисл_труд_стаж_доп:= Строка_Исчисл_труд_стаж_доп_свед1+
                        Строка_Исчисл_труд_стаж_доп_свед2+
                        UpCase(Исчисл_труд_стаж_доп_свед3);
 Выслуга_лет_доп     := Строка_Выслуга_лет_доп_свед1+
                        Строка_Выслуга_лет_доп_свед2;
end.
 Р  │&&. │ &&&&&&&&&& │ &&&&&&&&&& │@~@@@@@@@@│@~@@@@@@@@│@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@@@@│ Р
.{ CheckEnter Vred1
.fields
Код_позиции_списка1С
.endfields
 Р  │    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.{ CheckEnter Lgot
.begin
 Исчисл_труд_стаж_доп_Lgot:= Строка_Исчисл_труд_стаж_доп_свед1_Lgot+
                             Строка_Исчисл_труд_стаж_доп_свед2_Lgot;
end.
.fields
 WorkCond_Lgot
 Исчисл_труд_стаж_доп_Lgot
.endfields
 Р  │    │            │            │          │@~@@@@@@@@│         │@@@@@@@@@@@@│           │            │ Р
.{ CheckEnter Vred2
.fields
Код_позиции_списка2С
.endfields
 Р  │    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.}
.}
 Р  └────┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р

 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи
.fields
 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год
.endfields

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

 Дата "&&" @@@@@@@@ &&&& года                    М.П. И


.{?internal;counter=Allcounter
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
!  pachN
  counter
  counter
  pachN
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
 FIO_KP
 itognach_Boln
 itogAvans
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем   # &&

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:
┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘
 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 Дата "&&" @@@@@@@@ &&&& года                    М.П.

 Отметка "ПРИНЯТО"                                1. Сумма начислений за от-
 Специалист КП                                    четный период (за минусом
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  б/л), руб.
 ──────────────────────────                       &&&&&&&&&&&&&&&&&&&&&&&&&&
   (Ф.И.О)
                                                  2. Сумма страховых взносов
 ──────────────────────────                       за отчетный период, руб.
 Дата                                             &&&&&&&&&&&&&&&&&&&&&&&&&&

 ──────────────────────────
 Подпись
-------------------------------------------------------------------------------

.begin
  if counter = Allcounter then begin
    pachn   := pachn + 1;
    counter := 0;
    end
end.
.}

.}

.{?internal;(counter<>Allcounter)and(counter<>0)
.fields
  CodeOKPO
  INN
  pred
!  ФИО_исполнителя
!  тел_исполнителя
!  pachN
  counter
  counter
  pachN
! FIO_KP
 itognach_АДВ6
! itogvzn_АДВ6
 itogboln_АДВ6
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число_АДВ6 Месяц_АДВ6 Год_АДВ6
 FIO_KP
 itognach_Boln
 itogAvans
.endfields
                                                         Форма АДВ-6
                                ┌─────────────┐               ┌──────────────┐
                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                └─────────────┘               └──────────────┘

                 ОПИСЬ ДОКУМЕНТОВ, ПЕРЕДАВАЕМЫХ РАБОТОДАТЕЛЕМ

┌────────────────────────────────────────────────────────────────────────────┐
│Реквизиты работодателя, передающего документы:                              │
│                                                                            │
│Регистрационный номер @@@@@@@@@@@@@@@@@@@@@@@@@@                            │
│                                                                            │
│Наименование @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
└────────────────────────────────────────────────────────────────────────────┘

 Примечания:
            ────────────────────────────────────────────────────────

 ───────────────────────────────────────────────────────────────────

┌─────────────────────────────────────────────────────┬──────────────────────┐
│    Наименование входящего документа                 │Количество документов │
│                                                     │данного наименования  │
│                                                     │в пачке               │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Анкета застрахованного лица                          │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление об обмене Страхового свидетельства         │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Заявление о выдаче дубликата Страхового свидетельства│                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│Индивидуальные сведения о трудовом стаже, заработке  │                      │
│(вознаграждении), доходе и начисленных страховых     │                      │
│взносах                                              │ &&&&&&&&&&&&&&&&&&&  │
├─────────────────────────────────────────────────────┼──────────────────────┤
│                                                     │                      │
├─────────────────────────────────────────────────────┼──────────────────────┤
│      Итого документов всех наименований:            │ &&&&&&&&&&&&&&&&&&&  │
└─────────────────────────────────────────────────────┴──────────────────────┘

     Заполняется для пачки документов, сопровождаемой машинным носителем
 (дискетой):

     Номер пачки документов,присвоенный работодателем   # &&

     Заполняется для пачки документов, содержащей "Индивидуальные сведения о
 трудовом стаже, заработке (вознаграждении), доходе и начисленных страховых
 взносах":

     Сведения о заработке (вознаграждении), доходе за отчетный период (итого
 по пачке документов:
┌──────────────┬─────────────────────────────────────────────────────────────┐
│              │  Общие начисления, учитываемые при назначении пенсии        │
│              │  (итого по пачке)                                           │
│              ├───────────────────────┬─────────────────────────────────────┤
│              │всего                  │в том числе по больничным листкам    │
│              │                       │(листкам нетрудоспособности)         │
│              │                       │и стипендии                          │
├──────────────┼───────────────────────┼─────────────────────────────────────┤
│ Итого:       │&&&&&&&&&&&&&&&&&&&&&& │  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    │
└──────────────┴───────────────────────┴─────────────────────────────────────┘
 Р   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

   Дата "&&" @@@@@@@@ &&&& года                    М.П.

 Отметка "ПРИНЯТО"                                1. Сумма начислений за от-
 Специалист КП                                    четный период (за минусом
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  б/л), руб.
 ──────────────────────────                       &&&&&&&&&&&&&&&&&&&&&&&&&&
   (Ф.И.О)
                                                  2. Сумма страховых взносов
 ──────────────────────────                       за отчетный период, руб.
 Дата                                             &&&&&&&&&&&&&&&&&&&&&&&&&&

 ──────────────────────────
 Подпись
.}
.endform
!
!
!
