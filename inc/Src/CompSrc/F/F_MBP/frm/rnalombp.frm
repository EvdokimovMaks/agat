//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����᭠�⪠
// ��������� ������ ᯥ�᭠�⪨ �� ������� ����ᮢ
//------------------------------------------------------------------------------

#doc
����� �������᪮�� ���� � ����稨 ᯥ�᭠�⪨ �� ������� ����ᮢ.<br>
#end
.Set Name = 'RNalO_MBP'
.Hide
.Fields
  dFor : Date
  What : String  Place : String
  Grouping : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^  ^
.{ cirOFilt CheckEnter // ��⠭������� 䨫����
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.Fields
  NRange : Longint
  rBeg : String
  rEnd : String
.EndFields

  ^
 .{.?noS1;.}
 .{.?noS2;.}
 .{.?noS3; ^ .}
 .{.?noS4; ^ .}
 .{.?noS5;.}

.{ cirOCom CheckEnter // ��騩 横� �뢮��
.{ cirOGrp CheckEnter // ������������ ��㯯�஢��
.Fields
  GrpName : String : 'T:-'
.EndFields
  ^
.}
.{ cirOOper CheckEnter // ����樨
.Fields
  InName : String  dIn : Date  Price : Double
  Kol : Double  Perc : Double  SExpl : String
  Stoim : Double   SumIzn : Double
.EndFields
  ^  ^ ^ ^ ^ ^
  ��ࢮ��砫쭠� �⮨�����  .{.?noS8; ^ .}
  ����⨧���               .{.?noS9; ^ .}
.}
.{ cirOItog CheckEnter // �⮣�
.Fields
  lBorder  : String : 'T:-'
  ItogName : String : 'T:-'
  ItogKol  : Double //ERP-632

  ItogSum : Double  ItogIznSum : Double
.EndFields

  ^ ������᪨� �����

.{ cirOItogName CheckEnter

  ^ ��ப� "�⮣� �� ..."
  ^ �⮣� ���-��
.}

  ��ࢮ��砫쭠� �⮨�����  .{.?noS10; ^ .}
  ����⨧���               .{.?noS11; ^ .}
.}
.}

.Fields
  TotSum : Double  TotIznSum : Double
.EndFields
  ��ࢮ��砫쭠� �⮨�����  .{.?noS12;  ^ .}
  ����⨧���               .{.?noS14; ^ .}

.EndForm

//-------------------------------------------------------------------------

.LinkForm RNalO_MBP_01 Prototype Is RNalO_MBP
.Group '��⪨�'
.NameInList '��⪠� ��������� ������ �� ������� ����ᮢ'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.var
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
.endvar
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
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFor, 'DD/MM/YYYY')  Grouping
.EndFields
�� ^

                ����⪠��� ��������� ������ ^ ��^�� �� ������� ����ᮢ �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirOFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  Pad('', (16*NRange-8) shr 1)
  rBeg  rEnd
.EndFields
���������������������������������������������������������.{.?noS1;����������������.}
                                        �               �^������
                  ���                   �  ���� �㬬�  �.{.?noS2;����������������.}
                                        �    �� ����    �.{.?noS3; @~@@@@@@@@@@@ �.}
                                        �               �.{.?noS4; @~@@@@@@@@@@@ �.}
���������������������������������������������������������.{.?noS5;����������������.}
.{ cirOCom CheckEnter
.{ cirOGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ cirOOper CheckEnter
  .{.?noS8; .}
  .{.?noS9; .}
.}
.{ cirOItog CheckEnter
.Fields
  ItogName : 'T:-'  ItogSum  ItogIznSum
  PadCh(LBorder, '�', 56+NRange*16) : 'T:-'
.EndFields
.{ cirOItogName CheckEnter
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
��               ��ࢮ��砫쭠� �⮨�����  .{.?noS10;&#'&&&&&&&&&.&& .}��
��               ����⨧���               .{.?noS11;&#'&&&&&&&&&.&& .}��
^
.}
.}
.Fields
  PadCh('', '�', 56+NRange*16) : 'T:-'
  TotSum  TotIznSum
.EndFields
^
���⮣�:��
��               ��ࢮ��砫쭠� �⮨�����  .{.?noS12;&#'&&&&&&&&&.&& .}��
��               ����⨧���               .{.?noS14;&#'&&&&&&&&&.&& .}��
.{?Internal;(lSign > 0);

.}
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
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}��
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNalO_MBP_02 Prototype Is RNalO_MBP
.Group '���஡��'
.NameInList '���஡��� ��������� ������ �� ������� ����ᮢ'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.var
  iFeeSigners : FeeSigners;
  i, lSign : longint;
  FIOs, Post : array [1..2] of string;
.endvar
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
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFor, 'DD/MM/YYYY')  Grouping
.EndFields
�� ^

                �����஡����� ��������� ������ ^ ��^�� �� ������� ����ᮢ �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirOFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  Pad('', (16*NRange-8) shr 1)
  rBeg  rEnd
.endFields
��������������������������������������������������������������������������������������������������.{.?noS1;����������������.}
                                             �           �          �            �               �^������
                    ���                      �   ���    �������⢮�    ����    �  ���� �㬬�  �.{.?noS2;����������������.}
                                             �����㯫����          �            �    �� ����    �.{.?noS3; @~@@@@@@@@@@@ �.}
                                             �           �          �            �               �.{.?noS4; @~@@@@@@@@@@@ �.}
��������������������������������������������������������������������������������������������������.{.?noS5;����������������.}
.{ cirOCom CheckEnter
.{ cirOGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ cirOOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')+SExpl  Kol  Price  Stoim  SumIzn
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@ &#'&&&.&&& &#'&&&&&&.&&
��                                                      ��ࢮ��砫쭠� �⮨�����    .{.?noS8;&#'&&&&&&&&&.&& .}��
��                                                      ����⨧���                 .{.?noS9;&#'&&&&&&&&&.&& .}��

.}
.{ cirOItog CheckEnter
.Fields
  ItogName : 'T:-'
  ItogKol  //ERP-632
  ItogSum  ItogIznSum
  PadCh(LBorder, '�', 97+NRange*16) : 'T:-'
.EndFields
.{ cirOItogName CheckEnter
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&&��
.}
��                                                      ��ࢮ��砫쭠� �⮨�����    .{.?noS10;&#'&&&&&&&&&.&& .}��
��                                                      ����⨧���                 .{.?noS11;&#'&&&&&&&&&.&& .}��
^
.}
.}
.Fields
  PadCh('', '�', 97+NRange*16) : 'T:-'
  TotSum  TotIznSum
.EndFields
^
���⮣�:��
��                                                      ��ࢮ��砫쭠� �⮨�����    .{.?noS12;&#'&&&&&&&&&.&& .}��
��                                                      ����⨧���                 .{.?noS14;&#'&&&&&&&&&.&& .}��
.{?Internal;(lSign > 0);

.}
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
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}��
.EndForm

//-------------------------------------------------------------------------
