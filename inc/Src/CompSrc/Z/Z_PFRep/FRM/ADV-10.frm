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
.set name = 'ADV-10'
.hide
.fields
Adv10Pach
CodeOKPO
INN
RealInn
KPP
Pred
CurDate:date
квартал
TruePeriod
God
Month1 Month2 : word
KolDocInPach
CounterPach
CounterDoc
Dolgok
Category
SZV10_1_1:double  SZV10_2_1:double   Sredch1:double  TarifConst1  MonthVznos1:double   MonthVznosOut1:double
SZV10_1_2:double  SZV10_2_2:double   Sredch2:double  TarifConst2  MonthVznos2:double   MonthVznosOut2:double
SZV10_1_3:double  SZV10_2_3:double   Sredch3:double  TarifConst3  MonthVznos3:double   MonthVznosOut3:double
SZV10_1_4:double  SZV10_2_4:double   Sredch4:double  TarifConst4  MonthVznos4:double   MonthVznosOut4:double
SZV10_1_5:double  SZV10_2_5:double   Sredch5:double  TarifConst5  MonthVznos5:double   MonthVznosOut5:double
SZV10_1_6:double  SZV10_2_6:double   Sredch6:double  TarifConst6  MonthVznos6:double   MonthVznosOut6:double
SZV10_1_7:double  SZV10_2_7:double   Sredch7:double  TarifConst7  MonthVznos7:double   MonthVznosOut7:double
SZV10_1_8:double  SZV10_2_8:double   Sredch8:double  TarifConst8  MonthVznos8:double   MonthVznosOut8:double
SZV10_1_9:double  SZV10_2_9:double   Sredch9:double  TarifConst9  MonthVznos9:double   MonthVznosOut9:double
SZV10_1_10:double SZV10_2_10:double  Sredch10:double TarifConst10 MonthVznos10:double  MonthVznosOut10:double
SZV10_1_11:double SZV10_2_11:double  Sredch11:double TarifConst11 MonthVznos11:double  MonthVznosOut11:double
SZV10_1_12:double SZV10_2_12:double  Sredch12:double TarifConst12 MonthVznos12:double  MonthVznosOut12:double
 Dolg_ruk
 ФИО_руководителя
 ФИО_исполнителя
 Число Месяц Год
.endfields
.{ CheckEnter ADV10
^
^^^^^^^^^^^
^^ ^^
.{ CheckEnter ADV10_Kateg
^
^^^^^^^^^^^^
^^^^^^^^^^^^
^^^^^^^^^^^^
^^^^^^^^^^^^
^^^^^^^^^^^^
^^^^^^^^^^^^
.}
^^^^^^
.if aDeadLine
.end
.}
.endform
!
.linkform 'ADV-10_MAGNITlink1' prototype is 'ADV-10'
.nameinlist'Файл для ПФ на МН (в.03.00)'
.group 'АДВ-10 (в.03.00)'
.var
  NumDoc : word;
  _Adv10Pach : LongInt;
  CountNotZeroSumms:word;
  Итого1,Итого2,Итого3,Итого4: double;
  my_inn : string;
  my_pred: string[100];
 ConstM1,ConstM2,ConstM3,ConstM4,ConstM5, ConstM6,
 ConstM7, ConstM8, ConstM9, ConstM10, ConstM11, ConstM12: string;
vSredch1,  vMonthVznos1, v2MonthVznos1,
vSredch2,  vMonthVznos2, v2MonthVznos2,
vSredch3,  vMonthVznos3, v2MonthVznos3,
vSredch4,  vMonthVznos4, v2MonthVznos4,
vSredch5,  vMonthVznos5, v2MonthVznos5,
vSredch6,  vMonthVznos6, v2MonthVznos6,
vSredch7,  vMonthVznos7, v2MonthVznos7,
vSredch8,  vMonthVznos8, v2MonthVznos8,
vSredch9,  vMonthVznos9, v2MonthVznos9,
vSredch10, vMonthVznos10, v2MonthVznos10,
vSredch11, vMonthVznos11, v2MonthVznos11,
vSredch12, vMonthVznos12, v2MonthVznos12 : double;
 FSum1,
 FSum2,
 FSum3,
 FSum4,
 FSum5,
 FSum6,
 FSum7,
 FSum8,
 FSum9,
 FSum10,
 FSum11,
 FSum12 : boolean;
.endvar
.begin
  NumDoc := 0;
  _Adv10Pach :=    LongInt(Adv10Pach);
  my_inn  := Upcase( Trim( Replace( inn, '"', '''' ) ) );
  my_pred := Upcase( Trim( Replace( Pred, '"', '''' ) ) );
 end.
.{ CheckEnter ADV10
.fields
   my_inn
   RealInn
   KPP
   my_pred
   _Adv10Pach
   curdate
.endfields
"ЗГЛВ","03.00"
"РБТД","РБТД","^",^,^,"^"
"ПАЧК",^,"ОПИСЬ","^",1,0,0
"ТИПД","СВОД","",1
.{ CheckEnter ADV10_Kateg
.begin
   NumDoc := NumDoc +1;
   CountNotZeroSumms := 0;
   FSum1 := false;FSum2 := false;FSum3 := false;
   FSum4 := false;FSum5 := false;FSum6 := false;
   FSum7 := false;FSum8 := false;FSum9 := false;
   FSum10 := false;FSum11 := false;FSum12 := false;
   Итого1 := 0;
   Итого2 := 0;
   Итого3 := 0;
   Итого4 := 0;
  ConstM1   := '';   ConstM2   := '';
  ConstM3   := '';   ConstM4   := '';
  ConstM5   := '';   ConstM6   := '';
  ConstM7   := '';   ConstM8   := '';
  ConstM9   := '';   ConstM10   := '';
  ConstM11   := '';   ConstM12   := '';
vMonthVznos1:= 0; v2MonthVznos1:= 0;
vMonthVznos2:= 0; v2MonthVznos2:= 0;
vMonthVznos3:= 0; v2MonthVznos3:= 0;
vMonthVznos4:= 0; v2MonthVznos4:= 0;
vMonthVznos5:= 0; v2MonthVznos5:= 0;
vMonthVznos6:= 0; v2MonthVznos6:= 0;
vMonthVznos7:= 0; v2MonthVznos7:= 0;
vMonthVznos8:= 0; v2MonthVznos8:= 0;
vMonthVznos9:= 0; v2MonthVznos9:= 0;
vMonthVznos10:= 0; v2MonthVznos10:= 0;
vMonthVznos11:= 0; v2MonthVznos11:= 0;
vMonthVznos12:= 0; v2MonthVznos12 := 0;
  Итого1 := Итого1 + double(SZV10_1_1) + double(SZV10_1_2)+ double(SZV10_1_3)
                         + double(SZV10_1_4) + double(SZV10_1_5)+ double(SZV10_1_6)
                         + double(SZV10_1_7) + double(SZV10_1_8)+ double( SZV10_1_9)
                         + double(SZV10_1_10)+ double(SZV10_1_11)+ double(SZV10_1_12);
  Итого2 := Итого2 + double(SZV10_2_1) + double(SZV10_2_2)+ double(SZV10_2_3)
                         + double(SZV10_2_4) + double(SZV10_2_5)+ double(SZV10_2_6)
                         + double(SZV10_2_7) + double(SZV10_2_8)+ double(SZV10_2_9)
                         + double(SZV10_2_10)+ double(SZV10_2_11)+ double(SZV10_2_12);

   vSredch1 := Double(Sredch1);
   vMonthVznos1 := Double(MonthVznos1);
   v2MonthVznos1 := Double(MonthVznosOut1);
   ConstM1 := TarifConst1;
   Итого3 := vMonthVznos1;
   Итого4 := v2MonthVznos1;
   if (Month2 >= 2)
   {
     vSredch2 := Double(Sredch2);
     vMonthVznos2 :=  vMonthVznos1 +  Double(MonthVznos2);
     v2MonthVznos2 := v2MonthVznos1 + Double(MonthVznosOut2);
     ConstM2 := TarifConst2;
     Итого3 := vMonthVznos2;
     Итого4 := v2MonthVznos2;
   }
   if (Month2 >= 3)
   {
     vSredch3 := Double(Sredch3);
     vMonthVznos3 :=  vMonthVznos2 +  Double(MonthVznos3);
     v2MonthVznos3 := v2MonthVznos2 + Double(MonthVznosOut3);
     ConstM3 := TarifConst3;
     Итого3 := vMonthVznos3;
     Итого4 := v2MonthVznos3;
   }
   if (Month2 >= 4)
   {
   vSredch4 := Double(Sredch4);
   vMonthVznos4 :=  vMonthVznos3 +  Double(MonthVznos4);
   v2MonthVznos4 := v2MonthVznos3 + Double(MonthVznosOut4);
     ConstM4 := TarifConst4;
     Итого3 := vMonthVznos4;
     Итого4 := v2MonthVznos4;
   }
   if (Month2 >= 5)
   {
     vSredch5 := Double(Sredch5);
     vMonthVznos5 :=  vMonthVznos4 +  Double(MonthVznos5);
     v2MonthVznos5 := v2MonthVznos4 + Double(MonthVznosOut5);
     ConstM5 := TarifConst5;
     Итого3 := vMonthVznos5;
     Итого4 := v2MonthVznos5;
   }
   if (Month2 >= 6)
   {
     vSredch6 := Double(Sredch6);
     vMonthVznos6 :=  vMonthVznos5 +  Double(MonthVznos6);
     v2MonthVznos6 := v2MonthVznos5 + Double(MonthVznosOut6);
     ConstM6 := TarifConst6;
     Итого3 := vMonthVznos6;
     Итого4 := v2MonthVznos6;
   }
   if (Month2 >= 7)
   {
     vSredch7 := Double(Sredch7);
     vMonthVznos7 :=  vMonthVznos6 +  Double(MonthVznos7);
     v2MonthVznos7 := v2MonthVznos6 + Double(MonthVznosOut7);
     ConstM7 := TarifConst7;
     Итого3 := vMonthVznos7;
     Итого4 := v2MonthVznos7;
   }
   if (Month2 >= 8)
   {
     vSredch8 := Double(Sredch8);
     vMonthVznos8 :=  vMonthVznos7 +  Double(MonthVznos8);
     v2MonthVznos8 := v2MonthVznos7 + Double(MonthVznosOut8);
     ConstM8 := TarifConst8;
     Итого3 := vMonthVznos8;
     Итого4 := v2MonthVznos8;
   }
   if (Month2 >= 9)
   {
     vSredch9 := Double(Sredch9);
     vMonthVznos9 :=  vMonthVznos8 +  Double(MonthVznos9);
     v2MonthVznos9 := v2MonthVznos8 + Double(MonthVznosOut9);
     ConstM9 := TarifConst9;
     Итого3 := vMonthVznos9;
     Итого4 := v2MonthVznos9;
   }
   if (Month2 >= 10)
   {
     vSredch10 := Double(Sredch10);
     vMonthVznos10 :=  vMonthVznos9 +  Double(MonthVznos10);
     v2MonthVznos10 := v2MonthVznos9 + Double(MonthVznosOut10);
     ConstM10 := TarifConst10;
     Итого3 := vMonthVznos10;
     Итого4 := v2MonthVznos10;
   }
   if (Month2 >= 11)
   {
     vSredch11 := Double(Sredch11);
     vMonthVznos11 :=  vMonthVznos10 +  Double(MonthVznos11);
     v2MonthVznos11 := v2MonthVznos10 + Double(MonthVznosOut11);
     ConstM11 := TarifConst11;
     Итого3 := vMonthVznos11;
     Итого4 := v2MonthVznos11;
   }
   if (Month2 = 12)
   {
     vSredch12 := Double(Sredch12);
     vMonthVznos12 :=  vMonthVznos11 +  Double(MonthVznos12);
     v2MonthVznos12 := v2MonthVznos11 + Double(MonthVznosOut12);
     ConstM12 := TarifConst12;
     Итого3 := vMonthVznos12;
     Итого4 := v2MonthVznos12;
   }
  if (Double(SZV10_1_1)>0)or(Double(SZV10_2_1)>0)or(vSredch1>0)or(vMonthVznos1>0)or(v2MonthVznos1>0)
  {
   FSum1 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_2)>0)or(Double(SZV10_2_2)>0)or(vSredch2>0)or(vMonthVznos2>0)or(v2MonthVznos2>0)
  {
   FSum2 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_3)>0)or(Double(SZV10_2_3)>0)or(vSredch3>0)or(vMonthVznos3>0)or(v2MonthVznos3>0)
  {
   FSum3 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_4)>0)or(Double(SZV10_2_4)>0)or(vSredch4>0)or(vMonthVznos4>0)or(v2MonthVznos4>0)
  {
   FSum4 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_5)>0)or(Double(SZV10_2_5)>0)or(vSredch5>0)or(vMonthVznos5>0)or(v2MonthVznos5>0)
  {
   FSum5 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_6)>0)or(Double(SZV10_2_6)>0)or(vSredch6>0)or(vMonthVznos6>0)or(v2MonthVznos6>0)
  {
   FSum6 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_7)>0)or(Double(SZV10_2_7)>0)or(vSredch7>0)or(vMonthVznos7>0)or(v2MonthVznos7>0)
  {
   FSum7 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_8)>0)or(Double(SZV10_2_8)>0)or(vSredch8>0)or(vMonthVznos8>0)or(v2MonthVznos8>0)
  {
   FSum8 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_9)>0)or(Double(SZV10_2_9)>0)or(vSredch9>0)or(vMonthVznos9>0)or(v2MonthVznos9>0)
  {
   FSum9 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_10)>0)or(Double(SZV10_2_10)>0)or(vSredch10>0)or(vMonthVznos10>0)or(v2MonthVznos10>0)
  {
   FSum10 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_11)>0)or(Double(SZV10_2_11)>0)or(vSredch11>0)or(vMonthVznos11>0)or(v2MonthVznos11>0)
  {
   FSum11 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_12)>0)or(Double(SZV10_2_12)>0)or(vSredch12>0)or(vMonthVznos12>0)or(v2MonthVznos12>0)
  {
   FSum12 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
end.
.fields
NumDoc
CounterPach
CounterDoc
Category
TruePeriod
God
String(Итого1)
String(Итого2)
String(Итого3)
String(Итого4)
curdate
CountNotZeroSumms
.endfields
"СВОД",^,^,^,0.00,"^",^,^,"РУБ",^,^,^,^,"^",^
.{?internal;(FSum1)
.fields
Sredch1
String(SZV10_1_1)
String(SZV10_2_1)
ConstM1
String(vMonthVznos1)
String(v2MonthVznos1)
.endfields
"ОБЩС",1,^,^,^,"^",^,^
.}
.{?internal;(FSum2)
.fields
Sredch2
String(SZV10_1_2)
String(SZV10_2_2)
ConstM2
String(vMonthVznos2)
String(v2MonthVznos2)
.endfields
"ОБЩС",2,^,^,^,"^",^,^
.}
.{?internal;(FSum3)
.fields
Sredch3
String(SZV10_1_3)
String(SZV10_2_3)
ConstM3
String(vMonthVznos3)
String(v2MonthVznos3)
.endfields
"ОБЩС",3,^,^,^,"^",^,^
.}
.{?internal;(FSum4)
.fields
Sredch4
String(SZV10_1_4)
String(SZV10_2_4)
ConstM4
String(vMonthVznos4)
String(v2MonthVznos4)
.endfields
"ОБЩС",4,^,^,^,"^",^,^
.}
.{?internal;(FSum5)
.fields
Sredch5
String(SZV10_1_5)
String(SZV10_2_5)
ConstM5
String(vMonthVznos5)
String(v2MonthVznos5)
.endfields
"ОБЩС",5,^,^,^,"^",^,^
.}
.{?internal;(FSum6)
.fields
Sredch6
String(SZV10_1_6)
String(SZV10_2_6)
ConstM6
String(vMonthVznos6)
String(v2MonthVznos6)
.endfields
"ОБЩС",6,^,^,^,"^",^,^
.}
.{?internal;(FSum7)
.fields
Sredch7
String(SZV10_1_7)
String(SZV10_2_7)
ConstM7
String(vMonthVznos7)
String(v2MonthVznos7)
.endfields
"ОБЩС",7,^,^,^,"^",^,^
.}
.{?internal;(FSum8)
.fields
Sredch8
String(SZV10_1_8)
String(SZV10_2_8)
ConstM8
String(vMonthVznos8)
String(v2MonthVznos8)
.endfields
"ОБЩС",8,^,^,^,"^",^,^
.}
.{?internal;(FSum9)
.fields
Sredch9
String(SZV10_1_9)
String(SZV10_2_9)
ConstM9
String(vMonthVznos9)
String(v2MonthVznos9)
.endfields
"ОБЩС",9,^,^,^,"^",^,^
.}
.{?internal;(FSum10)
.fields
Sredch10
String(SZV10_1_10)
String(SZV10_2_10)
ConstM10
String(vMonthVznos10)
String(v2MonthVznos10)
.endfields
"ОБЩС",10,^,^,^,"^",^,^
.}
.{?internal;(FSum11)
.fields
Sredch11
String(SZV10_1_11)
String(SZV10_2_11)
ConstM11
String(vMonthVznos11)
String(v2MonthVznos11)
.endfields
"ОБЩС",11,^,^,^,"^",^,^
.}
.{?internal;(FSum12)
.fields
Sredch12
String(SZV10_1_12)
String(SZV10_2_12)
ConstM12
String(vMonthVznos12)
String(v2MonthVznos12)
.endfields
"ОБЩС",12,^,^,^,"^",^,^
.}
.}
.if aDeadLine
.fields
_Adv10Pach
.endfields
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.begin _Adv10Pach := _Adv10Pach + 1 end.
.end
.}
.endform
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'ADV-10_MAGNITlink1_1' prototype is 'ADV-10'
.nameinlist'Файл для ПФ на МН (в.04.00)'
.group 'АДВ-10 (в.03.00)'
.var
  NumDoc : word;
  _Adv10Pach : LongInt;
  CountNotZeroSumms:word;
  Итого1,Итого2,Итого3,Итого4: double;
  my_inn : string;
  my_pred: string[100];
 ConstM1,ConstM2,ConstM3,ConstM4,ConstM5, ConstM6,
 ConstM7, ConstM8, ConstM9, ConstM10, ConstM11, ConstM12: string;
vSredch1,  vMonthVznos1, v2MonthVznos1,
vSredch2,  vMonthVznos2, v2MonthVznos2,
vSredch3,  vMonthVznos3, v2MonthVznos3,
vSredch4,  vMonthVznos4, v2MonthVznos4,
vSredch5,  vMonthVznos5, v2MonthVznos5,
vSredch6,  vMonthVznos6, v2MonthVznos6,
vSredch7,  vMonthVznos7, v2MonthVznos7,
vSredch8,  vMonthVznos8, v2MonthVznos8,
vSredch9,  vMonthVznos9, v2MonthVznos9,
vSredch10, vMonthVznos10, v2MonthVznos10,
vSredch11, vMonthVznos11, v2MonthVznos11,
vSredch12, vMonthVznos12, v2MonthVznos12 : double;
 FSum1,
 FSum2,
 FSum3,
 FSum4,
 FSum5,
 FSum6,
 FSum7,
 FSum8,
 FSum9,
 FSum10,
 FSum11,
 FSum12 : boolean;
.endvar
.begin
  NumDoc := 0;
  _Adv10Pach :=    LongInt(Adv10Pach);
  my_inn  := Upcase( Trim( Replace( inn, '"', '''' ) ) );
  my_pred := Upcase( Trim( Replace( Pred, '"', '''' ) ) );
 end.
.{ CheckEnter ADV10
.fields
   my_inn
   RealInn
   KPP
   my_pred
.endfields
"ЗГЛВ","04.00","ГАЛАКТИКА","5.84"
"РБТД","РБТД","^",^,^,"^"
.fields
   _Adv10Pach
   curdate
   TruePeriod
   God
.endfields
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",^,^,0.00,0.00,0.00,0.00,0.00,0,0
"ТИПД","СВОД",1
.{ CheckEnter ADV10_Kateg
.begin
   NumDoc := NumDoc +1;
   CountNotZeroSumms := 0;
   FSum1 := false;FSum2 := false;FSum3 := false;
   FSum4 := false;FSum5 := false;FSum6 := false;
   FSum7 := false;FSum8 := false;FSum9 := false;
   FSum10 := false;FSum11 := false;FSum12 := false;
   Итого1 := 0;
   Итого2 := 0;
   Итого3 := 0;
   Итого4 := 0;
  ConstM1   := '';   ConstM2   := '';
  ConstM3   := '';   ConstM4   := '';
  ConstM5   := '';   ConstM6   := '';
  ConstM7   := '';   ConstM8   := '';
  ConstM9   := '';   ConstM10   := '';
  ConstM11   := '';   ConstM12   := '';
vMonthVznos1:= 0; v2MonthVznos1:= 0;
vMonthVznos2:= 0; v2MonthVznos2:= 0;
vMonthVznos3:= 0; v2MonthVznos3:= 0;
vMonthVznos4:= 0; v2MonthVznos4:= 0;
vMonthVznos5:= 0; v2MonthVznos5:= 0;
vMonthVznos6:= 0; v2MonthVznos6:= 0;
vMonthVznos7:= 0; v2MonthVznos7:= 0;
vMonthVznos8:= 0; v2MonthVznos8:= 0;
vMonthVznos9:= 0; v2MonthVznos9:= 0;
vMonthVznos10:= 0; v2MonthVznos10:= 0;
vMonthVznos11:= 0; v2MonthVznos11:= 0;
vMonthVznos12:= 0; v2MonthVznos12 := 0;
  Итого1 := Итого1 + double(SZV10_1_1) + double(SZV10_1_2)+ double(SZV10_1_3)
                         + double(SZV10_1_4) + double(SZV10_1_5)+ double(SZV10_1_6)
                         + double(SZV10_1_7) + double(SZV10_1_8)+ double( SZV10_1_9)
                         + double(SZV10_1_10)+ double(SZV10_1_11)+ double(SZV10_1_12);
  Итого2 := Итого2 + double(SZV10_2_1) + double(SZV10_2_2)+ double(SZV10_2_3)
                         + double(SZV10_2_4) + double(SZV10_2_5)+ double(SZV10_2_6)
                         + double(SZV10_2_7) + double(SZV10_2_8)+ double(SZV10_2_9)
                         + double(SZV10_2_10)+ double(SZV10_2_11)+ double(SZV10_2_12);

   vSredch1 := Double(Sredch1);
   vMonthVznos1 := Double(MonthVznos1);
   v2MonthVznos1 := Double(MonthVznosOut1);
   ConstM1 := TarifConst1;
   Итого3 := vMonthVznos1;
   Итого4 := v2MonthVznos1;
   if (Month2 >= 2)
   {
     vSredch2 := Double(Sredch2);
     vMonthVznos2 :=  vMonthVznos1 +  Double(MonthVznos2);
     v2MonthVznos2 := v2MonthVznos1 + Double(MonthVznosOut2);
     ConstM2 := TarifConst2;
     Итого3 := vMonthVznos2;
     Итого4 := v2MonthVznos2;
   }
   if (Month2 >= 3)
   {
     vSredch3 := Double(Sredch3);
     vMonthVznos3 :=  vMonthVznos2 +  Double(MonthVznos3);
     v2MonthVznos3 := v2MonthVznos2 + Double(MonthVznosOut3);
     ConstM3 := TarifConst3;
     Итого3 := vMonthVznos3;
     Итого4 := v2MonthVznos3;
   }
   if (Month2 >= 4)
   {
   vSredch4 := Double(Sredch4);
   vMonthVznos4 :=  vMonthVznos3 +  Double(MonthVznos4);
   v2MonthVznos4 := v2MonthVznos3 + Double(MonthVznosOut4);
     ConstM4 := TarifConst4;
     Итого3 := vMonthVznos4;
     Итого4 := v2MonthVznos4;
   }
   if (Month2 >= 5)
   {
     vSredch5 := Double(Sredch5);
     vMonthVznos5 :=  vMonthVznos4 +  Double(MonthVznos5);
     v2MonthVznos5 := v2MonthVznos4 + Double(MonthVznosOut5);
     ConstM5 := TarifConst5;
     Итого3 := vMonthVznos5;
     Итого4 := v2MonthVznos5;
   }
   if (Month2 >= 6)
   {
     vSredch6 := Double(Sredch6);
     vMonthVznos6 :=  vMonthVznos5 +  Double(MonthVznos6);
     v2MonthVznos6 := v2MonthVznos5 + Double(MonthVznosOut6);
     ConstM6 := TarifConst6;
     Итого3 := vMonthVznos6;
     Итого4 := v2MonthVznos6;
   }
   if (Month2 >= 7)
   {
     vSredch7 := Double(Sredch7);
     vMonthVznos7 :=  vMonthVznos6 +  Double(MonthVznos7);
     v2MonthVznos7 := v2MonthVznos6 + Double(MonthVznosOut7);
     ConstM7 := TarifConst7;
     Итого3 := vMonthVznos7;
     Итого4 := v2MonthVznos7;
   }
   if (Month2 >= 8)
   {
     vSredch8 := Double(Sredch8);
     vMonthVznos8 :=  vMonthVznos7 +  Double(MonthVznos8);
     v2MonthVznos8 := v2MonthVznos7 + Double(MonthVznosOut8);
     ConstM8 := TarifConst8;
     Итого3 := vMonthVznos8;
     Итого4 := v2MonthVznos8;
   }
   if (Month2 >= 9)
   {
     vSredch9 := Double(Sredch9);
     vMonthVznos9 :=  vMonthVznos8 +  Double(MonthVznos9);
     v2MonthVznos9 := v2MonthVznos8 + Double(MonthVznosOut9);
     ConstM9 := TarifConst9;
     Итого3 := vMonthVznos9;
     Итого4 := v2MonthVznos9;
   }
   if (Month2 >= 10)
   {
     vSredch10 := Double(Sredch10);
     vMonthVznos10 :=  vMonthVznos9 +  Double(MonthVznos10);
     v2MonthVznos10 := v2MonthVznos9 + Double(MonthVznosOut10);
     ConstM10 := TarifConst10;
     Итого3 := vMonthVznos10;
     Итого4 := v2MonthVznos10;
   }
   if (Month2 >= 11)
   {
     vSredch11 := Double(Sredch11);
     vMonthVznos11 :=  vMonthVznos10 +  Double(MonthVznos11);
     v2MonthVznos11 := v2MonthVznos10 + Double(MonthVznosOut11);
     ConstM11 := TarifConst11;
     Итого3 := vMonthVznos11;
     Итого4 := v2MonthVznos11;
   }
   if (Month2 = 12)
   {
     vSredch12 := Double(Sredch12);
     vMonthVznos12 :=  vMonthVznos11 +  Double(MonthVznos12);
     v2MonthVznos12 := v2MonthVznos11 + Double(MonthVznosOut12);
     ConstM12 := TarifConst12;
     Итого3 := vMonthVznos12;
     Итого4 := v2MonthVznos12;
   }
  if (Double(SZV10_1_1)>0)or(Double(SZV10_2_1)>0)or(vSredch1>0)or(vMonthVznos1>0)or(v2MonthVznos1>0)
  {
   FSum1 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_2)>0)or(Double(SZV10_2_2)>0)or(vSredch2>0)or(vMonthVznos2>0)or(v2MonthVznos2>0)
  {
   FSum2 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_3)>0)or(Double(SZV10_2_3)>0)or(vSredch3>0)or(vMonthVznos3>0)or(v2MonthVznos3>0)
  {
   FSum3 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_4)>0)or(Double(SZV10_2_4)>0)or(vSredch4>0)or(vMonthVznos4>0)or(v2MonthVznos4>0)
  {
   FSum4 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_5)>0)or(Double(SZV10_2_5)>0)or(vSredch5>0)or(vMonthVznos5>0)or(v2MonthVznos5>0)
  {
   FSum5 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_6)>0)or(Double(SZV10_2_6)>0)or(vSredch6>0)or(vMonthVznos6>0)or(v2MonthVznos6>0)
  {
   FSum6 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_7)>0)or(Double(SZV10_2_7)>0)or(vSredch7>0)or(vMonthVznos7>0)or(v2MonthVznos7>0)
  {
   FSum7 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_8)>0)or(Double(SZV10_2_8)>0)or(vSredch8>0)or(vMonthVznos8>0)or(v2MonthVznos8>0)
  {
   FSum8 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_9)>0)or(Double(SZV10_2_9)>0)or(vSredch9>0)or(vMonthVznos9>0)or(v2MonthVznos9>0)
  {
   FSum9 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_10)>0)or(Double(SZV10_2_10)>0)or(vSredch10>0)or(vMonthVznos10>0)or(v2MonthVznos10>0)
  {
   FSum10 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_11)>0)or(Double(SZV10_2_11)>0)or(vSredch11>0)or(vMonthVznos11>0)or(v2MonthVznos11>0)
  {
   FSum11 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
  if (Double(SZV10_1_12)>0)or(Double(SZV10_2_12)>0)or(vSredch12>0)or(vMonthVznos12>0)or(v2MonthVznos12>0)
  {
   FSum12 := true;
   CountNotZeroSumms := CountNotZeroSumms + 1;
  }
end.
.fields
NumDoc
CounterPach
CounterDoc
Category
TruePeriod
God
String(Итого1)
String(Итого2)
String(Итого3)
String(Итого4)
curdate
CountNotZeroSumms
.endfields
"СВОД",^,^,^,0.00,"^",^,^,"РУБ",^,^,^,^,"^",^
.{?internal;(FSum1)
.fields
Sredch1
String(SZV10_1_1)
String(SZV10_2_1)
ConstM1
String(vMonthVznos1)
String(v2MonthVznos1)
.endfields
"ОБЩС",1,^,^,^,"^",^,^
.}
.{?internal;(FSum2)
.fields
Sredch2
String(SZV10_1_2)
String(SZV10_2_2)
ConstM2
String(vMonthVznos2)
String(v2MonthVznos2)
.endfields
"ОБЩС",2,^,^,^,"^",^,^
.}
.{?internal;(FSum3)
.fields
Sredch3
String(SZV10_1_3)
String(SZV10_2_3)
ConstM3
String(vMonthVznos3)
String(v2MonthVznos3)
.endfields
"ОБЩС",3,^,^,^,"^",^,^
.}
.{?internal;(FSum4)
.fields
Sredch4
String(SZV10_1_4)
String(SZV10_2_4)
ConstM4
String(vMonthVznos4)
String(v2MonthVznos4)
.endfields
"ОБЩС",4,^,^,^,"^",^,^
.}
.{?internal;(FSum5)
.fields
Sredch5
String(SZV10_1_5)
String(SZV10_2_5)
ConstM5
String(vMonthVznos5)
String(v2MonthVznos5)
.endfields
"ОБЩС",5,^,^,^,"^",^,^
.}
.{?internal;(FSum6)
.fields
Sredch6
String(SZV10_1_6)
String(SZV10_2_6)
ConstM6
String(vMonthVznos6)
String(v2MonthVznos6)
.endfields
"ОБЩС",6,^,^,^,"^",^,^
.}
.{?internal;(FSum7)
.fields
Sredch7
String(SZV10_1_7)
String(SZV10_2_7)
ConstM7
String(vMonthVznos7)
String(v2MonthVznos7)
.endfields
"ОБЩС",7,^,^,^,"^",^,^
.}
.{?internal;(FSum8)
.fields
Sredch8
String(SZV10_1_8)
String(SZV10_2_8)
ConstM8
String(vMonthVznos8)
String(v2MonthVznos8)
.endfields
"ОБЩС",8,^,^,^,"^",^,^
.}
.{?internal;(FSum9)
.fields
Sredch9
String(SZV10_1_9)
String(SZV10_2_9)
ConstM9
String(vMonthVznos9)
String(v2MonthVznos9)
.endfields
"ОБЩС",9,^,^,^,"^",^,^
.}
.{?internal;(FSum10)
.fields
Sredch10
String(SZV10_1_10)
String(SZV10_2_10)
ConstM10
String(vMonthVznos10)
String(v2MonthVznos10)
.endfields
"ОБЩС",10,^,^,^,"^",^,^
.}
.{?internal;(FSum11)
.fields
Sredch11
String(SZV10_1_11)
String(SZV10_2_11)
ConstM11
String(vMonthVznos11)
String(v2MonthVznos11)
.endfields
"ОБЩС",11,^,^,^,"^",^,^
.}
.{?internal;(FSum12)
.fields
Sredch12
String(SZV10_1_12)
String(SZV10_2_12)
ConstM12
String(vMonthVznos12)
String(v2MonthVznos12)
.endfields
"ОБЩС",12,^,^,^,"^",^,^
.}
.}
.if aDeadLine
.fields
_Adv10Pach
.endfields
___КОНЕЦ ^ ПАЧКИ!!!_Разрежьте_здесь!
.begin _Adv10Pach := _Adv10Pach + 1 end.
.end
.}
.endform
.linkform 'ADV-10_link2' prototype is 'ADV-10'
.nameinlist'Сводная ведомость АДВ-10 '
.group 'АДВ-10 (в.03.00)'
.p 70
.var
 ConstM1,ConstM2,ConstM3,ConstM4,ConstM5, ConstM6,
 ConstM7, ConstM8, ConstM9, ConstM10, ConstM11, ConstM12: string;
 NumDoc : word;
 SZV1_ИТОГ, SZV2_ИТОГ, SZV5_ИТОГ,SZV6_ИТОГ : double;
 _Adv10Pach : LongInt;
 p1,p2,p3,p4                     : string
 Inloop                          : word;
vMonthVznos1, v2MonthVznos1,
vMonthVznos2, v2MonthVznos2,
vMonthVznos3, v2MonthVznos3,
vMonthVznos4, v2MonthVznos4,
vMonthVznos5, v2MonthVznos5,
vMonthVznos6, v2MonthVznos6,
vMonthVznos7, v2MonthVznos7,
vMonthVznos8, v2MonthVznos8,
vMonthVznos9, v2MonthVznos9,
vMonthVznos10, v2MonthVznos10,
vMonthVznos11, v2MonthVznos11,
vMonthVznos12, v2MonthVznos12 : double;
.endvar
.begin
  Inloop := 0;
  NumDoc := 0;
  _Adv10Pach :=    LongInt(Adv10Pach);
  SZV1_ИТОГ := 0;
  SZV2_ИТОГ := 0;
  SZV5_ИТОГ := 0;
  SZV6_ИТОГ := 0;
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
  else if квартал = string(4)
{
   p4 := 'X';
   p3 := 'X';
   p2 := 'X';
   p1 := 'X';
}

vMonthVznos1:= 0; v2MonthVznos1:= 0;
vMonthVznos2:= 0; v2MonthVznos2:= 0;
vMonthVznos3:= 0; v2MonthVznos3:= 0;
vMonthVznos4:= 0; v2MonthVznos4:= 0;
vMonthVznos5:= 0; v2MonthVznos5:= 0;
vMonthVznos6:= 0; v2MonthVznos6:= 0;
vMonthVznos7:= 0; v2MonthVznos7:= 0;
vMonthVznos8:= 0; v2MonthVznos8:= 0;
vMonthVznos9:= 0; v2MonthVznos9:= 0;
vMonthVznos10:= 0; v2MonthVznos10:= 0;
vMonthVznos11:= 0; v2MonthVznos11:= 0;
vMonthVznos12:= 0; v2MonthVznos12:= 0;

end.
.{ CheckEnter ADV10
.fields
CodeOKPO
INN
RealInn
KPP
Pred
p1 p2 p3 p4
God
CounterPach
CounterDoc
Dolgok
.endfields
                                  ┌──────────────┐               ┌──────────────┐ И
 И  Б Форма АДВ-10 Б        Код по ОКУД │              │   Код по ОКПО │@@@@@@@@@@@@@@│ И
 И                                  └──────────────┘               └──────────────┘ И

 И  Сводная ведомость И
 И  форм документов СЗВ-3, передаваемых работодателем в ПФР И
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

 И  Количество пачек с исходными документами СЗВ-3                            @@@@ И
 И  Количество исходных документов СЗВ-3                                      @@@@ И
 И  Задолженность по уплате взносов в ПФР И
 И  на конец отчетного периода И                                     &&&&&&&&&&&&&.&&&
.{ CheckEnter ADV10_Kateg
.begin
  SZV1_ИТОГ := 0;
  SZV2_ИТОГ := 0;
  SZV5_ИТОГ := 0;
  SZV6_ИТОГ := 0;
  ConstM1   := '';   ConstM2   := '';
  ConstM3   := '';   ConstM4   := '';
  ConstM5   := '';   ConstM6   := '';
  ConstM7   := '';   ConstM8   := '';
  ConstM9   := '';   ConstM10   := '';
  ConstM11   := '';   ConstM12   := '';
   NumDoc := NumDoc +1;
   Inloop := Inloop +  1;
 vMonthVznos1:= 0; v2MonthVznos1:= 0;
 vMonthVznos2:= 0; v2MonthVznos2:= 0;
 vMonthVznos3:= 0; v2MonthVznos3:= 0;
 vMonthVznos4:= 0; v2MonthVznos4:= 0;
 vMonthVznos5:= 0; v2MonthVznos5:= 0;
 vMonthVznos6:= 0; v2MonthVznos6:= 0;
 vMonthVznos7:= 0; v2MonthVznos7:= 0;
 vMonthVznos8:= 0; v2MonthVznos8:= 0;
 vMonthVznos9:= 0; v2MonthVznos9:= 0;
 vMonthVznos10:= 0; v2MonthVznos10:= 0;
 vMonthVznos11:= 0; v2MonthVznos11:= 0;
 vMonthVznos12:= 0; v2MonthVznos12:= 0;
  SZV1_ИТОГ := SZV1_ИТОГ + double(SZV10_1_1) + double(SZV10_1_2)+ double(SZV10_1_3)
                         + double(SZV10_1_4) + double(SZV10_1_5)+ double(SZV10_1_6)
                         + double(SZV10_1_7) + double(SZV10_1_8)+ double( SZV10_1_9)
                         + double(SZV10_1_10)+ double(SZV10_1_11)+ double(SZV10_1_12);

  SZV2_ИТОГ := SZV2_ИТОГ + double(SZV10_2_1) + double(SZV10_2_2)+ double(SZV10_2_3)
                         + double(SZV10_2_4) + double(SZV10_2_5)+ double(SZV10_2_6)
                         + double(SZV10_2_7) + double(SZV10_2_8)+ double(SZV10_2_9)
                         + double(SZV10_2_10)+ double(SZV10_2_11)+ double(SZV10_2_12);

   vMonthVznos1 := Double(MonthVznos1);
   v2MonthVznos1 := Double(MonthVznosOut1);
   ConstM1 := TarifConst1;
  SZV5_ИТОГ := vMonthVznos1;
  SZV6_ИТОГ := v2MonthVznos1;
  if (Month2 >= 2)
  {
   vMonthVznos2 :=  vMonthVznos1 +  Double(MonthVznos2);
   v2MonthVznos2 := v2MonthVznos1 + Double(MonthVznosOut2);
   ConstM2 := TarifConst2;
  SZV5_ИТОГ := vMonthVznos2;
  SZV6_ИТОГ := v2MonthVznos2;
  }
  if (Month2 >= 3)
  {
   vMonthVznos3 :=  vMonthVznos2 +  Double(MonthVznos3);
   v2MonthVznos3 := v2MonthVznos2 + Double(MonthVznosOut3);
   ConstM3 := TarifConst3;
  SZV5_ИТОГ := vMonthVznos3;
  SZV6_ИТОГ := v2MonthVznos3;
  }
  if (Month2 >= 4)
  {
   vMonthVznos4 :=  vMonthVznos3 +  Double(MonthVznos4);
   v2MonthVznos4 := v2MonthVznos3 + Double(MonthVznosOut4);
   ConstM4 := TarifConst4;
  SZV5_ИТОГ := vMonthVznos4;
  SZV6_ИТОГ := v2MonthVznos4;
  }
  if (Month2 >= 5)
  {
   vMonthVznos5 :=  vMonthVznos4 +  Double(MonthVznos5);
   v2MonthVznos5 := v2MonthVznos4 + Double(MonthVznosOut5);
   ConstM5 := TarifConst5;
  SZV5_ИТОГ := vMonthVznos5;
  SZV6_ИТОГ := v2MonthVznos5;
  }
  if (Month2 >= 6)
  {
   vMonthVznos6 :=  vMonthVznos5 +  Double(MonthVznos6);
   v2MonthVznos6 := v2MonthVznos5 + Double(MonthVznosOut6);
   ConstM6 := TarifConst6;
  SZV5_ИТОГ := vMonthVznos6;
  SZV6_ИТОГ := v2MonthVznos6;
  }
  if (Month2 >= 7)
  {
   vMonthVznos7 :=  vMonthVznos6 +  Double(MonthVznos7);
   v2MonthVznos7 := v2MonthVznos6 + Double(MonthVznosOut7);
   ConstM7 := TarifConst7;
  SZV5_ИТОГ := vMonthVznos7;
  SZV6_ИТОГ := v2MonthVznos7;
  }
  if (Month2 >= 8)
  {
   vMonthVznos8 :=  vMonthVznos7 +  Double(MonthVznos8);
   v2MonthVznos8 := v2MonthVznos7 + Double(MonthVznosOut8);
   ConstM8 := TarifConst8;
  SZV5_ИТОГ := vMonthVznos8;
  SZV6_ИТОГ := v2MonthVznos8;
  }
  if (Month2 >= 9)
  {
   vMonthVznos9 :=  vMonthVznos8 +  Double(MonthVznos9);
   v2MonthVznos9 := v2MonthVznos8 + Double(MonthVznosOut9);
   ConstM9 := TarifConst9;
  SZV5_ИТОГ := vMonthVznos9;
  SZV6_ИТОГ := v2MonthVznos9;
  }
  if (Month2 >= 10)
  {
   vMonthVznos10 :=  vMonthVznos9 +  Double(MonthVznos10);
   v2MonthVznos10 := v2MonthVznos9 + Double(MonthVznosOut10);
   ConstM10 := TarifConst10;
  SZV5_ИТОГ := vMonthVznos10;
  SZV6_ИТОГ := v2MonthVznos10;
  }
  if (Month2 >= 11)
  {
   vMonthVznos11 :=  vMonthVznos10 +  Double(MonthVznos11);
   v2MonthVznos11 := v2MonthVznos10 + Double(MonthVznosOut11);
   ConstM11 := TarifConst11;
  SZV5_ИТОГ := vMonthVznos11;
  SZV6_ИТОГ := v2MonthVznos11;
  }
  if (Month2 >= 12)
  {
   vMonthVznos12 :=  vMonthVznos11 +  Double(MonthVznos12);
   v2MonthVznos12 := v2MonthVznos11 + Double(MonthVznosOut12);
   ConstM12 := TarifConst12;
  SZV5_ИТОГ := vMonthVznos12;
  SZV6_ИТОГ := v2MonthVznos12;
  }
end.
.fields
  Category
  SZV10_1_1  SZV10_2_1   Sredch1  ConstM1 vMonthVznos1 v2MonthVznos1
  SZV10_1_2  SZV10_2_2   Sredch2  ConstM2 vMonthVznos2 v2MonthVznos2
  SZV10_1_3  SZV10_2_3   Sredch3  ConstM3 vMonthVznos3 v2MonthVznos3
  SZV10_1_4  SZV10_2_4   Sredch4  ConstM4 vMonthVznos4 v2MonthVznos4
  SZV10_1_5  SZV10_2_5   Sredch5  ConstM5 vMonthVznos5 v2MonthVznos5
  SZV10_1_6  SZV10_2_6   Sredch6  ConstM6 vMonthVznos6 v2MonthVznos6
  SZV10_1_7  SZV10_2_7   Sredch7  ConstM7 vMonthVznos7 v2MonthVznos7
  SZV10_1_8  SZV10_2_8   Sredch8  ConstM8 vMonthVznos8 v2MonthVznos8
  SZV10_1_9  SZV10_2_9   Sredch9  ConstM9 vMonthVznos9 v2MonthVznos9
  SZV10_1_10 SZV10_2_10  Sredch10 ConstM10 vMonthVznos10 v2MonthVznos10
  SZV10_1_11 SZV10_2_11  Sredch11 ConstM11 vMonthVznos11 v2MonthVznos11
  SZV10_1_12 SZV10_2_12  Sredch12 ConstM12 vMonthVznos12 v2MonthVznos12
  SZV1_ИТОГ  SZV2_ИТОГ   SZV5_ИТОГ SZV6_ИТОГ
.endfields
  Сведения о заработке (вознаграждении)и доходе, учитываемые при назначении пенсии
  для категории застрахованного лица   ^ и
 ░  ┌───────────┬───────────────────────────────────┬───────────────────────────────────────────────────────┐ ░
 ░  │           │По категории застрахованного лица  │  Справочно (в целом по организации)                   │ ░
 ░  │           ├─────────────┬─────────────────────┼───────────────┬───────┬───────────────┬───────────────┤ ░
 ░  │  Месяц    │Заработок    │в т.ч. пособие по    │Средняя чис-   │Признак│Начислено      │Перечислено    │ ░
 ░  │           │(вознагражде-│временной нетрудоспо-│ленность работ-│тарифа │взносов в      │ взносов в     │ ░
 ░  │           │ние,доход)   │собности, стипендия  │ников (застра- │       │ ПФР           │   ПФР         │ ░
 ░  │           │             │                     │хованных лиц)  │       │               │               │ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │январь     │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │февраль    │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │март       │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │апрель     │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │май        │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │июнь       │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │июль       │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │август     │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │сентябрь   │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │октябрь    │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │ноябрь     │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ░
 ░  │декабрь    │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ @@@   │&&&&&&&&&&&&.&&│&&&&&&&&&&&&.&&│ ░
 ░  ├───────────┼─────────────┼─────────────────────┼───────────────┼───────┼───────────────┼───────────────┤ ╕
 ╕  │Итого      │&'&&&&&&&&.&&│&'&&&&&&&&&&&&&&&&.&&│      X        │   X   │&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│ ╕
 ╕  └───────────┴─────────────┴─────────────────────┴───────────────┴───────┴───────────────┴───────────────┘ ╕
.}
.fields
Dolg_ruk
ФИО_руководителя
 Число Месяц Год
.endfields
 ╕  Наименование должности руководителя          Подпись                    Расшифровка подписи ╕
 ╕  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        _______________            @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ╕

 И  Дата  @@  @@@@@@@@@@@@  @@@@ года                  Б М.П. Й

.fields
CodeOKPO
INN
RealInn
KPP
Pred
p1 p2 p3 p4
God
_Adv10Pach
.endfields
    Форма АДВ-6
                                  ┌─────────────┐               ┌──────────────┐
                      Код по ОКУД │             │   Код по ОКПО │@@@@@@@@@@@@@@│
                                  └─────────────┘               └──────────────┘

                   ОПИСЬ ДОКУМЕНТОВ, передаваемых работодателем в ПФР

   ┌─────────────────────────────────────────────────────────────────────────────┐
   │Реквизиты работодателя, передающего документы:                               │
   │Регистрационный номер ПФР              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
   │ИНН @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    КПП   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
   │Наименование организации  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│
   │(краткое)                                                                    │
   │                   ┌─┐   ┌─┐    ┌─┐   ┌─┐                                    │
   │Отчетный период   I│@│ II│@│ III│@│ IV│@│ квартал &&&& года                  │
   │                   └─┘   └─┘    └─┘   └─┘                                    │
   └─────────────────────────────────────────────────────────────────────────────┘

   Примечания:
              ────────────────────────────────────────────────────────


  ┌─────────────────────────────────────────────────────┬──────────────────────┐
  │    Наименование входящего документа                 │Количество документов │
  │                                                     │данного наименования  │
  │                                                     │в пачке               │
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │Анкета застрахованного лица                          │                      │
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │Заявление об обмене Страхового свидетельства         │                      │
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │Заявление о выдаче дубликата Страхового свидетельства│                      │
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │Индивидуальные сведения о трудовом стаже, заработке  │                      │
  │(вознаграждении), доходе и начисленных страховых     │                      │
  │взносах в ПФР(СЗВ-1 или СЗВ-3)                       │                      │
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │Сводная ведомость форм документов СЗВ-3, передаваемых│                      │
  │работодателем в ПФР                                  │                     1│
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │                                                     │                      │
  ├─────────────────────────────────────────────────────┼──────────────────────┤
  │      Итого документов всех наименований:            │                     1│
  └─────────────────────────────────────────────────────┴──────────────────────┘

       Заполняется для пачки документов, сопровождаемой машинным носителем
 а (дискетой):

       Номер пачки документов,присвоенный работодателем      @@@@@@@@@@@@@@@@@
       Номер регистрации пачки в территориальном органе ПФР  _______/_________
                                                             номер     год

       Заполняется для пачки документов, содержащей "Индивидуальные сведения о
   трудовом стаже, заработке (вознаграждении), доходе и начисленных взносах в
   ПФР застрахованного лица ":

       Сведения о заработке (вознаграждении), доходе за отчетный период,
       учитываемые при назначении пенсии (итого по пачке документов):
.fields
  SZV1_ИТОГ
  SZV2_ИТОГ
  ФИО_исполнителя
  Dolg_ruk
  ФИО_руководителя
.endfields
  ┌─────────────────────────────────────────────────────────────┐
  │Всего начислено        │в том числе по больничным по         │
  │                       │временной нетрудоспособности         │
  │                       │и стипендии                          │
  ├───────────────────────┼─────────────────────────────────────┤
  │&'&&&&&&&&&&&&&&&&&&.&&│       &'&&&&&&&&&&&&&&&&&&.&&       │
  └───────────────────────┴─────────────────────────────────────┘
 Ш       Исполнитель                                    Подпись                 Расшифровка подписи Ш
 Ш                                                                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
       Наименование должности руководителя            Подпись                 Расшифровка подписи
       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р


   Дата "  "               года                      М.П.
.begin
  SZV1_ИТОГ := 0;
  SZV2_ИТОГ := 0;
  SZV5_ИТОГ := 0;
  SZV6_ИТОГ := 0;
end.
.if aDeadLine
-------------------------------------------------------------------------------
.begin _Adv10Pach := _Adv10Pach + 1 end.

.end
.} И
.endform