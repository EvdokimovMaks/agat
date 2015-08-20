/*
   =====================================================================
  │      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     │
  │      Проект    : ГАЛАКТИКА  (с) 2000                                │
  │      Система   : Управление персоналом                              │
  │      Версия    : 5.8                                                │
  │      Разработал: Антонович А.К.     03/08/2001                      │
  │      Назначение:                                                    │
  │      Изменения :                                                    │
   =====================================================================
*/


.linkform 'SZV-K_MAGNIT-70' prototype is 'SZV_K'
.nameinlist'Файл для ПФ на МН (в.07.00)'
.group 'MAGNIT_70'
!.F 'SZV_K_M_70.out'
.var
 TypeEdit   : string[20];
 TypeCorr   : string[20];
 TypeForm   : string[20];
 YearRep    : string[20];
 pach_nmb   : word;
 pach_nmb_1 : string[20];
 RecNmb     : word;
 NumInPach  : word;
 PeriodNmb, LPeriodNmb  : word;
 TerrNmb, UslNmb, VislNmb : word;
 Org100     : string[100]
 my_pred    : string[100];
 my_inn     : string[14]
.endvar
.begin
 my_inn  := Upcase( Trim( Replace( INN_1, '"', '''' ) ) );
 my_pred := Upcase( Trim( Replace( Pred_1, '"', '''' ) ) );
end.
.begin
 TypeEdit := '';
 TypeCorr := '';
 TypeForm := '';
 case word(TypeDoc) of
 0:
     {
     TypeEdit := 'ИСХОДНАЯ';
     TypeForm := 'ИСХОДНАЯ';
     }
 1:
     {
     TypeCorr := 'КОРРЕКТИРУЮЩАЯ';
     TypeForm := 'КОРРЕКТИРУЮЩАЯ';
     }
 2:
     {
     TypeCorr := 'ОТМЕНЯЮЩАЯ';
     TypeForm := 'ОТМЕНЯЮЩАЯ';
     }
 end;
end.
.fields
NameFile
my_inn
KPP_1
my_pred
RealInn_1

pach_nmb_1
countDocInPack_1
CurDate3

.endfields
.Fields
!"КОНВ"
NumInPach
!PsnNmb
TypeForm
trim(StrahPolis)
trim(FIO_1)
trim(FIO_2)
trim(FIO_3)
BornDate
Terr_Usl_Pred
CurDate2
countAllPeriod

!"ДЕЯТ"
Vid_Work
Org100
!CountRec
countStajPrev

!"ПСТЖ"
PeriodNmb
DateBeg
DateEnd

Terr_Usl_1
PegionKoef

Osob_Usl
KPS

Staj_Osnovan
!PenStajParam_0
PenStajParam_1
PenStajParam_2
PenStajParam_3

Vyslug_Osnovan
PenStajVisl_1
PenStajVisl_2
PenStajVisl_3_2

Post1

!"ПЛГТ"
!LPeriodNmb
!Osob_Usl_1_1
!CodePos
!OsnTrudStaj

!AddPensParam_0
!AddPensParam_1
!AddPensParam_2
!AddPensParam_3

!Vyslug_Osnovan_1
!AddPensVisl_1
!AddPensVisl_2
!AddPensVisl_3

!Terr_Usl_2
!PegionKoef2
!Post2

!"TERR"
!TerrNmb
!Staj_TerUsl_Code
!Staj_TerUsl_Yaer
!Staj_TerUsl_Mon
!Staj_TerUsl_Day

!TerrNmb
!Staj_TerUsl_Code_1
!Staj_TerUsl_Yaer_1
!Staj_TerUsl_Mon_1
!Staj_TerUsl_Day_1

!"USL"
!UslNmb
!Staj_OsobUsl_Code
!Staj_OsobUsl_Yaer
!Staj_OsobUsl_Mon
!Staj_OsobUsl_Day

!UslNmb
!Staj_OsobUsl_Code_1
!Staj_OsobUsl_Yaer_1
!Staj_OsobUsl_Mon_1
!Staj_OsobUsl_Day_1

!"VISL"
!VislNmb
!Staj_VL_Code
!Staj_VL_Yaer
!Staj_VL_Mon
!Staj_VL_Day

!VislNmb
!Staj_VL_Code_1
!Staj_VL_Yaer_1
!Staj_VL_Mon_1
!Staj_VL_Day_1

EndPack

.endFields
.{ SZV_KCycle_Pack  CheckEnter
<?xml version="1.0" encoding="Windows-1251" ?>
 <ФайлПФР>
 <ИмяФайла>^</ИмяФайла>
  <ЗаголовокФайла>
  <ВерсияФормата>07.00</ВерсияФормата>
  <ТипФайла>ВНЕШНИЙ</ТипФайла>
   <ПрограммаПодготовкиДанных>
   <НазваниеПрограммы>ГАЛАКТИКА</НазваниеПрограммы>
   <Версия>9.1</Версия>
   </ПрограммаПодготовкиДанных>
  <ИсточникДанных>СТРАХОВАТЕЛЬ</ИсточникДанных>
  </ЗаголовокФайла>
  <ПачкаВходящихДокументов Окружение="В составе файла" Стадия="До обработки">
   <ВХОДЯЩАЯ_ОПИСЬ>
   <НомерВпачке>1</НомерВпачке>
   <ТипВходящейОписи>ОПИСЬ ПАЧКИ</ТипВходящейОписи>
    <СоставительПачки>
     <НалоговыйНомер>
     <ИНН>^</ИНН>
     <КПП>^</КПП>
     </НалоговыйНомер>
    <КодЕГРИП></КодЕГРИП>
    <КодЕГРЮЛ></КодЕГРЮЛ>
    <Форма></Форма>
    <НаименованиеОрганизации>^</НаименованиеОрганизации>
    <НаименованиеКраткое></НаименованиеКраткое>
    <РегистрационныйНомер>^</РегистрационныйНомер>
    </СоставительПачки>
    <НомерПачки>
.begin
  pach_nmb_1 := String(NumPack_1);
  pach_nmb_1 := LPad(pach_nmb_1, 5);
  pach_nmb_1 := Replace(pach_nmb_1, ' ', '0');
end.
    <Основной>^</Основной>
    </НомерПачки>
    <СоставДокументов>
    <Количество>1</Количество>
     <НаличиеДокументов>
     <ТипДокумента>КОНВЕРТАЦИЯ</ТипДокумента>
     <Количество>^</Количество>
     </НаличиеДокументов>
    </СоставДокументов>
   <ДатаСоставления>^</ДатаСоставления>
   </ВХОДЯЩАЯ_ОПИСЬ>
.begin
 NumInPach := 1;
end.
.{ SZV_KCycle_Main  CheckEnter
.begin
 NumInPach := NumInPach + 1;
end.
   <КОНВЕРТАЦИЯ>
   <НомерВпачке>^</НомерВпачке>
   <ВидФормы>СЗВ-К</ВидФормы>
   <ТипСведений>^</ТипСведений>
   <СтраховойНомер>^</СтраховойНомер>
    <ФИО>
    <Фамилия>^</Фамилия>
    <Имя>^</Имя>
    <Отчество>^</Отчество>
    </ФИО>
   <ДатаРождения>^</ДатаРождения>
   <ТерриториальныеУсловияНа31.12.2001>^</ТерриториальныеУсловияНа31.12.2001>
   <ДатаЗаполнения>^</ДатаЗаполнения>
    <СтажДоРегистрации>
    <Количество>^</Количество>
.begin
 RecNmb :=0;
end.
.{ SZV_KCycle1     CheckEnter
.begin
Org100 := trim(Name_Org);
RecNmb := RecNmb + 1;
end.
     <ПериодДеятельности>
     <ВидДеятельности>^</ВидДеятельности>
     <НаименованиеОрганизации>^</НаименованиеОрганизации>
      <ВсеПериодыРаботы>
      <Количество>^</Количество>
.begin
PeriodNmb := 0
end.
.{ SZV_KCycle1_1   CheckEnter
.begin
 PeriodNmb := PeriodNmb + 1;
end.
!"ПСТЖ",,
        <ПериодРаботы>
        <ОсновнаяСтрока>
        <НомерСтроки>^</НомерСтроки>
        <ДатаНачалаПериода>^</ДатаНачалаПериода>
        <ДатаКонцаПериода>^</ДатаКонцаПериода>
         <ОсобенностиУчета>
          <ТерриториальныеУсловия>
          <ОснованиеТУ>^</ОснованиеТУ>
          <Коэффициент>&.&&</Коэффициент>
          </ТерриториальныеУсловия>
          <ОсобыеУсловияТруда>
          <ОснованиеОУТ>^</ОснованиеОУТ>
          <ПозицияСписка>^</ПозицияСписка>
          </ОсобыеУсловияТруда>
          <ИсчисляемыйСтаж>
          <ОснованиеИС>^</ОснованиеИС>
           <ВыработкаВчасах>
           <Часы>^</Часы>
           <Минуты>^</Минуты>
           </ВыработкаВчасах>
          </ИсчисляемыйСтаж>
         <ДекретДети>^</ДекретДети>
          <ВыслугаЛет>
          <ОснованиеВЛ>^</ОснованиеВЛ>
           <ВыработкаКалендарная>
           <ВсеМесяцы>^</ВсеМесяцы>
           <ВсеДни>^</ВсеДни>
           </ВыработкаКалендарная>
          <ДоляСтавки>&.&&</ДоляСтавки>
          </ВыслугаЛет>
         <ПрофессияДолжность>^</ПрофессияДолжность>
         </ОсобенностиУчета>
        </ОсновнаяСтрока>
       </ПериодРаботы>
.begin
LPeriodNmb :=0;
end.
.{ SZV_KCycle1_1_1 CheckEnter
.begin
LPeriodNmb := LPeriodNmb + 1
end.
!"ПЛГТ",^,"^","^","^",^,^,^,"^","^",^,^,&.&&,"^",&.&&,"^"
.}
.}
      </ВсеПериодыРаботы>
     </ПериодДеятельности>
.}
    </СтажДоРегистрации>
   </КОНВЕРТАЦИЯ>
.begin
TerrNmb := 1;
end.
.{?internal; countTerrPeriod_1 <> 0
!"ТЕРР",^,"^",^,^,^
.}
.{ SZV_KCycle2     CheckEnter
.begin
TerrNmb := TerrNmb +1;
end.
.{?internal; countTerrPeriod_1 > 1
!"ТЕРР",^,"^",^,^,^
.}
.}
.begin
UslNmb := 1;
end.
.{?internal; countOsobPeriod_1<>0
!"ОСОБ",^,"^",^,^,^
.}
.{ SZV_KCycle3     CheckEnter
.begin
UslNmb := UslNmb +1;
end.
.{?internal; countOsobPeriod_1>1
!"ОСОБ",^,"^",^,^,^
.}
.}
.begin
VislNmb := 1;
end.
.{?internal; countVislPeriod_1<>0
!"ВЫСЛ",^,"^",^,^,^
.}
.{ SZV_KCycle4     CheckEnter
.begin
VislNmb := VislNmb +1;
end.
.{?internal; countVislPeriod_1>1
!"ВЫСЛ",^,"^",^,^,^
.}
.}
.}
.{ CheckEnter SZVADV6_1_1
.}
  </ПачкаВходящихДокументов>
 </ФайлПФР>
^
.}
.endform
