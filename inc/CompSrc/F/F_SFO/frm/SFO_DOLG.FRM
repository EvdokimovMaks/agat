//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Спецодежда
// Справка о задолженности и Аттестат на вещевое довольствие
//------------------------------------------------------------------------------

#doc
Формирование справки о задолженности и Аттестата на вещевое довольствие.<br>
#end
.Set Name = 'SFO_DolgProt'
.Hide
.Fields
  OrgName : String  BossShort : String MainBuhShort : String
  docNrec : Comp  SprNo : String  sprDate : Date
  FIO : String  TabN : String  zvanie : String
  attDate : Date  uvDate : Date  Podr : String
  frmFlag : Boolean  spcFlag : Boolean cSigners : Comp
.endFields
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ frmDlgCir checkenter
.Fields
  frNrec : Comp  frName : String  frKod : String  frEd : String  frGiveDate : Date
  frKol : Double  frSrok : String  frOrigPrice : Double  frPrice : Double
  frEndDate : Date  frOstSr : Double    //11
  frDolgSum : Double  frNDSSum : Double  frProdNalSum : Double
.endFields
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

.{ spcDlgCir checkenter
.Fields
  spNrec : Comp  spName : String  spKod : String  spEd : String  spGiveDate : Date
  spKol : Double  spSrok : String  spOrigPrice : Double  spPrice : Double
  spEndDate : Date  spOstSr : Double
  spDolgSum : Double  spNDSSum : Double  spProdNalSum : Double
.endFields
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.endForm

!------------------------------------------------------------

.LinkFORM SFO_Dolg_01 Prototype Is SFO_DolgProt
.Group 'Расчет задолженности'
.NameInList 'Справка о задолженности по СФО'
.var
  frmSum, spcSum, Sum_frm_Spec : Double
  wRound: Word
.endVar
.Fields
  CommonFormHeader
  OrgName
  DateToStr(sprDate, 'DD')
  DateToStr(sprDate, 'Mon')
  DateToStr(sprDate, 'YYYY')
  FIO  TabN  Podr  DateToStr(uvDate, 'DD/MM/YYYY')
.endFields
.begin
  frmSum := 0;  spcSum := 0;
  wRound := wGetTune('Fin.ReportRound');
end.
 ^
 ^

                                 СПРАВКА
                        о задолженности работника
                    по специальной (форменной) одежде
                             "^" ^ ^ г.

Фамилия Имя Отчество:  ^
Таб. номер: ^
Подразделение: ^
Дата увольнения: ^
.{?Internal;(frmFlag=True);

1. Форменная одежда и обувь
 Р┌─────────────────────┬───────────┬─────────┬──────────┬──────┬───────────────┬──────────┬────────────────┬─────────────────┐
│                     │           │         │          │      │    Цена на    │   Срок   │      Сумма     │      Сумма      │
│     Наименование    │Номенкл. № │ Ед.изм. │Дата выдач│Кол-во│     момент    │ окончания│   к удержанию  │   к удержанию   │
│                     │           │         │          │      │    расчета    │   носки  │    за месяц    │                 │
├─────────────────────┼───────────┼─────────┼──────────┼──────┼───────────────┼──────────┼────────────────┼─────────────────┤
.{ frmDlgCir checkenter
.Fields
  frName  frKod  frEd  DateToStr(frGiveDate, 'DD/MM/YYYY')
  frKol  frPrice  if (Longint(frEndDate) > 0, DateToStr(frEndDate, 'DD/MM/YYYY'), '')
  if (Word(frSrok) > 0, frPrice / Word(frSrok), 0)  frDolgSum
.endFields
.begin
  frmSum := frmSum + frDolgSum;
end.
│@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&.&&│@@@@@@@@@@│&'#&&&&&&&&&&.&&│&'#&&&&&&&&&&&.&&│
.}
└─────────────────────┴───────────┴─────────┴──────────┴──────┴───────────────┴──────────┴────────────────┴─────────────────┘ Р
.Fields
  frmSum
.endFields
 С                                                                                                    Итого: &'#&&&&&&&&&&&.&& С
.}
.{?Internal;(spcFlag=True);

2. Специальная одежда и обувь
 Р┌─────────────────────┬───────────┬─────────┬──────────┬──────┬───────────────┬──────────┬────────────────┬─────────────────┐
│                     │           │         │          │      │    Цена на    │   Срок   │      Сумма     │      Сумма      │
│     Наименование    │Номенкл. № │ Ед.изм. │Дата выдач│Кол-во│     момент    │ окончания│   к удержанию  │   к удержанию   │
│                     │           │         │          │      │    расчета    │   носки  │    за месяц    │                 │
├─────────────────────┼───────────┼─────────┼──────────┼──────┼───────────────┼──────────┼────────────────┼─────────────────┤
.{ spcDlgCir checkenter
.Fields
  spName  spKod  spEd  DateToStr(spGiveDate, 'DD/MM/YYYY')
  spKol  spPrice  if (Longint(spEndDate) > 0, DateToStr(spEndDate, 'DD/MM/YYYY'), '')
  if (Word(spSrok) > 0, spPrice / Word(spSrok), 0)  spDolgSum
.endFields
.begin
  spcSum := spcSum + spDolgSum;
end.
│@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&.&&│@@@@@@@@@@│&'#&&&&&&&&&&.&&│&'#&&&&&&&&&&&.&&│
.}
└─────────────────────┴───────────┴─────────┴──────────┴──────┴───────────────┴──────────┴────────────────┴─────────────────┘ Р
.Fields
  spcSum
.endFields
 С                                                                                                    Итого: &'#&&&&&&&&&&&.&& С
.}
#include round.frn
.begin
  Sum_frm_Spec := if (wRound <> 0, my_Round(frmSum + spcSum, doGetTune('Fin.RoundRubDouble'), wRound - 1), frmSum + spcSum)
end.
.Fields
  Sum_frm_Spec
  DoubleToStr(Sum_frm_Spec, '\2p\m4') +
   if (Pos('ноль', DoubleToStr(Sum_frm_Spec, '\2p5')) <> 0, '',
      DoubleToStr(Sum_frm_Spec, 'целых \2p5'))
.endFields
 СИтого к удержанию : &'#&&&&&&&&&&&.&& ( ^) С

Главный бухгалтер ______________________

.endForm

!------------------------------------------------------------

.LinkFORM SFO_Dolg_02 Prototype Is SFO_DolgProt
.Group 'Расчет задолженности'
.NameInList 'Справка о задолженности по СФО (с налогами)'
.var
  frmSum, spcSum, OrigSum, NDSSum, ProdNalSum, Sum_frm_Spec, All_Sum, All_NDSSum, All_ProdNalSum : Double
  wRound: word;
.endVar
.Fields
  CommonFormHeader
  OrgName
  SprNo
  DateToStr(sprDate, 'DD')
  DateToStr(sprDate, 'Mon')
  DateToStr(sprDate, 'YYYY')
  FIO  TabN  Podr  DateToStr(uvDate, 'DD/MM/YYYY')
.endFields
.begin
  frmSum := 0;  spcSum := 0;  OrigSum := 0;
  NDSSum := 0;  ProdNalSum := 0;
  wRound := wGetTune('Fin.ReportRound');
end.
 ^
 ^

                        СПРАВКА №  Е^ Е
                     о задолженности работника
                 по специальной (форменной) одежде
                       " Б^ Б"  Б^ Б  Б^ Б г.

Фамилия Имя Отчество:  Б^ Б
Таб. номер:  Б^ Б
Подразделение:  Б^ Б
Дата увольнения:  Б^ Б
.{?Internal;(frmFlag=True);

1. Форменная одежда и обувь
 Ш┌─────────────────────┬───────────┬─────────┬──────────┬──────┬────────────────┬───────────────┬─────────┬─────┬──────────┬────────────────┬─────────────────┐
│                     │           │         │          │      │ Первоначальная │    Цена на    │  Срок   │Остат│   Срок   │      Сумма     │      Сумма      │
│     Наименование    │Номенкл. № │ Ед.изм. │Дата выдач│Кол-во│    стоимость   │     момент    │ службы  │срока│ окончания│   к удержанию  │   к удержанию   │
│                     │           │         │          │      │                │    расчета    │  (мес)  │(мес)│   носки  │    за месяц    │                 │
├─────────────────────┼───────────┼─────────┼──────────┼──────┼────────────────┼───────────────┼─────────┼─────┼──────────┼────────────────┼─────────────────┤
.{ frmDlgCir checkenter
.Fields
  frName  frKod  frEd  DateToStr(frGiveDate, 'DD/MM/YYYY')
  frKol  frKol*frOrigPrice  frPrice  frSrok  frOstSr
  if (Longint(frEndDate) > 0, DateToStr(frEndDate, 'DD/MM/YYYY'), '')
  if (Word(frSrok) > 0, frPrice / Word(frSrok), 0)  frDolgSum
.endFields
.begin
  frmSum := frmSum + frDolgSum;
  OrigSum:= OrigSum + frKol*frOrigPrice;
  NDSSum := NDSSum + frNDSSum;
  ProdNalSum := ProdNalSum + frProdNalSum;
end.
│@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&&.&&│&'#&&&&&&&&&.&&│&#&&&&&&&│&#&.&│@@@@@@@@@@│&'#&&&&&&&&&&.&&│&'#&&&&&&&&&&&.&&│
.}
└─────────────────────┴───────────┴─────────┴──────────┴──────┴────────────────┴───────────────┴─────────┴─────┴──────────┴────────────────┴─────────────────┘ Ш
.Fields
  OrigSum  frmSum
.endFields
 Щ  Итого:                                                      &'#&&&&&&&&&&&.&&                                                             &'#&&&&&&&&&&&.&& Щ
.}
.{?Internal;(spcFlag=True);
.begin
  OrigSum := 0;
end.

2. Специальная одежда и обувь
 Ш┌─────────────────────┬───────────┬─────────┬──────────┬──────┬────────────────┬───────────────┬─────────┬─────┬──────────┬────────────────┬─────────────────┐
│                     │           │         │          │      │ Первоначальная │    Цена на    │  Срок   │Остат│   Срок   │      Сумма     │      Сумма      │
│     Наименование    │Номенкл. № │ Ед.изм. │Дата выдач│Кол-во│    стоимость   │     момент    │ службы  │срока│ окончания│   к удержанию  │   к удержанию   │
│                     │           │         │          │      │                │    расчета    │  (мес)  │(мес)│   носки  │    за месяц    │                 │
├─────────────────────┼───────────┼─────────┼──────────┼──────┼────────────────┼───────────────┼─────────┼─────┼──────────┼────────────────┼─────────────────┤
.{ spcDlgCir checkenter
.Fields
  spName  spKod  spEd  DateToStr(spGiveDate, 'DD/MM/YYYY')
  spKol  spKol*spOrigPrice  spPrice  spSrok  spOstSr
  if (Longint(spEndDate) > 0, DateToStr(spEndDate, 'DD/MM/YYYY'), '')
  if (Word(spSrok) > 0, spPrice / Word(spSrok), 0)  spDolgSum
.endFields
.begin
  spcSum := spcSum + spDolgSum;
  OrigSum:= OrigSum + spKol*spOrigPrice;
  NDSSum := NDSSum + spNDSSum;
  ProdNalSum := ProdNalSum + spProdNalSum;
end.
│@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&&.&&│&'#&&&&&&&&&.&&│&#&&&&&&&│&#&.&│@@@@@@@@@@│&'#&&&&&&&&&&.&&│&'#&&&&&&&&&&&.&&│
.}
└─────────────────────┴───────────┴─────────┴──────────┴──────┴────────────────┴───────────────┴─────────┴─────┴──────────┴────────────────┴─────────────────┘ Ш
.Fields
  OrigSum  spcSum
.endFields
 Щ  Итого:                                                      &'#&&&&&&&&&&&.&&                                                             &'#&&&&&&&&&&&.&& Щ
.}
#include round.frn
.begin
  Sum_frm_Spec := if (wRound <> 0, my_Round(frmSum + spcSum, doGetTune('Fin.RoundRubDouble'), wRound - 1), frmSum + spcSum);
  NDSSum       := if (wRound <> 0, my_Round(NDSSum,          doGetTune('Fin.RoundRubDouble'), wRound - 1), NDSSum);
  ProdNalSum   := if (wRound <> 0, my_Round(ProdNalSum,      doGetTune('Fin.RoundRubDouble'), wRound - 1), ProdNalSum);
  All_Sum      := if (wRound <> 0, my_Round(Sum_frm_Spec + NDSSum + ProdNalSum, doGetTune('Fin.RoundRubDouble'), wRound - 1), Sum_frm_Spec + NDSSum + ProdNalSum);
end.
.function GetKop(pSum : double) : String;
begin
  getKop := DoubleToStr(pSum, '\2p88');
end.
.Fields
  Sum_frm_Spec DoubleToStr(Sum_frm_Spec, '\2p\m4') GetKop(Sum_frm_Spec)
  NDSSum       DoubleToStr(NDSSum, '\2p\m4')       GetKop(NDSSum)
  ProdNalSum   DoubleToStr(ProdNalSum, '\2p\m4')   GetKop(ProdNalSum)
  All_Sum      DoubleToStr(All_Sum, '\2p\m4')      GetKop(All_Sum)
  MainBuhShort
.endFields
 Щ  Итого:                 &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.)
  Сумма НДС:             &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.)
  Сумма налога с продаж: &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.)
  Итого к удержанию:     &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.) Щ

 Главный бухгалтер  Д@~@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
 Бухгалтер _____________________________________

 С расчетом согласен ___________________________

.endForm

!========================================================================
.LinkFORM SFO_Dolg_01a Prototype Is SFO_DolgProt    // при настройке по начисленному проценту износа
!========================================================================
.Group 'Расчет задолженности по начисленному проценту износа'
.NameInList 'Справка о задолженности по СФО'
.var
  frmSum, spcSum, Sum_frm_Spec : Double
  wRound: Word
.endVar
.Fields
  CommonFormHeader
  OrgName
  DateToStr(sprDate, 'DD')
  DateToStr(sprDate, 'Mon')
  DateToStr(sprDate, 'YYYY')
  FIO  TabN  Podr  DateToStr(uvDate, 'DD/MM/YYYY')
.endFields
.begin
  frmSum := 0;  spcSum := 0;
  wRound := wGetTune('Fin.ReportRound');
end.
 ^
 ^

                                 СПРАВКА
                        о задолженности работника
                    по специальной (форменной) одежде
                             "^" ^ ^ г.

Фамилия Имя Отчество:  ^
Таб. номер: ^
Подразделение: ^
Дата увольнения: ^
.{?Internal;(frmFlag=True);

1. Форменная одежда и обувь
 Р┌─────────────────────────┬────────────┬─────────┬──────────┬──────┬─────────────────┬──────────┬───────┬───────────────────┐
│                         │            │         │          │      │     Цена на     │   Срок   │ Остат │       Сумма       │
│       Наименование      │ Номенкл. № │ Ед.изм. │Дата выдач│Кол-во│      момент     │ окончания│   %   │    к удержанию    │
│                         │            │         │          │      │     расчета     │   носки  │       │                   │
├─────────────────────────┼────────────┼─────────┼──────────┼──────┼─────────────────┼──────────┼───────┼───────────────────┤
.{ frmDlgCir checkenter
.Fields
  frName  frKod  frEd  DateToStr(frGiveDate, 'DD/MM/YYYY')
  frKol  frPrice  if (Longint(frEndDate) > 0, DateToStr(frEndDate, 'DD/MM/YYYY'), '')
  //if (Word(frSrok) > 0, frPrice / Word(frSrok), 0)
  frOstSr
  frDolgSum
.endFields
.begin
  frmSum := frmSum + frDolgSum;
end.
│@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&&&.&&│@@@@@@@@@@│&#&&.&&│&'#&&&&&&&&&&&&&.&&│
.}
└─────────────────────────┴────────────┴─────────┴──────────┴──────┴─────────────────┴──────────┴───────┴───────────────────┘ Р
.Fields
  frmSum
.endFields
 С                                                                                                    Итого: &'#&&&&&&&&&&&.&& С
.}
.{?Internal;(spcFlag=True);

2. Специальная одежда и обувь
 Р┌─────────────────────────┬────────────┬─────────┬──────────┬──────┬─────────────────┬──────────┬───────┬───────────────────┐
│                         │            │         │          │      │     Цена на     │   Срок   │ Остат │       Сумма       │
│       Наименование      │ Номенкл. № │ Ед.изм. │Дата выдач│Кол-во│      момент     │ окончания│   %   │    к удержанию    │
│                         │            │         │          │      │     расчета     │   носки  │       │                   │
├─────────────────────────┼────────────┼─────────┼──────────┼──────┼─────────────────┼──────────┼───────┼───────────────────┤
.{ spcDlgCir checkenter
.Fields
  spName  spKod  spEd  DateToStr(spGiveDate, 'DD/MM/YYYY')
  spKol  spPrice  if (Longint(spEndDate) > 0, DateToStr(spEndDate, 'DD/MM/YYYY'), '')
  //if (Word(spSrok) > 0, spPrice / Word(spSrok), 0)
  spOstSr
  spDolgSum
.endFields
.begin
  spcSum := spcSum + spDolgSum;
end.
│@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&&&.&&│@@@@@@@@@@│&#&&.&&│&'#&&&&&&&&&&&&&.&&│
.}
└─────────────────────────┴────────────┴─────────┴──────────┴──────┴─────────────────┴──────────┴───────┴───────────────────┘ Р
.Fields
  spcSum
.endFields
 С                                                                                                    Итого: &'#&&&&&&&&&&&.&& С
.}
#include round.frn
.begin
  Sum_frm_Spec := if (wRound <> 0, my_Round(frmSum + spcSum, doGetTune('Fin.RoundRubDouble'), wRound - 1), frmSum + spcSum);
end.
.Fields
  Sum_frm_Spec
  DoubleToStr(Sum_frm_Spec, '\2p\m4') +
   if (Pos('ноль', DoubleToStr(Sum_frm_Spec, '\2p5')) <> 0, '',
      DoubleToStr(Sum_frm_Spec, 'целых \2p5'))
.endFields
 СИтого к удержанию : &'#&&&&&&&&&&&.&& ( ^) С

Главный бухгалтер ______________________

.endForm

!========================================================================
.LinkFORM SFO_Dolg_02а Prototype Is SFO_DolgProt  // при настройке по начисленному проценту износа
!========================================================================
.Group 'Расчет задолженности по начисленному проценту износа'
.NameInList 'Справка о задолженности по СФО (с налогами)'
.var
  frmSum, spcSum, OrigSum, NDSSum, ProdNalSum, Sum_frm_Spec, All_Sum, All_NDSSum, All_ProdNalSum : Double
  wRound: word;
.endVar
.Fields
  CommonFormHeader
  OrgName
  SprNo
  DateToStr(sprDate, 'DD')
  DateToStr(sprDate, 'Mon')
  DateToStr(sprDate, 'YYYY')
  FIO  TabN  Podr  DateToStr(uvDate, 'DD/MM/YYYY')
.endFields
.begin
  frmSum := 0;  spcSum := 0;  OrigSum := 0;
  NDSSum := 0;  ProdNalSum := 0;
  wRound := wGetTune('Fin.ReportRound');
end.
 ^
 ^

                        СПРАВКА №  Е^ Е
                     о задолженности работника
                 по специальной (форменной) одежде
                       " Б^ Б"  Б^ Б  Б^ Б г.

Фамилия Имя Отчество:  Б^ Б
Таб. номер:  Б^ Б
Подразделение:  Б^ Б
Дата увольнения:  Б^ Б
.{?Internal;(frmFlag=True);

1. Форменная одежда и обувь
 Ш┌────────────────────────┬──────────┬─────────┬──────────┬──────┬────────────────────┬───────────────────┬─────────┬──────┬──────────┬─────────────────────┐
│                        │          │         │          │      │   Первоначальная   │      Цена на      │  Срок   │ Остат│   Срок   │        Сумма        │
│       Наименование     │Номенкл. №│ Ед.изм. │Дата выдач│Кол-во│      стоимость     │       момент      │ службы  │   %  │ окончания│     к удержанию     │
│                        │          │         │          │      │                    │      расчета      │  (мес)  │      │   носки  │                     │
├────────────────────────┼──────────┼─────────┼──────────┼──────┼────────────────────┼───────────────────┼─────────┼──────┼──────────┼─────────────────────┤
.{ frmDlgCir checkenter
.Fields
  frName
  frKod
  frEd
  DateToStr(frGiveDate, 'DD/MM/YYYY')
  frKol
  frKol*frOrigPrice
  frPrice
  frSrok
  frOstSr
  if (Longint(frEndDate) > 0, DateToStr(frEndDate, 'DD/MM/YYYY'), '')
//  if (Word(frSrok) > 0, frPrice / Word(frSrok), 0)
  frDolgSum
.endFields
.begin
  frmSum := frmSum + frDolgSum;
  OrigSum:= OrigSum + frKol*frOrigPrice;
  NDSSum := NDSSum + frNDSSum;
  ProdNalSum := ProdNalSum + frProdNalSum;
end.
│@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&&&&&&.&&│&'#&&&&&&&&&&&&&.&&│&#&&&&&&&│&#&.&&│@@@@@@@@@@│&'#&&&&&&&&&&&&&&&.&&│
.}
└────────────────────────┴──────────┴─────────┴──────────┴──────┴────────────────────┴───────────────────┴─────────┴──────┴──────────┴─────────────────────┘ Ш
.Fields
  OrigSum  frmSum
.endFields
 Щ  Итого:                                                            &'#&&&&&&&&&&&.&&                                                     &'#&&&&&&&&&&&.&& Щ
.}
.{?Internal;(spcFlag=True);
.begin
  OrigSum := 0;
end.

2. Специальная одежда и обувь
 Ш┌────────────────────────┬──────────┬─────────┬──────────┬──────┬────────────────────┬───────────────────┬─────────┬──────┬──────────┬─────────────────────┐
│                        │          │         │          │      │   Первоначальная   │      Цена на      │  Срок   │ Остат│   Срок   │        Сумма        │
│       Наименование     │Номенкл. №│ Ед.изм. │Дата выдач│Кол-во│      стоимость     │       момент      │ службы  │   %  │ окончания│     к удержанию     │
│                        │          │         │          │      │                    │      расчета      │  (мес)  │      │   носки  │                     │
├────────────────────────┼──────────┼─────────┼──────────┼──────┼────────────────────┼───────────────────┼─────────┼──────┼──────────┼─────────────────────┤
.{ spcDlgCir checkenter
.Fields
  spName  spKod  spEd  DateToStr(spGiveDate, 'DD/MM/YYYY')
  spKol  spKol*spOrigPrice  spPrice  spSrok
  spOstSr
  if (Longint(spEndDate) > 0, DateToStr(spEndDate, 'DD/MM/YYYY'), '')
  //if (Word(spSrok) > 0, spPrice / Word(spSrok), 0)
  spDolgSum
.endFields
.begin
  spcSum := spcSum + spDolgSum;
  OrigSum:= OrigSum + spKol*spOrigPrice;
  NDSSum := NDSSum + spNDSSum;
  ProdNalSum := ProdNalSum + spProdNalSum;
end.
│@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@│@@@@@@@@@│@@@@@@@@@@│&#&&&&│&'#&&&&&&&&&&&&&&.&&│&'#&&&&&&&&&&&&&.&&│&#&&&&&&&│&#&.&&│@@@@@@@@@@│&'#&&&&&&&&&&&&&&&.&&│
.}
└────────────────────────┴──────────┴─────────┴──────────┴──────┴────────────────────┴───────────────────┴─────────┴──────┴──────────┴─────────────────────┘ Ш
.Fields
  OrigSum  spcSum
.endFields
 Щ  Итого:                                                            &'#&&&&&&&&&&&.&&                                                     &'#&&&&&&&&&&&.&& Щ
.}
#include round.frn
.begin
  Sum_frm_Spec := if (wRound <> 0, my_Round(frmSum + spcSum, doGetTune('Fin.RoundRubDouble'), wRound - 1), frmSum + spcSum);
  NDSSum       := if (wRound <> 0, my_Round(NDSSum,          doGetTune('Fin.RoundRubDouble'), wRound - 1), NDSSum);
  ProdNalSum   := if (wRound <> 0, my_Round(ProdNalSum,      doGetTune('Fin.RoundRubDouble'), wRound - 1), ProdNalSum);
  All_Sum      := if (wRound <> 0, my_Round(Sum_frm_Spec + NDSSum + ProdNalSum, doGetTune('Fin.RoundRubDouble'), wRound - 1), Sum_frm_Spec + NDSSum + ProdNalSum);
end.
.function GetKop(pSum : double) : String;
begin
  getKop := DoubleToStr(pSum, '\2p88');
end.
.Fields
  Sum_frm_Spec DoubleToStr(Sum_frm_Spec, '\2p\m4') GetKop(Sum_frm_Spec)
  NDSSum       DoubleToStr(NDSSum, '\2p\m4')       GetKop(NDSSum)
  ProdNalSum   DoubleToStr(ProdNalSum, '\2p\m4')   GetKop(ProdNalSum)
  All_Sum      DoubleToStr(All_Sum, '\2p\m4')      GetKop(All_Sum)
  MainBuhShort
.endFields
 Щ  Итого:                 &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.)
  Сумма НДС:             &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.)
  Сумма налога с продаж: &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.)
  Итого к удержанию:     &'#&&&&&&&&&&&.&& ( ^руб. ^ коп.) Щ

 Главный бухгалтер  Д@~@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
 Бухгалтер _____________________________________

 С расчетом согласен ___________________________

.endForm

!========================================================================
.LinkFORM SFO_Attest Prototype Is SFO_DolgProt
.Group 'Аттестат на довольствие'
.NameInList 'Аттестат на вещевое довольствие'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  sDirect,
  sBuh : string;
.endVar
.begin
  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);
  sDirect := sBuh := '';

  if (iFeeSigners.FeeSignersIsValid)
  {
    if (iFeeSigners.RestrictFeeByRole(1, cgRole_Direct))
      sDirect := iFeeSigners.GetSignerFIO(7);

    if (iFeeSigners.RestrictFeeByRole(1, cgRole_GlBux))
      sBuh := iFeeSigners.GetSignerFIO(7);

    iFeeSigners.ClearRestriction;
  }
end.
.Fields
  CommonFormHeader
  zvanie
  FIO
  DateToStr(attDate, 'DD/MM/YYYY')
.endFields
 И ^

                            АТТЕСТАТ
                     на вещевое довольствие

 Выдан _ Д@@@@@@@@@@@@@@@@@@@@@ Д_  _ Д^ Д_
              (звание)           (Фамилия, имя, отчество)
 переведенного на службу в _________________________________
                                (наименование таможни)
 на основании приказа по ___________________________________

                   №____ от _____________

 первоначальное звание присвоено ^ (дата первой аттестации)
 И
.{?Internal;(frmFlag=True);
 Р┌─────────┬──────────────────────┬─────────┬───────┬──────────┬───────────────┬────────────────┬──────────────┐
│   Код   │Наименование предметов│ Ед.изм. │Кол- во│   Дата   │     Цена      │     Сумма      │Срок окончания│
│         │форм. _____ской одежды│         │в носке│  выдачи  │               │                │    носки     │
├─────────┼──────────────────────┼─────────┼───────┼──────────┼───────────────┼────────────────┼──────────────┤
.{ frmDlgCir checkenter
.Fields
  frKod  frName  frEd  frKol  DateToStr(frGiveDate, 'DD/MM/YYYY')
  frPrice  frKol*frPrice
  if (Longint(frEndDate) > 0, DateToStr(frEndDate, 'DD/MM/YYYY'), '')
.endFields
│@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@│&#&&&&&│@@@@@@@@@@│&'#&&&&&&&&&.&&│&'#&&&&&&&&&&.&&│&&&&&&&&&&&&&&│
.}
└─────────┴──────────────────────┴─────────┴───────┴──────────┴───────────────┴────────────────┴──────────────┘ Р
.}
.{?Internal;(spcFlag=True);

 Р┌─────────┬──────────────────────┬─────────┬───────┬──────────┬───────────────┬────────────────┬──────────────┐
│   Код   │Наименование предметов│ Ед.изм. │Кол- во│   Дата   │     Цена      │     Сумма      │Срок окончания│
│         │спец. _____ской одежды│         │в носке│  выдачи  │               │                │    носки     │
├─────────┼──────────────────────┼─────────┼───────┼──────────┼───────────────┼────────────────┼──────────────┤
.{ spcDlgCir checkenter
.Fields
  spKod  spName  spEd  spKol  DateToStr(spGiveDate, 'DD/MM/YYYY')
  spPrice  spKol*spPrice
  if (Longint(spEndDate) > 0, DateToStr(spEndDate, 'DD/MM/YYYY'), '')
.endFields
│@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@│&#&&&&&│@@@@@@@@@@│&'#&&&&&&&&&.&&│&'#&&&&&&&&&&.&&│&&&&&&&&&&&&&&│
.}
└─────────┴──────────────────────┴─────────┴───────┴──────────┴───────────────┴────────────────┴──────────────┘ Р
.}
.fields
  if (sDirect = '', BossShort, sDirect)
  if (sBuh = '', MainBuhShort, sBuh)
.endFields
 И
  С записями в аттестате ознакомлен и согласен:
         Подпись получившего аттестат _________________________

  Начальник таможни  Д@@@@@@@@@@@@@@@@@@@ Д Главный бухгалтер  Д@@@@@@@@@@@@@@@@@@@ Д

    М.П. И

.endForm
