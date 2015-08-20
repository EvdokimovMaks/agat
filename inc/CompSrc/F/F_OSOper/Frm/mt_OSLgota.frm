//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ���� � ����稭� ����⨧�樮���� �죮�� ��� ��/���
//------------------------------------------------------------------------------
#doc
  ��ଠ ��� ���� ����稭 ����⨧�樮���� �죮��
#end
.form 'Prn_MTOSLgota'
.hide
.fields
  TiDk  : word       //⨯ �� ��� ���
  ��⮤_���
  cNastrOS : comp    //��뫪� �� NastrOS
  wModeCalc: word    //०�� ����
  SumFormat

  InNumOS
  NameOs
  cKatOS   : comp    //��뫪� �� KatOS
  OtchPerOS : date   // ����� ��ਮ� ����窨

  AmGr_Kod    : string  // ��� ����⨧�樮���� ��㯯�
  AmGr_Name   : string  // ��� ����⨧�樮���� ��㯯�
  DatEk       : date    // ��� �����
  SrokIsp     : double  // �ப ��������� �ᯮ�짮�����
  KatOs_IsLeaf : word

  NameOper
  DateOper         : date    //��� ����樨
  cMoveOS          : comp    //��뫪� �� ������
  SysOper          : word    //��⥬�� ��� ����樨
  SumNew           : double  //�㬬� ��������� �� ����樨
  Sum1             : double  //����稭� ��������� ����⨧�樮���� �죮� ��� �஢������ ����⨧�樨
  Sum1_1           : double  //�㬬� ��������� �⮨���� �� �।��騩 ��ਮ� ��� �᭮����� � �ਧ����� "���뢠�� � ᫥���饬 ���⭮� ��ਮ��"
  Sum2             : double  //����������� ����稭� ��������� �⮨���� ��������� ����⨧�樮���� �죮�
  Sum2From01012009 : double  // � 01.01.2009
  SumL             : double  //����稭� ����⨧�樮���� �죮��
  SumL_Next        : double  //����稭� �����.�죮�� �� �।��騩 ��ਮ� ��� �᭮����� � �ਧ����� "���뢠�� � ᫥���饬 ���⭮� ��ਮ��"
  AllSumL          : double  //����������� ����稭� ����⨧�樮���� �죮��
  AllSumL01012008  : double  //����������� ����稭� ����⨧�樮���� �죮�� � 01.01.2008 ��� ����⠭�������
  Sum3             : double  //����������� ����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  Sum4             : double  //����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  SumL_PS          : double  //����稭� ����⨧�樮���� �죮�� �� ����樨 ����㯫����
  SumL_NextPS      : double  //����稭� �����.�죮�� �� �।��騩 ��ਮ� ��� �᭮����� � �ਧ����� "���뢠�� � ᫥���饬 ���⭮� ��ਮ��"
  wModeLgota       : word    // 0 - ��� �죮��, 1 - � ⥪�饬, 2 - � ᫥���饬 ���.��ਮ��
  Kol              : double  //������⢮ ��ꥪ⮢ ����窨
  CanMustCalcAmort : word    // ������ �� ���� �/��� ����⠭� ����⨧��� � ����� ����樨 DateOper
  Pr_L             : word
  SumL_Proc        : double
  TotalSumL_Proc   : double
.endfields
.var
   iExcelFormat : ExcelFormat;
.endvar

  TiDk             ^
  ��⮤_���      ^
  cNastrOS         ^
  wModeCalc        ^
  SumFormat        ^
.{ CheckEnter MT_OSLgotaKatOS
  InNumOS          ^
  NameOs           ^
  cKatOS           ^
  OtchPerOS        ^
  AmGr_Kod         ^
  AmGr_Name        ^
  DatEk            ^
  SrokIsp          ^
  KatOs_IsLeaf     ^

.{ CheckEnter MT_OSLgotaOperation
  NameOper          ^
  DateOper          ^
  cMoveOS           ^
  SysOper           ^
  SumNew            ^
  Sum1              ^
  Sum1_1            ^
  Sum2              ^
  Sum2From01012009  ^
  SumL              ^
  SumL_Next         ^
  AllSumL           ^
  AllSumL01012008   ^
  Sum3              ^
  Sum4              ^
  SumL_PS           ^
  SumL_NextPS       ^
  wModeLgota        ^
  Kol               ^
  CanMustCalcAmort  ^
.{ CheckEnter MT_OSLgotaIncluding
  Pr_L              ^
  SumL_Proc         ^
  TotalSumL_Proc    ^
.}
.}
.}
.endform

//------------------------------------------------------------------------------
.Linkform 'MTOSLgota_01' prototype is 'Prn_MTOSLgota'
.NameInList '��������� ����⨧�樮���� �죮� �� ��/���'
.Group '�⮣��� �㬬�'
.Defo landscape
.var
   sSum1, sSum2, sSumL, sAllSumL : double;
.endvar
.fields
  CommonFormHeader
  ��⮤_���
  if (TiDk mod 100 = 15, '��', '���')
.endfields
.begin
    sSum1 := 0;  sSum2 := 0;   sSumL := 0;  sAllSumL := 0;
end.
��^��
����⮤ ���: ^��

                         ����������� ����稭 ����⨧�樮���� �죮� �� ^��

.{ CheckEnter MT_OSLgotaKatOS
.[H
��                                                                                                                                                                                ���� @np@
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                              �               �               � ��������� ��-�, � ����������� ����-�  ��������� ��-�, � ����������� ����-�     ����稭�     �    �����������   �  ����⠭��������
                              �  ��������  ������ ��ਮ�� �������饥 ����- �  稭� ���������  ��� �������饥 ����-�  稭� ���������  �  ����⨧�樮���� �      ����稭�    �      ����稭�
        ������������          �     �����     �    ����窨   �⨧�樮���� �죮⥳    �⮨����,    � ⨧�樮���� �죮⥳   �⮨����, ��  �      �죮��      �  ����⨧�樮���� �  ����⨧�樮����
                              �               �               �� ���⭮� ��ਮ��� ��������� �죮⥳ � ���⭮� ��ਮ��� ��������� �죮⥳                  �       �죮��     �      �죮��
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ CheckEnter MT_OSLgotaOperation
.begin
  if (KatOs_IsLeaf = 1)
  {
    sSum1 += Sum1;
    sSum2 += Sum2;
    sSumL += SumL;
    sAllSumL += AllSumL;
  }
end.
.fields
  NameOs
  InNumOS
  iExcelFormat.DateToStrRep(OtchPerOS, 'Month YYYY')

  iExcelFormat.DoubleToStrRep(Sum1, SumFormat)             //����稭� ��������� ����⨧�樮���� �죮� ��� �஢������ ����⨧�樨
  iExcelFormat.DoubleToStrRep(Sum2, SumFormat)             //����������� ����稭� ��������� �⮨���� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(Sum4, SumFormat)             //����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(Sum3, SumFormat)             //����������� ����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(SumL, SumFormat)             //����稭� ����⨧�樮���� �죮��
  iExcelFormat.DoubleToStrRep(AllSumL, SumFormat)          //����������� ����稭� ����⨧�樮���� �죮��
  iExcelFormat.DoubleToStrRep(AllSumL01012008, SumFormat)  //����������� ����稭� ����⨧�樮���� �죮�� � 01.01.2008 ��� ����⠭�������
.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&
.{ CheckEnter MT_OSLgotaIncluding
.}
.}
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
��.fields
  iExcelFormat.DoubleToStrRep(sSum1, SumFormat)
  iExcelFormat.DoubleToStrRep(sSum2, SumFormat)
  iExcelFormat.DoubleToStrRep(sSumL, SumFormat)
  iExcelFormat.DoubleToStrRep(sAllSumL, SumFormat)
.endfields
�� �⮣�:                                                        &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&                                        &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&�
.endform

//------------------------------------------------------------------------------
.Linkform 'MTOSLgota_02' prototype is 'Prn_MTOSLgota'
.NameInList '��������� ����⨧�樮���� �죮� � ࠧ१� ����権 ��/���'
.Group '� ��⠫���樥� �� ����権'
.fields
  CommonFormHeader
  ��⮤_���
  if (TiDk mod 100 = 15, '��', '���')
.endfields
��^��
����⮤ ���: ^��

��          ��������� ����稭 ����⨧�樮���� �죮� � ࠧ१� ����権 ^��

.{ CheckEnter MT_OSLgotaKatOS
.[H
��                                                                                                                                       ���� @np@
�����������������������������������������������������������������������������������������������������������������������������������������������������������
          �                              �     ����稭�     � ����������� ����-� ����������� ����-�     ����稭�     �    �����������   �  ����⠭��������
   ���   �                              �     ���������    �  稭� ���������  �  稭� ���������  �  ����⨧�樮���� �      ����稭�    �      ����稭�
 ����樨 �           ������           �     �⮨����    �    �⮨����,    �   �⮨����, ��  �      �죮��      �  ����⨧�樮���� �  ����⨧�樮����
          �                              �                  � ��������� �죮⥳ ��������� �죮⥳                  �       �죮��     �       �죮��
�������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.fields
  InNumOS
  NameOs
.endfields
.{?Internal;(InNumOS <> '');
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{ CheckEnter MT_OSLgotaOperation
.fields
  iExcelFormat.DateToStrRep(DateOper, 'DD/MM/YYYY')
  NameOper
  iExcelFormat.DoubleToStrRep(SumNew, SumFormat)
  iExcelFormat.DoubleToStrRep(Sum2, SumFormat)               //����������� ����稭� ��������� �⮨���� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(Sum3, SumFormat)               //����������� ����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(SumL, SumFormat)               //����稭� ����⨧�樮���� �죮��
  iExcelFormat.DoubleToStrRep(AllSumL, SumFormat)           //����������� ����稭� ����⨧�樮���� �죮��
  iExcelFormat.DoubleToStrRep(AllSumL01012008, SumFormat)   //����������� ����稭� ����⨧�樮���� �죮�� � 01.01.2008 ��� ����⠭�������
.endfields
��@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&��
.{ CheckEnter MT_OSLgotaIncluding
.}
.}
.}
���������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform

//------------------------------------------------------------------------------
.Linkform 'MTOSLgota_03' prototype is 'Prn_MTOSLgota'
.NameInList '��������� ����⨧�樮���� �죮� �� ��/��� � ����஢��� �� ��業�� �⠢���'
.Group '�⮣��� �㬬�'
.Defo landscape
.var
   sSum1, sSum2, sSumL, sAllSumL : double;
.endvar
.fields
  CommonFormHeader
  ��⮤_���
  if (TiDk mod 100 = 15, '��', '���')
.endfields
.begin
    sSum1 := 0;  sSum2 := 0;  sSumL := 0;    sAllSumL := 0;
end.
��^��
����⮤ ���: ^��

                    ����������� ����稭 ����⨧�樮���� �죮� �� ^ � ����஢��� �� ��業�� �⠢��� ��

.{ CheckEnter MT_OSLgotaKatOS
.[H
��                                                                                                                                                                                        ���� @np@
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                              �               �               � ��������� ��-�, � ����������� ����-�  ��������� ��-�, � ����������� ����-�     ����稭�     �    �����������   �  ����⠭��������
                              �  ��������  ������ ��ਮ�� �������饥 ����- �  稭� ���������  ��� �������饥 ����-�  稭� ���������  �  ����⨧�樮���� �      ����稭�    �      ����稭�
        ������������          �     �����     �    ����窨   �⨧�樮���� �죮⥳    �⮨����,    � ⨧�樮���� �죮⥳   �⮨����, ��  �      �죮��      �  ����⨧�樮���� �  ����⨧�樮����
                              �               �               �� ���⭮� ��ਮ��� ��������� �죮⥳ � ���⭮� ��ਮ��� ��������� �죮⥳� ���⭮� ��ਮ���       �죮��     �      �죮��
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ CheckEnter MT_OSLgotaOperation
.begin
  if (KatOs_IsLeaf = 1)
  {
    sSum1 += Sum1;
    sSum2 += Sum2;
    sSumL += SumL;
    sAllSumL += AllSumL;
  }
end.
.fields
  NameOs
  InNumOS
  iExcelFormat.DateToStrRep(OtchPerOS, 'Month YYYY')

  iExcelFormat.DoubleToStrRep(Sum1, SumFormat)             //����稭� ��������� ����⨧�樮���� �죮� ��� �஢������ ����⨧�樨
  iExcelFormat.DoubleToStrRep(Sum2, SumFormat)             //����������� ����稭� ��������� �⮨���� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(Sum4, SumFormat)             //����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(Sum3, SumFormat)             //����������� ����稭� ��������� �⮨���� �� ��������� ����⨧�樮���� �죮�
  iExcelFormat.DoubleToStrRep(SumL, SumFormat)             //����稭� ����⨧�樮���� �죮��
  iExcelFormat.DoubleToStrRep(AllSumL, SumFormat)          //����������� ����稭� ����⨧�樮���� �죮��
  iExcelFormat.DoubleToStrRep(AllSumL01012008, SumFormat)  //����������� ����稭� ����⨧�樮���� �죮�� � 01.01.2008 ��� ����⠭�������
.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&
.{ CheckEnter MT_OSLgotaIncluding
.{?Internal;Pr_L>0;
.fields
 '�� �⠢�� �� ' + String(Pr_L, 3, 0) + ' %'
 iExcelFormat.DoubleToStrRep(SumL_Proc, SumFormat)
 iExcelFormat.DoubleToStrRep(TotalSumL_Proc, SumFormat)
.endfields
                                                                                                                        @@@@@@@@@@@@@@@@@@@�&&&&&&&&&&&&&&&&&&�&&&&&&&&&&&&&&&&&&�
.}
.}
.}
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.FIELDS
  iExcelFormat.DoubleToStrRep(sSum1, SumFormat)
  iExcelFormat.DoubleToStrRep(sSum2, SumFormat)
  iExcelFormat.DoubleToStrRep(sSumL, SumFormat)
  iExcelFormat.DoubleToStrRep(sAllSumL, SumFormat)
.endfields
���⮣�:                                                         &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&                                        &&&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&&&&��
.endform��

