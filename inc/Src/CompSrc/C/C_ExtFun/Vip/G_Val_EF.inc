/*

 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2002 ��௮��� ���������                    �
 � ���⥬�       : ���������                                                 �
 � �஥��        : ���                                                      �
 � �����        : 5.85.02                                                   �
 � �����祭��    : ���譨� ��楤��� � �㭪樨 �� G_Val.dll                  �
 � �⢥��⢥��� : ��ଠ� �਩ ���म���                                    �
 ���������������������������������������������������������������������������ͼ
*/

//------------------------------------------------------------------------------
// ValFunc.pas
function  InitGetCur                                  : Boolean; external 'G_Val.dll';
function  InitGetCurNoVisual                          : Boolean; external 'G_Val.dll';
function  PGetCurrency        (Comp,Double,Date)      : Double;  external 'G_Val.dll';
function  PGetBaseCurrency    (Comp,Double,Date)      : Double;  external 'G_Val.dll';
function  PGetAnyCurrency     (Comp,Double,Date,Comp) : Double;  external 'G_Val.dll';
function  PGetNatCurrency     (Comp,Double,Date)      : Double;  external 'G_Val.dll';
function  PGetNameCurrency    (Comp)                  : String;  external 'G_Val.dll';
function  PGetNameAhCurrency  (Comp)                  : String;  external 'G_Val.dll';
function  PGetSimvCurrency    (Comp)                  : String;  external 'G_Val.dll';
function  PGetSimvBaseCurrency                        : String;  external 'G_Val.dll';
function  PGetSimvTarCurrency                         : String;  external 'G_Val.dll';
function  PGetMainVal         (Comp)                  : Comp;    external 'G_Val.dll';
procedure DoneGetCur;                                            external 'G_Val.dll';
//------------------------------------------------------------------------------