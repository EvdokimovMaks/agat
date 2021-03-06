//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.00 - ����� ������ �����⨪�
// ����� ��� �������
//------------------------------------------------------------------------------

#doc
����� ��� �������
#end
.set name='DolgOpl'
!.test
.hide
.fields
  dd1:date          //   1
  dd2:date          //   2
  dd3:date          //   3
  sOpr:string
  NameTypes :string
  AllKontr:longint     //   4
  pDescr:string     //   5
  pDescrFIO:string  //   6
  pDesGr:string     //   7
  pDesGrFIO:string  //   8
.endfields
123  45678
^^^^^^^^^^
.{CheckEnter dKontr
.fields
  Kontr
.endfields
1
^
.{CheckEnter DKatSopr
.fields
  nRecBD  :comp
  nRecKS  :comp
  DOpr    :date        //  1
  sPPS    :string
  Sum     :double      //  2
  Dolg    :double      //  3
  Srok    :word        //  4
  DOpl    :date        //  5
  PDolg   :double      //  6
  PrDn    :longint     //  7
  Descr   :string      //  8
  Manager :string      //  9
  dOpl_BaseDoc : date  // 10
  Srok_BaseDoc : word  // 11
.endfields
  1 2345678901
^^^^^^^^^^^^^^
.{CheckEnter DKatSopr1
.fields
  nRecKS1  :comp
  DOpr1    :date       //  1
  Sum1     :double     //  2
  Dolg1    :double     //  3
  Descr1   :string     //  4
  Manager1 :string     //  5
.endfields
 12345
^^^^^^
.}
.}
.}
.endform

!--------------------------------------------------------------------------------------------------------------------
#doc
������������ �� ��������
���� � ����祭��� ������᪮� ������������
#end
.linkform 'DolgOpl_01' prototype is 'DolgOpl'
.NameInList '���� � ����祭��� ������᪮� ������������'
.Group '������������ �� ��������'
.var
  KDolg  :double
  KPDolg :double
  IDolg  :double
  IPDolg :double
.endvar
.fields
  CommonFormHeader
  DateToStr(dd3,'DD/MM/YYYY')
  '�� '+sOpr+NameTypes+' �� ��ਮ� � '+DateToStr(dd1,'DD/MM/YYYY')+' �� '+DateToStr(dd2,'DD/MM/YYYY')
.endfields
.begin
  IDolg  :=0.0;
  IPDolg :=0.0;
end.
��^

                                      �����
                      � ������������ ����������� �������������
                                  �� @#@@@@@@@@

!                      �� �������� � @#@@@@@@@@ �� @#@@@@@@@@
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
���������������������������������������������������������������������������������������������Ŀ
����-�   ���   � �������������   �ப   �����窠� ����祭��� ������.�    �������� �  �
������ ���㧪� �   �� �����  �  ������  ����⥦� � ������������� ����   ������ ��������� �
�������������������������������������������������������������������������������������������Ĵ
�(1) �   (2)    �      (3)     �    (4)   �   (5)  �      (6)     �   (7)  �      (8)       �
�������������������������������������������������������������������������������������������Ĵ��
!    �01/01/1997�99'999'999'999�01/01/1997�   30   �99'999'999'999�   10   �                �
!�⮣� �� ��������:
!�⮣�:
.{CheckEnter DKontr
.fields
  Kontr
.endfields
.begin
  KDolg  :=0.0;
  KPDolg :=0.0;
end.
�����@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@���
�    ��������������������������������������������������������������������������������������Ĵ��
.{CheckEnter DKatSopr
.fields
  DateToStr(DOpr,'DD/MM/YYYY') Dolg DateToStr(DOpl,'DD/MM/YYYY') Srok   PDolg  PrDn  Manager sPPS
.endfields
���    �@#@@@@@@@@�&'&&&&&&&&&.&&�@#@@@@@@@@�&#&&&.  �&#'&&&&&&&&.&&�&#&&&.  �@#@@@@@@@@@@@@@@� ^��
.{CheckEnter DKatSopr1
.}
.begin
  KDolg  :=KDolg  + Dolg ;
  KPDolg :=KPDolg + PDolg;
end.
.}
.fields
                    KDolg                               KPDolg
.endfields
���������������������������������������������������������������������������������������������Ĵ
����� ��������:   �����&'&&&&&&&&&.&&���          �        ���&#'&&&&&&&&.&&���        �                �
�������������������������������������������������������������������������������������������Ĵ��
.begin
  IDolg  :=KDolg  + IDolg ;
  IPDolg :=KPDolg + IPDolg;
end.
.}
.fields
                    IDolg                               IPDolg
.endfields
���������������������������������������������������������������������������������������������Ĵ
����⮣�:         �����&'&&&&&&&&&.&&���          �        ���&#'&&&&&&&&.&&���        �                �
�����������������������������������������������������������������������������������������������

.endform

!--------------------------------------------------------------------------------------------------------------------

#doc
�������� � ��᫥���騬� ���㧪���
���� �� ��㯯�� ������᪮� ������������
#end
.linkform 'DolgOpl_02' prototype is 'DolgOpl'
.NameInList '���� �� ��㯯�� ������᪮� ������������'
.Group '�������� � ��᫥���騬� ���㧪���'
.var
  KDolg  :double
  KPDolg :double
  KSum1  :double
  IDolg  :double
  IPDolg :double
  ISum1  :double
.endvar
.fields
  CommonFormHeader
  DateToStr(dd3,'DD/MM/YYYY')
  '�� '+sOpr+NameTypes+' �� ��ਮ� � '+DateToStr(dd1,'DD/MM/YYYY')+' �� '+DateToStr(dd2,'DD/MM/YYYY')
.endfields
.begin
  IDolg  :=0.0;
  IPDolg :=0.0;
  ISum1  :=0.0;
end.
��^

                                      �����
                      �� ������� ����������� �������������
                                  �� @@@@@@@@@@

!                      �� �������� � @#@@@@@@@@ �� @#@@@@@@@@
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                (� ��������� �㡫��)��
��������������������������������������������������������������������������������������������Ŀ
����-�����窠�������������쳏���祭��� �����祭����᫥���騥 ���㧪��    ��������    �
���������⥦� �  �� �����  ��������������   ����   ��������������������Ĵ    � �����     �
�    �        �             �             �          �   ���   �  �㬬�  �   ���������    �
������������������������������������������������������������������������������������������Ĵ
�(1) �   (2)  �     (3)     �     (4)     �    (5)   �    (6)   �   (7)   �      (8)       �
������������������������������������������������������������������������������������������Ĵ��
!    �   30   �999'999'999  �99'999'999   � >30 ���� �21/02/1997� 999'999 �                �
!�⮣� �� ��������:
!�⮣�:
.{CheckEnter dKontr
.fields
  Kontr
.endfields
.begin
  KDolg  :=0.0;
  KPDolg :=0.0;
  KSum1  :=0.0;
end.
�����@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@���
�    �������������������������������������������������������������������������������������Ĵ��
.{CheckEnter DKatSopr
.fields
       Srok Dolg/1000000.0 PDolg/1000000.0 If(PrDn<=5,'<=5',
                                             If(PrDn<=10,'> 5',
                                             If(PrDn<=15,'>10',
                                             If(PrDn<=20,'>15',
                                             If(PrDn<=30,'>20','>30'))))+' ����')
                                                                            Manager
.endfields
���    �&#&&&.  �&'&&&&&&&&.&&�&#'&&&&&&&.&&�@#~@@@@@@@�          �         �@#@@@@@@@@@@@@@@���
.{CheckEnter DKatSopr1
.fields
                                 DateToStr(DOpr1,'DD/MM/YYYY') Sum1/1000000.0  Manager1
.endfields
���    �        �             �             �          �@@@@@@@@@@�&'&&&&.&&�@#@@@@@@@@@@@@@@���
.begin
  KSum1  :=KSum1  + Sum1;
end.
.}
.begin
  KDolg  :=KDolg  + Dolg;
  KPDolg :=KPDolg + PDolg;
end.
.}
.fields
            KDolg/1000000.0   KPDolg/1000000.0               KSum1/1000000.0
.endfields
��������������������������������������������������������������������������������������������Ĵ
����� ��������: �����&#'&&&&&.&&  �����&#'&&&&&.&&  ���          �          ���&#'&.&&  ���                �
������������������������������������������������������������������������������������������Ĵ��
.begin
  IDolg  :=KDolg  + IDolg ;
  IPDolg :=KPDolg + IPDolg;
  ISum1  :=KSum1  + ISum1;
end.
.}
.fields
            IDolg/1000000.0 IPDolg/1000000.0                   ISum1/1000000.0
.endfields
��������������������������������������������������������������������������������������������Ĵ
����⮣�:       �����&'&&&&&&.&&  �����&#'&&&&&.&&  ���          �          ���&#'&&&.  ���                �
����������������������������������������������������������������������������������������������

.endform

!--------------------------------------------------------------------------------------------------------------------

#doc
�ண��� �� ����
�ண��� ����㯫���� �������� �।��
#end
.linkform 'DolgOpl_03' prototype is 'DolgOpl'
.NameInList '�ண��� ����㯫���� �������� �।��'
.Group '�ண��� �� ����'
.var
  KDolg  :double
  IDolg  :double
.endvar
.fields
  CommonFormHeader
  DateToStr(dd3,'DD/MM/YYYY')
  '�� '+sOpr+NameTypes+' �� ��ਮ� � '+DateToStr(dd1,'DD/MM/YYYY')+' �� '+DateToStr(dd2,'DD/MM/YYYY')
.endfields
.begin
  IDolg  :=0.0;
end.
��^

                       ������� ����������� �������� �������
                                  �� @#@@@@@@@@

!                      �� �������� � @#@@@@@@@@ �� @#@@@@@@@@
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
��������������������������������������������������������������������������Ŀ
� ������������ ���㯠⥫�                                 � �㬬� � ����� �
��������������������������������������������������������������������������Ĵ
�                            (1)                          �      (2)       �
��������������������������������������������������������������������������Ĵ
!                                                         �999'999'999'999 �
.{CheckEnter dKontr
.begin
  KDolg  :=0.0;
end.
.{CheckEnter DKatSopr
.{CheckEnter DKatSopr1
.}
.begin
  If (dOpl=dd3) KDolg  :=KDolg  + Dolg;
end.
.}
.fields
  Kontr                                                        KDolg
.endfields
.{?Internal;KDolg>=1.0
� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&.&& �
.}
.begin
  IDolg  :=KDolg  + IDolg ;
end.
.}
.fields
                                                               IDolg
.endfields
��������������������������������������������������������������������������Ĵ
����⮣� �ண��� ����㯫����:                               �����&'&&&&&&&&&&.&& ���
����������������������������������������������������������������������������

.endform

!--------------------------------------------------------------------------------------------------------------------
