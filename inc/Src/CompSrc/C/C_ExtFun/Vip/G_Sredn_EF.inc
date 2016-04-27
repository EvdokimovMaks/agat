//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Заработная плата-Расчеты по среднему
// Описания зарегистрированных функций
//******************************************************************************
//
function Delim_Po_M(comp, String, Comp, word): boolean; external 'G_SUMDIVIDE.DLL';
function SetKolDnP (Date, Date, String, Comp, Word, boolean, byte, double): double; external 'G_SUMDIVIDE.DLL';
// описание функции SetKolDnO_D1_D2 (устарела)
//                           DataB         -начало учета листа
//                           DataOK        -окончание учета листа
//                           DataR         -дата рождения
//                           dayN          -день начала заболевания
//                           MonN          -месяц начала заболевания
//                           D1            -исходная дата начала
//                           D2            -исходная дата окончания
//                           PrTabN        -табельный номер
//                           PrcLsch       -ссылка на ЛС
//                           SickListKind  -код вида пособия
//                           KlFlag        -будем ли брать при расчете балансный график
//                           Procent       -первый процент из классификатора пособий
//                           VIDOPLD       -к-во дней первого процента
//                           VIDOPLO       -второй процент из классификатора пособий
//                           Osoben        -код особенности
//                           LastTime      -ограничивать продолжительность
Function SetKolDnO_D1_D2 (Date,Date,Date, double,integer, Date, Date, String, Comp, Word, boolean, longint, longint, longint, longint, Time): double; external 'G_SUMDIVIDE.DLL';
//------------------------------------------------------------------------------
#doc
  Возвращает количество оплачиваемых дней между датами DataN и DatOk для
  отпуска с кодом способа оплаты KodOpl, с учетом изменений режима работы
  лицевого счета Account.
#end
function OtpKolDn(KodOpl: word, DataN: date, DatOk: date, Account: comp): double; external 'G_SUMDIVIDE.DLL';

#doc
  Возвращает дату окончания отпуска с кодом способа оплаты KodOpl по дате
  начала DataN, количеству оплачиваемых дней KolDn и с учетом изменений режима
  работы лицевого счета Account.
#end
function OtpDatOk(KodOpl: word, DataN: date, KolDn: double, Account: comp): date; external 'G_SUMDIVIDE.DLL';

#doc
  Возвращает количество часов для вынужденного отпуска между датами DataN и DatOk,
  с учетом изменений режима работы лицевого счета Account, и с возможностью
  ограничения количества часов отпуска OstCh по признаку ограничения Limit
#end
function OtpChasF(Account : comp, DataN : date, DatOk : date, OstCh : double, Limit : boolean): double; external 'G_SUMDIVIDE.DLL';

#doc
  Возвращает количество дней отпуска с кодом Kotpus в месяце MonOtp года YearOtp
  для лицевого счета Account
#end
function OtpDnKod(Kotpus : word, MonOtp : word, YearOtp : word, Account : comp): word; external 'G_SUMDIVIDE.DLL';

#ifdef Gal8_1
function SetVOtpSum(String, Comp, Comp, Longint, Date, Date, Double, Double, Double, Word): Double; external 'G_SUMDIVIDE.DLL';
#else
function SetVOtpSum(Longint, Comp, Comp, Longint, Date, Date, Double, Double, Double, Word): Double; external 'G_SUMDIVIDE.DLL';
#end
#doc
  Устарела.Возвращает  сумму среднедневного c учетом  процента
#end
// описание функции day_proc_1
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  Z_Need_48    - округлять после умножения на процент
//                  raszar       - сумма в день
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  DataN        - дата начала больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  PDCh         - празнак по дням или по часам
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
//                  Proc_FSS     - из класс стажей для FSS
function day_proc_1(double, longint, longint, longint, word, double, double, date, double, integer, word, double,
                    String, Comp, word, double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

#doc
  Возвращает  сумму среднедневного c учетом  процента
#end
// описание функции dni_i_2
//  DataN   - дата начала больничного
//  PDCh    - празнак по дням или по часам
//  KOLD3   - к-во дней второго процента
//  kldn    - к-во дней или часов больничного
//  TabN    - табельный номер
//  PrcLsch - ссылка на ЛС
//  SickListKind- вид пособия
function dni_i_2(date,word,integer,double,String,comp,word):double;   external 'G_SUMDIVIDE.DLL';

#doc
Устарела.Bозвращает кол-во дней(часов) для оплаты по первому проценту, включая дни нарушения режима  
#end
//описание функции dni_i_1
//                  DataN    - дата начала больничного
//                  dayN     - день начала больничного
//                  MonN  - месяц начала больничного
//                  PDCh  - празнак по дням или по часам
//                  dniiChas- к-во дней или часов из клас.пособий
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
function dni_i_1(date,double,integer,word,double,double,String,comp,word,double,double,double): double; external 'G_SUMDIVIDE.DLL';

#doc
Устарела.Рассчитывает размер суммы больничного по среднедневному на процент
#end
// описание функции day_pro
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  PROC3        - Третий процент пособия
//                  KolD3        - К-во дней второго проц
//                  Z_Need_48    - округлять после умножения на процент
//                  raszar       - сумма в день
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  DataN        - дата начала больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  PDCh         - празнак по дням или по часам
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
function day_pro(double, longint, longint, longint,word,Integer,word, double, double, date, double, integer, word, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';
#doc
 функция возвращаут дату окончания оплаты больничного
#end
//описание функции  D_N_O_ 
//                  DataN        - дата начала больничного
//                  DatOK        - дата окончания больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  dniiChas     - к-во дней или часов из клас.пособий
function D_N_O_ (date,date,double,integer, String, Comp,word,double, longint, longint, longint,double):date; external 'G_SUMDIVIDE.DLL';
                
#doc
функция находит дату наступления нетрудоспособности (начало заболевания)
#end
//описание функции  D_N_Z 
//                  DataN        - дата начала больничного
//                  dayN         - день начала заболевания
//                  MonN         - месяц начала заболевания
//                  YearN        - год начала заболевания
function D_N_Z(date, double, integer, Comp): Date; external 'G_SUMDIVIDE.DLL';

#doc
возвращает кол-во дней(часов) для оплаты по первому проценту за вычетом нарушений
#end
//описание функции  dni_i_ch_ 
//                  DataN        - дата начала больничного
//                  dayN         - день начала заболевания
//                  MonN         - месяц начала заболевания
//                  YearN        - год начала заболевания
//                  PDCh         - празнак по дням или по часам
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную

function dni_i_ch_(date, double, integer, Comp, word, double, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';

#doc
функция возвращает к-во рабочих дней основной суммы
#end
//описание функции  dni_i 
//                  DataN        - дата начала больничного
//                  dayN         - день начала заболевания
//                  MonN         - месяц начала заболевания
//                  YearN        - год начала заболевания
//                  PDCh         - празнак по дням или по часам
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
//                  VidOplOO     - виды оплат за счет предпр
//                  VIDOPLOD     - виды оплат за счет Фсс
function dni_i (date, double, integer, Comp, word, double, double, String,  Comp, word, double, double, double, longint, longint): double; external 'G_SUMDIVIDE.DLL';
#doc
Рассчитывает размер суммы больничного по среднедневному на процент
#end
// описание функции day_pr
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  PROC3        - Третий процент пособия
//                  KolD3        - К-во дней второго проц
//                  Z_Need_48    - округлять после умножения на процент
//                  raszar       - сумма в день
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  DataN        - дата начала больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  YearN        - год   начала заболевания
//                  PDCh         - празнак по дням или по часам
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
function day_pr (double, longint, longint, longint,word,Integer,word, double, double, date, double, integer, Comp, word, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';

// описание функции SetKolDn_D1_D2 (Вызов SetKolDnP с учетом произвольных дат начала и окончания)
//                           DataB         -начало учета листа
//                           DataOK        -окончание учета листа
//                           DataR         -дата рождения
//                           dayN          -день начала заболевания
//                           MonN          -месяц начала заболевания
//                           YearN         - год   начала заболевания
//                           D1            -исходная дата начала
//                           D2            -исходная дата окончания
//                           PrTabN        -табельный номер
//                           PrcLsch       -ссылка на ЛС
//                           SickListKind  -код вида пособия
//                           KlFlag        -будем ли брать при расчете балансный график
//                           Procent       -первый процент из классификатора пособий
//                           VIDOPLD       -к-во дней первого процента
//                           VIDOPLO       -второй процент из классификатора пособий
//                           Osoben        -код особенности
//                           IsOgrbyte     -ограничивать продолжительность
//                           RemDays       -остаток оплачиваемых дней
#doc
Устанавливает к-во дней с учетом переходов в межпериод, остатка при ограничении продолжительности и произвольных дат начала и окончания
#end
Function SetKolDn_D1_D2 (Date,Date,Date, double,integer, Comp, Date, Date, String, Comp, Word, boolean, longint, longint, longint, longint, byte, double): double; external 'G_SUMDIVIDE.DLL';

#doc
функция рассчитывает размер среднедневного по сумме заработка,кол-ву дн.и проц
#end

// описание функции pr_d_s (
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  PROC3        - Третий процент пособия
//                  KolD3        - К-во дней второго проц
//                  Z_Need_48    - округлять после умножения на процент
//                  Summa        - сумма больничного
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  DataN        - дата начала больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  YearN        - год   начала заболевания
//                  PDCh         - празнак по дням или по часам
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
//                  Proc_FSS     - из класс стажей для FSS

function pr_d_s(double,longint,longint,longint,word,Integer,word,double,double,date,double,integer,comp,word,
                double,String,Comp,word,double,double,double, word): double; external 'G_SUMDIVIDE.DLL';

//описание функции  D_O_ 
//                  DataN        - дата начала больничного
//                  DatOK        - дата окончания больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  YearN        - год   начала заболевания
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  Proc_FSS     - из класс стажей для FSS

#doc
 функция возвращает дату окончания оплаты больничного
#end
function D_O_ (date,date,double,integer, Comp, String, Comp,word,double, longint, longint, longint,
               double, word):date; external 'G_SUMDIVIDE.DLL';

#doc
Устарела.Bозвращает кол-во дней(часов) для оплаты по первому проценту, включая дни нарушения режима  
#end
//описание функции dni_i_1
//                  DataN    - дата начала больничного
//                  dayN     - день начала больничного
//                  MonN     - месяц начала больничного
//                  YearN    - год   начала заболевания
//                  PDCh     - празнак по дням или по часам
//                  dniiChas - к-во дней или часов из клас.пособий
//                  kldn     - к-во дней или часов больничного
//                  TabN     - табельный номер
//                  PrcLsch  - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
function dni_i_1_(date,double,integer, Comp,word,double,double,String,comp,word,double,double,double): double; external 'G_SUMDIVIDE.DLL';

#doc
  Возвращает  сумму среднедневного c учетом  процента
#end
// описание функции day_proc_1_
//                  pszp         - ручной процент
//                  Procent1     - из классификатора пособий
//                  Procent2     - из классификатора пособий
//                  KlPsZp       - из клас.стажей
//                  Z_Need_48    - округлять после умножения на процент
//                  raszar       - сумма в день
//                  dniiChas     - к-во дней или часов из клас.пособий
//                  DataN        - дата начала больничного
//                  dayN         - день начала больничного
//                  MonN         - месяц начала больничного
//                  YearN        - год   начала заболевания
//                  PDCh         - празнак по дням или по часам
//                  kldn         - к-во дней или часов больничного
//                  TabN         - табельный номер
//                  PrcLsch      - ссылка на ЛС
//                  SickListKind - вид пособия
//                  kldnall      - к-во дней всего больничного
//                  kldnpred     - к-во дней от даты начала больничного до даты DataN
//                  dni1proc     - к-во дней первого процента, введенная вручную
//                  Proc_FSS     - из класс стажей для FSS
function day_proc_1_(double, longint, longint, longint, word, double, double, date, double, integer, comp,
                     word, double, String, Comp, word, double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

#doc
Количество знаков после запятой в вещественном числе
#end
#ifdef __GetKolZnakZar__
Function GetKolZnakZar(double): byte; external 'G_SREDN.DLL';
#else
Function GetKolZnak(double): byte; external 'G_SREDN.DLL'; // На случай, если сторонние разработчики уже используют вызов этого метода
#end

// тариф по входимости в оклад
function KOT(date, comp): double; external 'G_SREDN.DLL';

#doc
function PROC_STAG_SA Возвращает процент из классификатора c учетом стажа службы в армии  
  параметры функции  
                  pszp        - процент ручного ввода
                  DataN       - дата начала заболевания
                  DatNps      - дата начала непрерывного стажа из ЛС
                  TabN        - Табельный номер
                 PNrec       - ссылка на персону
#end
function PROC_STAG_SA(double, Date, Date, String,double, Comp): Word; external 'G_SUMDIVIDE.DLL';

#doc
function Restrict_D2_Inval возвращает дату окончания оплачиваемых дней больничного
   параметры      D2             - дата окончания периода (больничного)
                  DateRegMedExp  - дата регистрации в МСЭ
                  StatNetr       - статус нетрудоспособности
                  GroupInv       - группа инвалидности

   Возвращается дата окончания оплачиваемых дней больничного, которая может быть ограничена
   датой наступления инвалидности в период больничного. В этом случае оплачиваемые дни
   больничного ограничиваются датой, предшествующей дате регистрации в МСЭ.
#end
function RESTRICT_D2_INVAL(date, date, comp, word): date; external 'G_SUMDIVIDE.DLL';

Function SetKolDn_D1_D2_Shift(double,
                              Date,Date,Date,
                              Date,
                              Date, Date, String, Comp, Word, boolean,
                              longint, longint, longint, longint, byte,
                              double): double; external 'G_SUMDIVIDE.DLL';

function Day_pr_Shift(double, word, double, longint, longint, longint, word, integer, word,
                      double, double, date, date, word, double, string, comp, word,
                      double, double, double): double; external 'G_SUMDIVIDE.DLL';

function Day_pr_ProcFSS(double, word, double, longint, longint, longint, word, integer, word,
                        double, double, date, date, word, double, string, comp, word,
                        double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

function Day_proc_1_Shift(double, double, longint, longint, longint, word, double,
                          double, date, date, word, double, String, comp, word,
                          double, double, double): double; external 'G_SUMDIVIDE.DLL';

function Day_proc_1_ProcFSS(double, double, longint, longint, longint, word, double,
                            double, date, date, word, double, String, comp, word,
                            double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

function Pr_D_S_Shift(double, word, double, longint, longint, longint, word, Integer,
                      word, double, double, date, date, word, double, String,
                      comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';

function Pr_D_S_ProcFSS(double, word, double, longint, longint, longint, word, Integer,
                      word, double, double, date, date, word, double, String,
                      comp, word, double, double, double, word): double; external 'G_SUMDIVIDE.DLL';

function Dni_i_ch_Shift(double, date, date, word, double, double, String, comp, word,
                        double, double, double):double; external 'G_SUMDIVIDE.DLL';

function dni_i_1_Shift(double, date, date, word, double, double, String, comp, word,
                       double, double, double):double; external 'G_SUMDIVIDE.DLL';

function dni_i_Shift(double, date, date, word, double, double, string, comp, word, double,
                     double, double,  longint, longint): double; external 'G_SUMDIVIDE.DLL';


function Dni_i_date_Shift(double, date, date, word, double, double, String, comp, word, double,
                          double, double, longint, longint, date):double; external 'G_SUMDIVIDE.DLL';

function D_O_Shift(double, date, date, date, String, comp, word, double, longint, longint, longint,
                   double): date;  external 'G_SUMDIVIDE.DLL';

function D_O_ProcFSS(double, date, date, date, String, comp, word, double, longint, longint, longint,
                   double, word): date;  external 'G_SUMDIVIDE.DLL';


