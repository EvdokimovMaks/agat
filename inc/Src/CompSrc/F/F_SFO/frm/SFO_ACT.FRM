//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ���殤����
// ����� ��� ����� ���
//------------------------------------------------------------------------------

#doc
��ନ஢���� ࠧ����� ������ ��ਠ�⮢ ���㬥�� ��� �����.<br>
#end
#include Commission.frn // �����ᨨ
.Set Name = 'SFO_Act'
.Hide
.Fields
  OrgName : String  OrgOKPO : String  ActNo : String  dDate : Date
  FIO : String  TabN : String  spisReason : String
  frPodr : String  frMol : String
  toPodr : String  toMol : String
  ActRec : Comp    ActTiDk : Word
#CommissionFields
.endFields
.{ sfoNxtAct checkenter
  ^ ^ ^ ^
  ^ ^ ^
  ^ ^ ^ ^
  ^ ^
#CommissionBody(SFO_Act)
.{ spcSfoAct checkenter
.Fields
  sfName : String  sfKod : String  Ed : String  KodEd : String
  giveDate : Date  KolVo : Double  Price : Double
  dopInfo : String percNach : Double
  spPrKod : String spPrName : String
! ��� ������ ��� ����� (��-4) ���� ����⨧�樨 �� ������� ��ࠢ�� � ������������
  newPrice : Double  endDate : Date  DolgSum : Double
! ��� ��� ��㯯����� �����
  WorkerFIO : String  WorkerTabN : String
! ��뫪� �� ⥪���� ᯥ�䨪��� ���㬥��
  sfoRec : Comp iznKoef : Double
.endFields
 ^ ^ ^ ^ ^ ^ ^ ^ ^  ^ ^  ^ ^ ^  ^ ^  ^  ^
.}
.}
.endForm

!----------------------------------------------------------------------------

.LinkFORM SFOActOfOut Prototype Is SFO_Act
.Group '��� ����� ���'
.NameInList '��� ����� ���'
.var
  totSum : Double
  tStr, tStr1, tStr2, tStr3 : String
.endVar
#CommissionLinkVar
.Fields
  CommonFormHeader
  OrgName  ActNo
  DateToStr(dDate, 'DD')
  DateToStr(dDate, 'Mon')
  DateToStr(dDate, 'YYYY')
  tStr1
  tStr2
  tStr3
  frMol  FIO  spisReason
.endFields
.{ sfoNxtAct checkenter
#CommissionLinkInit(SFO_Act)
.begin
  totSum := 0;
  tStr1 := '';
  tStr2 := '';
  tStr3 := '';
  tStr := ���ଠ��_�_�।ᥤ�⥫� + if (���ଠ��_�_�।ᥤ�⥫� = '', '', ' (�।ᥤ�⥫�)');
  tStr := tStr + if (���᮪_童���_�����ᨨ = '', '', if (tStr = '', '', ', ') + ���᮪_童���_�����ᨨ);

  // 1-� ��ப�
  if (tStr <> '')
  {
    tStr1 := GroupWrap(tStr, 1, 51);
    tStr := SubStr(tStr, Length(tStr1) + 1, Length(tStr) - Length(tStr1));
  }

  // 2-� � 3-� ��ப�
  if (tStr <> '')
  {
    tStr2 := GroupWrap(tStr, 1, 72);
    tStr3 := SubStr(tStr, Length(tStr2) + 1, Length(tStr) - Length(tStr2));
  }
end.
 ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                      �⢥ত��


                             ��� � ��^��

        �� ���⨥ ����業��� � ����ந���訢������ �।��⮢,
                 �ଥ���� � ᯥ樠�쭮� ������, ��㢨

 ��"^" ^ ^ �.��

 ������� � ��⠢� : ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭��� �ਪ���� (�ᯮ�殮����) �� "__"_____________20__�. �_______
 �ந����� �஢��� ���ﭨ� ����������������� �।��⮢, ��室����� ��
 �⢥��⢥���� �࠭���� � ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 (� �ᯮ�짮����� � ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��),
 � ��⠭����� ���ਣ������� �� � ���쭥�襩 ��ᯫ��樨 �� ��稭�:
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
�����������������������������������������������������������������������������������������������������Ŀ
�     ������������    � �������. � � ��.���. � ���-�� �   ����   �  �㬬�   ���� �뤠� �ਬ�砭�� �
���������������������������������������������������������������������������������������������������Ĵ
.{ spcSfoAct CheckEnter
.fields
  sfName  sfKod  Ed  KolVo  Price  KolVo*Price  DateToStr( giveDate, 'DD/MM/YYYY')
.endFields
.begin
  totSum := totSum + (Price * KolVo);
end.
�@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@�&#&&&&&&�&#&&&&&.&&�&#&&&&&.&&�&&&&&&&&&&�            �
.}
�������������������������������������������������������������������������������������������������������
.fields
  �।ᥤ�⥫�_�����ᨨ_���������
  �।ᥤ�⥫�_�����ᨨ_���
  if (�����_童��_�����ᨨ = Word(1), '����� �����ᨨ:', '')
  ���ᨢ_����_�����ᨨ_��������� [�����_童��_�����ᨨ]
  ���ᨢ_����_�����ᨨ_���       [�����_童��_�����ᨨ]
  frMol
.endFields
��
 �।ᥤ�⥫� �����ᨨ: ��@@@@@@@@@@@@@@@@@@@@@�� ___________ ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                              ���������         �������        ����஢�� ������
.{While (�����_童��_�����ᨨ < ������⢮_童���_�����ᨨ) OR (�����_童��_�����ᨨ < 1)
.begin
  �����_童��_�����ᨨ := �����_童��_�����ᨨ + 1;
end.
 @@@@@@@@@@@@@@@        ��@@@@@@@@@@@@@@@@@@@@@�� ___________ ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                              ���������         �������        ����஢�� ������
.}

 ���ਠ�쭮 �⢥��⢥���� ���: ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@����

.}
.endForm

!----------------------------------------------------------------------------

.linkform 'SFOActOfOutRos' prototype is 'SFO_Act'
.Group '��� ����� ���'
.Group '��� ��㯯����� �����'
.Group '��� ����� ��� (�����)'
.Group '������ �� 㢮�쭥���'
.NameInList '��� ����� (�ଠ � ��-4 �����)'
.P 40
.PAPER PA4
.ORIENT PORTRAIT
.LL 80
.declare
#include FeeSigners.vih
.endDeclare
.var
  CurSum :  Double;
  TotSum :  Double;
  IznSum :  Double;
  CountPage,
  i, j,
  KolStr   : Integer;
  arFIOStr : array[1..2] of String;
  arTabStr : array[1..2] of String;
  arKolStr : array[1..2] of integer;
  arDate   : array[1..2] of String;
  arPerc   : array[1..2] of Double;
  arOstSt  : array[1..2] of Double;
  arDolg   : array[1..2] of Double;
  sReason1,
  sReason2,
  sReason3 : String;
  iFeeSigners : FeeSigners;
  sDirect,
  sPost,
  sBuh,
  sMaster : String;
.endvar
#CommissionLinkVar
.begin
  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSelectionCommissionNRec);
  sDirect := sPost := sBuh := sMaster := '';

  if (iFeeSigners.FeeSignersIsValid)
  {
    if (iFeeSigners.RestrictFeeByRole(1, cgRole_Direct))
    {
      sDirect := iFeeSigners.GetSignerFIO(1);
      sPost := iFeeSigners.GetSignerPosition(1);
    }

    if (iFeeSigners.RestrictFeeByRole(1, cgRole_Bux))
      sBuh := iFeeSigners.GetSignerFIO(1);

    if (iFeeSigners.RestrictFeeByRole(3, '�ᯮ���⥫�'))
      sMaster := iFeeSigners.GetSignerFIO(1);

    iFeeSigners.ClearRestriction;
  }
end.
.fields
 CommonFormHeader
 ActNo  OrgName  orgOKPO
 frPodr
 DateToStr(dDate, 'DD/MM/YYYY')
 frPodr
.endfields
.{ sfoNxtAct checkenter
#CommissionLinkInit(SFO_Act)
.begin
  for (i := 1; i <= Count(arFIOStr); i := i + 1)
    arFIOStr[i] := '';

  for (i := 1; i <= Count(arTabStr); i := i + 1)
    arTabStr[i] := '';

  for (i := 1; i <= Count(arKolStr); i := i + 1)
    arKolStr[i] := 0;

  for (i := 1; i <= Count(arDate); i := i + 1)
    arDate[i] := '';

  for (i := 1; i <= Count(arPerc); i := i + 1)
    arPerc[i] := 0;

  for (i := 1; i <= Count(arOstSt); i := i + 1)
    arOstSt[i] := 0;

  for (i := 1; i <= Count(arDolg); i := i + 1)
    arDolg[i] := 0;

  KolStr := 0;
  TotSum := 0;
  IznSum := 0;
  CountPage := 0;
end.
.{ spcSfoAct CheckEnter
.[h
�� ^
                                                                                                             ������� ������᫥��� �ଠ � ��-4
                                                                                                             �⢥ত��� ���⠭�������� ��᪮���� ���ᨨ
                                                                                                             �� 30.10.97 � 71�
                                                 ����� � ��@@@@@@@@@@��                                                                          �������������Ŀ
                              ������� ����業��� � ����ந���訢������ �।��⮢��                                                          �    ����     �
                                                                                                                                           �������������Ĵ
                                                                                                                             ��ଠ �� ���� �   0320002   �
                                                                                                                                           �������������Ĵ
 �࣠������  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��          �� ���� �@~@@@@@@@@@@@�
 ������୮� ���ࠧ�������  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                  ���������������
                            ����������������������������������������������������������������������������������������������������������������������������Ŀ
                            �   ���   �   ���    �              ������୮�                 �     ���      �    ����ᯮ������騩 ���   � ��⭠� ���- �
                            �  ��⠢- �   ����   �             ���ࠧ�������                � ���⥫쭮�� �����������������������������Ĵ ��� ���᪠ �
                            �   �����  � ����樨 �                                          �              �   ���,   �  ��� ������-   �  �த�樨   �
                            �          �          �                                          �              �  �����  �  �᪮�� ���  �(ࠡ��, ���)�
                            ����������������������������������������������������������������������������������������������������������������������������Ĵ
                           �� �@@@@@@@@@@�          �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�              �           �                 �              �
                            ��������������������������������������������������������������������������������������������������������������������������������
��������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                        �।���                        � ������ ����७�� �      �              �      �㬬�, ��. ���.     �      ��稭� �����     �
���������������������������������������������������������������������������Ĵ ����-�    ����,     ������������������������������������������������������Ĵ
�             ������������,              � �����������- � ��� � ���������������⢮�   ��.���.   �  ��� ���  �   �����-   �         �                �
�          ���, ࠧ���, ��ઠ           �  ��  �����  �     �             �      �              �     ���     �   ��樨     �   ���   �  ������������  �
��������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
�                   1                    �      2       �  3  �      4      �   5  �      6       �      7      �      8      �    9    �       10       �
��������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
.begin
  KolStr := KolStr + 1;

  CurSum := KolVo * Price;
  TotSum := TotSum + CurSum;
  IznSum := IznSum + (CurSum * percNach / 100);

  arFIOStr [KolStr] := WorkerFIO;
  arTabStr [KolStr] := WorkerTabN;
  arKolStr [CountPage + 1] := arKolStr [CountPage + 1] + 1;
  arDate   [KolStr] := if(LongInt(giveDate) > 0, DateToStr(giveDate, 'DD/MM/YYYY'), '');
  arPerc   [KolStr] := percNach;
  arOstSt  [KolStr] := CurSum - (CurSum * percNach / 100);
  arDolg   [KolStr] := DolgSum;
end.
.fields
  sfName  sfKod  KodEd Ed  KolVo  Price  CurSum  (CurSum * percNach / 100)  spPrKod  spPrName
.endfields
�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@�@@@@@�@@@@@@@@@@@@@�&&&.&&�&'&&&&&&&&&.&&�&'#&&&&&&&.&&�&'#&&&&&&&.&&�@@@@@@@@@�@@@@@@@@@@@@@@@@�
.[f
.begin
  sReason1 := GroupWrap(spisReason, 1, 72);
  sReason3 := SubStr(spisReason, Length(sReason1) + 1, Length(spisReason) - Length(sReason1));
  sReason2 := GroupWrap(sReason3, 1, 136);
  sReason3 := GroupWrap(sReason3, 2, 136);
end.
.fields
  TotSum
  IznSum
  sReason1
  sReason2
  sReason3
  sMaster
.endfields
����������������������������������������������������������������������������������������������������������������������������������������������������������
                                                                                          ���⮣���   ���&'#&&&&&&&.&&�����&'#&&&&&&&.&&���
 ��稭� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��         �����������������������������
                 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ������� (�ᯮ���⥫� ࠡ��)��  _____________________   ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                    �������                   ����஢�� ��������
.begin
  TotSum := 0;
  IznSum := 0;
  CountPage := CountPage + 1;
end.

.]f
.}
.begin
  i := 0;
  KolStr := 0;
end.
.{While (i < CountPage)
��                                                                                                                           ����⭠� ��஭� ��� � ��-4
��������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                                            �           �          �              �               ����� 㤥ঠ��� � ��������             �             �
�                                            �           �          �              �                 ��� � ᯮᮡ 㤥ঠ���                �             �
�              �������, �., �.               � ������� �   ���   �   �������    �������������������������������������������������������Ĵ   �������   �
�                                            �   �����   �  �뤠�  �   ᤠ�襣�   �       � �⮨�����  �  ��� ���� 㤥ঠ���  �   �㬬�   �  ���������  �
�                                            �           �          �  ����業��  ���業� �� ���⮬ ����������������������Ĵ  �����-   �  � �������  �
�                                            �           �          �  � ����ந�- ������-�����⨧�樨,����������������������Ĵ  ��筮��  �   (���)   �
�                                            �           �          � ��訢��騥�� � ��樨 � ��. ���.  � ࠧ���  �   c㬬�    �  �����,  �             �
�                                            �           �          �   �।����   �       �            �(��業�)� 㤥ঠ���, �  ��.���  �             �
�                                            �           �          �              �       �            �㤥ঠ���  ��. ���. �           �             �
��������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
�                     1                      �     2     �    3     �       4      �   5   �     6      �    7    �      8     �     9     �     10      �
��������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.begin
  j := 0;
  i := i + 1;
end.
.{While (j < arKolStr [i])
.begin
  j := j + 1;
  KolStr := KolStr + 1;
end.
.fields
  arFIOStr[KolStr]
  arTabStr[KolStr]
  arDate  [KolStr]
  arPerc  [KolStr]
  arOstSt [KolStr]
  arDolg  [KolStr]
.endfields
�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@�@~@@@@@@@@�              �&'#&.&&�&'#&&&&&&.&&�         �&'#&&&&&&.&&�           �             �
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������
.fields
  sPost
  sDirect
  frMol
  sBuh
.endfields
 ���㪮����⥫� ���ࠧ��������� ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@��  _____________  ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                      ���������               �������             ����஢�� ������
 ��������騪��  _____________   ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
               �������              ����஢�� ������
 ����壠�����  _____________   ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
               �������              ����஢�� ������
    "  " ___________20   �.��

.}
.}
.endform

!----------------------------------------------------------------------------

.linkform 'SFOReturn' prototype is SFO_ACT
.Group '��室��� ���������'
.NameInList '��室��� ���������'
.declare
#include FeeSigners.vih
.endDeclare
.var
  Npp, totSum, totSumIzn : Double;
  iFeeSigners : FeeSigners;
  sDirect, sBuh : String;
.endVar
#CommissionLinkVar
.begin
  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSelectionCommissionNRec);
  sDirect := sBuh := '';

  if (iFeeSigners.FeeSignersIsValid)
  {
    if (iFeeSigners.RestrictFeeByRole(1, cgRole_Direct))
      sDirect := iFeeSigners.GetSignerFIO(1);

    if (iFeeSigners.RestrictFeeByRole(1, cgRole_GlBux))
      sBuh := iFeeSigners.GetSignerFIO(1);

    iFeeSigners.ClearRestriction;
  }
end.
.fields
 CommonFormHeader
 ActNo
 DateToStr(dDate, 'DD')
 DateToStr(dDate, 'Mon')
 DateToStr(dDate, 'YYYY')
 toPodr  toMol
.endfields
.{ sfoNxtAct checkenter
#CommissionLinkInit(SFO_Act)
.begin
  Npp := 0; totSum := 0; totSumIzn := 0;
end.
��  ^

                                                 ��������� ���������  � ^
                                                      "^" ^ ^ �.

  ���ࠧ������� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ���           : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
����
���������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
� � � ���������. �       ������������        �  ������  �  ������  � ������⢮ �     ����      �      �㬬�     � ����� �     �㬬�      �  �ਬ�砭��  �
��/��   �����    �                           � ����७�� �  (���)  �            �               �                �   %   �     �����     �              �
���������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{ spcSfoAct checkenter
.Fields
  Npp  sfKod  sfName  Ed  dopInfo  KolVo  Price
  Price * KolVo * if (wGetTune('Fin.MBP.OstStoim') = 0, 1, 1 - PercNach/100)
  percNach
  Price * KolVo * PercNach/100
.endFields
.begin
  Npp := Npp + 1;
  totSum := totSum + Price * KolVo * if (wGetTune('Fin.MBP.OstStoim') = 0, 1, 1 - PercNach/100);
  totSumIzn := totSumIzn + Price * KolVo * PercNach/100;
end.
�&&&�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@�&#&&&&&&&.&&�&#'&&&&&&&&&.&&�&#'&&&&&&&&&&.&&�&&&&.&&�&#'&&&&&&&&&&.&&�              �
.}
�����������������������������������������������������������������������������������������������������������������������������������������������������������
.Fields
  totSum
  totSumIzn
  sDirect
  sBuh
.endFields

��  �⮣� :                                                                                         &#'&&&&&&&&&&.&&         &#'&&&&&&&&&&.&&����


��  ��砫쭨� �⤥�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��     ������ ��壠��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@����
.}
.endform
