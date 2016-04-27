!  ╔═════════════════════════════════════════════════════════════════════╗
!  ║    (c) 1996, 97  Корпорация "ГАЛАКТИКА"                             ║
!  ║      Проект:  "Галактика"                                           ║
!  ║      Система: "КАДРЫ"                                               ║
!  ║      Версия : 5.10                                                  ║
!  ║      Назначение:  Выходные формы для отчетов по штатному расписанию ║
!  ║      Ответственный:  Московских А.М.                                ║
!  ║      Параметры:                                                     ║
!  ║      Изменения:                                                     ║
!  ╚═════════════════════════════════════════════════════════════════════╝

!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!
! staff_ss, modified 04/12/2000, 13:02 by BK                                  !
!-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-!

#doc
Выходные формы для отчетов по штатному расписанию
#end
.form staff_ss
.Fields
  RepTitle
  dFromDate dToDate
! Среднемесячные часы за год
  dSMG
  MainDepartment

  FiltrName FiltrCode FiltrString
  Header1 Header2 Header3

!--- table StaffStruct "Штатное расписание предприятия"   [19]
  DepartmentSS PostSS TariffSS HourTarStavSS CategorySS PayModelCodeSS PayModelSS
  EmpCategorySS
  WorkCondSS WorkRegimeSS TaxRateSS PayCurrencySS PrivPensionSS
  VacationSS WorkStationsSS: Double HaveWorkersSS: Double NeedWorkersSS: Double
  DopInfoSS

!--- table AdvFeatures "Дополнительные характеристики"    [21]
  AFPosition AFValString

!--- table Appendix "Приложения"                          [20]
   AppAbstract

!--- table Vacancy "Заполнение вакансий"                  [22]
   VacancyRate

!--- Create table Persons "Физические лица"   // [2]
  PassNmb DepName TabNmb TestPeriod
  JobNature ComplSrc InvalidGrp PensionDate
  PensionCause FIO
  BornDate BornAddr Dependants Sex
#ifNdef Gal9_1
  : char
#end
  Nationality
  FamilyState Education Publications Inventions AppDate

!--- Create table Appointments "Назначения и перемещения" [10]
  OrderDateL OrderNmbL ContractNmbL AppointDateL DismissDateL DepartmentL
  PostL TariffL CategoryL EmpCategoryL PayModelCodeL PayModelL WorkCondL PostAccordL
  WorkRegimeL TaxRateL PayCurrencyL PrivPensionL VacationL EmpRate
  Footer3 Footer2 Footer1
.EndFields
.HIDE
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 За период с @@@@@@@@ по @@@@@@@@

 Среднемесячные часы за год: &&&&&&.&&&
 Подразделение, по которому строится отчет: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.{staff_ss_CycleFiltr  CheckEnter
 ^: ^ ^
.}
.{staff_ss_Ctrl1  CheckEnter
   заголовок 1        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_ss_Ctrl2  CheckEnter
   заголовок 2        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_ss_Ctrl3  CheckEnter
   заголовок 3        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
============================================================================
.{staff_ss_Cycle1  CheckEnter
!--- table StaffStruct "Штатное расписание предприятия"   [19]

 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 тариф: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Часовая тарифная ставка: &&&&&&&.&&&
 Разряд: @@@@@@@
 Код системы оплаты: &&&&&&&&&&
 Система оплаты: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Категория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Условия труда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Режим работы: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Оклад, ставка, тариф: @@@@@@@@@@@@
 Валюта оплаты: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Льготная пенсия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Продолжительность отпуска (дней): @@@@
 Количество рабочих мест по штату:  &&&.&&
 Количество занятых рабочих мест:   &&&.&&
 Количество вакантных рабочих мест: &&&.&&
 Дополнительная информация по ставке: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

              Таблица "Дополнительные характеристики"
----------------------------------------------------------------------------
.{staff_ss_CycleAdvFeatures  CheckEnter
Наименование характеристики: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Значение характеристики: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

              Таблица "Приложения"
----------------------------------------------------------------------------
.{staff_ss_CycleAppendix  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

              Таблица "Заполнение вакансий"
.{staff_ss_CycleVacancy  CheckEnter
----------------------------------------------------------------------------
 Ставок: @@@@@@@@@@@@@@@

              Таблица "Физические лица"
 Пропуск: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Табельный номер: @@@@@@@@@@@@@@@@@@@@@@
 Испытательный срок: @@@@@@@@@@
 Характер работы: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Источник комплектования: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Группа инвалидности:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Год оформления пенсии: @@@@@@@@@@
 Причина ухода на пенсию: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ФИО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата рождения: @@@@@@@@@@
 Место рождения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Количество иждивенцев: @@@@
 Пол: @@@
 Национальность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Семейное положение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Образование: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Число печатных трудов: @@@@
 Число изобретений: @@@@
 Дата приема на работу: @@@@@@@@@@

              Таблица "Назначения и перемещения"
 Дата приказа:  @@@@@@@@@@
 Номер приказа: @@@@@@@@@@
 Контракт N: @@@@@@@@@@@@@@@@@@
 Дата назначения: @@@@@@@@@@
 Дата ухода с должности: @@@@@@@@@@
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Тариф:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Разряд: @@@@
 Категория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Код формы оплаты труда: @@@@@@
 Форма оплаты труда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Условия труда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Соответствие спец-ти занимаемой должн.: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Режим работы: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Оклад, ставка, тариф: @@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Валюта оплаты: @@@@@@@@@@@@@@@@@@@@@@@
 Льготная пенсия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Продолжительность отпуска (дней): @@@@
 Коэффициент для среднесписочной: @@@@@
.}
============================================================================
.}
 Итог3: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог2: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог1: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform

.LINKFORM "Штатное расписание организации" PROTOTYPE IS staff_ss
.group "Штатное расписание организации"
.DEFO PORTRAIT
.p 60
!.o 6
.Var iNmb   : integer
     dWorkPlanPost : double
     dWorkFactPost : double
     dWorkFreePost : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     dWorkFreeDep  : double
     dWorkPlanTot  : double
     dWorkFactTot  : double
     dWorkFreeTot  : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle dToDate
  DepartmentSS PostSS TaxRateSS
  iNmb TabNmb FIO CategoryL EmpCategoryL TaxRateL AppointDateL
  dWorkPlanPost dWorkFactPost dWorkFreePost
  dWorkPlanDep dWorkFactDep dWorkFreeDep
  dWorkPlanTot  dWorkFactTot dWorkFreeTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 Р                                                                                       стр. @NP@
┌───────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N      Таб.          Фамилия Имя Отчество           Разряд    Категория    Оклад     Дата назнач.│
│ п/п    номер                                                                          на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.}
.]h
.Begin
     not_first_page := false;
 End.
  Р@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                              на @@@@@@@@@@

┌───────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N      Таб.          Фамилия Имя Отчество           Разряд    Категория    Оклад     Дата назнач.│
│ п/п    номер                                                                          на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────┘
 Р.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanTot := 0;
  dWorkFactTot := 0;
  iNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
 Р Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
 Р  Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Оклад,ставка &&&&&&&.&& Р
.Begin
  dWorkPlanPost := 0;
  dWorkFactPost := 0;
 End.
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.Begin
  dWorkPlanPost := dWorkPlanPost + WorkStationsSS;
  dWorkFactPost := dWorkFactPost + HaveWorkersSS;
 End.
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
 Р &&&&  &&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@@@@ &&&&&&&.&&  @@@@@@@@@@ Р
.}
.}
.}
.Begin
  dWorkFreePost := dWorkPlanPost - dWorkFactPost;
  dWorkPlanDep  := dWorkPlanDep + dWorkPlanPost;
  dWorkFactDep  := dWorkFactDep + dWorkFactPost;
  iNmb := 0;
 End.
 Р     ИТОГО по должности по утвержденному штатному расписанию:&&&&&.&& ставок Р
 Р                                                  фактически:&&&&&.&& ставок Р
 Р                                                    вакансий:&&&&&.&& ставок Р
.}
.Begin
  dWorkFreeDep := dWorkPlanDep - dWorkFactDep;
  dWorkPlanTot := dWorkPlanTot + dWorkPlanDep;
  dWorkFactTot := dWorkFactTot + dWorkFactDep;
 End.

 Р ИТОГО по подразделению по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                  фактически:&&&&.&&& ставок Р
 Р                                                    вакансий:&&&&.&&& ставок Р
.}
.Begin
  dWorkFreeTot := dWorkPlanTot - dWorkFactTot;
 End.

 Р ИТОГО по организации   по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                  фактически:&&&&.&&& ставок Р
 Р                                                    вакансий:&&&&.&&& ставок Р
.endform
.LINKFORM "Штатное расписание подразделения" PROTOTYPE IS staff_ss
.group "Штатное расписание подразделения"
.DEFO PORTRAIT
.p 60
!.o 4
.Var iNmb   : integer
     dWorkPlanPost : double
     dWorkFactPost : double
     dWorkFreePost : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     dWorkFreeDep  : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle MainDepartment dToDate
  PostSS  TaxRateSS
  iNmb TabNmb FIO CategoryL EmpCategoryL TaxRateL AppointDateL
  dWorkPlanPost dWorkFactPost dWorkFreePost
  dWorkPlanDep dWorkFactDep dWorkFreeDep
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 Р                                                                                       стр. @NP@
┌───────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N      Таб.          Фамилия Имя Отчество           Разряд    Категория    Оклад     Дата назнач.│
│ п/п    номер                                                                          на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.}
.]h
.Begin
     not_first_page := false;
 End.
 Р @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                              на @@@@@@@@@@

┌───────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N      Таб.          Фамилия Имя Отчество           Разряд    Категория    Оклад     Дата назнач.│
│ п/п    номер                                                                          на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  iNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
 Р   Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Оклад,ставка &&&&&&&.&& Р
.Begin
  dWorkPlanPost := 0;
  dWorkFactPost := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.Begin
  dWorkPlanPost := dWorkPlanPost + WorkStationsSS;
  dWorkFactPost := dWorkFactPost + HaveWorkersSS;
 End.
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
 Р &&&&  &&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@@@@ &&&&&&&.&&  @@@@@@@@@@ Р
.}
.}
.}
.}
.Begin
  dWorkFreePost := dWorkPlanPost - dWorkFactPost;
  dWorkPlanDep  := dWorkPlanDep + dWorkPlanPost;
  dWorkFactDep  := dWorkFactDep + dWorkFactPost;
  iNmb := 0;
 End.
 Р     ИТОГО по должности по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                  фактически:&&&&.&&& ставок Р
 Р                                                    вакансий:&&&&.&&& ставок Р
.}
.Begin
  dWorkFreeDep := dWorkPlanDep - dWorkFactDep;
 End.

 Р ИТОГО по подразделению по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                  фактически:&&&&.&&& ставок Р
 Р                                                    вакансий:&&&&.&&& ставок Р
.endform
.LINKFORM "Штатное расписание с образованием" PROTOTYPE IS staff_ss
.group "Штатное расписание с образованием"
.DEFO PORTRAIT
.p 60
!.o 4
.Var iNmb   : integer
     dWorkPlanPost : double
     dWorkFactPost : double
     dWorkFreePost : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     dWorkFreeDep  : double
     dWorkPlanTot  : double
     dWorkFactTot  : double
     dWorkFreeTot  : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle dToDate
  DepartmentSS PostSS
  iNmb PostL FIO Education
  TaxRateL AppointDateL
  dWorkPlanPost dWorkFactPost dWorkFreePost
  dWorkPlanDep dWorkFactDep dWorkFreeDep
  dWorkPlanTot  dWorkFactTot dWorkFreeTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 Р                                                                                          стр. @NP@
┌───────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N       Профессия,            Фамилия Имя Отчество                 Уровень      Оклад    Дата назнач.│
│ п/п      должность                                                образования             на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.}
.]h
.Begin
     not_first_page := false;
 End.
 Р @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                   на @@@@@@@@@@

┌───────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N       Профессия,            Фамилия Имя Отчество                 Уровень      Оклад    Дата назнач.│
│ п/п      должность                                                образования             на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanTot := 0;
  dWorkFactTot := 0;
  iNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter

 Р   Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
 Р     Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.Begin
  dWorkPlanPost := 0;
  dWorkFactPost := 0;
 End.
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.Begin
  dWorkPlanPost := dWorkPlanPost + WorkStationsSS;
  dWorkFactPost := dWorkFactPost + HaveWorkersSS;
 End.
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
 Р &&&&& @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&.&&  @@@@@@@@@@ Р
.}
.}
.}
.Begin
  dWorkFreePost := dWorkPlanPost - dWorkFactPost;
  dWorkPlanDep  := dWorkPlanDep + dWorkPlanPost;
  dWorkFactDep  := dWorkFactDep + dWorkFactPost;
  iNmb := 0;
 End.
 Р     ИТОГО по должности   по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                    фактически:&&&&.&&& ставок Р
 Р                                                      вакансий:&&&&.&&& ставок Р
.}
.Begin
  dWorkFreeDep := dWorkPlanDep - dWorkFactDep;
  dWorkPlanTot  := dWorkPlanTot + dWorkPlanDep;
  dWorkFactTot  := dWorkFactTot + dWorkFactDep;
 End.

 Р   ИТОГО по подразделению по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                    фактически:&&&&.&&& ставок Р
 Р                                                      вакансий:&&&&.&&& ставок Р
.}
.Begin
  dWorkFreeTot := dWorkPlanTot - dWorkFactTot;
 End.

 Р ИТОГО по организации     по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                    фактически:&&&&.&&& ставок Р
 Р                                                      вакансий:&&&&.&&& ставок Р
.endform
.LINKFORM "Штатное расписание подразделения с образованием" PROTOTYPE IS staff_ss
.group "Штатное расписание подразделения с образованием"
.DEFO PORTRAIT
.p 60
!.o 4
.Var iNmb   : integer
     dWorkPlanPost : double
     dWorkFactPost : double
     dWorkFreePost : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     dWorkFreeDep  : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle MainDepartment dToDate
  PostSS
  iNmb PostL FIO Education
  TaxRateL AppointDateL
  dWorkPlanPost dWorkFactPost dWorkFreePost
  dWorkPlanDep dWorkFactDep dWorkFreeDep
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 Р                                                                                             стр. @NP@
┌───────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N       Профессия,            Фамилия Имя Отчество                 Уровень      Оклад    Дата назнач.│
│ п/п      должность                                                образования             на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.}
.]h
.Begin
     not_first_page := false;
 End.
 Р @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                   на @@@@@@@@@@

┌───────────────────────────────────────────────────────────────────────────────────────────────────────┐
│  N       Профессия,            Фамилия Имя Отчество                 Уровень      Оклад    Дата назнач.│
│ п/п      должность                                                образования             на должность│
└───────────────────────────────────────────────────────────────────────────────────────────────────────┘ Р
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
 Р     Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Р
.Begin
  dWorkPlanPost := 0;
  dWorkFactPost := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.Begin
  dWorkPlanPost := dWorkPlanPost + WorkStationsSS;
  dWorkFactPost := dWorkFactPost + HaveWorkersSS;
 End.
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
 Р &&&&& @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&.&&  @@@@@@@@@@ Р
.}
.}
.}
.}
.Begin
  dWorkFreePost := dWorkPlanPost - dWorkFactPost;
  dWorkPlanDep  := dWorkPlanDep + dWorkPlanPost;
  dWorkFactDep  := dWorkFactDep + dWorkFactPost;
  iNmb := 0;
 End.
 Р     ИТОГО по должности   по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                    фактически:&&&&.&&& ставок Р
 Р                                                      вакансий:&&&&.&&& ставок Р
.}
.Begin
  dWorkFreeDep := dWorkPlanDep - dWorkFactDep;
 End.

 Р   ИТОГО по подразделению по утвержденному штатному расписанию:&&&&.&&& ставок Р
 Р                                                    фактически:&&&&.&&& ставок Р
 Р                                                      вакансий:&&&&.&&& ставок Р
.endform
.LINKFORM "Список рабочих мест" PROTOTYPE IS staff_ss
.group "Список рабочих мест"
.DEFO PORTRAIT
.p 60
!.o 4
.Var iNmb : integer
     not_first_page : boolean
.EndVar
.Fields
  RepTitle
  dToDate
  FiltrName FiltrCode FiltrString
  DepartmentSS
  iNmb WorkStationsSS NeedWorkersSS
  PostSS PayModelSS TariffSS CategorySS TaxRateSS PayCurrencySS
  EmpCategorySS WorkRegimeSS WorkCondSS PrivPensionSS
  VacationSS
  AFPosition AFValString
  AppAbstract
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                               стр. @NP@
════════════════════════════════════════════════════════════════════════════
.}
.]h
.Begin
     not_first_page := false;
 End.
 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И                               на @@@@@@@@@@ И
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
 ^: ^ ^
.}
.{staff_ss_Ctrl1  CheckEnter

 И Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И

 И════════════════════════════════════════════════════════════════════════════ И
.Begin
  iNmb := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.

 ИN п/п: &&&&                 Рабочих мест по штату:  &&.&&&  Вакансий: &&.&&& И
 ИДолжность, профессия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИФорма оплаты: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИТариф: @@@@@@@@@@@@@@@@@@@@  Разряд: @@@@@@@  Ставка: @@@@@@@@@@@@ @@@@@@@@@@@ И
 ИКатегория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИРежим работы: @@@@@@@@@@@@@@@@@@@@@@@@ Условия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИЛьг.пенсия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Отпуск (дней): @@@@ И

 ИНаименование характеристики            Значение характеристики И
 И───────────────────────────            ─────────────────────── И
.{staff_ss_CycleAdvFeatures  CheckEnter
 И@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.}

 И                     Приложения И
 И                     ────────── И
.{staff_ss_CycleAppendix  CheckEnter
 И @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.}
.{staff_ss_CycleVacancy  CheckEnter
.}
 И──────────────────────────────────────────────────────────────────────────── И
.}
.}
.}
.}
.endform
.LINKFORM "Список рабочих мест подразделения" PROTOTYPE IS staff_ss
.group "Список рабочих мест подразделения"
.Var  iNmb : integer  .EndVar
.Fields
  RepTitle
  dToDate
  FiltrName FiltrCode FiltrString
  iNmb WorkStationsSS NeedWorkersSS
  PostSS PayModelSS TariffSS CategorySS TaxRateSS PayCurrencySS
  EmpCategorySS WorkRegimeSS WorkCondSS PrivPensionSS
  VacationSS
  AFPosition AFValString
  AppAbstract
.EndFields
 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                               на @@@@@@@@@@ И

.{staff_ss_CycleFiltr  CheckEnter
 ^ ^ ^
.}

 И════════════════════════════════════════════════════════════════════════════ И
.Begin
  iNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.

 ИN п/п: &&&&                 Рабочих мест по штату:  &&.&&&  Вакансий: &&.&&& И
 ИДолжность, профессия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИФорма оплаты: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИТариф: @@@@@@@@@@@@@@@@@@@@  Разряд: @@@@@@@  Ставка: @@@@@@@@@@@@ @@@@@@@@@@@ И
 ИКатегория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИРежим работы: @@@@@@@@@@@@@@@@@@@@@@@@ Условия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 ИЛьг.пенсия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Отпуск (дней): @@@@ И

 ИНаименование характеристики            Значение характеристики И
 И───────────────────────────            ─────────────────────── И
.{staff_ss_CycleAdvFeatures  CheckEnter
 И@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.}

 И                     Приложения И
 И                     ────────── И
.{staff_ss_CycleAppendix  CheckEnter
 И @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.}
.{staff_ss_CycleVacancy  CheckEnter
.}
 И──────────────────────────────────────────────────────────────────────────── И
.}
.}
.}
.}
.endform
.LINKFORM "Справка об укомплектованности кадрами" PROTOTYPE IS staff_ss
.group "Справка об укомплектованности кадрами"
.Var iNmb   : integer
     dWorkPlanPost : double
     dWorkFactPost : double
     dWorkFreePost : double
     dWorkProcPost : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     dWorkFreeDep  : double
     dWorkProcDep  : double
     dWorkPlanTot  : double
     dWorkFactTot  : double
     dWorkFreeTot  : double
     dWorkProcTot  : double
.EndVar
.Fields
  RepTitle dToDate
  DepartmentSS
  iNmb PostSS
  dWorkPlanPost dWorkFactPost dWorkFreePost dWorkProcPost
  dWorkPlanDep dWorkFactDep dWorkFreeDep dWorkProcDep
  dWorkPlanTot  dWorkFactTot dWorkFreeTot dWorkProcTot
.EndFields
 И@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                       по состоянию на @@@@@@@@@@ И
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanTot := 0;
  dWorkFactTot := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter

 ИПодразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И┌─────┬──────────────────────────┬───────────────────┬─────────────────┐ И
 И│  N  │  Профессия, должность    │    численность    │    Некомплект   │ И
 И│ п/п │                          │ Штатная │ Фактич. │ числ-ть │  в %  │ И
 И├─────┼──────────────────────────┼─────────┼─────────┼─────────┼───────┤ И
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  iNmb := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
.Begin
  iNmb := iNmb + 1;
  dWorkPlanPost := 0;
  dWorkFactPost := 0;
 End.
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.Begin
  dWorkPlanPost := dWorkPlanPost + WorkStationsSS;
  dWorkFactPost := dWorkFactPost + HaveWorkersSS;
 End.
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.}
.}
.}
.Begin
  dWorkFreePost := dWorkPlanPost - dWorkFactPost;
  dWorkProcPost := (dWorkFreePost / dWorkPlanPost) * 100;
  dWorkPlanDep  := dWorkPlanDep + dWorkPlanPost;
  dWorkFactDep  := dWorkFactDep + dWorkFactPost;
 End.
 И│     │                          │         │         │         │       │ И
 И│&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@ │&&&&.&&& │&&&&.&&& │&&&&.&&& │&&&.&& │ И
.}
.Begin
  dWorkFreeDep := dWorkPlanDep - dWorkFactDep;
  dWorkProcDep := (dWorkFreeDep / dWorkPlanDep) * 100;
  dWorkPlanTot  := dWorkPlanTot + dWorkPlanDep;
  dWorkFactTot  := dWorkFactTot + dWorkFactDep;
 End.
 И└─────┴──────────────────────────┴─────────┴─────────┴─────────┴───────┘ И

 И ИТОГО по подразделению           &&&&.&&&  &&&&.&&&  &&&&.&&&  &&&.&& И
.}
.Begin
  dWorkFreeTot := dWorkPlanTot - dWorkFactTot;
  dWorkProcTot := (dWorkFreeTot / dWorkPlanTot) * 100;
 End.


 И ИТОГО по организации             &&&&.&&&  &&&&.&&&  &&&&.&&&  &&&.&& И
.endform
.LINKFORM "Справка об укомплектованности кадрами подразделения" PROTOTYPE IS staff_ss
.group "Справка об укомплектованности кадрами подразделения"
.Var iNmb   : integer
     dWorkPlanPost : double
     dWorkFactPost : double
     dWorkFreePost : double
     dWorkProcPost : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     dWorkFreeDep  : double
     dWorkProcDep  : double
.EndVar
.Fields
  RepTitle dToDate
  MainDepartment
  iNmb PostSS
  dWorkPlanPost dWorkFactPost dWorkFreePost dWorkProcPost
  dWorkPlanDep dWorkFactDep dWorkFreeDep dWorkProcDep
.EndFields
 И@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                       по состоянию на @@@@@@@@@@ И
.{staff_ss_CycleFiltr  CheckEnter
.}

 ИПодразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И┌─────┬──────────────────────────┬───────────────────┬─────────────────┐ И
 И│  N  │  Профессия, должность    │    численность    │    Некомплект   │ И
 И│ п/п │                          │ Штатная │ Фактич. │ числ-ть │  в %  │ И
 И├─────┼──────────────────────────┼─────────┼─────────┼─────────┼───────┤ И
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  iNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.Begin
  iNmb := iNmb + 1;
  dWorkPlanPost := 0;
  dWorkFactPost := 0;
 End.
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.Begin
  dWorkPlanPost := dWorkPlanPost + WorkStationsSS;
  dWorkFactPost := dWorkFactPost + HaveWorkersSS;
 End.
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.}
.}
.}
.}
.Begin
  dWorkFreePost := dWorkPlanPost - dWorkFactPost;
  dWorkProcPost := (dWorkFreePost / dWorkPlanPost) * 100;
  dWorkPlanDep  := dWorkPlanDep + dWorkPlanPost;
  dWorkFactDep  := dWorkFactDep + dWorkFactPost;
 End.
 И│     │                          │         │         │         │       │ И
 И│&&&& │ @@@@@@@@@@@@@@@@@@@@@@@@ │&&&&.&&& │&&&&.&&& │&&&&.&&& │&&&.&& │ И
.}
.Begin
  dWorkFreeDep := dWorkPlanDep - dWorkFactDep;
  dWorkProcDep := (dWorkFreeDep / dWorkPlanDep) * 100;
 End.
 И└─────┴──────────────────────────┴─────────┴─────────┴─────────┴───────┘ И

 И ИТОГО по подразделению           &&&&.&&&  &&&&.&&&  &&&&.&&&  &&&.&& И
.endform

//janna
.LINKFORM "Штатное расписание по должностям" PROTOTYPE IS staff_ss
.group "Штатное расписание по должностям"
.DEFO PORTRAIT
.p 60
!.o 4
.Var
     iNmb     : integer
     iDepNmb  : integer
     dSumDep  : double
     dSumTot  : double
     dSum     : double
     dAllSumDep : double
     dAllSumTot : double
     dWorkPlanDep  : double
     dWorkPlanTot  : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle dToDate
  iDepNmb DepartmentSS
  iNmb PostSS CategorySS WorkStationsSS PayModelSS TaxRateSS dSum
  dWorkPlanDep dSumDep dAllSumDep
  dWorkPlanTot dSumTot dAllSumTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 И                                                                     стр. @NP@
┌──────────────────────────────────────────────────────────────────────────────┐
│ N                                  Кол-во   Система                 Сумма    │
│п/п       Должность         Разряд  штатных  оплаты    Оклад        окладов   │
│                                    единиц                                    │
└──────────────────────────────────────────────────────────────────────────────┘ И
.}
.]h
.Begin
     not_first_page := false;
 End.
 И                                                   Утверждаю И





 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И                                 на @@@@@@@@@@ И

 И┌──────────────────────────────────────────────────────────────────────────────┐ И
 И│ N                                  Кол-во   Система                 Сумма    │ И
 И│п/п       Должность         Разряд  штатных  оплаты    Оклад        окладов   │ И
 И│                                    единиц                                    │ И
 И└──────────────────────────────────────────────────────────────────────────────┘ И
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanTot := 0;
  dSumTot      := 0;
  dAllSumTot   := 0 ;
  iDepNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.Begin
  dWorkPlanDep := 0;
  dSumDep      := 0;
  dAllSumDep   := 0 ;
  iNmb := 0;
  iDepNmb := iDepNmb + 1;
 End.
 И    &&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.}
.Begin
  iNmb := iNmb + 1;
  dWorkPlanDep := dWorkPlanDep + WorkStationsSS;
  dSum         := double(TaxRateSS) * WorkStationsSS;
  dSumDep      := dSumDep + double(TaxRateSS);
  dAllSumDep   := dAllSumDep + dSum ;
 End.
 И &&& @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ &&.&&& @@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& И
.}
.}
.}

 И        ИТОГО по подразделению:     &&&.&&&             &&&&&&&&.&& &&&&&&&&.&& И
.Begin
  dWorkPlanTot := dWorkPlanTot + dWorkPlanDep;
  dSumTot      := dSumTot + dSumDep;
  dAllSumTot   := dAllSumTot + dAllSumDep ;
 End.
.}
 И        ИТОГО по организации        &&&.&&&             &&&&&&&&.&& &&&&&&&&.&& И
.endform

.LINKFORM "Штатное расписание по должностям подразделения" PROTOTYPE IS staff_ss
.group "Штатное расписание по должностям подразделения"
.DEFO PORTRAIT
.p 60
!.o 4
.Var
     iNmb     : integer
     dSumDep  : double
     dSum     : double
     dAllSumDep : double
     dWorkPlanDep  : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle MainDepartment dToDate
  iNmb PostSS CategorySS WorkStationsSS PayModelSS TaxRateSS dSum
  dWorkPlanDep dSumDep dAllSumDep
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 И                                                                     стр. @NP@
┌──────────────────────────────────────────────────────────────────────────────┐
│ N                                  Кол-во   Система                 Сумма    │
│п/п       Должность         Разряд  штатных  оплаты    Оклад        окладов   │
│                                    единиц                                    │
└──────────────────────────────────────────────────────────────────────────────┘ И

.}
.]h
.Begin
     not_first_page := false;
 End.
 И                                                   Утверждаю И





 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И                           на @@@@@@@@@@ И
 И┌──────────────────────────────────────────────────────────────────────────────┐ И
 И│ N                                  Кол-во   Система                 Сумма    │ И
 И│п/п       Должность         Разряд  штатных  оплаты    Оклад        окладов   │ И
 И│                                    единиц                                    │ И
 И└──────────────────────────────────────────────────────────────────────────────┘ И

.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanDep := 0;
  dSumDep      := 0;
  dAllSumDep   := 0;
  iNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.}
.}
.}
.Begin
  iNmb := iNmb + 1;
  dWorkPlanDep := dWorkPlanDep + WorkStationsSS;
  dSum         := (double(TaxRateSS)*WorkStationsSS);
  dAllSumDep   := dAllSumDep + dSum ;
  dSumDep      := dSumDep + double(TaxRateSS);
 End.
 И &&& @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@ &&.&&& @@@@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& И
.}
.}
 И        ИТОГО по подразделению:     &&&.&&&             &&&&&&&&.&& &&&&&&&&.&& И
.endform

.LINKFORM "Штатное наполнение" PROTOTYPE IS staff_ss
.group "Штатное наполнение"
.DEFO LANDSCAPE
.p 41
!.o 6
.Var iNmb     : integer
     iDepNmb  : integer
     dSumDep  : double
     dSumTot  : double
     dSumFactDep,  dSumFactTot   : double
     dWorkPlanDep, dWorkFactDep  : double
     dWorkPlanTot, dWorkFactTot  : double
     PostSS_0 : string
     TaxRateSS_0 : double
     not_first_page : boolean
     OutTaxRate : Double
.EndVar
.Fields
  RepTitle dToDate
  iDepNmb DepartmentSS
  iNmb PostSS FIO PayModelL TaxRateSS TaxRateL WorkStationsSS VacancyRate
  dSumDep dSumFactDep dWorkPlanDep dWorkFactDep
  dSumTot dSumFactTot dWorkPlanTot dWorkFactTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 И                                                                                                           стр. @NP@
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                   Фамилия Имя Отчество           Система      Оклад по      Оклад     Кол-во  Занято  │
│п/п       Должность                                                 оплаты       штатному      факти-    штатных штатных │
│                                                                                расписанию     ческий    единиц  единиц  │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ И
.}
.]h
.Begin
     not_first_page := false;
 End.
 И                                                                                              Утверждаю






 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                     на @@@@@@@@@@

┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                   Фамилия Имя Отчество           Система      Оклад по      Оклад     Кол-во  Занято  │
│п/п       Должность                                                 оплаты       штатному      факти-    штатных штатных │
│                                                                                расписанию     ческий    единиц  единиц  │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ И
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanTot := 0;
  dWorkFactTot := 0;
  dSumTot      := 0;
  dSumFactTot  := 0;
  iDepNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  dSumDep      := 0;
  dSumFactDep  := 0;
  PostSS_0 := '';
  TaxRateSS_0 := 0;
  iNmb := 0;
  iDepNmb := iDepNmb + 1;
 End.
 И      &&&  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
  if (PostSS <> PostSS_0) or (double(TaxRateSS) <> TaxRateSS_0)
      dWorkPlanDep := dWorkPlanDep + WorkStationsSS;
  PostSS_0 := trim(PostSS);
  TaxRateSS_0 := double(TaxRateSS);
  dWorkFactDep := dWorkFactDep + double(VacancyRate);
  dSumDep      := dSumDep + double(TaxRateSS);
  dSumFactDep  := dSumFactDep + double(TaxRateL);
 End.
 И &&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@  &&&&&&&&.&&  &&&&&&&&.&& &&&.&&& &&&.&&& И
.}
.}
.}
.}
 И        ИТОГО по подразделению:                                                  &&&&&&&&.&&  &&&&&&&&.&& &&&.&&& &&&.&&& И
.Begin
  dWorkPlanTot := dWorkPlanTot + dWorkPlanDep;
  dWorkFactTot := dWorkFactTot + dWorkFactDep;
  dSumTot      := dSumTot + dSumDep;
  dSumFactTot  := dSumFactTot + dSumFactDep;
 End.
.}
 Р        ИТОГО по организации                                                     &&&&&&&&.&&  &&&&&&&&.&& &&&.&&& &&&.&&& Р
.endform

.LINKFORM "Штатное наполнение подразделения" PROTOTYPE IS staff_ss
.group "Штатное наполнение подразделения"
.DEFO LANDSCAPE
.p 41
!.o 6
.Var iNmb     : integer
     dSumDep  : double
     dSumFactDep   : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     PostSS_0      : string
     TaxRateSS_0 : double
     not_first_page : boolean
.EndVar
.Fields
  RepTitle MainDepartment dToDate
  iNmb PostSS FIO PayModelL TaxRateSS TaxRateL WorkStationsSS VacancyRate
  dSumDep dSumFactDep dWorkPlanDep dWorkFactDep
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 И                                                                                                 стр. @NP@
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                   Фамилия Имя Отчество           Система      Оклад по      Оклад     Кол-во  Занято  │
│п/п       Должность                                                 оплаты       штатному      факти-    штатных штатных │
│                                                                                расписанию     ческий    единиц  единиц  │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ И
.}
.]h
.Begin
     not_first_page := false;
 End.
 И                                                                                              Утверждаю






 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                     на @@@@@@@@@@

┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                   Фамилия Имя Отчество           Система      Оклад по      Оклад     Кол-во  Занято  │
│п/п       Должность                                                 оплаты       штатному      факти-    штатных штатных │
│                                                                                расписанию     ческий    единиц  единиц  │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ И
.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  dSumDep      := 0;
  dSumFactDep  := 0;
  iNmb := 0;
  PostSS_0 := '';
  TaxRateSS_0 := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.{staff_ss_CycleAdvFeatures  CheckEnter
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
  if (PostSS <> PostSS_0) or (double(TaxRateSS) <> TaxRateSS_0)
     dWorkPlanDep := dWorkPlanDep + WorkStationsSS;
  PostSS_0 := trim(PostSS);
  TaxRateSS_0 := double(TaxRateSS);
  dWorkFactDep := dWorkFactDep + double(VacancyRate);
  dSumDep      := dSumDep + double(TaxRateSS);
  dSumFactDep  := dSumFactDep + double(TaxRateL);
 End.
 И &&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@  &&&&&&&&.&&  &&&&&&&&.&& &&&.&&& &&&.&&& И
.}
.}
.}
.}
.}
 И        ИТОГО по подразделению:                                                  &&&&&&&&.&&  &&&&&&&&.&& &&&.&&& &&&.&&&
 И.endform

.LINKFORM "Штатное наполнение с тарифом" PROTOTYPE IS staff_ss
.group "Штатное наполнение с тарифом"
.DEFO LANDSCAPE
.p 41
!.o 6
.Var iNmb     : integer
     iDepNmb  : integer
     dSumDep  : double
     dSumTot  : double
     dWorkPlanDep, dWorkFactDep  : double
     dWorkPlanTot, dWorkFactTot  : double
     PostSS_0 : string
     TaxRateSS_0 : double
     not_first_page : boolean

     AFPs    : array[1..10] of String
     OutAFP  : String
     AFP_Nmb : Integer
     iTmp    : Integer

     OutTaxRate     : Double
     OutHourTarStav : String
.EndVar
.Fields
  RepTitle dToDate
  iDepNmb DepartmentSS
  iNmb PostSS AFPs[1] FIO PayModelL OutHourTarStav OutTaxRate WorkStationsSS VacancyRate
  OutAFP
  dSumDep dWorkPlanDep dWorkFactDep
  dSumTot dWorkPlanTot dWorkFactTot
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
 И                                                                                                                       стр. @NP@
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                                                               Система      Час.    Оклад,    Кол-во  Занято  │
│п/п        Должность        Xарактеристики         Фамилия, имя, отчество        оплаты       тар.    тариф     штатных штатных │
│                                                                                             ставка             единиц  единиц  │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
 И.}
.]h
.Begin
     not_first_page := false;
 End.
 И                                                                                                      Утверждаю И

 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ И
 И                                                         на @@@@@@@@@@ И

 И┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐ И
 И│ N                                                                               Система      Час.    Оклад,    Кол-во  Занято  │ И
 И│п/п        Должность        Xарактеристики         Фамилия, имя, отчество        оплаты       тар.    тариф     штатных штатных │ И
 И│                                                                                             ставка             единиц  единиц  │ И
 И└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
 И.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanTot := 0;
  dWorkFactTot := 0;
  dSumTot      := 0;
  iDepNmb := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  dSumDep      := 0;
  PostSS_0 := '';
  TaxRateSS_0 := 0;
  iNmb := 0;
  iDepNmb := iDepNmb + 1;
 End.
 И      &&&  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 И.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.begin
 for (iTmp := 1 ; iTmp <= 10 ; iTmp := iTmp + 1)
  AFPs[iTmp] := '' ;
 AFP_Nmb := 0 ;
end.
.{staff_ss_CycleAdvFeatures  CheckEnter
.begin
 AFP_Nmb := AFP_Nmb + 1 ;
 AFPs[AFP_Nmb] := AFPosition ;
end.
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
  if Word(PayModelCodeSS) = 30
   begin
    OutHourTarStav := '' ;
    OutTaxRate     := Double(TaxRateL) ;
   end
  else
   begin
    OutHourTarStav := String(HourTarStavSS, 8, 3) ;
    OutTaxRate     := Double(TaxRateL) ;//Double(dSMG) * Double(HourTarStavSS) ;
   end
  if (PostSS <> PostSS_0) or (Double(TaxRateSS) <> TaxRateSS_0)
      dWorkPlanDep := dWorkPlanDep + WorkStationsSS;
  PostSS_0 := trim(PostSS);
  TaxRateSS_0 := Double(TaxRateSS) ;
  dWorkFactDep := dWorkFactDep + double(VacancyRate);
  dSumDep      := dSumDep + OutTaxRate;
 End. И
 &&& @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@  &&&&.&& &&&&&&&&.&& &&&.&&& &&&.&&&
 И.begin iTmp := 2 ; end.
.{ while iTmp <= AFP_Nmb
.begin
 OutAFP := AFPs[iTmp] ;
 iTmp   := iTmp + 1 ;
end. И
                           @@@@@@@@@@@@@@@@@@@
 И.}
.}
.}
.}
.} И
        ИТОГО по подразделению:                                                                      &&&&&&&&.&& &&&.&&& &&&.&&&
 И.Begin
  dWorkPlanTot := dWorkPlanTot + dWorkPlanDep;
  dWorkFactTot := dWorkFactTot + dWorkFactDep;
  dSumTot      := dSumTot + dSumDep;
 End.
.} И
        ИТОГО по организации                                                                         &&&&&&&&.&& &&&.&&& &&&.&&&
 И.endform

.LINKFORM "Штатное наполнение подразделения с тарифом" PROTOTYPE IS staff_ss
.group "Штатное наполнение подразделения с тарифом"
.DEFO LANDSCAPE
.p 41
!.o 6
.Var iNmb     : integer
     dSumDep  : double
     dWorkPlanDep  : double
     dWorkFactDep  : double
     PostSS_0 : string
     TaxRateSS_0 : double
     not_first_page : boolean

     AFPs    : array[1..10] of String
     OutAFP  : String
     AFP_Nmb : Integer
     iTmp    : Integer

     OutHourTarStav : String
     OutTaxRate     : Double
.EndVar
.Fields
  RepTitle MainDepartment dToDate
  iNmb PostSS AFPs[1] FIO PayModelL OutHourTarStav OutTaxRate WorkStationsSS VacancyRate
  OutAFP
  dSumDep dWorkPlanDep dWorkFactDep
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page) И
                                                                                                                       стр. @NP@
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                                                               Система      Час.    Оклад,    Кол-во  Занято  │
│п/п        Должность        Xарактеристики         Фамилия, имя, отчество        оплаты       тар.    тариф     штатных штатных │
│                                                                                             ставка             единиц  единиц  │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
 И.}
.]h
.Begin
     not_first_page := false;
 End. И
                                                                                                    Утверждаю И


 И @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                          на @@@@@@@@@@

┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ N                                                                               Система      Час.    Оклад,    Кол-во  Занято  │
│п/п        Должность        Xарактеристики         Фамилия, имя, отчество        оплаты       тар.    тариф     штатных штатных │
│                                                                                             ставка             единиц  единиц  │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
 И.Begin
     not_first_page := true;
 End.
.{staff_ss_CycleFiltr  CheckEnter
.}
.Begin
  dWorkPlanDep := 0;
  dWorkFactDep := 0;
  dSumDep      := 0;
  iNmb := 0;
  PostSS_0 := '';
  TaxRateSS_0 := 0;
 End.
.{staff_ss_Ctrl1  CheckEnter
.{staff_ss_Ctrl2  CheckEnter
.{staff_ss_Ctrl3  CheckEnter
.{staff_ss_Cycle1 CheckEnter
.begin
 for (iTmp := 1 ; iTmp <= 10 ; iTmp := iTmp + 1)
  AFPs[iTmp] := '' ;
 AFP_Nmb := 0 ;
end.
.{staff_ss_CycleAdvFeatures  CheckEnter
.begin
 AFP_Nmb := AFP_Nmb + 1 ;
 AFPs[AFP_Nmb] := AFPosition ;
end.
.}
.{staff_ss_CycleAppendix  CheckEnter
.}
.{staff_ss_CycleVacancy  CheckEnter
.Begin
  iNmb := iNmb + 1;
  if Word(PayModelCodeSS) = 30
   begin
    OutHourTarStav := '' ;
    OutTaxRate     := Double(TaxRateL) ;
   end
  else
   begin
    OutHourTarStav := String(HourTarStavSS, 8, 3) ;
    OutTaxRate     := Double(dSMG) * Double(HourTarStavSS) ;
   end
  if (PostSS <> PostSS_0) or (double(TaxRateSS) <> TaxRateSS_0)
     dWorkPlanDep := dWorkPlanDep + WorkStationsSS;
  PostSS_0 := trim(PostSS);
  TaxRateSS_0 := double(TaxRateSS);
  dWorkFactDep := dWorkFactDep + double(VacancyRate);
  dSumDep      := dSumDep + OutTaxRate ;
 End. И
 &&& @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@  &&&&.&& &&&&&&&&.&& &&&.&&& &&&.&&&
 И.begin iTmp := 2 ; end.
.{ while iTmp <= AFP_Nmb
.begin
 OutAFP := AFPs[iTmp] ;
 iTmp   := iTmp + 1 ;
end. И
                           @@@@@@@@@@@@@@@@@@@
 И.}
.}
.}
.}
.}
.} И
        ИТОГО по подразделению:                                                                      &&&&&&&&.&& &&&.&&& &&&&.&&
 И.endform