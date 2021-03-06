//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 8.10 - �����⨪�
// ������� ��� �࠭���� ���祭�� 䨫��஢ ᮯ஢���⥫��� ���㬥�⮢
//------------------------------------------------------------------------------

#ifndef _SoprType_vpp_
#define _SoprType_vpp_

#doc
������� ��� ��।�� ��ࠬ��஢ 䨫���樨
#end
type
  TFilterInDoc = record
    Filter   : longint;
    cDog     : comp;
    cAppDog  : comp;
    cCalPlan : comp;
    cDO      : comp;
    cNazna   : comp;
    cOrgBase : comp;
    Descr    : string[20];
    Desgr    : string[4];
    wSort    : word;
    wRestore : word;
    FilterD  : word;
    bDate    : date;
    eDate    : date;
    WD       : word;
    NoDOpr   : word;
    w1       : word;
    cGruzTo  : comp;
    cPayment : comp;
    Status   : word;
    cOtvPodr : comp;
    cUks     : comp;
    cGrSopr  : comp;
    cNote    : comp;
    cPodrFrom: comp;
    cMolFrom : comp;
    cPodrTo  : comp;
    cMolTo   : comp;
    DopFilter: longint;
    sExClass : array [1..6] of String;
    wExClass : array [1..6] of word;
    cExClass : array [1..6] of comp;
  end;
#endif
