/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2002 ��牆���罔� ���������                    �
 � ��痰ガ�       : ���������                                                 �
 � 蹍オ�        : �┃��甌�覃 ���矣�                                         �
 � �ム瓱�        : 5.85.02                                                   �
 � ��Л�腑�┘    : ��ヨ�┘ �牀罐ゃ琺 � 粃��罔� ├ G_FA.dll                   �
 � �癶モ痰▲��覃 : �ム��� �爬� �ゃ�爐�※�                                    �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

//------------------------------------------------------------------------------
// FaVipIfc.pas
// ��瘍モ �砒モ��
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
