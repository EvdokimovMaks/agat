//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����᭠�⪠
// ��������� ������ ᯥ�᭠�⪨ � ࠧ����� ࠧ१��
//------------------------------------------------------------------------------

#doc
����� �������᪮�� ���� � ����稨 ᯥ�᭠�⪨.<br>
#end
.Set Name = 'RNAL_MBP'
.Group '���஡��'
.Hide
.Fields
  dFor : Date
  What : String  Place : String
  Grouping : String
  UseStr : String  D1Name : String
  D2Name : String  D3Name : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^
  ^  ^  ^  ^
  ^
.{ cirFilt CheckEnter // ��⠭������� 䨫����
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.{ cirCom CheckEnter // ��騩 横� �뢮��
.{ cirGrp CheckEnter // ������������ ��㯯�஢��
.Fields
  GrpName : String : 'T:-' // C㬬�୮� ��� ��㯯�஢�� � ����㯮�

  GrpNamePt: String  // ������������ ��㯯�஢��
  GrpKodPt : String  // ��� ��㯯�஢��
  GrpNRecPt: String  // NRec ��㯯�஢�� �� ��� ��� ⠡.����� ��� ��
  NLev     : Word    // ����� �஢�� ��㯯�஢��

  GrpKol : Double  GrpSum : Double
  GrpPerc : Double  GrpIznSum : Double
.EndFields
  ^  ^ ^ ^ ^  ^ ^ ^ ^
.}
.{ cirOper CheckEnter // ����樨
.Fields
  InName : String
  NRecIn : Comp
  dIn : Date  Price : Double  Kol : Double  Stoim : Double
  Perc : Double  SumIzn : Double  dExpl : Date  Ed : String
  DopInfo : String dEndExpl : Date Srok : Longint
  PartyKod : String PartyName : String DocNom : String
.EndFields
  ^
  NRec - ^
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
//---------------------------
.}
.{ cirItog CheckEnter // �⮣�
.Fields
  ItogName : String : 'T:-'  lBorder : String : 'T:-'
  ItogKol : Double  ItogSum : Double  ItogPerc : Double  ItogIznSum : Double
.EndFields
  ^ ^ ������᪨� �����
  ^ ^ ^ ^
.}
.}
.Fields
  TotKol : Double TotSum : Double  TopPerc : Double  TotIznSum : Double
.EndFields
  ^ ^ ^ ^

.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_01 Prototype Is RNAL_MBP
.Group '��⪨�'
.NameInList '��⪠� ��������� ������'
.declare
#include FeeSigners.vih
.endDeclare
.p 80
.Var
  Cherta : String
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
  What  Place  DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
�� ^

                ����⪠��� ��������� ������ ^ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  UseStr
.endFields
.{ cirCom CheckEnter
.[h
�������������������������������������������������������������������������������������������� ���.@NP@
                                                  �                  @~@@@@@@@@@@@@
                ������������                      ���������������������������������������������������
                                                  �������⢮�   �⮨�����   � ����� �  �㬬� �����
�����������������������������������������������������������������������������������������������������
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), GrpSum, GrpSum - GrpIznSum)
  if (GrpPerc > 0, String(GrpPerc)+'%', '')  GrpIznSum
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirOper CheckEnter
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 101)
end.
.Fields
  ItogName : 'T:-'  ItogKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  if (ItogPerc > 0, String(ItogPerc)+'%', '')  ItogIznSum
  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
�����������������������������������������������������������������������������������������������������
���⮣�:                                             &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&��
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

.LinkForm RNAL_MBP_02 Prototype Is RNAL_MBP
.Group '���஡��'
.NameInList '���஡��� ��������� ������'
.declare
#include FeeSigners.vih
.endDeclare
.p 80
.Var
  Cherta : String
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
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
�� ^

                �����஡����� ��������� ������ ^ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  UseStr  D1Name  D2Name  D3Name
.endFields
.{ cirCom CheckEnter
.[h
������������������������������������������������������������������������������������������������������������������ ���.@NP@
                                                  �   ���   �   ���   �                  @~@@@@@@@@@@@
                ������������                      � @~@@@@@@ � @~@@@@@@ ���������������������������������������������������
                                                  �          � @~@@@@@@ �������⢮�   �⮨�����   � ����� �  �㬬� �����
���������������������������������������������������������������������������������������������������������������������������
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ cirOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  Kol  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), Stoim, Stoim - SumIzn)
  if (Perc > 0, String(Perc)+'%', '')  SumIzn
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 123)
end.
.Fields
  ItogName : 'T:-' ItogKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  if (ItogPerc > 0, String(ItogPerc)+'%', '')
  ItogIznSum  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
���������������������������������������������������������������������������������������������������������������������������
���⮣�:                                                                   &#'&&&.&&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&��
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

.LinkForm RNAL_MBP_03 Prototype Is RNAL_MBP
.Group '��⪨�'
.NameInList '��⪠� ������ୠ� ��������� ������'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^

                ����⪠� ������ୠ��� ��������� ������ ^ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  UseStr
.endFields
.{ cirCom CheckEnter
.[h
                                                                                                    ���.@NP@
������������������������������������������������������������������������������������������������������������
                                                  �                 @~@@@@@@@@@@@            � ������⢮
                ������������                      ������������������������������������������Ĵ � ����稨
                                                  �      ����     �������⢮�   �⮨�����   �
������������������������������������������������������������������������������������������������������������
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'  if (GrpKol > 0, GrpSum/GrpKol, 0)  GrpKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), GrpSum, GrpSum - GrpIznSum)
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&&
.}
.{ cirOper CheckEnter
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 108)
end.
.Fields
  ItogName : 'T:-'  if (ItogKol > 0, ItogSum/ItogKol, 0)  ItogKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
.EndFields
������������������������������������������������������������������������������������������������������������
���⮣�:                                                             &#'&&&.&&& &#'&&&&&&&&&.&&����
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_04 Prototype Is RNAL_MBP
.Group '���஡��'
.NameInList '������ୠ� ��������� ������'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^

                ��������ୠ��� ��������� ������ ^ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  UseStr  D1Name  D2Name  D3Name
.endFields
.{ cirCom CheckEnter
.[h
                                                                                                                          ���.@NP@
����������������������������������������������������������������������������������������������������������������������������������
                                                  �   ���   �   ���   �                 @~@@@@@@@@@@@            � ������⢮
                ������������                      � @~@@@@@@ � @~@@@@@@ ������������������������������������������Ĵ � ����稨
                                                  �          � @~@@@@@@ �      ����     �������⢮�   �⮨�����   �
����������������������������������������������������������������������������������������������������������������������������������
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ cirOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  Price  Kol
  if ((Pos( '� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), Stoim, Stoim - SumIzn)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&&
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh( LBorder, '�', 130)
end.
.Fields
  ItogName : 'T:-'  if (ItogKol > 0, ItogSum/ItogKol, 0)  ItogKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), ItogSum, ItogSum - ItogIznSum)
  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&.&& &#'&&&.&&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotKol
  if ((Pos('� ���짮�����', What) > 0) OR (wGetTune('Fin.MBP.OstStoim') = 0), TotSum, TotSum - TotIznSum)
.EndFields
����������������������������������������������������������������������������������������������������������������������������������
���⮣�:                                                                                   &#'&&&.&&& &#'&&&&&&&&&.&&����
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_05 Prototype Is RNAL_MBP
.Group '��⪨�'
.NameInList '��⪠� ��������� ������ (��砫쭠� � ����筠� �⮨�����)'
.p 80
.Fields
  CommonFormHeader
  What  Place  DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^

                ����⪠��� ��������� ������ ^ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  UseStr
.endFields
.{ cirCom CheckEnter
.[h
������������������������������������������������������������������������������������������������������������ ���.@NP@
                                                  �                  @~@@@@@@@@@@@@
                                                  �������������������������������������������������������������������
                ������������                      �          �           �⮨�����           �       �
                                                  �������⢮�������������������������������Ĵ ����� �  �㬬� �����
                                                  �          �   ��砫쭠�   �   ����筠�  �       �
���������������������������������������������������������������������������������������������������������������������
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpKol
  GrpSum
  GrpSum - GrpIznSum
  if (GrpPerc > 0, String(GrpPerc)+'%', '')  GrpIznSum
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirOper CheckEnter
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 117)
end.
.Fields
  ItogName : 'T:-'  ItogKol
  ItogSum
  ItogSum - ItogIznSum
  if (ItogPerc > 0, String(ItogPerc)+'%', '')  ItogIznSum
  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotKol
  TotSum
  TotSum - TotIznSum
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
���������������������������������������������������������������������������������������������������������������������
���⮣�:                                             &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&����
.EndForm

//-------------------------------------------------------------------------

.LinkForm RNAL_MBP_06 Prototype Is RNAL_MBP
.Group '���஡��'
.NameInList '���஡��� ��������� ������ (��砫쭠� � ����筠� �⮨�����)'
.p 80
.Fields
  CommonFormHeader
  What  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^

                �����஡����� ��������� ������ ^ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}
����
.Fields
  if (UseStr = '� ���짮�����', '���㬥�� �� �뤠��', '���㬥��') UseStr  D2Name  D3Name
.endFields
.{ cirCom CheckEnter
.[h
���������������������������������������������������������������������������������������������������������������������������������������������� ���.@NP@
                                                  �@~@@@@@@@@@@@@@@@@@@@@�          �                       @~@@@@@@@@@@@
                                                  ����������������������Ĵ   ���   �������������������������������������������������������������������
                ������������                      �          �           � @~@@@@@@ �          �            �⮨�����          �       �
                                                  �   ���   �   �����   � @~@@@@@@ �������⢮�������������������������������Ĵ ����� �  �㬬� �����
                                                  �          �           �          �          �   ��砫쭠�   �  ����筠�   �       �
�������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ cirGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ cirOper CheckEnter
.Fields
  InName
  DateToStr(dIn, 'DD/MM/YYYY')
  DocNom
  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  Kol
  Stoim
  Stoim - SumIzn
  if (Perc > 0, String(Perc)+'%', '')  SumIzn
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&
.}
.{ cirItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 139)
end.
.Fields
  ItogName : 'T:-' ItogKol
  ItogSum
  ItogSum - ItogIznSum
  if (ItogPerc > 0, String(ItogPerc)+'%', '')
  ItogIznSum  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotKol
  TotSum
  TotSum - TotIznSum
  if (TopPerc > 0, String(TopPerc)+'%', '')
  TotIznSum
.EndFields
�������������������������������������������������������������������������������������������������������������������������������������������������������
���⮣�:                                                                               &#'&&&.&&& &#'&&&&&&&&&.&& &#'&&&&&&&&&.&& &&&&&&& &#'&&&&&&&&&.&&����
.EndForm

//-------------------------------------------------------------------------