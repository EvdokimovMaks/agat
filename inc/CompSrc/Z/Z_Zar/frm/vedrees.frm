/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2004 ��牆���罔� ���������                    �
 � 蹍オ�       : ���������                                                  �
 � ��痰ガ�      : ����｀皚�� �����                                           �
 � �ム瓱�       : 7.11                                                       �
 � ��Л�腑�┘   : �イ���痰� 爛メ矗�� �� �ムョ�甄キ�鍖                        �
 �                vedrees.vip                                                �
 � �癶モ痰▲��覃: ��甄����� ��碎鎰� ���え��牀↓�                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#doc
�イ���痰� 爛メ矗�� �� �ムョ�甄キ�鍖
vedrees.vip
#end
.set name='vedrees'
.p 60
.hide
.fields
 ��_�メ閹
 ��_���
 Pred
 Bank
 Bank_Tek KolRab:word Summa:double
 �礫_�爛� ����_＜�
.endfields
^^^^
.{ vedrees_01 CheckEnter
.{ vedrees_02 CheckEnter
 ^ ^ ^
.}
.}
^^
.endform
!
!
!
.Linkform 'vedrees_01' Prototype is 'vedrees'
.nameinlist '�イ���痰� 爛メ矗�� �� �ムョ�甄キ�鍖'
.p 60
.var KolList: integer
     SumList: double
     RabList: longint
     ItogSum: double
     ItogRab: longint
.endvar
.fields
CommonFormHeader
.endfields
^
.fields
 ��_�メ閹
 ��_���
 Pred
 Bank
.endfields
.begin  KolList:= 0
        SumList:= 0
        RabList:= 0
        ItogSum:= 0
        ItogRab:= 0
        end.
��                                          �������������
           爛メ矗�� �� �ムョ�甄キ�鍖 �� ^ &&&& �.
           ��｀皚┴�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           ���皀Ν�� ��珮腑�┘ N ___________ �� ____  ____________  2004 �.
           ���竍�皀�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{ vedrees_01 CheckEnter
.[h OverWrite
.begin KolList:=KolList+1 end.
 陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
              ��━キ����┘ �����                     ����. 腑��▲��   �祠�� (珮�.)
 陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.]h��
.{ vedrees_02 CheckEnter
.fields
  Bank_Tek KolRab Summa
.endfields
.begin SumList:= SumList + Summa
       RabList:= RabList + KolRab
       ItogSum:= ItogSum + Summa
       ItogRab:= ItogRab + KolRab
end.
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'~&&&&&&&&&�&'&&&&&&&&&&&&&&&&&&&&&&&&.&&��
.}
.[f OverWrite
.fields
 KolList
 RabList
 SumList
.endfields
�� 陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
 �皰�� �� ��痰� &&&:                                  &'~&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&&&&&&.&&��
.begin SumList:=0; RabList:= 0 end.
.]f
.}
.fields
 ItogRab
 ItogSum
 KolList
 DoubleToString(0, ItogSum)
 �礫_�爛� ����_＜�
.endfields
��                                  ����� �� ���������  &'~&&&&&&&&& &'&&&&&&&&&&&&&&&&&&&&&&&&.&&��
�� ����腑痰〓 ��痰�� &&&
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  �礫�〓え皀�� �爛く爬閧��  ____________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

  ���↓覃 ＜紕��皀�         ____________________ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.endform
