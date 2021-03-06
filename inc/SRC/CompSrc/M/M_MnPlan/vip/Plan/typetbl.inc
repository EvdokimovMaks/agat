/*
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
�                (c) 1994-2000  ��牆���罔� ���������          �
� 蹍オ�:        �����皋��                                    �
� ��痰ガ�:       蹍├〓め癶キ�キ��� �����牀���┘             �
� �ム瓱�:        6.00                                         �
� ��Л�腑�┘:    ｯ������ 痰珮�矣� ��゛�� �牀├�.             �
�                �����牀�����                                 �
� �癶モ痰▲��覃: �キ讓ア�� ���瑕 ��Ж��牀※� (IGORS)          �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
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
     wKodKau    : word; // ��ガキ��爿�� か� �珮���
     cFldAn     : comp; // Л�腑�┘
     TypeTbl    : word; // �� �甎��讌���碎
     Npp        : word; // ���ム
end;

type TFindAn = record
     wKodKau    : word;
     cMain      : comp;
     wRole      : word;
     Npp        : word; // ���ム
     toDoc      : word;
end;


type TStrAndNum = record
     num        : word;
     str        : string[40]; // ���ム
     str1       : string[80]; // ���ム
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
 wRoleMnPlan : Word;  //'牀�� ├ cnstrole.vpp
 KodGrKAU    : Word;
 KodGrKAUE   : Word;
 cRole       : Comp;  //'牀�� ├ Tune
 NppGrKau    : Word;  //'���ム � �珮��� �����皋�
End;

Type SegInfo = Array [1..10] of SegInfoOne;

Type VidInfo = Record
 wSysNum : Word;          //'瓱痰ガ�覃 ���ム ����爬皙�
 wNumAll : Word;          //'腮甄� 瓮��キ皰� �爛め��←キ��
 sInterVidName : String;  //'��━キ����┘ 爛��├竡薀�� VIP-┃皀珞ォ��
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

 // 痰珮�矣�� か� �ムイ�腮 info ├ �-┬
 // CheckSlojandAnalitikForSetup
type TParCheckAnSetup = record
   // ��� �荐！� �ムメョキ��:
  // 1  - �珮��� �����皋� � 珮膈�� �����皋��� �� ぎ�祠キ矣
  // 2  - �珮��� �����皋� � 珮膈�� �����皋��� �� 甎ユ�筥��罔�
  // 4  - 珮膈�� �����皋�� �� ぎ�祠キ矣 � 珮膈�� �����皋��� �� 甎ユ�筥��罔�
  // 8  - 珮膈�� �����皋�� �� ぎ�祠キ矣 ↓竄爬 瓮￥
  // 16 - 珮膈�� �����皋�� �� 甎ユ�筥��罔� ↓竄爬 瓮￥
     ErrorCode   : word;
  // ��оヨキ�� �� ����爛皚覓 �����皋���
  // 0 - �´祀�碎
  // 1 - �痰�※碎
     // 珮膈�� �����皋�� �� ぎ�祠キ矣
     EnableAn_1  : word;
     EnableAn_2  : word;
     EnableAn_3  : word;
     EnableAn_4  : word;
     EnableAn_5  : word;
     // 珮膈�� �����皋�� �� 甎ユ�筥��罔�
     EnableSpAn_1 : word;
     EnableSpAn_2 : word;
     EnableSpAn_3 : word;
end;

Type TPlanHorizon = Record
 wTypePer        : Word;    //'���痰���� 皋�� �ム┏�� ├ TPPConst.Inc
 wKolInt         : Word;    //'����腑痰〓 ┃皀燿����
 wAllInt         : Word;    //'≡� ┃皀燿���
 wLinkDate       : Word;    //'皋� ��硅 �爬�錻�� 0-�����鉗�� 1-筥�瓱牀������
 wFloatDateVar   : Word;    //'��爬��� �����鉗ォ ��硅
 wSmKol          : Longint; //'甃ラキ┘-����腑痰〓
 wSmEd           : Word;    //'甃ラキ┘-イ┃��� ├�ムキ��
 dFixDate        : Date;    //'筥�瓱牀������ ���� �爬�錻��

 //----------------'������� 〓 ∇ガキ�

 wLinkDateTF     : Word;    //'皋� ��硅 �爬�錻�� 0-�矚竄痰≪モ 1-�����鉗�� 2-筥�瓱牀������
 wFloatDateVarTF : Word;    //'��爬��� �����鉗ォ ��硅
 wSmKolTF        : Longint; //'甃ラキ┘-����腑痰〓
 wSmEdTF         : Word;    //'甃ラキ┘-イ┃��� ├�ムキ��
 dFixDateTF      : Date;    //'筥�瓱牀������ ���� �爬�錻��
End;

#endif  // __TYPETBL_VPP
