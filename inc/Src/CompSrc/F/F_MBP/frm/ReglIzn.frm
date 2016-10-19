//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 9.1 - ����᭠�⪠
// ��⮪�� ���� ����� �� ᯥ�᭠���
//------------------------------------------------------------------------------

#doc
��⮪�� ���� ����� �� ᯥ�᭠���
#end
.set name = 'ReglIzn'
.hide
.fields
  onDate : date
  MBPNRec : comp
  MBPName
  MBPNum
  WriteNRec : comp
  WriteName
  WriteFormula
  InNRec : comp
  InDate : date
  InState : word
  InPrice : double
  InKol : double
  InSum : double
  InPerc : double
  PercNach : double
  NachComment
  OsAlgoritm
  OsAlgRez
  NumPP
  Key
  SpAlg
  SpAlgRez
.endfields
  ^
.{ cirKatMBP CheckEnter
  ^ ^ ^
  ^ ^ ^
.{ cirMBPIn CheckEnter
  ^ ^ ^
  ^ ^ ^ ^
  ^ ^
  ^ ^
.{ cirSpAlg CheckEnter
  ^ ^ ^ ^
.}
.}
.}
.endform

.linkform 'ReglIzn_01' prototype is 'ReglIzn'
.NameInList '��⮪�� ���� �����'
.function GetTipStr(wTip : word) : string;
begin
  GetTipStr := '��室';

  case (wTip) of
  //------------
    mbpMoveOp:
      GetTipStr := '��室 �� ����७���� ��६�饭��';
  //------------
    mbpFrMCOp,
    mbpNaklOp:
      GetTipStr := '��室 �� ���������';
  //------------
    mbpInExOp:
      GetTipStr := '��室 �� ����� � �ᯫ����';
  //------------
    mbpSortOp:
      GetTipStr := '��室 �� �������';
  //------------
    mbpNewPOp:
      GetTipStr := '��室 �� ��८業��';
  //------------
    mbpFrExOp:
      GetTipStr := '��室 �� ������� �� �ᯫ��樨';
  //------------
    mbpOverOp:
      GetTipStr := '��室 ����誠';
  //------------
    mbpChgPOp:
      GetTipStr := '��室 �� ��������� ��ࠬ��஢';
  //------------
    mbpInSald:
      GetTipStr := '��室 � ���⪮� ��᫥ 㤠����� ��ன ���ଠ樨';
  //------------
    mbpBackOp:
      GetTipStr := '��室 �� ������� �� �ᯮ�짮�����';
  //------------
  end;
end.
.fields
  CommonFormHeader
  DateToStr(onDate, 'DD/MM/YYYY')
  MBPName
  MBPNum
  WriteName
  WriteFormula
  GetTipStr(InState)
  DateToStr(InDate, 'DD/MM/YYYY')
  DoubleToStr(InKol, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(InPrice, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(InSum, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(InPerc, '\2p[|-]3666''666''666''666''666.88')
  DoubleToStr(PercNach, '\2p[|-]3666''666''666''666''666.88')
  NachComment
  OsAlgoritm
  if (OsAlgRez = '', '0', OsAlgRez)
  NumPP
  Key
  SpAlg
  SpAlgRez
.endfields
��^
������������������������������������������������������������������������������������������������������������������������
                                         ����⮪�� ���� ����� �� ^��
������������������������������������������������������������������������������������������������������������������������
.{ cirKatMBP CheckEnter
 ������窠: ^ ^��
 ��⮤���: ^
 ^
.{ cirMBPIn CheckEnter
������������������������������������������������������������������������������������������������������������������������
   ^ �� ^ ���-�� ^ 業� ^ �⮨����� ^ ����� ^
   �����⠭ �����: ^% ^
.{?Internal;(OsAlgoritm <> '');
   ������: ^ = ^
.}
.{ cirSpAlg CheckEnter
.[h
������������������������������������������������������������������������������������������������������������������������
� �  ����  �                    ���㫠                                                       �     �������
������������������������������������������������������������������������������������������������������������������������
.]h
&& @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}
������������������������������������������������������������������������������������������������������������������������
.}��
.endform
