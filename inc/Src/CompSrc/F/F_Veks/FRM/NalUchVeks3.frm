//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.84 - ������� �ଠ
// ����� �ࠢ�� �� ᯨᠭ�� ��᪮��
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#doc
����� �ࠢ�� �� ᯨᠭ�� ��᪮��
#end

.set name='NalUchVeks3'
.nameinlist '������� �ଠ'
.hide
.fields
  Name_doc
  Org_name                      // ������������ �࣠����樨
  Org_Unn                       // ��� �࣠����樨
// 䨫���
  FD1                 : date
  FD2                 : date
// �뢮���� �㬬� � �ࠢ�� � ��� ��� � �����
  V_Val               : word
// AppVeks3_cicle
  Nrec_App                      // Nrec ���
  No_App                        // ����� �ࠢ�� (���)
  DatVip_App          : date    // ��砫� ��ਮ�� ���᫥��� �ࠢ��
  DatOB_App           : date    // ����砭�� ��ਮ�� ���᫥��� �ࠢ��
  Val                 : comp    // Nrec ������ �ࠢ��
  Val_Simv                      // ������ ������
// SpApp3_cicle
  Nrec_Veks                     // Nrec ���ᥫ�
  No_Veks                       // ����� ���ᥫ�
  Vlad_Veks                     // ���� �뤠� ���ᥫ�
  Sum_Veks            : double  // ������� ���ᥫ�
  Sum_SpApp           : double  // �⮨����� �뤠�
  DatVip_Veks         : date    // ��� �믨᪨ ���ᥫ�
  UslP_Veks                     // �᫮��� ����襭�� ���ᥫ�
  Discount            : double  // ��᪮��
  StavkaR_Veks        : double  // % �⠢�� �� ��室�� �� ���ᥫ�
  StavkaRefin         : double  // �⠢�� �䨭���஢���� �� ��
  DatOB_Veks          : date    // ��� ����襭�� ���ᥫ�, �᫨ ����
  SumPogash_SpApp     : double  // �㬬� ����襭�� (�㬬� ��᪮�⭮�� ��室�)
  SumPogashNorm_SpApp : double  // �㬬� ����襭�� ��᫥ ��ନ஢����
  SumRashod_SpApp     : double  // �㬬�, �ਭ������� � ��室�
  SumUnRash           : double  // �㬬�, �� �ਭ������� � ��室� SumPogash_SpApp - SumRashod_SpApp

  Val_Veks            : comp    // Nrec ������ ���ᥫ�
  Val_Veks_Simv                 // ������ ������ ���ᥫ�
  SumV_Veks           : double  // ������� ���ᥫ� � �����
  SumV_SpApp          : double  // �⮨����� �뤠� � �����
  DiscountV           : double  // ��᪮�� � �����
  StavkaRV_Veks       : double  // % �⠢�� �� ��室�� (� �����) �� ���ᥫ�
  SumVPogash_SpApp    : double  // �㬬� ����襭�� (�㬬� ��᪮�⭮�� ��室�) � �����
  SumVPogashNorm_SpApp : double // �㬬� ����襭�� � ����� ��᫥ ��ନ஢����
  SumVRashod_SpApp    : double  // �㬬� � �����, �ਭ������� � ��室�
  SumVUnRash          : double  // �㬬� � �����, �� �ਭ������� � ��室� SumPogash_SpApp - SumRashod_SpApp
.endfields
! �����窠 Excel �ଠ⮢
! �� ���窠 �㦭� ���� �� �㤥� �襭� 102.31867
#include ExcelFormat.frn

.{
^ ^ ^ ^ ^ ^
.{ CheckEnter AppVeks3_cicle
    ^ ^ ^ ^ ^ ^
.{ CheckEnter SpApp3_cicle
    ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
        ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.}
.endform
!
!
!
//=====================================================================================================================

.linkform 'NalUchVeksR03' prototype is 'NalUchVeks3'
.nameinlist '��� �� ᮡ�⢥��� ���ᥫ� (�ࠢ�� �� ᯨᠭ�� ��᪮��)'
.group '������_3'
.p 80
.var
  Sum_Vid, mSum_Vid,
  Sum_Nominal, mSum_Nominal,
  Sum_Discount, mSum_Discount,
  Sum_Pogash, mSum_Pogash,
  Sum_PogashNorm, mSum_PogashNorm,
  Sum_Rashod, mSum_Rashod,
  Sum_UnRash, mSum_UnRash  : double;
.endvar
.fields
  CommonFormHeader
  Name_doc
  Org_name             // ������������ �࣠����樨
  Org_Unn              // ��� �࣠����樨
  if (Longint(FD1) = 0, '', DateToStr(FD1, 'DD/MM/YYYY'))
  if (Longint(FD2) = 0, '', DateToStr(FD2, 'DD/MM/YYYY'))
  if (V_Val = 0, '� ���', '� �����')
  if (V_Val = 0, '� ���', '� �����')
  if (V_Val = 0, '� ���', '� �����')
  if (V_Val = 0, '� ���', '� �����')

  No_App
  if (Longint(DatVip_App) = 0, '', DateToStr(DatVip_App, 'DD/MM/YYYY'))
  if (Longint(DatOB_App) = 0, '', DateToStr(DatOB_App, 'DD/MM/YYYY'))

  No_Veks
  Vlad_Veks
  if (V_Val = 0, Sum_Veks, SumV_Veks)
  if (V_Val = 0, Sum_SpApp, SumV_SpApp)
  if (Longint(DatVip_Veks) = 0, '', DateToStr(DatVip_Veks, 'DD/MM/YYYY'))
  UslP_Veks
  if (V_Val = 0, Discount, DiscountV)
  if (V_Val = 0, StavkaR_Veks, StavkaRV_Veks)
  StavkaRefin
  if (Longint(DatOB_Veks) = 0, '', DateToStr(DatOB_Veks, 'DD/MM/YYYY'))
  if (V_Val = 0, SumPogash_SpApp, SumVPogash_SpApp)
  if (V_Val = 0, SumPogashNorm_SpApp, SumVPogashNorm_SpApp)
  if (V_Val = 0, SumRashod_SpApp, SumVRashod_SpApp)
  if (V_Val = 0, SumUnRash, SumVUnRash)
  mSum_Nominal
  mSum_Vid
  mSum_Discount
  mSum_Pogash
  mSum_PogashNorm
  mSum_Rashod
  mSum_UnRash
  Sum_Nominal
  Sum_Vid
  Sum_Discount
  Sum_Pogash
  Sum_PogashNorm
  Sum_Rashod
  Sum_UnRash
.endfields
��^
.begin
  Sum_Nominal    := 0;
  Sum_Vid        := 0;
  Sum_Discount   := 0;
  Sum_Pogash     := 0;
  Sum_PogashNorm := 0;
  Sum_Rashod     := 0;
  Sum_UnRash     := 0;
end.
.{
   ^

   ���������⥫�騪 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   �����䨪�樮��� ����� ���������⥫�騪� @@@@@@@@@@@@@@@@@@@@
   ��ਮ� � @@@@@@@@@@ �� @@@@@@@@@@


.{ CheckEnter AppVeks3_cicle
.[h
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������
   �    �  ����    � �������쭠�  � �⮨�����  �  ���    �   �᫮���    �  ��᪮��   � ��業�   �  �⠢��   �  ���    ��㬬� ��᪮�⭮�� ��室��      �㬬� ^
���ᥫ� �  �뤠�   �  �⮨�����   �  �뤠�    � �뤠�   �   ����襭��  �@~@@@@@@@@@@� ��室�   ��䨭���- � ����襭�����������������������������������������������������
        �          �@~@@@@@@@@@@@@�@~@@@@@@@@@@� ���ᥫ�  �              �            ��� ��᪮���  ஢����  �          � �� ��ਮ�  ���᫥ ���- ��ਭ������� �� �ਭ��.
        �          �              �            �          �              �            �           �   �� ��   �          � (����.)  ���஢����  � � ��室� � � ��室�
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������

.]h
.begin
  mSum_Nominal    := 0;
  mSum_Vid        := 0;
  mSum_Discount   := 0;
  mSum_Pogash     := 0;
  mSum_PogashNorm := 0;
  mSum_Rashod     := 0;
  mSum_UnRash     := 0;
end.

��ࠢ�� �  ^ ��ਮ� ���᫥��� � @@@@@@@@@@ �� @@@@@@@@@@

.{ CheckEnter SpApp3_cicle
.begin
  if (V_Val = 0) // � ���
  {
    mSum_Nominal    := mSum_Nominal    + Sum_Veks;
    mSum_Vid        := mSum_Vid        + Sum_SpApp;
    mSum_Discount   := mSum_Discount   + Discount;
    mSum_Pogash     := mSum_Pogash     + SumPogash_SpApp;
    mSum_PogashNorm := mSum_PogashNorm + SumPogashNorm_SpApp;
    mSum_Rashod     := mSum_Rashod     + SumRashod_SpApp;
    mSum_UnRash     := mSum_UnRash     + SumUnRash;

    Sum_Nominal    := Sum_Nominal    + Sum_Veks;
    Sum_Vid        := Sum_Vid        + Sum_SpApp;
    Sum_Discount   := Sum_Discount   + Discount;
    Sum_Pogash     := Sum_Pogash     + SumPogash_SpApp;
    Sum_PogashNorm := Sum_PogashNorm + SumPogashNorm_SpApp;
    Sum_Rashod     := Sum_Rashod     + SumRashod_SpApp;
    Sum_UnRash     := Sum_UnRash     + SumUnRash;
  }
  else           // � �����
  {
    mSum_Nominal    := mSum_Nominal    + SumV_Veks;
    mSum_Vid        := mSum_Vid        + SumV_SpApp;
    mSum_Discount   := mSum_Discount   + DiscountV;
    mSum_Pogash     := mSum_Pogash     + SumVPogash_SpApp;
    mSum_PogashNorm := mSum_PogashNorm + SumVPogashNorm_SpApp;
    mSum_Rashod     := mSum_Rashod     + SumVRashod_SpApp;
    mSum_UnRash     := mSum_UnRash     + SumVUnRash;

    Sum_Nominal    := Sum_Nominal    + SumV_Veks;
    Sum_Vid        := Sum_Vid        + SumV_SpApp;
    Sum_Discount   := Sum_Discount   + DiscountV;
    Sum_Pogash     := Sum_Pogash     + SumVPogash_SpApp;
    Sum_PogashNorm := Sum_PogashNorm + SumVPogashNorm_SpApp;
    Sum_Rashod     := Sum_Rashod     + SumVRashod_SpApp;
    Sum_UnRash     := Sum_UnRash     + SumVUnRash;
  }
end.
@@@@@@@@ @@@@@@@@@@@ &'&&&&&&&&.&& &'&&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@@@@@ &'&&&&&&&.&& &'&&&&.&&  &'&&&&&&.&& @@@@@@@@@@ &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&&
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������
�⮣� �� �ࠢ�� :
                     &'&&&&&&&&.&& &'&&&&&&&.&&                           &'&&&&&&&.&&                                   &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&&
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������
�⮣�:               &'&&&&&&&&.&& &'&&&&&&&.&&                           &'&&&&&&&.&&                                   &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&& &'&&&&&&&.&&
.}
��
.endform
