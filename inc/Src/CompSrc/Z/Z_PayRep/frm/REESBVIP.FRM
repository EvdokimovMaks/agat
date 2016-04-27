/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2000 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.70                                                      ║
 ║ Назначение    : Реестры по перечислениям в сбербанк                       ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
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
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
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
  Sum_Per            // Сумма перечисления
  Sum_PerU           // Сумма удержания
  Sum_Sbor           // Сумма сбора
  СтвкаНДС:word      // Ставка НДС
  СумНДС             // Сумма НДС
  Sum_Ud             // Итого сумма по сотруднику
  cPersons  : comp   // nRec ссылки на сотрудника
  P_seria            // Паспортные данные Серия
  P_number           // Паспортные данные Номер
  OldFio             // Предыдущая фамилия
  BornDate           // Дата рождения сотрудника
  PCodePodr          // Паспортные данные Кем выдано, подразделение
.endFields
 ^^^^^^^^^^^^^^^^^^
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
     St1       : string
     ItogSumma1: double
     ItSt1     : string
     ItSumSt1  : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     delimit   : string
 .endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
 Р────┬──────────────────────────────┬────────────────────────────────────────┬───────────────── Р
 Р №  │ Номер лицевого счета         │          Фамилия, имя, отчество        │     Сумма Р
 Рп/п │                              │                                        │  перечисления Р
 Р────┼──────────────────────────────┼────────────────────────────────────────┼───────────────── Р
.]h
.{
.begin SumList1  := SumList1 + Double(Sum_Per)
       ItogSumma1:= ItogSumma1 + Double(Sum_Per)
       if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
       else
        begin
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
        end;
 end.
.fields
 Npp Nom_lsh FIO cur_per
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, SumList1);
end.
.fields
 KolList
 St1
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
 Р  @@@@@@@@@@@@@@@@@@ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
 Р  @@@@@@@@@@@@@@@@@@ ^ ^ Р
 Р                                                 _______________ Р
 Р                                                    (подпись) Р
.begin SumList1:=0 end.
.]f
.}
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
  //DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667.88')
end.
.fields
 KolList
 ItSumSt1
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
!
.endForm
!
!
!
.Linkform 'reesBvip_02' Prototype is 'reesBvip'
.nameinlist 'Полная форма реестров'
.group 'Реестры по перечислению в сбербанк'
.p 60
.var KolList        : integer
     SumList1       : double
     SumList2       : double
     SumList3       : double
     St1      : string
     St2      : string
     St3      : string
     ItogSumma1     : double
     ItogSumma2     : double
     ItogSumma3     : double
     ItSt1      : string
     ItSt2      : string
     ItSt3      : string

     ItSumSt1   : string
     ItSumSt2   : string
     ItSumSt3   : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     cur_Sbor  : string
     cur_Ud    : string
     delimit   : string
.endvar
.begin  KolList   := 0
        SumList1  := 0
        SumList2  := 0
        SumList3  := 0
        ItogSumma1:= 0
        ItogSumma2:= 0
        ItogSumma3:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
.begin SumList1:= SumList1+double(Sum_Per)
       SumList2:= SumList2+Double(Sum_Sbor)
       SumList3:= SumList3+Double(Sum_Ud)
       ItogSumma1:= ItogSumma1+Double(Sum_Per)
       ItogSumma2:= ItogSumma2+Double(Sum_Sbor)
       ItogSumma3:= ItogSumma3+Double(Sum_Ud)
       if RoundSum= 1
        begin
        Cur_per:= DoubleToStr(Double(Sum_per),'666''666''666''666''667')+ delimit;
        Cur_Sbor:= DoubleToStr(Double(Sum_Sbor),'666''666''666''666''667')+ delimit;
        Cur_Ud:= DoubleToStr(Double(Sum_Ud),'666''666''666''666''667')+ delimit;
        end
       else
        begin
        Cur_per := GetStrSummaExt(true, true, Double(Sum_per));
        Cur_Sbor:= GetStrSummaExt(true, true, Double(Sum_Sbor));
        Cur_Ud  := GetStrSummaExt(true, true, Double(Sum_Ud));
        end
 end.
.fields
 Npp Nom_lsh FIO Cur_Per Cur_Sbor Cur_Ud
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
  SumList2 := Round(SumList2);
  St2 := DoubleToStr(SumList2,'666''666''666''666''667')+ delimit
  SumList3 := Round(SumList3);
  St3 := DoubleToStr(SumList3,'666''666''666''666''667')+ delimit
end
else
  begin
  St1 := GetStrSummaExt(true, true, SumList1);//DoubleToStr(SumList1,'666''666''666''666''667.88')
  St2 := GetStrSummaExt(true, true, SumList2);
  St3 := GetStrSummaExt(true, true, SumList3);
  end
end.
.fields
 KolList
 St1
 St2
 St3
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
  ItogSum_Reestr2 := Round(ItogSum_Reestr2);
  ItSumSt2 := DoubleToStr(ItogSum_Reestr2,'666''666''666''666''667')+ delimit
  ItogSum_Reestr3 := Round(ItogSum_Reestr3);
  ItSumSt3 := DoubleToStr(ItogSum_Reestr3,'666''666''666''666''667')+ delimit
end
else
  begin
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
  ItSumSt2 := GetStrSummaExt(true, true, ItogSum_Reestr2);
  ItSumSt3 := GetStrSummaExt(true, true, ItogSum_Reestr3);
  end;
end.
.fields
 KolList
 ItSumSt1 ItSumSt2 ItSumSt3
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
!
.Linkform 'reesBvip_03' Prototype is 'reesBvip'
.nameinlist 'Краткая форма реестров почтовых переводов'
.group 'Реестры почтовых переводов'
.p 60
.var KolList   : integer
     SumList1  : double
     St1       : string
     ItogSumma1: double
     ItSt1     : string
     ItSumSt1  : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     delimit   : string
.endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
 Npp Nom_lsh FIO cur_Per
.endfields
.begin SumList1:= SumList1+Double(Sum_Per)
     ItogSumma1:= ItogSumma1+Double(Sum_Per)
     if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
     else
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
 end.
 &&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             │
     │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, SumList1);
end.
.fields
  KolList
  St1
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
.fields
 KolList
 ItSumSt1
 Р SummaStr2
 SummaStr3
 Р'true':'s'
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
!
.Linkform 'reesBvip_04' Prototype is 'reesBvip'
.nameinlist 'Полная форма реестров почтовых переводов'
.group 'Реестры почтовых переводов'
.p 60
.var KolList   : integer
     SumList1       : double
     SumList2       : double
     SumList3       : double

     St1      : string
     St2      : string
     St3      : string

     ItogSumma1     : double
     ItogSumma2     : double
     ItogSumma3     : double

    ItSt1      : string
    ItSt2      : string
    ItSt3      : string

     ItSumSt1   : string
     ItSumSt2   : string
     ItSumSt3   : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     cur_Sbor  : string
     cur_Ud    : string
     delimit   : string
.endvar
.begin  KolList   := 0
        SumList1  := 0
        SumList2  := 0
        SumList3  := 0
        ItogSumma1:= 0
        ItogSumma2:= 0
        ItogSumma3:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;

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
 Npp Nom_lsh FIO Cur_Per Cur_Sbor Cur_Ud
.endfields
.begin SumList1:= SumList1+Double(Sum_Per)
       SumList2:= SumList2+Double(Sum_Sbor)
       SumList3:= SumList3+Double(Sum_Ud)
       ItogSumma1:= ItogSumma1+Double(Sum_Per)
       ItogSumma2:= ItogSumma2+Double(Sum_Sbor)
       ItogSumma3:= ItogSumma3+Double(Sum_Ud)
       if RoundSum= 1
        begin
        Cur_per:= DoubleToStr(Double(Sum_per),'666''666''666''666''667')+ delimit;
        Cur_Sbor:= DoubleToStr(Double(Sum_Sbor),'666''666''666''666''667')+ delimit;
        Cur_Ud:= DoubleToStr(Double(Sum_Ud),'666''666''666''666''667')+ delimit;
        end
       else
        begin
        Cur_per := GetStrSummaExt(true, true, Double(Sum_per));
        Cur_Sbor:= GetStrSummaExt(true, true, Double(Sum_Sbor));
        Cur_Ud  := GetStrSummaExt(true, true, Double(Sum_Ud));
        end
 end.
 &&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             │                │          │ Р
 Р     │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&│&&&&&&&&&&│&&&&&&&&&&&&&&&&
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
  SumList2 := Round(SumList2);
  St2 := DoubleToStr(SumList2,'666''666''666''666''667')+ delimit
  SumList3 := Round(SumList3);
  St3 := DoubleToStr(SumList3,'666''666''666''666''667')+ delimit
end
else
  begin
  St1 := GetStrSummaExt(true, true, SumList1);//DoubleToStr(SumList1,'666''666''666''666''667.88')
  St2 := GetStrSummaExt(true, true, SumList2);
  St3 := GetStrSummaExt(true, true, SumList3);
  end
end.
.fields
 KolList
 St1
 St2
 St3
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
  ItogSum_Reestr2 := Round(ItogSum_Reestr2);
  ItSumSt2 := DoubleToStr(ItogSum_Reestr2,'666''666''666''666''667')+ delimit
  ItogSum_Reestr3 := Round(ItogSum_Reestr3);
  ItSumSt3 := DoubleToStr(ItogSum_Reestr3,'666''666''666''666''667')+ delimit
end
else
  begin
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
  ItSumSt2 := GetStrSummaExt(true, true, ItogSum_Reestr2);
  ItSumSt3 := GetStrSummaExt(true, true, ItogSum_Reestr3);
  end;
end.
.fields
 KolList
 ItSumSt1 ItSumSt2 ItSumSt3
 Р SummaStr2
 SummaStr3
 Р'true':'s'
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
     St1       : string
     OtGod    : word
     OtDay    : string
     OtMon    : string
     ItogSumma1: double
     ItSt1      : string
     ItSumSt1   : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     delimit   : string
.endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
.begin SumList1  := SumList1+Double(Sum_Per)
       ItogSumma1:= ItogSumma1+Double(Sum_Per)
      if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
     else
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
 end.
.fields
RTabN
Nom_lsh FIO cur_per
.endFields
 Щ&&&&&&&&&&&&&& Б│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│ Б&&&&&&&&&&&&&&&&& Щ
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, SumList1);
end.
.fields
 KolList
 St1
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
.fields
 KolList
 ItSumSt1
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
.var KolList   : integer
     SumList1       : double
     SumList2       : double
     SumList3       : double
     SummNDS1       : double
     St1            : string
     St2            : string
     St3            : string
     StNDS1          : string
     ItogSumma1     : double
     ItogSumma2     : double
     ItogSumma3     : double
     ItSummNDS1     : double
     ItSt1          : string
     ItSt2          : string
     ItSt3          : string
     ItStNDS1       : string
     ItSumSt1   : string
     ItSumSt2   : string
     ItSumSt3   : string
     ItSumNDS   : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per: string
     cur_Sbor: string
     cur_Ud: string
     cur_NDS: string
     delimit   : string
.endvar
.begin  KolList   := 0
        SumList1  := 0
        SumList2  := 0
        SumList3  := 0
        ItogSumma1:= 0
        ItogSumma2:= 0
        ItogSumma3:= 0
        SummNDS1  := 0
        ItSummNDS1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;

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
 Npp Nom_lsh FIO Cur_Per Cur_Sbor СтвкаНДС Cur_NDS Cur_Ud
.endfields
.begin SumList1:= SumList1+Double(Sum_Per)
       SumList2:= SumList2+Double(Sum_Sbor)
       SummNDS1 := SummNDS1 + Double(СумНДС)
       SumList3:= SumList3+Double(Sum_Ud)
       ItogSumma1:= ItogSumma1+Double(Sum_Per)
       ItogSumma2:= ItogSumma2+Double(Sum_Sbor)
       ItogSumma3:= ItogSumma3+Double(Sum_Ud)
       ItSummNDS1 := ItSummNDS1 + Double(СумНДС)
       if RoundSum= 1
        begin
        cur_per:= DoubleToStr(Double(Sum_per),'666''666''666''666''667')+ delimit;
        cur_Sbor:= DoubleToStr(Double(Sum_Sbor),'666''666''666''666''667')+ delimit;
        cur_Ud:= DoubleToStr(Double(Sum_Ud),'666''666''666''666''667')+ delimit;
        cur_Nds:= DoubleToStr(Double(СумНДС),'666''666''666''666''667')+ delimit;
        end
       else
        begin
        cur_per := GetStrSummaExt(true, true, Double(Sum_per));
        cur_Sbor:= GetStrSummaExt(true, true, Double(Sum_Sbor));
        cur_Ud  := GetStrSummaExt(true, true, Double(Sum_Ud));
        cur_Nds := GetStrSummaExt(true, true, Double(СумНДС));
        end

 end.
 Ш &&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│                │        │      │        │ Ш
 Ш     │@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&│&&&&&&&&│&&&&&&│&&&&&&&&│&&&&&&&&&&&&&&&& Ш
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
  SumList2 := Round(SumList2);
  St2 := DoubleToStr(SumList2,'666''666''666''666''667')+ delimit
  SumList3 := Round(SumList3);
  St3 := DoubleToStr(SumList3,'666''666''666''666''667')+ delimit
  SummNDS1 := Round(SummNDS1);
  StNDS1 := DoubleToStr(SummNDS1,'666''666''666''666''667')+ delimit
end
else
  begin
  St1 := GetStrSummaExt(true, true, SumList1);//DoubleToStr(SumList1,'666''666''666''666''667.88')
  St2 := GetStrSummaExt(true, true, SumList2);
  St3 := GetStrSummaExt(true, true, SumList3);
  StNDS1 := GetStrSummaExt(true, true, SummNDS1);
  end
end.
.fields
 KolList
 St1
 St2
 StNDS1
 St3
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
       SummNDS1 :=0
end.
.]f
.}
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
  ItogSum_Reestr2 := Round(ItogSum_Reestr2);
  ItSumSt2 := DoubleToStr(ItogSum_Reestr2,'666''666''666''666''667')+ delimit
  ItogSum_Reestr3 := Round(ItogSum_Reestr3);
  ItSumSt3 := DoubleToStr(ItogSum_Reestr3,'666''666''666''666''667')+ delimit
  ItSummNDS1 := Round(ItSummNDS1);
  ItSumNDS := DoubleToStr(ItSummNDS1,'666''666''666''666''667')+ delimit
end
else
  begin
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
  ItSumSt2 := GetStrSummaExt(true, true, ItogSum_Reestr2);
  ItSumSt3 := GetStrSummaExt(true, true, ItogSum_Reestr3);
  ItSumNDS := GetStrSummaExt(true, true, ItSummNDS1);
  end;
end.
.fields
 KolList
 ItSumSt1 ItSumSt2  ItSumNDS ItSumSt3
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
path: string[80];
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
path: string[80];
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
path: string[80];
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
path: string[80];
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
     St1       : string
     ItogSumma1: double
     ItSt1     : string
     ItSumSt1  : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     delimit   : string
 .endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
.begin SumList1  := SumList1 + Double(Sum_Per)
       ItogSumma1:= ItogSumma1 + Double(Sum_Per)
       if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
       else
        begin
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
        end;
 end.
.fields
 Npp FIO Nom_lsh BornDate p_seria p_Number PCodePodr cur_per
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, Double(SumList1));
end.
.fields
 KolList
 St1
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
.fields
 KolList
 ItSumSt1
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
     St1       : string
     ItogSumma1: double
     ItSt1     : string
     ItSumSt1  : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     delimit   : string
 .endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
.begin SumList1  := SumList1 + Double(Sum_Per)
       ItogSumma1:= ItogSumma1 + Double(Sum_Per)
       if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
       else
        begin
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
        end;
 end.
.fields
 Npp FIO Nom_lsh BornDate p_seria p_Number PCodePodr cur_per
.endFields
 Р&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&│&&&&&&&&&&&&&&& Р
.}
.[f OverWrite
.begin
if RoundSum = 1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, Double(SumList1));
end.
.fields
 KolList
 St1
 SummaStr2
 SummaStr3
 БДолж_рук Рук_пред Долж_бухг trim(GlavBuh_SignDoc) Гл_бухг Б
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
.fields
 KolList
 ItSumSt1
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
     St1       : string
     ItogSumma1: double
     ItSt1     : string
     ItSumSt1  : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     delimit   : string
 .endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
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
.begin SumList1  := SumList1 + Double(Sum_Per)
       ItogSumma1:= ItogSumma1 + Double(Sum_Per)
       if RoundSum=1
        cur_per:= DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit
       else
        begin
        cur_per:= GetStrSummaExt(true, true, Double(Sum_Per));
        end;
 end.
.fields
 Npp NomCard Nom_lsh FIO cur_per
.endFields
&&&&│@~@@@@@@@@@@@@@@@@@│@~@@@@@@@@@@@@@@@@@@@@@@@@@@@│@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'#&&&&&&&&&&&&&&&& Р
 Р.}
.[f OverWrite
.begin
if RoundSum=1
begin
  SumList1 := Round(SumList1);
  St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
end
else
  St1 := GetStrSummaExt(true, true, Double(SumList1));
end.
.fields
 KolList
 St1
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
.begin
if RoundSum=1
begin
  ItogSum_Reestr1 := Round(ItogSum_Reestr1);
  ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
end
else
  ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
.fields
 KolList
 ItSumSt1
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
.var KolList   : integer
     SumList1  : double
     St1       : string
     ItogSumma1: double
     ItSt1     : string
     ItSumSt1  : string
     SummaStr1 : string
     SummaStr2 : string
     SummaStr3 : string
     cur_per   : string
     cur_perU  : string
     delimit   : string
.endvar
.begin  KolList   := 0
        SumList1  := 0
        ItogSumma1:= 0
    case wGetTune('Fin.Simvol') of
      3,4,6: delimit := '=';
      else
        delimit  := '';
    end;
end.

.{
                                                                                   Форма ДСВ-3
                                       Р Е Е С Т Р
              ЗАСТРАХОВАННЫХ ЛИЦ, ЗА КОТОРЫХ ПЕРЕЧИСЛЕНЫ ДОПОЛНИТЕЛЬНЫЕ
               СТРАХОВЫЕ ВЗНОСЫ НА НАКОПИТЕЛЬНУЮ ЧАСТЬ ТРУДОВОЙ ПЕНСИИ
                     И УПЛАЧЕНЫ СТРАХОВЫЕ ВЗНОСЫ РАБОТОДАТЕЛЯ
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

 Реквизиты работодателя, передающего реестр:
 Регистрационный номер ПФР @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ИНН @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  КПП @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Наименование организации (краткое)
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Платежное поручение от ^ № ^
 Дата исполнения платежного поручения ^
 Период уплаты ^

────┬────────────────────────────┬──────────────────┬────────────────────┬────────────────────
    │                            │                  │Сумма перечисленных │Сумма уплаченных
 №  │           Ф.И.О.           │ Страховой номер  │   дополнительных   │взносов работодателя
п/п │    застрахованного лица    │  индивидуального │страховых взносов на│ (в случае уплаты),
    │                            │  лицевого счета  │накопительную часть │      (руб.)
    │                            │                  │ трудовой пенсии    │
    │                            │                  │       (руб.)       │
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
  SumList1  := SumList1 + Double(Sum_Per) + Double(Sum_PerU)
  ItogSumma1:= ItogSumma1 + Double(Sum_Per)  + Double(Sum_PerU)

  if RoundSum=1
  {
    cur_per := DoubleToStr(Double(sum_per),'666''666''666''666''667')+ delimit ;
    cur_perU:= DoubleToStr(Double(sum_perU),'666''666''666''666''667')+ delimit ;
  }
  else
  {
    cur_per := GetStrSummaExt(true, true, Double(Sum_Per));
    cur_perU:= GetStrSummaExt(true, true, Double(Sum_PerU));
  };
end.
.fields
 Npp FIO Nom_lsh cur_perU cur_per
.endFields
&&&&│@@@@@@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@│&&&&&&&&&&&&&&&&&&&&│&&&&&&&&&&&&&&&&&&&&
.}
.[f OverWrite
.begin
  if RoundSum=1
  {
    SumList1 := Round(SumList1);
    St1 := DoubleToStr(SumList1,'666''666''666''666''667')+ delimit
  }
  else
    St1 := GetStrSummaExt(true, true, SumList1);
end.
.fields
 KolList
 St1
 SummaStr2
 SummaStr3
.endfields
────┴────────────────────────────┴──────────────────┴────────────────────┴────────────────────
 Итого по листу &&&:                                                      &'#&&&&&&&&&&&&&&&&&
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
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               (сумма по листу прописью)
.begin SumList1:=0 end.
.]f
.}
.begin
  if RoundSum=1
  {
    ItogSum_Reestr1 := Round(ItogSum_Reestr1);
    ItSumSt1 := DoubleToStr(ItogSum_Reestr1,'666''666''666''666''667')+ delimit
  }
  else
    ItSumSt1 := GetStrSummaExt(true, true, ItogSum_Reestr1);
end.
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
                             (сумма прописью)

   @@@@@@@@@@@@@@@@@@                           ^
                             _______________    _____________________________________________
                                 (подпись)                  (расшифровка подписи)

   @@@@@@@@@@@@@@@@@@                           ^
                             _______________    _____________________________________________
                                 (подпись)                  (расшифровка подписи)
.begin  KolList:= 0
 end.
.if BrPage
^
.end
.}
.endForm Р
