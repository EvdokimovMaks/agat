/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2002 ��௮��� ���������                    �
 � ���⥬�       : ���������                                                 �
 � �஥��        : �����ᮢ� ������                                         �
 � �����        : 5.85.02                                                   �
 � �����祭��    : ���譨� ��楤��� � �㭪樨 �� G_FA.dll                   �
 � �⢥��⢥��� : ��ଠ� �਩ ���म���                                    �
 ���������������������������������������������������������������������������ͼ
*/

//------------------------------------------------------------------------------
// FaVipIfc.pas
// ����� ���⮢
function  FaInitService                                      : Boolean; external 'G_FA.dll';
function  FaPickPeriod         (Comp,Word,String,String,String)
                                                             : Comp;    external 'G_FA.dll';
function  FaGetLastError                                     : String;  external 'G_FA.dll';
function  FaCheckSession       (Comp)                        : Boolean; external 'G_FA.dll';
function  FaCalculateReport    (Comp,Comp,Comp,Comp,Comp,Comp,Comp,Word)
                                                             : Boolean; external 'G_FA.dll';
function  FaDoneService                                      : Boolean; external 'G_FA.dll';
function  FaConversPValues     (Comp)                        : Boolean; external 'G_FA.dll';
//------------------------------------------------------------------------------