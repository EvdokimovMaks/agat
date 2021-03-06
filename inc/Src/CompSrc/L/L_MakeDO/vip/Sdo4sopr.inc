//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - �����⨪�
// ���ᠭ�� �६����� ⠡���� ��� ᮧ����� �� �� ��������
//******************************************************************************


#ifNdef _SDO4SOPR_INC
#define _SDO4SOPR_INC

Table STRUCT Sdo4sopr "��� ᮧ����� �� �� ��������"

(
  NRec          : comp
, VidSopr       : word
, PrMC          : word
, cMCUsl        : comp
, cParty        : comp
, SrPrice       : double      // ��� ����� � ������ � ᢥ�⪮� 業� � ���
, ManualTax     : word
, cGrNal        : comp
, ProcUb        : double
, nVagon        : string[20]  // ��७�� ����஢ �������
, OtpEd         : comp
, Kol           : double
, KolOpl        : double
, Netto         : double
, MTara         : double
, Price         : double
, RSumma        : double
, cPriceList    : comp
, dPrice        : Date
, cStepDoc      : comp
, cSpSopr       : comp        // �㦭� ��� ������ ���
, cCellVal      : comp        // ��.���������� ��⠢� MoveCell
, cNMoveCell    : comp        // ��뫪� �� ����� ��.����. ��⠢�
, KolGrM        : double      // ������⢮ ��㧮��� ����
, cOtpEdGrM     : comp        // ���᪭�� �� ��� ���-�� ��㧮��� ����
, SumAvt        : double      // �㬬� �/� ���
, cValAvt       : comp        // ����� ���
, cMasEd        : comp        // ������ ��� KatED
, cMasVid       : comp        // ᯮᮡ ��।������ ���
, cTransp       : comp        // ��뫪� �� ��.����. ��⠢�
, cUks          : comp        // ��뫪� �� ��ꥪ� ��ந⥫��⢠
, cZatr         : comp        // ��뫪� �� ����� �����
, NKvit         : string[20]  // ����� �/� ���⠭樨
, cResOtgr      : comp        // ����� ���㧪�
, wMcProp       : word        // �-ᮡ�⢥���, �-��ᮡ�⢥��� ⮢��/��㣠
, cRemKompl     : comp        // ����������饥 ६���
, cOwner        : comp
, wTipMoney     : word
)

With Index
(
  Sdo4sopr01 = NRec (Surrogate, Unique),
  Sdo4sopr02 = PrMC + cMCUsl + OtpEd + cParty + SrPrice + ManualTax + cGrNal + ProcUb + nVagon + cUKS + cZatr,
  Sdo4sopr03 = PrMC + cMCUsl + cParty + SrPrice + ManualTax + cGrNal + ProcUb + nVagon + cUKS + cZatr
)
;

//******************************************************************************
Table STRUCT TmpDocNal "�६���� ������ ���."
(
  NRec      : tNRec          "����� �����"
, cSpDoc    : tNRec          "������ ���㬥��"
, cDoc      : tNRec          "��뫪� �� ���㬥��"
, TipDoc    : Word           "��� ���㬥��"
, cGrNal    : tNRec          "��뫪� �� GrNal"
, cNalog    : tNRec          "��뫪� �� ����� ( Katnalog )"
, Nalog     : tSumma         "�⠢�� ������"
, SumNal    : tSumma         "�㬬� ������ � ���. ������"
, cVal      : tNRec          "����� ������"
, SumVal    : tSumma         "�㬬� ������ � ����� ���㬥��"
, Summa     : tSumma         "�㬬� ������ � ���"
, IsAgreg   : boolean        "��ॣ�஢��� �� �⠢��� - ��/���"
, cOrg      : tNRec          "��뫪� �� �����⥫� ������"
, ValCurse  : tSumma         "���� 㯫��� ������ � ���"
, CrosCurse : tSumma         "���� 㯫��� ������ � SumVal"
, Npp       : tNpp           "���冷� ��� ���஢��"
, IsCustom  : Word           "����� �� SpGrNal"                  //  +1 - ⠬����
, rSumma    : tSumma         "�㬬� ������ � ��� (������.)"
, rSumVal   : tSumma         "�㬬� ������ � ����� ���-� (������.)"
, rSumNal   : tSumma         "�㬬� ������ � ���. ������ (������.)"
, dCurseVal : Date           "��� ���� �����"

)
With Index
(
  TmDocNal01  =  NRec(Unique, Surrogate)
, TmDocNal02  =  cSpDoc + TipDoc + cNalog + cGrNal + cVal + cOrg + Nalog
, TmDocNal03  =  cNalog + cGrNal
);

#end // _SDO4SOPR_INC
