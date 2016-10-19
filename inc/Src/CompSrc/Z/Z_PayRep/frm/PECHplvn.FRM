//-----------------------------------------------------------------------------
//                                                    (c) корпорация ГАЛАКТИКА
// Галактика 8.1 - заработная плата
// Платежная ведомость на выдачу зарплаты
//                 - аванса
//                 - отпускных сумм
//                 - алиментов через кассу
//                 - ежемесячных и разовых пособий на детей
//                 - пособий матерям
//                 - выплат
//                 - разовых удержаний
//                 - заработной платы  или  аванса по договорам подряда
//                 - премии с учетом КТУ
//-----------------------------------------------------------------------------
#doc
Платежная ведомость на выдачу:
  - зарплаты
  - аванса
  - отпускных сумм
  - алиментов через кассу
  - ежемесячных и разовых пособий на детей
  - пособий матерям
  - выплат
  - разовых удержаний
  - заработной платы  или  аванса по договорам подряда
  - премии с учетом КТУ
#end
.form 'PECHPLVn'
!.set name='pechPlVn'
.p 60
.hide
.{ PlVedM CheckEnter
.fields
 data god
 s1 syear s2
 mes1 s3 strsum sumrub sumkop summaval strsummaval KodVal MyValCode curs
 NomOrder DayOrder MonthOrder YearOrder DolgBoss
 nBoss  GlavBuh_SignDoc nMainBuh nFio_Ras nDgn_Ras nFio_Chk nDgn_Chk
 ДеньВед  МесВед  ГодВед
 НачДень_ДатаВед КончДень_ДатаВед
 Pred poOKPO Podr KorSchet NRec_PlatVed NomVed NameVed
 Mes //27
! God
level
.endfields
.if newP
.end
   ^ ^
   ^ ^ ^
   ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
   ^ ^ ^ ^ ^
   ^ ^ ^ ^ ^ ^
   ^ ^ ^
   ^ ^
   ^ ^ ^ ^ ^ ^ ^
   ^ ^ ^
.{ PlVedP CheckEnter
.fields
 isLastInved: boolean
 NREC_SpPlVed // ссылка на спецификацию платежной ведомости
 Npp KodPodr TabN FIO FioCh DatRog Summa:double PrizDep summavr:double summavruk:double
 summai:double ostv:double ostr:double PasspSeria PasspNum Inn
 fio2
.endfields
.[h
.]h
 ^
 ^ ^ ^  фио   ^  ^ ^  сумма ^ ^^^^^^ серия ^  номер ^ ИНН ^ ^
.if secondstrv
 ^  // fio2
.end
.[f OverWrite
.]f
.}//PlVedP CheckEnter
.fields
 PechItog: word
 PechItogStr : string
 PechItogDep : string
 ItogSum: double
 StrItogSum
 И  ИItogSumDep: double И
  ИItogSumDepVal: double И
 И .endfields
 ^
 ^
 ^
 ^
 ^
 ^
 ^
.} // PlVedM CheckEnter
.endform

.Linkform 'pechPlVn_07' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости'
.p 60//убирать нельзя!
.group '11'
.var KolList: integer
     SumList: double
     CurPosition: integer;//строка на странице
     CP         : integer;
     firstHeader: boolean; //какая из 2- ух шапок печатается
.endvar
.begin
CurPosition:= 13;
end.
.{ PlVedM CheckEnter
.fields
'true':'s'
 s1 syear s2
 s3 strsum
 nBoss
 GlavBuh_SignDoc
 nMainBuh
 Pred
 Podr
 NomVed NameVed
 Mes God //13
 level
.endfields
.begin  KolList:=0;
        SumList:=0;
end.
 Р.if newP
^
.end
 Б ^ Б &&&& ^
 ^ ^

  БРуководитель организации (предприятия) Б:  Д^ Д

                           БГл. бухгалтер Б: Д^ Д  Д^ Д

 Организация:  Д^ Д
    ^

                     БПЛАТЕЖНАЯ ВЕДОМОСТЬ № ^ ^ Б
                      за ^ месяц  &&&& г.
           ^ Р
 И.{ PlVedP CheckEnter
.fields
 KolList
  GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 Npp KodPodr TabN FIO
 GetStrSummaExt(true, true, Summa) PrizDep Fio2
.endfields
.[h overWrite
.begin KolList:= KolList+1; end.
 Ш────┬────────────────────┬────────────────────┬──────────────────────────────┬──────────────┬────────────
  № │   Подразделение    │   Табельный номер  │      Фамилия, инициалы       │    Сумма     │Расписка в
 п/п│                    │                    │                              │              │ получении
────┼────────────────────┼────────────────────┼──────────────────────────────┼──────────────┼──────────── Р
 И.]h
.{?internal; ((isLastInved)and   (CurPosition>=33))or (CurPosition>= 51)
.begin CP:= CurPosition+ 1; end.
 Ш────┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴────────────
 Итого по листу &&&:                                        &'&&&&&&&&&&&&&&&.&&
 ^ Р
 И.begin SumList:=0; CurPosition:= 0; end.
.{while cp<= 53

.begin inc(cp); end.
.}
.}
 Ш    │                    │                    │                              │              │ Р
 И.begin SumList:=SumList+Summa; CurPosition:= CurPosition+ 2; end.
 Ш&&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&.&&│@@@@@@@@@@@@ Ш
.if secondstrv
.begin inc(CurPosition); end.
 Ш    │                    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │ Р
 И.end
.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, itogSum)
 KolList
 StrItogSum
 nFio_Ras
 nFio_Chk
.endfields
 Ш────┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴──────────── Ш
 Ш Итого по листу &&&:                                                    &'&&&&&&&&&&&&&&&.&& Р
 Р ^
                                                ИТОГО ПО ВЕДОМОСТИ    &'&&&&&&&&&&&&&&&&&.&&

                                                                                 Количество листов  Д&&& Д
 ^

  Сумма выданная:________________________________________________________________________________________

  _______________________________________________________________________________________________________

  Сумма не выданная:_____________________________________________________________________________________

  _______________________________________________________________________________________________________
                                            (суммы прописью)

   БКассир-раздатчик Б              Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

   БПроверил бухгалтер Б            Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ф
 И.begin
CurPosition:= 14;
end.
.} // PlVedM CheckEnter
.endform

.Linkform 'pechPlVn_8' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости (с валютой)'
.group '111'
.p 60
.var KolList: integer
     SumList: double
     SumListv: double
     Itoglistv: double
     Itogsummai: double
     CurPosition: integer//строка на странице
     CP         : integer;
     firstHeader: boolean; //какая из 2- ух шапок печатается
     rasRub: double;
     rasVal: double;
     OstRub: double;
     OstVal: double;
.endvar
.begin
CurPosition:= 14;
end.
.{ PlVedM CheckEnter
.fields
'true':'s'
 s1 syear s2
 s3 strsum summaval strsummaval
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 Pred
 Podr
 NomVed NameVed
 Mes God //13
 Level
.endfields
.begin  KolList:=0
        SumList:=0
        SumListv:=0
        rasRub:= 0;
        rasVal:= 0;
        OstRub:= 0;
        OstVal:= 0;
end.
.if newP
^
.end
 Ш  Б^ Б &&&& ^
 ^ ^
 ( ^ ) ^

  БРуководитель организации (предприятия) Б   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

                           БГл. бухгалтер Б   Д^ Д  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

 Организация:  Д^ Д
    ^

                               БПЛАТЕЖНАЯ ВЕДОМОСТЬ № ^ ^ Б
                              за ^ месяц  &&&& г.
    ^ Ш
.{ PlVedP CheckEnter
.fields
 KolList
 rasRub rasVal
 Sumlistv Sumlist
 ostval ostrub
 DoubleToString(0, SumList)
 DoubleToString(integer(KodVal), SumListv)
! 'true' : 's'
 Npp KodPodr TabN FIO
 Summa summavr summavruk summai ostv ostr
 Fio2
.endfields
.[h overWrite
.begin  KolList:=KolList+1;  SumList:=0;   Sumlistv:=0;
rasrub:= 0;  rasval:= 0; end.
 Р┌───┬────────────────────┬─────────────────┬──────────────────────────────┬─────────────────────────┬─────────────────────────┬─────────────────────┐
│ № │    Подразделение   │ Табельный номер │      Фамилия, инициалы       │    Расчетная сумма      │     Выдано  на руки     │Остаток на след.месяц│
│   │                    │                 │                              ├──────────────┬──────────┼─────────┬───────────────┼──────┬──────────────┤
│п/п│                    │                 │                              │  в рублях    │ в валюте │    в    │  эквивалент   │  в   │   эквивалент │
│   │                    │                 │                              │              │          │  валюте │   в рублях    │валюте│    в рублях  │
├───┼────────────────────┼─────────────────┼──────────────────────────────┼──────────────┼──────────┼─────────┼───────────────┼──────┼──────────────┤ Р
.]h
.{?internal; ((isLastInved)  and (CurPosition>=  31))or (CurPosition>= 49)
.begin CP:= CurPosition+ 1; end.
 Р└───┴────────────────────┴─────────────────┴──────────────────────────────┴──────────────┴──────────┴─────────┴───────────────┴──────┴──────────────┘
 Итого по листу &&&:                                                        &'&&&&&&&&&.&& &'&&&&&&.&& &'&&&&&.&& &'&&&&&&&&&.&& &'&&.&& &'&&&&&&&&&.&& И
 ^
 ^ Ш
.begin
 Itoglistv:=Itoglistv+Sumlistv
 Itogsummai:=ItogSummai+SumList
 SumList:=0
 Sumlistv:=0
 CurPosition:= 0;
 ostrub:= 0;
 ostval:= 0;
 end.
.{while (CP<= 50)
.begin inc(CP); end.

.}
.}
.begin
       SumListv:=SumListv+Summavruk;
       SumList:=SumList+Summai;
       rasRub:= rasRub+ Summa;
       rasVal:= RAsVal+ summavr;
       ostrub:= ostrub+ round(ostr, 2);
       ostval:= ostval+ round(ostv, 2);
       inc(CurPosition);
end.
 Р│&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&│&'&&&&&.&&│&'&&&&.&&│&'&&&&&&&&&&.&&│&'&.&&│&'&&&&&&&&&.&&│ Р
.if secondstrv
.begin inc(CurPosition); end.
 Р│   │                    │                 │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │          │         │               │      │              │ Р
.end
.[f OverWrite
.begin
 Itoglistv:=Itoglistv+Sumlistv
 Itogsummai:=ItogSummai+SumList
end.
.]f
.}
.fields
 KolList
 rasRub rasVal
 Sumlistv Sumlist
 ostval ostrub
 DoubleToString(0, SumList)
 DoubleToString(integer(KodVal), SumListv)
 ItogSummai Itoglistv
 KolList
 DoubleToString(0, ItogSummai)
 DoubleToString(integer(KodVal), Itoglistv)
 nFio_Ras nFio_Chk
.endfields
 Р└───┴────────────────────┴─────────────────┴──────────────────────────────┴──────────────┴──────────┴─────────┴───────────────┴──────┴──────────────┘
 Итого по листу &&&:                                                        &'&&&&&&&&&.&& &'&&&&&&.&& &'&&&&&.&& &'&&&&&&&&&.&& &'&&.&& &'&&&&&&&&&.&&
 ^
 ^

               ИТОГО ПО ВЕДОМОСТИ в рублях    &'&&&&&&&&&&&&&&&&&.&&
                                    в валюте    &'&&&&&&&&&&&&&&&&&

                                                                                                                             Количество листов  Д&&& Д
 ^
 ^

  Р Сумма выданная   :____________________________________________________________

  ______________________________________________________________________________

  Сумма не выданная:____________________________________________________________

  ______________________________________________________________________________
                                         ( суммы прописью )

   БКассир-раздатчик Б        Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

   БПроверил бухгалтер Б      Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
.begin
ItogSummai:= 0;
Itoglistv := 0;
CurPosition:= 15;
end.
.}
.endform

.Linkform 'pechPlVn_09' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости (с валютой)'
.group '122'
.p 60
.var KolList: integer
     SumList: double
     SumListv: double
     Itoglistv: double
     Itogsummai: double
     CurPosition: integer//строка на странице
     CP         : integer;
     firstHeader: boolean; //какая из 2- ух шапок печатается
     wRound : word;
     sTmpSummavruk :string; // переменная для вывода суммы валюты на руки с анализом настройки округления
.endvar
.{ PlVedM CheckEnter
.fields
 'true':'s'
 Pred Podr mes1 mes1 syear
 strsummaval summaval
 NomOrder DayOrder MonthOrder YearOrder
 DolgBoss
 И nBoss
 GlavBuh_SignDoc
 nMainBuh syear И
 NomVed NameVed
 Mes God
 level
 nFio_Ras nFio_Chk
 'true':'s'
.endfields
 Ш.if newP
^
.end
.begin  KolList:=1
        SumList:=0  end.

Организация  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
^
                                                   ┌────────────────┬────────┐
К расчетной ведомости №                            │Корреспондирую- │Код це- │
                         ───────────────────       │щий счет        │левого  │
                                                   ├───────┬────────┤назначе-│
                                                   │ Счет  │Код ана-│ния     │
                                                   │Субсчет│лит. уч.│        │
                                                   ├───────┴───┬────┴────────┤
 БВ кассу для оплаты в срок Б                          │           │             │
с   @@@@@@@@@ по    @@@@@@@@@ @@@@ г.              │           │             │
    ─────────       ─────────                      └───────────┴─────────────┘
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
─────────────────────────────────────────────────────────────────────────────────────────────────────
        сумма прописью
 ( Д^ Д)
Расходный кассовый ордер №  Д^ Д

от  &&  Д&&&&&&&& Д    &&&&   г.

 БРуководитель Б @~@@@@@@@@@@@@@@@@@@@@@@@              @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
             ───────────────────────── ───────────  ────────────────────────────────────
                должность               подпись             расшифровка подписи

 БГлавный бухгалтер Б                 ^ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  ──────────────  ───────────────────────────────────────────
                      подпись             расшифровка подписи

"   "                @@@@ г.
      ──────────────

                     БПЛАТЕЖНАЯ ВЕДОМОСТЬ  №  ^ ^ Б
                       за ^ месяц  @@@@ г.
                  ^
                                                        Количество листов
                                                                           ────
По настоящей платежной ведомости выплачено
                                           ──────────────────────────────────

─────────────────────────────────────────────────────────────────────────────

─────────────────────────────────────────────────────────────────────────────
и депонировано
               ──────────────────────────────────────────────────────────────

─────────────────────────────────────────────────────────────────────────────

─────────────────────────────────────────────────────────────────────────────
   БВыплаты произвел Б                          ^
                      ────────────────────  ─────────────────────
   БПроверил бухгалтер Б                        ^
                      ────────────────────  ─────────────────────

^ Р
 И.begin firstheader:= true; end.
.{ PlVedP CheckEnter
.fields
 KolList
 if (wRound > 0, DoubleToStr(SumList,'[|-]366666666.88'), GetStrSummaExt(true, true, SumList))
 DoubleToString(integer(KodVal), SumList)
 Npp KodPodr TabN FIO
 sTmpSummavruk PrizDep Fio2
.endfields
.[h overWrite
.begin KolList:=KolList+1  SumList:=0; end.
 Ш┌───┬────────────────────┬────────────────────┬──────────────────────────────┬──────────────┬────────────┐
│ № │    Подразделение   │  Табельный номер   │      Фамилия, инициалы       │    Сумма     │ Расписка в │
│п/п│                    │                    │                              │              │  получении │
├───┼────────────────────┼────────────────────┼──────────────────────────────┼──────────────┼────────────┤ Р
 И.]h
.begin CurPosition:= CurPosition  end.
.{?internal; ((isLastInved) and (CurPosition>= 47))  or (curposition >= 51)
.begin cp:= curPosition+ 1; end.
 Ш└───┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴────────────┘
 Итого по листу &&&:                                                          &'&&&&&&&&&&&&
 ^ Р
 И.begin
 Itogsummai:=ItogSummai+SumList
 SumList:=0;
end.
.{while (cp<= 52+ if(firstheader, 0, 1))

.begin inc(cp); end.
.}
.begin firstheader:= false; end.
.}
 Ш│   │                    │                    │                              │              │            │ Р
 И.begin SumList := SumList + Summavruk        CurPosition:= CurPosition+ 2
if (not ReadMyDsk(wRound,'PlVed_wRound', false))
    wRound:= 0;
if wRound > 0
  sTmpSummavruk := String (Summavruk)
else
  sTmpSummavruk := String(GetStrSummaExt(true, true, Summavruk));  end.
 Ш│&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&│@@@@@@@@@@@@│ Р
 И.if secondstrv
.begin inc(CurPosition); end.
 Ш│   │                    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │            │ Р
 И.end
.[f OverWrite
.begin
 Itogsummai:=ItogSummai+SumList
 CurPosition:= 0
 end.
.]f
.}
.fields
 KolList
 if (wRound > 0, DoubleToStr(SumList,'[|-]366666666.88'), GetStrSummaExt(true, true, SumList))
 DoubleToString(integer(KodVal), SumList)
 if (wRound > 0, DoubleToStr(ItogSummai,'[|-]366666666.88'), GetStrSummaExt(true, true, ItogSummai))
 KolList
 DoubleToString(integer(KodVal), ItogSummai)
.endfields
 Ш└───┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴────────────┘
 Итого по листу &&&:                                                          &'&&&&&&&&&&&&
 ^
                                         ИТОГО ПО ВЕДОМОСТИ в валюте     &'&&&&&&&&&&&&&&&&&

                                                                                  Количество листов  Д&&& Д
 ^ Р

 И.begin
ItogSummai:= 0;
end.
.} //PlVedM CheckEnter
.endform

.Linkform 'pechPlVn_10' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости (в валюте)'
.group '133'
.p 60
.var KolList: integer
     SumList: double
     SumListv: double
     Itoglistv: double
     Itogsummai: double
     CurPosition: integer//строка на странице
     CP         : integer;
     firstHeader: boolean; //какая из 2- ух шапок печатается
     RItogSum:          double;
      ИRItogSumdepVal И: double;
     Rsumrub:           string;
     Rsumkop:           string;
     Rsumrubdep:        string;
     Rsumkopdep:        string;
     .endvar
.{ PlVedM CheckEnter
.fields
'true':'s'
 Pred
 poOKPO
 Podr
 KorSchet
 mes1 syear mes1 syear
 strsummaval summaval
 DolgBoss
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 ДеньВед  МесВед
 syear
 NomVed
 data
 НачДень_ДатаВед КончДень_ДатаВед
 'true':'s'
.endfields
.begin  KolList:=1
        SumList:=0   end.
.if newP
^
.end


 Ш                                        Унифицированная форма № Т-53
                                        Утверждена постановлением Госкомстата
                                        России от 05.01.2004 г. № 1

                                                                   ┌───────────┐
                                                                   │    Код    │
                                                                   ├───────────┤
                                                     Форма по ОКУД │  0301011  │
                                                                   ├───────────┤
 Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  по ОКПО │@~@@@@@@@@@│
                наименование организации                           ├───────────┤
 Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д │           │
                структурное подразделение                          ├───────────┤
                                            Корреспондирующий счет │@~@@@@@@@@@│
                                                                   └───────────┘
  БВ кассу для оплаты в срок Б
 с "   "  Д^ Д @@@@ г. по "   "  Д^ Д @@@@ г.

 Сумма  Д^ Д
                       прописью
 ( Д^ Д)
  цифрами
  БРуководитель организации Б @~@@@@@@@@@@@@@@@@@@@@@              @@@@@@@@@@@@@@@@@@@@@@@@
                         ───────────────────────   ───────────  ───────────────────────
                                  должность      личная подпись    расшифровка подписи


  БГлавный бухгалтер Б                ^ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                 ──────────────  ───────────────────────────────────────────────
                 личная подпись             расшифровка подписи

 "@@"  Д^ Д @@@@ г.



                           ┌──────────┬──────────────────┐ ┌─────────────────────┐
                           │  Номер   │       Дата       │ │  Расчетный период   │
                           │документа │    составления   │ ├──────────┬──────────┤
             БПЛАТЕЖНАЯ Б      │          │                  │ │     с    │    по    │
                           ├──────────┼──────────────────┤ ├──────────┼──────────┤
             БВЕДОМОСТЬ Б      │&&&&&&&&&&│    @@@@@@@@@@    │ │@@@@@@@@@@│@@@@@@@@@@│
                           └──────────┴──────────────────┘ └──────────┴──────────┘



^ Р
 И.begin firstheader:= true; end.
.{ PlVedP CheckEnter
.fields
 substr(Level,1 ,60)
 KolList
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(integer(KodVal), SumList)
 Npp TabN FIO
 GetStrSummaExt(true, true, Summavruk)
 PrizDep
 Fio2
.endfields
.[h OverWrite
.begin KolList:=KolList+1 SumList:=0 end.

 Ш  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ^-я страница формы № Т-53
 ┌──────┬────────────────────┬──────────────────────────────┬──────────────┬─────────────┬──────────┐
 │  №   │  Табельный номер   │      Фамилия, инициалы       │     Сумма    │  Подпись в  │Примечание│
 │ п/п  │                    │                              │   в валюте   │  получении  │          │
 │      │                    │                              │              │денег (запись│          │
 │      │                    │                              │              │     о       │          │
 │      │                    │                              │              │депонировании│          │
 │      │                    │                              │              │  суммы)     │          │
 ├──────┼────────────────────┼──────────────────────────────┼──────────────┼─────────────┼──────────┤
 │   1  │         2          │              3               │      4       │       5     │     6    │
 ├──────┼────────────────────┼──────────────────────────────┼──────────────┼─────────────┼──────────┤
.]h
.{?internal; ((isLastInved) and (CurPosition>= 21)) or (CurPosition>= 42)
.begin CP:= CurPosition+ 1; end.
 └──────┴────────────────────┴──────────────────────────────┴──────────────┴─────────────┴──────────┘
  Итого по листу &&&:                                        &'&&&&&&&&&&&&
  ^ Р
 И.begin
 Itogsummai:=ItogSummai+SumList
 SumList:=0 end.
.{while  (CP<= 44+ if(firstheader, 0, 1))
.begin inc(cp) end.

.}
.begin firstheader:= false; end.
.}
 Ш │      │                    │                              │              │             │          │ Ш
.begin SumList:=SumList+Summavruk CurPosition:= CurPosition+ 2 end.
 Ш │&&&&&&│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&│@~@@@@@@@@@@@│. . . . . │ Ш
.if secondstrv
.begin inc(CurPosition); end.
 Ш │      │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │             │          │ Р
 И.end
.[f OverWrite
.begin
 Itogsummai:=ItogSummai+SumList
 CurPosition:= 0 end.
.]f
.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(integer(KodVal), SumList)
 GetStrSummaExt(true, true, ItogSummai)
 KolList
  ИDoubleToString( Иinteger(KodVal),  ИRItogSum)
 DoubleToStr(RItogSum, '666666666666667.88')
 И  ИDoubleToString( Иinteger(KodVal),  ИRItogSumdepVal)
 DoubleToStr(RItogSumdepVal, '666666666666667.88')
 И nDgn_Ras nFio_Ras
 NomOrder DayOrder MonthOrder YearOrder
 nFio_Chk
 .endfields
 Ш └──────┴────────────────────┴──────────────────────────────┴──────────────┴─────────────┴──────────┘
  Итого по листу &&&:                                        &'&&&&&&&&&&&&
  ^
                       ИТОГО ПО ВЕДОМОСТИ в валюте      &'&&&&&&&&&&&&&&&&&
                                                                              Количество листов  Д&&& Д
.begin
 // выплачено
   RItogSum := ItogSummai - ItogSumdepVal // выплачено по ведомости Р
 Р   RItogSumdepVal := ItogSumdepVal + (Double( Рsummaval Р) - ItogSummai)
end. Р
 Р По настоящей платежной ведомости
 выплачена сумма  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ___________________________________________________________________________________________________
                                   прописью
 _______________________________________________________________________________  ( Д^ Д      )
                                                                                         цифрами
 и депонирована сумма  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ___________________________________________________________________________________________________
                                   прописью
 ________________________________________________________________________________ ( Д^ Д      )
                                                                                         цифрами
   БВыплаты произвел Б    @@@@@@@@@@@@@@@@@@                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                      ───────────────────   ───────────────   ──────────────────────────────────
                           должность         личная подпись          расшифровка подписи

  Расходный кассовый ордер №  Д^ Д от "&&"  Д^ Д @@@@ г.

   БПроверил бухгалтер Б                       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                      ─────────────────    ─────────────────────────────────────
                        личная подпись            расшифровка подписи
   "    "    Д Д_________________________________  20    г.
 Р И.begin itogSummai:= 0; end.
.} //PlVedM CheckEnter
.endform
!
!
!
.Linkform 'pechPlVn_01' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости'
.group '12'
.p 60
.var KolList: integer
     SumList: double
     CurPosition: integer//строка на странице
     CP         : integer;
     firstHeader: boolean; //какая из 2- ух шапок печатается
.endvar
.{ PlVedM CheckEnter
.fields
 'true':'s'
 Pred Podr mes1 mes1 syear
 strsum
 sumrub   sumkop
 NomOrder DayOrder MonthOrder YearOrder
 DolgBoss
 И nBoss
 GlavBuh_SignDoc
 nMainBuh syear И
 NomVed NameVed
 Mes God
 level
 nFio_Ras nFio_Chk
 'true':'s'
.endfields
.if newP
^
.end
.begin  KolList:=1
        SumList:=0
        CurPosition:= 0
       end.

 Ш Организация  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
 ^
                                                                ┌────────────────┬────────┐
 К расчетной ведомости №                                        │Корреспондирую- │Код це- │
                         ───────────────────                    │щий счет        │левого  │
                                                                ├───────┬────────┤назначе-│
                                                                │ Счет  │Код ана-│ния     │
                                                                │Субсчет│лит. уч.│        │
                                                                ├───────┴───┬────┴────────┤
 Б В кассу для оплаты в срок Б                                      │           │             │
 с   @@@@@@@@@ по    @@@@@@@@@ @@@@ г.                          │           │             │
  ──              ──                                            └───────────┴─────────────┘
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ───────────────────────────────────────────────────────────────────────────────────────────────────
        сумма прописью
  ( Д^ Д руб   Д^ Д коп )
 Расходный кассовый ордер №  Д^ Д

 от  &&  Д&&&&&&&& Д    &&&&   г.

  БРуководитель Б @~@@@@@@@@@@@@@@@@@@@@@@@              @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
             ───────────────────────── ───────────  ────────────────────────────────────
                     должность           подпись             расшифровка подписи

  БГлавный бухгалтер Б                 ^ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  ──────────────  ───────────────────────────────────────────
                      подпись                 расшифровка подписи

"   "                @@@@ г.


                   БПЛАТЕЖНАЯ ВЕДОМОСТЬ Б  №  ^ ^
                       за ^ месяц  @@@@ г.
                ^
                                                          Количество листов
                                                                             ────
По настоящей платежной ведомости выплачено
                                           ──────────────────────────────────

─────────────────────────────────────────────────────────────────────────────

─────────────────────────────────────────────────────────────────────────────
и депонировано
               ──────────────────────────────────────────────────────────────

─────────────────────────────────────────────────────────────────────────────

─────────────────────────────────────────────────────────────────────────────
   БВыплаты произвел Б                          ^
                      ─────────────────────  ─────────────────────
   БПроверил бухгалтер Б                        ^
                      ─────────────────────  ─────────────────────

^ Р
 И.begin firstheader:= true; end.
.{ PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(integer(KodVal), SumList)
 Npp KodPodr TabN FIO
 GetStrSummaExt(true, true, Summa) PrizDep Fio2
.endfields
.[h overWrite
.begin KolList:=KolList+1; sumlist:= 0; end.
 Ш┌───┬────────────────────┬────────────────────┬──────────────────────────────┬──────────────┬─────────────┐
│ № │   Подразделение    │  Табельный номер   │      Фамилия, инициалы       │    Сумма     │ Расписка в  │
│п/п│                    │                    │                              │              │ получении   │
├───┼────────────────────┼────────────────────┼──────────────────────────────┼──────────────┼─────────────┤ Р
 И.]h
.begin    CurPosition:=   CurPosition; end.
.{?internal; (islastinved and (curposition>= 47)) or (curposition>= 51)
.begin CP:= curposition+ 1; end.
 Ш└───┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴─────────────┘
 Итого по листу &&&:                                                          &'&&&&&&&&&.&&
 ^ Р
 И.{while (cp<= 52+ if(firstheader, 0, 1))

.begin inc(cp); end.
.}
.begin firstheader:= false; sumlist:= 0; end.
.}
 Ш│   │                    │                    │                              │              │             │ Р
 И.begin SumList:=SumList+Summa    CurPosition:= CurPosition+ 2 end.
 Ш│&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&.&&│@@@@@@@@@@@@@│ Р
 И.if secondstrv
.begin inc(CurPosition); end.
 Ш│   │                    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │             │ Р
 И.end
.[f OverWrite
.begin
 CurPosition:= 0
 end.
.]f
.}
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(integer(KodVal), SumList)
 GetStrSummaExt(true, true, ItogSum)
 KolList
 StrItogSum
.endfields
 Ш└───┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴─────────────┘
 Итого по листу &&&                                                           &'&&&&&&&&&.&&
 ^
                                                ИТОГО ПО ВЕДОМОСТИ    &'&&&&&&&&&&&&&&&&&.&&

                                                                                    Количество листов  Д&&& Д
 ^ Р

 И.} //PlVedM CheckEnter
.endform
!
!
!
.Linkform 'pechPlVn_02' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости'
.group '13'
.p 60
.var KolList: integer
     SumList: double
     CurPosition: integer
     CP: integer;
     firstHeader: boolean; //какая из 2- ух шапок печатается
     RItogSum:    double;
     Rsumrub:     string;
     Rsumkop:     string;
     Rsumrubdep:  string;
     Rsumkopdep:  string;
.endvar
.{ PlVedM CheckEnter
.fields
 'true':'s'
  Pred
 poOKPO
 Podr
 KorSchet
 mes1 syear mes1 syear
 strsum
 sumrub   sumkop
 DolgBoss
 И nBoss
GlavBuh_SignDoc
 nMainBuh И
 ДеньВед  МесВед
 syear
 NomVed
 data
 НачДень_ДатаВед КончДень_ДатаВед
 'true':'s'
.endfields
.begin  KolList :=1
        SumList :=0
        CurPosition := 0
        end.
.if newP
^
.end

 Р                                                                                             Унифицированная форма № Т-53
                                                                                             Утверждена Постановлением Госкомстата
                                                                                             России от 05.01.2004 г. №1

                                                                                                                 ┌───────────┐
                                                                                                                 │    Код    │
                                                                                                                 ├───────────┤
                                                                                                   Форма по ОКУД │  0301011  │
                                                                                                                 ├───────────┤
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  по ОКПО │@~@@@@@@@@@│
                                          наименование организации                                               ├───────────┤
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д          │           │
                                          структурное подразделение                                              ├───────────┤
                                                                                          Корреспондирующий счет │@~@@@@@@@@@│
                                                                                                                 └───────────┘
  БВ кассу для оплаты в срок Б

 с "   "  Д^ Д @@@@ года по "   "  Д^ Д @@@@ года

 Сумма  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                  прописью
  ( Д^ Д руб   Д^ Д коп)
   цифрами
   БРуководитель организации Б @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                       @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                            ─────────────────────────────────────  ───────────────────   ────────────────────────────────────────
                                           должность                   личная подпись               расшифровка подписи


   БГлавный бухгалтер Б                          ^ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                     ───────────────────     ──────────────────────────────────────────────────────────────
                     личная подпись                             расшифровка подписи


                        "@@"   Д^ Д  @@@@ года



                                           ┌───────────────────────┬────────────────────────────┐         ┌─────────────────────┐
                                           │    Номер  документа   │      Дата   составления    │         │  Расчетный период   │
                                           │                       │                            │         ├──────────┬──────────┤
                                           │                       │                            │         │     с    │    по    │
                 Б ПЛАТЕЖНАЯ  Б                ├───────────────────────┼────────────────────────────┤         ├──────────┼──────────┤
                 Б ВЕДОМОСТЬ Б                 │ &~&&&&&&&&&&&&&&&&&&& │         @@@@@@@@@@         │         │@@@@@@@@@@│@@@@@@@@@@│
                                           └───────────────────────┴────────────────────────────┘         └──────────┴──────────┘



^ Р
.begin firstheader:= true; end.
.{ PlVedP CheckEnter
.fields
 substr(level, 1, 60)
 KolList
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 Npp TabN FIO
 GetStrSummaExt(true, true, Summa)
 PrizDep
 Fio2
.endfields
.[h OverWrite
.begin KolList := KolList + 1 SumList := 0; end.

 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ^-я страница формы № Т-53
 ┌───────┬────────────────────┬──────────────────────────────┬──────────────────────────┬────────────────────────┬────────────────────┐
 │Номер  │  Табельный номер   │        Фамилия, инициалы     │        Сумма, руб        │      Подпись в         │    Примечание      │
 │  по   │                    │                              │                          │      получении         │                    │
 │порядку│                    │                              │                          │    денег (запись       │                    │
 │       │                    │                              │                          │         о              │                    │
 │       │                    │                              │                          │    депонировании       │                    │
 │       │                    │                              │                          │       суммы)           │                    │
 ├───────┼────────────────────┼──────────────────────────────┼──────────────────────────┼────────────────────────┼────────────────────┤
 │   1   │         2          │               3              │             4            │          5             │          6         │
 ├───────┼────────────────────┼──────────────────────────────┼──────────────────────────┼────────────────────────┼────────────────────┤
.]h
.begin CurPosition:= CurPosition end.
.{?internal; (((isLastInved) and (CurPosition>= 21)) or (CurPosition>= 42))
.begin CP:= CurPosition+ 1; end.
 └───────┴────────────────────┴──────────────────────────────┴──────────────────────────┴────────────────────────┴────────────────────┘
  Итого по листу &&&:                                         &'&&&&&&&&&&&&&&&&&&&&&.&&
  ^ Ш
 И.begin
 SumList:=0; end.
.{while  (CP<= 44+ if(firstheader, 0, 1))
.begin inc(cp) end.

.}
.begin firstheader:= false; end.
.}
 Р │       │                    │                              │                          │                        │                    │ Р
.begin
  SumList := SumList + Summa
  CurPosition := CurPosition + 2
end.
 Р │&&&&&& │&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&&&&&&&&&&&&.&&│@~@@@@@@@@@@@@@@@@@@@@@@│  . . . . . . . .   │ Р
.if secondstrv
.begin inc(CurPosition); end.
 Р │       │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│                          │                        │                    │ Р
.end
.[f OverWrite
.begin
 CurPosition:= 0
end.
.]f
.}
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, ItogSum)
 KolList
 PechItogStr
 Rsumrub
 Rsumkop И
 И PechItogDep
 Rsumrubdep
 Rsumkopdep И
  ИnDgn_Ras nFio_Ras
 NomOrder DayOrder MonthOrder YearOrder
 nFio_Chk
 //ДеньВед2  МесВед2 syear2
.endfields
 Р └───────┴────────────────────┴──────────────────────────────┴──────────────────────────┴────────────────────────┴────────────────────┘
  Итого по листу &&&:                                         &'&&&&&&&&&&&&&&&&&&&&&.&&
  ^
                                         ИТОГО ПО ВЕДОМОСТИ  &'&&&&&&&&&&&&&&&&&&&&&&.&&
                                                                                                               Количество листов  Д&&& Д
.begin
  if (PechItog > 0)     // заполнять поля с итогами по суммам (выплачена/депонирована)
  begin
    // выплачено
    RItogSum := ItogSum - ItogSumdep // выплачено по ведомости
    var tmpSumItog: string;
    Tmpsumitog := getstrsummaext2(false, false, false, ritogsum)
    var tmpCharItog: string;
    if (trim(sGetTune('NDE.NameKOP')) = '')
      tmpCharItog := '='
    else
      case wGetTune('Fin.Simvol') of
        1: tmpCharItog := '=';
        2: tmpCharItog := '-';
       3: if pos(substr(tmpSumItog, length(tmpSumItog), 1), '0123456789')= 0
            tmpCharItog := '='
          else
            tmpCharItog := '-';
          else
            tmpCharItog := '.';
      end;
   var Position: byte;
   Position := pos(tmpCharItog, tmpsumItog);
   RSumRub := Trim(substr(tmpsumItog, 1, position - 1))  //sumrub
   RSumRub := if(RSumRub = '', '0', RSumRub)             //sumrub
   tmpcharItog := trim(substr(tmpsumItog, position + 1, length(tmpsumItog)));
   RSumkop :=  if(tmpcharItog = '' , '00', tmpcharItog)  //sumkop
   PechItogStr := DoubleToString(0, RItogSum);
   // задепонировано
   tmpSumItog := GetStrSummaExt2(false, false, false, ItogSumdep);
   if (trim(sGetTune('NDE.NameKOP')) = '')
     tmpCharItog := '='
   else
     case wGetTune('Fin.Simvol') of
       1: tmpCharItog := '=';
       2: tmpCharItog := '-';
       3: if pos(substr(tmpSumItog, length(tmpSumItog), 1), '0123456789')= 0
            tmpCharItog := '='
          else
            tmpCharItog := '-';
          else
            tmpCharItog := '.';
      end;
   Position := pos(tmpCharItog, tmpsumItog);
   RSumRubDep := Trim(substr(tmpsumItog, 1, position - 1))
   RSumRubDep := if(RSumRubDep = '', 0, RSumRubDep)
   tmpcharItog := trim(substr(tmpsumItog, position + 1, length(tmpsumItog)));
   RSumkopDep :=  if(tmpcharItog = '' , '00', tmpcharItog)  //sumkop
   PechItogDep := DoubleToString(0, ItogSumdep);
   end;
   if (PechItog = 0)     // не заполнять поля с итогами по суммам (выплачена/депонирована)
    begin
      RSumRub :=    '                  ';
      RSumkop := '';
      RSumRubDep := '                  ';
      RSumkopDep := '';
      PechItogStr := '';
      PechItogDep := '';
    end;
   end.
 По настоящей платежной ведомости
 выплачена сумма   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                   прописью
 __________________________________________________________________________________________________    ( Д ^  Д руб  Д ^  Д коп)
                                                                                                             цифрами
 и депонирована сумма   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                   прописью
 __________________________________________________________________________________________________    ( Д ^  Д руб  Д ^  Д коп)
                                                                                                             цифрами

 Б  Выплаты произвел Б   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    ──────────────────────────────────────────         ────────────────        ─────────────────────────────────────
                                    должность                           личная подпись                  расшифровка подписи

  Расходный кассовый ордер №  Д^ Д от  "&&"  Д^ Д  @@@@г.

   БПроверил бухгалтер Б                         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        ──────────────────  ──────────────────────────────────────────────────────────────
                          личная подпись                          расшифровка подписи

     "    " ___________________________20      г. Р
.} //PlVedM CheckEnter
.endform

!-----       для детей
.Linkform 'pechPlVn_03' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости'
.group '21'
.p 60
.var KolList: integer
     SumList: double
     CurPosition: integer;//строка на странице
     CP         : integer;
     firstheader: boolean;
.endvar
.begin curposition:= 13; end.
.{ PlVedM CheckEnter
.fields
'true':'s'
 s1 syear s2
 s3 strsum
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 Pred
 Podr
 NomVed NameVed
 Mes God //13
 LEVEL
.endfields
.begin  KolList:=0;
        SumList:=0;
end.
 Ш.if newP
^
.end
 Б^ Б &&&& ^
^ ^

  БРуководитель организации (предприятия) Б ^

                          БГл. бухгалтер Б ^ ^

    Организация: ^
    ^

             БПЛАТЕЖНАЯ ВЕДОМОСТЬ Б № ^ ^
                      за ^ месяц  &&&& г.
              ^ Р
 И.{ PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 Npp TabN FIO
 Fio2
.endfields
.[h overWrite
.begin KolList:=KolList+1; sumlist:= 0; end.
 Ш┌────┬────────────────────┬──────────────────────────────┬──────────┬──────────────┬───────────────┐
│ №  │   Табельный номер  │         Ф.И.О. матери        │Дата рожд.│     Сумма    │  Расписка в   │
│п/п │                    │       / Ф.И.О. ребенка       │ ребенка  │              │   получении   │
├────┼────────────────────┼──────────────────────────────┼──────────┼──────────────┼───────────────┤ Р
 И.]h
.{?internal; ((isLastInved)  and (CurPosition>=  33))or (Curposition>= 51)
.begin CP:= CurPosition+ 1; end.
 Ш└────┴────────────────────┴──────────────────────────────┴──────────┴──────────────┴───────────────┘
 Итого по листу &&&:                                           &'&&&&&&&&&&&&&&&.&&
 ^ Р
 И.begin SumList:=0; curposition:= 0; end.
.{while (CP<= 53)
.begin inc(cp); end.

.}
.}
.begin
  inc(CurPosition);
end.
 Ш│&&&&│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│          │              │               │ Р
 И.if secondstrv
.begin inc(CurPosition); end.
 Ш│    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│          │              │               │ Р
 И.end
.fields
  FIOCh DatRog GetStrSummaExt(true, true, Summa) PrizDep
.endfields
.begin SumList:=SumList+Summa; inc(CurPosition); end.
 Ш│    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│&'&&&&&&&&&.&&│@@@@@@@@@@@@@@@│ Р
 И.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, ItogSum)
 KolList
 StrItogSum
 nFio_Ras nFio_Chk
.endfields
 Ш└────┴────────────────────┴──────────────────────────────┴──────────┴──────────────┴───────────────┘
 Итого по листу &&&:                                           &'&&&&&&&&&&&&&&&.&&
 ^
                                        ИТОГО ПО ВЕДОМОСТИ   &'&&&&&&&&&&&&&&&&&.&&

                                                                            Количество листов  Д&&& Д
 ^

  Сумма выданная:_______________________________________________________________

  ______________________________________________________________________________

  Сумма не выданная:____________________________________________________________

  ______________________________________________________________________________
                                         ( суммы прописью )

   БКассир-раздатчик Б                          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

   БПроверил бухгалтер Б                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р

 И.begin CurPosition:= 14; end.
.} // PlVedM CheckEnter
.endform
!
!-----            пособия матерям
!
.Linkform 'pechPlVn_05' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости'
.group '31'
.p 60
.var KolList: integer
     SumList: double
     CurPosition: integer;
     CP         : integer;
     firstheader: boolean;
     .endvar
.begin Curposition:= 13; end.
.{ PlVedM CheckEnter
.fields
 'true' : 's'
 s1 syear s2
 s3 strsum
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 Pred
 Podr
 NomVed NameVed
 Mes God
 lEVEL
.endfields
.begin  KolList:=0
        SumList:=0
        end.
 Ш.if NewP
^
.end
  Б^ Б &&&& ^
^ ^

    БРуководитель организации (предприятия) Б  Д^ Д

                             БГл. бухгалтер Б  Д^ Д  Д^ Д

     БОрганизация Б  Д^ Д
     Д^ Д

              БПЛАТЕЖНАЯ ВЕДОМОСТЬ Б № ^ ^
                  за ^ месяц  &&&& г.
            ^ Р
 И.{ PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 CP
  Npp TabN FIO DatRog GetStrSummaExt(true, true, Summa) PrizDep
  Fio2
.endfields
.[h overWrite
.begin KolList:=KolList+1 end.
 Ш┌────┬────────────────────┬──────────────────────────────┬──────────┬──────────────┬───────────────┐
│ №  │   Табельный номер  │   Фамилия, инициалы матери   │Дата рожд.│     Сумма    │  Расписка в   │
│п/п │                    │                              │ ребенка  │              │   получении   │
├────┼────────────────────┼──────────────────────────────┼──────────┼──────────────┼───────────────┤ Р
 И.]h
.{?internal; ((isLastInved)and (CurPosition>=33))or (CurPosition>= 51)
.begin CP:= Curposition+ 1; end.
 Ш└────┴────────────────────┴──────────────────────────────┴──────────┴──────────────┴───────────────┘
 Итого по листу &&&:                                            &'&&&&&&&&&&&&&&&.&&
 ^ Р
 И.begin SumList:=0; CurPosition:= 0; end.
.{while (CP<= 53)
 ^
.begin inc(CP); end.
.}
.}
 Ш│    │                    │                              │          │              │               │ Р
 И.begin SumList:=SumList+Summa curPosition:= curPosition+ 2 end.
 Ш│&&&&│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│&'&&&&&&&&&.&&│@@@@@@@@@@@@@@@│ Р
 И.if secondstrv
.begin inc(curPosition); end.
 Ш│    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│          │              │               │ Р
 И.end
.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, ItogSum)
 KolList
 StrItogSum
 nFio_Ras nFio_Chk
.endfields
 Ш└────┴────────────────────┴──────────────────────────────┴──────────┴──────────────┴───────────────┘
 Итого по листу &&&                                             &'&&&&&&&&&&&&&&&.&&
 ^
                                        ИТОГО ПО ВЕДОМОСТИ    &'&&&&&&&&&&&&&&&&&.&&

                                                                             Количество листов  Д&&& Д
 ^
  Сумма выданная:
                  ──────────────────────────────────────────────────────────────

  ──────────────────────────────────────────────────────────────────────────────
  Сумма не выданная:
                    ────────────────────────────────────────────────────────────

  ──────────────────────────────────────────────────────────────────────────────
                                         ( суммы прописью )
   БКассир-раздатчик Б                           Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

   БПроверил бухгалтер Б                         Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ф

 И.begin CurPosition:= 14; end.
.}
.endform

!--------------------------
.Linkform 'pechPlVn_06' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости для России'
.group '32'
.p 60
.var KolList: integer
     SumList: double
     CurPosition: integer
     CP: integer;
     firstheader: boolean;
     RItogSum:    double;
     Rsumrub:     string;
     Rsumkop:     string;
     Rsumrubdep:  string;
     Rsumkopdep:  string;
     .endvar
.{ PlVedM CheckEnter
.fields
'true': 's'
 data
 Pred
 poOKPO
 Podr
 KorSchet
 mes1 mes1 syear
 strsum
 sumrub   sumkop
 DolgBoss
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 ДеньВед  МесВед syear
 NomVed
 ДеньВед  МесВед God
 'true':'s'
.endfields
.begin  KolList:=1
        SumList:=0
        CurPosition:= 0 end.
 Ш.if NewP
^
.end
                                    Типовая межотраслевая форма № Т-53
                                    Утверждена постановлением Госкомстата России
                                    от 30.10.97 № 71а
                                                                             ┌───────────┐
                                                                             │    Коды   │
                                                                             ├───────────┤
                                                               Форма по ОКУД │  0301011  │
                                                            Дата составления │@~@@@@@@@@@│
Организация  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д  по ОКПО │@~@@@@@@@@@│
Структурное подразделение  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д │           │
                                                      Корреспондирующий счет │@~@@@@@@@@@│
                                                     Код целевого назначения │           │
 Б Б                                                                Вид операции │           │
 БВ кассу для оплаты в срок Б       Д Д Д Д                                              └───────────┘
с     Д^ Д по  Д^ Д @@@@ г.
 Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
        сумма прописью
 ( Д^ Д руб   Д^ Д коп)

 БРуководитель Б организации @~@@@@@@@@@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@@@@@@@@@@@
                         ─────────────────────────   ───────────  ───────────────────────────
                                 должность             подпись         расшифровка подписи
 БГлавный бухгалтер Б                   ^ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                  ──────────────   ─────────────────────────────────────────────────
                      подпись        расшифровка подписи

      "@@"  Д^ Д @@@@ г.

                  БПЛАТЕЖНАЯ ВЕДОМОСТЬ Б  №  ^
                  за "@@"  Д^ Д @@@@ г.

^ Р
 И.begin firstheader:= true; end.
.{ PlVedP CheckEnter
.fields
 substr(level, 1, 60)
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 Npp  TabN  FIO DatRog GetStrSummaExt(true, true, Summa)
 PrizDep
 Fio2
.endfields
.[h OverWrite

 ШВкладной лист к форме № Т-53 ^
┌────────┬────────────────────┬──────────────────────────────┬──────────┬──────────────┬─────────────┬──────────┐
│Номер по│  Табельный номер   │   Фамилия, инициалы матери   │Дата рожд.│    Сумма     │  Расписка в │Примечание│
│порядку │                    │                              │ ребенка  │   руб. коп.  │   получении │          │
├────────┼────────────────────┼──────────────────────────────┼──────────┼──────────────┼─────────────┼──────────┤
│   1    │         2          │              3               │          │      4       │       5     │     6    │
├────────┼────────────────────┼──────────────────────────────┼──────────┼──────────────┼─────────────┼──────────┤ Р
 И.]h
.{?internal; ((isLastInved) and (CurPosition >= 27))or (CurPosition>= 46)
.begin CP:= CurPosition+ 1; end.
 Ш└────────┴────────────────────┴──────────────────────────────┴──────────┴──────────────┴─────────────┴──────────┘
 Итого по листу &&&                                                &'&&&&&&&&&&&&&&&.&&
 ^ Р
 И.begin SumList:=0; Curposition:= 0; end.
.{while (CP<= 48+ if(firstheader, 0, 1))

.begin inc(CP); end.
.}
.begin firstheader:= false; end.
.}
 Ш│        │                    │                              │          │              │             │          │ Р
 И.begin SumList:=SumList+Summa Curposition:= Curposition+ 2 end.
 Ш│&&&&&&  │&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│&'&&&&&&&&&.&&│@~@@@@@@@@@@@│. . . . . │ Ш
.if secondstrv
.begin inc(Curposition) end.
 Ш│        │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│          │              │             │          │ Р
 И.end
.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, itogSum)
 KolList
 DoubleToString(0,RItogsum)
 Rsumrub
 Rsumkop И
 И DoubleToString(0, ItogSumdep)
 Rsumrubdep
 Rsumkopdep И
 И nDgn_Ras nFio_Ras nFio_Chk
 ДеньВед  МесВед syear
.endfields
 Ш└────────┴────────────────────┴──────────────────────────────┴──────────┴──────────────┴─────────────┴──────────┘
 Итого по листу &&&                                                &'&&&&&&&&&&&&&&&.&&
 ^
                                          ИТОГО ПО ВЕДОМОСТИ     &'&&&&&&&&&&&&&&&&&.&&
                                                                                           Количество листов  Д&&& Д
.begin
 // выплачено
   RItogSum := ItogSum - ItogSumdep // выплачено по ведомости

   var tmpSumItog: string;
   tmpSumItog := GetStrSummaExt2(false, false, false, RItogSum);
   var tmpCharItog: string;

   if (trim(sGetTune('NDE.NameKOP')) = '')
      tmpCharItog := '='
   else
     case wGetTune('Fin.Simvol') of

       1: tmpCharItog := '=';

       2: tmpCharItog := '-';

       3: if pos(substr(tmpSumItog, length(tmpSumItog), 1), '0123456789')= 0
            tmpCharItog := '='
          else
             tmpCharItog := '-';
        else
          tmpCharItog := '.';
      end;

   var Position: byte;

   Position := pos(tmpCharItog, tmpsumItog);

   И И RSumRub := Trim(substr(tmpsumItog, 1, position - 1))  //sumrub
   И И RSumRub := if(RSumRub = '', '0', RSumRub)             //sumrub

   tmpcharItog := trim(substr(tmpsumItog, position + 1, length(tmpsumItog)));

   RSumkop :=  if(tmpcharItog = '' , '00', tmpcharItog)  //sumkop

 // задепонировано

   tmpSumItog := GetStrSummaExt2(false, false, false, ItogSumdep);

   if (trim(sGetTune('NDE.NameKOP')) = '')
      tmpCharItog := '='
   else
     case wGetTune('Fin.Simvol') of

       1: tmpCharItog := '=';

       2: tmpCharItog := '-';

       3: if pos(substr(tmpSumItog, length(tmpSumItog), 1), '0123456789')= 0
            tmpCharItog := '='
          else
             tmpCharItog := '-';
        else
          tmpCharItog := '.';
      end;

   Position := pos(tmpCharItog, tmpsumItog);

   RSumRubDep := Trim(substr(tmpsumItog, 1, position - 1))  //sumrub
   И И RSumRubDep := if(RSumRubDep = '', '0', RSumRubDep)       //sumrub

   tmpcharItog := trim(substr(tmpsumItog, position + 1, length(tmpsumItog)));

   RSumkopDep := if(tmpcharItog = '' , '00', tmpcharItog)  //sumkop
end.
 По настоящей платежной ведомости
 выплачена сумма   Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                                   прописью
 __________________________________________________________________________________________    ( Д ^  Д руб Д ^  Д коп)
                                                                                                    цифрами
 и депонирована сумма   Д^ Д
                                   прописью
 __________________________________________________________________________________________    ( Д ^  Д руб  Д ^  Д коп)
                                                                                                    цифрами

   БВыплаты произвел Б   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    ──────────────────────────────────────  ────────────  ─────────────────────────────────────
                                должность                  личная подпись         расшифровка подписи

   БПроверил бухгалтер Б                         @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        ──────────────────  ──────────────────────────────────────────────────────────────
                          личная подпись                          расшифровка подписи

     "@@"  Д^ Д @@@@ г. Р
 И.} //PlVedM CheckEnter
.endform

.Linkform 'pechPlVn_11' Prototype is 'pechPlVn'
.nameinlist 'Без фискального кода'
.group '114'
.p 60
.var KolList: integer
     SumList: double
     Curposition: integer
     CP         : integer;
     firstheader: boolean;
     .endvar
.begin curposition:= 13; end.
.{ PlVedM CheckEnter
.fields
'true' : 's'
 s1 syear s2
 s3 strsum
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 Pred
 Podr
 NomVed NameVed
 Mes God //13
 Level
.endfields
.begin  KolList:=0
        SumList:=0
        end.
 Ш.if NewP
^
.end
  Б^ Б &&&& ^
^ ^

  БРуководитель организации (предприятия) Б  Д^ Д

                           БГл. бухгалтер Б  Д^ Д  Д^ Д

     БОрганизация Б  Д^ Д
     Д^ Д

             БПЛАТЕЖНАЯ ВЕДОМОСТЬ Б № ^ ^
                     за ^ месяц  &&&& г.
              ^ Р
 И.{ PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)

 Npp KodPodr TabN FIO
 GetStrSummaExt(true, true, Summa) PrizDep Fio2
.endfields
.[h overWrite
.begin KolList :=KolList + 1 firstHeader := false; end.
 Ш────┬────────────────────┬────────────────────┬──────────────────────────────┬──────────────┬────────────
  № │   Подразделение    │  Табельный номер   │      Фамилия, инициалы       │    Сумма     │Расписка в
 п/п│                    │                    │                              │              │получении
────┼────────────────────┼────────────────────┼──────────────────────────────┼──────────────┼──────────── Р
 И.]h
.{?internal;  ((isLastInved)  and  (CurPosition>=  33))or (CurPosition>= 51)
.begin CP:= Curposition+ 1; end.
 Ш────┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴────────────
 Итого по листу &&&                                                     &'&&&&&&&&&&&&&&&.&&
 ^ Р
 И.begin SumList:=0; CurPosition:= 0; end.
.{while (CP<= 53)

.begin inc(cp); end.
.}
.}
 Ш    │                    │                    │                              │              │ Р
 И.begin SumList:=SumList+Summa CurPosition:= CurPosition+ 2 end.
 Ш&&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&.&&│@@@@@@@@@@@@ Р
 И.if secondstrv
.begin inc(CurPosition) end.
 Ш    │                    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │ Р
 И.end
.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, ItogSum)
 KolList
 StrItogSum
 nFio_Ras nFio_Chk
.endfields
 Ш────┴────────────────────┴────────────────────┴──────────────────────────────┴──────────────┴────────────
 Итого по листу &&&                                                     &'&&&&&&&&&&&&&&&.&&
 ^
                                                ИТОГО ПО ВЕДОМОСТИ    &'&&&&&&&&&&&&&&&&&.&&

                                                                                 Количество листов  Д&&& Д
 ^

  Сумма выданная:_______________________________________________________________

  ______________________________________________________________________________

  Сумма не выданная:____________________________________________________________

  ______________________________________________________________________________
                                         ( суммы прописью )

   БКассир-раздатчик Б               Д^ Д

   БПроверил бухгалтер Б             Д^ Ф

 И.begin curposition:= 14; end.
.} //PlVedM CheckEnter
.endform

.Linkform 'pechPlVn_12' Prototype is 'pechPlVn'
.nameinlist 'С фискальным кодом'
.group '114'
.p 60
.var KolList: integer
     SumList: double
     Curposition: integer
     CP         : integer;
     firstheader: boolean;
     .endvar
.begin CurPosition:= 13; end.
.{ PlVedM CheckEnter
.fields
'true' : 's'
 s1 syear s2
 s3 strsum
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 Pred
 Podr
 NomVed NameVed
 Mes God //13
 Level
.endfields
.begin  KolList:=0
        SumList:=0
        end.
 Р.if NewP
^
.end
  Б^ Б &&&& ^
^ ^

  БРуководитель организации (предприятия) Б   Д^ Д

                           БГл. бухгалтер Б   Д^ Д  Д^ Д

    Организация  Д^ Д
     Д^ Д

             БПЛАТЕЖНАЯ ВЕДОМОСТЬ Б № ^ ^
                    за ^ месяц  &&&& г.
              ^ Ш
 И.{ PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 Npp KodPodr TabN substr(Inn, 1, 12) substr(PasspSeria, 1, 10) substr(PasspNum, 1, 11) FIO
 GetStrSummaExt(true, true, Summa) PrizDep Fio2
.endfields
.[h overWrite
.begin KolList:=KolList+1 end.
 Р────┬────────────────────┬────────────────────┬────────────┬──────────────────────┬──────────────────────────────┬──────────────┬────────────
  № │    Подразделение   │   Табельный номер  │ Фискальный │ Паспорт(серия, номер)│      Фамилия, инициалы       │    Сумма     │Расписка в
 п/п│                    │                    │     код    │                      │                              │              │ получении
────┼────────────────────┼────────────────────┼────────────┼──────────────────────┼──────────────────────────────┼──────────────┼──────────── Ш
 И.]h
.{?internal; ((isLastInved)  and (CurPosition>= 33))or (CurPosition>= 51)
.begin CP:= CurPosition+ 1; end.
 Р────┴────────────────────┴────────────────────┴────────────┴──────────────────────┴──────────────────────────────┴──────────────┴────────────
 Итого по листу &&&:                                                                                        &'&&&&&&&&&&&&&&&.&&
 ^ Ш
 И.begin SumList:=0; CurPosition:= 0; end.
.{while (CP<= 53)

.begin inc(CP); end.
.}
.}
 Р    │                    │                    │            │                      │                              │              │ Ш
 И.begin SumList:=SumList+Summa CurPosition:= CurPosition+ 2 end.
 Р&&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│&&&&&&&&&&&&│@@@@@@@@@@ @@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&.&&│@@@@@@@@@@@@ Ш
 И.if secondstrv
.begin inc(CurPosition) end.
 Р    │                    │                    │            │                      │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│              │ Ш
 И.end
.} // PlVedP CheckEnter
.fields
 KolList
 GetStrSummaExt(true, true, SumList)
 DoubleToString(0, SumList)
 GetStrSummaExt(true, true, itogSum)
 KolList
 StrItogSum
 nFio_Ras nFio_Chk
.endfields
 Р────┴────────────────────┴────────────────────┴────────────┴──────────────────────┴──────────────────────────────┴──────────────┴────────────
 Итого по листу &&&                                                                                         &'&&&&&&&&&&&&&&&.&&
 ^
                                                                                   ИТОГО ПО ВЕДОМОСТИ     &'&&&&&&&&&&&&&&&&&.&&

                                                                                                                     Количество листов  Д&&& Д
 ^

  Сумма выданная:_______________________________________________________________

  ______________________________________________________________________________

  Сумма не выданная:____________________________________________________________

  ______________________________________________________________________________
                                         ( суммы прописью )

   БКассир-раздатчик Б                          Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

   БПроверил бухгалтер Б                        Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ь
 И.begin CurPosition:= 14; end.
.} //PlVedM CheckEnter
.endform
!
!
!
.Linkform 'pechPlVn_07_2003' Prototype is 'pechPlVn'
.nameinlist 'Полная форма платежной ведомости(с валютой)-2003'
.group '111'
.DEFO Landscape
.p 60 //убирать нельзя!
.var KolList       : integer
     SumList       : double
     ValSum        : double
     ValSumList    : double
     curPosition   : integer
     CP            : integer;
     firstheader   : boolean;
     wRound        : word;
     sTmpSummavr   : string; // переменная для вывода суммы валюты на руки с анализом настройки округления
.endvar
.begin CurPosition:= 13; end.
.{ PlVedM CheckEnter
.fields
 'true' : 's'
 data s3
 strsummaval
 И nBoss
 GlavBuh_SignDoc
 nMainBuh И
 Pred
 Podr
 NomVed NameVed
 Mes God //13
 level
.endfields
.begin
        KolList:=0
        SumList:=0
        ValSumList:=0
end.
 Р.if NewP
^
.end
  БВ кассу для оплаты Б  Д&&&&&&&&&&& Д г.
^ ^

  БРуководитель организации (предприятия) Б  Д^ Д

                          БГл. бухгалтер Б  Д^ Д  Д^ Д

    Организация  Д^ Д
     Д^ Д

             БПЛАТЕЖНАЯ ВЕДОМОСТЬ № ^ ^ Б
                     за ^ месяц  &&&& г.
              ^ Ш
 И.{ PlVedP CheckEnter
.fields
 KolList
 if (wRound > 0, DoubleToStr(ValSumList,'[|-]366666666.88'), GetStrSummaExt(true, true, double(ValSumList)))
 GetStrSummaExt(true, true, SumList)
 doubleToString(comp(KodVal),ValSumList)
 Npp KodPodr TabN FIO
 MyValCode
 sTmpSummavr
 Curs
 GetStrSummaExt(true, true, Summa) PrizDep Fio2
.endfields
.[h overWrite
.begin KolList:=KolList+1 SumList:= 0; ValSumList:=0; end.
 Р────┬────────────────────┬────────────────────┬──────────────────────────────┬─────────┬──────────────┬──────────────┬──────────────┬────────────
  № │   Подразделение    │  Табельный номер   │      Фамилия, инициалы       │   Код   │  Сумма в ин. │   Курс НБРБ  │   Сумма рубл.│Расписка в
 п/п│                    │                    │                              │  валюты │    валюте    │   ин.валюты  │   экв.ин.вал.│ получении
────┼────────────────────┼────────────────────┼──────────────────────────────┼─────────┼──────────────┼──────────────┼──────────────┼────────────
.]h
.{?internal; ((isLastInved) and (CurPosition>= 33))or(CurPosition >= 51)
.begin CP:= curposition+ 1; end.
────┴────────────────────┴────────────────────┴──────────────────────────────┴─────────┴──────────────┴──────────────┴──────────────┴────────────
 Итого по листу &&&                                                                      &'&&&&&&&&&.&&                &'&&&&&&&&&.&&
 ^ Р
.begin
       SumList:=0
       ValSumList:=0
       Curposition:= 0;
end.
.{while (cp<=53)

.begin inc(cp); end.
.}
.}
 Р    │                    │                    │                              │         │              │              │              │
.begin
   SumList:=SumList+Summa
   ValSumList:=ValSumList+Summavr
   CurPosition:= CurPosition+ 2
   if (not ReadMyDsk(wRound,'PlVed_wRound', false))
     wRound:= 0;
   if wRound > 0
     sTmpSummavr := String (Summavr)
   else
     sTmpSummavr := GetStrSummaExt(true, true, Summavr);
end.
&&&&│@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│     @~@@│&'&&&&&&&&&.&&│&'&&&&&&&&&.&&│&'&&&&&&&&&.&&│@@@@@@@@@@@@
.if secondstrv
.begin
inc(CurPosition)
end.
    │                    │                    │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│         │              │              │              │
.end
.} // PlVedP CheckEnter
.fields
 KolList
 if (wRound > 0, DoubleToStr(ValSumList,'[|-]366666666.88'), GetStrSummaExt(true, true, double(ValSumList)))
 GetStrSummaExt(true, true, SumList)
 doubleToString(comp(KodVal),ValSumList)
 if (wRound > 0, DoubleToStr(Double(Summaval),'[|-]366666666.88'), GetStrSummaExt(true, true, double(Summaval)))
 KolList
  strsummaval
  strsummaval
 nFio_Ras nFio_Chk
.endfields Р
 Р────┴────────────────────┴────────────────────┴──────────────────────────────┴─────────┴──────────────┴──────────────┴──────────────┴────────────
 Итого по листу &&&                                                                     &'&&&&&&&&&.&&                &'&&&&&&&&&.&&
 ^
                                                                                        ИТОГО ПО ВЕДОМОСТИ    &'&&&&&&&&&&&&&&&&&.&&

                                                                                                                      Количество листов  Д&&& Д
 ^

  Сумма выданная   :  Д^ Д

  Сумма не выданная:____________________________________________________________

  ______________________________________________________________________________
                                         ( суммы прописью )

   БКассир-раздатчик Б                          Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д

   БПроверил бухгалтер Б                        Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ь
 И.begin curposition:= 14; end.
.} //PlVedM CheckEnter
.endform
