//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����᭠�⪠
// ��������� ������ �ࠣ��⠫��� � ᯥ�᭠�⪥
//------------------------------------------------------------------------------

#doc
����� �������᪮�� ���� � ����稨 �ࠣ��⠫�� � ᯥ�᭠�⪥.<br>
#end
.Set Name = 'RNALD_MBP'
.Hide
.Fields
  dFor : Date
  Place : String
  Grouping : String
  SumFormat : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^  ^
.{ cirDFilt CheckEnter // ��⠭������� 䨫����
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

// �ࠣ��⠫��
.Fields
  DragName : String
.EndFields
 .{.?nlS1; .}
 .{.?nlS2; .}
 .{.?nlS3; ^ .}
 .{.?nlS4; .}

.{ cirDCom CheckEnter // ��騩 横� �뢮��
.{ cirDGrp CheckEnter // ������������ ��㯯�஢��
.Fields
  GrpName : String : 'T:-' // C㬬�୮� ��� ��㯯�஢�� � ����㯮�

  GrpNamePt: String  // ������������ ��㯯�஢��
  GrpKodPt : String  // ��� ��㯯�஢��
  GrpNRecPt: String  // NRec ��㯯�஢�� �� ����������� ��� ⠡.����� ��� ��
  NLev     : Word    // ����� �஢�� ��㯯�஢��

  GrpKol : Double  GrpSum : Double
  GrpPerc : Double  GrpIznSum : Double  GrpDragVal : Double
.EndFields
  ^  ^ ^ ^ ^  ^ ^ ^ ^  .{.?dnlGrp; ^ .}
.}
.{ cirDOper CheckEnter // ����樨
.Fields
  InName : String  dIn : Date  Price : Double  Kol : Double  Stoim : Double
  Perc : Double  SumIzn : Double  dExpl : Date  Ed : String
  DopInfo : String  OpDragVal : Double
.EndFields
  ^  ^ ^ ^ ^ ^ ^ ^ ^ ^  .{.?dnlOp; ^ .}
.}
.{ cirDItog CheckEnter // �⮣�
.Fields
  ItogName : String : 'T:-'  ItogKol : Double  ItogSum : Double
  ItogPerc : Double  ItogIznSum : Double  ItogDragVal : Double
.EndFields
  ^ ^ ^ ^ ^  .{.?dnlItog; ^ .}
.}
.}
 .{.?nlS5; .}
.Fields
  TotSum : Double  TopPerc : Double  TotIznSum : Double  TotDragVal : Double
.EndFields
  ^ ^ ^  .{.?dnlTot; ^ .}

.EndForm

//-------------------------------------------------------------------------

.LinkForm RNALD_MBP_01 Prototype Is RNALD_MBP
.Group '��⪨�'
.NameInList '��⪠� ��������� ������ �ࠣ��⠫���'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.Var
  iExcelFormat : ExcelFormat;
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
  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
�� ^

      ����⪠��� ��������� ������ �ࠣ�業��� ��⠫��� � ᯥ�᭠�⪥ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirDFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  DragName
.EndFields
���������������������������������������������������.{.?nlS1;���������������������.}
                                                  �       ����ঠ��� �ࠣ��⠫���
                   ������������                   �.{.?nlS2;���������������������.}
                                                  �.{.?nlS3;@~@@@@@@@@@@@@@@@@@@�.}
���������������������������������������������������.{.?nlS4;���������������������.}
.{ cirDCom CheckEnter
.{ cirDGrp CheckEnter
.Fields
  GrpName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(GrpDragVal, SumFormat)
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� .{.?dnlGrp;&&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirDOper CheckEnter
 .{.?dnlOp; .}
.}
.{ cirDItog CheckEnter
.Fields
  ItogName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(ItogDragVal, SumFormat)
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?dnlItog;&&&&&&&&&&&&&&&&&&&& .}��
.}
.}

���������������������������������������������������.{.?nlS5;���������������������.}
.Fields
  iExcelFormat.DoubleToStrFormatNotNul(TotDragVal, SumFormat)
.EndFields
���⮣�:                                             .{.?dnlTot;&&&&&&&&&&&&&&&&&&&& .}��
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

.LinkForm RNALD_MBP_02 Prototype Is RNALD_MBP
.Group '���஡��'
.NameInList '���஡��� ��������� ������ �ࠣ��⠫���'
.declare
#include FeeSigners.vih
.endDeclare
.Defo Landscape
.p 50
.Var
  iExcelFormat : ExcelFormat;
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
  Place DateToStr(dFor, 'DD/MM/YYYY') Grouping
.EndFields
�� ^

      �����஡����� ��������� ������ �ࠣ�業��� ��⠫��� � ᯥ�᭠�⪥ ��^�� �� ���� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirDFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.Fields
  DragName
.EndFields
�������������������������������������������������������������������������.{.?nlS1;���������������������.}
                                                  �   ���   �   ���   �       ����ঠ��� �ࠣ��⠫���
                    ������������                  �  ��室� � ����� �  �.{.?nlS2;���������������������.}
                                                  �          �  ��ᯫ.  �.{.?nlS3;@~@@@@@@@@@@@@@@@@@@�.}
�������������������������������������������������������������������������.{.?nlS4;���������������������.}
.{ cirDCom CheckEnter
.{ cirDGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� .{.?dnlGrp; .}
.}
.{ cirDOper CheckEnter
.Fields
  InName  DateToStr(dIn, 'DD/MM/YYYY')
  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  iExcelFormat.DoubleToStrFormatNotNul(OpDragVal, SumFormat)
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ .{.?dnlOp;&&&&&&&&&&&&&&&&&&&& .}
.}
.{ cirDItog CheckEnter
.Fields
  ItogName : 'T:-'
  iExcelFormat.DoubleToStrFormatNotNul(ItogDragVal, SumFormat)
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ .{.?dnlItog;&&&&&&&&&&&&&&&&&&&& .}��
.}
.}

�������������������������������������������������������������������������.{.?nlS5;���������������������.}
.Fields
  iExcelFormat.DoubleToStrFormatNotNul(TotDragVal, SumFormat)
.EndFields
���⮣�:                                                                   .{.?dnlTot;&&&&&&&&&&&&&&&&&&&& .}��
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
