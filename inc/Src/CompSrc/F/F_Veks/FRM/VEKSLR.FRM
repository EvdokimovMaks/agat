//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - ���ᥫ� � �।���
// ����� ॥��� ���ᥫ��, 業��� �㬠�, �।�⮢
//------------------------------------------------------------------------------

#doc
����� ॥��� ���ᥫ��, 業��� �㬠�, �।�⮢
#end

.set name='VekslR'
.nameinlist '������� �ଠ'
.hide
.fields

  bMarkedDocs : boolean  // �뢮����� ⮫쪮 ����祭�� ���㬥���

  Name_Doc

  OrgPlat : string
  OrgPl   : string
  OrgDerg : string
  OrgPol  : string
  OrgPlh  : string

  fSrDoc
  fNoBlnk

  fDatVipSt
  fDatVipEnd
  fDatOplSt
  fDatOplEnd
  fDatOBSt
  fDatOBEnd

  fVidVeksName
  fUslPogName

  fPlatName
  fPlName
  fPolName
  fPlhName

!.{
  fStatName
!.}

!.{
 StatName
 NameVid1
 NameVid2

 SrDoc
 NoDoc
 NoDocEnd
 NoBlnk
 kol    : double

 DatVip
 DatOpl
 DatOb

 Sum    : double
 SumV   : double
 SumPl  : double
 SumPlV : double
 Curr1
 Curr2

 PrGod  : double
 PrSimv

 PlatName
 PlName
 PolName
 PlhName
 DergName

 UslPog
 MestVip
 MestGah

 IsLeaf : word
 DocNRec : comp
!.}

 Itogo_Sum_Doc     : double
 Itogo_Sum_Opl     : double

 Itogo_Sum_Doc_Val : double
 Itogo_Sum_Opl_Val : double
 Itogo_Curr
.endfields

^ ^ ^ ^ ^ ^ ^

.if VekslFiltr
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.if VekslFiltrStat
.{
^
.}
.end
.end

.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

^ ^
.if VekslSingleCurrency
^ ^ ^
.end

.endform



.linkform 'VekslR01' prototype is 'VekslR'
.NameInList '������ ���㬥�⮢'
.group '������'
.p 80
.defo portrait
.fields
  CommonFormHeader
  Name_Doc
  if(bMarkedDocs,'(�� ����祭�� ���㬥�⠬)','')
.endfields
.[h
��                                                                                                                                                   ���� @Np@��
.]h
^
��
                                      ������ ^
                                     ^
.if VekslFiltr
.fields
                  fSrDoc                                         fNoBlnk                   OrgPlat         fPlatName
                  fVidVeksName                                   fDatVipSt     fDatVipEnd  OrgPl           fPlName
                  fUslPogName                                    fDatOplSt     fDatOplEnd  OrgPol          fPolName
                                                                 fDatOBSt      fDatOBEnd   OrgPlh          fPlhName
  fStatName
.endfields
�ਬ���� 䨫���...
���� ���㬥��   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ����� ���㬥�� @@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��� ���㬥��     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ��� �믨᪨ � @@@@@@@@@@ �� @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�᫮��� ����襭�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ��� ��襭�� � @@@@@@@@@@ �� @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                  ����.����襭 � @@@@@@@@@@ �� @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.if VekslFiltrStat
����� ���㬥��
.{
  ^
.}
.end
.end
.fields
                                                                                                                                  OrgPlat
                                                                                                                                  OrgPl
                                                                                                                                  OrgDerg
 StatName     SrDoc     DatVip     DatOb      NameVid1             Sum                   SumPl              PrGod        Curr1 PlatName
              NoDoc     DatOpl                NameVid2             SumV                  SumPlV                          Curr2 PlName
                                                                                                                               DergName
 StatName     SrDoc     DatVip     DatOb      NameVid1             Sum                   SumPl              PrGod        Curr1 PlatName
              NoDoc     DatOpl                NameVid2             SumV                  SumPlV                          Curr2 PlName
                                                                                                                               DergName
.endfields
.{
.[h
������������������������������������������������������������������������������������������������������������������������������������������������������������
   �����  �  ����/ �   ���   � ������.�                    �        �㬬�        �        �㬬�        � ��業� �����⠳      ^
 ���㬥�� �  �����  � �믨᪨/ � ����襭  �   ��� ���㬥��    �     �� ���㬥���    �       � �����      � ������� �      �      ^
           ����㬥�⠳ ��襭��  �          �                    �                     �                     �         �      �      ^
������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
.{?Internal;(IsLeaf = 0);��
@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&& &&&.&&&&& @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            @@@@@@@@@ @@@@@@@@@@            @@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&           @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.{?Internal;(IsLeaf = 1);
@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&& &&&.&&&&& @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            @@@@@@@@@ @@@@@@@@@@            @@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&           @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                                                                                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.fields
  Itogo_Sum_Doc
  Itogo_Sum_Opl
  Curr1
  Itogo_Sum_Doc_Val
  Itogo_Sum_Opl_Val
  Itogo_Curr
.endfields
                                            �⮣�:               &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&           @@@@@
.if VekslSingleCurrency
                                                                 &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&           @@@@@
.end
��
.endform




.linkform 'VekslR83' prototype is 'VekslR'
.NameInList '������ 業��� �㬠�'
.group '������ ��'
.p 80
.defo portrait
.fields
  CommonFormHeader
  Name_Doc
  if(bMarkedDocs,'(�� ����祭�� ���㬥�⠬)','')
.endfields
.[h
��                                                                                                                                                   ���� @Np@��
.]h
^
��
                                      ������ ^
                                     ^
.if VekslFiltr
.fields
                  fSrDoc                                         fNoBlnk                   OrgPlat         fPlatName
                  fVidVeksName                                   fDatVipSt     fDatVipEnd  OrgPl           fPlName
                  fUslPogName                                    fDatOplSt     fDatOplEnd  OrgPol          fPolName
                                                                 fDatOBSt      fDatOBEnd   OrgPlh          fPlhName
  fStatName
.endfields
�ਬ���� 䨫���...
���� ���㬥��   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ����� ���㬥�� @@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��� ���㬥��     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ��� �믨᪨ � @@@@@@@@@@ �� @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
�᫮��� ����襭�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ��� ��襭�� � @@@@@@@@@@ �� @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                  ����.����襭 � @@@@@@@@@@ �� @@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.if VekslFiltrStat
����� ���㬥��
.{
  ^
.}
.end
.end
.fields
                                                                                                                                  OrgPlat
                                                                                                                                  OrgDerg
 StatName     SrDoc     DatVip     DatOb      NameVid1             Sum                   SumPl              PrGod PrSimv Curr1 PlatName
              NoDoc     DatOpl                NameVid2             SumV                  SumPlV                          Curr2 DergName
.endfields
.{
.[h
������������������������������������������������������������������������������������������������������������������������������������������������������������
    �����   �  ����/ �   ���   � ������.�                    �        �㬬�        �        �㬬�        ���業Ⳃ���⠳      ^
  ���㬥��  �  �����  � �믨᪨/ � ����襭  �   ��� ���㬥��    �     �� ���㬥���    �       � �����      ��������      �      ^
             ����㬥�⠳ ��襭��  �          �                    �                     �                     �       �      �
������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
@@@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&& &&&.&&@ @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
              @@@@@@@@@ @@@@@@@@@@            @@@@@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&         @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.fields
  Itogo_Sum_Doc
  Itogo_Sum_Opl
  Curr1
  Itogo_Sum_Doc_Val
  Itogo_Sum_Opl_Val
  Itogo_Curr
.endfields
                                              �⮣�:               &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&         @@@@@
.if VekslSingleCurrency
                                                                   &'#&&&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&&&.&&         @@@@@
.end
��
.endform



.linkform 'VekslR02' prototype is 'VekslR'
.NameInList '������ ���筨��� �।�⮢����'
.group '������ ��'
.p 80
.defo portrait
.fields
  CommonFormHeader
  Name_Doc
  if (bMarkedDocs, '(�� ����祭�� ���㬥�⠬)', '')
.endfields
.[h
��                                                                                                                                                   ���� @Np@��
.]h
��^

                                      ������ ^
                                     ^
.if VekslFiltr
.fields
  fVidVeksName
  fDatVipSt     fDatVipEnd
  fDatOplSt     fDatOplEnd
  fDatOBSt      fDatOBEnd
  fStatName
.endfields
�ਬ���� 䨫���...
  ��� ���㬥��    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ��� ������    � @@@@@@@@@@ �� @@@@@@@@@@
  ��� �������    � @@@@@@@@@@ �� @@@@@@@@@@
  ����. ������     � @@@@@@@@@@ �� @@@@@@@@@@
.if VekslFiltrStat
����� ���㬥��
.{
  ^
.}
.end
.end
.fields
 StatName    NoDoc     MestVip           DatVip     DatOb      NameVid1          Sum                 SumPl               Sum - SumPl       PrGod     Curr1
                                         DatOpl                NameVid2          SumV                SumPlV              SumV - SumPlV               Curr2
.endfields
.{
.[h
������������������������������������������������������������������������������������������������������������������������������������������������������������
  �����   �  �����  �  ������������   � ����⨥/�  ����.   �       ���       �       �㬬�       �       �㬬�       �       �㬬�       � ��業� ������
 ���㬥�� ����㬥�⠳���筨�� �।��.� �����⨥ �  ������  �    ���㬥��    �    �� ���㬥���   ������祭��� �।�⢳ ᢮������ �।�� � ������� �
������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
@@@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&& &&&.&&&&& @@@@@@
                                        @@@@@@@@@@            @@@@@@@@@@@@@@@@@ &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&&           @@@@@@
������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.fields
  Itogo_Sum_Doc
  Itogo_Sum_Opl
  Itogo_Sum_Doc - Itogo_Sum_Opl
  Curr1
  Itogo_Sum_Doc_Val
  Itogo_Sum_Opl_Val
  Itogo_Sum_Doc_Val - Itogo_Sum_Opl_Val
  Itogo_Curr
.endfields
                                            �⮣�:                              &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&&           @@@@@@
.if VekslSingleCurrency
                                                                                &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&& &'#&&&&&&&&&&&&&.&&           @@@@@@
.end
��
.endform
