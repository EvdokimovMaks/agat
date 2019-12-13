/////////////////////////////////////////////////////////////////////
//////////////////// таблица для FastReport отчета  /////////////////
/////////////////////////////////////////////////////////////////////
// -a - суффикс для отличающихся полей отчета сроку оплаты аванса
table struct OtchRasprOpl
(
  NRec : tNRec,          //Номер записи
  PID : s200,            //1 PID
  PID_a : s200,          //1 PID 
  NSI : tBarKod,         //2 НСИ
  NomNumber : tBarKod,   //3 Номенклатурный номер
  Prog : s80,            //4 Программа
  ProgR : s20,           //5 Раздел программы
  Obj : s200,            //6 Объект
  Obj_a : s200,          //6_a Объект
  MTP : tName,           //7 МТР
  EI : tName,            //8 ЕИ
  Count : double,        //9 Количество
  Count_a : double,      //9_a Количество
  SpNumber : tDocNumber, //10 Номер спецификации
  DatePost : Date,       //11 Дата поставки
  DatePost_a : Date,     //11_a Дата поставки
  CountPost : tSumma,    //12 Количество поставки
  CountPost_a : tSumma,  //12_a Количество поставки
  SumPost : double,      //13 Сумма поставки
  SumPost_a : double,    //13_a Сумма поставки
  BankGar : string,      //14 Наличие банковской гарантии
  SumAv : double,        //15 Сумма аванса
  RasprOpl : string,     //№ и дата распоряжения на оплату
  PlPorAv : string,      //№ и дата платежного поручения на оплату аванса
  PrDoc : string,        //№ и дата приходного документа
  SchFact : string,      //№ и дата счет-фактуры
  SumOpl : double,       //Сумма окончательной оплаты
  RasprOplF : string,    //№ и дата  распоряжения на оплату по факту поставки
  PlPorF : string        //№ и дата платежного поручения на оплату по факту поставки

)
with index
(
 RasPl01  =  NRec(Unique, Surrogate, Journal)
);

table struct OtchPlPor
(
  NRec : tNRec,          //Номер записи
  cParent : comp,        //ссылка на узел
  SumAv : double,        //Сумма аванса
  RasprOpl : string,     //№ и дата распоряжения на оплату
  PlPorAv : string,      //№ и дата платежного поручения на оплату аванса
  PrDoc : string,        //№ и дата приходного документа
  SchFact : string,      //№ и дата счет-фактуры
  SumOpl : double,       //Сумма окончательной оплаты
  RasprOplF : string,    //№ и дата  распоряжения на оплату по факту поставки
  PlPorF : string        //№ и дата платежного поручения на оплату по факту поставки

)
with index
(
 RPl01  =  NRec(Unique, Surrogate, Journal),
 RPl02  =  cParent
);

/////////////////////////////////////////////////////////////////////


