/*
�������������������������������������������������������������ͻ
�                (c) 1994-2000  ��௮��� ���������          �
� �஥��:        �����⨪�                                    �
� ���⥬�:       �ந�����⢥������� �����஢����             �
� �����:        6.00                                         �
� �����祭��:    ���ᠭ�� ������� ⠡��� �ந��.             �
�                �����஢����                                 �
� �⢥��⢥���: ���쪥��� ����� ������஢�� (IGORS)          �
�������������������������������������������������������������ͼ
*/

#ifndef __TYPETBL_VPP
#define __TYPETBL_VPP

#include TMnPlan.vih

//type TWayAccou  = record as table WayAccou;
//type TSpWayAc   = record as table SpWayAc;
//type TObjAcct   = record as table ObjAcct;
//type TSpObjAcc  = record as table SpObjAcc;
//type TObjParam   = record as table ObjParam;
//type TSpObjPar  = record as table SpObjPar;
//type TNeedmats  = record as table Needmats;
//type TSpNeedmt  = record as table SpNeedmt;
//type TMnPlan    = record as table MnPlan;
//type TSpMnPlan  = record as table SpMnPlan;
//type TOperPlan  = record as table OperPlan;
//type TSpOperPlan= record as table SpOperPlan;
//type TOPInfo    = record as table OPInfo;
//type TMnAnal    = record as table MnAnal;
#ifNdef ATL51
type THashTbl   = record as table HashTbl;
#end
//type TSpMnPl    = record as table SpMnPl;
//type TValSpMnP  = record as table ValSpMnP;
//type TPropSpMn  = record as table PropSpMn;
//type TNormNZP   = record as table NormNZP;
//type TResInfo   = record as table ResInfo;
//type TIndent    = record as table Indent;
//type TClaim     = record as table Claim;
//type TSpFormPl  = record as table SpFormPl;
//type TFormPl    = record as table FormPl;
//type TTmOutm    = record as table TmOutm;
//type TTmInpm    = record as table TmInpm;

//type TSFilters  = record as table SFilters;


//type TWayAccou_P  = record as table WayAccou  with x$position;
//type TSpWayAc_P   = record as table SpWayAc  with x$position;
//type TObjAcct_P   = record as table ObjAcct  with x$position;
//type TSpObjAcc_P  = record as table SpObjAcc with x$position;
//type TNeedmats_P  = record as table Needmats with x$position;
//type TSpNeedmt_P  = record as table SpNeedmt with x$position;
//type TMnPlan_P    = record as table MnPlan   with x$position;
//type TSpMnPlan_P  = record as table SpMnPlan with x$position;
//type TMnAnal_P    = record as table MnAnal   with x$position;
#ifNdef ATL51
type THashTbl_P   = record as table HashTbl  with x$position;
#end
//type TSpMnPl_P    = record as table SpMnPl   with x$position;
//type TValSpMnP_P  = record as table ValSpMnP with x$position;
//type TNormNZP_P   = record as table NormNZP  with x$position;

type TMnAnalParSt = record
     wKodKau    : word; // �������ୠ� ��� ��㯯�
     cFldAn     : comp; // ���祭��
     TypeTbl    : word; // �� �ᯮ�짮����
     Npp        : word; // �����
end;

type TFindAn = record
     wKodKau    : word;
     cMain      : comp;
     wRole      : word;
     Npp        : word; // �����
     toDoc      : word;
end;


type TStrAndNum = record
     num        : word;
     str        : string[40]; // �����
     str1       : string[80]; // �����
     cRole      : comp;
     RoleTune   : comp;
     wKodGrKau  : word;
end;


type TMnAnalPar = record
     TypeHier: comp;
     FldAn1  : comp;
     FldAn2  : comp;
     FldAn3  : comp;
     FldAn4  : comp;
     FldAn5  : comp;
     FldAn6  : comp;
     FldAn7  : comp;
     FldAn8  : comp;
     FldAn9  : comp;
     FldAn10 : comp;
     Flag        : LongInt;
     TypeFldAn1  : LongInt;
     TypeFldAn2  : LongInt;
     TypeFldAn3  : LongInt;
     TypeFldAn4  : LongInt;
     TypeFldAn5  : LongInt;
     TypeFldAn6  : LongInt;
     TypeFldAn7  : LongInt;
     TypeFldAn8  : LongInt;
     TypeFldAn9  : LongInt;
     TypeFldAn10 : LongInt;

end;

Type SegInfoOne = Record
 wRoleMnPlan : Word;  //'஫� �� cnstrole.vpp
 KodGrKAU    : Word;
 KodGrKAUE   : Word;
 cRole       : Comp;  //'஫� �� Tune
 NppGrKau    : Word;  //'����� � ��㯯� �����⨪
End;

Type SegInfo = Array [1..10] of SegInfoOne;

Type VidInfo = Record
 wSysNum : Word;          //'��⥬�� ����� �����⬠
 wNumAll : Word;          //'�᫮ ᥣ���⮢ �।�⠢�����
 sInterVidName : String;  //'������������ ॠ�����饣� VIP-����䥩�
End;

type TParInsTblMnAnal = record
     nRecAnal1  : comp;
     nRecAnal2  : comp;
     nRecAnal3  : comp;
     nRecAnal4  : comp;
     nRecRole1  : comp;
     nRecRole2  : comp;
     nRecRole3  : comp;
     nRecRole4  : comp;
     KodGrKau1  : word;
     KodGrKau2  : word;
     KodGrKau3  : word;
     KodGrKau4  : word;
     wSysNum    : word;
end;

 // ������� ��� ��।�� info �� �-��
 // CheckSlojandAnalitikForSetup
type TParCheckAnSetup = record
   // ��� �訡�� ����祭��:
  // 1  - ��㯯� �����⨪ � ��筮� �����⨪�� �� ���㬥���
  // 2  - ��㯯� �����⨪ � ��筮� �����⨪�� �� ᯥ�䨪�樨
  // 4  - ��筠� �����⨪� �� ���㬥��� � ��筮� �����⨪�� �� ᯥ�䨪�樨
  // 8  - ��筠� �����⨪� �� ���㬥��� ����� ᥡ�
  // 16 - ��筠� �����⨪� �� ᯥ�䨪�樨 ����� ᥡ�
     ErrorCode   : word;
  // ࠧ�襭�� �� ������� �����⨪��
  // 0 - ���㫨��
  // 1 - ��⠢���
     // ��筠� �����⨪� �� ���㬥���
     EnableAn_1  : word;
     EnableAn_2  : word;
     EnableAn_3  : word;
     EnableAn_4  : word;
     EnableAn_5  : word;
     // ��筠� �����⨪� �� ᯥ�䨪�樨
     EnableSpAn_1 : word;
     EnableSpAn_2 : word;
     EnableSpAn_3 : word;
end;

Type TPlanHorizon = Record
 wTypePer        : Word;    //'����⠭� ⨯� ��ਮ�� �� TPPConst.Inc
 wKolInt         : Word;    //'������⢮ ���ࢠ���
 wAllInt         : Word;    //'�� ���ࢠ��
 wLinkDate       : Word;    //'⨯ ���� �ਢ離� 0-�������� 1-䨪�஢�����
 wFloatDateVar   : Word;    //'��ਠ�� ������饩 ����
 wSmKol          : Longint; //'ᬥ饭��-������⢮
 wSmEd           : Word;    //'ᬥ饭��-������ ����७��
 dFixDate        : Date;    //'䨪�஢����� ��� �ਢ離�

 //----------------'�࠭�� �� �६���

 wLinkDateTF     : Word;    //'⨯ ���� �ਢ離� 0-��������� 1-�������� 2-䨪�஢�����
 wFloatDateVarTF : Word;    //'��ਠ�� ������饩 ����
 wSmKolTF        : Longint; //'ᬥ饭��-������⢮
 wSmEdTF         : Word;    //'ᬥ饭��-������ ����७��
 dFixDateTF      : Date;    //'䨪�஢����� ��� �ਢ離�
End;

#endif  // __TYPETBL_VPP