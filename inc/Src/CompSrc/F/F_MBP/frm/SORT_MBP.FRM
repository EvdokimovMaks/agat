//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ����᭠�⪠
// ����� ��� �� ��������
//------------------------------------------------------------------------------

#doc
��ନ஢���� ࠧ����� ������ �� �� ���㬥�⮢ ᯥ�᭠�⪨ ᫥�����
⨯��: ��� �� ��������.<br>
#end
.set name = 'Sort_MBP'
.NameInList '������� �ଠ'
.hide
.{ SortDoc CheckEnter
.fields
  DocNRec     : comp
  DocNom      : string
  DocDate     : date
  DocDesGr    : string
  DocDescr    : string
  FromPodr    : string
  FromMol     : string
  FromMolDlg  : string
  ToPodr      : string
  ToMol       : string
  ToMolDlg    : string
  cSigners    : comp
.endfields
  NRec ���㬥��         - ^
  ����� ���㬥��        - ^
  ��� ���㬥��         - ^
  ������ ��㯯�         - ^
  ���ਯ��             - ^
  ���ࠧ������� (��㤠) - ^
  ��� (��㤠)           - ^
  ��������� ��� (��㤠) - ^
  ���ࠧ������� (�㤠)   - ^
  ��� (�㤠)             - ^
  ��������� ��� (�㤠)   - ^
  ��㯯� �����ᠭ⮢     - ^
.{ SortSpDoc CheckEnter
.fields
  InNRec    : comp
  pMBPName  : string
  pMBPNum   : string
  pMBPEd    : string
  pMBPEdKod : string
  pSklNum   : string
  pInvNum   : string
  pPasNum   : string
  pKol      : double
  pPrice    : double
  pStoim    : double
  pPerc     : double

  OutNRec   : comp
  rMBPName  : string
  rMBPNum   : string
  rMBPEd    : string
  rMBPEdKod : string
  rSklNum   : string
  rInvNum   : string
  rPasNum   : string
  rKol      : double
  rPrice    : double
  rStoim    : double
  rPerc     : double
.endfields
--------- ������塞� �।��� ---------
  NRec ��室�      - ^
  ������������      - ^
  ������������ �  - ^
  ������ ����७�� - ^ ^
  �����᪮� �����   - ^
  �������� ����� - ^
  ����� ��ᯮ��    - ^
  ������⢮        - ^
  ����              - ^
  �⮨�����         - ^
  ��業� �����    - ^
--------- ����뢠��� �।��� ---------
  NRec ��室�      - ^
  ������������      - ^
  ������������ �  - ^
  ������ ����७�� - ^ ^
  �����᪮� �����   - ^
  �������� ����� - ^
  ����� ��ᯮ��    - ^
  ������⢮        - ^
  ����              - ^
  �⮨�����         - ^
  ��業� �����    - ^
.}
.}
.endform

!======================================================================================================================

.linkform 'Sort_MBP_01' prototype is Sort_MBP
.NameInList '��� �� ��������'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  DocNpp, i, lSign : longint;
  FIOs, Post : array [1..2] of string;
  Npp : longint;
  ItogSum : double;
.endvar
.begin
  DocNpp := 0;
  lSign := 0;

  for (i := 1; i <= Count(FIOs); i++)
  {
    FIOs[i] := '';
    Post[i] := '';
  }

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
    if (iFeeSigners.GetSignerFirst)
      do
      {
        lSign++;
        FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
        Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
      }
      while (iFeeSigners.GetSignerNext);
end.
.fields
  CommonFormHeader
  DocNom
  DateToStr(DocDate,'DD/MM/YYYY')
  ToPodr
  ToMol + if (ToMolDlg <> '', ' (' + ToMolDlg + ')', '')
  FromPodr
  FromMol + if (FromMolDlg <> '', ' (' + FromMolDlg + ')', '')
.endfields
.{ SortDoc CheckEnter
.begin
  DocNpp++;
  Npp := 0;
  ItogSum := 0;
end.
.{?Internal;(DocNpp > 1);

.}
�� ^

                                                     ����� �� �������������
                                                   ��� ^ �� ^��

  �㤠   : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ��㤠 : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ SortSpDoc CheckEnter
.begin
  Npp := Npp + 1;
  ItogSum := ItogSum + (pStoim - rStoim);
end.
.[h
����������������������������������������������������������������������������������������������������������������������������Ŀ
� � ����������������멳            ������������             �  ������  �  ������⢮  �     ����     �  %   �  �⮨�����   �
��/��   �    �����     �                                     � ����७�� �              �              �����ᠳ              �
����������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
.fields
  Npp
  '��.'
  pMBPNum
  pMBPName
  pMBPEd
  pKol
  pPrice
  pPerc
  pStoim
  '��.'
  rMBPNum
  rMBPName
  rMBPEd
  rKol
  rPrice
  rPerc
  rStoim
.endfields
�&&&�@@@�@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@�&'#&&&&&&&.&&&�&'#&&&&&&&&.&&�&#&.&&�&'#&&&&&&&&.&&�
�   �@@@�@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@�&'#&&&&&&&.&&&�&'#&&&&&&&&.&&�&#&.&&�&'#&&&&&&&&.&&�
.[f
������������������������������������������������������������������������������������������������������������������������������
.]f
.}
.fields
  ItogSum
.endfields
��  �⮣�:                                                                                                       &'#&&&&&&&&.&&��

.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i] + ':'
  FIOs[i]
.endfields
@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}��
.}
.endform
