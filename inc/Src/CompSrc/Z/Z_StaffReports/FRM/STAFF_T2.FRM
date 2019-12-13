!  ╔═════════════════════════════════════════════════════════════════════╗
!  ║    А О   "Н О В Ы Й   А Т Л А Н Т",    Н Т О  "T O P   S O F T"     ║
!  ║           Проект "БИЗНЕС-КАДРЫ" (с) 1996, 1997                      ║
!  ║      Версия : 5.00                                                  ║
!  ║      Разработал:  Московских А.М.                                   ║
!  ║      Назначение:  Выходные формы для отчетов T2                     ║
!  ║      Параметры:                                                     ║
!  ║      Изменения:                                                     ║
!  ╚═════════════════════════════════════════════════════════════════════╝
#doc
Выходные формы для отчетов T2
#end
.form staff_t2
.Fields
  RepTitle
  dFromDate dToDate
  FiltrName FiltrCode FiltrString
  Header1 Header2 Header3

!--- Create table Persons "Физические лица"   // [2]
  PassNmb DepName TabNmb Alphabet TestPeriod
  JobNature ComplSrc InvalidGrp PensionDate
  PensionCause FIO BornDate
  Dependants Sex
#ifNdef Gal9_1
  : char
#end
  Nationality
  FamilyState Education Publications Inventions AppDate
  BornAddrZIP BornAddrStreet BornAddrSity BornAddrRegion

!--- Create table Features "Анкетные данные"                    // [17]
  Science Profession

!--- Create table Appointments "Назначения и перемещения" - основное // [10]
  OrderDateL OrderNmbL ContractNmbL AppointDateL DismissDateL DepartmentL PostL
  TariffL CategoryL EmpCategoryL PayModelL WorkCondL PostAccordL WorkRegimeL
  TaxRateL PayCurrencyL PrivPensionL VacationL EmpRateL

!--- Create table Education "Сведения об образовании"  // [7]
  UnivName1 UnivMode1 UnivCourse1 UnivFromDate1 UnivToDate1 DiplomNmb1
  DiplomDate1 Speciality1 Qualification1
  UnivName2 UnivMode2 UnivCourse2 UnivFromDate2 UnivToDate2 DiplomNmb2
  DiplomDate2 Speciality2 Qualification2

!--- Create table ServLen "Сведения о стаже" // [15]
  SLPositionC SLFromDateC SLToDateC SLYearsC SLMonthsC SLDaysC
  SLPositionT SLFromDateT SLToDateT SLYearsT SLMonthsT SLDaysT
  SLPositionS SLFromDateS SLToDateS SLYearsS SLMonthsS SLDaysS
  SLPositionE SLFromDateE SLToDateE SLYearsE SLMonthsE SLDaysE

!--- Create table PsnLinks "Ближайшие родственники"  // [6]
  PLSeqNmb PLLinkType PLToPersonFIO PLBornDate

!--- Create table Persons "Физические лица"   // [2]
  PasspRusSer PasspRusNmb PasspRusGivenBy PasspRusGivenDate PasspRusToDate
  PasspRusKind
  PasspForSer PasspForNmb PasspForGivenBy PasspForGivenDate PasspForToDate
  StrahNmb
  LiveAddrZIP LiveAddrStreet LiveAddrSity LiveAddrRegion
  PasspAddrZIP PasspAddrStreet PasspAddrSity PasspAddrRegion

!--- Create table Communications "Коммуникации"  // [5]
  Addr

!--- Create table Conscription "Сведения ВУС"  // [3]
  ConsRelCat ConsAcntGroupCat ConsAcntKindCat ConsAcntCatCat
  ConsAcntClassCat ConsAcntStrucCat ConsMilRankCat ConsMilAbilityCat
  ConsVUSCat ConsMilComissCat MobOrder MilCard MobOrderCom MobOrderPnt

!--- Create table Appointments "Назначения и перемещения" // [10]
  OrderDate OrderNmb ContractNmb AppointDate DismissDate Department Post
  Tariff Category EmpCategory PayModel WorkCond PostAccord WorkRegime
  TaxRate PayCurrency PrivPension Vacation EmpRate

!--- Create table Vacations "Сведения об отпусках" // [11]
  VacCode VacClass WorkYearBeg WorkYearEnd PlanYearBeg PlanYearEnd
  FactYearBeg FactYearEnd VacDuration VacFoundation VacOrderNmb VacOrderDate

  Appendix
!--- Create table Persons "Физические лица"   // [2]
   DisOrderDate DisOrderNmb DisDate DisReason
  Footer3 Footer2 Footer1
.EndFields
.HIDE
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 За период с @@@@@@@@@@ по @@@@@@@@@@
.{staff_t2_CycleFiltr  CheckEnter
 ^: ^ ^
.}
 --------------------------------------------------------------------------------
.{staff_t2_Ctrl1  CheckEnter
   заголовок 1        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_Ctrl2  CheckEnter
   заголовок 2        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_Ctrl3  CheckEnter
   заголовок 3        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_Cycle1  CheckEnter

              Таблица "Физические лица"
 Пропуск: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Табельный номер: @@@@@@@@@@@@@@@@@@@@
 Алфавит: @
 Испытательный срок: @@@@@@@@@@@@@
 Характер работы: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Источник комплектования: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Группа инвалидности:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Год оформления пенсии: @@@@@@@@@@@@@
 Причина ухода на пенсию: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ФИО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата рождения: @@@@@@@@@@
 Количество иждивенцев: @@@@
 Пол: @@@
 Национальность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Семейное положение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Образование: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Число печатных трудов: @@@@
 Число изобретений: @@@@
 Дата приема на работу: @@@@@@@@@@@@
 Место рождения:  индекс @@@@@@@@@@@@
 ул., дом, кв. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 город @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CycleBornAddr  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Ученое звание: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Вторая профессия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

              Таблица "Назначения и перемещения" - последняя запись
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
 Форма оплаты труда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Условия труда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Соответствие спец-ти занимаемой должн.: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Режим работы: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Оклад, ставка, тариф: @@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Валюта оплаты: @@@@@@@@@@@@@@@@@@@@@@@
 Льготная пенсия: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Продолжительность отпуска (дней): @@@@
 Коэффициент для среднесписочной: @@@@@

              Таблица "Сведения об образовании"
             Строка 1
 Наименование учебного заведения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Форма обучения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Курс: @@@@@@@@@@@@
 Дата поступления: @@@@@@@@@@
 Дата окончания: @@@@@@@@@@
 Номер диплома: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата выдачи диплома: @@@@@@@@@@
 Специальность по диплому: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Квалификация по диплому: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
             Строка 2
 Наименование учебного заведения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Форма обучения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Курс: @@@@@@@@@@@@
 Дата поступления: @@@@@@@@@@
 Дата окончания: @@@@@@@@@@
 Номер диплома: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата выдачи диплома: @@@@@@@@@@
 Специальность по диплому: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Квалификация по диплому: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

              Таблица "Сведения о стаже"
          непрерывный
 Наименование стажа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата начала отсчета стажа: @@@@@@@@@@
 Дата конца отсчета стажа: @@@@@@@@@@@@@@@@
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@
          общий
 Наименование стажа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата начала отсчета стажа: @@@@@@@@@@
 Дата конца отсчета стажа: @@@@@@@@@@@@@@@@
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@
          по специальности
 Наименование стажа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата начала отсчета стажа: @@@@@@@@@@
 Дата конца отсчета стажа: @@@@@@@@@@@@@@@@
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@
          на данном предприятии, для выслуги
 Наименование стажа: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата начала отсчета стажа: @@@@@@@@@@
 Дата конца отсчета стажа: @@@@@@@@@@@@@@@@
 Продолжительность стажа, полных лет: @@@  месяцев:@@@  дней:@@@

              Таблица "Ближайшие родственники"
.{staff_t2_CyclePL  CheckEnter
 N п/п:  @@@@
 Степень родства: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ФИО: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата рождения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

            Национальный паспорт
 Серия: @@@@@@@@@@@@@@@@@@@@@@
 Номер: @@@@@@@@@@@@@@@@@@@@@@
 Выдан: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата выдачи: @@@@@@@@@@
 Действителен по: @@@@@@@@@@
 Вид паспорта: @@@@
            Загранпаспорт
 Серия: @@@@@@@@@@@@@@@@@@@@@@
 Номер: @@@@@@@@@@@@@@@@@@@@@@
 Выдан: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата выдачи: @@@@@@@@@@
 Действителен по: @@@@@@@@@@
            Страховое свидетельство
 Номер: @@@@@@@@@@@@@@@@@@@@@@
               Место проживания:  индекс @@@@@@@@@@@@
 ул., дом, кв. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 город @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CycleLiveAddr  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
               Место регистрации: индекс @@@@@@@@@@@@
 ул., дом, кв. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 город @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CyclePasspAddr  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

              Таблица "Коммуникации"
 Номер телефона: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

              Таблица "Сведения ВУС"
Отношение к воинской обязанности: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Группа воинского учета: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Вид воинского учета: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Категория воинского учета: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Разряд воинского учета: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Состав воинского учета: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Воинское звание: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Годность к военной службе: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Военно-учетная специальность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Наименование военного комиссариата: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Наличие моб. предписания: @@@@@@@@@@@@@
Военный билет N: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Моб. предписание-команда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Моб. предписание-пункт явки: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

              Таблица "Назначения и перемещения"
.{staff_t2_CycleApp  CheckEnter
 Дата приказа:  @@@@@@@@@@
 Номер приказа: @@@@@@@@@@@@@@@@@@@@@@@@
 Контракт N: @@@@@@@@@@@@@@@@@@@@@@@@@@
 Дата назначения: @@@@@@@@@@
 Дата ухода с должности: @@@@@@@@@@
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Тариф:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Разряд: @@@@
 Категория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
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

              Таблица "Сведения об отпусках"
.{staff_t2_CycleVac  CheckEnter
 Код отпуска: @@@@@@@@
 Вид отпуска: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Рабочий год - начало:    @@@@@@@@@@
 Рабочий год - окончание: @@@@@@@@@@
 Запланирован отпуск - начало:    @@@@@@@@@@
 Запланирован отпуск - окончание: @@@@@@@@@@
 Предоставлен отпуск - начало:    @@@@@@@@@@
 Предоставлен отпуск - окончание: @@@@@@@@@@
 Продолжительность отпуска, дней: @@@
 Основание: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Номер приказа: @@@@@@@@@@@@@@
 Дата приказа:  @@@@@@@@@@
.}

              Таблица "Приложения"
.{staff_t2_CycleAppendix  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}

 Дата  приказа об увольнении: @@@@@@@@@@
 Номер приказа об увольнении: @@@@@@@@@@@@@@@@@@
 Дата увольнения: @@@@@@@@@@
 Основание увольнения: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог3: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог2: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Итог1: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.endform
.LINKFORM "ЛИЧНАЯ  КАРТОЧКА" PROTOTYPE IS staff_t2
.group "Личная карточка"
.p 60
.Var
     not_first_page : boolean
.EndVar
.Fields
  DepName Sex TabNmb Alphabet FIO if(String(BornDate)='ДД/ММ/ГГГГ', '', BornDate)
  BornAddrZIP BornAddrStreet BornAddrSity BornAddrRegion  Nationality Education
  UnivName1 if(String(UnivToDate1)='ДД/ММ/ГГГГ', '', UnivToDate1)
  UnivName2 if(String(UnivToDate2)='ДД/ММ/ГГГГ', '', UnivToDate2) Speciality1 Qualification1
  DiplomNmb1 if(String(DiplomDate1)='ДД/ММ/ГГГГ', '', DiplomDate1)
  Science PostL Profession
  PostL

  if(String(SLFromDateS)='ДД/ММ/ГГГГ', '', SLFromDateS)
  if(String(SLFromDateT)='ДД/ММ/ГГГГ', '', SLFromDateT)
  if(String(SLFromDateC)='ДД/ММ/ГГГГ', '', SLFromDateC)
  if(String(SLFromDateE)='ДД/ММ/ГГГГ', '', SLFromDateE)
  FamilyState
  PLSeqNmb PLLinkType PLToPersonFIO if(String(PLBornDate)='ДД/ММ/ГГГГ', '', PLBornDate)
  PasspRusSer PasspRusNmb PasspRusGivenBy if(String(PasspRusGivenDate)='ДД/ММ/ГГГГ', '', PasspRusGivenDate)
  PasspAddrZIP PasspAddrStreet PasspAddrSity PasspAddrRegion
  Addr
  ConsAcntGroupCat ConsAcntCatCat ConsAcntStrucCat ConsMilRankCat
  ConsVUSCat ConsMilComissCat  ConsAcntKindCat
  AppointDate Department EmpCategory Post PostAccord TaxRate
  WorkCond OrderNmb if(String(OrderDate)='ДД/ММ/ГГГГ', '', OrderDate)
  VacClass WorkYearBeg WorkYearEnd VacFoundation VacDuration
  Appendix
  if(String(DisDate)='ДД/ММ/ГГГГ', '', DisDate)
  DisReason DisOrderNmb if(String(DisOrderDate)='ДД/ММ/ГГГГ', '', DisOrderDate)
.EndFields
.[h OVERWRITE
.{ ?internal;(not_first_page)
                                                      стр. @NP@
.}
.]h

.Begin
     not_first_page := false;
 End.
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ------------------------------------
                                            Пол  | Табельный номер | Алфавит
                                         --------|-----------------|---------
                                            @@@  |    @@@@@@@@@    |    @
                                         ------------------------------------
.Begin
     not_first_page := true;
 End.


                             ЛИЧНАЯ  КАРТОЧКА 

                            1. ОБЩИЕ СВЕДЕНИЯ


 1. Фамилия, Имя, Отчество :  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 2. Дата рождения:  @@@@@@@@@@
 3. Место рождения: @@@@@@@@@@
                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CycleBornAddr  CheckEnter
                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 4. Национальность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 5. Образование:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Название учебного заведения:
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Дата окончания учебного заведения: @@@@@@@@@@
    Название учебного заведения:
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Дата окончания учебного заведения: @@@@@@@@@@
 6. Специальность по диплому:
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 7. Квалификация по диплому:
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    Диплом/аттестат: N ^ от @@@@@@@@@@
 8. Ученое звание
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 9. Профессия: основная @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
               вторая   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
10. Должность  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          Стаж работы
11. По основной профессии, должности     @@@@@@@@@@@@@@@@@@@@
12. Общий                                @@@@@@@@@@@@@@@@@@@@
13. Непрерывный                          @@@@@@@@@@@@@@@@@@@@
14. В том числе на данном предприятии    @@@@@@@@@@@@@@@@@@@@
15. Семейное положение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
16. Состав семьи:
.{staff_t2_CyclePL  CheckEnter
     @@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@
.}
17.
18.
19. Паспорт: серия @@@@@@@@@@@@@@@@@@@  номер @@@@@@@@@@@@@@@@@@@
    кем выдан @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    дата выдачи @@@@@@@@@@
.{staff_t2_CycleLiveAddr  CheckEnter
.}
20. Домашний адрес:   @@@@@@@@@@
                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CyclePasspAddr  CheckEnter
                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
    Телефон: @@@@@@@@@@@@@@@@@@@@

                       2. СВЕДЕНИЯ О ВОИНСКОМ УЧЕТЕ

Группа учета:              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Категория учета:           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Состав:                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Воинское звание:           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Военно-учетная спец-сть:   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Название райвоенкомата по месту жительства:
                           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Состоит на специальном учете N:  @@@@@@@@@@@@@@@@@@@@@@@@@


                      3. НАЗНАЧЕНИЯ И ПЕРЕМЕЩЕНИЯ
 ===========================================================================
.{staff_t2_CycleApp  CheckEnter
 Дата назначения: @@@@@@@@@@
 Подразделение: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Участок:
 Категория: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Профессия, должность: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Соответствие спец-ти занимаемой должн.: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Тарифный разряд, оклад: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Условия труда: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Приказ N: @@@@@@@@@@@  от: @@@@@@@@@@

.}
 ===========================================================================

                              6. ОТПУСКА
 ===========================================================================
.{staff_t2_CycleVac  CheckEnter
 Вид отпуска: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 За период  с @@@@@@@@@@ по @@@@@@@@@@
 Основание:   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Продолжительность отпуска, дней: @@@@@@@@@@

.}
 ===========================================================================

                        8. Дополнительные сведения
.{staff_t2_CycleAppendix  CheckEnter
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
 Дата увольнения    @@@@@@@@@@
 Причина увольнения @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 Приказ N ^ от @@@@@@@@@@

 Дата заполнения                            Подпись ______________

.}
.}
.}
.}
.endform
.LINKFORM "Карточка страхователя 12" PROTOTYPE IS staff_t2
.group "Карточка страхователя 12"
.Var sFillDate : string
     sSecName  : string
     sName     : string
     sLastName : string
     sTmp      : string
     sTmp2     : string
     sTmp3     : string
     sBornSity : string
     sBornRn   : string
     sBornObl  : string
     sBornStr  : string
     sPasspAddr: string
     sLiveAddr : string
     sPasspRusSer1 : string
     sPasspRusSer2 : string
     sPasspRusGivenBy : string
     iTmp      : integer
.EndVar
.Fields
  sLastName sName sSecName Sex BornDate
  sBornSity sBornRn sBornObl sBornStr
  PasspAddrZIP sPasspAddr LiveAddrZIP sLiveAddr Addr sFillDate
  sPasspRusSer1 sPasspRusSer2 PasspRusNmb sPasspRusGivenBy PasspRusGivenDate
.EndFields
.Begin sFillDate := dToDate; End.
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
!--- Разбор ФИО по компонентам
.Begin
  sTmp := UpCase(Trim(FIO));
  iTmp := Instr(' ',sTmp);
  if (iTmp = 0)
  { sLastName := sTmp;
    sName     := '';
    sSecName  := '';
  } else
  { sLastName := Substr(sTmp, 1, iTmp-1);
    sTmp := Trim(Substr(sTmp, iTmp+1, 100));
    iTmp := Instr(' ',sTmp);
    if (iTmp = 0)
    { sName    := sTmp;
      sSecName := '';
    } else
    { sName     := Substr(sTmp, 1, iTmp-1);
      sSecName  := Trim(Substr(sTmp, iTmp+1, 100));
  } }
  iTmp := 0;
  sBornSity := UpCase(Trim(BornAddrSity));
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.Begin
  iTmp := iTmp + 1;
  if      (iTmp = 1) then
    sBornRn := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 2) then
    sBornObl := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 3) then
    sBornStr := UpCase(Trim(BornAddrRegion));
  else
    sBornRn := 'Ошибка: много уровней в адресе';
 End.
.}
.Begin
  if      (iTmp = 1) then
  { sBornStr := sBornRn;
    sBornObl := '';
    sBornRn  := '';
  } else if (iTmp = 2) then
  { sBornStr := sBornObl;
    sBornObl := sBornRn;
    sBornRn  := '';
  }
 End.
.{staff_t2_CyclePL  CheckEnter
.}
.Begin
  sTmp := UpCase(Trim(PasspRusSer));
  iTmp := Instr('-',sTmp);
  if (iTmp = 0)
  { sPasspRusSer1 := sTmp;
    sPasspRusSer2 := '';
! // было     sPasspRusSer1 и 2 := 'Ошибка';
  } else
  { sPasspRusSer1 := Trim(Substr(sTmp, 1, iTmp-1));
    sPasspRusSer2 := Trim(Substr(sTmp, iTmp+1, 100));
  }
  sPasspRusGivenBy := UpCase(Trim(PasspRusGivenBy));
  sLiveAddr := UpCase(Trim(LiveAddrSity));
  if (Length(LiveAddrStreet) > 0)
  { if (Length(sLiveAddr) > 0)
      sLiveAddr := sLiveAddr + ', ' + UpCase(Trim(LiveAddrStreet));
    else
      sLiveAddr := UpCase(Trim(LiveAddrStreet));
  }
 End.
.{staff_t2_CycleLiveAddr  CheckEnter
.Begin
  if (Length(LiveAddrRegion) > 0)
    sLiveAddr := UpCase(Trim(LiveAddrRegion)) + ', ' + sLiveAddr;
 End.
.}
.Begin
  sPasspAddr := UpCase(Trim(PasspAddrSity));
  if (Length(PasspAddrStreet) > 0)
  { if (Length(sPasspAddr) > 0)
      sPasspAddr := sPasspAddr + ', ' + UpCase(Trim(PasspAddrStreet));
    else
      sPasspAddr := UpCase(Trim(PasspAddrStreet));
  }
 End.
.{staff_t2_CyclePasspAddr  CheckEnter
.Begin
  if (Length(PasspAddrRegion) > 0)
    sPasspAddr := UpCase(Trim(PasspAddrRegion)) + ', ' + sPasspAddr;
 End.
.}
"^","^","^","^","^","^","^","^","^","^","^","^","^","^","^","ПАСП","^","^","^","^","^"
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
.}
.endform
.LINKFORM "Карточка страхователя 106" PROTOTYPE IS staff_t2
.group "Карточка страхователя 106"
.Var sFillDate : string
     sSecName  : string
     sName     : string
     sLastName : string
     sTmp      : string
     sTmp2     : string
     sTmp3     : string
     sBornSity : string
     sBornRn   : string
     sBornObl  : string
     sBornStr  : string
     sPasspAddr: string
     sLiveAddr : string
     sPasspRusSer1 : string
     sPasspRusSer2 : string
     sPasspRusGivenBy : string
     iTmp      : integer
.EndVar
.Fields
  TabNmb
  sLastName sName sSecName Sex BornDate
  sBornSity sBornRn sBornObl sBornStr
  PasspAddrZIP sPasspAddr LiveAddrZIP sLiveAddr Addr sFillDate
  sPasspRusSer1 sPasspRusSer2 PasspRusNmb sPasspRusGivenBy PasspRusGivenDate
.EndFields
.Begin sFillDate := dToDate; End.
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
!--- Разбор ФИО по компонентам
.Begin
  sTmp := UpCase(Trim(FIO));
  iTmp := Instr(' ',sTmp);
  if (iTmp = 0)
  { sLastName := sTmp;
    sName     := '';
    sSecName  := '';
  } else
  { sLastName := Substr(sTmp, 1, iTmp-1);
    sTmp := Trim(Substr(sTmp, iTmp+1, 100));
    iTmp := Instr(' ',sTmp);
    if (iTmp = 0)
    { sName    := sTmp;
      sSecName := '';
    } else
    { sName     := Substr(sTmp, 1, iTmp-1);
      sSecName  := Trim(Substr(sTmp, iTmp+1, 100));
  } }
  iTmp := 0;
  sBornSity := UpCase(Trim(BornAddrSity));
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.Begin
  iTmp := iTmp + 1;
  if      (iTmp = 1) then
    sBornRn := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 2) then
    sBornObl := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 3) then
    sBornStr := UpCase(Trim(BornAddrRegion));
  else
    sBornRn := 'Ошибка: много уровней в адресе';
 End.
.}
.Begin
  if      (iTmp = 1) then
  { sBornStr := sBornRn;
    sBornObl := '';
    sBornRn  := '';
  } else if (iTmp = 2) then
  { sBornStr := sBornObl;
    sBornObl := sBornRn;
    sBornRn  := '';
  }
 End.
.{staff_t2_CyclePL  CheckEnter
.}
.Begin
  sTmp := UpCase(Trim(PasspRusSer));
  iTmp := Instr('-',sTmp);
  if (iTmp = 0)
  { sPasspRusSer1 := sTmp;
    sPasspRusSer2 := '';
! // было     sPasspRusSer1 и 2 := 'Ошибка';
  } else
  { sPasspRusSer1 := Trim(Substr(sTmp, 1, iTmp-1));
    sPasspRusSer2 := Trim(Substr(sTmp, iTmp+1, 100));
  }
  sPasspRusGivenBy := UpCase(Trim(PasspRusGivenBy));
  sLiveAddr := UpCase(Trim(LiveAddrSity));
  if (Length(LiveAddrStreet) > 0)
  { if (Length(sLiveAddr) > 0)
      sLiveAddr := sLiveAddr + ', ' + UpCase(Trim(LiveAddrStreet));
    else
      sLiveAddr := UpCase(Trim(LiveAddrStreet));
  }
 End.
.{staff_t2_CycleLiveAddr  CheckEnter
.Begin
  if (Length(LiveAddrRegion) > 0)
    sLiveAddr := UpCase(Trim(LiveAddrRegion)) + ', ' + sLiveAddr;
 End.
.}
.Begin
  sPasspAddr := UpCase(Trim(PasspAddrSity));
  if (Length(PasspAddrStreet) > 0)
  { if (Length(sPasspAddr) > 0)
      sPasspAddr := sPasspAddr + ', ' + UpCase(Trim(PasspAddrStreet));
    else
      sPasspAddr := UpCase(Trim(PasspAddrStreet));
  }
 End.
.{staff_t2_CyclePasspAddr  CheckEnter
.Begin
  if (Length(PasspAddrRegion) > 0)
    sPasspAddr := UpCase(Trim(PasspAddrRegion)) + ', ' + sPasspAddr;
 End.
.}
"","^","^","^","^","^","^","^","^","^","^","^","^","^","^","^","^","ПАСП","","^","^","^","^","^"
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
.}
.endform
.LINKFORM "Карточка страхователя 221" PROTOTYPE IS staff_t2
.group "Карточка страхователя 221"
.Var sFillDate : string
     sSecName  : string
     sName     : string
     sLastName : string
     sTmp      : string
     sTmp2     : string
     sTmp3     : string
     sBornSity : string
     sBornRn   : string
     sBornObl  : string
     sBornStr  : string
     sPasspAddr: string
     sLiveAddr : string
     sPasspRusSer1 : string
     sPasspRusSer2 : string
     sPasspRusGivenBy : string
     iTmp      : integer
.EndVar
.Fields
  sFillDate
  sLastName sName sSecName Sex BornDate
  sBornSity sBornRn sBornObl sBornStr
  sPasspRusSer1 sPasspRusSer2 PasspRusNmb PasspRusGivenDate sPasspRusGivenBy
  PasspAddrZIP sPasspAddr LiveAddrZIP sLiveAddr Addr
.EndFields
.Begin sFillDate := dToDate; End.
.{staff_t2_CycleFiltr  CheckEnter
.}
"ЗГЛВ","02.21"
.{staff_t2_Ctrl1  CheckEnter
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
!--- Разбор ФИО по компонентам
.Begin
  sTmp := UpCase(Trim(FIO));
  iTmp := Instr(' ',sTmp);
  if (iTmp = 0)
  { sLastName := sTmp;
    sName     := '';
    sSecName  := '';
  } else
  { sLastName := Substr(sTmp, 1, iTmp-1);
    sTmp := Trim(Substr(sTmp, iTmp+1, 100));
    iTmp := Instr(' ',sTmp);
    if (iTmp = 0)
    { sName    := sTmp;
      sSecName := '';
    } else
    { sName     := Substr(sTmp, 1, iTmp-1);
      sSecName  := Trim(Substr(sTmp, iTmp+1, 100));
  } }
  iTmp := 0;
  sBornSity := UpCase(Trim(BornAddrSity));
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.Begin
  iTmp := iTmp + 1;
  if      (iTmp = 1) then
    sBornRn := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 2) then
    sBornObl := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 3) then
    sBornStr := UpCase(Trim(BornAddrRegion));
  else
    sBornRn := 'Ошибка: много уровней в адресе';
 End.
.}
.Begin
  if      (iTmp = 1) then
  { sBornStr := sBornRn;
    sBornObl := '';
    sBornRn  := '';
  } else if (iTmp = 2) then
  { sBornStr := sBornObl;
    sBornObl := sBornRn;
    sBornRn  := '';
  }
 End.
.{staff_t2_CyclePL  CheckEnter
.}
.Begin
  sTmp := UpCase(Trim(PasspRusSer));
  iTmp := Instr('-',sTmp);
  if (iTmp = 0)
  { sPasspRusSer1 := sTmp;
    sPasspRusSer2 := '';
! // было     sPasspRusSer1 и 2 := 'Ошибка';
  } else
  { sPasspRusSer1 := Trim(Substr(sTmp, 1, iTmp-1));
    sPasspRusSer2 := Trim(Substr(sTmp, iTmp+1, 100));
  }
  sPasspRusGivenBy := UpCase(Trim(PasspRusGivenBy));
  sLiveAddr := UpCase(Trim(LiveAddrSity));
  if (Length(LiveAddrStreet) > 0)
  { if (Length(sLiveAddr) > 0)
      sLiveAddr := sLiveAddr + ', ' + UpCase(Trim(LiveAddrStreet));
    else
      sLiveAddr := UpCase(Trim(LiveAddrStreet));
  }
 End.
.{staff_t2_CycleLiveAddr  CheckEnter
.Begin
  if (Length(LiveAddrRegion) > 0)
    sLiveAddr := UpCase(Trim(LiveAddrRegion)) + ', ' + sLiveAddr;
 End.
.}
.Begin
  sPasspAddr := UpCase(Trim(PasspAddrSity));
  if (Length(PasspAddrStreet) > 0)
  { if (Length(sPasspAddr) > 0)
      sPasspAddr := sPasspAddr + ', ' + UpCase(Trim(PasspAddrStreet));
    else
      sPasspAddr := UpCase(Trim(PasspAddrStreet));
  }
 End.
.{staff_t2_CyclePasspAddr  CheckEnter
.Begin
  if (Length(PasspAddrRegion) > 0)
    sPasspAddr := UpCase(Trim(PasspAddrRegion)) + ', ' + sPasspAddr;
 End.
.}
"АНКТ",,"^","^","^","^","^","СТАНДАРТ","^","","","","СТАНДАРТ","^","^","^","^","ПАСПОРТ","","^","^","^","^","^","^","^","^","^","^"
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
.}
.endform
.LINKFORM "База данных страхователя 221" PROTOTYPE IS staff_t2
.group "База данных страхователя 221"
.Var sFillDate : string
     sSecName  : string
     sName     : string
     sLastName : string
     sTmp      : string
     sTmp2     : string
     sTmp3     : string
     sBornSity : string
     sBornRn   : string
     sBornObl  : string
     sBornStr  : string
     sPasspAddr: string
     sLiveAddr : string
     sPasspRusSer1 : string
     sPasspRusSer2 : string
     sPasspRusGivenBy : string
     iTmp      : integer
     iBornDateD : integer
     iBornDateM : integer
     iBornDateY : integer
     sBornDateD : string
     sBornDateM : string
     sBornDateY : string
     sBornDate  : string
     sPasspGiven : string
     StrNmb : string;
     sPasspAddrZIP : string
     sLiveAddrZIP  : string
.EndVar
.Fields
  StrahNmb
  TabNmb
  sFillDate            //ГГГГММДД
  sLastName sName sSecName Sex
  iBornDateD iBornDateM iBornDateY  //покомпонентно
  sBornDate             //ГГГГММДД
  sBornSity sBornRn sBornObl sBornStr
  sPasspRusSer1 sPasspRusSer2 PasspRusNmb sPasspGiven sPasspRusGivenBy
  sPasspAddrZIP sPasspAddr sLiveAddrZIP sLiveAddr Addr
.EndFields
.Begin
  sFillDate := Substr(dToDate,7,4) + Substr(dToDate,4,2) + Substr(dToDate,1,2);
  End.
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
!--- Разбор ФИО по компонентам
.Begin
  sTmp := UpCase(Trim(FIO));
  iTmp := Instr(' ',sTmp);
  if (iTmp = 0)
  { sLastName := sTmp;
    sName     := '';
    sSecName  := '';
  } else
  { sLastName := Substr(sTmp, 1, iTmp-1);
    sTmp := Trim(Substr(sTmp, iTmp+1, 100));
    iTmp := Instr(' ',sTmp);
    if (iTmp = 0)
    { sName    := sTmp;
      sSecName := '';
    } else
    { sName     := Substr(sTmp, 1, iTmp-1);
      sSecName  := Trim(Substr(sTmp, iTmp+1, 100));
  } }
  iTmp := 0;
  sBornDateY := Substr(BornDate,7,4);
  sBornDateM := Substr(BornDate,4,2);
  sBornDateD := Substr(BornDate,1,2);
  sBornDate  := sBornDateY + sBornDateM + sBornDateD;
  iBornDateD := Integer(sBornDateD);
  iBornDateM := Integer(sBornDateM);
  iBornDateY := Integer(sBornDateY);
  sBornSity := UpCase(Trim(BornAddrSity));
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.Begin
  iTmp := iTmp + 1;
  if      (iTmp = 1) then
    sBornRn := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 2) then
    sBornObl := UpCase(Trim(BornAddrRegion));
  else if (iTmp = 3) then
    sBornStr := UpCase(Trim(BornAddrRegion));
  else
    sBornRn := 'Ошибка: много уровней в адресе';
 End.
.}
.Begin
  if      (iTmp = 1) then
  { sBornStr := sBornRn;
    sBornObl := '';
    sBornRn  := '';
  } else if (iTmp = 2) then
  { sBornStr := sBornObl;
    sBornObl := sBornRn;
    sBornRn  := '';
  }
 End.
.{staff_t2_CyclePL  CheckEnter
.}
.Begin
  sTmp := UpCase(Trim(PasspRusSer));
  iTmp := Instr('-',sTmp);
  if (iTmp = 0)
  { sPasspRusSer1 := sTmp;
    sPasspRusSer2 := '';
! // было     sPasspRusSer1 и 2 := 'Ошибка';
  } else
  { sPasspRusSer1 := Trim(Substr(sTmp, 1, iTmp-1));
    sPasspRusSer2 := Trim(Substr(sTmp, iTmp+1, 100));
  }
  sPasspRusGivenBy := UpCase(Trim(PasspRusGivenBy));
  sPasspGiven := Substr(PasspRusGivenDate,7,4) +
                 Substr(PasspRusGivenDate,4,2) +
                 Substr(PasspRusGivenDate,1,2);
  sLiveAddr := UpCase(Trim(LiveAddrSity));
  if (Length(LiveAddrStreet) > 0)
  { if (Length(sLiveAddr) > 0)
      sLiveAddr := sLiveAddr + ', ' + UpCase(Trim(LiveAddrStreet));
    else
      sLiveAddr := UpCase(Trim(LiveAddrStreet));
  }
 End.
.{staff_t2_CycleLiveAddr  CheckEnter
.Begin
  if (Length(LiveAddrRegion) > 0)
    sLiveAddr := UpCase(Trim(LiveAddrRegion)) + ', ' + sLiveAddr;
 End.
.}
.Begin
  sPasspAddr := UpCase(Trim(PasspAddrSity));
  if (Length(PasspAddrStreet) > 0)
  { if (Length(sPasspAddr) > 0)
      sPasspAddr := sPasspAddr + ', ' + UpCase(Trim(PasspAddrStreet));
    else
      sPasspAddr := UpCase(Trim(PasspAddrStreet));
  }
 End.
.{staff_t2_CyclePasspAddr  CheckEnter
.Begin
  if (Length(PasspAddrRegion) > 0)
    sPasspAddr := UpCase(Trim(PasspAddrRegion)) + ', ' + sPasspAddr;
 End.
.}
.Begin
  if (PasspAddrZIP = '0')
    sPasspAddrZIP := '';
  else
    sPasspAddrZIP := PasspAddrZIP;
  if (LiveAddrZIP = '0')
    sLiveAddrZIP := '';
  else
    sLiveAddrZIP := LiveAddrZIP;
 End.
"^","^","^","^","^","^","^","^","^","^","СТАНДАРТ","^",0,0,0,"СТАНДАРТ","^","^","^","^","ПАСПОРТ","ПАСПОРТ","","^","^","^","^","^","^","^","^","^","^",0,0,        ,"",0
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
.}
.endform
.LINKFORM "Состав семей сотрудников" PROTOTYPE IS staff_t2
.group "Состав семей сотрудников"
.Var
  iNmb   : integer
.EndVar
.Fields
  RepTitle if(String(dToDate)='ДД/ММ/ГГГГ', '', dToDate)
  DepName
  iNmb FIO PostL
  PLSeqNmb PLLinkType PLToPersonFIO if(String(PLBornDate)='ДД/ММ/ГГГГ', '', PLBornDate)
.EndFields
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                     по состоянию на @@@@@@@@@@

┌─────┬──────────────────────────────────┬──────────────────────────┐
│  N  │     Фамилия Имя Отчество         │ Занимаемая должность     │
│ п/п │                                  │                          │
└─────┴──────────────────────────────────┴──────────────────────────┘
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter

@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.Begin  iNmb := 0;  End.
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.}

 &&&&. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CyclePL  CheckEnter
          &&. @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@
.}
.{staff_t2_CycleLiveAddr  CheckEnter
.}
.{staff_t2_CyclePasspAddr  CheckEnter
.}
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
────────────────────────────────────────────────────────────────────
.}
.endform
.LINKFORM "Сотрудники в декретном отпуске" PROTOTYPE IS staff_t2
.group "Сотрудники в декретном отпуске"
.Var
  iNmb   : integer
.EndVar
.Fields
  RepTitle dToDate
  DepName
  iNmb FIO PostL
.EndFields
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                     по состоянию на @@@@@@@@@@

┌─────┬──────────────────────────────────┬──────────────────────────┐
│  N  │     Фамилия Имя Отчество         │ Занимаемая должность     │
│ п/п │                                  │                          │
└─────┴──────────────────────────────────┴──────────────────────────┘
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter

@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.Begin  iNmb := 0;  End.
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
.Begin
  iNmb := iNmb + 1;
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.}
 &&&&. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CyclePL  CheckEnter
.}
.{staff_t2_CycleLiveAddr  CheckEnter
.}
.{staff_t2_CyclePasspAddr  CheckEnter
.}
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
─────────────────────────────────────────────────────────────────────
.}
.endform
.LINKFORM "Дети сотрудников" PROTOTYPE IS staff_t2
.group "Дети сотрудников"
.Var
  iNmb   : integer
  iPLNmb : Integer
  DepCount: integer
  AllCount: integer
.EndVar
.Fields
  RepTitle dToDate
  DepName
  iNmb FIO PostL
  iPLNmb PLLinkType PLToPersonFIO PLBornDate
.EndFields
.Begin DepCount:= 0; End.

@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                     по состоянию на @@@@@@@@@@

┌─────┬──────────────────────────────────┬──────────────────────────┐
│  N  │     Фамилия Имя Отчество         │ Занимаемая должность     │
│ п/п │                                  │                          │
└─────┴──────────────────────────────────┴──────────────────────────┘
.{staff_t2_CycleFiltr  CheckEnter
.}
.{staff_t2_Ctrl1  CheckEnter

@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.Begin
 iNmb := 0;
 DepCount:= 0;
End.
.{staff_t2_Ctrl2  CheckEnter
.{staff_t2_Ctrl3  CheckEnter
.{staff_t2_Cycle1  CheckEnter
.Begin
  iNmb := iNmb + 1;
  iPLNmb := 0 ;
 End.
.{staff_t2_CycleBornAddr  CheckEnter
.}

 &&&&. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{staff_t2_CyclePL  CheckEnter
.begin
 iPLNmb := iPLNmb + 1;
 DepCount:= DepCount + 1;
 AllCount:= AllCount + 1;
 end.
!.Begin
!  wAge := IntervalYears( StrToDate(BornDate,  'DD/MM/YYYY'),
!                         StrToDate(dToDate, 'DD/MM/YYYY') );
! End.
!--.{?Internal;wAge=3
          &&. @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@
!-- .}
.}
.{staff_t2_CycleLiveAddr  CheckEnter
.}
.{staff_t2_CyclePasspAddr  CheckEnter
.}
.{staff_t2_CycleApp  CheckEnter
.}
.{staff_t2_CycleVac  CheckEnter
.}
.{staff_t2_CycleAppendix  CheckEnter
.}
.}
.}
.}
.Fields
 DepCount
.EndFields
─────────────────────────────────────────────────────────────────────
Итого по подразделению: @@@@@@@@@
.}
.Fields
 AllCount
.EndFields
Итого: @@@@@@@@@
.endform