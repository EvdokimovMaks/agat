//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������ ��ꥪ� : "����ந⥫� ������᪨� ���⮢"
//------------------------------------------------------------------------------

#ifndef __aMakeFp_Inc__
#define __aMakeFp_Inc__

const
  // �������⥫�� ��ࠬ����
  lc_DopParam_AnBudDoc_Bit : word = 1;  // �����⨪�: 1-���, 0-���㬥��

end; // const

// ��ࠬ���� ����, ����� ����� ���� �६���� ��� ��⠭������
Type TTmpParam = record
  wKodReg   : word;      // ��� ॣ����
  cVariant  : comp;      // ��ਠ�� ��� (��� �ண������� ����)
  cFilter   : comp;      // 䨫���
  cAddFlt   : comp;      // ��뫪� �� �������⥫�� 䨫���
  DopParam  : word;      // ��騥 ��ࠬ����, ����訩 ��� - ����� �����⨪� ���� 0 - ����樨 ��� 1 - ����
  wTable    : word;      // ��� ⠡����
  cBudCO    : comp;      // �� ���
  cBudVar   : comp;      // ����� ���
  cStBud    : comp;      // ����� ���
  cPeriod   : comp;      // ��ਮ� ���
  TreeFpVal : TFpValPrm; // ����� ��ॢ�
end;

// ���� ⠡����, �ᯮ��㥬�� �� ����஥��� ����娨
Type TDoc = record
  wTable  : word; // cgFpTable_Oborot or cgFpTable_Values
  nRec    : comp;
  TiDkGal : word;
  dDoc    : date;
  cSoprDoc: comp;
  CommonParam: word;
  cHashDoc: comp;
  cHashBud: comp; // � Values ���
  cCO     : comp;
  cPeriod : comp;
  cStBud  : comp;
  LeafName: string; // ����
  LeafSort: string; //
  HasLeaf : word; // 1 - ���� �����, 0 - ���
  cHozOper : comp; // ��뫪� �� ���

//!!Kol �᫨ ������ � ����� ����� - ���� � ������ � ࠧ�� ����
  cVal    : comp;
  // fpOborot
  ObEd    : comp;
  ObSumKol: double;
  ObSum   : double;
  ObSumTr : double;
  ObSumSt : double; // � ����� ����
  // fpValues
  VlEd    : comp;
  VlSumKol: double;
  VlSum   : double;
  VlSumTr : double;
//(����-䠪� ������)
  VlColEd : comp;
  VlCol1Sum  : double;
  VlCol2Sum  : double;
  VlCol3Sum  : double;
  VlCol4Sum  : double;
  VlCol5Sum  : double;
  VlCol6Sum  : double;
  VlCol7Sum  : double;
  VlCol8Sum  : double;
  VlCol9Sum  : double;
  VlCol10Sum : double;
  VlCol11Sum : double;
  VlCol12Sum : double;
  VlCol13Sum : double;
  VlCol14Sum : double;
  VlCol15Sum : double;
  VlCol16Sum : double;
  VlCol17Sum : double;
  VlCol18Sum : double;
  VlCol19Sum : double;
  VlCol20Sum : double;
  VlCol21Sum : double;
  VlCol22Sum : double;
  VlCol23Sum : double;
  VlCol24Sum : double;
  VlCol25Sum : double;
end;

// �६����� ⠡��� ��� ����஥� (���ᨢ� ᮪�饭�)
Table struct TblSpRepOne
(
  nRec                 : comp,
  cUserDesk            : comp                     "��뫪� �� ��ꥪ�",
  Npp                  : word                     "����� ����樨",
  wGroup               : word                     "��㯯�஢��/䨫���",
  wType                : word                     "��� ����樨",
  wKod                 : word                     "��� ����樨",
  wFilter              : word                     "��� 䨫���",
  wNode                : word                     "������ ��� ���",
  ResWord              : Array [1..2] of word     "����� Word �஢��",
  ResComp              : Array [1..2] of comp     "����� Comp �஢��",
  ResName              : Array [1..2] of string[80] "����� String �஢��",
  mark                 : TSurrPtr,
  MarkNum              : LongInt      // ������⢮ ��થ஢
)
with index
(
  TblSpRepOne01 =  NRec, //(Unique, Surrogate),
  TblSpRepOne02 =  cUserDesk + wGroup + Npp,
  TblSpRepOne03 =  cUserDesk + wGroup + wType + wKod,
  TblSpRepOne04 =  cUserDesk + wGroup + wKod
);

#endif//__aMakeFp_Inc__
