/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
 �                     (c) ��牆���罔� ���������, 1994,2000                  �
 � 蹍オ�        : ���������                                                �
 � ��痰ガ�       : ｯム�皋↓覃 ���矣�                                       �
 � �ム瓱�        : 5.80                                                     �
 � ��Л�腑�┘    : �ョ�碎 �爬�キ━�痰ォ 甄�Ν諷 瓷┐��                      �
 � �癶モ痰▲��覃 : ��莅� �┴皰� ��瓱�譽※� (ShV)                            �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
*/

#doc
�ョ�碎 �爬�キ━�痰ォ 甄�Ν諷 瓷┐��
#end
.form 'LstKlSk1'
.hide
.var
  IsFirstPrim  : boolean;
  IsPrim       : boolean;
.endvar
.{CheckEnter ChFilter
.fields
   pSkidka             : string
   pFilter_GrOrg       : string
   pFilter_Org         : string
   pFilter_GrPrices    : string
   pFilter_Prices      : string
   pFilter_PrMC        : string
   pFilter_GroupMCUsl  : string
   pFilter_MCUsl       : string
.endfields
  ^^^^^^^^
.}
.{CheckEnter ChVid0
.fields
  Npp_0
  IsUses_0
  GrOrg_0
  Org_0
  GrPrice_0
  Price_0
  PrMC_0
  GrMCUsl_0
  MCUsl_0
  Skid_Name_0
.endfields
   ^^^^^^^^^^
.}
.{CheckEnter ChVid1
.fields
  Npp_1
  IsUses_1
  GrOrg_1
  Org_1
  GrPrice_1
  PrMC_1
  GrMCUsl_1
  Skid_Name_1
.endfields
   ^^^^^^^^
.}
.{CheckEnter ChVid2
.fields
  Npp_2
  IsUses_2
  GrOrg_2
  Org_2
  Skid_Name_2
.endfields
   ^^^^^
.}

.endform

#doc
踸�キ━�痰� 甄�Ν諷 瓷┐��
#end
.linkform 'LstKlSk1_00' prototype is 'LstKlSk1'
.nameInList '踸�キ━�痰� 甄�Ν諷 瓷┐��'

.fields
  CommonFormHeader
.endfields
^
                                                  踸�キ━�痰� 甄�Ν諷 瓷┐��
.{CheckEnter ChFilter
  ����Ε�� 筥�赳琺:
.{ ?INTERNAL; (pSkidka <>'');
.Fields
   pSkidka
.EndFields
   - �� 瓷┐��:              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_GrOrg <>'');
.Fields
   pFilter_GrOrg
.EndFields
   - �� �珮��� ���矗��キ皰�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_Org <>'');
.Fields
   pFilter_Org
.EndFields
   - �� ���矗��キ矣:         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_GrPrices <>'');
.Fields
   pFilter_GrPrices
.EndFields
   - �� �珮��� �����-��痰��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_Prices <>'');
.Fields
   pFilter_Prices
.EndFields
   - �� �����-��痰�:         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_PrMC <>'');
.Fields
   pFilter_PrMC
.EndFields
   - �� �爬Л��� ��/�甄:     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_GroupMCUsl <>'');
.Fields
   pFilter_GroupMCUsl
.EndFields
   - �� �珮��� ��/�甄:       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{ ?INTERNAL; (pFilter_MCUsl <>'');
.Fields
   pFilter_MCUsl
.EndFields
   - �� ��/�甄:              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.}

.begin
  IsFirstPrim := True;
  IsPrim      := False;
end.

.{CheckEnter ChVid0
.fields
  Npp_0
  IsUses_0
  GrOrg_0
  Org_0
  GrPrice_0
  Price_0
  PrMC_0
  GrMCUsl_0
  MCUsl_0
  Skid_Name_0
.endfields
.{while IsFirstPrim=True

  ��踸�キキ�� �� ��Ж罔� 甎ユ�筥��罔���
  陳陳堕陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
      �      �         ���矗��キ硅             �          �����-��痰�            �                 ��/�甄                     �
    � � 踸- 団陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳田陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳調                 ��┐��
      階キ閧豎   �珮���    �    ���矗��キ�     �    �珮���     �   �����-��痰    �踸Л���    �珮���     �      ��/�甄        �
  陳陳田陳陳津陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳津陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.begin
  IsFirstPrim := False;
end.
.}
   @~@�@~@@@@�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@�@~@@@@@�@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{while IsFirstPrim=False
  陳陳祖陳陳珍陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳珍陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.begin
  IsFirstPrim := True;
  IsPrim      := True;
end.
.}
.begin
  IsFirstPrim := True;
end.

.{CheckEnter ChVid1
.fields
  Npp_1
  IsUses_1
  GrOrg_1
  Org_1
  GrPrice_1
  PrMC_1
  GrMCUsl_1
  Skid_Name_1
.endfields
.{while IsFirstPrim=True

  ��踸�キキ�� �� �珮��� ��Ж罔� 甎ユ�筥��罔���
  陳陳堕陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
      �      �         ���矗��キ硅             �               �        ��/�甄          �
    � � 踸- 団陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳�    �珮���     団陳陳陳堕陳陳陳陳陳陳陳調                 ��┐��
      階キ閧豎   �珮���    �    ���矗��キ�     � �����-��痰��  �踸Л���    �珮���      �
  陳陳田陳陳津陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳津陳陳陳津陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.begin
  IsFirstPrim := False;
end.
.}
   @~@�@~@@@@�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�@~@@@@@�@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{while IsFirstPrim=False
  陳陳祖陳陳珍陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳珍陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.begin
  IsFirstPrim := True;
  IsPrim      := True;
end.
.}
.begin
  IsFirstPrim := True;
end.

.{CheckEnter ChVid2
.fields
  Npp_2
  IsUses_2
  GrOrg_2
  Org_2
  Skid_Name_2
.endfields
.{while IsFirstPrim=True

  ��踸�キキ�� �� ぎ�祠キ矣 � 罐�����
  陳陳堕陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
      �      �         ���矗��キ硅              �
    � � 踸- 団陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳調                 ��┐��
      階キ閧豎   �珮���    �    ���矗��キ�      �
  陳陳田陳陳津陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.begin
  IsFirstPrim := False;
end.
.}
   @~@�@~@@@@�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.}
.{while IsFirstPrim=False
  陳陳祖陳陳珍陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.begin
  IsFirstPrim := True;
  IsPrim      := True;
end.
.}
.{while IsPrim=False
                                                     ��� �������������
.begin
  IsPrim      := True;
end.
.}
.endform