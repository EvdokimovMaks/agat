//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 6.00 - ���ᥫ� � �।���
// ����� १���⮢ ��।������ ���⥦���� ���㬥��
//------------------------------------------------------------------------------

#doc
����� १���⮢ ��।������ ���⥦���� ���㬥��
#end

.set name='OplVeksl'
.hide

.fields
  MyNr       : comp     /* Nrec �� AppVeks ��� GrefKred */
  TipDk      : word     /* 81..88,185,186               */
  TipKred    : word     /* TiDk �� GrefKred             */
  DocName    : string   /* ��� ���㬥��                */
  NoAppKred  : string   /* ����� ��� ��� ��䨪�       */
  DatAppKred : date     /* ��� ��� ��� ��䨪�        */
  NoDoc      : string   /* ����� ᯥ�䨪�樨           */
  DatVip     : date     /* ��� ���㬥��               */
  StageTip   : string   /* ��� �⠯� ����襭�� �।��  */
  Sum_Veksl  : double   /* �㬬� ���㬥��              */
  SumCommon  : double   /* �㬬� ���⥦�                */
  Val2       : string   /* ����� ���㬥��             */
!-----------
  NoDoc2     : string   /* ����� ���⥦���� ���㬥��   */
  Dat_Op     : date     /* ��� ���⥦���� ���㬥��    */
  Sum        : double   /* �㬬� ���⥦���� ���㬥��   */
  Val        : string   /* ����� ���⥦���� ���㬥��  */
  SumNDE     : double   /* �㬬� ���⥦���� ���. � ���  */
  TipDoc     : string   /* ��� ���㬥��                */
.endfields

^ ^ ^
^ ^ ^
.{
^ ^ ^ ^ ^ ^
.{ VekslOpLoop CheckEnter
^ ^ ^ ^ ^ ^
.}
.}

.endform

!------------------------------------------------------
!------------------------------------------------------
!------------------------------------------------------
.linkform 'OplVeksl01' prototype is 'OplVeksl'
.group '���।������ �� ᯥ�䨪���'
.nameinlist '�������� ��।������'
.defo Landscape
.p 45
.fields
  CommonFormHeader
  DocName
  NoAppKred
  if (Longint(DatAppKred) > 0, DateToStr(DatAppKred, 'DD/MM/YYYY'), '')
  NoDoc
  if (Longint(DatVip) > 0, DateToStr(DatVip, 'DD/MM/YYYY'), '')
  Sum_Veksl
  SumCommon
  Val2
!-----------
  NoDoc2
  if (Longint(Dat_Op) > 0, DateToStr(Dat_Op, 'DD/MM/YYYY'), '')
  Sum
  Val
.endfields
��^��
             ��  ^ ^ �� ^��
.{
.[h
��                                                                                                                  ���� @Np@
���������������������������������������������������������������������������������������������������������������������������������
  � ���-�   �   ���   �  �㬬� �� ����樨  �    �㬬� ���⥦�    �����⠳� ����.���-⠳   ���   �    �㬬� ������     ������
���������������������������������������������������������������������������������������������������������������������������������
.]h
@@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& @@@@@@
.{ VekslOpLoop CheckEnter
                                                                            @@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& @@@@@@
.}
�����������������������������������������������������������������������������������������������������������������������������������
.}
.endform

!------------------------------------------------------
!------------------------------------------------------
!------------------------------------------------------
.linkform 'OplVeksl02' prototype is 'OplVeksl'
.group '���।������ �� ����-��䨪�� �।�⮢'
.nameinlist '�������� ��।������'
.defo Landscape
.p 45
.fields
  CommonFormHeader
  DocName
  NoAppKred
  if (Longint(DatAppKred) > 0, DateToStr(DatAppKred, 'DD/MM/YYYY'), '')
!-----------
  if (Longint(DatVip) > 0, DateToStr(DatVip, 'DD/MM/YYYY'), '')
  Sum_Veksl
  SumCommon
  Val2
!-----------
  NoDoc2
  if (Longint(Dat_Op) > 0, DateToStr(Dat_Op, 'DD/MM/YYYY'), '')
  Sum
!-----------
  NoDoc2
  if (Longint(Dat_Op) > 0, DateToStr(Dat_Op, 'DD/MM/YYYY'), '')
  Sum
  SumNDE
.endfields
��^
                        ��  ^ ^ �� ^��
.{
.[h
.{?Internal; (Val2 = '');
                                                                                                  ���� @Np@
��������������������������������������������������������������������������������������������������������������
   ���   �     �㬬� �⠯�     � �㬬� �� ���㬥�⠬ �����⠳� ����.���-⠳   ���   �        �㬬�
��������������������������������������������������������������������������������������������������������������
.}
.{?Internal; (Val2 <> '');
                                                                                                                        ���� @Np@
������������������������������������������������������������������������������������������������������������������������������������
   ���   �     �㬬� �⠯�     � �㬬� �� ���㬥�⠬ �����⠳� ����.���-⠳   ���   �   �㬬� � �����    �     �㬬� � ���
������������������������������������������������������������������������������������������������������������������������������������
.}
.]h
@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& @@@@@@
.{ VekslOpLoop CheckEnter
.{?Internal; (Val2 = '');
                                                              @@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&
.}
.{?Internal; (Val2 <> '');
                                                              @@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&&
.}
.}
.{?Internal; (Val2 = '');
������������������������������������������������������������������������������������������������������������
.}
.{?Internal; (Val2 <> '');
����������������������������������������������������������������������������������������������������������������������������������
.}
.}��
.endform

!------------------------------------------------------
!------------------------------------------------------
!------------------------------------------------------
.linkform 'OplVeksl03' prototype is 'OplVeksl'
.group '���।������ �� ����-��䨪�� ����襭�� �।�⮢'
.nameinlist '�������� ��।������'
.defo Landscape
.p 45
.fields
  CommonFormHeader
  DocName
  NoAppKred
  if (Longint(DatAppKred) > 0, DateToStr(DatAppKred, 'DD/MM/YYYY'), '')
!-----------
  if (Longint(DatVip) > 0, DateToStr(DatVip, 'DD/MM/YYYY'), '')
  StageTip
  Sum_Veksl
  SumCommon
  Val2
!-----------
  NoDoc2
  if (Longint(Dat_Op) > 0, DateToStr(Dat_Op, 'DD/MM/YYYY'), '')
  Sum
!-----------
  NoDoc2
  if (Longint(Dat_Op) > 0, DateToStr(Dat_Op, 'DD/MM/YYYY'), '')
  Sum
  SumNDE
.endfields
��^
                                     ��  ^ ^ �� ^��
.{
.[h
.{?Internal; (Val2 = '');
                                                                                                                      ���� @Np@
����������������������������������������������������������������������������������������������������������������������������������
   ���   �     ��� �⠯�     �     �㬬� �⠯�     �  ����襭��� �㬬�   �����⠳� ����.���-⠳   ���   �       �㬬�
����������������������������������������������������������������������������������������������������������������������������������
.}
.{?Internal; (Val2 <> '');
                                                                                                                                            ���� @Np@
��������������������������������������������������������������������������������������������������������������������������������������������������������
   ���   �     ��� �⠯�     �     �㬬� �⠯�     �  ����襭��� �㬬�   �����⠳� ����.���-⠳   ���   �   �㬬� � �����    �     �㬬� � ���
��������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.]h
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& @@@@@@
.{ VekslOpLoop CheckEnter
.{?Internal; (Val2 = '');
                                                                                  @@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&
.}
.{?Internal; (Val2 <> '');
                                                                                  @@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&&
.}
.}
.{?Internal; (Val2 = '');
��������������������������������������������������������������������������������������������������������������������������������
.}
.{?Internal; (Val2 <> '');
������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}��
.endform

!------------------------------------------------------
!------------------------------------------------------
!------------------------------------------------------
.linkform 'OplVeksl04' prototype is 'OplVeksl'
.group '���।������ �� ��䨪� ����襭�� ������������'
.nameinlist '�������� ��।������'
.defo Landscape
.p 45
.fields
  CommonFormHeader
  DocName
  NoAppKred
  if (Longint(DatAppKred) > 0, DateToStr(DatAppKred, 'DD/MM/YYYY'), '')
!-----------
  if (Longint(DatVip) > 0, DateToStr(DatVip, 'DD/MM/YYYY'), '')
  StageTip
  Sum_Veksl
  SumCommon
  Val2
!-----------
  NoDoc2
  if (Longint(Dat_Op) > 0, DateToStr(Dat_Op, 'DD/MM/YYYY'), '')
  Sum
  TipDoc
.endfields
��^
                                     ��  ^ ^ �� ^��
.{
.[h
                                                                                                                                                                              ���� @Np@
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
   ���   �       ��� �⠯�       �     �㬬� �⠯�     �  ����襭��� �㬬�   �����⠳  � ���-�   �   ���   �       �㬬�         �    �ਬ�砭��
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h
@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&& @@@@@@
.{ VekslOpLoop CheckEnter
                                                                                      @@@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}��
.endform
