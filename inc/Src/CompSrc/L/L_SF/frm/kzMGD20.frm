#doc
Отчет для формы М20 (Казазахстан)
#end
.set name = 'KzMGD20_21'
!.hide
.fields
  pFormID    : word    //1
  dateStart  : date    //2
  dateEnd    : date    //3
  myKatOrgUNN: string  //4
.endfields
1. Форма ^
2. Начальная дата ^
3. Конечная дата  ^
4. РНН собственной организации ^
.{ checkenter Specif // основной цикл (спецификация)
.fields
  npp        : longint   //1
  nameMCUsl  : string    //2
  codeTNVED  : string    //3
  TipOtgName : string    //4
  stateFrom  : string    //5
  stateTo    : string    //6
  gruzToAddr : string    //6a
  OtpEdName  : string    //7
  KatOrgName : string    //8
  KatOrgAddr : string    //9
  dateDogovor: date      //10
  numDogovor : string    //11
  Passport_Date : date   //12
  Passport_Num  : string //13
  dInvoice   : date      //14
  numInvoice : string    //15
  GTD_Date   : date      //16
  GTD_Num    : string    //17
  rVPrice    : double    //18
  KolOpl     : double    //19
  rPrice     : double    //20
  Dollar     : string    //21
  datFactOpl : date      //22
  ndsFact    : double    //23
  ndsOpl     : double    //24
  akcizOpl   : double    //25
  tpOpl      : double    //26
.endfields
1. Номер по порядку            ^
2. Наименование товара/услуги  ^
3. Код ТН ВЭД                  ^
4. Условия поставки            ^
5. Место отгрузки (страна)     ^
6. Пункт доставки (страна)     ^
6a.Пункт доставки (адрес)      ^
7. Отпускные единицы           ^
8. Наименование контрагента    ^
9. Адрес контрагента           ^
10.Дата контракта (договора)   ^
11.Ноиер контракта (договора)  ^
12.Паспорт сделки - Дата       ^
13.Паспорт сделки - Номер      ^
14.Инвойс - Дата               ^
15.Инвойс - Номер              ^
16.ГТД - Дата                  ^
17.ГТД - Номер                 ^
18.Стоимость ед. продукции(вал.) &'&&&&&&&&&&&.&&
19.Кол-во                        &'&&&&&&&&&&&.&&
20.Стоимость ед. продукции(НДЕ)  &'&&&&&&&&&&&.&&
21.Валюта контракта            ^
22.Дата фактической оплаты     ^
23.Фактически уплачено НДС     &'&&&&&&&&&&&.&&
24.Уплачено - НДС              &'&&&&&&&&&&&.&&
25.Уплачено - Акциз            &'&&&&&&&&&&&.&&
26.Уплачено - тамож. пошлины   &'&&&&&&&&&&&.&&
.}
.endform
