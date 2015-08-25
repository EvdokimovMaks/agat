/*
                      (c) 1994,2004 корпорация ГАЛАКТИКА
  Проект        : ГАЛАКТИКА
  Система       : Заработная плата
  Назначение    : Отчет о нарядах работников
  Ответственный : Корзюк Виталий Францевич
  Параметры     : есть
*/

#doc
Отчет о нарядах работников
#end
.form PersonJobs
.hide
.uniqueconsts
.fields
  ReportMonth: string
  ReportYear: word

  Department: comp
  DepartmentName: string

  PersonalAccount: comp
  ClockNumber: string
  PersonName: string
  ActualHours: double

  JobSheet: comp
  JobSheetName: string
  HoursWorked: double
  Wages: double
  PremiumSum: double
  AdditionalPaymentSum: double
.endfields
^ ^
.{ DepartmentLoop checkenter
^ ^
.{ PersonLoop checkenter
^ ^ ^ ^
.{ JobSheetLoop checkenter
^ ^ ^ ^ ^ ^
.}
.}
.}
.endform

//------------------------------------------------------------------------------
.linkform PersonJobs_1 prototype is 'PersonJobs'
.nameinlist 'Оплата одиночек с расчетом нормы выработки'
.p 80
.var
  HoursWorkedSum: double;
  DepartmentNameStr: string;
.endvar
.fields
  ReportMonth
  ReportYear
  DepartmentNameStr

  ClockNumber
  PersonName

  JobSheetName
  Time2StrDef(HoursWorked)
  Wages
  PremiumSum
  AdditionalPaymentSum

  Time2StrDef(ActualHours)
  Time2StrDef(HoursWorkedSum)
  if(ActualHours > 0, HoursWorkedSum/ActualHours, 0) * 100
  Wages:'sum:PersonJobs_JobSheetLoop'
  PremiumSum:'sum:PersonJobs_JobSheetLoop'
  AdditionalPaymentSum:'sum:PersonJobs_JobSheetLoop'

  DepartmentNameStr
  Wages:'sum:PersonJobs_JobSheetLoop'
  PremiumSum:'sum:PersonJobs_JobSheetLoop'
  AdditionalPaymentSum:'sum:PersonJobs_JobSheetLoop'
.endfields
Оплата одиночек с расчетом нормы выработки

 ЙОтчетный период: ^ ^ Й

.{ PersonJobs_DepartmentLoop checkenter
.[h overwrite
.begin
    if (trim(DepartmentName ) <> '')
      DepartmentNameStr := DepartmentName
    else
      DepartmentNameStr := 'По всем подразделениям';
end.
 Й@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                Норма         Сумма         Сумма         Сумма
Наряд                   Час. таб. Час. нар. выработки     заработка        премии        доплат Й
 И----------------------- --------- --------- --------- ------------- ------------- ------------- И
.]h
.{ PersonJobs_PersonLoop checkenter
 ЙТаб. № ^, ^ Й
.begin HoursWorkedSum := 0 end.
.{ PersonJobs_JobSheetLoop checkenter
 И@@@@@@@@@@@@@@@@@@@@@@@           &&&&&&&&&           &'&&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&& И
.begin HoursWorkedSum := HoursWorkedSum + HoursWorked end.
.}
 И                        --------- --------- --------- ------------- ------------- ------------- И
 ЙИтого                   &&&&&&&&& &&&&&&&&& &'&&&.&&% &'&&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&& Й

.}
 И----------------------------------------------------- ------------- ------------- ------------- И
 Й@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&.&& &'&&&&&&&&.&& &'&&&&&&&&.&& Й
.}


 ИИсполнил:                                               Бухгалтер: И
.endform
