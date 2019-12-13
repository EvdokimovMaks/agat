//-----------------------------------------------------------------------------
//                                                      (с) корпорация Галактика
// Галактика 9.1 - Заработная плата
// Реестры по перечислениям в сбербанк (печатные формы)
//-----------------------------------------------------------------------------
#doc
Реестры по перечислениям в сбербанк
#end
.set name='ReesBVip'
.p 60
.hide
.{
.fields
  OrgName           // Наименование организации
  RegNomPF          // Регистрационный номер
  INN               // ИНН
  KPP               // КПП
  OKATO             // ОКАТО
  PlPorData         // Дата платежного поручения
  PlPorNom          // Номер платежного поручения
  PlPorDataStr      // Дата платежного поручения в формате " ____ " ____________   _______ г.' 'mon  YYYY г.'
  PlPorDataIsp      // Дата исполнения
  PlPorDataIspStr   // Дата исполнения в формате " ____ " ____________   _______ г.' 'mon  YYYY г.'
  MonthZa           // Месяц, за который
  GlavBuh_SignDoc   // Данные из доверенности о подписи
! Данные о реестре
  sReesName         // Наименование реестра
  sPlatName         // Номер и дата платежного поручения
  sRabName          // Данные получателя
  sRab_Schet        // Расчетный счет получателя
  sRab_OKPO         // Код получателя
  sRab_Bknm         // Банк получателя
  sRab_Mfo          // Код МФО
  sMonth            // Месяц формирования
  iYear             // Год формирования
  sVodIpls          // Вид оплаты
  sFIOBoss          // Руководитель предприятия
  sPost_Boss        // Должность руководителя
  sFIOBuh           // Главный бухгалтер
  sPost_Buh         // Должность главного бухгалтера
  cFeeSigners       // Группа подписантов
! Данные об организации
  XarOGRN           // ОГРН
  XarRs             // Рас/счет
  XarBCode          // БИК
  XarKS             // Кор/счет
! Данные о реестре
  ReesNum           // Номер реестра
  ReesDForm         // Дата формирования реестра
  maxPage           // Всего листов
  RecInTable        // Всего записей в реестре
.endfields
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.{
! Данные используются для настройки полей заголовков и подножий формы-прототипа
.[h OverWrite
.fields
  XarName           // Наименование организации
  ReesName          // Наименование реестра
  PlatName          // Номер и дата платежного поручения
  Rab_Name          // Данные получателя
  Rab_Schet         // Расчетный счет получателя
  Rab_OKPO          // Код получателя
  Rab_Bknm          // Банк получателя
  Rab_Mfo           // Код МФО
  Mes               // Месяц формирования
  God               // Год формирования
  ВидыОплат         // Вид оплаты
.endFields
  ^
  ^
  ^
  ^
  ^^
  ^
  ^^^
  ^
.]h
! Закончено описание данных, которые используются для настройки полей заголовков и подножий формы-прототипа
.fields
  ANALYTICSTR        // Наименование аналитики
  sbbanNrec  : comp  // nRec реестра
  KodVal     : comp  // Валюта документа
.endfields
 ^^^
.{
.fields
  RoundSum: word     // Сумма
  DatForm:  date     // Дата
.endfields
^^
.fields
! Данные по сотрудникам
  SpplbannRec        // nRec записи таблицы SpPlBan (SpPlBan.nRec)
  RTabN              // Табельный номер
  Npp                // Номер по порядку
  Nom_lsh            // Номер лицевого счета
  NomCard            // Номер карточки
  FIO                // ФИО
  Sum_Per  : double  // Сумма перечисления
  Sum_PerU : double  // Сумма удержания
  Sum_Sbor : double  // Сумма сбора
  СтвкаНДС : word    // Ставка НДС
  СумНДС   : double  // Сумма НДС
  Sum_Ud   : double  // Итого сумма по сотруднику
  cPersons : comp    // nRec ссылки на сотрудника
  P_seria            // Паспортные данные Серия
  P_number           // Паспортные данные Номер
  OldFio             // Предыдущая фамилия
  BornDate           // Дата рождения сотрудника
  PCodePodr          // Паспортные данные Кем выдано, подразделение
  sOrderNum          // Номер исполнительного листа
.endFields
 ^^^^^^^^^^^^^^^^^^^
.}
! Данные используются для настройки полей заголовков и подножий формы-прототипа
.[f OverWrite
.fields
  Рук_пред           // ФИО руководителя предприятия
  Долж_рук           // Должность руководителя
  Гл_бухг            // ФИО главного бухгалтера предприятия
  Долж_бухг          // Должность главного бухгалтера
.endFields
 ^^^^
.]f
! Закончено описание данных, которые используются для настройки полей заголовков и подножий формы-прототипа
.}
! Итоговые суммы
.fields
  ItogSum_Reestr1 : double  // Итого сумма перечисления
  ItogSum_Reestr2 : double  // Итого сумма удержания
  ItogSum_Reestr3 : double  // Итого сумма сбора
  ItogSum_Reestr4 : double  // Итого сумма выплаты
.endFields
 ^^^^
.if BrPage
.end
.}
.fields
  ItogSumma1
  ItogSumma2
  ItogSumma3
.endFields
 ^^^
.endForm

.Linkform 'reesBvip_01' Prototype is 'reesBvip'
.nameinlist 'Краткая форма реестров'
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList   : integer
     SumList1  : double
     ItogSumma1: double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
 .endvar
.begin
  KolList := 0;
  SumList1 := 0;
  ItogSumma1 := 0;
end.
.{
.{
.[h OverWrite
.begin
  KolList:=KolList+1
end.
.fields
  XarName
  ReesName
  Rab_Name
  Rab_Schet Rab_OKPO
  Rab_Bknm
  Rab_Mfo Mes God
.endFields
 Р Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Получатель @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Расчетный счет получателя ^ Код получателя ^ Р
 Р Банк ^ Р
 Р Код МФО банка ^ за ^ месяц &&&& г. Р
 Р────┬──────────────────────────────┬────────────────────────────────────────┬───────────────── Р
 Р №  │ Номер лицевого счета         │          Фамилия, имя, отчество        │     Сумма Р
 Рп/п │                              │                                        │  перечисления Р
 Р────┼──────────────────────────────┼────────────────────────────────────────┼───────────────── Р
.]h
.{
.begin
  SumList1 := SumList1 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per;
 end.
.fields
  Npp Nom_lsh FIO GetStrSummaExt(true, true, Sum_Per)
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
  Долж_рук
  Рук_пред
  Долж_бухг
  trim(GlavBuh_SignDoc)
  Гл_бухг
.endfields
 Р────┴──────────────────────────────┴────────────────────────────────────────┴───────────────── Р
 Р Итого по листу &&&:                                                       &'#&&&&&&&&&&&&&&&& Р
.begin
  //сумма прописью по листу
  SummaStr2 := '';
  SummaStr3 := '';
  SummaStr1 := DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 93
  {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
  }
  else
  {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
  }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма по листу прописью) Р
 Р  @@@@@@@@@@@@@@@@@@ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
 Р  @@@@@@@@@@@@@@@@@@ ^ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
.begin SumList1:=0 end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 Р Кол-во листов &&&                     ВСЕГО К ПЕРЕЧИСЛЕНИЮ               &'&&&&&&&&&&&&&&&&&& Р
.begin
  //сумма прописью всего к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 93
  {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
  }
  else
  {
    SummaStr2:= SummaStr1;
    SummaStr3:= '';
  }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма прописью) Р
.begin  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endForm
!
!
.Linkform 'reesBvip_02' Prototype is 'reesBvip'
.nameinlist 'Полная форма реестров'
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList    : integer
     SumList1   : double
     SumList2   : double
     SumList3   : double
     ItogSumma1 : double
     ItogSumma2 : double
     ItogSumma3 : double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
.endvar
.begin
  KolList   := 0
  SumList1  := 0
  SumList2  := 0
  SumList3  := 0
  ItogSumma1:= 0
  ItogSumma2:= 0
  ItogSumma3:= 0
end.

.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
  XarName
  ReesName
  Rab_Name
  Rab_Schet Rab_OKPO
  Rab_Bknm
  Rab_Mfo Mes God
.endFields
 Р  Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Получатель @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  Расчетный счет получателя ^  Код получателя ^
  Банк ^
  Код МФО банка ^  за ^ месяц &&&& г.
────┬──────────────────────────────┬───────────────────────────────────┬────────────────┬───────────┬────────────────
 №  │ Номер лицевого счета         │       Фамилия, имя, отчество      │     Сумма      │Сбор по пе-│    Сумма
п/п │                              │                                   │  перечисления  │речислению │  удержания
────┼──────────────────────────────┼───────────────────────────────────┼────────────────┼───────────┼──────────────── Р
.]h
.{
.begin
  SumList1 := SumList1 + Sum_Per;
  SumList2 := SumList2 + Sum_Sbor;
  SumList3 := SumList3 + Sum_Ud;
  ItogSumma1 := ItogSumma1 + Sum_Per;
  ItogSumma2 := ItogSumma2 + Sum_Sbor;
  ItogSumma3 := ItogSumma3 + Sum_Ud;
 end.
.fields
 Npp Nom_lsh FIO GetStrSummaExt(true, true, Sum_per) GetStrSummaExt(true, true, Sum_Sbor) GetStrSummaExt(true, true, Sum_Ud)
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  GetStrSummaExt(true, true, SumList2)
  GetStrSummaExt(true, true, SumList3)
  SummaStr2
  SummaStr3
  Долж_рук
  Рук_пред
  Долж_бухг
  trim(GlavBuh_SignDoc)
  Гл_бухг
.endfields
 Р────┴──────────────────────────────┴───────────────────────────────────┴────────────────┴───────────┴────────────────
 Итого по листу &&&:                                                  &'&&&&&&&&&&&&&&&&  &'&&&&&&&& &'&&&&&&&&&&&&&&
 Р.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 112
  {
    SummaStr2:= GetPartStr(SummaStr1,112);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,112);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,112);
  }
  else
  {
    SummaStr2:= SummaStr1;
    SummaStr3:= '';
  }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма по листу прописью) Р
 Р  @@@@@@@@@@@@@@@@@@ ^
                                                 _______________
                                                    (подпись)
  @@@@@@@@@@@@@@@@@@ ^ ^
                                                 _______________
                                                    (подпись) Р
.begin SumList1:=0
       SumList2:=0
       SumList3:=0
end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  GetStrSummaExt(true, true, ItogSum_Reestr2)
  GetStrSummaExt(true, true, ItogSum_Reestr3)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 РКоличество листов &&&     ВСЕГО К ПЕРЕЧИСЛЕНИЮ                        &'&&&&&&&&&&&&&&&&  &'&&&&&&&& &'&&&&&&&&&&&&&&
 Р.begin
  //сумма прописью к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 112
   {
    SummaStr2:= GetPartStr(SummaStr1,112);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,112);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,112);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                            (сумма прописью) Р
.begin  KolList:= 0
 end.
 Р.if BrPage
^
.end
.}
.endform
!
!
.Linkform 'reesBvip_03' Prototype is 'reesBvip'
.nameinlist 'Краткая форма реестров почтовых переводов'
.group 'Реестры почтовых переводов'
.p 60
.var KolList   : integer
     SumList1  : double
     ItogSumma1: double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
.endvar
.begin
  KolList   := 0
  SumList1  := 0
  ItogSumma1:= 0
end.

.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
 XarName
 ReesName
 Rab_Name
 Mes God
.endFields
 Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Регион @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                           за ^ месяц &&&& г.
 ────┬────────────────────────────────────────────────────────────┬────────────────
  №  │      Фамилия, имя, отчество ( кому )  /                    │     Сумма
 п/п │      Адрес                                                 │  перечисления
 ────┼────────────────────────────────────────────────────────────┼────────────────
.]h
.{
.fields
  Npp Nom_lsh FIO GetStrSummaExt(true, true, Sum_Per)
.endfields
.begin
  SumList1 := SumList1 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per;
 end.
 &&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             │
     │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
  Долж_рук
  Рук_пред
  Долж_бухг
  trim(GlavBuh_SignDoc)
  Гл_бухг
.endfields
 ────┴────────────────────────────────────────────────────────────┴─────────────────
 Итого по листу &&&:                                           &'&&&&&&&&&&&&&&&&&&
 Р.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 81
   {
    SummaStr2:= GetPartStr(SummaStr1,81);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,81);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,81);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                            (сумма по листу прописью)
   @@@@@@@@@@@@@@@@@@ ^
                                                 _______________
                                                    (подпись)
   @@@@@@@@@@@@@@@@@@ ^ ^
                                                 _______________
                                                    (подпись)
.begin SumList1:=0
end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
  'true':'s'
.endFields
Количество листов &&&     ВСЕГО К ПЕРЕЧИСЛЕНИЮ              &'&&&&&&&&&&&&&&&&&&&&&
 Р.begin
  //сумма прописью к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal, РItogSum_Reestr1 Р);
  if length(SummaStr1) > 81
   {
    SummaStr2:= GetPartStr(SummaStr1,81);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,81);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,81);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р Д @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
 Д @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                            (сумма прописью)
.begin  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endform
!
!
.Linkform 'reesBvip_04' Prototype is 'reesBvip'
.nameinlist 'Полная форма реестров почтовых переводов'
.group 'Реестры почтовых переводов'
.p 60
.var KolList    : integer
     SumList1   : double
     SumList2   : double
     SumList3   : double
     ItogSumma1 : double
     ItogSumma2 : double
     ItogSumma3 : double
     SummaStr1  : string
     SummaStr2  : string
     SummaStr3  : string
.endvar
.begin
  KolList   := 0
  SumList1  := 0
  SumList2  := 0
  SumList3  := 0
  ItogSumma1:= 0
  ItogSumma2:= 0
  ItogSumma3:= 0
end.
.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
 XarName
 ReesName
 Rab_Name
 Mes God
.endFields
 Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Регион @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р                           за ^ месяц &&&& г. Р
 Р ────┬────────────────────────────────────────────────────────────┬────────────────┬──────────┬─────────────── Р
 Р  №  │      Фамилия, имя, отчество ( кому )  /                    │     Сумма      │ Почтовый │  Сумма Р
 Р п/п │      Адрес                                                 │  перечисления  │   сбор   │удержания Р
 Р ────┼────────────────────────────────────────────────────────────┼────────────────┼──────────┼───────────────
.]h
.{
.fields
 Npp Nom_lsh FIO GetStrSummaExt(true, true, Sum_per) GetStrSummaExt(true, true, Sum_Sbor) GetStrSummaExt(true, true, Sum_Ud)
.endfields
.begin
  SumList1 := SumList1 + Sum_Per;
  SumList2 := SumList2 + Sum_Sbor;
  SumList3 := SumList3 + Sum_Ud;
  ItogSumma1 := ItogSumma1 + Sum_Per;
  ItogSumma2 := ItogSumma2 + Sum_Sbor;
  ItogSumma3 := ItogSumma3 + Sum_Ud;
 end.
 &&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             │                │          │ Р
 Р     │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&│&&&&&&&&&&│&&&&&&&&&&&&&&&&
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  GetStrSummaExt(true, true, SumList2)
  GetStrSummaExt(true, true, SumList3)
  SummaStr2
  SummaStr3
  Долж_рук
  Рук_пред
  Долж_бухг
  trim(GlavBuh_SignDoc)
  Гл_бухг
.endfields
 ────┴────────────────────────────────────────────────────────────┴────────────────┴──────────┴──────────────── Р
 Р Итого по листу &&&:                                             &'&&&&&&&&&&&&&&&&  &'&&&&&&& &'&&&&&&&&&&&&&& Р
.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 110
   {
    SummaStr2:= GetPartStr(SummaStr1,110);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,110);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,110);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д@@@@@@@@@@
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                            (сумма по листу прописью) Р
 Р   @@@@@@@@@@@@@@@@@@ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
 Р   @@@@@@@@@@@@@@@@@@ ^ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись)
.begin SumList1:=0
       SumList2:=0
       SumList3:=0
end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  GetStrSummaExt(true, true, ItogSum_Reestr2)
  GetStrSummaExt(true, true, ItogSum_Reestr3)
  SummaStr2
  SummaStr3
  'true':'s'
.endFields
 Количество листов &&&                ВСЕГО К ПЕРЕЧИСЛЕНИЮ       &'&&&&&&&&&&&&&&&& &'&&&&&&&& &'&&&&&&&&&&&&&&
 Р.begin
  //сумма прописью к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal, РItogSum_Reestr1 Р);
  if length(SummaStr1) > 110
   {
    SummaStr2:= GetPartStr(SummaStr1,110);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,110);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,110);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                              (сумма прописью) Р
 Р.begin  KolList:= 0
 end.
 Р.if BrPage
^
.end
.}
!
.endform
.Linkform 'reesBvip_10' Prototype is 'reesBvip'
.nameinlist 'Новая форма реестров '
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList   : integer
     SumList1  : double
     ItogSumma1: double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
.endvar
.begin
  KolList   := 0
  SumList1  := 0
  ItogSumma1:= 0
end.

.{
.fields
 DatForm
 PlatName
.endfields
 С  БДата Б: @@@@@@@@@@ С
 С                                  В Е Д О М О С Т Ь С
 С  Б    Приложение к платежному поручению @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
  ВидыОплат
  Rab_Bknm
  XarName
  Mes  God
.endFields
 Р  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р  перечислений в @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р  рабочим и служащим  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р                           за ^ месяц &&&& г. Р
 Ш──────────────┬──────────────────────────────┬────────────────────────────────────────┬─────────────────
   Б  БТабельный  │    Номер лицевого счета      │         Фамилия, имя, отчество Б         │ БСумма для зачисл. Б
      Бномер Б    │                              │                                        │ Бна лиц.счет(руб) Б
──────────────┼──────────────────────────────┼────────────────────────────────────────┼───────────────── Ш
.]h
.{
.begin
  SumList1 := SumList1 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per;
 end.
.fields
  RTabN
  Nom_lsh FIO GetStrSummaExt(true, true, Sum_Per)
.endFields
 Щ&&&&&&&&&&&&&& Б│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Б&&&&&&&&&&&&&&&&& Щ
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
  Долж_рук
  Рук_пред
  Долж_бухг
  trim(GlavBuh_SignDoc)
  Гл_бухг
.endfields
 Ш──────────────┴──────────────────────────────┴────────────────────────────────────────┴───────────────── Ш
 Ш  БИтого по листу Б  Е&&& Б: Д                                                               Б&'#&&&&&&&&&&&&&&&&&&& Щ
.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 89
   {
    SummaStr2:= GetPartStr(SummaStr1,89);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,89);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,89);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Е@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Е
                             Б(сумма по листу прописью) С
 С   @@@@@@@@@@@@@@@@@@  Е^ Ф
 Р                                                  Б_______________
                                                    (подпись) С
 С   @@@@@@@@@@@@@@@@@@  Е^ Е  Е^ Ф
 Р                                                  Б_______________
                                                    (подпись) С
.begin SumList1:=0 end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 Р  БКол-во листов &&& С      С        ВСЕГО К ПЕРЕЧИСЛЕНИЮ            &'&&&&&&&&&&&&&&&&&&&& С
.begin
  //сумма прописью к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 89
   {
    SummaStr2:= GetPartStr(SummaStr1,89);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,89);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,89);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Х @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ф
 С                                Б(сумма прописью) С
.begin  KolList:= 0
 end.

.if BrPage
^
.end
.}
!
.endForm
!
.Linkform 'reesBvip_14' Prototype is 'reesBvip'
.nameinlist 'Полная форма реестров почтовых переводов(с НДС)'
.group 'Реестры почтовых переводов'
.p 60
.var KolList    : integer
     SumList1   : double
     SumList2   : double
     SumList3   : double
     SummNDS1   : double
     ItogSumma1 : double
     ItogSumma2 : double
     ItogSumma3 : double
     ItSummNDS1 : double
     ItStNDS1   : string
     SummaStr1  : string
     SummaStr2  : string
     SummaStr3  : string
.endvar
.begin
  KolList   := 0
  SumList1  := 0
  SumList2  := 0
  SumList3  := 0
  ItogSumma1:= 0
  ItogSumma2:= 0
  ItogSumma3:= 0
  SummNDS1  := 0
  ItSummNDS1:= 0
end.
.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
  XarName
  ReesName
  Rab_Name
  Mes God
.endFields
 Р Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Регион @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р                           за ^ месяц &&&& г. Р
 Ш ────┬───────────────────────────────────────────────┬────────────────┬────────────────────────┬─────────────── Ш
 Ш  Б №  Б │                                               │                │     БПочтовый  сбор Б      │   БСумма Щ
 Ш  Бп/п Б │       БФамилия, имя, отчество ( кому )  / Б       │      БСумма Б      ├────────┬──────┬────────┤ Будержания Щ
 Ш     │         БАдрес Б                                  │   Бперечисления Б  │  БCумма Б  │ БСтавка Б│   БCумма Б │ Ш
 Ш     │                                               │                │        │ БНДС % Б │    БНДС Б  │ Ш
 Ш ────┼───────────────────────────────────────────────┼────────────────┼────────┼──────┼────────┼─────────────── Ш
.]h
.{
.fields
  Npp Nom_lsh FIO GetStrSummaExt(true, true, Sum_per) GetStrSummaExt(true, true, Sum_Sbor) СтвкаНДС GetStrSummaExt(true, true, СумНДС) GetStrSummaExt(true, true, Sum_Ud)
.endfields
.begin
  SumList1 := SumList1 + Sum_Per;
  SumList2 := SumList2 + Sum_Sbor;
  SummNDS1 := SummNDS1 + СумНДС;
  SumList3 := SumList3 + Sum_Ud;
  ItogSumma1 := ItogSumma1 + Sum_Per;
  ItogSumma2 := ItogSumma2 + Sum_Sbor;
  ItogSumma3 := ItogSumma3 + Sum_Ud;
  ItSummNDS1 := ItSummNDS1 + СумНДС;
 end.
 Ш &&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│                │        │      │        │ Ш
 Ш     │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&│&&&&&&&&│&&&&&&│&&&&&&&&│&&&&&&&&&&&&&&&& Ш
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  GetStrSummaExt(true, true, SumList2)
  GetStrSummaExt(true, true, SummNDS1)
  GetStrSummaExt(true, true, SumList3)
  SummaStr2
  SummaStr3
 Б Долж_рук Рук_пред Долж_бухг trim(GlavBuh_SignDoc) Гл_бухг Б
.endfields
 Ш ────┴───────────────────────────────────────────────┴────────────────┴────────┴──────┴────────┴─────────────── Ш
 Ш   БИтого по листу Б &&&:                                &'&&&&&&&&&&&&&&& &'&&&&&&       &'&&&&&&& &'&&&&&&&&&&&&&& Ш
.begin
  //сумма прописью по листу
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 112
   {
    SummaStr2:= GetPartStr(SummaStr1,112);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,112);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,112);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д@@@@@@@@@@@@@@@@@@@@@@@@@
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                            (сумма по листу прописью) Р
 Ш    Б@@@@@@@@@@@@@@@@@@ Б ^ Ш
 Ш                                                 _______________ Ш
 Ш                                                    (подпись) Ш
 Ш    Б@@@@@@@@@@@@@@@@@@ Б ^ ^ Ш
 Ш                                                 _______________ Ш
 Ш                                                    (подпись) Ш
.begin SumList1:=0
       SumList2:=0
       SumList3:=0
       SummNDS1:=0
end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  GetStrSummaExt(true, true, ItogSum_Reestr2)
  GetStrSummaExt(true, true, ItSummNDS1)
  GetStrSummaExt(true, true, ItogSum_Reestr3)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 Ш  БКоличество листов Б &&&      БВСЕГО К ПЕРЕЧИСЛЕНИЮ Б         &'&&&&&&&&&&&& &'&&&&&&       &'&&&&&&&  &'&&&&&&&&&&&&& Ш
.begin
  //сумма прописью по листу
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 112
   {
    SummaStr2:= GetPartStr(SummaStr1,112);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,112);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,112);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Ш  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ь
 Ш  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ь
 Ш                            (сумма прописью) Ш
.begin
  KolList:= 0
  ItSummNDS1 := 0
 end.
.if BrPage
^
.end
.}
!
.endform
!Магнитные носители
.Linkform 'reesBvip_101' Prototype is 'reesBvip'
.nameinlist 'Электронный вариант реестра'
.var
path: string;
bool: boolean;
.endvar
.group 'Реестры по перечислению в сбербанк'
.{
.{
.[h OverWrite
.]h
.{
.}
.[f OverWrite
.]f
.}
.if BrPage
.end
.begin
path:= '';
Runinterface(FPayRoll, SbbanNrec, path);
end.
.fields
path
.endfields
  ^
.}
.endForm
//------------------------------------------------------------------------------
// FastReport - форматтер
//------------------------------------------------------------------------------
.Linkform 'reesBvip_FastReport' Prototype is 'reesBvip'
.nameinlist 'FastReport-форматер'
.var
path: string;
.endvar
.group 'Реестры по перечислению в сбербанк'
.{
.{
.[h OverWrite
.]h
.{
.}
.[f OverWrite
.]f
.}
.if BrPage
.end
.begin
path:= '';
Runinterface(FRFormatterOfReestrProvider, SbbanNrec);
end.
.fields
path
.endfields
  ^
.}
Формирование файла электронного реестра завершено.
.endForm

//------------------------------------------------------------------------------
// dbf/xml - Сбребанк России
//------------------------------------------------------------------------------
.Linkform 'reesBvip_dbf_sberbank' Prototype is 'reesBvip'
.nameinlist 'dbf/xml-Сбербанк, Россия'
.var
path: string;
.endvar
.group 'Реестры по перечислению в сбербанк'
.{
.{
.[h OverWrite
.]h
.{
.}
.[f OverWrite
.]f
.}
.if BrPage
.end
.begin
path:= '';
Runinterface(DbfReestrSberbankRussiaProvider, SbbanNrec);
end.
.fields
path
.endfields
  ^
.}
Сервисная функция экспорта завершена.
.endForm

//------------------------------------------------------------------------------
// Электронный вариант реесстр почтовых переводов
//------------------------------------------------------------------------------
.Linkform 'reesBvip_104' Prototype is 'reesBvip'
.nameinlist 'Электронный вариант реестра'
.group 'Реестры почтовых переводов'
.var
path: string;
bool: boolean;
.endvar
.group 'Реестры по перечислению в сбербанк'
.begin
path:= '';
Runinterface(FPayRoll, SbbanNrec, path);
end.
.fields
path
.endfields
  ^
.{
.{
.[h OverWrite
.]h
.{
.}
.[f OverWrite
.]f
.}
.if BrPage
.end
.}
.endForm
//------------------------------------------------------------------------------
.Linkform 'reesBvip_102' Prototype is 'reesBvip'
.nameinlist 'Краткая форма реестров с паспортными данными'
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList   : integer
     SumList1  : double
     ItogSumma1: double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
.endvar
.begin
  KolList   := 0
  SumList1  := 0
  ItogSumma1:= 0
end.

.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
  XarName
  ReesName
  Rab_Name
  Rab_Schet Rab_OKPO
  Rab_Bknm
  Rab_Mfo Mes God
.endFields
 Р Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Получатель @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Расчетный счет получателя ^ Код получателя ^ Р
 Р Банк ^ Р
 Р Код МФО банка ^ за ^ месяц &&&& г. Р
 Р────┬─────────────────────────────────────┬────────────────────────┬────────────┬───────────┬───────────┬───────────┬─────────────── Р
 Р №  │   ФАМИЛИЯ ИМЯ ОТЧЕСТВО СОТРУДНИКА   │  НОМЕР ЛИЦЕВОГО СЧЕТА  │  ДАТА      │ СЕРИЯ     │ НОМЕР     │ КОД ПОДР. │    СУММА Р
 Рп/п │                                     │                        │  РОЖДЕНИЯ  │ ПАСПОРТА  │ ПАСПОРТА  │           │ ПЕРЕЧИСЛЕНИЯ Р
 Р────┼─────────────────────────────────────┼────────────────────────┼────────────┼───────────┼───────────┼───────────┼─────────────── Р
.]h
.{
.begin
  SumList1  := SumList1 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per;
 end.
.fields
 Npp FIO Nom_lsh BornDate p_seria p_Number PCodePodr GetStrSummaExt(true, true, Sum_Per)
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
 БДолж_рук Рук_пред Долж_бухг trim(GlavBuh_SignDoc) Гл_бухг Б
.endfields
 Р────┴─────────────────────────────────────┴────────────────────────┴────────────┴───────────┴───────────┴────────────┴────────────── Р
 Р Итого по листу &&&:                                                                                            &'#&&&&&&&&&&&&&&&& Р
.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 93
   {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма по листу прописью) Р
 Р   @@@@@@@@@@@@@@@@@@ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
 Р   @@@@@@@@@@@@@@@@@@ ^ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
.begin SumList1:=0 end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 Р Кол-во листов &&&                     ВСЕГО К ПЕРЕЧИСЛЕНИЮ                                        &'&&&&&&&&&&&&&&&&&& Р
.begin
  //сумма прописью всего к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 93
   {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма прописью) Р
.begin  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endForm
//------------------------------------------------------------------------------
.Linkform 'reesBvip_102' Prototype is 'reesBvip'
.nameinlist 'Краткая форма реестров с паспортными данными'
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList   : integer
     SumList1  : double
     ItogSumma1: double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
 .endvar
.begin
  KolList   := 0
  SumList1  := 0
  ItogSumma1:= 0
end.

.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
 XarName
 ReesName
 Rab_Name
 Rab_Schet Rab_OKPO
 Rab_Bknm
 Rab_Mfo Mes God
.endFields
 Р Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р@
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р@@@
 Р Получатель @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р@@@@
 Р Расчетный счет получателя ^ Код получателя ^ Р
 Р Банк ^ Р
 Р Код МФО банка ^ за ^ месяц &&&& г. Р
 Р────┬─────────────────────────────────────┬────────────────────────┬────────────┬───────────┬───────────┬───────────┬─────────────── Р
 Р №  │   ФАМИЛИЯ ИМЯ ОТЧЕСТВО СОТРУДНИКА   │  НОМЕР ЛИЦЕВОГО СЧЕТА  │  ДАТА      │ СЕРИЯ     │ НОМЕР     │ КОД ПОДР. │    СУММА Р
 Рп/п │                                     │                        │  РОЖДЕНИЯ  │ ПАСПОРТА  │ ПАСПОРТА  │           │ ПЕРЕЧИСЛЕНИЯ Р
 Р────┼─────────────────────────────────────┼────────────────────────┼────────────┼───────────┼───────────┼───────────┼─────────────── Р
.]h
.{
.begin
  SumList1 := SumList1 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per;
 end.
.fields
  Npp FIO Nom_lsh BornDate p_seria p_Number PCodePodr GetStrSummaExt(true, true, Sum_Per)
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
  Долж_рук Рук_пред Долж_бухг trim(GlavBuh_SignDoc) Гл_бухг
.endfields
 Р────┴─────────────────────────────────────┴────────────────────────┴────────────┴───────────┴───────────┴───────────┴─────────────── Р
 Р Итого по листу &&&:                                                                                           &'#&&&&&&&&&&&&&&&& Р
.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 93
   {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма по листу прописью) Р
 Р   @@@@@@@@@@@@@@@@@@ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
 Р   @@@@@@@@@@@@@@@@@@ ^ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
.begin SumList1:=0 end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 Р Кол-во листов &&&                     ВСЕГО К ПЕРЕЧИСЛЕНИЮ                                                   &'&&&&&&&&&&&&&&&&&& Р
.begin
  //сумма прописью всего к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 93
   {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 Р  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
  Д@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Д
                             (сумма прописью) Р
.begin  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endForm
//------------------------------------------------------------------------------
.Linkform 'reesBvip_103' Prototype is 'reesBvip'
.nameinlist 'Краткая форма реестров с номером карточки'
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList   : integer
     SumList1  : double
     ItogSumma1: double
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
 .endvar
.begin
  KolList   := 0
  SumList1  := 0
  ItogSumma1:= 0
end.

.{
.{
.[h OverWrite
.begin KolList:=KolList+1 end.
.fields
  XarName
  ReesName
  Rab_Name
  Rab_Schet Rab_OKPO
  Rab_Bknm
  Rab_Mfo Mes God
.endFields
 Р Предприятие @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Получатель @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
 Р Расчетный счет получателя ^ Код получателя ^ Р
 Р Банк ^ Р
 Р Код МФО банка ^ за ^ месяц &&&& г. Р
 Р────┬───────────────────┬─────────────────────────────┬─────────────────────────────────────────────┬───────────────── Р──
 Р №  │      Номер        │          Номер              │          Фамилия, имя, отчество             │      Сумма Р
 Рп/п │     карточки      │     лицевого счета          │                                             │   перечисления
────┼───────────────────┼─────────────────────────────┼─────────────────────────────────────────────┼─────────────────── Р─
 Р.]h
.{
.begin
   SumList1  := SumList1 + Sum_Per;
   ItogSumma1:= ItogSumma1 + Sum_Per;
 end.
.fields
 Npp NomCard Nom_lsh FIO GetStrSummaExt(true, true, Sum_Per)
.endFields
&&&&│@~@@@@@@@@@@@@@@@@@│@~@@@@@@@@@@@@@@@@@@@@@@@@@@@│@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'#&&&&&&&&&&&&&&&& Р
 Р.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  SummaStr2
  SummaStr3
 СДолж_рук Рук_пред Долж_бухг trim(GlavBuh_SignDoc) Гл_бухг С
.endfields
────┴───────────────────┴─────────────────────────────┴─────────────────────────────────────────────┴───────────────────
 Итого по листу &&&:                                                                                 &'#&&&&&&&&&&&&&&&& Р
 Р.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1);
  if length(SummaStr1) > 93
   {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                    (сумма по листу прописью)
   @@@@@@@@@@@@@@@@@@ ^
                                                 _______________
                                                    (подпись)
   @@@@@@@@@@@@@@@@@@ ^ ^
                                                 _______________
                                                    (подпись) Р
 Р.begin SumList1:=0 end.
.]f
.}
.fields
  KolList
  GetStrSummaExt(true, true, ItogSum_Reestr1)
  SummaStr2
  SummaStr3
 'true':'s'
.endFields
 Кол-во листов &&&                     ВСЕГО К ПЕРЕЧИСЛЕНИЮ                                          &'#&&&&&&&&&&&&&&&& Р
 Р.begin
  //сумма прописью всего к перечислению
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 93
   {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
   }
  else
   {
     SummaStr2:= SummaStr1;
     SummaStr3:= '';
   }
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                             (сумма прописью) Р
 Р.begin  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endForm

 Б.Linkform 'reesBvip_DSV' Prototype is 'reesBvip'
.nameinlist 'Реестр застрахованных лиц'
.group 'Реестры ДСВ'
.p 60
.var
  KolList : integer;
  SumList1 : double;
  SumList2 : double;
  ItogSumma1 : double;
  SummaStr1 : string;
  SummaStr2 : string;
  SummaStr3 : string;
.endvar
.begin
  KolList := 0;
  SumList1 := 0;
  SumList2 := 0;
  ItogSumma1 := 0;
end.

.{
 Форма ДСВ-3
                            Реестр застрахованных лиц,
               за которых перечислены дополнительные страховые взносы
               на накопительную пенсию и уплачены взносы работодателя
.fields
 RegNomPF
 INN
 KPP
 OrgName
 PlPorDataStr
 PlPorNom
 PlPorDataIspStr
 MonthZa

.endFields

 Реквизиты работодателя, передающего реестр застрахованных лиц:
 Регистрационный номер ПФР @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ИНН @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  КПП @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Наименование организации (краткое)
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Платежное поручение от ^ № ^
 Дата исполнения платежного поручения ^
 Период уплаты ^

────┬────────────────────────────┬──────────────────┬────────────────────┬────────────────────
    │                            │ Страховой номер  │        Сумма       │      Сумма
 №  │           Ф.И.О.           │  индивидуального │   перечисленных    │    уплаченных
п/п │    застрахованного лица    │  лицевого счета  │   дополнительных   │      взносов
    │                            │  застрахованного │ страховых взносов  │    работодателя
    │                            │       лица       │ на накопительную   │  (в случае уплаты)
    │                            │      (СНИЛС)     │    пенсию (руб.)   │      (руб.)
.{
.[h OverWrite
.begin
  KolList:=KolList+1
end.
────┼────────────────────────────┼──────────────────┼────────────────────┼────────────────────
 1  │              2             │         3        │         4          │         5
────┼────────────────────────────┼──────────────────┼────────────────────┼────────────────────
.]h
.{
.begin
  SumList1 := SumList1 + Sum_PerU;
  SumList2 := SumList2 + Sum_Per;
  ItogSumma1 := ItogSumma1 + Sum_Per  + Sum_PerU;
end.
.fields
 Npp FIO Nom_lsh GetStrSummaExt(true, true, Sum_PerU) GetStrSummaExt(true, true, Sum_Per)
.endFields
&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│&&&&&&&&&&&&&&&&&&&&
.}
.[f OverWrite
.fields
  KolList
  GetStrSummaExt(true, true, SumList1)
  GetStrSummaExt(true, true, SumList2)
  SummaStr2
  SummaStr3
.endfields
────┴────────────────────────────┴──────────────────┴────────────────────┴────────────────────
 Всего по листу &&&:                                 &'#&&&&&&&&&&&&&&&&& &'#&&&&&&&&&&&&&&&&&
.begin
  //сумма прописью по листу
  SummaStr2:= '';
  SummaStr3:= '';
  SummaStr1:= DoubleToString(KodVal,SumList1+SumList2);
  if length(SummaStr1) > 93
  {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
    SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
  }
  else
  {
    SummaStr2:= SummaStr1;
    SummaStr3:= '';
  }
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               (сумма по листу прописью)
.begin SumList1:=0 end.
.]f
.}
.fields
  KolList
  SummaStr2
  SummaStr3
  Долж_бухг
  Гл_бухг
  Долж_рук
  Рук_пред
 'true':'s'
.endFields
 Количество листов &&&

 Общая сумма перечисляемых средств составляет
.begin
  //сумма прописью всего к перечислению
  SummaStr2 := '';
  SummaStr3 := '';
  SummaStr1 := DoubleToString(KodVal,ItogSum_Reestr1);
  if length(SummaStr1) > 93
  {
    SummaStr2:= GetPartStr(SummaStr1,93);
    if Trim(SummaStr2)=''
     SummaStr2:=substr(SummaStr1,1,93);
     SummaStr3:= substr(SummaStr1,length(SummaStr2)+1,93);
  }
  else
  {
    SummaStr2:= SummaStr1;
    SummaStr3:= '';
  }
end.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                             (сумма прописью)

   @@@@@@@@@@@@@@@@@@                           ^
                             _______________    _____________________________________________
                                 (подпись)                  (расшифровка подписи)

   @@@@@@@@@@@@@@@@@@                           ^
                             _______________    _____________________________________________
                                 (подпись)                  (расшифровка подписи)

      Дата                                      М.П.
.begin
  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endForm
