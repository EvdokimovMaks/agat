/*

 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,2004 ��௮��� ���������                    �
 � ���⥬�       : ���������                                                 �
 � �஥��        : ���                                                      �
 � �����        : 5.84                                                      �
 � �����祭��    : ���譨� ��楤��� � �㭪樨 �� G_LastNumD.dll             �
 � �⢥��⢥��� : ��ଠ� �਩ ���म���                                    �
 ���������������������������������������������������������������������������ͼ
*/

//------------------------------------------------------------------------------
// LastNum.pas
function  GetLastNumD__       (Word,String,Byte)      : String;  external 'G_LastNumD.dll';
function  GetLastNumD_        (Word,String)           : String;  external 'G_LastNumD.dll';
function  GetLastNumD         (Word)                  : String;  external 'G_LastNumD.dll';
procedure DelLastNumD_        (Word,String,String)            ;  external 'G_LastNumD.dll';
procedure DelLastNumD         (Word,String)                   ;  external 'G_LastNumD.dll';
function  GetLNDname          (Word)                  : String;  external 'G_LastNumD.dll';



