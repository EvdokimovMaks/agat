/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2002 ��௮��� ���������                    �
 � ���⥬�       : ���������                                                 �
 � �஥��        : ��壠���᪨� ������                                      �
 � �����        : 5.84                                                      �
 � �����祭��    : ���譨� ��楤��� � �㭪樨 �� G_Kau.dll                  �
 � �⢥��⢥��� : ��ଠ� �਩ ���म���                                    �
 ���������������������������������������������������������������������������ͼ
*/

//---------------------------------------------------------------------------------
// SkVipIfc.pas
// ServKau.pas �� ���������
#ifNdef Gal8_1
!!! �� �㡫������� �� �㭪樨 �� �� ����� �����⥫��⢠� � 8.1 � ��� [Gera]
function  InitServKau                              : Boolean; external 'G_Kau.dll';
procedure DoneServKau                                       ; external 'G_Kau.dll';
#end
function  CheckKodOneKau        (Word,Comp)        : boolean; external 'G_Kau.dll';
function  GetAnyKau             (Word,Word,Comp)   : Boolean; external 'G_Kau.dll';
function  GivenAnName           (Word)             : String;  external 'G_Kau.dll';
function  GetKauEd              (Word,Comp)        : Comp;    external 'G_Kau.dll';
function  FindSoprDoc           (Word,Comp)        : Boolean; external 'G_Kau.dll';
function  GetOrgDocX            (Comp)             : Comp;    external 'G_Kau.dll';
function  GetSodrDocX           (Comp)             : String;  external 'G_Kau.dll';
function  GetSodrDocX_Ex        (Comp, Boolean)    : String;  external 'G_Kau.dll';
function  GetSodrOborot         (Comp)             : String;  external 'G_Kau.dll';
function  GetDateHozDoc         (Word,Comp)        : Date;    external 'G_Kau.dll';
function  GetNumHozDoc          (word, comp)       : string;  external 'G_Kau.dll';
function  GetAnalitikName       (Word)             : String;  external 'G_Kau.dll';
function  GetBaseAnalitik       (Word)             : Word;    external 'G_Kau.dll';
function  GetKauSysNum          (Word)             : Word;    external 'G_Kau.dll';
function  GetKontrSaldo         (Date,Comp)        : Double;  external 'G_Kau.dll';
function  GetKauCoTable         (Word)             : Word;    external 'G_Kau.dll';
function  GetKauIsHier          (Word)             : Boolean; external 'G_Kau.dll';
function  GetExistKauCode       (Word)             : Boolean; external 'G_Kau.dll';
// ServKau.pas ��� ����㯠 � ���譨� ��� �� ���䨣���� � CompileExpression-�
function GetKauReffNrec         (string,comp,word) : comp;    external 'G_Kau.dll';
function GetKauReffName         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffStrKod       (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffAbbr         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffCode         (string,comp,word) : string;  external 'G_Kau.dll';
function GetKauReffArrayKatalog (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayName    (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayStrKod  (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayAbbr    (string,comp)      : string;  external 'G_Kau.dll';
function GetKauReffArrayCode    (string,comp)      : string;  external 'G_Kau.dll';

function ShowKauPrn             (word, comp, date) : string;  external 'G_Kau.dll';
function ShowKauArrayPrn        (word, word, word, word, word, word,
                                 comp, comp, comp, comp, comp, comp,
                                 date)             : string;  external 'G_Kau.dll';
//---------------------------------------------------------------------------------