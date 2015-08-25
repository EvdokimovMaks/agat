.set name 'ukrspr1'
.hide
.DEFO LANDSCAPE
.DEFP PA4
.SET FILLER ='_'
.p 80
.fields
!Тут конец подложки
Ib1 Ib2 Ib3 Ib4 Ib5 Ib6 Ib7 Ib8 Ib9 Ib10 BName Bfone
Datot
IGlb1 IGlb2 IGlb3 IGlb4 IGlb5 IGlb6 IGlb7 IGlb8 IGlb9 IGlb10 MBName MBfone

CU1 CU2 CU3 CU4 CU5 CU6 CU7 CU8 CU9 CU10
NameWhoIs
INN1 INN2 INN3 INN4 INN5 INN6 INN7 INN8 NameNalog
OtchetMonth1
Shtat
Prochie Porc1 Porc2
npp AdIN1 AdIN2 AdIN3 AdIN4 AdIN5 AdIN6 AdIN7 AdIN8 AdIN9 AdIN10 Sum1:double Sum1Paid:double PNal:double PNalR:double VidSum Dp Du Колонка8
KolStrok
FizCount
! данные для подножия
!AlSum AlNalSum
!KolStrok FizCount
.endfields
^^^^^^^^^^^^
^
!^^
!^^
^^^^^^^^^^^^
.{ PorcCircle CheckEnter
^^^^^^^^^
^
^^^^^^^^^^
^
^
^^^
.{ MainInform1 CheckEnter
.[H
.]H
^^^^^^^^^^^^^^^^^^
^
.}
^^
.if NPorcPage
.end
.}
.endform

.linkform 'ukrspr1_lnk' prototype is 'ukrspr1'
.nameinlist 'Налоговая карточка'
.DEFO LANDSCAPE
.DEFP PA4
.SET FILLER ='_'
.p 80
.var
  PageNum: Word;
  OutStringCounter    : word;
  _FirstPageHeader : word;
  _StringPerPageConst, AllPagesCounter : word;
  _HeaderConst,_FuterConst : word;
  _SummDoh                 : double;
  _SummNal                 : double;
  _SummDohPaid             : double;
  _SummNalPaid             : double;
.endvar
.begin
   _SummDoh := 0; 
   _SummNal := 0;
   _SummDohPaid := 0;
   _SummNalPaid := 0;
   AllPagesCounter    := 0;
  _FirstPageHeader    := 44;
   OutStringCounter   := 0;
  _StringPerPageConst := 80;
  _HeaderConst        := 10;
  _FuterConst         := 19;
end.
.fields
!KolStrok
!и тут конец подложки
CU1 CU2 CU3 CU4 CU5 CU6 CU7 CU8 CU9 CU10
NameWhoIs
INN1 INN2 INN3 INN4 INN5 INN6 INN7 INN8 NameNalog
OtchetMonth1
Shtat
Prochie Porc1 Porc2
.endfields

.{ PorcCircle CheckEnter
.begin
   PageNum := 0;
   OutStringCounter := _FirstPageHeader + _HeaderConst + _FuterConst;
end.
                                                         ЗАТВЕРДЖЕНО
                                                         наказом Державної податкової
                                                         адмiнiстрацiї України
                                                         вiд 30 грудня 1997 р. N 473
                                                         (в редакцiї наказу ДПА України
                                                         вiд 06.01.99 р. N 10)
                                                         Зареєстровано
                                                         в  Мїнїстерствї юстицїї України
                                                         19 сiчня 1998 р. за N 26/2466

                                     БФОРМА N° 8ДР Б
  БВiдмiтка про одержання: Б
 (вхiдний N, дата, штамп ДПI)
 ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
 │@│@│@│@│@│@│@│@│@│@│
 └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘
(iдентифiкацiйний код ЄДРПОУ або реєстрацiйний
(облiковий) номер платника податкiв)
 ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
 │ │ │ │ │ │ │ │ │ │ │
 └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘
(iдентифiкацiйний номер фiзичної особи - суб'єкта
 пiдприємницької дiяльностi)
                                               БВiдомостi Б
                           Бпро нарахованi та виплаченi фiзичним особам суми Б
                               Бдоходiв i суми утриманих з них податкiв Б
     ^
     ───────────────────────────────────────────────────────────────────────────
           (назва юридичної особи чи прiзвище, iм'я, по батьковi фiзичної
                       особи - суб'єкта пiдприємницької дiяльностi)

 ┌─┬─┬─┬─┬─┬─┬─┬─┐
 │@│@│@│@│@│@│@│@│             ^
 └─┴─┴─┴─┴─┴─┴─┴─┘            ────────────────────────────────────────────────────
(iдентифiкацiйний код органу     (назва органу державної податкової служби)
 державної податкової
  служби за ЄДРПОУ)
                                  Бза Б  ^
                              ────────────────────────────────────────────────────
                                            (звiтний перiод)
 Працювало у штатi          Д@~@@@@ Д                  ┌──┬──┐
 Працювало за сумiсництвом  Д@~@@@@ Д         БПОРЦIЯ N° Б │@ │@ │ (заповнюється в органi
                                                   └──┴──┘ державної податкової служби)
.{ MainInform1 CheckEnter
.[H
 И┌─────┬───────────────────┬───────────────┬───────────────┬──────────────────────────────┬──────┬─────────────────────┬───────────┐ И
 Й│N п/п│  Iдентифiкацiйний │      Сума     │      Сума     │     Сума  утриманого         │Ознака│        Дата         │ Ознака    │ Й
 Й│     │      номер        │ нарахованого  │  виплаченого  │   прибуткового податку       │доходу├──────────┬──────────┤ пiльги    │ Й
 Й│     │                   │    доходу     │    доходу     │           (грн.,коп.)        │      │прийняття │звiльнення│ прибут.   │ Й
 Й│     │                   │  (грн.,коп.)  │  (грн.,коп.)  ├───────────────┬──────────────┤      │на роботу │ з роботи │ податку   │ Й
 Й│     │                   │               │               │ нарахованого  │перерахованого│      │          │          │           │ Й
 Й│     │                   │               │               │  (грн.,коп.)  │(грн.,коп.)   │      │          │          │           │ Й
 И├─────┼───────────────────┼───────────────┼───────────────┼───────────────┼──────────────┼──────┼──────────┼──────────┼───────────┤ И
 Й│  1  │         2         │       3a      │       3       │       4a      │     4        │  5   │    6     │     7    │    8      │ Й
 И├─────┼─┬─┬─┬─┬─┬─┬─┬─┬─┬─┼───────────────┼───────────────┼───────────────┼──────────────┼──────┼──────────┼──────────┼───────────┤ И
.]H
.{?internal;OutStringCounter > 80
.begin
  OutStringCounter := _HeaderConst + _FuterConst;
  AllPagesCounter := AllPagesCounter   + 1;
  PageNum := PageNum + 1;
end.
.fields
PageNum
Ib1 Ib2 Ib3 Ib4 Ib5 Ib6 Ib7 Ib8 Ib9 Ib10 BName Bfone
Datot
IGlb1 IGlb2 IGlb3 IGlb4 IGlb5 IGlb6 IGlb7 IGlb8 IGlb9 IGlb10 MBName MBfone
.endfields
 И├─────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼───────────────┼───────────────┼───────────────┼──────────────┼──────┼──────────┼──────────┼───────────┤ И
 И│ х   │ │ │ │ │х│ │ │ │ │ │       -       │       -       │       -       │      -       │   х  │     х    │    х     │      х    │ И
 И└─────┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴───────────────┴───────────────┴───────────────┴──────────────┴──────┴──────────┴──────────┴───────────┘ И
!.[F OVERWRITE
                                                          Номер    
                                                          аркушу   @@@@@

 Керiвник     ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐                                                   ┌────────────┐
 пiдприємства │@│@│@│@│@│@│@│@│@│@│ _________  Д@~@@@@@@@@@@@@@@@@@ Д  Д@~@@@@@@@@@@@@@@@@@ Д │ БДата подання Б│
              └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘  (пiдпис)     (прiзвище)            (тел.)        │@@@@@@@@@@@@│
             (iдентифiкацiйний номер                                                  └────────────┘
              керiвника пiдприємства)
 Головний     ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
 бухгалтер    │@│@│@│@│@│@│@│@│@│@│ _________  Д@~@@@@@@@@@@@@@@@@@ Д  Д@~@@@@@@@@@@@@@@@@@ Д
              └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘  (пiдпис)     (прiзвище)            (тел.)
 БМ.П. Б         (iдентифiкацiйний номер                                    Б          Наведена iнформацiя Б
              головного бухгалтера)                                                     Бє вiрною Б
  Фiзична особа - суб'єкт           _________                     ___________________
  пiдприємницької дiяльностi         (пiдпис)                           (тел.)
.}
.fields
npp AdIN1 AdIN2 AdIN3 AdIN4 AdIN5 AdIN6 AdIN7 AdIN8 AdIN9 AdIN10
if (Double(Sum1) <> -999999999.99,Sum1,0)
if (Double(Sum1Paid) <> -999999999.99,Sum1Paid,0)
if (Double(PNal) <> -999999999.99,PNal,0)
if (Double(PNalR) <> -999999999.99,PNalR,0)
VidSum Dp Du Колонка8
.endfields
.begin
  OutStringCounter := OutStringCounter + 1;
  if (Double(Sum1) <> -999999999.99)
     _SummDoh := _SummDoh + Double(Sum1) ;
  if (Double(Sum1Paid) <> -999999999.99)
     _SummDohPaid := _SummDohPaid + Double(Sum1Paid) ;
  if (Double(PNal) <> -999999999.99)
     _SummNal := _SummNal +  Double(PNal);
  if (Double(PNalR) <> -999999999.99)
     _SummNalPaid := _SummNalPaid + Double(PNalR);
end.
 И│&&&&&│@│@│@│@│@│@│@│@│@│@│&&&&&&&&&&&.&& │&&&&&&&&&&&.&& │&&&&&&&&&&&.&& │&&&&&&&&&&.&& │ @@@@ │@@@@@@@@@@│@@@@@@@@@@│@@@@@@@@@@@│ И
.}
.{?internal; (OutStringCounter > _HeaderConst + _FuterConst)
.fields
  _SummDoh
  _SummDohPaid
  _SummNal
  _SummNalPaid
  KolStrok FizCount PageNum
  Ib1 Ib2 Ib3 Ib4 Ib5 Ib6 Ib7 Ib8 Ib9 Ib10 BName Bfone
  Datot
  IGlb1 IGlb2 IGlb3 IGlb4 IGlb5 IGlb6 IGlb7 IGlb8 IGlb9 IGlb10 MBName MBfone
.endfields
 И├─────┼─┼─┼─┼─┼─┼─┼─┼─┼─┼─┼───────────────┼───────────────┼───────────────┼──────────────┼──────┼──────────┼──────────┼───────────┤ И
 И│ х   │ │ │ │ │х│ │ │ │ │ │&&&&&&&&&&&.&& │&&&&&&&&&&&.&& │&&&&&&&&&&&.&& │&&&&&&&&&&.&& │   х  │     х    │    х     │      х    │ И
 И└─────┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴───────────────┴───────────────┴───────────────┴──────────────┴──────┴──────────┴──────────┴───────────┘ И
.begin
  PageNum := PageNum + 1;
end.
!.[F OVERWRITE
     Кiлькiсть                     Кiлькiсть              Кiлькiсть
     рядкiв      @@@@              фiзичних осiб  @@@@    аркушiв    @@@@@

 Керiвник     ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐                                                   ┌────────────┐
 пiдприємства │@│@│@│@│@│@│@│@│@│@│ _________  Д@~@@@@@@@@@@@@@@@@@ Д  Д@~@@@@@@@@@@@@@@@@@ Д │ БДата подання Б│
              └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘  (пiдпис)     (прiзвище)            (тел.)        │@@@@@@@@@@@@│
             (iдентифiкацiйний номер                                                  └────────────┘
              керiвника пiдприємства)
 Головний     ┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
 бухгалтер    │@│@│@│@│@│@│@│@│@│@│ _________  Д@~@@@@@@@@@@@@@@@@@ Д  Д@~@@@@@@@@@@@@@@@@@ Д
              └─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘  (пiдпис)     (прiзвище)            (тел.)
 БМ.П. Б         (iдентифiкацiйний номер                                             Б Наведена iнформацiя Б
              головного бухгалтера)                          Б                           є вiрною Б
  Фiзична особа - суб'єкт           _________                     ___________________
  пiдприємницької дiяльностi         (пiдпис)                           (тел.)
.}
.if NPorcPage
.fields
'true':'s'
.endfields
^
.end
.}
.endform