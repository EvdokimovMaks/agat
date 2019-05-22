//------------------------------------------------------------------------------
//                                                      (c) Корпорация ГАЛАКТИКА
// Галактика 8.1 - Бухгалтерский контур
// Сверка данных ОС и КБУ
//------------------------------------------------------------------------------
#include predefs.inc

#doc
  Форма для печати сверки данных ОС и КБУ
#end
.set name = 'Osverka_Cards'
.hide
.var
  SumFormat : string;
  KolFormat : string;
.endvar
.begin
  // Формат для вывода суммовых значений
  SumFormat := '\2p[|-]3666`666`666`666`666`666.88';
  // Формат для вывода количественных значений
  KolFormat := '\3p[|-]3666`666`666`666`666`666~999';
end.
.fields
  KatOs_nRec
  KatOs_cMc

  // поля интерфейса Osverka
/*
  fOsName:string:'t:r'   // не удалит пробелы слева
  fOsSumma
  fOsNumSaldo
  fOsSumSaldo
  fOsDeviation
*/
  // Общая информация
  TiDk : word
  План_счетов
  Метод_учета
  Cчет
  Дата : date
  Группа
  Дискриптор

  fOsNumUpper //'Сложный
  fOsNum      //'Инв.ном
  fOsName     //'Карточка
  fOsExists   //'Наличие
  fOsSumma    : Double //'Сумма по карточке
  fOsNumSaldo : Double //'Кол-во
  fOsSchet    //'Счет
  fOsSubsch   //'Субсчет
  fOsSumSaldo : Double //'Сумма сальдо
  fOsDeviation: Double //'Отклонение

.endfields
! Подкачка Excel форматов
! Эта строчка нужна пока не будет решена 102.31867
#include ExcelFormat.frn
.{
.{ Osverka_Cards_Body CheckEnter
 ^ ^
 ^ ^ ^ ^ ^ ^ ^
 ^ ^ ^ ^
 ^ ^ ^ ^ ^ ^
.{ Osverka_Cards_Line CheckEnter
.}
.}
.}
.endform


!#ifdef __YUKOS_OS__
//*******************************************************************
.linkform 'Osverka_Cards01' prototype is 'Osverka_Cards'
.group 'По счету'
.nameinlist 'Сальдо по карточкам'
.p 60 //80
.defo landscape //portrait
.fields
  CommonFormHeader

  if (TiDk = 15, 'основным средствам', if (TiDk = 16,'нематериальным активам',''))
  Cчет
  Дата

  План_счетов
  Метод_учета

  if ( (Группа <> '') or (Дискриптор <> ''), 'Фильтры :', '')
  if ( (Группа     <> ''), 'Группа     : ' + Группа, '')
  if ( (Дискриптор <> ''), 'Дискриптор : ' + Дискриптор, '')

/*
  // поля интерфейса Osverka
  fOsName:'t:r'
  fOsSumma
  fOsNumSaldo
  fOsSumSaldo
  fOsDeviation
*/
  fOsNumUpper //'Сложный
  fOsNum      //'Инв.ном
  fOsName     //'Карточка
  fOsExists   //'Наличие
  DoubleToStr(fOsSumma, SumFormat)    //'Сумма по карточке
  DoubleToStr(fOsNumSaldo, KolFormat) //'Кол-во
  fOsSubsch   //'Субсчет
  DoubleToStr(fOsSumSaldo, SumFormat) //'Сумма сальдо
  DoubleToStr(fOsDeviation, SumFormat)//'Отклонение

.endfields
^

                                        БСверка данных ^ по счету ^ на ^ Б
План счетов  : ^
Метод учета  : ^

^
  ^
  ^
.{
.[H
 И                                                                                                                                         лист @np@
──────────┬──────────┬───────────────────────────────┬───────┬─────────────────────┬────────┬────────┬──────────────────────┬──────────────────────
  Сложный │  Инв.ном │           Карточка            │Наличие│  Сумма по карточке  │ Кол-во │ Субсчет│  Сальдо по карточке  │       Отклонение
──────────┼──────────┼───────────────────────────────┼───────┼─────────────────────┼────────┼────────┼──────────────────────┼────────────────────── И
.]H
.{ Osverka_Cards_Body CheckEnter
 И @@@@@@@@ │ @@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │  @~@  │&&&&&&&&&&&&&&&&&&&&&│&&&&&&&&│ @@@@@@ │&&&&&&&&&&&&&&&&&&&&&&│&&&&&&&&&&&&&&&&&&&&& И
.{ Osverka_Cards_Line CheckEnter
 И──────────┴──────────┴───────────────────────────────┴───────┴─────────────────────┴────────┴────────┴──────────────────────┴────────────────────── И
.}
.}
.}

.endform

//*******************************************************************
.linkform 'Osverka_Cards02' prototype is 'Osverka_Cards'
.group 'По счетам'
.nameinlist 'Сальдо по карточкам'
.p 60 //80
.defo landscape //portrait
.fields
  CommonFormHeader

  if (TiDk = 15, 'основным средствам', if (TiDk = 16,'нематериальным активам',''))
  Дата

  План_счетов
  Метод_учета

  if ( (Группа <> '') or (Дискриптор <> ''), 'Фильтры :', '')
  if ( (Группа     <> ''), 'Группа     : ' + Группа, '')
  if ( (Дискриптор <> ''), 'Дискриптор : ' + Дискриптор, '')
  fOsNumUpper //'Сложный
  fOsNum      //'Инв.ном
  fOsName     //'Карточка
  fOsExists   //'Наличие
  DoubleToStr(fOsSumma, SumFormat)    //'Сумма по карточке
  DoubleToStr(fOsNumSaldo,KolFormat) //'Кол-во
  fOsSchet    //'Счет
  fOsSubsch   //'Субсчет
  DoubleToStr(fOsSumSaldo, SumFormat) //'Сумма сальдо
  DoubleToStr(fOsDeviation, SumFormat)//'Отклонение

.endfields
^

                                            БСверка данных по ^ на ^ Б
План счетов  : ^
Метод учета  : ^

^
  ^
  ^
.{
.[H
 И                                                                                                                                         лист @np@
──────────┬──────────┬───────────────────────────────┬───────┬──────────────────────┬────────┬────────┬────────┬──────────────────────┬──────────────────────
  Сложный │  Инв.ном │           Карточка            │Наличие│   Сумма по карточке  │ Кол-во │  Счет  │ Субсчет│  Сальдо по карточке  │       Отклонение
──────────┼──────────┼───────────────────────────────┼───────┼──────────────────────┼────────┼────────┼────────┼──────────────────────┼────────────────────── И
.]H
.{ Osverka_Cards_Body CheckEnter
 И @@@@@@@@ │ @@@@@@@@ │ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ │  @~@  │&&&&&&&&&&&&&&&&&&&&&&│&&&&&&&&│ @@@@@@ │ @@@@@@ │&&&&&&&&&&&&&&&&&&&&&&│&&&&&&&&&&&&&&&&&&&&& И
.{ Osverka_Cards_Line CheckEnter
 И──────────┴──────────┴───────────────────────────────┴───────┴──────────────────────┴────────┴────────┴────────┴──────────────────────┴────────────────────── И
.}
.}
.}

.endform


//*******************************************************************
.set name = 'Osverka_Subsch'
.hide
.var
  SumFormat : string;
.endvar
.begin
  // Формат для вывода суммовых значений
  SumFormat := '\2p[|-]3666`666`666`666`666`666.88';
end.
.fields
  Cчет
  Дата : date
  План_счетов
  Метод_учета

  fSubschSchet    //'Счет
  fSubschSubsch   //'Субсчет
  fSubschSumSaldo :Double //'Сумма сальдо

.endfields
! Подкачка Excel форматов
! Эта строчка нужна пока не будет решена 102.31867
#include ExcelFormat.frn
.{
 ^ ^ ^ ^
.{ Osverka_Subsch_Body CheckEnter
 ^ ^ ^
.}
.}
.endform


!#ifdef __YUKOS_OS__
//*******************************************************************
.linkform 'Osverka_Subsch01' prototype is 'Osverka_Subsch'
.group 'По счету'
.nameinlist 'Сальдо по субсчетам'
.p 80
.defo portrait
.fields
  CommonFormHeader       // название отчета
  Cчет
  Дата
  План_счетов

  fSubschSubsch   //'Субсчет
  DoubleToStr(fSubschSumSaldo, SumFormat) //'Сумма сальдо
.endfields
^

    БДанные по субсчетам счета № ^ на ^ Б

План счетов  : ^

.{
.[H
                                        лист @np@
───────────────────┬──────────────────────────────
       Субсчет     │            Сальдо
───────────────────┼──────────────────────────────
.]H
.{ Osverka_Subsch_Body CheckEnter
      @@@@@@@@     │    &&&&&&&&&&&&&&&&&&&&&&&&&
.}
───────────────────┴──────────────────────────────
.}

.endform

//*******************************************************************
.linkform 'Osverka_Subsch02' prototype is 'Osverka_Subsch'
.group 'По счетам'
.nameinlist 'Сальдо по субсчетам'
.p 80
.defo portrait
.var
  wNumSchet : word;
  sCurSchet : tSchet3;
  doSumSchet: double;
.endvar
.begin
  wNumSchet := 0;
  sCurSchet := '';
  doSumSchet:= 0.0;
end.
.fields
  CommonFormHeader       // название отчета
  Дата
  План_счетов

.endfields
^

            БДанные по счетам и субсчетам на ^ Б

План счетов  : ^

.{
.[H
                                                       лист @np@
────────────────┬───────────────────┬──────────────────────────────
       Счет     │       Субсчет     │            Сальдо
────────────────┼───────────────────┼──────────────────────────────
.]H
.{ Osverka_Subsch_Body CheckEnter
.{?Internal; (sCurSchet <> fSubschSchet);
.{?Internal; (wNumSchet > 0));
.fields
  sCurSchet
  DoubleToStr(doSumSchet, SumFormat)
.endfields
 Б Всего по @@@@@@@@                       &&&&&&&&&&&&&&&&&&&&&&&&& Б
───────────────────────────────────────────────────────────────────
.}
.begin
  sCurSchet := fSubschSchet;
  doSumSchet:= 0.0;
  wNumSchet := 0;
end.
.}
.fields
  fSubschSchet    //'Счет
  fSubschSubsch   //'Субсчет
  DoubleToStr(fSubschSumSaldo, SumFormat) //'Сумма сальдо
.endfields
   @@@@@@@@     │      @@@@@@@@     │    &&&&&&&&&&&&&&&&&&&&&&&&&
.begin
  doSumSchet := doSumSchet + fSubschSumSaldo
  wNumSchet := wNumSchet + 1;
end.
.}
.{?Internal; (wNumSchet > 0);
.fields
  sCurSchet
  DoubleToStr(doSumSchet, SumFormat)
.endfields
 Б Всего по @@@@@@@@                       &&&&&&&&&&&&&&&&&&&&&&&&& Б
.}
────────────────┴───────────────────┴──────────────────────────────
.}

.endform

//*******************************************************************

!#end // __YUKOS_OS__
