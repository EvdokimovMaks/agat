/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����｀皚�� �����                                          �
 � �ム瓱�        : 5.70                                                      �
 � ��Л�腑�┘    : �������� ��������                                         �
 � �癶モ痰▲��覃 : ����瘁�┤ ���痰��皋� ���え��牀※�                         �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#doc
�������� ��������
#end
.form KontrOtp
.p 60
.hide
.fields
 Pred
 Podr
 Mes God
 Period
 Name_Rees
 TabN Fio VidPos DataN DataOK Summa: double  SummaMatP: double ���_���_き: double ���_���_き: double ���_���キ�_き: double ���_���_���: double ���_���_きォ�� : double
 ISumma  ISummaMatP I���_���_き I���_���_き I���_���キ�_き I���_���_��� I���_���_きォ��
.endfields

  ^
  ^
  ^
  ^ ^
  ^
.{
.{
 ^^^^^^^^^^^^
.}
.}
 ^^^^^^^
.endform

.linkform 'KontrOtp_01' prototype is 'KontrOtp'
.nameinlist '���矗��� �皴竅���'
.p 60
.fields
CommonFormHeader
.endfields
^
.var KolList  : integer
     SumList1 : double
     SumList2 : double
     SumList3 : double
     SumList4 : double
     SumList5 : double
     SumMP    : double
     SumList6 : double
 .endvar
.fields
 Pred
 Podr
 Mes God
 Period
 Name_Rees
.endfields
.begin  KolList  := 0;
        SumList1 := 0;
        SumList2 := 0;
        SumList3 := 0;
        SumList4 := 0;
        SumList5 := 0;
        SumMP    := 0;
        SumList6 := 0;
   end.

  踳く爬閧┘   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  ^
  �����矗��� �皴竅��� �� ^ �メ閹 &&&& �.��
��  ^��

  ^

.{
.[h OverWrite
.begin KolList:= KolList+1 end.
�� 敖陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳堕陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳朕
 ���．�讚覃�            �.�.�.            �           �┐           �     ���� �皴竅��    �     �祠��    �     �祠��    �        ����腑痰〓 きォ        �����腑痰〓�����腑痰〓�
 �  ���ム  �                              �         �皴竅��         団陳陳陳陳賃陳陳陳陳陳�              �   ��皴���薑  団陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳巌��.��甌� 海�ォ ��瘍.�
 �         �                              �                         �     �    �    ��    �              �              凱���腮�.劾� ���筥�祿���キ��爿諷劾� ���筥�祿�ム┏��   �
 団陳陳陳陳田陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳陳陳陳田陳陳陳陳陳陳津陳陳陳陳田陳陳陳陳津陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳調
��.]h
.{
.begin SumList1 := SumList1 + Summa;
       SumMP    := SumMP    + SummaMatP;
       SumList2 := SumList2 + ���_���_き;
       SumList3 := SumList3 + ���_���_き;
       SumList4 := SumList4 + ���_���キ�_き;
       SumList5 := SumList5 + ���_���_���;
       SumList6 := SumList6 + ���_���_きォ��;
  end.
.fields
 TabN Fio VidPos DataN DataOK Summa SummaMatP ���_���_き ���_���_き ���_���キ�_き ���_���_��� ���_���_きォ��
.endfields
�� �&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&&�&&&&&&&&&&�&'&&&&&&&&&.&&�&'&&&&&&&&&.&&�&'&&&&.&�&'&&&&&&.&�&'&&&&&&&.&�&'&&&&&.&&�&'&&&&&.&&���
.}
.[f OverWrite
.fields
 KolList
 SumList1 SumMP SumList2 SumList3 SumList4 SumList5 SumList6
.endfields
�� 青陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳陳陳祖陳陳陳陳陳陳珍陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳潰��
��  �皰�� �� ��痰� &&&:                                                                       &'&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&.& &'&&&&&&.& &'&&&&&&&.& &'&&&&&.&& &'&&&&&.&&��
.begin SumList1:=0;
       SumMP   :=0;
       SumList2:=0;
       SumList3:=0;
       SumList4:=0;
       SumList5:=0;
       SumList6:=0;
  end.
.]f
.}
.fields
 KolList
 ISumma ISummaMatP I���_���_き I���_���_き I���_���キ�_き I���_���_��� I���_���_きォ��
.endfields
��
 ����腑痰〓 ��痰�� &&&

��  ����� �� ��������                                                                       &'&&&&&&&&&&&.&& &'&&&&&&&&&.&& &'&&&&.& &'&&&&&&.& &'&&&&&&&.& &'&&&&&.&& &'&&&&&.&&��
.endform
��������
