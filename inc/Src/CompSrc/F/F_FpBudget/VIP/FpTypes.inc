//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// �� ⨯� ������ FP
//------------------------------------------------------------------------------

#ifndef _FPTYPES_VPP
#define _FPTYPES_VPP

#include FpValues.Inc
#include FpOborot.Inc
#include FpMeanTF.Inc

type TFiltValues = record
      cCO        : comp;
      cPeriod    : comp;
      cStBud     : comp;
      TiDk       : word;
      DatObLEq   : date;
      DatObGEq   : date;
      NoDoc      : tNoDok;
      Descr      : String[20];
      DesGr      : String[20];
      cFilter    : comp;
end;
type TExportBudStruct = record
      fName       : string;
      fType       : integer;
      fWidth      : integer;
      fDecWidth   : integer;
end;
type TArrayExportBudStruct = array[0..0] of TExportBudStruct;
type TFpValPrm = record
  fValMode  : word;
  fcVal     : comp;
  fForecast : word;
  fVariant  : comp;
end;

type TFpRegPrm = record
  KodReg    : word;
  RegMode   : word;
  BuhMode   : word;
end;

type TFpBudEditCellInfo = record
  cBudCO      : comp;     // �� ��� (���� �� �ᯮ������ ???)
  cBudPeriod  : comp;     // ��ਮ� ���
  cValues     : comp;     // ��뫪� �� FpValues.NRec
  wKodReg     : word;     // ��� ॣ����
  cBudVar     : comp;     // ����� ���
  cCO         : comp;     // �� ��� (⮦�, ��祬 �� �ᯮ������ ������ cCO ???)
  cStBud      : comp;     // ����� ���
  cPeriod     : comp;     // ��ਮ� ������⥫�
  cHashAn     : comp;     // ��뫪� �� FpValues.cHashAn
  cBudVariant : comp;     // ��ਠ�� ���

  cAlgVariant : comp;     // ��ਠ�� ���� ���

  wValMode    : word;     // ०�� ࠡ��� � ����⮩
  cVal        : comp;     // ��뫪� �� ������
  wForecast   : word;     // ०�� �ᯮ�짮����� �ண������� ����
  cValVariant : comp;     // ��ਠ�� �ண������� ����

  CAn         : TPtr;     // ID ���⥩��� �����⨪ ������⥫� (�祩��???)
  CAnCube     : TPtr;     // ID ���⥩��� �����⨪ �㡠

  Summa       : double;   // �㬬� ������⥫�
end;

#endif//_FPTYPES_VPP
