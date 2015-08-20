//******************************************************************************
//                                                      (с) корпорация Галактика
// Галактика 8.1 - Заработная плата
// Описания зарегистрированных функций
//******************************************************************************
// Инициализация отчетных дат данными из настроек
procedure InitCurrentPeriodDates; external 'G_ZARPL.DLL';

function IsZarpl: Boolean; external 'G_ZARPL.DLL';
function XAR_ZPKOP: Word; external 'G_ZARPL.DLL';
function XAR_MES: Word; external 'G_ZARPL.DLL';
function XAR_DATAN: Date; external 'G_ZARPL.DLL';
function XAR_DATOK: Date; external 'G_ZARPL.DLL';
function XAR_YEAR: Word; external 'G_ZARPL.DLL';
function XAR_PROCRK: Double; external 'G_ZARPL.DLL';
function XAR_SUMMARK: Double; external 'G_ZARPL.DLL';
function XAR_SBORA: Double; external 'G_ZARPL.DLL';
function XAR_SBORS: Double; external 'G_ZARPL.DLL';
function XAR_MINOKLP: Double; external 'G_ZARPL.DLL';
function XAR_DATAMIN: Date; external 'G_ZARPL.DLL';
function XAR_MINOKL: Double; external 'G_ZARPL.DLL';
function XAR_DATESET: Date; external 'G_ZARPL.DLL';
function XAR_MINRAZ: Double; external 'G_ZARPL.DLL';
function XAR_MATPOM: Double; external 'G_ZARPL.DLL';
function XAR_PROCPRF: Double; external 'G_ZARPL.DLL';
function XAR_PROCPF: Double; external 'G_ZARPL.DLL';
function XAR_MATPOMFZ: Double; external 'G_ZARPL.DLL';
function XAR_ROUNDNA: Word; external 'G_ZARPL.DLL';
function PE_SISOPL: Word; external 'G_ZARPL.DLL';
function PE_CODTAR: Word; external 'G_ZARPL.DLL';
function PE_RAZR: Word; external 'G_ZARPL.DLL';
function PE_TARIF: Double; external 'G_ZARPL.DLL';
function PE_REJIM: Word; external 'G_ZARPL.DLL';
function PE_DATIZM: Date; external 'G_ZARPL.DLL';
function PR_DATAN: Date; external 'G_ZARPL.DLL';
function PR_DATOK: Date; external 'G_ZARPL.DLL';
function PR_SUMMA: Double; external 'G_ZARPL.DLL';
function PR_DOLG: Double; external 'G_ZARPL.DLL';
function PR_NOZAR: Double; external 'G_ZARPL.DLL';
function PR_FORNALOG: Double; external 'G_ZARPL.DLL';
function PR_FONDNAL: Double; external 'G_ZARPL.DLL';
function PR_SUMFSZ: Double; external 'G_ZARPL.DLL';
function PR_DEPON: Double; external 'G_ZARPL.DLL';
function DEP_DEPON: Double; external 'G_ZARPL.DLL';
function UCH_MES: Word; external 'G_ZARPL.DLL';
function UCH_CEXOZ : Comp; external 'G_ZARPL.DLL';  //  ссылка на подразделение
function UCH_NOMER : Double; external 'G_ZARPL.DLL'; //номер основной записи
function UCH_MESN: Word; external 'G_ZARPL.DLL';
function UCH_PROC: Double; external 'G_ZARPL.DLL';
function UCH_SUMMA: Double; external 'G_ZARPL.DLL';
function UCH_SUMVAL: Double; external 'G_ZARPL.DLL';
function UCH_KODVAL: comp; external 'G_ZARPL.DLL';
function CVALZ(comp, date): Double; external 'G_ZARPL.DLL';
function CVALZV(comp, date): Double; external 'G_ZARPL.DLL';
function UCH_REJIM: Word; external 'G_ZARPL.DLL';
function UCH_SISOPL: Word; external 'G_ZARPL.DLL';
function UCH_CODTAR: Word; external 'G_ZARPL.DLL';
function UCH_RAZR: Word; external 'G_ZARPL.DLL';
function UCH_TARIF: Double; external 'G_ZARPL.DLL';
function UCH_DATAN: Date; external 'G_ZARPL.DLL';
function UCH_DATOK: Date; external 'G_ZARPL.DLL';
function UCH_CHASF: Double; external 'G_ZARPL.DLL';
function UCH_KOLDN: Double; external 'G_ZARPL.DLL';
function UCH_KOLDNGR: Double; external 'G_ZARPL.DLL';
function UCH_CHASGR: Double; external 'G_ZARPL.DLL';
function UCH_SETCH(Double): Double; external 'G_ZARPL.DLL';
function UCH_SETCHGR(Double): Double; external 'G_ZARPL.DLL';
function UCH_SETDN(Double): Double; external 'G_ZARPL.DLL';
function UCH_SETDNGR(Double): Double; external 'G_ZARPL.DLL';
function UCH_LSCH: Comp; external 'G_ZARPL.DLL';
function UCH_PERS: Comp; external 'G_ZARPL.DLL';
function UCH_VIDOU: Word; external 'G_ZARPL.DLL';
function UCH_NREC: Comp; external 'G_ZARPL.DLL';
function UCH_CIST: Comp; external 'G_ZARPL.DLL';
function SUMTYPE: Byte; external 'G_ZARPL.DLL';
function SH_PROC: Double; external 'G_ZARPL.DLL';
function SH_SUMUD: Double; external 'G_ZARPL.DLL';
function SH_PRPER: Word; external 'G_ZARPL.DLL';
function LSC_SOVM: Word; external 'G_ZARPL.DLL';
function LSC_SISOPL: Word; external 'G_ZARPL.DLL';
function LSC_CODTAR: Word; external 'G_ZARPL.DLL';
function LSC_RAZR: Word; external 'G_ZARPL.DLL';
function NonProductRK(comp):double; external 'G_ZARPL.DLL';
function LSC_TARIF: Double; external 'G_ZARPL.DLL';
function LSC_SUMVAL: Double; external 'G_ZARPL.DLL';
function LSC_KODVAL: comp; external 'G_ZARPL.DLL';
function LSC_REJIM: Word; external 'G_ZARPL.DLL';
function LSC_KOLMOKL: Double; external 'G_ZARPL.DLL';
function LSC_NALOG: Word; external 'G_ZARPL.DLL';
function LSC_PROFS: Char; external 'G_ZARPL.DLL';
function LSC_DATPOS: Date; external 'G_ZARPL.DLL';
function LSC_APPDATE: Date; external 'G_ZARPL.DLL';
function LSC_DATNPS: Date; external 'G_ZARPL.DLL';
function LSC_DATNVIS: Date; external 'G_ZARPL.DLL';
function LSC_DAT13: Date; external 'G_ZARPL.DLL';
function LSC_DATN13: Date; external 'G_ZARPL.DLL';
function LSC_DATUV: Date; external 'G_ZARPL.DLL';
function LSC_AVPLAN: Double; external 'G_ZARPL.DLL';
function LSC_AVFAKT: Double; external 'G_ZARPL.DLL';
function LSC_VOZN: Double; external 'G_ZARPL.DLL';
function LSC_PENS: Char; external 'G_ZARPL.DLL';
function LSC_KATEG: Word; external 'G_ZARPL.DLL';
function LSC_KOLLGOTA: Double; external 'G_ZARPL.DLL';
function LSC_CEX   : Comp; external 'G_ZARPL.DLL';  //ссылка на подразделение
function Pers_Sex: String; external 'G_ZARPL.DLL';
function LSC_PROCRK: Double; external 'G_ZARPL.DLL';
function NAR_SUMMA: Double; external 'G_ZARPL.DLL';
function NAR_PREM: Double; external 'G_ZARPL.DLL';
function NAR_KTU: Double; external 'G_ZARPL.DLL';
function DOP_CH: Double; external 'G_ZARPL.DLL';
function DOP_DN: Double; external 'G_ZARPL.DLL';
function DOP_SETCH(Double): Double; external 'G_ZARPL.DLL';
function DOP_SUM: Double; external 'G_ZARPL.DLL';
function KLVO_PROC: Double; external 'G_ZARPL.DLL';
function SumYMO(Integer, word, LongInt): Double; external 'G_ZARPL.DLL';
function SumYM(Integer, word): Double; external 'G_ZARPL.DLL';
function SumP_I(Integer, LongInt): Double; external 'G_ZARPL.DLL';
function SumP(LongInt): Double; external 'G_ZARPL.DLL';
function NachMO(word, LongInt): Double; external 'G_ZARPL.DLL';
function Ud: Double; external 'G_ZARPL.DLL';
function Ud_M: Word; external 'G_ZARPL.DLL';
function Ud_Y: Word; external 'G_ZARPL.DLL';
function UD_UD: Word; external 'G_ZARPL.DLL';
function OTCH_M: integer; external 'G_ZARPL.DLL';
function OTCH_Y: integer; external 'G_ZARPL.DLL';
function POtch_M: integer; external 'G_ZARPL.DLL';
function POtch_Y: integer; external 'G_ZARPL.DLL';
function UCHP_M: integer; external 'G_ZARPL.DLL';
function UCHP_Y: integer; external 'G_ZARPL.DLL';
function NAKP6: double; external 'G_ZARPL.DLL';
function NAKP7: double; external 'G_ZARPL.DLL';
function NAKP33: double; external 'G_ZARPL.DLL';
function NAKP4: double; external 'G_ZARPL.DLL';
function NAKP66: double; external 'G_ZARPL.DLL';
function NAKP88: double; external 'G_ZARPL.DLL';
function NAKP12: double; external 'G_ZARPL.DLL';
function NakPM6(word): double; external 'G_ZARPL.DLL';
function NakPM7(word): double; external 'G_ZARPL.DLL';
function NakPM33(word): double; external 'G_ZARPL.DLL';
function NakPM4(word): double; external 'G_ZARPL.DLL';
function NakPM66(word): double; external 'G_ZARPL.DLL';
function NakPM88(word): double; external 'G_ZARPL.DLL';
function NakPM12(word): double; external 'G_ZARPL.DLL';
function NAK(word, word): double; external 'G_ZARPL.DLL';
function NAKM(word, word, word): double; external 'G_ZARPL.DLL';
function UdMO(word, word): Double; external 'G_ZARPL.DLL';
function SumUMO(Integer, word, word, char): Double; external 'G_ZARPL.DLL';
function SUZMON(Integer, word, word, word): Double; external 'G_ZARPL.DLL';
function SUVMON(Integer, word, word, word): Double; external 'G_ZARPL.DLL';
function SUZMO(Integer, word, word): Double; external 'G_ZARPL.DLL';
function SUVMO(Integer, word, word): Double; external 'G_ZARPL.DLL';
function NachM(word): Double; external 'G_ZARPL.DLL';
function Nach: Double; external 'G_ZARPL.DLL';
function NachO(LongInt): Double; external 'G_ZARPL.DLL';
function NachP(LongInt): Double; external 'G_ZARPL.DLL';
function NachP_I(Integer, LongInt): Double; external 'G_ZARPL.DLL';
function NachSumP_I(Integer, LongInt): Double; external 'G_ZARPL.DLL';
function NachSumP(LongInt): Double; external 'G_ZARPL.DLL';
function DnArxYMO(integer, word, Longint): Double; external 'G_ZARPL.DLL';
function chArxYMO(integer, word, Longint): Double; external 'G_ZARPL.DLL';
function chArxP_I(integer, Longint): Double; external 'G_ZARPL.DLL';
function dnArxP_I(integer, Longint): Double; external 'G_ZARPL.DLL';
function dnArxP(Longint): Double; external 'G_ZARPL.DLL';
function chArxP(Longint): Double; external 'G_ZARPL.DLL';
function DnPlArx(Word, Word, Longint): Double; external 'G_ZARPL.DLL';
function ChPlArx(Word, Word, Longint): Double; external 'G_ZARPL.DLL';
function chTabMO(word, Longint): Double; external 'G_ZARPL.DLL';
function dnTabMO(word, Longint): Double; external 'G_ZARPL.DLL';
function dnTabO(Longint): Double; external 'G_ZARPL.DLL';
function chTabO(Longint): Double; external 'G_ZARPL.DLL';
function chTabP(Longint): Double; external 'G_ZARPL.DLL';
function DnTabP(Longint): Double; external 'G_ZARPL.DLL';
function dnTabP_I(integer, Longint): Double; external 'G_ZARPL.DLL';
function ChTabP_I(integer, Longint): Double; external 'G_ZARPL.DLL';
function chP_I(integer, Longint): Double; external 'G_ZARPL.DLL';
function dnP_I(integer, Longint): Double; external 'G_ZARPL.DLL';
function dnP(Longint): Double; external 'G_ZARPL.DLL';
function chP(Longint): Double; external 'G_ZARPL.DLL';
function Proc_Stag: Double; external 'G_ZARPL.DLL';
function Proc_StagS: Double; external 'G_ZARPL.DLL';
function Proc_Stag13: Double; external 'G_ZARPL.DLL';
function SumAlgNo(word): Double; external 'G_ZARPL.DLL';
function LschSumAlgNo(comp,word): Double; external 'G_ZARPL.DLL';
function SumAlgNP(word, word): Double; external 'G_ZARPL.DLL';
function DAY_KLNDR(date, date): Double; external 'G_ZARPL.DLL';
function DAY_CURM: Double; external 'G_ZARPL.DLL';
function OklArx(integer, word): Double; external 'G_ZARPL.DLL';
function UchChTabO(Longint): Double; external 'G_ZARPL.DLL';
function NRMTM(Word, Word): Double; external 'G_ZARPL.DLL';
function NachDVH(word,word): Double; external 'G_ZARPL.DLL';
function NachD(LongInt): Double; external 'G_ZARPL.DLL';
function UCHD(LongInt): Double; external 'G_ZARPL.DLL';
function UCHS(LongInt): Double; external 'G_ZARPL.DLL';
function ChNachD(LongInt): Double; external 'G_ZARPL.DLL';
function DnNachD(LongInt): Double; external 'G_ZARPL.DLL';
function TarifYM(Integer, Integer): Double; external 'G_ZARPL.DLL';
function SummClass(Integer, Word, Integer, Word, String, String): Double; external 'G_ZARPL.DLL';
function LSC_ClassVal(String): String; external 'G_ZARPL.DLL';
function LSC_doATTR(String): Double; external 'G_ZARPL.DLL';
function LSC_stATTR(String): String; external 'G_ZARPL.DLL';
function LSC_daATTR(String): Date; external 'G_ZARPL.DLL';
function LSC_tiATTR(String): Time; external 'G_ZARPL.DLL';
function Post_KOD: string; external 'G_ZARPL.DLL';
function MOTIV_UV: string; external 'G_ZARPL.DLL';
function InitStav: boolean; external 'G_ZARPL.DLL';
procedure DoneStav; external 'G_ZARPL.DLL';
function Get_Nalog(word, double, Date, var double, word): Double; external 'G_ZARPL.DLL';
function InitReGetSV(Date): boolean; external 'G_ZARPL.DLL';
function InitReGetESN: boolean; external 'G_ZARPL.DLL';
procedure DoneReGetESN; external 'G_ZARPL.DLL';
procedure ReGetESN(comp, word, Integer, double, double); external 'G_ZARPL.DLL';
procedure FillNach; external 'G_ZARPL.DLL';
procedure DelPerevod(comp, word, Integer, word); external 'G_ZARPL.DLL';
function ZarFot (word, comp): boolean; external 'G_ZARPL.DLL';
procedure MatPf(double, double, var double, var double); external 'G_ZARPL.DLL';
function Dbg(String): String; external 'G_ZARPL.DLL';
function ZarAlg(String, String): Double; external 'G_ZARPL.DLL';
function JOB_SUMMA(Word): Double; external 'G_ZARPL.DLL';
function JOB_CH(Word): Double; external 'G_ZARPL.DLL';
function JOB_DN(Word): Double; external 'G_ZARPL.DLL';
function JOB_SUMMAD(word, date, date): double; external 'G_ZARPL.DLL';
function JOB_CHD(word, date, date): double; external 'G_ZARPL.DLL';
function JOB_DND(word, date, date): double; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// разноска и расчет нарядов
// DUTYCALC.PAS
//------------------------------------------------------------------------------
function InitDutyCalc(string): boolean; external 'G_ZARPL.DLL';
function InitDutyDistr(string): boolean; external 'G_ZARPL.DLL';
procedure DoneDutyCalc; external 'G_ZARPL.DLL';
procedure DoneDutyDistr; external 'G_ZARPL.DLL';
function CalcDuty(comp, string): boolean; external 'G_ZARPL.DLL';
function CalcDuties(longint, string): boolean; external 'G_ZARPL.DLL';
function DistrDuty(comp, longint, string): boolean; external 'G_ZARPL.DLL';
function DistrDuties(longint, string): boolean; external 'G_ZARPL.DLL';
function ReCalcAddPayments(comp, comp): double; external 'G_ZARPL.DLL';
function NAR_LOWDOP: double; external 'G_ZARPL.DLL';
function NAR_DOPCHVO(word): double; external 'G_ZARPL.DLL';
function NAR_DOPPRVO(longint): double; external 'G_ZARPL.DLL';
function NAR_DOPSVO(longint): double; external 'G_ZARPL.DLL';
function NAR_DOPNREC: comp; external 'G_ZARPL.DLL';
function BrSumChTab: Double; external 'G_ZARPL.DLL';
function BrSumDnTab: double; external 'G_ZARPL.DLL';
function BrSumTar: Double; external 'G_ZARPL.DLL';
function BrSumTarKTY: Double; external 'G_ZARPL.DLL';
function BrSumNar: Double; external 'G_ZARPL.DLL';
function BrSumNarTm: Double; external 'G_ZARPL.DLL';
function BrSumKTY: Double; external 'G_ZARPL.DLL';
function BrKNV: Double; external 'G_ZARPL.DLL';
function BrKSM: Double; external 'G_ZARPL.DLL';
function SmRasc: Double; external 'G_ZARPL.DLL';
function SmKolvo: Double; external 'G_ZARPL.DLL';
function SmNrmTm: Double; external 'G_ZARPL.DLL';
function SmSum: Double; external 'G_ZARPL.DLL';
function SmSumTm: Double; external 'G_ZARPL.DLL';
function SumKty: double; external 'G_ZARPL.DLL';
function NAR_NREC: comp; external 'G_ZARPL.DLL';
function NrSum: Double; external 'G_ZARPL.DLL';
function NrSumTm: Double; external 'G_ZARPL.DLL';
function NrSumTar: Double; external 'G_ZARPL.DLL';
function NrSumTarKTY: Double; external 'G_ZARPL.DLL';
function NrSumKTY: Double; external 'G_ZARPL.DLL';
function NrKnv: double; external 'G_ZARPL.DLL';
function LsSumTar: Double; external 'G_ZARPL.DLL';
function LsSumTarKTY: Double; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// reg_falg.pas
//------------------------------------------------------------------------------
function PDOPPROC(longint, word): double; external 'G_ZARPL.DLL';
function PDOPSUM(longint, word): double; external 'G_ZARPL.DLL';
function PDOPTARIF(longint, word): double; external 'G_ZARPL.DLL';
function OtpDnGrM(word, comp, byte, integer): byte; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// lowproc.pas
//------------------------------------------------------------------------------
procedure ClearDefAutoAnalytics; external 'G_ZARPL.DLL';
procedure SetDefAutoAnalytics(word, comp); external 'G_ZARPL.DLL';
function GetDefAutoAnalytics(word): comp; external 'G_ZARPL.DLL';
function LoadAutoAnalytics(string, string): boolean; external 'G_ZARPL.DLL';
procedure GetAutoAnalytics(integer, var word, var comp); external 'G_ZARPL.DLL';
procedure DoneAutoAnalytics; external 'G_ZARPL.DLL';

Procedure InitarKlperopl; external 'G_ZARPL.DLL';
Procedure DonearKlperopl; external 'G_ZARPL.DLL';
function  getImposedSumma(byte, longint, comp, comp, longint, word, word): double; external 'G_ZARPL.DLL';
#doc
  Возвращает дату начала отчетного периода модуля "Заработная плата"
#end
function GetReportingPeriodBeginning: date; external 'G_ZARPL.DLL';
function AccountingPeriodRealBeginning: date; external 'G_ZARPL.DLL';
Procedure InitarKlVidUd; external 'G_ZARPL.DLL';
function GetVidUdRound(word, var word): boolean; external 'G_ZARPL.DLL';

function OcrugNaRuk(Double, Double): Double; external 'G_ZARPL.DLL';
function OcrugVBS(Double, Double): Double; external 'G_ZARPL.DLL';

function IntInit: boolean; external 'G_ZARPL.DLL';
function exitproc: boolean; external 'G_ZARPL.DLL';
function GetYe(integer): integer; external 'G_ZARPL.DLL';
function CacheOperatingModes: Boolean; external 'G_ZARPL.DLL';
function CachePercentScales: Boolean; external 'G_ZARPL.DLL';
function AddResourceByName(String): Boolean; external 'G_ZARPL.DLL';
procedure FreeResourceByName(String); external 'G_ZARPL.DLL';
//Логически верное выделение подстроки не более заданной длины, т.е. не
//происходит резка в середине слова, строка режется только по разделителям,
//возможна вставка знака переноса и вырезка найденной подстроки из исходной.
function LogicSubStr(var String, Byte, Boolean, Boolean): String; external 'G_ZARPL.DLL';
function SetKlndr(integer, integer, longint, word): boolean; external 'G_ZARPL.DLL';
function SetChasf(date, double, longint, word): double; external 'G_ZARPL.DLL';
function prVidInit(word, comp): boolean; external 'G_ZARPL.DLL';
function PrVidInitialized: Boolean; external 'G_ZARPL.DLL';
procedure DoneVx(word); external 'G_ZARPL.DLL';
function FillVidOplAndSetM: Boolean; external 'G_ZARPL.DLL';
procedure CloseFillVidOplAndSetM; external 'G_ZARPL.DLL';
function GetAverageWage: double; external 'G_ZARPL.DLL';
function GetRoundPer(word, word): word; external 'G_ZARPL.DLL';
function GetRoundPlat(word, word): word; external 'G_ZARPL.DLL';
function InitCRC: LongInt; external 'G_ZARPL.DLL';
function FinishCRC(Longint): LongInt; external 'G_ZARPL.DLL';
function IncCompCRC(Comp, Longint): LongInt; external 'G_ZARPL.DLL';
// otpusk.pas
function MegRasPodoh(word, word): boolean; external 'G_ZARPL.DLL';
function RasAvansA(comp, Double): Double; external 'G_ZARPL.DLL';
function CalcTaxesA(comp, Double): Double; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// REG_FZAR.PAS
//------------------------------------------------------------------------------
function GetRegisterPrefix(word, var word): string; external 'G_ZARPL.DLL';
function SvodDone: Boolean; external 'G_ZARPL.DLL';
function SvodInit: Boolean; external 'G_ZARPL.DLL';
function SvodSetNull: Boolean; external 'G_ZARPL.DLL';
function OnRekord(comp, Double): boolean; external 'G_ZARPL.DLL';
function GetQuant: Integer; external 'G_ZARPL.DLL';
function GetAllSum: Double; external 'G_ZARPL.DLL';
function GetCurS(Integer): Double; external 'G_ZARPL.DLL';
function GetCurCex(Integer): Comp; external 'G_ZARPL.DLL';
function TestFile(string, word): integer; external 'G_ZARPL.DLL';
function GetFirstTabN(word): longint; external 'G_ZARPL.DLL';
function GetNextTabN(word): longint; external 'G_ZARPL.DLL';
function GetFirstDay: string; external 'G_ZARPL.DLL';
function GetNextDay: string; external 'G_ZARPL.DLL';
function StavNinOkl(Integer, word): Double; external 'G_ZARPL.DLL';
function StavNinRaz(Integer, word): Double; external 'G_ZARPL.DLL';
function BaseSalary(Integer, Word): longint; external 'G_ZARPL.DLL';
function Tarif(word, word, word, date, Double, Double): boolean; external 'G_ZARPL.DLL';
function TarS(word, word, word, date): double; external 'G_ZARPL.DLL';
function DnB: word; external 'G_ZARPL.DLL';
function ChB: double; external 'G_ZARPL.DLL';
function DnGr: double; external 'G_ZARPL.DLL';
function ChGr: double; external 'G_ZARPL.DLL';
function SrednChas: double; external 'G_ZARPL.DLL';
function Ch0(word): double; external 'G_ZARPL.DLL';
function DniGr(Integer, Integer, word): double; external 'G_ZARPL.DLL';
function DniGrBet(Word, Word): word; external 'G_ZARPL.DLL';
function ChaGr(Integer, Integer, word): double; external 'G_ZARPL.DLL';
function SrednCh(Integer, Integer, word): double; external 'G_ZARPL.DLL';
function UderAndNalDone: Boolean; external 'G_ZARPL.DLL';
function UderAndNalInit: Boolean; external 'G_ZARPL.DLL';
function SetKolDn(Date, Date, String, Word): double; external 'G_SUMDIVIDE.DLL';
function SetGraf(Integer, Integer, String, word): integer; external 'G_ZARPL.DLL';
procedure SetGrafForTabN(integer, integer, String, word); external 'G_ZARPL.DLL';
function SetGrafGr(Integer, Integer, String, word, word): integer; external 'G_ZARPL.DLL';
function NalogVZA(word, word, comp, word): double; external 'G_ZARPL.DLL';
function CheckDohod(comp, word, Integer): Boolean; external 'G_ZARPL.DLL';
procedure LDohod(var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, comp, word, Integer); external 'G_ZARPL.DLL';
procedure UderAndNal(var anytype, var anytype, var anytype, var anytype, comp, word, Integer); external 'G_ZARPL.DLL';
function SetStageProc(String, Comp, Date): Double; external 'G_ZARPL.DLL';
function SetShtatSum(String, Comp): Double; external 'G_ZARPL.DLL';
//Расчет доплат по алгоритмам... ПиР(180.649)
function SetSumRaiseAll(String, Comp, Comp, date, word, word, word, double, double, word, double, word, comp, comp, comp, double, double, word): Double; external 'G_ZARPL.DLL';
function PREINITSREDMES(Comp, date): date; external 'G_ZARPL.DLL';
function GetStrTabn(LongInt, string): string; external 'G_ZARPL.DLL';
//function SetSumRaise(Longint, Comp, Comp, date, word, word, word, double, double, word, double, word, comp, comp, comp, double, double): Double; external 'G_ZARPL.DLL';
function GetSurnameWithInitials(String): String; external 'G_ZARPL.DLL';
function DelFil(word, string): word; external 'G_ZARPL.DLL';
function ONR(double): double; external 'G_ZARPL.DLL';
function konvlgot(comp): boolean; external 'G_ZARPL.DLL';
function konvPometka(comp): boolean; external 'G_ZARPL.DLL';
function DohodDone: Boolean; external 'G_ZARPL.DLL';
function DohodInit: Boolean; external 'G_ZARPL.DLL';
function G_KOEF: double; external 'G_ZARPL.DLL';
function G_TRF: double; external 'G_ZARPL.DLL';
function ZeroCounter(String): word; external 'G_ZARPL.DLL';
function ZeroFiller(String, word): String; external 'G_ZARPL.DLL';
function CheckLincForm(String, String): word; external 'G_ZARPL.DLL';
function DeptRound(comp, date, integer): boolean; external 'G_ZARPL.DLL';
function GetRegisterPrefix(Word, var Word): String; external 'G_ZARPL.DLL';
function PackTbl(word, word, word, word): comp; external 'G_ZARPL.DLL';
function GetTbl(comp, integer): word; external 'G_ZARPL.DLL';
function DeptAttr(comp, comp, var double): boolean; external 'G_ZARPL.DLL';
function BlCaseByte(Longint): word; external 'G_SUMDIVIDE.DLL';
function BlKalendFlag(Longint): word; external 'G_SUMDIVIDE.DLL';
function SrShiftF5(comp, longint): boolean; external 'G_SUMDIVIDE.DLL';
function CreateArOtpusk(comp, word): boolean; external 'G_SUMDIVIDE.DLL';
function OtpShiftF1(comp): boolean; external 'G_SUMDIVIDE.DLL';
function OtpShiftF5(comp): boolean; external 'G_SUMDIVIDE.DLL';
function OtpOtlFlagF(Longint, Longint): word; external 'G_SUMDIVIDE.DLL';
function OtpKalendFlag(Longint): word; external 'G_SUMDIVIDE.DLL';
function OtpSredDay(Longint): double; external 'G_SUMDIVIDE.DLL';
function OtpCaseByte(Longint): word; external 'G_SUMDIVIDE.DLL';
function SPZVi(var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, var anytype, comp, Word, word, date, Word): boolean; external 'G_SUMDIVIDE.DLL';
function UpdateMask(Integer, Integer, String, String, String, String, String, String, String, String, String, String, String, String): boolean; external 'G_SUMDIVIDE.DLL';
function UpdateArme(comp, Integer, Integer): boolean; external 'G_SUMDIVIDE.DLL';
function Vxodimost1(Longint): boolean; external 'G_SUMDIVIDE.DLL';
function BlShiftF5(comp, double): boolean; external 'G_SUMDIVIDE.DLL';
function DnGrD1D2: double; external 'G_SUMDIVIDE.DLL';
function ChGrD1D2: double; external 'G_SUMDIVIDE.DLL';
function DatOkSmen(Date, double): Date; external 'G_SUMDIVIDE.DLL';
function PoiskSmen(Date, String, word): longint; external 'G_SUMDIVIDE.DLL';
function SettDatOk(Date, double, String, Word): Date; external 'G_SUMDIVIDE.DLL';
function SetKolDnPerexod(Date, Date, String, Comp, Word, boolean): double; external 'G_SUMDIVIDE.DLL';
function SetKolDnAnn(Date, Date, String, Word): double; external 'G_SUMDIVIDE.DLL';
function BlDatOk(Date, double, word,  String, Comp, Word): Date; external 'G_SUMDIVIDE.DLL';
function SettDatOkPerex(Date, double, String, Comp, Word): Date; external 'G_SUMDIVIDE.DLL';
function day_proc(double, longint, longint, longint, word, double, double, date, double, integer, word, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';
function proc_day_s(double, longint, longint, longint, word, double, double, date, double, integer, word, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';
function dni_i_ch(date, double, integer, word, double, double, String, Comp, word, double, double, double): double; external 'G_SUMDIVIDE.DLL';
function dni_i_ (date, double, integer, word, double, double, String,  Comp, word, double, double, double, longint, longint): double; external 'G_SUMDIVIDE.DLL';
function SetChasfPerex(date, double, String, Comp, word, boolean): double; external 'G_SUMDIVIDE.DLL';
function VOKolDn(Date, Date, String, Word, Word): double; external 'G_SUMDIVIDE.DLL';
function VODatOk(Date, double, String, Word, Word): Date; external 'G_SUMDIVIDE.DLL';
function VOChasF(Date, double, String, Word, Word): Double; external 'G_SUMDIVIDE.DLL';
function MoveToStag(double, Date, Date, String, Comp): Word; external 'G_SUMDIVIDE.DLL';
function Delim_Po_Mes(comp, String, word): boolean; external 'G_SUMDIVIDE.DLL';
function D_N_O(date, date, double, longint, longint, longint, double): date; external 'G_SUMDIVIDE.DLL';
function Yea_N_Z(date, double, integer): integer; external 'G_SUMDIVIDE.DLL';
function Data_N_Z(date, double, integer): Date; external 'G_SUMDIVIDE.DLL';
function SrednStavSrednZ(Integer, word): Double; external 'G_SUMDIVIDE.DLL';
function SrednStavSrednD(Integer, word): Double; external 'G_SUMDIVIDE.DLL';

//------------------------------------------------------------------------------
//расчет разовых выплат и налогов на них
// PRVIDOPL.PAS
//------------------------------------------------------------------------------
function InitPaymentsCalculation: boolean; external 'G_ZARPL.DLL';
function CalcPaymentsSums(comp, comp, word): boolean; external 'G_ZARPL.DLL';
function CalcPaymentsTaxes(comp, comp, word, boolean, boolean): boolean; external 'G_ZARPL.DLL';
procedure DonePaymentsCalculation; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// ALGBIFUN.PAS
//------------------------------------------------------------------------------
function KB(date): double; external 'G_SREDN.DLL';
// Коэффициент повышения тарифа (Отпуска)
function KO(date): double; external 'G_SREDN.DLL';
// поиск основного вида оплаты по системе оплаты
function SearchVo(word): longint; external 'G_ZARPL.DLL';
// Тариф по входимости в оклад
function KOT(date, comp): double; external 'G_SREDN.DLL';

//------------------------------------------------------------------------------
// расчет детских пособий и пособий матерям
// CHILD.PAS
//------------------------------------------------------------------------------
//расчет детских пособий/пособий матерям
function InitChildGrantsCalculation: boolean; external 'G_ZARPL.DLL';
//расчет суммы ежемесячного детского пособия
function CalcChildGrantSum(comp): boolean; external 'G_ZARPL.DLL';
//расчет индексации ежемесячного детского пособия
function CalcChildIndeksSum(comp): boolean; external 'G_ZARPL.DLL';
//расчет суммы разового детского пособия
function CalcChildOneGrantSum(comp): boolean; external 'G_ZARPL.DLL';
procedure DoneChildGrantsCalculation; external 'G_ZARPL.DLL';

//-----------------------------------------------------------------------------
// UDUDER.PAS
//-----------------------------------------------------------------------------
function GetBankSbor(word, var double, double, double): double; external 'G_zarpl.dll';
function _GetProcFromScale(comp, double, word, var double, var double): double; external 'G_zarpl.dll';
function InitPercentScales: boolean; external 'G_zarpl.dll';
function ReReadPercentScales: boolean; external 'G_zarpl.dll';
procedure DonePercentScales; external 'G_zarpl.dll';

//------------------------------------------------------------------------------
// PEREX.PAS
//------------------------------------------------------------------------------
function InitChange: boolean; external 'G_SUMDIVIDE.DLL';

// установить новые числовой табельный номер (2), символьный табельный номер (3)
// и подразделение (4) в лицевом счете (1), подавить выдачу сообщений об ошибках
// (5) = true
function ChangeClockNumber(comp, longint, string, comp, boolean): boolean; external 'G_SUMDIVIDE.DLL';
function ChangeClockNumberCP(comp, longint, string, comp, boolean): boolean; external 'G_SUMDIVIDE.DLL';

// установить новые числовой табельный номер (2), символьный табельный номер (3)
// и подразделение (4) в лицевом счете (1), подавить выдачу сообщений об ошибках
// (5) = true; информация Кадров не обновляется ни при каких условиях;
// имеет смысл запускать только из Кадров
function StaffSafeChangeClockNumber(comp, longint, string, comp, boolean): boolean; external 'G_SUMDIVIDE.DLL';

procedure DoneChange; external 'G_SUMDIVIDE.DLL';
procedure RunPerexProcess; external 'G_SUMDIVIDE.DLL';

//------------------------------------------------------------------------------
// Сервисные функции для отчетности ПФ
// PFFUNCS.PAS
//------------------------------------------------------------------------------
function DivFile_UseString(string, string, String, String, boolean, LongInt) : String; external 'g_zarpl.dll';
function DivFileAndSendMail(string, string) : String; external 'g_zarpl.dll';
function DivFileAndSendMailEx(string, string) : String; external 'g_zarpl.dll';
function ConvertFileEncoding(string, string) : boolean; external 'g_zarpl.dll';
//------------------------------------------------------------------------------
// TAXCALC.PAS
//------------------------------------------------------------------------------
function StavHelp(longint, integer, word): double; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// функции работы с зарплатным логом
// ZARLOG.PAS
//------------------------------------------------------------------------------
procedure ClearLogFile; external 'G_ZARPL.DLL';
procedure Displ(string); external 'G_ZARPL.DLL';
procedure ShowErrors;  external 'G_ZARPL.DLL';
procedure CloseLogFile; external 'G_ZARPL.DLL';
function OpenLogFile(string): boolean; external 'G_ZARPL.DLL';
function LockLogFile: integer; external 'G_ZARPL.DLL';
function UnlockLogFile: integer; external 'G_ZARPL.DLL';
//бросить в лог описание ошибки с указанным кодом + дополнительная информация
function LogIfError(integer, string): integer; external 'G_ZARPL.DLL';
//выдать на экран описание ошибки с указанным кодом + дополнительная информация
function DisplayIfError(integer, string): integer; external 'G_ZARPL.DLL';
procedure Log(string, word); external 'G_ZARPL.DLL';
function LogTableError(integer, word): integer; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// импорт нарядов
// DUTIES.PAS
//------------------------------------------------------------------------------
function  InitImportProcessor(string): boolean; external 'G_ZARPL.DLL';
function  NextImportSection: boolean; external 'G_ZARPL.DLL';
function  NextImportSectionLine: boolean; external 'G_ZARPL.DLL';
function  NextImportDataLine: boolean; external 'G_ZARPL.DLL';
function  GetStringImportData: string; external 'G_ZARPL.DLL';
function  GetNumericImportData: double; external 'G_ZARPL.DLL';
function  GetImportError: integer; external 'G_ZARPL.DLL';
function  GetImportLineNumber: longint; external 'G_ZARPL.DLL';
procedure ReWindImportProcessor; external 'G_ZARPL.DLL';
procedure DoneImportProcessor; external 'G_ZARPL.DLL';

function  FindFile(string): boolean; external 'G_ZARPL.DLL';
function  EraseFile(string): boolean; external 'G_ZARPL.DLL';
function  CopyFile(string, string): boolean; external 'G_ZARPL.DLL';

function Check_CIK(string, string): boolean; external 'ExportCIK.DLL';
function Generate_CIK(string): string; external 'ExportCIK.DLL';

procedure ChangePeriodDates(date); external 'G_ZARPL.DLL';
procedure RunTariffRecalculationProcessWithPerex(_cLschet :comp);external 'G_ZARPL.DLL';
procedure ReCalcInit(boPrizn: boolean); external 'G_ZARPL.DLL';

#ifdef ATL51
  function MyGetFirstStr(string): string; external 'G_ZARPL.DLL';
  function MyGetFirstStr1(string): string; external 'G_ZARPL.DLL';
#end
#doc
  флаг корректировки предварительного просмотра
#end
function IsUCH_KOR: Boolean; external 'G_ZARPL.DLL';
