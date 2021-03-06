//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����᭠�⪠
// ��������� ���c����� ����� ᯥ�᭠�⪨ � ࠧ����� ࠧ१��
//------------------------------------------------------------------------------

#doc
����� �������᪮�� ���� "��������� ���᫥��� �����" �� ᯥ�᭠�⪥.<br>
#end
.Set Name = 'RIzn_MBP'
.Hide
.Fields
  pCommand : Word
  dFrom : Date
  dTo   : Date
  Grouping : String
  MyOrgName : String
  NDE_ShName : String
  cSigners : comp
.EndFields
  ^  ^  ^  ^  ^  ^  ^
.{ cirIznFilt CheckEnter // ��⠭������� 䨫����
.Fields
  fltName : String : 'T:-'
.EndFields
  ^
.}

.{ cirIznCom CheckEnter // ��騩 横� �뢮��
.{ cirIznGrp CheckEnter // ������������ ��㯯�஢��
.Fields
  GrpName : String : 'T:-'
  GrpKol : Double  GrpSum : Double
  GrpPerc : Double  GrpIznSum : Double
  GrpIznSumF : Double  GrpOstStoim : Double
.EndFields
  ^  ^ ^ ^ ^ ^ ^
.}
.{ cirIznOper CheckEnter // ����樨
.Fields
  InName : String  dOper: Date  opDoc : String  tOper: String
  Price : Double  Kol : Double  Stoim : Double
  Perc : Double  SumIzn : Double  dExpl : Date  Ed : String
  DopInfo : String SumIznF : Double OstStoim : Double
.EndFields
  ^  ^ ^ ^  ^ ^ ^  ^ ^ ^  ^ ^ ^ ^
.}
.{ cirIznItog CheckEnter // �⮣�
.Fields
  ItogName : String : 'T:-'  lBorder : String : 'T:-'
  ItogKol : Double  ItogSum : Double
  ItogPerc : Double  ItogIznSum : Double
  ItogIznSumF : Double  ItogOstStoim : Double
.EndFields
  ^ ^  ^ ^ ^ ^ ^ ^
.}
.}
.Fields
  TotKol : Double TotSum : Double
  TopPerc : Double  TotIznSum : Double
  TotIznSumF : Double  TotOstStoim : Double
.EndFields
  ^ ^ ^ ^ ^ ^

.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  �����ᠭ�_nRec : comp
  �����ᠭ�_��� : String
  �����ᠭ�_�������_����� : String
  �����ᠭ�_��������� : String
  �����ᠭ�_���� : String
.EndFields
  ^ ^ ^ ^ ^
.}
.EndForm

//-------------------------------------------------------------------------

.LinkForm RIzn_MBP_01 Prototype Is RIzn_MBP
.Group '��⪨�'
.NameInList '��⪠� ��������� ���᫥��� �����'
.p 80
.Fields
  CommonFormHeader
  MyOrgName
  if (pCommand > 0, '���', 'ᯥ�᭠�⪨')
  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')  Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

            ����⪠��� ��������� ���᫥��� ����� ^ � ��^�� �� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirIznFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.{ cirIznCom CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.EndFields
���������������������������������������������������������������������������������� ���.@np@
                                                  �              ���᫥� �����
                ������������                      �����������������������������������������
                                                  � �㬬� �����, � ���-�� ����.�⮨�����,
                                                  �@~@@@@@@@@@@@@@�        �@~@@@@@@@@@@@@@
�������������������������������������������������������������������������������������������
.]h
.{ cirIznGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpIznSum  GrpKol  GrpSum
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &#'&&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&
.}
.{ cirIznOper CheckEnter
.}
.{ cirIznItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 91)
end.
.Fields
  ItogName : 'T:-'  ItogIznSum  ItogKol  ItogSum  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotIznSum  TotKol  TotSum
.EndFields
�������������������������������������������������������������������������������������������
 ���⮣�:                                            &#'&&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&��
.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  if (�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
  �����ᠭ�_���
.EndFields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@��   _______________   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
          ���������                �������                  ����஢�� ������
.}��
.EndForm

//-------------------------------------------------------------------------

.LinkForm RIzn_MBP_02 Prototype Is RIzn_MBP
.Group '���஡��'
.NameInList '���஡��� ��������� ���᫥��� �����'
.p 80
.Fields
  CommonFormHeader
  MyOrgName
  if (pCommand > 0, '���', 'ᯥ�᭠�⪨')
  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')  Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                �����஡����� ��������� ���᫥��� ����� ^ c ��^�� �� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirIznFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.{ cirIznCom CheckEnter
.[h
.Fields
  NDE_ShName
  NDE_ShName
.EndFields
����������������������������������������������������������������������������������������������������������������������������� ���.@np@
                                                  �         ���㬥��        �   ���   �                  ���᫥� �����
                ������������                      �������������������������Ĵ ����� �  �����������������������������������������������
                                                  �   ���   �  �����   �����  ��ᯫ.  �  %   � �㬬� �����,� ���-�� ����.�⮨�����,
                                                  �          �          �   �          � ���. �@~@@@@@@@@@@@@�        �@~@@@@@@@@@@@@@
��������������������������������������������������������������������������������������������������������������������������������������
.]h
.{ cirIznGrp CheckEnter
.Fields
  GrpName : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ cirIznOper CheckEnter
.Fields
  InName  DateToStr(dOper, 'DD/MM/YYYY')  opDoc  tOper
  if (LongInt(dExpl) > 0, DateToStr(dExpl, 'DD/MM/YYYY'), '')
  if (Perc > 0, String(Perc), '')  SumIzn  Kol  Stoim
.EndFields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @~@ @@@@@@@@@@ &#&&&& &#'&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&
.}
.{ cirIznItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 134)
end.
.Fields
  ItogName : 'T:-'  ItogIznSum  ItogKol  ItogSum  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             &#'&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotIznSum  TotKol TotSum
.EndFields
��������������������������������������������������������������������������������������������������������������������������������������
 ���⮣�:                                                                                        &#'&&&&&&&&.&& &#'&&.&& &#'&&&&&&&&&.&&��
.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  if (�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
  �����ᠭ�_���
.EndFields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@��   _______________   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
          ���������                �������                  ����஢�� ������
.}��
.EndForm

//-------------------------------------------------------------------------

.LinkForm RIzn_MBP_03 Prototype Is RIzn_MBP
.Group '�祭� ��⪨�'
.NameInList '��⪠� ��������� ���᫥��� �����'
.p 80
.Fields
  CommonFormHeader
  MyOrgName
  if (pCommand > 0, '���', 'ᯥ�᭠�⪨')
  DateToStr(dFrom, 'DD/MM/YYYY')  DateToStr(dTo, 'DD/MM/YYYY')  Grouping
.EndFields
.Var
  Cherta : String
.endVar
�� ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

            ����⪠��� ��������� ���᫥��� ����� ^ � ��^�� �� ��^��

 ��㯯�஢��: ��^��
 ��⠭������� 䨫����:
.{ cirIznFilt CheckEnter
.Fields
  fltName : 'T:-'
.EndFields
   ��^��
.}

.{ cirIznCom CheckEnter
.[h
.Fields
  NDE_ShName
.EndFields
���������������������������������������������������������������������������������� ���.@np@
                       ������������                         �     ���᫥� �����, @@@@@@
�������������������������������������������������������������������������������������������
.]h
.{ cirIznGrp CheckEnter
.Fields
  GrpName : 'T:-'  GrpIznSum
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�� &#'&&&&&&&&&&&&&&&&&&&&&&&&.&&
.}
.{ cirIznOper CheckEnter
.}
.{ cirIznItog CheckEnter
.begin
  Cherta := PadCh(LBorder, '�', 91)
end.
.Fields
  ItogName : 'T:-'  ItogIznSum  Cherta : 'T:-'
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &#'&&&&&&&&&&&&&&&&&&&&&&&&.&&��
^
.}
.}
.Fields
  TotIznSum
.EndFields
�������������������������������������������������������������������������������������������
 ���⮣�:                                                      &#'&&&&&&&&&&&&&&&&&&&&&&&&.&&��
.{ CheckEnter FeeSignersCycle_RIzn_MBP
.Fields
  if (�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
  �����ᠭ�_���
.EndFields

 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@��   _______________   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
          ���������                �������                  ����஢�� ������
.}��
.EndForm

//-------------------------------------------------------------------------
