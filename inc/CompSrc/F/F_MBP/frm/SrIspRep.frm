//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Спецоснастка
// Отчет о сроках использования спецоснастки
//------------------------------------------------------------------------------

#doc
Печать отчета о сроках использования спецоснастки.<br>
#end
.Set Name = 'SRISPREP'
.Hide
.Fields
  dFor : Date
.EndFields
  Дата формирования - ^
.{ SrokIsp_Filters CheckEnter
.Fields
  fltName : String
.EndFields
  Установленные фильтры:
    ^
.}
.{ SrIsp_Info CheckEnter
.Fields
  MBPName
  MBPNum
  MBPInfo
  MBPEdName

  PodrName
  MolName
  CardNom
  TabNum
  FIO

  dIn : date
  dExpl : date
  dEndExpl : date
  SrokIsp : longint
  InInfo

  Kol : double
  Stoim : double
  PercIzn : double
  SumIzn : double
.EndFields
  Наменование - ^
  Номенкл. номер - ^
  Доп. информация из КУ - ^
  Ед. измерения - ^

  Подразделение - ^
  МОЛ - ^
  № ЛК учета - ^
  Таб. номер работника - ^
  ФИО работника - ^

  Дата прихода - ^
  Дата ввода в экспл. - ^
  Дата окончания срока исп. - ^
  Срок использ. - ^
  Доп. информация из прихода - ^

  Количество - ^
  Стоимость - ^
  Процент износа - ^
  Сумма износа - ^
.}
.EndForm

//-------------------------------------------------------------------------

.LinkForm SRISPREP_01 Prototype Is SRISPREP
.NameInList 'Отчет о сроках использования'
.defo Landscape
.p 50
.Fields
  CommonFormHeader
  DateToStr(dFor, 'DD mon YYYY г.')
.EndFields
.Var
  SumStoim : double
.endVar
.function GetMBPSrokStr(Srok : longint) : string;
begin
  if (Srok = 0)
    GetMBPSrokStr := 'Разовая';
  else
  {
    if (Srok = MaxWord)
      GetMBPSrokStr := 'До износа';
    else
    {
      if (Srok < 0)
        GetMBPSrokStr := '';
      else
        GetMBPSrokStr := String(Srok);
    }
  }
end.
.begin
  SumStoim := 0;
end.
 Р^

                                                                     БВедомость наличия на ^ Б

 Установленные фильтры:
.{ SrokIsp_Filters CheckEnter
.Fields
  fltName
.EndFields
   ^
.}

.{ SrIsp_Info CheckEnter
.[h
┌───────────────────────┬───────────────────────┬────────────────┬───────────────────────┬────────┬──────────────┬──────────────────┬──────────┬─────────┬──────────┬──────────────┐
│                       │                       │ Номенклатурный │                       │  Ед.   │              │                  │   Дата   │  Срок   │   Дата   │              │
│          МОЛ          │     Подразделение     │  (инвентарный) │      Наименомание     │ измер. │  Количество  │    Стоимость     │  ввода   │ использ.│  оконч.  │  Примечание  │
│                       │                       │     номер      │                       │        │              │                  │ в экспл. │         │срока исп.│              │
├───────────────────────┼───────────────────────┼────────────────┼───────────────────────┼────────┼──────────────┼──────────────────┼──────────┼─────────┼──────────┼──────────────┤
.]h
.Fields
  MolName
  PodrName
  MBPNum
  MBPName
  MBPEdName

  Kol
  if(wGetTune('Fin.MBP.OstStoim') = 0, Stoim, Stoim - SumIzn)
  if (Longint(dExpl) > 0, DateToStr(dExpl, 'DD.MM.YYYY'), '')
  GetMBPSrokStr(SrokIsp)
  if (Longint(dEndExpl) > 0,DateToStr(dEndExpl, 'DD.MM.YYYY'), '')
  MBPInfo
.EndFields
.begin
  SumStoim := SumStoim + if(wGetTune('Fin.MBP.OstStoim') = 0, Stoim, Stoim - SumIzn)
end.
│@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@│@@@@@@@@@@@@@@@@@@@@@@@│@@@@@@@@│&#'&&&&&&&&.&&│&#'&&&&&&&&&&&&.&&│@~@@@@@@@@│@~@@@@@@@│@~@@@@@@@@│@@@@@@@@@@@@@@│
.[f
└───────────────────────┴───────────────────────┴────────────────┴───────────────────────┴────────┴──────────────┴──────────────────┴──────────┴─────────┴──────────┴──────────────┘
.]f
.}
.Fields
  SumStoim
.EndFields
  БИтого: Б                                                                                                            Б&#'&&&&&&&&&&&&.&& Б Р
.EndForm
