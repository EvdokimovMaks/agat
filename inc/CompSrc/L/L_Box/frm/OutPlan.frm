#doc
���� ��।������ �� �� �祩���
#end
.form 'OutPlan'
.hide
.fields
  freeMC  : boolean
  NaklNum : string
  Sklad   : string
.endfields
^^^
.fields
  Box   : string
  MC    : string
  Kol   : double
  EdIzm : string
  Podr  : string
.endfields
.{CHECKENTER MainLoopOUT
^^^^^
.}
.fields
  MC2    : string
  Kol2   : double
  EdIzm2 : string
  Podr2  : string
.endfields
.{CHECKENTER FreeLoopOUT
^^^^
.}
.endform


#doc
���� ��।������ �� �� �祩���
#end
.linkform 'BoxPlanOutIer' prototype is 'OutPlan'
.NameInList '���� ��।������ �� �� �祩���'
.DEFP PA4
.DEFO PORTRAIT
.PAPER PA4
.ORIENT PORTRAIT
.LL 80
.LM 15
.TM 10
.BM 10
.RM 1
#include format2.frn
.fields
  NaklNum
//  Sklad
.endfields
��                                    ���� ᯨᠭ�� �� �� �祥� �࠭����
                                     �� ��������� � @@@@@@@@@@@@@@@@@@@@@@@��

�������������������������������������������������������������������������������������������������������������������Ŀ
� ���ࠧ������� �                     �祩��                   �      ���業�����     �  ������⢮  �   ��. ���.   �
�������������������������������������������������������������������������������������������������������������������Ĵ
.fields
  Podr
  Box
  MC
  DoubleToStr(Kol, Kol_Pr)
  EdIzm
.endfields
.{CHECKENTER MainLoopOUT
� @@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@@@@@@@ � &'&&&&&&&&&& � @@@@@@@@@@@@ �
.}
.{?INTERNAL; freeMC = true
�������������������������������������������������������������������������������������������������������������������Ĵ
� ���ᯫ���஢���� � ᯨᠭ�� ��:                                                                                 �
�������������������������������������������������������������������������������������������������������������������Ĵ
.}
.fields
  Podr2
  MC2
  DoubleToStr(Kol2, Kol_Pr)
  EdIzm2
.endfields
.{CHECKENTER FreeLoopOUT
� @@@@@@@@@@@@@@�                                              � @@@@@@@@@@@@@@@@@@@@ � &'&&&&&&&&&& � @@@@@@@@@@@@ �
.}
���������������������������������������������������������������������������������������������������������������������
.endform
