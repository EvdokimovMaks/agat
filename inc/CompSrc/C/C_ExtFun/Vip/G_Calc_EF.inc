//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Заработная плата-Расчеты
// Описания зарегистрированных функций, для G_ZARPL.DLL (кроме расчетов по среднему)
//******************************************************************************

function NREC_13 : Comp; external 'G_ZARPL.DLL';
function PROC_ST(comp, word, date, date): Double; external 'G_ZARPL.DLL';
function TarSCoef(double,word, word, word, date): double; external 'G_ZARPL.DLL';
function Proc_Refin(word,date): Double; external 'G_ZARPL.DLL';
function NrSumma: double; external 'g_zarpl.dll';
function NrPrem: double; external 'g_zarpl.dll';

function NAR_DOPSVO(longint): double; external 'G_ZARPL.DLL';

#doc
  Дата окончания перехода на дату
#end
function PE_DATOK_D (date) : Date;external 'G_ZARPL.DLL';

#doc
  Признак перехода в межпериод на дату.
   Если в переходе заполнена дата окончания, то функция имеет значение false, иначе true
#end
function PE_POST_D  (date) : Boolean;external 'G_ZARPL.DLL';

#doc
  Сумма фактически отработанного времени всех работников с учетом КТУ
#end
function NrSumTimeKTY: Double; external 'G_ZARPL.DLL';

#doc
Признак необходимости начисления/уплаты взносов по доп.тарифу для должности
#end
function Is_DopT (Cappoint  : comp,       // ссылка на Должность
                  LStabn    : string,     // Табельный номер(информац)
                  vidoplp   : longint     // Вид оплаты пользовательский(информац)
                 ) : integer; external 'G_ZARPL.DLL';

#doc
  Наличие особых условий из Кадров 1 - есть, 0 - нет
  описание функции  PPS_KPS (CexOz,Cappoint)
  CexOz    - ccылка на katpodr
  Cappoint - ccылка на должность
#end
function PPS_KPS (comp, comp) : Word; external 'G_ZARPL.DLL';

#doc
  Процент взносов на профессиональное страхование
  описание функции  PPS_PROC (CexOz,Cappoint)
  CexOz    - ccылка на katpodr
  Cappoint - ccылка на должность
#end
function PPS_PROC (comp, comp) : double; external 'G_ZARPL.DLL';

#doc
  Процент взносов на профессиональное страхование
  описание функции  PPS_TARIF (CexOz,Cappoint,Sex)
  CexOz    - ccылка на katpodr
  Cappoint - ccылка на должность
  Sex      - указание на пол работника
#end
#ifdef Gal9_1
function PPS_TARIF (comp, comp, string) : double; external 'G_ZARPL.DLL';
#else
function PPS_TARIF (comp, comp, char) : double; external 'G_ZARPL.DLL';
#end

#doc
  Количество отработанных часов  по табелю (учитываются только полные рабочие дни)
  описание функции  PPS_CH_80 (cLsch,Db,De,VidOplS)
  cLsch   - ссылка на ЛС
  Db      - дата начала
  De      - дата окончания
  VidOplS - вид оплаты
  DN_     - дней
  CH_     - часов
#end
function PPS_CH_80 (cLsch:comp,Db:date,De:date,VidOplS:longint,var D_: double,var CH_: double) : double; external 'G_ZARPL.DLL';

#doc
  Количество отработанных дней во вредных условиях по табелю (учитываются только полные рабочие дни)
  описание функции  PPS_DN_80 (cLsch,Db,De,VidOplS,bWeekend)
  cLsch   - ссылка на ЛС
  Db      - дата начала
  De      - дата окончания
  bWeekend- учитывать выходные дни по плановому графику работника или нет - для расчета среднесписочной численности
            (при передаче в параметр true, выходной будет считаться полностью отработанным, если отработан предшествующий день)
#end

function PPS_DN_80 ( cLsch : comp, //ссылка на ЛС
                     Db: date, De: date, bWeekend: boolean) : double; external 'G_ZARPL.DLL';

#doc
  Облагаемая база для ППС, выделенная из начисленной суммы, с учетом времени работы во вредных условиях
  Описание функции PPS_SUMMA(cLsch, LSTabn, CexOz, CAppoint, VidOplS, Db, De, DneiGR, ChasGRm,  SumPPS, ShowLog)

  cLsch - Ссылка на ЛС
  LSTabn - Табельный номер
  CexOz - Подразделение
  Cappoint -  Должность
  vidopls - Вид оплаты
  Db, De  -  Дата начала и окончания
  DneiGR  -  Отработано дней по графику
  ChasGR  -  Часов по графику
  SumPPS  -  Сумма взносов ППС
  ShowLog -  Выводить на печать результаты работы функции
#end

function PPS_SUMMA(cLsch: comp,       // Ссылка на ЛС
                  LSTabn: string,     // Табельный номер
                  CexOz: comp,        // Подразделение
                  Cappoint: comp,     // Должность
                  vidopls: longint,   // Вид оплаты
                  Db: date, De: date, // Дата начала и окончания
                  DneiGR : double,    // Отработано дней по графику
                  ChasGR : double,    // Часов по графику
                  SumPPS : double,    // Сумма взносов ППС - до перерасчета
                  ShowLog: boolean    // Выводить на печать результаты работы функции
                  )
                 :  double; external 'G_ZARPL.DLL';

#doc
  Облагаемая база для ППС, выделенная из начисленной суммы, с учетом времени работы во вредных условиях
  Описание функции PPS_SUM(cLsch, LSTabn, CexOz, CAppoint, VidOplS, Db, De, Date2, DneiGR, ChasGRm,
                           SumPPS, ShowLog, cPodr, var RabProc):
  cLsch    - Ссылка на ЛС
  LSTabn   - Табельный номер
  CexOz    - Подразделение
  Cappoint - Должность
  VidoplS  - Вид оплаты
  Db, De   - Дата начала и окончания
  Date2    - Дата начала для ВО "отпуск"
  DneiGR   - Отработано дней по графику
  ChasGR   - Часов по графику
  SumPPS   - Начисленная сумма взносов ППС до перерасчета
  ShowLog  - Выводить на печать результаты работы функции
  cPodr    - cPodr соответствующей т-цы = Otpusk.nrec  или 0
  RabProc  - рабочее поле для % отчислений в ППС
#end

function PPS_SUM (cLsch   : comp,      // Ссылка на ЛС
                  LSTabn  : string,    // Табельный номер
                  CexOz   : comp,      // Подразделение
                  Cappoint: comp,      // Должность
                  VidoplS : longint,   // Вид оплаты
                  Db: date, De: date,  // Дата начала и окончания
                  Date2   : date,      // Дата начала для ВО "отпуск"
                  DneiF   : double,    // Отработано дней факт. из оплаты
                  ChasF   : double,    // Часов факт. из оплаты
                  SumPPS  : double,    // Начисленная сумма взносов ППС до перерасчета
                  ShowLog : boolean,   // Выводить на печать результаты работы функции
                  cPodr   : comp,      // cPodr соответствующей т-цы = Otpusk.nrec  или 0
              var RabProc : double     // рабочее поле для % отчислений в ППС
                ): double;  external 'G_ZARPL.DLL';

#doc
  Функция - буфер для выгрузки значения суммы взносов на ППС, обязательно наличие всех параметров для ф-ции PPS_SUM
  Возвращает облагаемую базу для ППС, выделенную из начисленной суммы, с учетом времени работы во вредных условиях

  Описание функции Get_PPS_Sum_ForVIP(cLsch, LSTabn, CexOz, CAppoint, VidOplS, Db, De, Date2, DneiGR, ChasGRm,
                                      SumPPS, ShowLog, cPodr, var RabProc):
  cLsch    - Ссылка на ЛС
  LSTabn   - Табельный номер
  CexOz    - Подразделение
  Cappoint - Должность
  VidoplS  - Вид оплаты
  Db, De   - Дата начала и окончания
  Date2    - Дата начала для ВО "отпуск"
  DneiGR   - Отработано дней по графику
  ChasGR   - Часов по графику
  SumPPS   - Начисленная сумма взносов ППС до перерасчета
  ShowLog  - Выводить на печать результаты работы функции
  cPodr    - cPodr соответствующей т-цы = Otpusk.nrec  или 0
  RabProc  - рабочее поле для % отчислений в ППС
#end
function GET_PPS_SUM_FORVIP(
                   cLsch   : comp,      // Ссылка на ЛС
                   LSTabn  : string,    // Табельный номер
                   CexOz   : comp,      // Подразделение
                   Cappoint: comp,      // Должность
                   VidoplS : longint,   // Вид оплаты
                   Db: date, De: date,  // Дата начала и окончания
                   Date2   : date,      // Дата начала для ВО "отпуск"
                   DneiF   : double,    // Отработано дней факт. из оплаты
                   ChasF   : double,    // Часов факт. из оплаты
                   SumPPS  : double,    // Начисленная сумма до перерасчета
                   ShowLog : boolean,   // Выводить на печать результаты работы функции
                   cPodr   : comp,      // cPodr соответствующей т-цы = Otpusk.nrec  или 0
                   RabProc : double     // рабочее поле для % отчислений в ППС
                  ): double;   external 'G_ZARPL.DLL';

#doc
  Функция, передающая процент взносов на ППС в vip-исходники.
  Описание функции   Get_ProcPPS_ForVIP: double;
#end
function GET_PROCPPS_FORVIP: double;    external 'G_ZARPL.DLL';

#doc
  Функция, передающая ссылку на должность в vip-исходники.
  Описание функции   Get_cAppoint_ForVIP: comp;
#end
function GET_CAPPOINT_FORVIP: comp;    external 'G_ZARPL.DLL';

#doc
  Функция, передающая ссылку на подразделение в vip-исходники.
  Описание функции   Get_CexOZ_ForVIP: comp;
#end
function GET_CEXOZ_FORVIP: comp;       external 'G_ZARPL.DLL';

#doc
  Функция для получения года из даты начала записи предварительной разноски
#end
function UCH_YEAR : word; external 'G_ZARPL.DLL';

#doc
  Функция для получения внешних атрибутов таблицы режимов работ
    rejimCode - Код режима работы
    attrName - Наименование внешнего атрибута
#end
function GetRejimExtAttr(rejimCode : word, attrName : string) : string; external 'G_ZARPL.DLL';
#doc
  Функция подсчета процентов доплат
    fOpl - системный кода вида оплаты
    calcOpt - выбор формулы расчета
    mes - месяц начала доплаты
#end
function CalcDopProc(fOpl : longint, calcOpt : word, mes : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция подсчета процентов доплат с учетом филиала
    fOpl - системный кода вида оплаты
    calcOpt - выбор формулы расчета
    mes - месяц начала доплаты
    level - уровень иерархии подразделений
#end
function CalcDopProcF(fOpl : longint, calcOpt : word, mes : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция подсчета процентов из постоянных доплат с учетом подразделения
    fOpl - системный кода вида оплаты
    S - вариант подсчета процента
    level - уровень иерархии подразделений
#end
function PDopProcF(fOpl : longint, S : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция подсчета суммы начислений за текущий месяц для вида оплаты с учетом подразделения
    fOpl - системный кода вида оплаты
    level - уровень иерархии подразделений
#end
function NachOF(fOpl : longint, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция подсчета суммы начислений за прошлый месяц для вида оплаты с учетом подразделения
    fOpl - системный кода вида оплаты
    mes - указывает на месяц
    level - уровень иерархии подразделений
#end
function NachPF(fOpl : longint, mes : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция подсчета суммы начислений за указанный месяц и год для вида оплаты с учетом подразделения
    fOpl - системный кода вида оплаты
    m - указывает на месяц
    y - указывает на год
    level - уровень иерархии подразделений
#end
function NachByMF(fOpl : longint, m : word, y : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция получения сумм из архива за прошедшие месяцы с учетом подразделения
    fOpl - системный кода вида оплаты
    mes - указывает на месяц
    level - уровень иерархии подразделений
#end
function SumArF(fOpl : longint, mes : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция получения сумм из архива за период из доплаты
    fOpl - системный кода вида оплаты
#end
function SumPer(fOpl : longint) : double; external 'G_ZARPL.DLL';

#doc
  Функция получения сумм из начислений за период из доплаты
    fOpl - системный кода вида оплаты
#end
function NachPer(fOpl : longint) : double; external 'G_ZARPL.DLL';

#doc
  Функция получения сумм из архива за указанный месяц и год с учетом подразделения
    fOpl - системный кода вида оплаты
    m - указывает на месяц
    y - указывает на год
    level - уровень иерархии подразделений
#end
function SumByMF(fOpl : longint, m : word, y : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция для получения количества дней/часов по балансному графику режима за период
    rejim - код режима
    db - дата начала периода
    de - дата окончания периода
    opt - опции
#end
function BalBwDates(rejim : word, db : date, de : date, opt : word) : double; external 'G_ZARPL.DLL';

#doc
  Функция для получения ссылки на вышестоящее подразделение на определенном уровне иерархии
    cexRef - ссылка на подразделение
    level - уровень иерархии подразделений
#end
function DepOnLRef(cexRef: comp, level: word): comp; external 'G_ZARPL.DLL';

#doc
  Функция для получения даты начала доплаты, связанной с записью предварительной разноски
#end
function DoplataBegin : date; external 'G_ZARPL.DLL';

#doc
  Функция для получения даты окончания доплаты, связанной с записью предварительной разноски
#end
function DoplataEnd : date; external 'G_ZARPL.DLL';

#doc
  Функция для получения суммы из межрасчетной выплаты
#end
function PRVD_SUM : double; external 'G_ZARPL.DLL';

#doc
 Дата ухода на пенсию работника
 Описание функции FindPensDate(cLsch: comp): date;
   cLsch - Ссылка на ЛС
#end

function FindPensDate(cLsch: comp): date; external 'G_ZARPL.DLL';

#doc
  текущая ccылка на должность
#end

function UCH_CAPPOINT   : Comp;  external 'G_ZARPL.DLL';

function NrCexSumTar(comp, boolean): double; external 'g_zarpl.dll';
function NrCexOzSumTar(comp, boolean): double; external 'g_zarpl.dll';
function NrBrigSumTar(comp, boolean): double; external 'g_zarpl.dll';
function LsBrig: comp; external 'g_zarpl.dll';
function NachDVH(word,word): Double; external 'G_ZARPL.DLL';

#doc
  Возвращает сумму заработка по тарифу за часы работы вида HourKind (с учетом
  КТУ, если WithMpfSum = true).</brief>

  <p>Поддерживаются следующие коды виды часов:</p>
  <ul>
  <li> 2 - часы работы вечером;
  <li> 3 - часы работы ночью;
  <li> 4 - часы работы в праздники;
  <li> 5 - часы работы в выходные.
  </ul>
#end
function NrHoursSumTar(HourKind: integer, WithMpfSum: boolean): double; external 'g_zarpl.dll';

//------------------------------------------------------------------------------
// Методы для работы с отчетным и расчетным периодами
//------------------------------------------------------------------------------
#doc
  Возвращает дату начала отчетного периода модуля "Заработная плата"
#end
function GetReportingPeriodBeginning: date; external 'G_ZARPL.DLL';

#doc
  Возвращает в var-параметрах: расчетный год, расчетный месяц, последний день
расчетного месяца, дата начала расчетного месяца, дата окончания расчетного месяца
#end

#ifNdef Gal9_1
function GetUserDate (var YearRas: integer, var MonthRas: integer, var DayRas: integer, var FirstDayRas: date, var DatRas: date): boolean; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// Методы для работы с учетными датами
//------------------------------------------------------------------------------
#doc
  Возвращает месяц учетного периода по дате
#end
function AD_Month(D: date): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает год учетного периода по дате
#end
function AD_Year(D: date): integer; external 'G_ZARPL.DLL';

#doc
  Возвращает порядковый номер дня в учетном периоде по дате
#end
function AD_DayNo(D: date): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает количество календарных дней в учетном периоде по дате
#end
function AD_Days(D: date): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает дату начала учетного периода по дате
#end
function AD_FirstDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату окончания учетного периода по дате
#end
function AD_LastDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату по порядковому номеру дня, месяцу и году учетного периода
#end
function AD_Date(DayNo: byte, Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату окончания учетного периода по дате в строковом формате
#end
function AD_ToChar(D: date, FormatString: string): string; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// Методы для работы с учетным месяцем
//------------------------------------------------------------------------------
#doc
  Возвращает количество календарных дней в учетном месяце
#end
function AM_Days(Month: byte, Year: integer): byte; external 'G_ZARPL.DLL';

#doc
  Возвращает дату первого дня в учетном месяце
#end
function AM_FirstDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату последнего дня в учетном месяце
#end
function AM_LastDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  Возвращает дату последнего дня в учетном месяце в строковом формате
#end
function AM_ToChar(Month: byte, year: integer, FormatString: string): string; external 'G_ZARPL.DLL';
#end

#ifNdef Gal9_1
//******************************************************************************
//                                                                        ZC.DLL
//******************************************************************************
#doc
  Возвращает тип даты, описанной в классификаторе праздничных дней.</brief>
  <p> Коды признаков специальных дат:
  <ul>
  <li> 0 (htNone) - дата никак не описана
  <li> 1 (htHoliday) - праздник
  <li> 2 (htMovedSaturday) - перенесенная суббота (для календарных отпусков по 5-дневке)
  <li> 3 (htWorking) - рабочий день
  <li> 4 (htMovedSunday) - перенесенное воскресенье (для календарных отпусков по 5- и 6-дневке)
  </ul></p>
#end
function GetSpecialDateType(D: date): byte; external 'ZC.DLL';
#end
#doc
#end
function GetSredSumma(ind:longint):double; external 'G_SREDN.DLL';
#doc
#end
function GetSredChasF(ind:longint):double; external 'G_SREDN.DLL';
#doc
#end
function GetSredPremi(ind:longint):double; external 'G_SREDN.DLL';
#doc
#end
function GetSredKoef(ind:longint):double; external 'G_SREDN.DLL';
#doc
#end
function GetMinSumma(ind:longint):double; external 'G_SREDN.DLL';


#doc
#end
Procedure SetSredSumma(ind:longint,value:double); external 'G_SREDN.DLL';
#doc
#end
Procedure SetSredChasF(ind:longint,value:double); external 'G_SREDN.DLL';
#doc
#end
Procedure SetSredPremi(ind:longint,value:double); external 'G_SREDN.DLL';
#doc
#end
Procedure SetMinSumma(ind:longint,value:double); external 'G_SREDN.DLL';
#doc
#end
Procedure SetSredKoef(ind:longint,value:double); external 'G_SREDN.DLL';
#doc
#end
procedure SetPriznUderCreatedByUser; external 'G_ZARPL.DLL';
function GetLschetRef:comp;external 'G_ZARPL.DLL';
function GetDateBeginRasSredn:date;external 'G_ZARPL.DLL';
function GetDateEndRasSredn:date;external 'G_ZARPL.DLL';
function GetDateBeginRasPodoh:date;external 'G_ZARPL.DLL';
function GetDateEndRasPodoh:date;external 'G_ZARPL.DLL';
function GetVidUderPodoh:longint;external 'G_ZARPL.DLL';
function LSC_KTY:double; external 'G_ZARPL.DLL';
#ifNdef Gal9_1
function WT_GetRegionalFactor(Day: byte): double; external 'WT.DLL';
// формировать основную оплату
function WT_GetOsnOpl(Day: byte): comp; external 'WT.DLL';
// извлечь счет из ШПЗ
function WT_GetSchet(Day: byte): string; external 'WT.DLL';
// извлечь субсчет из ШПЗ
function WT_GetSubSchet(Day: byte): string; external 'WT.DLL';
// извлечь таблицы КАУ по уровням
function WT_GetKauTbl(Day: byte, Level:word): word; external 'WT.DLL';
// извлечь ссылки КАУ по уровням
function WT_GetKauReference(Day: byte, Level:word): comp; external 'WT.DLL';
// извлечь ТХО
function WT_GetTXO(Day: byte): comp; external 'WT.DLL';
// извлечь Параметр
function WT_GetParameter(Day: byte): string; external 'WT.DLL';
#end
#doc
  флаг корректировки предварительного просмотра
#end
function IsUCH_KOR: Boolean; external 'G_ZARPL.DLL';

#doc
  Берет РК с учетом табеля, внешних атрибутов, переходов и т.п.
  описание функции  Get_RK (Db,De)
  Db      - дата начала
  De      - дата окончания
#end
function GET_RK (Db : date, De : date) : double; external 'G_ZARPL.DLL';

// Тариф по входимости в оклад
function KOT(date, comp): double; external 'G_SREDN.DLL';
#doc
  Сумма по алгоритму с номером, признаком и доп.параметром
#end
function SumAlgNPD(prNALG : word, PrKAlgg: word, Param: string): double;  external 'G_ZARPL.DLL';

#doc
  Извлечение данных из буфера
#end
function GetBufValueD: Double; external 'G_ZARPL.DLL';
#doc
  Извлечение данных из буфера
#end
function GetBufValueW: Word; external 'G_ZARPL.DLL';
#doc
  Извлечение данных из буфера
#end
function GetBufValueB: Byte; external 'G_ZARPL.DLL';
#doc
  Извлечение данных из буфера
#end
function GetBufValueC: Comp; external 'G_ZARPL.DLL';
#doc
  Сохранение данных в буфер
#end
function SetBufValueD(Value: Double): Double; external 'G_ZARPL.DLL';
#doc
  Сохранение данных в буфер
#end
function SetBufValueW(Value: Word): Word; external 'G_ZARPL.DLL';
#doc
  Сохранение данных в буфер
#end
function SetBufValueB(Value: Byte): Byte; external 'G_ZARPL.DLL';
#doc
  Сохранение данных в буфер
#end
function SetBufValueC(Value: Comp): Comp; external 'G_ZARPL.DLL';

#doc
  Создание буфера
#end
procedure InitBufValue; external 'G_ZARPL.DLL';
#doc
  Уничтожение буфера
#end
procedure DoneBufValue; external 'G_ZARPL.DLL';



#doc
 Проверка на существование таблицы в БД
#end
function Is_Exist_Table(TableCode: word): boolean; external 'G_ZARPL.DLL';

function InitTabHelpM: boolean; external 'G_ZARPL.DLL';

function InsertPrmonth (Mes : integer, Years : integer, TabN : longint, Strtabn : string,
                        Cex : comp, Nrec : comp, cPerson : comp): double; external 'G_ZARPL.DLL';

procedure DoneTabHelpM; external 'G_ZARPL.DLL';

function TabHelpSpace(
                      FSpace      : boolean,
                      FDob        : boolean,
                      PrPos       : longint,
                      Mes         : word,
                      countt      : integer,
                      NrecPrMOld  : comp,
                      NrecPrMNew  : comp,
                      TabNd       : string,
                      SumYear     : boolean,
                      SumTek      : boolean,
                      isSumVidop  : boolean
                     ) : boolean; external 'G_ZARPL.DLL';

procedure TabHelpZap(PrPos:longint, NrecPrMNew : comp, MOtch : word, YOtch : word, FSearch: boolean); external 'G_ZARPL.DLL';

#doc
  Средний процент доплаты за период с учетом количества рабочих дней
  описание функции  SrednProcDoplPer(VO, DB, DE)
  VO - вид оплаты
  DB - дата начала периода
  DE - дата окончания периода
#end
function SRPRDOPL(VO: longint, DB: date, DE: date): double; external 'G_ZARPL.DLL';

#doc
   Минимальная заработная плата для окладников
   D - дата (date(ДД,MM,ГГГГ))
#end
function MINZPM(D: date): double; external 'G_ZARPL.DLL';

#doc
   Минимальная заработная плата для почасовой оплаты
   D - дата (date(ДД,MM,ГГГГ))
#end
function MINZPCH(D: date): double; external 'G_ZARPL.DLL';

#doc
   Прожиточный минимум на дату
   D - дата (date(ДД,MM,ГГГГ))
#end
function PRMIN(D: date): double; external 'G_ZARPL.DLL';

#doc
   Cумма, накопленная в отчетном месяце c учетом архива оплат
   за (М-мес,N-строка,V-номер входимости)
#end
function NAKM_AND_ARX(Mes:word, N:word, VH:word): double; external 'G_ZARPL.DLL';

#doc
   Установить процент оплаты в записи предварительного просмотра,
   получить установленный процент оплаты.
#end
function UCH_SETPROC(double): double; external 'G_ZARPL.DLL';

#doc
   Код категории из записи предварительного просмотра
#end
function UCH_KATEG: word; external 'G_ZARPL.DLL';

#doc
   Расчетный коэффициент установленной нормы рабочего времени  (плановый/балансный график)
#end
function WORKEDHOURSCOEF(LschetNrec: comp, Month: byte, Year: word): double;  external 'G_ZARPL.DLL';
