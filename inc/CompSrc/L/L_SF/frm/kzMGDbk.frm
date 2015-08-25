#doc
Отчет для МГД (Excel 15 и 16, Казахстан)
#end
.set name = 'KzMGDbk'
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
.{ checkenter BookMGD // основной цикл
.fields
  npp        : longint   //1
  nameMC     : string    //2
  codeTNVED  : string    //3
  KatOrgName : string    //4
  isResident : boolean   //5
  KatOrgUNN  : string    //6
  dateDogovor: date      //7
  numDogovor : string    //8
  dateSchFact: date      //9
  numSchFact : string    //10
  OtpEdName  : string    //11
  PrNoNDS    : double    //12
  KolOpl     : double    //13
  Sum        : double    //14
  AkcizSum   : double    //15
  NDS        : double    //16
.endfields
1. Номер по порядку            ^
2. Наименование товара/услуги  ^
3. Код ТН ВЭД                  ^
4. Наименование контрагента    ^
5. Резидент/нерезидент         ^
6. РНН контрагента             ^
7. Дата контракта (договора)   ^
8. Ноиер контракта (договора)  ^
9. Дата СФ                     ^
10.Номер СФ                    ^
11.Отпускные единицы           ^
12.Цена                        &'&&&&&&&&&&&.&&
13.Количество                  &'&&&&&&&&&&&.&&
14.Сумма без косвенных налогов &'&&&&&&&&&&&.&&
15.Акциз                       &'&&&&&&&&&&&.&&
16.НДС                         &'&&&&&&&&&&&.&&
.}
.fields
  sumNoNal_Other: double
  sumAkciz_Other: double
  sumNDS_Other  : double
.endfields
Суммы по "прочим" позициям
1. Сумма без косвенных налогов &'&&&&&&&&&&&.&&
2. Акциз                       &'&&&&&&&&&&&.&&
3. НДС                         &'&&&&&&&&&&&.&&
.endform
