//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.85 - ��壠���᪨� ������
// ������ ����樨
//******************************************************************************

#doc
������ ����樨 (����� ������� �ଠ)
#end
.set name='hozoper'
.nameinlist '������� �ଠ'
.hide
.fields
NameDoc

HozOperNRec:comp
Probel
NameTXO

PlSch
  HozOborNRec:comp
  Npp:word
  SchO
  SubSchO
  DebName
  Proc
  Vh
  KauLevelO:word
  KauO
  PodrO
  SchK SubSchK
  KredName
  KauLevelK:word
  KauK
  PodrK
  DatPr
  SodPr
  Alg
  Val
  AlgVal
  AlgKol
  SkFormula
  FiltCO
  CyclObr
  Rez
  ConvSumVal
  ExClHozOb

PlSchF
  FpOborNRec:comp
  NppF:word
  StBudF
  ProcF
  CO
  DatPrF
  PeriodF
  KauLevelF:word
  KauF
  SodPrF
  AlgF
  ValF
  AlgValF
  AlgKolF
  SkFormulaF
  FiltCOF
  CyclObrF

HozFormNRec:comp
NppK:word
NameK
AlgK
PrimK
.endfields
.{
.if HozDoc
NameDoc    ���㬥��               ^
.end
HozOperNRec                       ^
Probel                            ^
NameTxo    ������������ ���       ^
.{ CheckEnter SeeBuh
.case
.when Buh_LastOborot
.when Buh_LastElse
.end
PlSch      ���� ��⮢            ^
.{
  HozOborNRec                     ^
  Npp        N�/�                 ^
  SchO       ��� ��.            ^
  SubSchO    �����              ^
  DebName    ��� �����           ^
  Proc       ����/��業�         ^
  Vh         �ਧ��� �室�����   ^
.{ CheckEnter KauO
  KauLevelO  �஢��� ���          ^
  KauO       ���                  ^
.}
  PodrO      ���ࠧ�������        ^
  SchK       ��� ���.            ^
  SubSchK    �����              ^
  KredName   ��� �।��          ^
.{ CheckEnter KauK
  KauLevel�  �஢��� ���          ^
  KauK       ���                  ^
.}
  PodrK      ���ࠧ�������        ^
  DatPr      ��� �஢����        ^
  SodPr      ᮤ�ঠ��� �஢����  ^
  Alg        ������ � ���       ^
  Val        ������ �           ^
  AlgVal     ������ � �����    ^
  AlgKol     ������ ������⢠  ^
  SkFormula  ���᫥��� ���    ^
  FiltCO     䨫��� ��� 横�.���. ^
  CyclObr    横�. ��ࠡ�⪠      ^
  Rez        १����            ^
  ConvSumVal �㬬� � �஢����     ^
  ExClHozOb  ����. �����䨪��� ^
.}
.}
.{CheckEnter SeeFP
.case
.when FP_LastOborot
.when FP_LastFPOborot
.when FP_LastElse
.end
PlSchF       ������� ���        ^
.{
  FpOborNRec                      ^
  NppF       N�/�                 ^
  StBudF     ����� ���       ^
  ProcF      ����/��業�         ^
  CO         ��                   ^
  DatPrF     ��� �஢����        ^
  PeriodF    ��ਮ�               ^
.{ CheckEnter KauFP
  KauLevelF  �஢��� ���          ^
  KauF       ���                  ^
.}
  SodPrF     ᮤ�ঠ��� �஢����  ^
  AlgF       ������ � ���       ^
  ValF       ������ �           ^
  AlgValF    ������ � �����    ^
  AlgKol     ������ ������⢮  ^
  SkFormulaF ���᫥��� ���    ^
  FiltCOF    䨫��� ��� 横�.���. ^
  CyclObrF   横�. ��ࠡ�⪠      ^
.}
.}
.if SeeFormula
.case
.when Form_LastOborot
.when Form_LastFPOborot
.when Form_LastElse
.end
.{
     HozFormNRec           ^
     NppK    N�/�          ^
     NameK   ����          ^
     AlgK    ��㫠       ^
     PrimK   �ਬ�砭��    ^
.}
.end
.CASE
.when LastOborot
.when LastFPOborot
.when LastFormula
.when LastElse
.END
.}
.endform

#doc
1. ������ ⨯���� 宧��⢥���� ����権
#end
.linkform 'hozoper_01' prototype is 'hozoper'
.nameinlist '1. ������ ⨯���� 宧��⢥���� ����権'
.fields
CommonFormHeader
NameDoc Probel NameTxo
.endfields

��^
��                                           ������ ⨯���� 宧��⢥���� ����権��
��.{
.if HozDoc

�����⢥��� ���㬥�� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.end
  ^@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ CheckEnter SeeBuh
.case
.when Buh_LastOborot
.when Buh_LastElse
.end
.{
.{ CheckEnter KauO
.}
.{ CheckEnter KauK
.}
.}
.}
.{ CheckEnter SeeFP
.case
.when FP_LastOborot
.when FP_LastFPOborot
.when FP_LastElse
.end
.{
.{ CheckEnter KauFP
.}
.}
.}
.if SeeFormula
.case
.when Form_LastOborot
.when Form_LastFPOborot
.when Form_LastElse
.end
.{
.}
.end
.CASE
.when LastOborot
.when LastFPOborot
.when LastFormula
.when LastElse
.END
.}
��
.endform

#doc
2. ������ 宧��⢥��� ����樨 � �஢���� � ���
#end
.linkform 'hozoper_02' prototype is 'hozoper'
.nameinlist '2. ������ 宧��⢥��� ����樨 � �஢���� � ���'
.fields
CommonFormHeader
NameDoc
NameTXO:'P:C'

PlSch
  Npp:'P:R'
    SchO+'.'+SubSchO
    Vh Proc
    KauLevelO
    KauO
    PodrO
    SchK+'.'+SubSchK
    KauLevelK
    KauK
    PodrK
  DatPr
  SodPr
  Alg
  '<'+Val+'>: '+AlgVal
  AlgKol
  SkFormula
  FiltCO
  CyclObr
  Rez
  ConvSumVal
  ExClHozOb
PlSchF
  NppF:'P:R'
  StBudF  ProcF
    CO
    DatPrF
    PeriodF
    KauLevelF
    KauF
  SodPrF
  AlgF
  '<'+ValF+'>: '+AlgValF
  AlgKolF
  SkFormulaF
  FiltCOF
  CyclObrF

NppK:'P:R' NameK AlgK PrimK

.endfields

��^
��                                            ������ ⨯���� 宧��⢥���� ����権 �
                                      �ନ�㥬�� �஢���� �� ��⠬ ��壠���᪮�� �����
��.{
.if HozDoc

  �����⢥��� ���㬥�� : ^
.end
��������������������������������������������������������������������������������������������������������������������������������Ŀ
�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.{ CheckEnter SeeBuh
.case
.when Buh_LastOborot
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.when Buh_LastElse
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.end
�������� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
��������������������������������������������������������������������������������������������������������������������������������Ĵ
� No � ����ᯮ������                                                                                              ���.� ��業�
.{
��������������������������������������������������������������������������������������������������������������������������������Ĵ
�@@@@� ����� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@� @ �&&&&&&&&�
.{ CheckEnter KauO
�    � ��� @@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
.}
�    � ���ࠧ�������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    ��������������������������������������������������������������������������������������������������������������Ĵ   �        �
�    � ������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
.{ CheckEnter KauK
�    � ��� @@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
.}
�    � ���ࠧ�������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    ��������������������������������������������������������������������������������������������������������������Ĵ   �        �
�    � ��� �஢����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ����ঠ��� �஢����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ������ � ���     : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ������ � ����� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ������ ������⢮: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ���᫥��� ���  : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ������ ��� 横���᪮� ��ࠡ�⪨: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ������᪠� ��ࠡ�⪠: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � �������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � �㬬� � �஢����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
�    � ������ �����䨪���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�   �        �
.}
.}
.{ CheckEnter SeeFP
.case
.when FP_LastOborot
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.when FP_LastFpOborot
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.when FP_LastElse
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.end
�������� ���: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
��������������������������������������������������������������������������������������������������������������������������������Ĵ
� No � ����ᯮ������                                                                                                  � ��業�
.{
��������������������������������������������������������������������������������������������������������������������������������Ĵ
�@@@@� �����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&�
�    � ��:     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ��� �஢����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ��ਮ�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
.{ CheckEnter KauFP
�    � ��� @@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
.}
�    ������������������������������������������������������������������������������������������������������������������Ĵ        �
�    � ����ঠ��� �஢����: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ������ � ���     : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ������ � ����� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ������ ������⢮: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ���᫥��� ���  : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ������ ��� 横���᪮� ��ࠡ�⪨: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
�    � ������᪠� ��ࠡ�⪠: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�        �
.}
.}
.if SeeFormula
.case
.when Form_LastOborot
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.when Form_LastFPOborot
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.when Form_LastElse
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.end
� ������� ��� ���� �㬬                                                                                                     �
��������������������������������������������������������������������������������������������������������������������������������Ĵ
� No �       ����        �    ���ᠭ�� �����⬠ ��� ���� �㬬 �஢����      �             �ਬ�砭�� � �������             �
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.{
�@@@@�@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�
.}
.end
.CASE
.when LastOborot
����������������������������������������������������������������������������������������������������������������������������������
.when LastFPOborot
����������������������������������������������������������������������������������������������������������������������������������
.when LastFormula
����������������������������������������������������������������������������������������������������������������������������������
.when LastElse
����������������������������������������������������������������������������������������������������������������������������������
.END
.}
��
.endform

#doc
3. ������ 宧��⢥��� ����樨 � �஢���� � ��� (�������� �ଠ)
#end
.linkform 'hozoper_03' prototype is 'hozoper'
.nameinlist '3. ������ 宧��⢥��� ����樨 � �஢���� � ��� (�������� �ଠ)'
.fields
CommonFormHeader
NameDoc
NameTXO

PlSch
  Npp
    Proc Vh
    SchO SubSchO
    KauLevelO KauO
    PodrO
    SchK SubSchK
    KauLevelK KauK
    PodrK
DatPr
SodPr
Alg
Val
AlgVal
AlgKol
SkFormula
FiltCO
CyclObr
Rez
ConvSumVal
ExClHozOb

PlSchF
  NppF
     ProcF
     StBudF
     CO
     DatPrF
     PeriodF
     KauLevelF
     KauF
SodPrF
AlgF
ValF
AlgValF
AlgKolF
SkFormulaF
FiltCOF
CyclObrF

NppK NameK AlgK PrimK

.endfields

��^
��                                              ������ ⨯���� 宧��⢥���� ����権 �
                                       �ନ�㥬�� �஢���� �� ��⠬ ��壠���᪮�� �����
��.{
.if HozDoc

�����⢥��� ���㬥�� : ^
.end

���: ^
.{ CheckEnter SeeBuh
.case
.when Buh_LastOborot
.when Buh_LastElse
.end
  ������� ���: ^
.{
    ����� �� ���浪�: @@@@  ��業�: &&&&&&&&  �室������: @
      ����� : ^.^
.{ CheckEnter KauO
      ��� @@: ^
.}
      ���ࠧ�������: ^
      ������: ^.^
.{ CheckEnter KauK
      ��� @@: ^
.}
      ���ࠧ�������: ^
      ��� �஢����: ^
      ����ঠ��� �஢����: ^
      ������ � ���: ^
      ������ � ����� <^>: ^
      ������ ������⢮: ^
      ���᫥��� ���: ^
      ������ ��� 横���᪮� ��ࠡ�⪨: ^
      ������᪠� ��ࠡ�⪠: ^
      �������: ^
      �㬬� � �஢����: ^
      ������ �����䨪���: ^
.}
.}
.{ CheckEnter SeeFP
.case
.when FP_LastOborot
.when FP_LastFpOborot
.when FP_LastElse
.end
  ������� ���: ^
.{
    ����� �� ���浪�: @@@@  ��業�: &&&&&&&&
      �����: ^
      ��:     ^
      ��� �஢����: ^
      ��ਮ�: ^
.{ CheckEnter KauFP
      ��� @@: ^
.}
      ����ঠ��� �஢����: ^
      ������ � ���: ^
      ������ � ����� <^>: ^
      ������ ������⢮: ^
      ���᫥��� ���: ^
      ������ ��� 横���᪮� ��ࠡ�⪨: ^
      ������᪠� ��ࠡ�⪠: ^
.}
.}
.if SeeFormula
.case
.when Form_LastOborot
.when Form_LastFPOborot
.when Form_LastElse
.end
  ������� ��� ���� �㬬 �஢����:
.{
    ^: ^ := ^   //^
.}
.end
.CASE
.when LastOborot
.when LastFPOborot
.when LastFormula
.when LastElse
.END
.}
��
.endform

 #doc
5. ������ ⨯���� 宧��⢥���� ����権 � �ନ�㥬�� �஢���� �� ��⠬ ��壠���᪮�� ��� (��⪨�)
#end
.linkform 'hozoper_05' prototype is 'hozoper'
.nameinlist '5. ������ ⨯���� 宧��⢥���� ����権 � �ନ�㥬�� �஢���� �� ��⠬ ��壠���᪮�� ��� (��⪨�)'
.fields
CommonFormHeader
NameDoc
NameTXO

SchO SubSchO
SchK SubSchK
SodPr
DebName
KredName

.endfields

��^
��                                              ������ ⨯���� 宧��⢥���� ����権 �
                                       �ନ�㥬�� �஢���� �� ��⠬ ��壠���᪮�� ��� (��⪨�)
��.{
.if HozDoc
��������������������������������������������������������������������������������������������������������������������������������Ŀ
� �����⢥��� ���㬥��                  � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            �
����������������������������������������������������������������������������������������������������������������������������������
.end
��������������������������������������������������������������������������������������������������������������������������������Ŀ
� ���                                     � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            �
.{ CheckEnter SeeBuh
.case
.when Buh_LastOborot
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.when Buh_LastElse
��������������������������������������������������������������������������������������������������������������������������������Ĵ
�                �����                    �                  ������                �            ����ঠ��� �஢����              �
��������������������������������������������������������������������������������������������������������������������������������Ĵ
.end
.{
.{ CheckEnter KauO
.}
.{ CheckEnter KauK
.}
� @@@@@@.@@@@@@@                          � @@@@@@.@@@@@@@                         � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       �
� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ � @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �                                             �
.}
.}
.{ CheckEnter SeeFP
.case
.when FP_LastOborot
.when FP_LastFpOborot
.when FP_LastElse
.end
.{
.{ CheckEnter KauFP
.}
.}
.}
.if SeeFormula
.case
.when Form_LastOborot
.when Form_LastFPOborot
.when Form_LastElse
.end
.{
.}
.end
.CASE
.when LastOborot
����������������������������������������������������������������������������������������������������������������������������������
.when LastFPOborot
.when LastFormula
����������������������������������������������������������������������������������������������������������������������������������
.when LastElse
����������������������������������������������������������������������������������������������������������������������������������
.END
.}
.endform