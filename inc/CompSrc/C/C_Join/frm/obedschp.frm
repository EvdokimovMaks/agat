//********************************************************************************
//                                                        (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ��ࢨ�� �㭪樨
// ���� �� ��ꥤ������� ��⮢
//********************************************************************************

#doc
  ��⮪��, �⮡ࠦ��騩 ��ॢ��� �㬬 ��᫥ ��ꥤ������ ��⮢.
#end

.Form obedschp

.hide
.fields
  CommonFormHeader1
  CommonFormHeader2
  NameTable
  DescrOldSch
  DescrNewSch
  Summa
.endfields
 ^ ^ ^
.{ ObedschP_cyrcle CheckEnter
 ^ ^ ^ 
.}
.endform
!
!
!
.linkform 'obedschp1' prototype is 'obedschp'
.fields
  CommonFormHeader1
  CommonFormHeader2
  Nametable
  DescrOldSch
  DescrNewSch
  Summa
.endfields
                           ��   ��ꥤ������ ��⮢��
������ ��⮢ (�ਥ����)   ^
���� ��⮢ (���筨�)   ^��
�������� ⠡���� ^
!��------------------------------------------------------------------------------
����������������������������������������������������������������������������������������Ŀ
� ��� ���(�����) ���筨��,       � ��� ���(�����) (�ਥ�����),     �  �㬬�   �
� ���祭�� ���                         � ���祭�� ���                         �          �
.{ ObedschP_cyrcle CheckEnter
����������������������������������������������������������������������������������������Ĵ
� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�
.}
������������������������������������������������������������������������������������������
.endform