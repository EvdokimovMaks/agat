/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 5.84                                                      �
 � ��Л�腑�┘    : 踸甌イ┃キ��� 筮爼� �� ����ｃ �� 矗��甎�珥. ����縺���.   �
 �                 ����覃 �♀ガ ����諷.                                      �
 � �癶モ痰▲��覃 : ��ユ ���矗┤ �爬��瑕ア�� (wildman)                        �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

.form TranspNalog
.hide
.fields

  ���_�砒モ�     : word 
  �モ���腑��      // �モ�� 竍モ� �甅�↓諷 痼イ痰�  
  踳く爬閧┘NRec: comp // NREc 甌＝癶キ���� �爛く爬閧��
  踳く爬閧┘���  // ��� 甌＝癶キ���� �爛く爬閧��
  踳く爬閧┘     // ��Б��┘ 甌＝癶キ���� �爛く爬閧��
  ���鈞�          // ��Б��┘ ���鈞� = ���
  MRP            : double // [├ ��痰牀���]
  Pr             : double // 痺��� �� イ┃�聶 �爛�謌キ�� �♀ガ� [├ ��痰牀���]

  �┼赳��┓      : byte // 皋� 筥�赳��: 1- �������覃 ����皀�, 2 - ��む�Гカキ┘
  �┼赳���Б��┘        // ��━キ����┘ Л�腑��� 筥�赳��, ���爬�ム ��Б��┘ ��む�Гカキ��
  �┼赳�NREC     : comp // NRec 筥�赳��, メ�� メ碎 ����〓�

  �珮����牀▲��  : byte // 0 - ��爛��
  �珮�����━キ����┘
  �珮������
 
  ｡螢��Nrec              : comp
  ｡螢����▲���爿覃���ム  
  ｡螢����━キ����┘
  ｡螢���┓
  ｡螢�������覩竅��       : date
  ｡螢��������痰祚�キ��   : date
  ｡螢�������襦謔��       : date
  ｡螢��踸Л����痰���→����腑� : byte
  ｡螢����爲�
  ｡螢���ム〓�����讚���皰━�痰� : double
  ｡螢���矗���蹍├〓え皀��
  ｡螢���矗���蹍├〓え皀�����   // ���腑�┘ "����" ↓ヨ�ィ� ���瘁�筥��皰��, ��爛ぅ�闔薀�� �爬��かウ��痰� � ���
  ｡螢������腑痰〓�メ閹ア       : byte
  ｡螢���え�����Кムキ��
  ｡螢���ュ������皀��           : double
  ｡螢���ュ������皀���┃        : double 
  ｡螢���ュ������皀������       : double
  ｡螢�����→�������            : double
.endfields

  ���_�砒モ�      ^
  �モ���腑��      ^
  踳く爬閧┘NRec ^
  踳く爬閧┘���  ^
  踳く爬閧┘     ^
  ���鈞�          ^
  MRP             &&&&&&&&&&.&&
  Pr              &&&&&&&&&&.&&

.{ CheckEnter Filters
  �┼赳��┓            ^
  �┼赳���Б��┘       ^  
  �┼赳�NREC           ^ 
.}

.{ CheckEnter Groups  // 罔�� �� �珮���/��ぃ珮���
  -- ������ �珮��� --------------------------------------------- 
  �珮����牀▲��        ^
  �珮�����━キ����┘   ^
  �珮������            ^
  
.{ CheckEnter Objects // 罔�� �� 矗��甎�珥�覓 痼イ痰���

  -- ｡螢�� -----------------------------------------
  ｡螢��NRec                       ^
  ｡螢����▲���爿覃���ム           ^
  ｡螢����━キ����┘               ^
  ｡螢���┓                        ^
  ｡螢�������覩竅��                ^
  ｡螢��������痰祚�キ��            ^
  ｡螢�������襦謔��                ^
  ｡螢��踸Л����痰���→����腑�    ^
  ｡螢����爲�                      ^
  ｡螢���ム〓�����讚���皰━�痰�    &&&&&&&&&&&&&&.&&
  ｡螢���矗���蹍├〓え皀��        ^
  ｡螢���矗���蹍├〓え皀�����     ^
  ｡螢������腑痰〓�メ閹ア          ^
  ｡螢���え�����Кムキ��           ^
  ｡螢���ュ������皀��              &&&&&&&&&&&&&&.&&
  ｡螢���ュ������皀���┃           &&&&&&&&&&&&&&.&&
  ｡螢���ュ������皀������          &&&&&&&&&&&&&&.&&
  ｡螢�����→�������               &&&&&&&&&&&&&&.&&

.} // Objects
  -- ���ユ �珮��� ----------------------------------------------
.} // Groups
.endform

.linkform TranspNalog01 prototype is TranspNalog
.NameInList '����覃 �♀ガ ����諷'
#include TranspNalog_var.frn
.fields
  ���_�砒モ�
  踳く爬閧┘���
  踳く爬閧┘
  ���鈞�
  MRP
  Pr

  sFilterName
  �┼赳���Б��┘

  �珮����牀▲��
  �珮�����━キ����┘
  �珮������

  ｡螢����▲���爿覃���ム
  ｡螢��踸Л����痰���→����腑�
  ｡螢����━キ����┘
  ｡螢����爲�
  DoubleToStr(｡螢���ム〓�����讚���皰━�痰�,'66666666667')
  Year(｡螢�������覩竅��)
  If(trim(｡螢���矗���蹍├〓え皀�����)='1','���',｡螢���矗���蹍├〓え皀��)
  ｡螢������腑痰〓�メ閹ア
  ｡螢���え�����Кムキ��
  ｡螢���ュ������皀��
  If (｡螢�����→�������>1,DoubleToStr(｡螢�����→�������,'666667'),
      DoubleToStr(｡螢�����→�������,'7.88'))
  DoubleToStr(S13,'66666666667')
  DoubleToStr(S14,'66666666667')
  DoubleToStr(S15,'66666666667')
  DoubleToStr(Snal,'66666666667')
  Kj   
  DoubleToStr(Ssp,'66666666667')
  DoubleToStr(Sf,'66666666667')
  1 // ����腑痰〓 ��
  DoubleToStr(Sf,'66666666667') // � ������� 21
  if(Year(｡螢�������襦謔��)=���_�砒モ�,If(word(｡螢�������襦謔��)>0,DateToStr(｡螢�������襦謔��,'DD.MM.YYYY'),''),'')
  if(Year(｡螢��������痰祚�キ��)=���_�砒モ�,DateToStr(｡螢��������痰祚�キ��,'DD.MM.YYYY'),'')
  DoubleToStr(Sf,'66666666667') // � ������� 27


  Total16
  Total18
  Total19
  Total20
  Total21
  Total27

.endfields
.begin
  // �皰����� 痰牀��
  Total16 := 0;
  Total18 := 0;
  Total19 := 0;
  Total20 := 0;
  Total21 := 0;
  Total27 := 0;
end.

  ����� �� ������������ ��������
  �〓き�� ▲ぎ��痰� �� ^ ���


  ���                               : ^
  ��━キ����┘ ���������皀�跚┴�    : ^
  ���鈞�                            : ^
  MRP                               : ^
  �祠�� �� イ┃�聶 �爛�謌キ�� �♀ガ�: ^

  --- �┼赳琺 -------------------------------------
.{ CheckEnter Filters
.begin
  case �┼赳��┓ of
  1: sFilterName := '��━キ����┘ ������〓�� ����皀��';
  2: sFilterName := '��━キ����┘ ��む�Гカキ��';
  3: sFilterName := '��━キ����┘ �珮���';
  4: sFilterName := '���� ��痰祚�キ�� 矗��甎�珥���� 痼イ痰��';
  end; // case 
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ - ^
.}

.{ CheckEnter Groups  // 罔�� �� �珮���/��ぃ珮���

  --- �珮��� --------------------------------------
  �牀▲��        : ^
  ��━キ����┘   : ^
  ���            : ^
.{ CheckEnter Objects // 罔�� �� 矗��甎�珥�覓 痼イ痰���
#include TranspNalog_calc.frn

  --- ｡螢�� --------------------------------------
  ��▲���爿覃 ���ム                           : ^
  踸Л�� ��痰���→� �� 竍モ                  : ^
  ��━キ����┘                                : ^
  ��爲�                                       : ^
  �ム〓�����讚�� c皰━�痰�                    : ^
  ��� �覩竅��                                 : ^
  �矗���-�牀├〓え皀��                        : ^
  ����腑痰〓 �メ閹ア                          : ^
  �え���� ├�ムキ��                           : ^
  �ュ������皀��                               : ^
  ���→� ������                               : ^
  ��М��� 痺��� ������                        : ^
  踳�謌キ┘ �♀ガ� あ┌�皀�� �ィ�.�≒�.      : ^
  �祠�� �� �爛�謌キ┘ �♀ガ� あ┌.�ィ�.�≒�.  : ^
  �祠�� ������                                : ^
  �����〓膈覃 ��辟筥罔キ�                     : &&.&&
  �祠�� ������ � 竍モ�� �����〓膈��� ��辟-��  : ^
  �祠�� ������ �� ���皋腑瓷┤ �ム┏� ←�ぅ��� : ^
  ����腑痰〓 矗��甎�珥�諷 痼イ痰�             : ^
  �祠�� ������ � 竍モ�� ����腑痰�� ��         : ^
  ���� �襦謔��                                : ^
  ���� ��痰祚�キ��                            : ^
  �祠�� ������ � 祠キ跏キ��                   : ^
.} // CheckEnter Objects                      
.} // CheckEnter Groups


  --- ����� ---------------------------------------
  �祠�� ������                                : ^
  �祠�� ������ � 竍モ�� �����〓膈��� ��辟-��  : ^
  �祠�� ������ �� ���皋腑瓷┤ �ム┏� ←�ぅ��� : ^
  ����腑痰〓 矗��甎�珥�諷 痼イ痰�             : ^
  �祠�� ������ � 竍モ�� ����腑痰�� ��         : ^
  �祠�� ������ � 祠キ跏キ��                   : ^


.endform
