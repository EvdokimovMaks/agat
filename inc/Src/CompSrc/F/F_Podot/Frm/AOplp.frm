//-----------------------------------------------------------------------------------
//                                                           (c) ��௮��� ���������
// �����⨪� 5.85 - ����
// �����஢�� ����ᮢ�� ���㬥�⮢
//-----------------------------------------------------------------------------------

#doc
�����஢�� ����ᮢ�� ���㬥�⮢.
#end
.set name='ReeAO'
.hide
.fields
  header                // �������� ����
  dates //:date         // � ____ �� _____
  NameSum     : string  // �������� �㬬�
  PrevNameSum : string
  SymV        : string  // ᨬ��� ������
  PrevSymV    : string  // ᨬ��� ������
  LevelName:string:'t:r'// ������������ ��㯯�஢�� (��ਮ�, ���ࠧ�������, ���㤭��, �����, ��࠭�, ��த, ��ଠ ��室��)
  LevelSum              // �㬬� �� �஢�� 㧫��
  LevelPrevUchSum
  LevelVal              // ᨬ��� ������ 㧫�
  AvOt_nRec             // PlPor.nRec (AO)
  Norm_nRec             // RashDoc.nRec (��ଠ ��室��)
  Norm_NoAO             // ����� ����ᮢ��� �����
  Norm_Date :date       // ��� ��ࠡ�⪨
  Norm_Name:string:'t:r'// ������������ ���� ��室��
  Norm_Sum              // �㬬� �� ��ଥ ��室��
  Norm_PrevUchSum
  Norm_Val              // ᨬ��� ������ ����
.endfields
 ^
 ^

 .{.?TreePlp_Shapka1;��������������������.} .{.?AoPlp_PrevUch1;��������������������.} .{.?TreePlp_Val1;���������.}
 .{.?TreePlp_Shapka2;�   @@@@@@@@@@@@@@  .} .{.?AoPlp_PrevUch2;�   @@@@@@@@@@@@@@  .} .{.?TreePlp_Val2;� ����� .}
 .{.?TreePlp_Shapka3;�   @@@@@@@@@@@@@@  .} .{.?AoPlp_PrevUch3;�   @@@@@@@@@@@@@@  .} .{.?TreePlp_Val3;�        .}
 .{.?TreePlp_Shapka4;��������������������.} .{.?AoPlp_PrevUch4;��������������������.} .{.?TreePlp_Val4;���������.}

.{
.{ AOPlp_Header CheckEnter
 ^ .{.?TreePlp_Shapka5;^ .} .{.?AoPlp_PrevUch5;^ .} .{.?TreePlp_Val5;@@@@@@ .}
.}
.{ AOPlp_Body CheckEnter
 ^ - AvOt_nRec
 ^ - Norm_nRec
 ^ - Norm_NoAO
 ^ - Norm_Date :date
 ^ - Norm_Name:string

 .{.?TreePlp_Shapka6;^ .} .{.?AoPlp_PrevUch6;^ .} .{.?TreePlp_Val6;@@@@@@ .}


.}
.{ AOPlp_Footer CheckEnter
 .{.?AOPlp_Shapka7;��������������������.} .{.?AOPlp_Val7;���������.}
.}
.}

.endform

//*******************************************************************
.linkform 'ReeAO01' prototype is 'ReeAO'
.group '�����஢�� ����ᮢ�� ���㬥�⮢'
.nameinlist '�����஢�� ����ᮢ�� ���㬥�⮢'
.p 60
.defo landscape
.fields
 CommonFormHeader
 header
 dates

 NameSum
 SymV

 LevelName:'t:r'
 LevelSum
 LevelVal

 Norm_NoAO
 if ( Longint(Norm_Date) = 0, '', DateToStr(Norm_Date, 'DD/MM/YYYY'))
 Norm_Name:'t:r'
 Norm_Sum
 Norm_Val

.endfields
��^��
��                                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                              @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��                                                                                                                     ���� @np@
�����������������������������������������������������������������������������������.{.?TreePlp_Shapka1;�������������������.}.{.?AoPlp_PrevUch1;.}.{.?TreePlp_Val1;���������.}
  �����  �   ���    �                       ������������                          .{.?TreePlp_Shapka2;� @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch2;.}.{.?TreePlp_Val2;� ����� .}
  ���-� � ��ࠡ�⪨ �                      ���� ��室��                        .{.?TreePlp_Shapka3;� @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch3;.}.{.?TreePlp_Val3;�        .}
�����������������������������������������������������������������������������������.{.?TreePlp_Shapka4;�������������������.}.{.?AoPlp_PrevUch4;.}.{.?TreePlp_Val4;���������.}
.{
.{ AOPlp_Header CheckEnter
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka5; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch5;.}.{.?TreePlp_Val5;@@@@@@ .}��
.}
.{ AOPlp_Body CheckEnter
@@@@@@@@  @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch6;.}.{.?TreePlp_Val6;@@@@@@ .}
.}
.{ AOPlp_Footer CheckEnter
�����������������������������������������������������������������������������������.{.?AOPlp_Shapka7;�������������������.}.{.?AOPlp_Val7;���������.}
.}
.}��
.endform

//*******************************************************************
.linkform 'ReeAO02' prototype is 'ReeAO'
.group '��⠫���஢����� ����஢�� ����ᮢ�� ���㬥�⮢'
.nameinlist '�����஢�� �ॢ�襭��� �㬬 ��� ��室�� � ������ � ��௫��'
.p 60
.defo landscape
.fields
 CommonFormHeader
 header
 dates

 NameSum
 PrevNameSum
 SymV
 PrevSymV

 LevelName:'t:r'
 LevelSum
 LevelPrevUchSum
 LevelVal

 Norm_NoAO
 if ( Longint(Norm_Date) = 0, '', DateToStr(Norm_Date, 'DD/MM/YYYY'))
 Norm_Name:'t:r'
 Norm_Sum
 Norm_PrevUchSum
 Norm_Val

.endfields
��^
��                                  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                              @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��                                                                                                                     ���� @np@
�����������������������������������������������������������������������������.{.?TreePlp_Shapka1;�������������������.}.{.?AoPlp_PrevUch1;�������������������.}.{.?TreePlp_Val1;���������.}
  �����  �   ���    �                          ������������                 .{.?TreePlp_Shapka2;� @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch2;� @~@@@@@@@@@@@@@@ .}.{.?TreePlp_Val2;� ����� .}
  ���-� � ��ࠡ�⪨ �                         ���� ��室��               .{.?TreePlp_Shapka3;� @~@@@@@@@@@@@@@@ .}.{.?AoPlp_PrevUch3;� @~@@@@@@@@@@@@@@ .}.{.?TreePlp_Val3;�        .}
�����������������������������������������������������������������������������.{.?TreePlp_Shapka4;�������������������.}.{.?AoPlp_PrevUch4;�������������������.}.{.?TreePlp_Val4;���������.}��
.{
.{ AOPlp_Header CheckEnter
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka5; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch5; &'&&&&&&&&&&&&&&& .}.{.?TreePlp_Val5;@@@@@@ .}��
.}
.{ AOPlp_Body CheckEnter
��@@@@@@@@  @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?TreePlp_Shapka6; &'&&&&&&&&&&&&&&& .}.{.?AoPlp_PrevUch6; &'&&&&&&&&&&&&&&& .}.{.?TreePlp_Val6;@@@@@@ .}��
.}
.{ AOPlp_Footer CheckEnter
�������������������������������������������������������������������������������.{.?AOPlp_Shapka7;���������������������������������������������������������.}.{.?AOPlp_Val7;���������.}��
.}
.}��
.endform
