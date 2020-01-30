/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2000 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Отчетность в ПФР                                          ║
 ║ Ответственный : Мелех Василий Евгеньевич                                  ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Отчетность в ПФР
#end
.set name = 'SZV-3'
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
 MagtinKvartal:string
 God CharF3 CharF4
 RealInn
 INN
 Pred
 KPP
 curdate
 HP НАЕМ
 Okrug : word
!
Общ_сум_начисл : double
Общ_сум_болн   : double
!
 ProcPens28
 Val1
 SumNeoblagDoh
 OneProcUder
 KolStag
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
! Поля руководители и дата отчета, для разбивки стажей на несколько страниц
 Dolg_ruk_S
 ФИО_руководителя_S
 Число_S Месяц_S Год_S
!

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

 Adv10_Prz:word
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
.{ CheckEnter SZV3
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
   ^ ^ ^ ^
   Категория плательщика страховых взносов: код ^ наименование ^
   ^^
   Сумма начисленных страховых взносов:
   уплачиваемых работодателем  :                   &'&&&&&&&&&&&&.&& (@@@@)
   уплачиваемых из заработка застрахованного лица: &'&&&&&&&&&&&&.&& (руб.)
   ^
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
^^^^^
  ┌──┬───────────────┬───────────────┬────────┬───────┬──────────────────────┬────────────────────────┐
  │  │    Начало     │    Конец      │Террито-│Особые │ Исчисляемый трудовой │      Выслуга лет       │
  │  │               │               │риальные│условия│        стаж          │                        │
  │ N│    периода    │   периода     │условия │ труда ├─────────┬────────────┼───────────┬────────────┤
  │  │               │               │        │       │основание│дополнитель-│ основание │дополнитель-│
  │  │(день,мес.,год)│(день,мес.,год)│ (код)  │ (код) │  (код)  │ные сведения│   (код)   │ные сведения│
  ├──┼───────────────┼───────────────┼────────┼───────┼─────────┼────────────┼───────────┼────────────┤
.{ CheckEnter SZV_Stages
  │^ &&.│&&&&&&&&&&&&&&&│&&&&&&&&&&&&│^       │^      │^        │ ^^^^^      │^          │^^^^^^^^^   │
.{ CheckEnter SZVVred1
  ^
.}
.{ CheckEnter SZVLgot
  ^^^^^^^^^^^^^^^^^^^
.{ CheckEnter SZVVred2
  ^
.}
.}
.}
  └──┴───────────────┴───────────────┴────────┴───────┴─────────┴────────────┴───────────┴────────────┘

   Наименование должности руководителя            Подпись                 Расшифровка подписи

   @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   Дата "&&" @@@@@@@@ &&&& года                    М.П.
.{ CheckEnter SZVADV6
^
 ^^^^^^^^^^^
 ^^
.if DeadLine
.end
.}
.}
.endform
!
.linkform 'SZV-3_MAGNITlink1' prototype is 'SZV-3'
.nameinlist'Файл для ПФ на МН (в.03.00)'
.group 'СЗВ-3 (в.03.00)'
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
 my_pred    : string[100];
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
  TypeChars := 'ИСХД';
  nomer   := 0;
  KolNach := 0;
  SumNach := 0;
  SumBoln := 0;
  MyPersonCounter := 0;
  PersonCounterOut:= 0;
 end.
.{ CheckEnter SZV3
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
   RealInn
   KPP
   my_pred
   pach_nmb
   curdate
   PersonsNumb
.endfields
.begin
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
"ЗГЛВ","03.00"
"РБТД","РБТД","^",^,^,"^"
"ПАЧК",^,"ОПИСЬ","^",1,0,0
"ТИПД","ИНДС","ИС30",^
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
   MagtinKvartal StrGod
   НомерДоговора
   RDataDog
   UpCase(ВидВыплаты)
   UpCase(HP)
   SumNeoblagDoh
   ProcPens28
   if (SumNach>=0,DoubleToStr(SumNach,rrr),DoubleToStr(SumNach,rrr_2))
   if (SumBoln>=0,DoubleToStr(SumBoln,rrr),DoubleToStr(SumBoln,rrr_2))
   curdate
   KolNach
   KolStag
.endfields
.begin
  KolNach:= 0;
  SumNach:= 0;
  SumBoln:= 0;

 if Okrug = 0
 {
   FSum11 := Round(Double(Sum11));
   FSum12 := Round(Double(Sum12));
   FSum21 := Round(Double(Sum21));
   FSum22 := Round(Double(Sum22));
   FSum31 := Round(Double(Sum31));
   FSum32 := Round(Double(Sum32));
   FSum41 := Round(Double(Sum41));
   FSum42 := Round(Double(Sum42));
   FSum51 := Round(Double(Sum51));
   FSum52 := Round(Double(Sum52));
   FSum61 := Round(Double(Sum61));
   FSum62 := Round(Double(Sum62));
   FSum71 := Round(Double(Sum71));
   FSum72 := Round(Double(Sum72));
   FSum81 := Round(Double(Sum81));
   FSum82 := Round(Double(Sum82));
   FSum91 := Round(Double(Sum91));
   FSum92 := Round(Double(Sum92));
   FSum101:= Round(Double(Sum101));
   FSum102:= Round(Double(Sum102));
   FSum111:= Round(Double(Sum111));
   FSum112:= Round(Double(Sum112));
   FSum121:= Round(Double(Sum121));
   FSum122:= Round(Double(Sum122));
 }
 else
 {
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
 }
 if (FSum11<>0)or(FSum12<>0) then
  begin
    SumNach:= SumNach + FSum11;
    SumBoln:= SumBoln + FSum12;
    KolNach:= KolNach+1;
  end;
 if (FSum21<>0)or(FSum22<>0) then
  begin
    SumNach:= SumNach + FSum21;
    SumBoln:= SumBoln + FSum22;
    KolNach:= KolNach+1;
  end;
 if (FSum31<>0)or(FSum32<>0) then
  begin
    SumNach:= SumNach + FSum31;
    SumBoln:= SumBoln + FSum32;
    KolNach:= KolNach+1;
  end;
 if (FSum41<>0)or(FSum42<>0) then
  begin
    SumNach:= SumNach + FSum41;
    SumBoln:= SumBoln + FSum42;
    KolNach:= KolNach+1;
  end;
 if (FSum51<>0)or(FSum52<>0) then
  begin
    SumNach:= SumNach + FSum51;
    SumBoln:= SumBoln + FSum52;
    KolNach:= KolNach+1;
  end;
 if (FSum61<>0)or(FSum62<>0) then
  begin
    SumNach:= SumNach + FSum61;
    SumBoln:= SumBoln + FSum62;
    KolNach:= KolNach+1;
  end;
 if (FSum71<>0)or(FSum72<>0) then
  begin
    SumNach:= SumNach + FSum71;
    SumBoln:= SumBoln + FSum72;
    KolNach:= KolNach+1;
  end;
 if (FSum81<>0)or(FSum82<>0) then
  begin
    SumNach:= SumNach + FSum81;
    SumBoln:= SumBoln + FSum82;
    KolNach:= KolNach+1;
  end;
 if (FSum91<>0)or(FSum92<>0) then
  begin
    SumNach:= SumNach + FSum91;
    SumBoln:= SumBoln + FSum92;
    KolNach:= KolNach+1;
  end;
 if (FSum101<>0)or(FSum102<>0) then
  begin
    SumNach:= SumNach + FSum101;
    SumBoln:= SumBoln + FSum102;
    KolNach:= KolNach+1;
  end;
 if (FSum111<>0)or(FSum112<>0) then
  begin
    SumNach:= SumNach + FSum111;
    SumBoln:= SumBoln + FSum112;
    KolNach:= KolNach+1;
  end;
 if (FSum121<>0)or(FSum122<>0) then
  begin
    SumNach:= SumNach + FSum121;
    SumBoln:= SumBoln + FSum122;
    KolNach:= KolNach+1;
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
"ИНДС","ИС30",^,"^","^","^","^","^",^,^,"^","^","^","^","","РУБ",^,^,^,^,"^",^,^
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
.{?internal;(FSum11<>0)or(FSum12<>0)
"НЧСЛ",1,^,^
.}
.{?internal;(FSum21<>0)or(FSum22<>0)
"НЧСЛ",2,^,^
.}
.{?internal;(FSum31<>0)or(FSum32<>0)
"НЧСЛ",3,^,^
.}
.{?internal;(FSum41<>0)or(FSum42<>0)
"НЧСЛ",4,^,^
.}
.{?internal;(FSum51<>0)or(FSum52<>0)
"НЧСЛ",5,^,^
.}
.{?internal;(FSum61<>0)or(FSum62<>0)
"НЧСЛ",6,^,^
.}
.{?internal;(FSum71<>0)or(FSum72<>0)
"НЧСЛ",7,^,^
.}
.{?internal;(FSum81<>0)or(FSum82<>0)
"НЧСЛ",8,^,^
.}
.{?internal;(FSum91<>0)or(FSum92<>0)
"НЧСЛ",9,^,^
.}
.{?internal;(FSum101<>0)or(FSum102<>0)
"НЧСЛ",10,^,^
.}
.{?internal;(FSum111<>0)or(FSum112<>0)
"НЧСЛ",11,^,^
.}
.{?internal;(FSum121<>0)or(FSum122<>0)
"НЧСЛ",12,^,^
.}
.{ CheckEnter SZV_Stages
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
.}
.{ CheckEnter SZVVred1
.}
.{ CheckEnter SZVLgot
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
.{?internal;Trim(Наим_стажа) <> 'АВАНС'
"^",^,"^","^","^",^,^,"^","^",^,^,^,"^",^
.}
.{ CheckEnter SZVVred2
.}
.} //CheckEnter Lgot
.} //стаж
.{ CheckEnter SZVADV6
.fields
   pach_nmb
.endfields
.if DeadLine
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.end
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
end.
.}
.}
.endform
!
.linkform 'SZV-3_MAGNITlink1' prototype is 'SZV-3'
.nameinlist'Файл для ПФ на МН (в. 4.00)'
.group 'СЗВ-1 (в.04.00)'
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
 my_pred    : string[100];
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
  TypeChars := 'ИСХД';
  nomer   := 0;
  KolNach := 0;
  SumNach := 0;
  SumBoln := 0;
  MyPersonCounter := 0;
  PersonCounterOut:= 0;
 end.
.{ CheckEnter SZV3
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
   RealInn
   KPP
   my_pred
.endfields
.begin
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
"ЗГЛВ","04.00","ГАЛАКТИКА","5.84"
"РБТД","РБТД","^",^,^,"^"
.fields
!======================  ПАЧК ======================
   pach_nmb
   curdate
   MagtinKvartal
   God
   if (SumNach>=0,DoubleToStr(Общ_сум_начисл,rrr),DoubleToStr(Общ_сум_начисл,rrr_2))
   if (SumNach>=0,DoubleToStr(Общ_сум_болн,rrr),DoubleToStr(Общ_сум_болн,rrr_2))
   PersonsNumb
.endfields
.begin
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
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",^,^,^,^,0.00,0.00,0.00,0,0
"ТИПД","ИН20",^
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
   MagtinKvartal
   StrGod
   НомерДоговора
   RDataDog
   UpCase(ВидВыплаты)
   UpCase(HP)
   ProcPens28
   OneProcUder
   if (SumNach>=0,DoubleToStr(SumNach,rrr),DoubleToStr(SumNach,rrr_2))
   if (SumBoln>=0,DoubleToStr(SumBoln,rrr),DoubleToStr(SumBoln,rrr_2))
   curdate
   KolNach
   KolStag
.endfields
.begin
  KolNach:= 0;
  SumNach:= 0;
  SumBoln:= 0;

 if Okrug = 0
 {
   FSum11 := Round(Double(Sum11));
   FSum12 := Round(Double(Sum12));
   FSum21 := Round(Double(Sum21));
   FSum22 := Round(Double(Sum22));
   FSum31 := Round(Double(Sum31));
   FSum32 := Round(Double(Sum32));
   FSum41 := Round(Double(Sum41));
   FSum42 := Round(Double(Sum42));
   FSum51 := Round(Double(Sum51));
   FSum52 := Round(Double(Sum52));
   FSum61 := Round(Double(Sum61));
   FSum62 := Round(Double(Sum62));
   FSum71 := Round(Double(Sum71));
   FSum72 := Round(Double(Sum72));
   FSum81 := Round(Double(Sum81));
   FSum82 := Round(Double(Sum82));
   FSum91 := Round(Double(Sum91));
   FSum92 := Round(Double(Sum92));
   FSum101:= Round(Double(Sum101));
   FSum102:= Round(Double(Sum102));
   FSum111:= Round(Double(Sum111));
   FSum112:= Round(Double(Sum112));
   FSum121:= Round(Double(Sum121));
   FSum122:= Round(Double(Sum122));
 }
 else
 {
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
 }
 if (FSum11<>0)or(FSum12<>0) then
  begin
    SumNach:= SumNach + FSum11;
    SumBoln:= SumBoln + FSum12;
    KolNach:= KolNach+1;
  end;
 if (FSum21<>0)or(FSum22<>0) then
  begin
    SumNach:= SumNach + FSum21;
    SumBoln:= SumBoln + FSum22;
    KolNach:= KolNach+1;
  end;
 if (FSum31<>0)or(FSum32<>0) then
  begin
    SumNach:= SumNach + FSum31;
    SumBoln:= SumBoln + FSum32;
    KolNach:= KolNach+1;
  end;
 if (FSum41<>0)or(FSum42<>0) then
  begin
    SumNach:= SumNach + FSum41;
    SumBoln:= SumBoln + FSum42;
    KolNach:= KolNach+1;
  end;
 if (FSum51<>0)or(FSum52<>0) then
  begin
    SumNach:= SumNach + FSum51;
    SumBoln:= SumBoln + FSum52;
    KolNach:= KolNach+1;
  end;
 if (FSum61<>0)or(FSum62<>0) then
  begin
    SumNach:= SumNach + FSum61;
    SumBoln:= SumBoln + FSum62;
    KolNach:= KolNach+1;
  end;
 if (FSum71<>0)or(FSum72<>0) then
  begin
    SumNach:= SumNach + FSum71;
    SumBoln:= SumBoln + FSum72;
    KolNach:= KolNach+1;
  end;
 if (FSum81<>0)or(FSum82<>0) then
  begin
    SumNach:= SumNach + FSum81;
    SumBoln:= SumBoln + FSum82;
    KolNach:= KolNach+1;
  end;
 if (FSum91<>0)or(FSum92<>0) then
  begin
    SumNach:= SumNach + FSum91;
    SumBoln:= SumBoln + FSum92;
    KolNach:= KolNach+1;
  end;
 if (FSum101<>0)or(FSum102<>0) then
  begin
    SumNach:= SumNach + FSum101;
    SumBoln:= SumBoln + FSum102;
    KolNach:= KolNach+1;
  end;
 if (FSum111<>0)or(FSum112<>0) then
  begin
    SumNach:= SumNach + FSum111;
    SumBoln:= SumBoln + FSum112;
    KolNach:= KolNach+1;
  end;
 if (FSum121<>0)or(FSum122<>0) then
  begin
    SumNach:= SumNach + FSum121;
    SumBoln:= SumBoln + FSum122;
    KolNach:= KolNach+1;
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
"ИН20",^,"^","^","^","^","^",^,^,"^","^","^","^","РУБ",^,^,^,^,"^",^,^
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
.endfields
.{?internal;(FSum11<>0)or(FSum12<>0)
"НЧСЛ",1,^,^
.}
.{?internal;(FSum21<>0)or(FSum22<>0)
"НЧСЛ",2,^,^
.}
.{?internal;(FSum31<>0)or(FSum32<>0)
"НЧСЛ",3,^,^
.}
.{?internal;(FSum41<>0)or(FSum42<>0)
"НЧСЛ",4,^,^
.}
.{?internal;(FSum51<>0)or(FSum52<>0)
"НЧСЛ",5,^,^
.}
.{?internal;(FSum61<>0)or(FSum62<>0)
"НЧСЛ",6,^,^
.}
.{?internal;(FSum71<>0)or(FSum72<>0)
"НЧСЛ",7,^,^
.}
.{?internal;(FSum81<>0)or(FSum82<>0)
"НЧСЛ",8,^,^
.}
.{?internal;(FSum91<>0)or(FSum92<>0)
"НЧСЛ",9,^,^
.}
.{?internal;(FSum101<>0)or(FSum102<>0)
"НЧСЛ",10,^,^
.}
.{?internal;(FSum111<>0)or(FSum112<>0)
"НЧСЛ",11,^,^
.}
.{?internal;(FSum121<>0)or(FSum122<>0)
"НЧСЛ",12,^,^
.}
.{ CheckEnter SZV_Stages
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
.}
.{ CheckEnter SZVVred1
.}
.{ CheckEnter SZVLgot
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
.fields
   Наим_стажа
   nppSt
   my_nach_st my_kon_st
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

   Paйон_коэфф
   RЧисло_записей_лгот
!==============   льготный стаж   ==============================================
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
.endfields
.{?internal;Trim(Наим_стажа) <> 'АВАНС'
"^",^,"^","^","^",^,^,"^","^",^,^,^,"^",^
.}
.{ CheckEnter SZVVred2
.}
.} //CheckEnter Lgot
.} //стаж
.{ CheckEnter SZVADV6
.fields
   pach_nmb
.endfields
.if DeadLine
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.end
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
end.
.}
.}
.endform
.linkform 'SZV-3_MAGNITlink1_1' prototype is 'SZV-3'
.nameinlist'Файл для ПФ на МН (в. 4.00)'
.group 'СЗВ-3 (в.04.00)'
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
 my_pred    : string[100];
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
  TypeChars := 'ИСХД';
  nomer   := 0;
  KolNach := 0;
  SumNach := 0;
  SumBoln := 0;
  MyPersonCounter := 0;
  PersonCounterOut:= 0;
 end.
.{ CheckEnter SZV3
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
   RealInn
   KPP
   my_pred
.endfields
.begin
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
"ЗГЛВ","04.00","ГАЛАКТИКА","5.84"
"РБТД","РБТД","^",^,^,"^"
.fields
!======================  ПАЧК ======================
   pach_nmb
   curdate
   MagtinKvartal
   God
   if (SumNach>=0,DoubleToStr(Общ_сум_начисл,rrr),DoubleToStr(Общ_сум_начисл,rrr_2))
   if (SumNach>=0,DoubleToStr(Общ_сум_болн,rrr),DoubleToStr(Общ_сум_болн,rrr_2))
   PersonsNumb
.endfields
.begin
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
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",^,^,^,^,0.00,0.00,0.00,0,0
"ТИПД","ИН30",^
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
   MagtinKvartal
   StrGod
   НомерДоговора
   RDataDog
   UpCase(ВидВыплаты)
   UpCase(HP)
   SumNeoblagDoh
   ProcPens28
   if (SumNach>=0,DoubleToStr(SumNach,rrr),DoubleToStr(SumNach,rrr_2))
   if (SumBoln>=0,DoubleToStr(SumBoln,rrr),DoubleToStr(SumBoln,rrr_2))
   curdate
   KolNach
   KolStag
.endfields
.begin
  KolNach:= 0;
  SumNach:= 0;
  SumBoln:= 0;

 if Okrug = 0
 {
   FSum11 := Round(Double(Sum11));
   FSum12 := Round(Double(Sum12));
   FSum21 := Round(Double(Sum21));
   FSum22 := Round(Double(Sum22));
   FSum31 := Round(Double(Sum31));
   FSum32 := Round(Double(Sum32));
   FSum41 := Round(Double(Sum41));
   FSum42 := Round(Double(Sum42));
   FSum51 := Round(Double(Sum51));
   FSum52 := Round(Double(Sum52));
   FSum61 := Round(Double(Sum61));
   FSum62 := Round(Double(Sum62));
   FSum71 := Round(Double(Sum71));
   FSum72 := Round(Double(Sum72));
   FSum81 := Round(Double(Sum81));
   FSum82 := Round(Double(Sum82));
   FSum91 := Round(Double(Sum91));
   FSum92 := Round(Double(Sum92));
   FSum101:= Round(Double(Sum101));
   FSum102:= Round(Double(Sum102));
   FSum111:= Round(Double(Sum111));
   FSum112:= Round(Double(Sum112));
   FSum121:= Round(Double(Sum121));
   FSum122:= Round(Double(Sum122));
 }
 else
 {
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
 }
 if (FSum11<>0)or(FSum12<>0) then
  begin
    SumNach:= SumNach + FSum11;
    SumBoln:= SumBoln + FSum12;
    KolNach:= KolNach+1;
  end;
 if (FSum21<>0)or(FSum22<>0) then
  begin
    SumNach:= SumNach + FSum21;
    SumBoln:= SumBoln + FSum22;
    KolNach:= KolNach+1;
  end;
 if (FSum31<>0)or(FSum32<>0) then
  begin
    SumNach:= SumNach + FSum31;
    SumBoln:= SumBoln + FSum32;
    KolNach:= KolNach+1;
  end;
 if (FSum41<>0)or(FSum42<>0) then
  begin
    SumNach:= SumNach + FSum41;
    SumBoln:= SumBoln + FSum42;
    KolNach:= KolNach+1;
  end;
 if (FSum51<>0)or(FSum52<>0) then
  begin
    SumNach:= SumNach + FSum51;
    SumBoln:= SumBoln + FSum52;
    KolNach:= KolNach+1;
  end;
 if (FSum61<>0)or(FSum62<>0) then
  begin
    SumNach:= SumNach + FSum61;
    SumBoln:= SumBoln + FSum62;
    KolNach:= KolNach+1;
  end;
 if (FSum71<>0)or(FSum72<>0) then
  begin
    SumNach:= SumNach + FSum71;
    SumBoln:= SumBoln + FSum72;
    KolNach:= KolNach+1;
  end;
 if (FSum81<>0)or(FSum82<>0) then
  begin
    SumNach:= SumNach + FSum81;
    SumBoln:= SumBoln + FSum82;
    KolNach:= KolNach+1;
  end;
 if (FSum91<>0)or(FSum92<>0) then
  begin
    SumNach:= SumNach + FSum91;
    SumBoln:= SumBoln + FSum92;
    KolNach:= KolNach+1;
  end;
 if (FSum101<>0)or(FSum102<>0) then
  begin
    SumNach:= SumNach + FSum101;
    SumBoln:= SumBoln + FSum102;
    KolNach:= KolNach+1;
  end;
 if (FSum111<>0)or(FSum112<>0) then
  begin
    SumNach:= SumNach + FSum111;
    SumBoln:= SumBoln + FSum112;
    KolNach:= KolNach+1;
  end;
 if (FSum121<>0)or(FSum122<>0) then
  begin
    SumNach:= SumNach + FSum121;
    SumBoln:= SumBoln + FSum122;
    KolNach:= KolNach+1;
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
"ИН30",^,"^","^","^","^","^",^,^,"^","^","^","^","","РУБ",^,^,^,^,"^",^,^
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
.endfields
.{?internal;(FSum11<>0)or(FSum12<>0)
"НЧСЛ",1,^,^
.}
.{?internal;(FSum21<>0)or(FSum22<>0)
"НЧСЛ",2,^,^
.}
.{?internal;(FSum31<>0)or(FSum32<>0)
"НЧСЛ",3,^,^
.}
.{?internal;(FSum41<>0)or(FSum42<>0)
"НЧСЛ",4,^,^
.}
.{?internal;(FSum51<>0)or(FSum52<>0)
"НЧСЛ",5,^,^
.}
.{?internal;(FSum61<>0)or(FSum62<>0)
"НЧСЛ",6,^,^
.}
.{?internal;(FSum71<>0)or(FSum72<>0)
"НЧСЛ",7,^,^
.}
.{?internal;(FSum81<>0)or(FSum82<>0)
"НЧСЛ",8,^,^
.}
.{?internal;(FSum91<>0)or(FSum92<>0)
"НЧСЛ",9,^,^
.}
.{?internal;(FSum101<>0)or(FSum102<>0)
"НЧСЛ",10,^,^
.}
.{?internal;(FSum111<>0)or(FSum112<>0)
"НЧСЛ",11,^,^
.}
.{?internal;(FSum121<>0)or(FSum122<>0)
"НЧСЛ",12,^,^
.}
.{ CheckEnter SZV_Stages
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
.}
.{ CheckEnter SZVVred1
.}
.{ CheckEnter SZVLgot
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
.fields
   Наим_стажа
   nppSt
   my_nach_st my_kon_st
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

   Paйон_коэфф
   RЧисло_записей_лгот
!==============   льготный стаж   ==============================================
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
.endfields
.{?internal;Trim(Наим_стажа) <> 'АВАНС'
"^",^,"^","^","^",^,^,"^","^",^,^,^,"^",^
.}
.{ CheckEnter SZVVred2
.}
.} //CheckEnter Lgot
.} //стаж
.{ CheckEnter SZVADV6
.fields
   pach_nmb
.endfields
.if DeadLine
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.end
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
end.
.}
.}
.endform
!
.linkform 'SZV-3_LINK2' prototype is 'SZV-3'
.nameinlist'Индивидуальные сведения (СЗВ-3)'
.group 'СЗВ-3 (в.03.00)'
.var
 SZV10_1_1,SZV10_1_2,SZV10_1_3,SZV10_1_4,SZV10_1_5,
 SZV10_1_6,SZV10_1_7,SZV10_1_8,SZV10_1_9,SZV10_1_10,SZV10_1_11,SZV10_1_12: double;
 SZV10_2_1,SZV10_2_2,SZV10_2_3,SZV10_2_4,SZV10_2_5,
 SZV10_2_6,SZV10_2_7,SZV10_2_8,SZV10_2_9,SZV10_2_10,SZV10_2_11,SZV10_2_12: double;
 SZV10_5_1,SZV10_5_2,SZV10_5_3,SZV10_5_4,SZV10_5_5,
 SZV10_5_6,SZV10_5_7,SZV10_5_8,SZV10_5_9,SZV10_5_10,SZV10_5_11,SZV10_5_12: double;
 SZV1_1_ИТОГ,SZV2_1_ИТОГ,SZV5_1_ИТОГ : double;
 _Teerit                         : string;
 _TeeritLgot                     : string;
 StagC                           : integer
 counter                         : integer
 pachn                           : integer
 Исчисл_труд_стаж_доп            : string
 Выслуга_лет_доп                 : string
 Исчисл_труд_стаж_доп_Lgot       : string
 Выслуга_лет_доп_Lgot            : string
 RВыслуга_лет_доп_свед3          : string
 RВыслуга_лет_доп_свед3_lgot     : string
 p1,p2,p3,p4                     : string
.endvar
.fields
 pachn
 counter
 Страховой_номер
 Фамилия
 Имя CharF1
 Отчество CharF2 CharF3
 p1 p2 p3 p4 God  CharF4
 RealInn
 KPP
 INN
 Pred
 HP
 SumNeoblagDoh
 ProcPens28
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
.endfields
.begin
  counter  := 0;
  StagC    := 1;
  pachn    := PachNumBegin;
  SZV10_1_1  := 0;  SZV10_1_2  := 0;
  SZV10_1_3  := 0;  SZV10_1_4  := 0;
  SZV10_1_5  := 0;  SZV10_1_6  := 0;
  SZV10_1_7  := 0;  SZV10_1_8  := 0;
  SZV10_1_9  := 0;  SZV10_1_10  := 0;
  SZV10_1_11 := 0;  SZV10_1_12  := 0;

  SZV10_2_1  := 0;  SZV10_2_2  := 0;
  SZV10_2_3  := 0;  SZV10_2_4  := 0;
  SZV10_2_5  := 0;  SZV10_2_6  := 0;
  SZV10_2_7  := 0;  SZV10_2_8  := 0;
  SZV10_2_9  := 0;  SZV10_2_10  := 0;
  SZV10_2_11 := 0;  SZV10_2_12  := 0;

  SZV10_5_1  := 0;  SZV10_5_2  := 0;
  SZV10_5_3  := 0;  SZV10_5_4  := 0;
  SZV10_5_5  := 0;  SZV10_5_6  := 0;
  SZV10_5_7  := 0;  SZV10_5_8  := 0;
  SZV10_5_9  := 0;  SZV10_5_10  := 0;
  SZV10_5_11 := 0;  SZV10_5_12  := 0;

  SZV1_1_ИТОГ:= 0;  SZV2_1_ИТОГ := 0;
  SZV5_1_ИТОГ:= 0;
  p1 := '';
  p2 := '';
  p3 := '';
  p4 := '';
  if (квартал = string(1))
   p1 := 'X'
  else if (квартал = string(2))
{
   p2 := 'X';
   p1 := 'X';
}
  else if (квартал = string(3))
{
   p3 := 'X';
   p2 := 'X';
   p1 := 'X';
}
  else if (квартал = string(4) or квартал = string(0) )
{
   p4 := 'X';
   p3 := 'X';
   p2 := 'X';
   p1 := 'X';
}
end.
.{ CheckEnter SZV3
.begin
  counter:=counter + 1
end.
   Конфиденциальность информации гарантируется получателем
    БФорма СЗВ-3 Б         Код по ОКУД

                       БИНДИВИДУАЛЬНЫЕ  СВЕДЕНИЯ                    ^-^ Б
        БО ТРУДОВОМ СТАЖЕ, ЗАРАБОТКЕ (ВОЗНАГРАЖДЕНИИ), ДОХОДЕ Б
        БИ НАЧИСЛЕННЫХ  ВЗНОСАХ В ПФ ЗАСТРАХОВАННОГО ЛИЦА Б

 И   Страховой номер  Б@@@@@@@@@@@@@@@@@@@@ Б                     ┌────────────────────┐ И
 И   Фамилия          Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  Б   │     Тип формы      │ И
 И   Имя              Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б    │  Б@ Б исходная         │ И
 И   Отчество         Б@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Б    │  Б@ Б корректирующая   │ И
 И                    ┌─┐   ┌─┐    ┌─┐   ┌─┐                  │  Б@ Б отменяющая       │ И
 И   Отчетный период I│ Б@ Б│ II│ Б@ Б│ III│ Б@ Б│ IV│ Б@ Б│ квартал &&&& год │  Б@ Б назначение пенсии│ И
 И                    └─┘   └─┘    └─┘   └─┘                  └────────────────────┘ И

 И   Сведения о плательщике взносов в ПФР: ИНН @@@@@@@@@@@@@@@ КПП @@@@@@@@@@@@@@@@ И
 И   Регистрационный номер ПФР                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И   Наименование(краткое)       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И   Сведения о застрахованном лице: И
 Р    Код категории застрахованного лица ^ Код дополнительного тарифа    _________ Р
 Р    Сумма налогооблагаемого заработка (вознаграждения)и дохода с начала года   &'&&&&&&&&&&&&&&& Р
 И  Ш   Сумма начисленного взноса в ПФР с начала года                            &'&&&&&&&&&&&&&&& Р
.begin
  SZV10_5_1  := SZV10_5_1 + Double(Sum11);
  SZV10_5_2  := SZV10_5_2 + Double(Sum21);
  SZV10_5_3  := SZV10_5_3 + Double(Sum31);
  SZV10_5_4  := SZV10_5_4 + Double(Sum41);
  SZV10_5_5  := SZV10_5_5 + Double(Sum51);
  SZV10_5_6  := SZV10_5_6 + Double(Sum61);
  SZV10_5_7  := SZV10_5_7 + Double(Sum71);
  SZV10_5_8  := SZV10_5_8 + Double(Sum81);
  SZV10_5_9  := SZV10_5_9 + Double(Sum91);
  SZV10_5_10  := SZV10_5_10 + Double(Sum101);
  SZV10_5_11  := SZV10_5_11 + Double(Sum111);
  SZV10_5_12  := SZV10_5_12 + Double(Sum121);

 SZV5_1_ИТОГ := SZV5_1_ИТОГ + Double(ISum2);
 end.
 И   Сведения о заработке (вознаграждении), доходе застрахованного лица за отчетный И
 И    период, учитываемые при назначении пенсии И
 Р  ┌─────────────────┬─────────────────────────────────────────────────────────────────────────┐ Р
 Р  │ Месяц           │           всего                 │в том числе пособие по временной       │ Р
 Р  │                 │                                 │   нетрудоспособности, стипендии       │ Р
 Р  ├─────────────────┼─────────────────────────────────┼───────────────────────────────────────┤ Р
 Р  │ Январь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Февраль         │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Март            │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Апрель          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Май             │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Июнь            │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Июль            │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Август          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Сентябрь        │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Октябрь         │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Ноябрь          │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  │ Декабрь         │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  ├─────────────────┼─────────────────────────────────┼───────────────────────────────────────┤ Р
 Р  │ БИтого за отчетный Б│                                 │                                       │ Р
 Р  │ Бпериод Б           │&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│&'&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&│ Р
 Р  └─────────────────┴─────────────────────────────────┴───────────────────────────────────────┘ Р
.begin
  SZV10_1_1  := SZV10_1_1 + Double(Sum11);
  SZV10_1_2  := SZV10_1_2 + Double(Sum21);
  SZV10_1_3  := SZV10_1_3 + Double(Sum31);
  SZV10_1_4  := SZV10_1_4 + Double(Sum41);
  SZV10_1_5  := SZV10_1_5 + Double(Sum51);
  SZV10_1_6  := SZV10_1_6 + Double(Sum61);
  SZV10_1_7  := SZV10_1_7 + Double(Sum71);
  SZV10_1_8  := SZV10_1_8 + Double(Sum81);
  SZV10_1_9  := SZV10_1_9 + Double(Sum91);
  SZV10_1_10  := SZV10_1_10 + Double(Sum101);
  SZV10_1_11  := SZV10_1_11 + Double(Sum111);
  SZV10_1_12  := SZV10_1_12 + Double(Sum121);

  SZV10_2_1  := SZV10_2_1 + Double(Sum12);
  SZV10_2_2  := SZV10_2_2 + Double(Sum22);
  SZV10_2_3  := SZV10_2_3 + Double(Sum32);
  SZV10_2_4  := SZV10_2_4 + Double(Sum42);
  SZV10_2_5  := SZV10_2_5 + Double(Sum52);
  SZV10_2_6  := SZV10_2_6 + Double(Sum62);
  SZV10_2_7  := SZV10_2_7 + Double(Sum72);
  SZV10_2_8  := SZV10_2_8 + Double(Sum82);
  SZV10_2_9  := SZV10_2_9 + Double(Sum92);
  SZV10_2_10  := SZV10_2_10 + Double(Sum102);
  SZV10_2_11  := SZV10_2_11 + Double(Sum112);
  SZV10_2_12  := SZV10_2_12 + Double(Sum122);
  SZV1_1_ИТОГ:= SZV1_1_ИТОГ + Double(ISum1);  SZV2_1_ИТОГ := SZV2_1_ИТОГ + Double(ISum2);
  _Teerit := '';
  _TeeritLgot := '';
 end.
.fields
 НомерДоговора
 ДеньЗак datetostr(to_date(1,Word(МесяцЗак),2000),'mon') ГодЗак
 UpCase(ВидВыплаты)
.endfields
   Номер договора  @#@@@@@@@@@@@@@@@@@@@@@@
   Дата заключения "@#@@" @#@@@@@@@@ @#@@ года
   Вид выплаты     @#@@@@@@@@@@@@@@@@@@@@@@
   Стаж работы за отчетный период:
   Р┌────┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
   Р│    │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
   Р│    │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
   Р│ N  │  периода   │  периода   │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
   Р│    │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
   Р│    │            │            │  (код)   │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
   Р├────┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.{ CheckEnter SZV_Stages
.{?internal;((Integer(nppSt) -(12*StagC)) > 0)
.fields
 Dolg_ruk_S
 ФИО_руководителя_S
 Число_S Месяц_S Год_S
.endfields
   Р└────┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р
                                                  Спродолжение на обороте С
 Ш     Наименование должности руководителя            Подпись                 Расшифровка подписи Ш
 Ш      @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

   Дата "&&" @@@@@@@@ &&&& года                    М.П.

   Р┌────┬────────────┬────────────┬──────────┬──────────┬──────────────────────┬────────────────────────┐ Р
   Р│    │            │            │ Террито- │ Особые   │ Исчисляемый трудовой │      Выслуга лет       │ Р
   Р│    │  Начало    │   Конец    │ риальные │ условия  │        стаж          │                        │ Р
   Р│ N  │  периода   │  периода   │ условия  │  труда   ├─────────┬────────────┼───────────┬────────────┤ Р
   Р│    │            │            │          │          │основание│дополнитель-│ основание │дополнитель-│ Р
   Р│    │            │            │  (код)   │  (код)   │  (код)  │ные сведения│   (код)   │ные сведения│ Р
   Р├────┼────────────┼────────────┼──────────┼──────────┼─────────┼────────────┼───────────┼────────────┤ Р
.begin   StagC    := 10; end.
.}
.fields
 nppSt Нач_стажа Кон_стажа
 _Teerit
 UpCase(WorkCond)
 UpCase(Исчисл_труд_стаж_основание)
 Исчисл_труд_стаж_доп
 UpCase(Выслуга_лет_основание)
 Выслуга_лет_доп
.endfields
.begin
  if ( (UpCase(trim(TerCond)) = 'РКС')or(UpCase(trim(TerCond)) = 'МКС')or(UpCase(trim(TerCond)) = 'MKC')or(UpCase(trim(TerCond)) = 'PKC'))
  {
   if Double(Paйон_коэфф) < 0
     _Teerit := UpCase(TerCond)+'   '+ DoubleToStr(Double(Paйон_коэфф),'-666666667.88')
   else
     _Teerit := UpCase(TerCond)+'   '+ DoubleToStr(Double(Paйон_коэфф),'666666667.88');
  }
  else
     _Teerit := UpCase(TerCond);

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
   Р│&&. │ &&&&&&&&&& │ &&&&&&&&&& │@~@@@@@@@@│@~@@@@@@@@│@~@@@@@@@│@~@@@@@@@@@@│@~@@@@@@@@@│@~@@@@@@@@@@│ Р
.{ CheckEnter SZVVred1
.fields
Код_позиции_списка1С
.endfields
   Р│    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.{ CheckEnter SZVLgot
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
 UpCase(_TeeritLgot)
 UpCase(WorkCond_Lgot)
 UpCase( Исчисл_труд_стаж_основание_Lgot)
 UpCase( Исчисл_труд_стаж_доп_Lgot)
 UpCase( Выслуга_лет_основание_Lgot)
 Выслуга_лет_доп_Lgot
.endfields
.begin
  if ( (UpCase(trim(TerCond_Lgot)) = 'РКС')or(UpCase(trim(TerCond_Lgot)) = 'МКС')or(UpCase(trim(TerCond_Lgot)) = 'MKC')or(UpCase(trim(TerCond_Lgot)) = 'PKC'))
  {
   if Double(Paйон_коэфф_Lgot) < 0
     _TeeritLgot := UpCase(TerCond_Lgot)+'   '+ DoubleToStr(Double(Paйон_коэфф_Lgot),'-666666667.88')
   else
     _TeeritLgot := UpCase(TerCond_Lgot)+'   '+ DoubleToStr(Double(Paйон_коэфф_Lgot),'666666667.88');
  }
  else
     _TeeritLgot := UpCase(TerCond_Lgot);
end.
   Р│    │            │            │@~@@@@@@@@│@~@@@@@@@@│@~@@@@@@@│@~@@@@@@@@@@│@~@@@@@@@@@│@~@@@@@@@@@@│ Р
.{ CheckEnter SZVVred2
.fields
Код_позиции_списка2С
.endfields
   Р│    │            │            │          │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Р
.}
.}
.}
   Р└────┴────────────┴────────────┴──────────┴──────────┴─────────┴────────────┴───────────┴────────────┘ Р

 Ш     Наименование должности руководителя            Подпись                 Расшифровка подписи Р
 И.fields
 Dolg_ruk
 ФИО_руководителя
 Число Месяц Год
.endfields

 Ш      @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш

 И Дата "&&" @@@@@@@@ &&&& года                     БМ.П. Й

.{ CheckEnter SZVADV6
.fields
CodeOKPO
INN
RealInn
KPP
Pred
p1 p2 p3 p4
God
counter
//if(Adv10_Prz = 1,'1','')
counter
pachN
.endfields
 И  Форма АДВ-6 И
 И                                ┌─────────────┐               ┌──────────────┐ И
 И                    Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│ И
 И                                └─────────────┘               └──────────────┘ И

 И                 ОПИСЬ ДОКУМЕНТОВ, передаваемых работодателем в ПФР И

 И ┌─────────────────────────────────────────────────────────────────────────────┐ И
 И │Реквизиты работодателя, передающего документы:                               │ И
 И │Регистрационный номер ПФР              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ И
 И │ИНН @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    КПП   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ И
 И │Наименование организации  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ И
 И │(краткое)                                                                    │ И
 И │                   ┌─┐   ┌─┐    ┌─┐   ┌─┐                                    │ И
 И │Отчетный период   I│@│ II│@│ III│@│ IV│@│ квартал &&&& года                  │ И
 И │                   └─┘   └─┘    └─┘   └─┘                                    │ И
 И └─────────────────────────────────────────────────────────────────────────────┘ И

 И Примечания: И
 И            ──────────────────────────────────────────────────────── И


 И┌─────────────────────────────────────────────────────┬──────────────────────┐ И
 И│    Наименование входящего документа                 │Количество документов │ И
 И│                                                     │данного наименования  │ И
 И│                                                     │в пачке               │ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│Анкета застрахованного лица                          │                      │ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│Заявление об обмене Страхового свидетельства         │                      │ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│Заявление о выдаче дубликата Страхового свидетельства│                      │ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│Индивидуальные сведения о трудовом стаже, заработке  │                      │ И
 И│(вознаграждении), доходе и начисленных страховых     │                      │ И
 И│взносах в ПФР(СЗВ-1 или СЗВ-3)                       │&&&&&&&&&&&&&&&&&&&&&&│ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│Сводная ведомость форм документов СЗВ-3, передаваемых│                      │ И
 И│работодателем в ПФР                                  │                      │ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│                                                     │                      │ И
 И├─────────────────────────────────────────────────────┼──────────────────────┤ И
 И│      Итого документов всех наименований:            │&&&&&&&&&&&&&&&&&&&&&&│ И
 И└─────────────────────────────────────────────────────┴──────────────────────┘ И

 И     Заполняется для пачки документов, сопровождаемой машинным носителем И
 И (дискетой): И

 И     Номер пачки документов,присвоенный работодателем      &&&&&&&&&&&&&&&&& И
 И     Номер регистрации пачки в территориальном органе ПФР  _______/_________ И
 И                                                           номер     год И

 И     Заполняется для пачки документов, содержащей "Индивидуальные сведения о И
 И трудовом стаже, заработке (вознаграждении), доходе и начисленных взносах в И
 И ПФР застрахованного лица ": И

 И     Сведения о заработке (вознаграждении), доходе за отчетный период, И
 И     учитываемые при назначении пенсии (итого по пачке документов): И
.fields
itognach_АДВ6
itogboln_АДВ6
ФИО_исполнителя
 Dolg_ruk_АДВ6
 ФИО_руководителя_АДВ6
 Число Месяц Год
.endfields
 И┌─────────────────────────────────────────────────────────────┐ И
 И│Всего начислено        │в том числе по больничным по         │ И
 И│                       │временной нетрудоспособности         │ И
 И│                       │и стипендии                          │ И
 И├───────────────────────┼─────────────────────────────────────┤ И
 И│&&&&&&&&&&&&&&&&&&&&&&&│        &&&&&&&&&&&&&&&&&&&&&&&      │ И
 И└───────────────────────┴─────────────────────────────────────┘ И
 Ш     Исполнитель                                    Подпись                 Расшифровка подписи Ш
 Ш                                                                      @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ш
 Ш     Наименование должности руководителя            Подпись                 Расшифровка подписи Р
 Р      @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                             @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р


 И Дата "&&" @@@@@@@@ &&&& года                                        БМ.П. Й

.if DeadLine
-------------------------------------------------------------------------------
.end

.begin
    pachn   := pachn + 1;
    counter := 0;
end.
.}
.} И
.endform