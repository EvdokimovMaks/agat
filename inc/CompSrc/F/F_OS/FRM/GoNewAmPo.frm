//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ��������� ��ॢ��� �� ����� ����⨧�樮���� ����⨪�
//------------------------------------------------------------------------------
#doc
  ��ଠ ��� ���� �������� ��ॢ��� �� ����� ����⨧�樮���� ����⨪�
#end
.set name='GoNewAmPo'
.nameinlist '���� ������� �ଠ'
.hide //����
.fields
   ���_���㬥��                                          : string
   ���_�ନ஢����_���㬥��                            : date
   NastrOS_Nrec                                           : comp
!
!//////////////////////
!  ���� �� ����窠�
   KatOS_Nrec                                             : comp    // ������� � ⥪�饬 ���⭮� ��ਮ��
   ArcIznos_Nrec                                          : comp    // ������� � ���⭮� ��ਮ�� �� ��娢�
   ArcIznos2_Nrec_�।��饣�_��ਮ��                     : comp    // �।��饣� ��ਮ��
!
   ���⮩_��ꥪ�                                         : word    //    isLeaf
   ��������_�����                                      : string  //  1 GetKatOsInNum(KatOS.nRec)
   ������������                                           : string  //  2 KatOS.NameOS
   ���_�����_�_��ᯫ����                              : date    //  3 KatOS.DatEK
   �⮨�����_�।��饣�_��ਮ��                          : double  //  4 ArcIznos2.Stoim
   �㬬�_�����_�।��饣�_��ਮ��                       : double  //  4 ArcIznos2.SumIzn ��� ArcIznos2.SumIzn + ArcIznos2.SIznM
   �⮨�����_�।��饣�_��ਮ��_2                        : double
   �㬬�_�����_�।��饣�_��ਮ��_2                     : double
   ���_�।��饣�_��ਮ��                                : string  //  5 VidNorma2.Kod
   ��ଠ_�।��饣�_��ਮ��                              : double  //  6 VidNorma2.Norma
   ���_����㯫����                                       : date    //  7 KatOS.DatOK
   ���                                                    : string  //  8 VidNorma.Kod
   ��ଠ                                                  : double  //  9 VidNorma.Norma
   ��ଠ⨢��_�ப_�ᯮ�짮�����                         : double  // 10 VidNorma.SrokIsp
   �㬬�_�����⨧�樨_��_�����                            : double  // 11 SpKatOS.SIznM
!                                                                   // � ����ᨬ��� �� ⮣� ⥪�騩 ��ਮ� ��� ��ਮ� �� ��娢� ��६ ᮮ⢥��⢥��� SpKatOS ��� Arciznos
   ��ࢮ��砫쭠�_�⮨�����                               : double    // SpKatOS.Stoim                  ��� Arciznos.Stoim
   �����_��_�����                                         : double    // SpKatOS.SIznM                  ��� Arciznos.SIznM
   �㬬�_�����                                           : double    // SpKatOS.SumIzn + SpKatOS.SIznM ��� Arciznos.SumIzn + Arciznos.SIznM
!
   ���ࠢ���_����樥��_��_KatOS_�।��饣�_��ਮ��    : double  //    ArcIznos2.KoofSm
   ���ࠢ���_����樥��_��_VidNorma_�।��饣�_��ਮ�� : double  //    ArcIznos2.KoofYsk
   ����樥��_������樨_�।��饣�_��ਮ��              : double  //    ArcIznos2.KoofIz
   ���ࠢ���_����樥��                                 : double  //    SpKatOS.PoprKoef ��� ArcIznos.KoofSm
   ���ࠢ���_����樥��_��_����                         : double  //    VidNorma.Norma   ��� ArcIznos.KoofYsk
   ����樥��_������樨_����⨧�樮����_���᫥���       : double  //    NastrOs.KIAO     ��� ArcIznos.KoofIz
   ���_��㯯�                                             : string  //    GrOs.KodGr
   ���_��㯯�                                             : string  //    GrOs.NameGr
   �ப_����������_�ᯮ�짮�����                          : double  //    SpKatOS.SrokIsp ��� ArcIznos.SrokIsp
   NameMol                                                : string
   �ப_�ᯮ�짮�����_��᫥_����㯫����                   : double  //  SpKastOS.IspCur
   �ப_�ᯮ�짮�����_��_����㯫����                      : double  //  SpKastOS.IspPs
   ArcIznos_�ப_�ᯮ�짮�����_��_����㯫����             : double  //  ArcIznos.IspCur
.endfields
.{
  ^
  ^
  ^
.{
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.endform

.linkform 'GoNewAmPo_01' prototype is 'GoNewAmPo'
.nameinlist '��������� ��ॢ��� �� ����� ����⨧�樮���� ����⨪�'
.fields
  '��ॢ��� '+ ���_���㬥�� + ' �� ����� ����⨧�樮���� ����⨪�'
   ���_�ନ஢����_���㬥��

   ��������_�����                                                       //  1
   ������������                                                            //  2
   DateToStr(���_�����_�_��ᯫ����, 'MM/YYYY')                         //  3
   �⮨�����_�।��饣�_��ਮ�� - �㬬�_�����_�।��饣�_��ਮ��        //  4
   ���_�।��饣�_��ਮ��                                                 //  5
   DoubleToStr(((1 / ��ଠ_�।��饣�_��ਮ��) * 100),'66666666')         //  6
   Months_Between (���_�ନ஢����_���㬥��, ���_����㯫����) - 1      //  7
   ���                                                                     //  8
   ��ଠ⨢��_�ப_�ᯮ�짮�����                                          //  9
   ��ଠ⨢��_�ப_�ᯮ�짮����� - (Months_Between (���_�ନ஢����_���㬥��, ���_����㯫����) - 1) // 10
   �㬬�_�����⨧�樨_��_�����                                             // 11
.endfields
.{
��                                       ���������
           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                �� �ᯮ�짮����� ��������� ᯮᮡ� ���᫥��� ����⨧�樨��
��������������������������������������������������������������������������������������������������������������������������������������������������������
           �                              �   ���  �                  � �� ���⠭������� �� �   �ப    � �� ���⠭������� �� � ����- �   �㬬�
�������멳         ������������         � ����� � �    ����筠�    �   �� 3.01.91 �. N4  �  �㦡�,  � �� 16.11.01�. N1668 �  ��   �  �����-
   �����   �            ��쥪�           � ��ᯫ�-�   �⮨����� ��   ���������������������Ĵ䠪��᪮����������������������Ĵ  �ப   �   ��樨
           �                              �  ���, �   @@@@@@@@@@�.   � ����  � ��ଠ⨢�� �  ���-��   � ����  � ��ଠ⨢�� � �㦡�  �  �� �����
           �                              ������,����                  �       � �ப �㦡� �  ����楢  �       � �ப �㦡� � ��9-��7 �  ��4.��10
������������������������������������������������������������������������������������������������������������������������������������������������������
    1      �               2              �    3    �        4         �   5   �       6     �     7     �   8   �      9      �   10    �     11
��������������������������������������������������������������������������������������������������������������������������������������������������������
.{
��@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@  &&&&&&&&&&&&&&&.&& @@@@@@@  &&&&&&&&&&&   &&&&&&&&&  @@@@@@@  &&&&&&&&&&&  &&&&&&&&& &&&&&&&&&.&&��
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.endform

.linkform 'GoNewAmPo_02' prototype is 'GoNewAmPo'
.nameinlist '��������� ��ॢ��� �� ����� ����⨧�樮���� ����⨪� � ��⮬ ��८業��'
.fields
  '��ॢ��� '+ ���_���㬥�� + ' �� ����� ����⨧�樮���� ����⨪�'
   ���_�ନ஢����_���㬥��

   ��������_�����                                                                                     //  1
   ������������                                                                                          //  2
   DateToStr(���_�����_�_��ᯫ����, 'MM/YYYY')                                                       //  3
   �⮨�����_�।��饣�_��ਮ��_2 - �㬬�_�����_�।��饣�_��ਮ��_2                                  //  4
   ���_�।��饣�_��ਮ��                                                                               //  5
   DoubleToStr(((1 / ��ଠ_�।��饣�_��ਮ��) * 100),'66666666')                                       //  6
   Months_Between (���_�ନ஢����_���㬥��, ���_����㯫����) - 1                                    //  7
   ���                                                                                                   //  8
   ��ଠ⨢��_�ப_�ᯮ�짮�����                                                                        //  9
   ��ଠ⨢��_�ப_�ᯮ�짮����� - (Months_Between (���_�ନ஢����_���㬥��, ���_����㯫����) - 1) // 10
   �㬬�_�����⨧�樨_��_�����                                                                           // 11
   �ப_����������_�ᯮ�짮�����                                                                         // 12
   ��ࢮ��砫쭠�_�⮨�����                                                                              // 13
   �ப_����������_�ᯮ�짮����� - (Months_Between(���_�ନ஢����_���㬥��,���_����㯫����) - 1)    // 14
   NameMol                                                                                               // 15
.endfields
.{
��                                       ���������
           @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                �� �ᯮ�짮����� ��������� ᯮᮡ� ���᫥��� ����⨧�樨��
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
           �                              �   ���  �                  � �� ���⠭������� �� �   �ப    � �� ���⠭������� �� � ����- �   �㬬�    �         �                  ������᪨��
�������멳         ������������         � ����� � �    ����筠�    �   �� 3.01.91 �. N4  �  �㦡�,  � �� 16.11.01�. N1668 �  ��   �  �����-   �  �ப   �  ��ࢮ��砫쭠�  ������� �
   �����   �            ��쥪�           � ��ᯫ�-�   �⮨����� ��   ���������������������Ĵ䠪��᪮����������������������Ĵ  �ப   �   ��樨    �����������    �⮨�����     �   �ப    �               ���
           �                              �  ���, �   @@@@@@@@@@�.   � ����  � ��ଠ⨢�� �  ���-��   � ����  � ��ଠ⨢�� � �㦡�  �  �� �����  � �ᯮ��- �                  �  �㦡�   �
           �                              ������,����                  �       � �ப �㦡� �  ����楢  �       � �ப �㦡� � ��9-��7 �  ��4.��10  � ������� �                  � ��12-��7  �
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
    1      �               2              �    3    �        4         �   5   �       6     �     7     �   8   �      9      �   10    �     11     �   12    �        13        �    14     �                15
��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
��@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@  &&&&&&&&&&&&&&&.&& @@@@@@@  &&&&&&&&&&&   &&&&&&&&&  @@@@@@@  &&&&&&&&&&&  &&&&&&&&& &&&&&&&&&.&& &&&&&&&&& &&&&&&&&&&&&&&&.&& &&&&&&&&&&& @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.endform
