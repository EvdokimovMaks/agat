//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����᭠�⪠
// ��� �� ����誥 ᯥ�᭠�⪨
//------------------------------------------------------------------------------

#doc
����� ᢮������ ��� ��� �� ����誥.<br>
#end
.Form 'Prih_MBP'
.Fields
  MoveRec  : Comp
  dNom     : String
  dDate    : Date
  Podr     : String
  MOL      : String
  cSigners : Comp
  InRec    : Comp
  MBPName  : String
  MBPKod   : String
  MBPEd    : String
  MBPKol   : Double
  MBPPrice : Double
  MBPIznP  : Double
  MBPStoim : Double
.endFields
.{
  ^  ^ ^ ^ ^  ^
.{
  ^  ^ ^ ^ ^ ^ ^ ^
.}
.}
.endForm

//-------------------------------------------------------------------------

.LinkForm 'Izl_MBP' prototype is 'Prih_MBP'
.NameInList '��� ������ਧ�樨 �� ����誥'
.Group '����襪'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
  totSum : double;
.endvar
.Fields
  CommonFormHeader
  dNom  DateToStr(dDate, 'DD/MM/YYYY')  Podr  MOL
  MBPName  MBPKod  MBPEd  MBPKol  MBPPrice
.endFields
.begin
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
.{
�� ^

                            ��� �������������� �� �������
                             � ^ �� ^

���ࠧ�������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
���          : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  totSum := 0
end.
��������������������������������������������������������������������������������������
         ������������         � ���. ����� � ��. ����७�� �������⢮�     ����
��������������������������������������������������������������������������������������
.{
.begin
  totSum := totSum + MBPKol * MBPPrice;
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@ &&&&&&&.&& &'&&&&&&&&&&.&&
.}
��������������������������������������������������������������������������������������

.Fields
  totSum
  DoubleToStr(totSum, '\2p\m4')+
    if (Pos('����', DoubleToStr(totSum, '\2p5')) <> 0, '',
      DoubleToStr(totSum, '楫�� \2p5'))
.endFields
�㬬� �� ����: &'&&&&&&&&&&.&& ��.
     �ய����: ^

.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
@@@@@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}��

.}
.endForm

//-------------------------------------------------------------------------

.LinkForm 'Post_MBP' prototype is 'Prih_MBP'
.NameInList '���㬥�� �� ��室, ����㯫����'
.Group '��室, ����㯫����'
.declare
#include FeeSigners.vih
.endDeclare
.var
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
  totSum : double;
.endvar
.Fields
  CommonFormHeader
  dNom  DateToStr(dDate, 'DD/MM/YYYY')  Podr  MOL
  MBPName  MBPKod  MBPEd  MBPKol  MBPPrice  MBPIznP  MBPStoim
  totSum
.endFields
.begin
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
.{
�� ^

                                      �������� �� ������, �����������
                                          � ^ �� ^

���ࠧ�������: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
���          : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.begin
  totSum := 0;
end.

������������������������������������������������������������������������������������������������������������
         ������������         � ���. ����� ���. ����७�ﳊ�����⢮�      ����     � ����� �  �⮨�����
������������������������������������������������������������������������������������������������������������
.{
.begin
  totSum := totSum + MBPStoim;
end.
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@ &&&&&&.&&& &'&&&&&&&&&&.&& &&&&.&& &'&&&&&&&&&&.&&
.}
������������������������������������������������������������������������������������������������������������
                                                                                     �⮣�:  &'&&&&&&&&&&.&&
.begin
  i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
@@@@@@@@@@@@@: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}��

.}
.endForm

//-------------------------------------------------------------------------