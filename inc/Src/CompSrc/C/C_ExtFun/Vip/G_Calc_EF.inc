//******************************************************************************
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 8.1 - ��ࠡ�⭠� ����-������
// ���ᠭ�� ��ॣ����஢����� �㭪権, ��� G_ZARPL.DLL (�஬� ���⮢ �� �।����)
//******************************************************************************

function NREC_13 : Comp; external 'G_ZARPL.DLL';
function PROC_ST(comp, word, date, date): Double; external 'G_ZARPL.DLL';
function TarSCoef(double,word, word, word, date): double; external 'G_ZARPL.DLL';
function Proc_Refin(word,date): Double; external 'G_ZARPL.DLL';
function Changed_Refin(word,double,date,date) : double; external 'G_ZARPL.DLL';
function NrSumma: double; external 'g_zarpl.dll';
function NrPrem: double; external 'g_zarpl.dll';

function NAR_DOPSVO(longint): double; external 'G_ZARPL.DLL';

#doc
  ��� ����砭�� ���室� �� ����
#end
function PE_DATOK_D (date) : Date;external 'G_ZARPL.DLL';

#doc
  �ਧ��� ���室� � �����ਮ� �� ����.
   �᫨ � ���室� ��������� ��� ����砭��, � �㭪�� ����� ���祭�� false, ���� true
#end
function PE_POST_D  (date) : Boolean;external 'G_ZARPL.DLL';

#doc
  �㬬� 䠪��᪨ ��ࠡ�⠭���� �६��� ��� ࠡ�⭨��� � ��⮬ ���
#end
function NrSumTimeKTY: Double; external 'G_ZARPL.DLL';

#doc
�ਧ��� ����室����� ���᫥���/㯫��� ����ᮢ �� ���.���� ��� ��������
#end
function Is_DopT (Cappoint  : comp,       // ��뫪� �� ���������
                  LStabn    : string,     // ������� �����(���ଠ�)
                  vidoplp   : longint     // ��� ������ ���짮��⥫�᪨�(���ଠ�)
                 ) : integer; external 'G_ZARPL.DLL';

#doc
  ����稥 �ᮡ�� �᫮��� �� ���஢ 1 - ����, 0 - ���
  ���ᠭ�� �㭪樨  PPS_KPS (CexOz,Cappoint)
  CexOz    - cc뫪� �� katpodr
  Cappoint - cc뫪� �� ���������
#end
function PPS_KPS (comp, comp) : Word; external 'G_ZARPL.DLL';

#doc
  ��業� ����ᮢ �� ����ᨮ���쭮� ���客����
  ���ᠭ�� �㭪樨  PPS_PROC (CexOz,Cappoint)
  CexOz    - cc뫪� �� katpodr
  Cappoint - cc뫪� �� ���������
#end
function PPS_PROC (comp, comp) : double; external 'G_ZARPL.DLL';

#doc
  ��業� ����ᮢ �� ����ᨮ���쭮� ���客����
  ���ᠭ�� �㭪樨  PPS_TARIF (CexOz,Cappoint,Sex)
  CexOz    - cc뫪� �� katpodr
  Cappoint - cc뫪� �� ���������
  Sex      - 㪠����� �� ��� ࠡ�⭨��
#end
#ifdef Gal9_1
function PPS_TARIF (comp, comp, string) : double; external 'G_ZARPL.DLL';
#else
function PPS_TARIF (comp, comp, char) : double; external 'G_ZARPL.DLL';
#end

#doc
  ������⢮ ��ࠡ�⠭��� �ᮢ  �� ⠡��� (���뢠���� ⮫쪮 ����� ࠡ�稥 ���)
  ���ᠭ�� �㭪樨  PPS_CH_80 (cLsch,Db,De,VidOplS)
  cLsch   - ��뫪� �� ��
  Db      - ��� ��砫�
  De      - ��� ����砭��
  VidOplS - ��� ������
  DN_     - ����
  CH_     - �ᮢ
#end
function PPS_CH_80 (cLsch:comp,Db:date,De:date,VidOplS:longint,var D_: double,var CH_: double) : double; external 'G_ZARPL.DLL';

#doc
  ������⢮ ��ࠡ�⠭��� ���� �� �।��� �᫮���� �� ⠡��� (���뢠���� ⮫쪮 ����� ࠡ�稥 ���)
  ���ᠭ�� �㭪樨  PPS_DN_80 (cLsch,Db,De,VidOplS,bWeekend)
  cLsch   - ��뫪� �� ��
  Db      - ��� ��砫�
  De      - ��� ����砭��
  bWeekend- ���뢠�� ��室�� ��� �� ��������� ��䨪� ࠡ�⭨�� ��� ��� - ��� ���� �।��ᯨ�筮� �᫥�����
            (�� ��।�� � ��ࠬ��� true, ��室��� �㤥� ������� ��������� ��ࠡ�⠭��, �᫨ ��ࠡ�⠭ �।�����騩 ����)
#end

function PPS_DN_80 ( cLsch : comp, //��뫪� �� ��
                     Db: date, De: date, bWeekend: boolean) : double; external 'G_ZARPL.DLL';

#doc
  ���������� ���� ��� ���, �뤥������ �� ���᫥���� �㬬�, � ��⮬ �६��� ࠡ��� �� �।��� �᫮����
  ���ᠭ�� �㭪樨 PPS_SUMMA(cLsch, LSTabn, CexOz, CAppoint, VidOplS, Db, De, DneiGR, ChasGRm,  SumPPS, ShowLog)

  cLsch - ��뫪� �� ��
  LSTabn - ������� �����
  CexOz - ���ࠧ�������
  Cappoint -  ���������
  vidopls - ��� ������
  Db, De  -  ��� ��砫� � ����砭��
  DneiGR  -  ��ࠡ�⠭� ���� �� ��䨪�
  ChasGR  -  ��ᮢ �� ��䨪�
  SumPPS  -  �㬬� ����ᮢ ���
  ShowLog -  �뢮���� �� ����� १����� ࠡ��� �㭪樨
#end

function PPS_SUMMA(cLsch: comp,       // ��뫪� �� ��
                  LSTabn: string,     // ������� �����
                  CexOz: comp,        // ���ࠧ�������
                  Cappoint: comp,     // ���������
                  vidopls: longint,   // ��� ������
                  Db: date, De: date, // ��� ��砫� � ����砭��
                  DneiGR : double,    // ��ࠡ�⠭� ���� �� ��䨪�
                  ChasGR : double,    // ��ᮢ �� ��䨪�
                  SumPPS : double,    // �㬬� ����ᮢ ��� - �� �������
                  ShowLog: boolean    // �뢮���� �� ����� १����� ࠡ��� �㭪樨
                  )
                 :  double; external 'G_ZARPL.DLL';

#doc
  ���������� ���� ��� ���, �뤥������ �� ���᫥���� �㬬�, � ��⮬ �६��� ࠡ��� �� �।��� �᫮����
  ���ᠭ�� �㭪樨 PPS_SUM(cLsch, LSTabn, CexOz, CAppoint, VidOplS, Db, De, Date2, DneiGR, ChasGRm,
                           SumPPS, ShowLog, cPodr, var RabProc):
  cLsch    - ��뫪� �� ��
  LSTabn   - ������� �����
  CexOz    - ���ࠧ�������
  Cappoint - ���������
  VidoplS  - ��� ������
  Db, De   - ��� ��砫� � ����砭��
  Date2    - ��� ��砫� ��� �� "����"
  DneiGR   - ��ࠡ�⠭� ���� �� ��䨪�
  ChasGR   - ��ᮢ �� ��䨪�
  SumPPS   - ���᫥���� �㬬� ����ᮢ ��� �� �������
  ShowLog  - �뢮���� �� ����� १����� ࠡ��� �㭪樨
  cPodr    - cPodr ᮮ⢥�����饩 �-�� = Otpusk.nrec  ��� 0
  RabProc  - ࠡ�祥 ���� ��� % ���᫥��� � ���
#end

function PPS_SUM (cLsch   : comp,      // ��뫪� �� ��
                  LSTabn  : string,    // ������� �����
                  CexOz   : comp,      // ���ࠧ�������
                  Cappoint: comp,      // ���������
                  VidoplS : longint,   // ��� ������
                  Db: date, De: date,  // ��� ��砫� � ����砭��
                  Date2   : date,      // ��� ��砫� ��� �� "����"
                  DneiF   : double,    // ��ࠡ�⠭� ���� 䠪�. �� ������
                  ChasF   : double,    // ��ᮢ 䠪�. �� ������
                  SumPPS  : double,    // ���᫥���� �㬬� ����ᮢ ��� �� �������
                  ShowLog : boolean,   // �뢮���� �� ����� १����� ࠡ��� �㭪樨
                  cPodr   : comp,      // cPodr ᮮ⢥�����饩 �-�� = Otpusk.nrec  ��� 0
              var RabProc : double     // ࠡ�祥 ���� ��� % ���᫥��� � ���
                ): double;  external 'G_ZARPL.DLL';

#doc
  �㭪�� - ���� ��� ���㧪� ���祭�� �㬬� ����ᮢ �� ���, ��易⥫쭮 ����稥 ��� ��ࠬ��஢ ��� �-樨 PPS_SUM
  �����頥� ���������� ���� ��� ���, �뤥������ �� ���᫥���� �㬬�, � ��⮬ �६��� ࠡ��� �� �।��� �᫮����

  ���ᠭ�� �㭪樨 Get_PPS_Sum_ForVIP(cLsch, LSTabn, CexOz, CAppoint, VidOplS, Db, De, Date2, DneiGR, ChasGRm,
                                      SumPPS, ShowLog, cPodr, var RabProc):
  cLsch    - ��뫪� �� ��
  LSTabn   - ������� �����
  CexOz    - ���ࠧ�������
  Cappoint - ���������
  VidoplS  - ��� ������
  Db, De   - ��� ��砫� � ����砭��
  Date2    - ��� ��砫� ��� �� "����"
  DneiGR   - ��ࠡ�⠭� ���� �� ��䨪�
  ChasGR   - ��ᮢ �� ��䨪�
  SumPPS   - ���᫥���� �㬬� ����ᮢ ��� �� �������
  ShowLog  - �뢮���� �� ����� १����� ࠡ��� �㭪樨
  cPodr    - cPodr ᮮ⢥�����饩 �-�� = Otpusk.nrec  ��� 0
  RabProc  - ࠡ�祥 ���� ��� % ���᫥��� � ���
#end
function GET_PPS_SUM_FORVIP(
                   cLsch   : comp,      // ��뫪� �� ��
                   LSTabn  : string,    // ������� �����
                   CexOz   : comp,      // ���ࠧ�������
                   Cappoint: comp,      // ���������
                   VidoplS : longint,   // ��� ������
                   Db: date, De: date,  // ��� ��砫� � ����砭��
                   Date2   : date,      // ��� ��砫� ��� �� "����"
                   DneiF   : double,    // ��ࠡ�⠭� ���� 䠪�. �� ������
                   ChasF   : double,    // ��ᮢ 䠪�. �� ������
                   SumPPS  : double,    // ���᫥���� �㬬� �� �������
                   ShowLog : boolean,   // �뢮���� �� ����� १����� ࠡ��� �㭪樨
                   cPodr   : comp,      // cPodr ᮮ⢥�����饩 �-�� = Otpusk.nrec  ��� 0
                   RabProc : double     // ࠡ�祥 ���� ��� % ���᫥��� � ���
                  ): double;   external 'G_ZARPL.DLL';

#doc
  �㭪��, ��।���� ��業� ����ᮢ �� ��� � vip-��室����.
  ���ᠭ�� �㭪樨   Get_ProcPPS_ForVIP: double;
#end
function GET_PROCPPS_FORVIP: double;    external 'G_ZARPL.DLL';

#doc
  �㭪��, ��।���� ��뫪� �� ��������� � vip-��室����.
  ���ᠭ�� �㭪樨   Get_cAppoint_ForVIP: comp;
#end
function GET_CAPPOINT_FORVIP: comp;    external 'G_ZARPL.DLL';

#doc
  �㭪��, ��।���� ��뫪� �� ���ࠧ������� � vip-��室����.
  ���ᠭ�� �㭪樨   Get_CexOZ_ForVIP: comp;
#end
function GET_CEXOZ_FORVIP: comp;       external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� ���� �� ���� ��砫� ����� �।���⥫쭮� ࠧ��᪨
#end
function UCH_YEAR : word; external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� ���譨� ��ਡ�⮢ ⠡���� ०���� ࠡ��
    rejimCode - ��� ०��� ࠡ���
    attrName - ������������ ���譥�� ��ਡ��
#end
function GetRejimExtAttr(rejimCode : word, attrName : string) : string; external 'G_ZARPL.DLL';
#doc
  �㭪�� ������ ��業⮢ ������
    fOpl - ��⥬�� ���� ���� ������
    calcOpt - �롮� ���� ����
    mes - ����� ��砫� �������
#end
function CalcDopProc(fOpl : longint, calcOpt : word, mes : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ������ ��業⮢ ������ � ��⮬ 䨫����
    fOpl - ��⥬�� ���� ���� ������
    calcOpt - �롮� ���� ����
    mes - ����� ��砫� �������
    level - �஢��� ����娨 ���ࠧ�������
#end
function CalcDopProcF(fOpl : longint, calcOpt : word, mes : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ������ ��業⮢ �� ����ﭭ�� ������ � ��⮬ ���ࠧ�������
    fOpl - ��⥬�� ���� ���� ������
    S - ��ਠ�� ������ ��業�
    level - �஢��� ����娨 ���ࠧ�������
#end
function PDopProcF(fOpl : longint, S : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ������ �㬬� ���᫥��� �� ⥪�騩 ����� ��� ���� ������ � ��⮬ ���ࠧ�������
    fOpl - ��⥬�� ���� ���� ������
    level - �஢��� ����娨 ���ࠧ�������
#end
function NachOF(fOpl : longint, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ������ �㬬� ���᫥��� �� ���� ����� ��� ���� ������ � ��⮬ ���ࠧ�������
    fOpl - ��⥬�� ���� ���� ������
    mes - 㪠�뢠�� �� �����
    level - �஢��� ����娨 ���ࠧ�������
#end
function NachPF(fOpl : longint, mes : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ������ �㬬� ���᫥��� �� 㪠����� ����� � ��� ��� ���� ������ � ��⮬ ���ࠧ�������
    fOpl - ��⥬�� ���� ���� ������
    m - 㪠�뢠�� �� �����
    y - 㪠�뢠�� �� ���
    level - �஢��� ����娨 ���ࠧ�������
#end
function NachByMF(fOpl : longint, m : word, y : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ����祭�� �㬬 �� ��娢� �� ��襤訥 ������ � ��⮬ ���ࠧ�������
    fOpl - ��⥬�� ���� ���� ������
    mes - 㪠�뢠�� �� �����
    level - �஢��� ����娨 ���ࠧ�������
#end
function SumArF(fOpl : longint, mes : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ����祭�� �㬬 �� ��娢� �� ��ਮ� �� �������
    fOpl - ��⥬�� ���� ���� ������
#end
function SumPer(fOpl : longint) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ����祭�� �㬬 �� ���᫥��� �� ��ਮ� �� �������
    fOpl - ��⥬�� ���� ���� ������
#end
function NachPer(fOpl : longint) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ����祭�� �㬬 �� ��娢� �� 㪠����� ����� � ��� � ��⮬ ���ࠧ�������
    fOpl - ��⥬�� ���� ���� ������
    m - 㪠�뢠�� �� �����
    y - 㪠�뢠�� �� ���
    level - �஢��� ����娨 ���ࠧ�������
#end
function SumByMF(fOpl : longint, m : word, y : word, level : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� ������⢠ ����/�ᮢ �� �����᭮�� ��䨪� ०��� �� ��ਮ�
    rejim - ��� ०���
    db - ��� ��砫� ��ਮ��
    de - ��� ����砭�� ��ਮ��
    opt - ��樨
#end
function BalBwDates(rejim : word, db : date, de : date, opt : word) : double; external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� ��뫪� �� ������饥 ���ࠧ������� �� ��।������� �஢�� ����娨
    cexRef - ��뫪� �� ���ࠧ�������
    level - �஢��� ����娨 ���ࠧ�������
#end
function DepOnLRef(cexRef: comp, level: word): comp; external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� ���� ��砫� �������, �易���� � ������� �।���⥫쭮� ࠧ��᪨
#end
function DoplataBegin : date; external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� ���� ����砭�� �������, �易���� � ������� �।���⥫쭮� ࠧ��᪨
#end
function DoplataEnd : date; external 'G_ZARPL.DLL';

#doc
  �㭪�� ��� ����祭�� �㬬� �� ������⭮� �믫���
#end
function PRVD_SUM : double; external 'G_ZARPL.DLL';

#doc
 ��� �室� �� ����� ࠡ�⭨��
 ���ᠭ�� �㭪樨 FindPensDate(cLsch: comp): date;
   cLsch - ��뫪� �� ��
#end

function FindPensDate(cLsch: comp): date; external 'G_ZARPL.DLL';

#doc
  ⥪��� cc뫪� �� ���������
#end

function UCH_CAPPOINT   : Comp;  external 'G_ZARPL.DLL';

function NrCexSumTar(comp, boolean): double; external 'g_zarpl.dll';
function NrCexOzSumTar(comp, boolean): double; external 'g_zarpl.dll';
function NrBrigSumTar(comp, boolean): double; external 'g_zarpl.dll';

#doc
  �㬬� 䠪��᪨ ��ࠡ�⠭���� �६��� �����⭮�� ࠡ�⭨�� � ��⮬/��� ��� ���
#end
function NrSumTimeByLS(comp, boolean): double; external 'g_zarpl.dll';

#doc
  �㬬� 䠪��᪨ ��ࠡ�⠭���� �६��� �� ����樨 � ��⮬/��� ��� ���
#end
function NrSumTimeByOp(comp, boolean): double; external 'g_zarpl.dll';

#doc
  �����᪨ ��ࠡ�⠭��� �६� �� ����� � ᯥ�䨪�樨 ���鸞 ��⮬/��� ��� ���
#end
function NrTime(boolean): double; external 'g_zarpl.dll';

#doc
  NRec �ਣ��� �� ⥪�饩 ����� � ࠧ��᪥ ���鸞
#end
function LsBrig: comp; external 'g_zarpl.dll';

#doc
  NRec ��楢��� ��� �� ⥪�饩 ����� � ࠧ��᪥ ���鸞
#end
function LsNar: comp; external 'g_zarpl.dll';

#doc
  NRec ����樨 �� ⥪�饩 ����� � ࠧ��᪥ ���鸞
#end
function OperNar: comp; external 'g_zarpl.dll';

#doc
  ��業� ��������� �६�� �� ����� ᯥ�䨪�樨 ���鸞
#end
function NRBONUSREDPRC: double; external 'g_zarpl.dll';

#doc
  ��業� �६�� ����� ᯥ�䨪�樨 ���鸞
#end
function NRBONUSPRC: double; external 'g_zarpl.dll';

function NachDVH(word,word): Double; external 'G_ZARPL.DLL';

#doc
  �����頥� �㬬� ��ࠡ�⪠ �� ���� �� ��� ࠡ��� ���� HourKind (� ��⮬
  ���, �᫨ WithMpfSum = true).</brief>

  <p>�����ন������ ᫥���騥 ���� ���� �ᮢ:</p>
  <ul>
  <li> 2 - ��� ࠡ��� ���஬;
  <li> 3 - ��� ࠡ��� �����;
  <li> 4 - ��� ࠡ��� � �ࠧ�����;
  <li> 5 - ��� ࠡ��� � ��室��.
  </ul>
#end
function NrHoursSumTar(HourKind: integer, WithMpfSum: boolean): double; external 'g_zarpl.dll';

//------------------------------------------------------------------------------
// ��⮤� ��� ࠡ��� � ����� � ����� ��ਮ����
//------------------------------------------------------------------------------
#doc
  �����頥� ���� ��砫� ���⭮�� ��ਮ�� ����� "��ࠡ�⭠� ����"
#end
function GetReportingPeriodBeginning: date; external 'G_ZARPL.DLL';

#doc
  �����頥� � var-��ࠬ����: ����� ���, ����� �����, ��᫥���� ����
���⭮�� �����, ��� ��砫� ���⭮�� �����, ��� ����砭�� ���⭮�� �����
#end

#ifNdef Gal9_1
function GetUserDate (var YearRas: integer, var MonthRas: integer, var DayRas: integer, var FirstDayRas: date, var DatRas: date): boolean; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// ��⮤� ��� ࠡ��� � ���묨 ��⠬�
//------------------------------------------------------------------------------
#doc
  �����頥� ����� ��⭮�� ��ਮ�� �� ���
#end
function AD_Month(D: date): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ��� ��⭮�� ��ਮ�� �� ���
#end
function AD_Year(D: date): integer; external 'G_ZARPL.DLL';

#doc
  �����頥� ���浪��� ����� ��� � ��⭮� ��ਮ�� �� ���
#end
function AD_DayNo(D: date): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ������⢮ ���������� ���� � ��⭮� ��ਮ�� �� ���
#end
function AD_Days(D: date): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��砫� ��⭮�� ��ਮ�� �� ���
#end
function AD_FirstDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ����砭�� ��⭮�� ��ਮ�� �� ���
#end
function AD_LastDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� �� ���浪����� ������ ���, ������ � ���� ��⭮�� ��ਮ��
#end
function AD_Date(DayNo: byte, Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ����砭�� ��⭮�� ��ਮ�� �� ��� � ��ப���� �ଠ�
#end
function AD_ToChar(D: date, FormatString: string): string; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// ��⮤� ��� ࠡ��� � ���� ����楬
//------------------------------------------------------------------------------
#doc
  �����頥� ������⢮ ���������� ���� � ��⭮� �����
#end
function AM_Days(Month: byte, Year: integer): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��ࢮ�� ��� � ��⭮� �����
#end
function AM_FirstDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��᫥����� ��� � ��⭮� �����
#end
function AM_LastDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��᫥����� ��� � ��⭮� ����� � ��ப���� �ଠ�
#end
function AM_ToChar(Month: byte, year: integer, FormatString: string): string; external 'G_ZARPL.DLL';
#end

#ifNdef Gal9_1
//******************************************************************************
//                                                                        ZC.DLL
//******************************************************************************
#doc
  �����頥� ⨯ ����, ���ᠭ��� � �����䨪��� �ࠧ������ ����.</brief>
  <p> ���� �ਧ����� ᯥ樠���� ���:
  <ul>
  <li> 0 (htNone) - ��� ����� �� ���ᠭ�
  <li> 1 (htHoliday) - �ࠧ����
  <li> 2 (htMovedSaturday) - ��७�ᥭ��� �㡡�� (��� ���������� ���᪮� �� 5-������)
  <li> 3 (htWorking) - ࠡ�稩 ����
  <li> 4 (htMovedSunday) - ��७�ᥭ��� ����ᥭ� (��� ���������� ���᪮� �� 5- � 6-������)
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
// �ନ஢��� �᭮���� ������
function WT_GetOsnOpl(Day: byte): comp; external 'WT.DLL';
// ������� ��� �� ���
function WT_GetSchet(Day: byte): string; external 'WT.DLL';
// ������� ����� �� ���
function WT_GetSubSchet(Day: byte): string; external 'WT.DLL';
// ������� ⠡���� ��� �� �஢��
function WT_GetKauTbl(Day: byte, Level:word): word; external 'WT.DLL';
// ������� ��뫪� ��� �� �஢��
function WT_GetKauReference(Day: byte, Level:word): comp; external 'WT.DLL';
// ������� ���
function WT_GetTXO(Day: byte): comp; external 'WT.DLL';
// ������� ��ࠬ���
function WT_GetParameter(Day: byte): string; external 'WT.DLL';
#end
#doc
  䫠� ���४�஢�� �।���⥫쭮�� ��ᬮ��
#end
function IsUCH_KOR: Boolean; external 'G_ZARPL.DLL';

#doc
  ���� �� � ��⮬ ⠡���, ���譨� ��ਡ�⮢, ���室�� � �.�.
  ���ᠭ�� �㭪樨  Get_RK (Db,De)
  Db      - ��� ��砫�
  De      - ��� ����砭��
#end
function GET_RK (Db : date, De : date) : double; external 'G_ZARPL.DLL';

// ���� �� �室����� � �����
function KOT(date, comp): double; external 'G_SREDN.DLL';
#doc
  �㬬� �� ������� � ����஬, �ਧ����� � ���.��ࠬ��஬
#end
function SumAlgNPD(prNALG : word, PrKAlgg: word, Param: string): double;  external 'G_ZARPL.DLL';

#doc
  �����祭�� ������ �� ����
#end
function GetBufValueD: double; external 'G_ZARPL.DLL';
#doc
  <brief>�㭪�� �����頥� �� �६������ ���� ���祭�� �᫠ � ������饩 �窮�</brief>
  <p>
    �㭪�� GETBUFVALUEDI �।�����祭� ��� ����祭�� �� �६������ ���� ���祭��,
    ��࠭������ �� ��।�������� �������, ����� ��।����� � ����⢥ ��ࠬ���.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>AIndex</code> - ������</li>
  </ul>
#end
function GetBufValueDI(AIndex: longint): double; external 'G_ZARPL.DLL';
#doc
  �����祭�� ������ �� ����
#end
function GetBufValueW: word; external 'G_ZARPL.DLL';
#doc
  �����祭�� ������ �� ����
#end
function GetBufValueB: byte; external 'G_ZARPL.DLL';
#doc
  �����祭�� ������ �� ����
#end
function GetBufValueC: comp; external 'G_ZARPL.DLL';
#doc
  ���࠭���� ������ � ����
#end
function SetBufValueD(double): double; external 'G_ZARPL.DLL';
#doc
  <brief>�㭪�� ��࠭�� �� �६����� ���� ���祭�� �᫠ � ������饩 �窮�</brief>
  <p>
    �㭪�� SETBUFVALUEDI ��࠭�� �� �६����� ���� ���祭�� �᫠ � ������饩 �窮�.
    � ��ࢮ� ��ࠬ��� ��।����� ������, �� ���஬� �㤥� ��࠭��� ���祭��, ��।�����
    �� ��஬ ��ࠬ���. �㭪�� �����頥� ��࠭����� ���祭��.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>AIndex</code> - ������</li>
    <li><code>Value</code> - ��࠭塞�� ���祭��</li>
  </ul>

  <h3>�����頥��� ���祭��</h3>
  <p><p>
    �����頥� ��।����� � ����⢥ <code>Value</code> ���祭��.</p>
  </p>
#end
function SetBufValueDI(AIndex: longint, Value: double): double; external 'G_ZARPL.DLL';
#doc
  ���࠭���� ������ � ����
#end
function SetBufValueW(word): word; external 'G_ZARPL.DLL';
#doc
  ���࠭���� ������ � ����
#end
function SetBufValueB(byte): byte; external 'G_ZARPL.DLL';
#doc
  ���࠭���� ������ � ����
#end
function SetBufValueC(comp): comp; external 'G_ZARPL.DLL';

#doc
  �������� ����
#end
procedure InitBufValue; external 'G_ZARPL.DLL';
#doc
  ����⮦���� ����
#end
procedure DoneBufValue; external 'G_ZARPL.DLL';



#doc
 �஢�ઠ �� ����⢮����� ⠡���� � ��
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
  <brief>�।��� ��業� ������� �� ��ਮ� � ��⮬ ������⢠ ࠡ��� ����</brief>
  <p>
    �����頥� �।��� ��業� �� ����ﭭ�� ������ � ��⥬�� ����� ������
    <code>fOpl</code>, ���ᥪ������ � ��।���� ��ਮ���, � ��⮬ ������⢠ ࠡ��� ����
    ��砫� ��ਮ�� ��।����� �१ ��ࠬ��� <code>db</code>, � ����� - <code>d�</code>
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>fOpl</code> - ��⥬�� ��� ������</li>
    <li><code>db</code> - ��� ��砫� ��ਮ��</li>
    <li><code>de</code> - ��� ����砭�� ��ਮ��</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
  ������ ������⢠ ���� ������ �� �室����� ���� ������ "��ਮ� ������" �����䨪��� ����� �����
  </p>
  <ul>
    <li><code>-</code> - ������⢮ ࠡ��� ����</li>
    <li><code>�+ � ��⮬ ࠡ��� � ��室�� � �ࠧ�����</code> - �� ��ࠡ�⠭�� ���
           (��� ��� ����஥� "ࠡ�稥 ��� �� ���⮬...")</li>
    <li><code>+  � ��⮬ ����稢����� �⪫������</code> - ����稢���� ���</li>
  </ul>
#end
function SRPRDOPL(VO: longint, DB: date, DE: date): double; external 'G_ZARPL.DLL';

#doc
   �������쭠� ��ࠡ�⭠� ���� (������� ����稭�)
   D - ��� (date(��,MM,����))
#end
function MINZPBASESUMMA(D: date): double; external 'G_ZARPL.DLL';

#doc
   �������쭠� ��ࠡ�⭠� ���� ��� ����������
   D - ��� (date(��,MM,����))
#end
function MINZPM(D: date): double; external 'G_ZARPL.DLL';

#doc
   �������쭠� ��ࠡ�⭠� ���� ��� ���ᮢ�� ������
   D - ��� (date(��,MM,����))
#end
function MINZPCH(D: date): double; external 'G_ZARPL.DLL';

#doc
   �஦���� ������ �� ����
   D - ��� (date(��,MM,����))
#end
function PRMIN(D: date): double; external 'G_ZARPL.DLL';

#doc
   C㬬�, ����������� � ���⭮� ����� c ��⮬ ��娢� �����
   �� (�-���,N-��ப�,V-����� �室�����)
#end
function NAKM_AND_ARX(Mes:word, N:word, VH:word): double; external 'G_ZARPL.DLL';

#doc
   ��⠭����� ��業� ������ � ����� �।���⥫쭮�� ��ᬮ��,
   ������� ��⠭������� ��業� ������.
#end
function UCH_SETPROC(double): double; external 'G_ZARPL.DLL';

#doc
   ��� ��⥣�ਨ �� ����� �।���⥫쭮�� ��ᬮ��
#end
function UCH_KATEG: word; external 'G_ZARPL.DLL';

#doc
   �㬬� ����� �� ����ﭭ�� �������, �����䨪��� ���ன ������ �� �।���⥫쭮� ࠧ��᪨
#end
function UCH_PARENTSUM: double; external 'G_ZARPL.DLL';

#doc
   �㬬� �����-���筨��
   (����ﭭ�� ������, ���쭨�� ����, ����, ���᫥��� � �믫��� ⥪�饣� ��ਮ��),
   �����䨪��� ���ன ������ �� �।���⥫쭮� ࠧ��᪨
#end
function UCH_PARENTSUMEXT: double; external 'G_ZARPL.DLL';

#doc
   ����祭�� �㬬� ������� �� �� �����䨪����
#end
function DOPLATAPARENTSUM(comp): double; external 'G_ZARPL.DLL';

#doc
   ����, �� � DOPLATAPARENTSUM
#end
function DPS(comp): double; external 'G_ZARPL.DLL';

#doc
   ������ �����樥�� ��⠭�������� ���� ࠡ�祣� �६���  (�������/������� ��䨪)
#end
function WORKEDHOURSCOEF(LschetNrec: comp, Month: byte, Year: word): double;  external 'G_ZARPL.DLL';

#doc
  <brief>�㬬� ��業⮢ �� ����ﭭ�� ������</brief>
  <p>
    �����頥� �㬬� ��業⮢ �� ����ﭭ�� ������ � ��⥬�� ����� ������
    <code>fOpl</code>, ���ᥪ������ � ��।���� ��ਮ���. ��砫� ��ਮ��
    ��।����� �१ ��ࠬ��� <code>db</code>, � ����� - <code>d�</code>
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>fOpl</code> - ��⥬�� ��� ������</li>
    <li><code>db</code> - ��� ��砫� ��ਮ��</li>
    <li><code>de</code> - ��� ����砭�� ��ਮ��</li>
  </ul>
#end
function PDopProcDate(fOpl: longint, db: date, de: date): double; external 'G_ZARPL.DLL';
