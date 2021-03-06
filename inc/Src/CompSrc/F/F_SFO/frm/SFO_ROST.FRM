//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ���殤����
// ����� ��⮢�筮� ��������
//------------------------------------------------------------------------------

#doc
����� ���⮢�筮� ��������.<br>
#end
.Set name = 'SFO_RostVed'
.Hide
.Fields
  dFrom : Date
  dTo : Date
  Grouping : String
  isVacancyEnabled : String
  fltName : String
  Podr
  NomNum  SFOName  NormPer : double  UsePer : double  OutPer : double  NeedPer : double  DolgPer : double  OnStock : double  Sub : double
  Size Height Sex  NormPerS : double UsePerS : double OutPerS : double NeedPerS : double DolgPerS : double OnStockS : double SubS : double
.endfields
��砫� ��ਮ�� ^
����� ��ਮ��  ^
��㯯�஢�� ^
^ �����ᨩ
.{ cirFiltRost CheckEnter // ��⠭������� 䨫����
  ^
.}
.{
��㯯� ^
.{
��� ^
������������ ^
������⢮ �� ��ଠ� �� ��砫� ��ਮ�� ^
� ���짮����� �� ��砫� ��ਮ�� ^
��뢠�� � ����� ��ਮ�� ^
���ॡ����� �� ��ਮ� ^
������������� �� ��砫� ��ਮ�� ^
����稥 �� ᪫���� ^
�����/��墠⪠ ^
 �� ࠧ����/����/����:
.if SizesSFO
.{
  ������ ^
  ���� ^
  ��� ^
  ������⢮ �� ��ଠ� �� ��砫� ��ਮ�� ^
  � ���짮����� �� ��砫� ��ਮ�� ^
  ��뢠�� � ����� ��ਮ�� ^
  ���ॡ����� �� ��ਮ� ^
  ������������� �� ��砫� ��ਮ�� ^
  ����稥 �� ᪫���� ^
  �����/��墠⪠ ^
.}
.end
.}
.}
.endform

! �� ��࠭�� ���ࠧ�������

.Linkform SFO_RostVed01 prototype is SFO_RostVed
.Nameinlist '���⮢�筠� ���������'
.Group '���⮢�筠� ��������� �� ���ࠧ�������'
.Fields
  CommonFormHeader
  DateToStr(dFrom, 'DD/MM/YYYY')
  DateToStr(dTo, 'DD/MM/YYYY')
  isVacancyEnabled
  fltName : 'T:-'
  Grouping
  Podr
  NomNum  SFOName  NormPer  UsePer  OutPer  NeedPer
  Size Height Sex  NormPerS UsePerS OutPerS NeedPerS
.endfields
�� ^
                                                  ����������� ���������
                                           �� ��ਮ� � @~@@@@@@@@ �� @~@@@@@@@@
                                               �� ᯥ樠�쭮� ������, ��㢨
 ^
 ��⠭������� 䨫����:��
.{ cirFiltRost CheckEnter
   ^
.}

 �����������������������������������������������������������������������������������������������������������������������
   ���   �      ������������      ������� ����  ������-�� �� ��ଠ� ���� ���짮����� ���  ��뢠�� �  � ���ॡ�����
         �                        �      �       �   �     ��ਮ�      � ��砫� ��ਮ�� � ����� ��ਮ���  �� ��ਮ�
 �����������������������������������������������������������������������������������������������������������������������
.{
�� ^: ^��

.{
 @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@                    &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&& ��&'&&&&&&&&&&&&��
.if SizesSFO
                 ��� ⮬ �᫥:��
.{
                                   @@@@@@ @@@@@@@  @  &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&& ��&'&&&&&&&&&&&&��
.}

.end
.}
 ���������������������������������������������������������������������������������������������������������������������
.}��
.endform

! �� �ᥬ� �।�����

.Linkform SFO_RostVed02 prototype is SFO_RostVed
.Nameinlist '���⮢�筠� ���������'
.Group '���⮢�筠� ��������� �� �।�����'
.Fields
  CommonFormHeader
  DateToStr(dFrom, 'DD/MM/YYYY')
  DateToStr(dTo, 'DD/MM/YYYY')
  isVacancyEnabled
  fltName : 'T:-'
  NomNum  SFOName  NormPer  UsePer  OutPer  NeedPer  OnStock  Abs(Sub)  if (Sub < 0, '(�)', '(�)')
  Size Height Sex  NormPerS UsePerS OutPerS NeedPerS OnStockS Abs(SubS) if (SubS < 0, '(�)', '(�)')
.endfields
�� ^
                                                    ����������� ���������
                                             �� ��ਮ� � @~@@@@@@@@ �� @~@@@@@@@@
                                                 �� ᯥ樠�쭮� ������, ��㢨
 ^
 ��⠭������� 䨫����:��
.{ cirFiltRost CheckEnter
   ^
.}
��
 ����������������������������������������������������������������������������������������������������������������������������������������������������
   ���   �      ������������      ������� ����  ������-�� �� ��ଠ� ���� ���짮����� ���  ��뢠�� �  � ���ॡ����� �  ����稥   � �����/��墠⪠
         �                        �      �       �   �     ��ਮ�      � ��砫� ��ਮ�� � ����� ��ਮ���  �� ��ਮ�  �  �� ᪫��� �
 ����������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{
�� @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@��                    &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&& ��&'&&&&&&&&&&& &'&&&&&&&&&& &'&&&&&&&&&& @@@��
.if SizesSFO
                 ��� ⮬ �᫥:��
.{
                                   @@@@@@ @@@@@@@  @  &&&&&&&&&&&&&&&&& &&&&&&&&&&&&&&&& &&&&&&&&&&&&&& ��&'&&&&&&&&&&& &'&&&&&&&&&& &'&&&&&&&&&& @@@��
.}

.end
.}
 ��������������������������������������������������������������������������������������������������������������������������������������������������
.}��
.endform

.Linkform SFO_RostVed03 prototype is SFO_RostVed
.Nameinlist '���⮢�筠� ���������'
.Group '���⮢�筠� ��������� � ��������������'
.Fields
  CommonFormHeader
  DateToStr(dFrom, 'DD/MM/YYYY')
  DateToStr(dTo, 'DD/MM/YYYY')
  isVacancyEnabled
  fltName : 'T:-'
  NomNum  SFOName  NormPer  UsePer  OutPer  NeedPer  DolgPer  OnStock  Abs(Sub)  if (Sub < 0, '(�)', '(�)')
  Size Height Sex  NormPerS UsePerS OutPerS NeedPerS DolgPerS OnStockS Abs(SubS) if (SubS < 0, '(�)', '(�)')
.endfields
�� ^
                                                    ����������� ���������
                                             �� ��ਮ� � @~@@@@@@@@ �� @~@@@@@@@@
                                                 �� ᯥ樠�쭮� ������, ��㢨
 ^
 ��⠭������� 䨫����:��
.{ cirFiltRost CheckEnter
   ^
.}
��
 �����������������������������������������������������������������������������������������������������������������������������������������������������������
   ���   �      ������������      ������� ����  ��������. �� ��ଠ�� � ���짮����� � ��뢠�� �  � ���ॡ����� ���������. ���  ����稥  � �����/��墠⪠
         �                        �      �       �   �  �� ��ਮ�   ��� ���. ��ਮ�������� ��ਮ���  �� ��ਮ�  ����. ��ਮ��� �� ᪫��� �
 �����������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{
�� @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@��                    &&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&& ��&'&&&&&&&&&&& &'&&&&&&&&&& &'&&&&&&&&& &'&&&&&&&&&& @@@��
.if SizesSFO
                 ��� ⮬ �᫥:��
.{
                                   @@@@@@ @@@@@@@  @  &&&&&&&&&&&&&& &&&&&&&&&&&&&&& &&&&&&&&&&&&& ��&'&&&&&&&&&&& &'&&&&&&&&&& &'&&&&&&&&& &'&&&&&&&&&& @@@��
.}

.end
.}
 ���������������������������������������������������������������������������������������������������������������������������������������������������������
.}��
.endform
