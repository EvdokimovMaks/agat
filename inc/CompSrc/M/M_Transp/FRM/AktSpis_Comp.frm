/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                                                  (c) ��牆���罔� ��������� �
 � �����皋�� 7.12, ����←キ┘ 矗��甎�珥��                                    �
 � ��М��� 筮爼� か� �ョ�皋 ���� 甎������                                    �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='AktSpis_Comp'
.Group '�����オ矣鉗┘'
.Group '�┃�'
.hide
.fields
! �爍��├�罔�
    Org
! �キウ��
    Valut
! ���� 筮爼�牀����� ����
    DateAkt
! 甎����┘: '���祠祀閧�爿�� ����爛�' / '��爛����' / '�≒���；�讚諷 荐�'
    TipCompA
!�爬腮�� 甅閧��
   sRemoval
! 甌痰�� ����瘁┬
  HeadComissPost HeadComissFIO
    ComissPost ComissFIO ComissTabN

! '���祠祀閧�爿�� ����爛�' / '��爛���'
    TipComp
! �瘠��� �� �����オ矣鉗竡
    ComponNRec
! ���� 甅閧��
    DateSp
! �瘠��� �� ��む�Гカキ┘ ������� �� (Transp.cPodr)
    KatPodrNRec
! �瘠��� �� ��
    TranspNRec
! ��爲� ����オ矣鉗ォ
    MarComp
! ��〓め��� ���ム ����オ矣鉗ォ
    CompZavNom CompNom
! イ. �牀．��: �� / き.
    EdProbeg
! ���皋腑瓷┤ �牀．�
    ProbegFakt
! ��爼�
    ProbegNorm
! �牀罐�� ├����
    Iznos
    Econom

! 荐�� / ���
ObjTip GarNom_PodrName GosNom MarkaName

! メ皀痰▲��覃 ├���
NPP_EI NPP_EI_S ShinaNRec_EI KatPodrNRec_EI TranspNRec_EI Marka_EI DatUst_EI DatSnat_EI RazmerShin_EI Nomer_EI Nomer2_EI Narab_EdIzm_EI ProbegNormShi_EI ProbegFaktShi_EI Stiom_EI DeltaProbeg_EI Econom_EI
! �イ��牀．�
NPP_N NPP_N_S ShinaNRec_N KatPodrNRec_N TranspNRec_N Marka_N DatUst_N DatSnat_N RazmerShin_N Nomer_N Nomer2_N Narab_EdIzm_N ProbegNormShi_N ProbegFaktShi_N Stiom_N DeltaProbeg_N Econom_N Econom_Sum
Post FIO

.endfields
.{
^
^
^
^
^

^ ^
 .{.?GroupComissTop;^ ^ ^.}
.{ CheckEnter GroupCompon
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter GroupShina
.{ CheckEnter ObjectSpis
^ ^ ^ ^
.{ CheckEnter EstIznos
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter NProbeg
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.{ CheckEnter ObjectSpisItog
^
.}
.}
.}
.{ CheckEnter GroupComissBottom
^ ^
.}
.{ CheckEnter InsBreakPage
.}
.}
.endform
