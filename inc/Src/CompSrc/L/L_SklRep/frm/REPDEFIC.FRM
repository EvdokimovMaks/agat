/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����←キ┘ ���祚����                                      �
 � �ム瓱�        : 5.00                                                      �
 � ��Л�腑�┘    : �砒モ�-���矗��� 皰��爿諷 ����甌�-�ヤ�罔硅                 �
 � �癶モ痰▲��覃 : �窶．��� �爬� �����※� (YURI)                             �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

#doc
�砒モ�-���矗��� 皰��爿諷 ����甌�-�ヤ�罔硅
#end
.set name='repdefic'
.NameInList '��М��� 筮爼�'
.group 'DefPredpr'
.group 'DefPodr'
.hide
#include format2.frn
.fields
 dataDAY dataMONTH dataYEAR
 Npp NamTovar bARKOD KGROUP UchEd
 MinZap : double
 Nal    : double
 Defic  : double
 NamSklad
 NalSlad : double
 DefSklad: double
.endfields

                       ������ ���������� �������
                         ^^^
�� 陳陳賃陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳
 ���ム���━キ����┘ 皰����    ����キ���矣爿覃 ���ム   �  ��� �珮���   � �腑皚�� ���爼�皋↓覃�����腮� ��� �ヤ�罔�
  �/� �                       �                       �   皰����      � イ┃��� 階┃.�����  劾爛く爬閧.�
 陳陳珍陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳��
.{
�� &&&&& @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&& &'&&&&&&&& &'&&&&&&&��
.{ CheckEnter repdeficPodr
         @@@@@@@@@@@@@@@@@@@@@@@                                                               &'&&&&&&&& &'&&&&&&&
.}
.}

.endform

#doc
������ ���������� �������
#end
.linkform 'repdefic_01' prototype is repdefic
.NameInList '������ ���������� �������'
.group 'DefPredpr'
.fields
 CommonFormHeader
 dataDAY dataMONTH dataYEAR
Npp NamTovar bARKOD KGROUP UchEd DoubleToStr(MinZap, Kol_Pr) DoubleToStr(Nal, Kol_Pr) DoubleToStr(Defic, Kol_Pr)
.endfields
 ^

                          �����甌� ぅ筥罔皚諷 皰��牀���
                            ^^^
�� 陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳�
 ���ム���━キ����┘ 皰����                       ����キ���矣爿覃 ���ム   �  ��� �珮���   � �腑皚�� ���爼�皋↓覃�����腮� ��� �ヤ�罔�
  �/� �                                          �                       �   皰����      � イ┃��� 階┃.�����  劾爛く爬閧.�
 陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳���
.{
�� &&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&& &'&&&&&&&& &'&&&&&&&��
.{ CheckEnter repdeficPodr
.}
.}
.endform

#doc
������ ���������� ������� � ��оェ� 瓷��ぎ�
#end
.linkform 'repdefic_02' prototype is repdefic
.NameInList '������ ���������� ������� � ��оェ� 瓷��ぎ�'
.group 'DefPodr'
.group 'DefPredpr'
.fields
 CommonFormHeader
 dataDAY dataMONTH dataYEAR
Npp NamTovar bARKOD KGROUP UchEd DoubleToStr(MinZap, Kol_Pr) DoubleToStr(Nal, Kol_Pr) DoubleToStr(Defic, Kol_Pr)
    NamSklad                            DoubleToStr(NalSlad, Kol_Pr) DoubleToStr(DefSklad, Kol_Pr)
.endfields
 ^

                          �����甌� ぅ筥罔皚諷 皰��牀���
                            ^^^
�� 陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳陳陳陳陳堕陳陳陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳�
 ���ム���━キ����┘ 皰����                       ����キ���矣爿覃 ���ム   �  ��� �珮���   � �腑皚�� ���爼�皋↓覃�����腮�   � �ヤ�罔�
  �/� �                                          �                       �   皰����      � イ┃��� 階┃.�����  �          �
 陳陳珍陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳���
.{
�� &&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@ @@@@@@@@@ &'&&&&&&&&& &'&&&&&&&& &'&&&&&&&��
.{ CheckEnter repdeficPodr
��               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                  &'&&&&&&&& &'&&&&&&& ��
.}
.}
.endform
