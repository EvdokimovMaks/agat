//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.85 - �᭮��� �।�⢠
// �������� ��⠢����� ����� ��ꥪ⠬�
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#doc
�������� ��⠢����� ����� ��ꥪ⠬�
#end

.set name = 'RepMoveMc'
.hide
.fields
  //---------------------------------------------
  TiDk: word // 15 - ��, 16 - ���

  OsMcMovAll_nRec
  OsMcMovAll_DatOb : date

  KatMcCur_nRec
  KatMcCur_Name
  KatMcCur_Type
  OsMcCur_nRec
  OsMcCur_BarKod

  // �� �������
  KatOsOld_NRec
  KatOsOld_Name
  KatOsOld_InNum
  // �����.������ � OsMc
  KatMcOld_nRec
  KatMcOld_Name
  OsMcOld_nRec
  OsMcOld_BarKod

  // � ������
  KatOsNew_NRec
  KatOsNew_Name
  KatOsNew_InNum
  // �����.������ � OsMc
  KatMcNew_nRec
  KatMcNew_Name
  OsMcNew_nRec
  OsMcNew_BarKod


  //---------------------------------------------
.endfields

.{
   TiDk ^

.{ RepMoveMc_Body CheckEnter

   OsMcMovAll_nRec  ^
   OsMcMovAll_DatOb ^

   KatMcCur_nRec    ^
   KatMcCur_Name    ^
   KatMcCur_Type    ^
   OsMcCur_nRec     ^
   OsMcCur_BarKod   ^

   // �� �������
   KatOsOld_NRec    ^
   KatOsOld_Name    ^
   KatOsOld_InNum   ^
   // �����.������ � OsMc
   KatMcOld_nRec    ^
   KatMcOld_Name    ^
   OsMcOld_nRec     ^
   OsMcOld_BarKod   ^

   // � ������
   KatOsNew_NRec    ^
   KatOsNew_Name    ^
   KatOsNew_InNum   ^
   // �����.������ � OsMc
   KatMcNew_nRec    ^
   KatMcNew_Name    ^
   OsMcNew_nRec     ^
   OsMcNew_BarKod   ^

.}
.}

.endform


!#ifdef __YUKOS_OSSP___
//*******************************************************************
.linkform 'RepMoveMc01' prototype is 'RepMoveMc'
.nameinlist '�������� ��⠢����� ����� ��ꥪ⠬�'
.defo portrait
.fields
  CommonFormHeader
  //---------------------------------------------
  '�������� ��⠢����� ����� ��ꥪ⠬� ' +
    if (TiDk = 15, '�᭮���� �।��',
     if(TiDk = 16, '�����ਠ���� ��⨢��', '???'))

  KatMcCur_Name
  KatMcCur_Type

  OsMcCur_BarKod
  if (longint(OsMcMovAll_DatOb)=0,'',DateToStr(longint(OsMcMovAll_DatOb), 'DD/MM/YYYY'))

  KatOsOld_Name
  KatOsOld_InNum

  KatOsNew_Name
  KatOsNew_InNum
  //---------------------------------------------
.endfields
�� ^
��                               @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��.{
.[H
                                                                                                                         ���� @np@
������������������������������������������������������������������������������������������������������������������������������������
       ������������ ��        ����������������멳   ���   �            �� ��ꥪ�             �             � ��ꥪ�
                              �   �     �����    � ����樨 ������������������������������������������������������������������������
                              �   �              �          �   ������������     � ��������  �   ������������     � ��������
                              �   �              �          �                    �    �����     �                    �    �����
������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ RepMoveMc_Body CheckEnter
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@ @@@@@@@@@@@@@@ @~@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@
.}
.[F
�����������������������������������������������������������������������������������������������������������������������������������
.]F
.}��
.endform

//*******************************************************************
!#end //__YUKOS_OSSP__
