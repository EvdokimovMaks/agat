//********************************************************************************
//                                                        (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ��ࠢ����� �ந�����⢥���� �����⨪��
// ��ଠ ᮮ⢥��⢨� �᭮����� � ��������� �� ���� � �ந�����⢮
// � ��।�������
//********************************************************************************

#doc
��ଠ ᮮ⢥��⢨� �᭮����� � ��������� �� ���� � �ந�����⢮ � ��।�������</brief>
#end

.Set Name = 'SchManuf3'
.NameInList '������� �ଠ'
.hide
.fields
  nomer ddoc
  poluchat
  sklad
  np barkod mc ed kol summa kol_nakl summa_nakl otkl_kol otkl_sum
  party
  mc2
  Analit
  ed2 kol2 summa2 kol2_nakl summa2_nakl otklP_kol otklP_sum
  Summa_All SummaALL_Nakl Summa_Otkl
  PagePrn
.endfields
.{

        ������������ ��������� �� ������ � ������������ �  ^  ��  @@@@@@@@@@ � ���������.

    �����⥫� : ^
    ����� ���㧪�: ^

��������������������������������������������������������������������������������������������������������������������������������������������������������������������
 � �    ������������  �            ������������           � ������ � ������⢮ �     �㬬�      �  ������⢮ �    �㬬�       �  ���⮪/�����室 (+/-)
�/��       �����        �                                   �����७�ﳯ� �᭮�����  �� �᭮�����  � �� �������묳 �� ��������   �������������������������������
   �                    �                                   �         �            �                �             �                � �� ���-��   �  �� �㬬�
������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
&&& @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&&
.if spparty3
.{
  ^

   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&&
.}
.end
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������������������
                                                                                   &'&&&&&&&&&&&.&&                &'&&&&&&&&&&&.&&               &'&&&&&&&&&&&.&&��

.if PrintPage3
^
.else
��������������������������������������������������������������������������������������������������������������������������������������������������������������������
.end

.}
.endform



.linkform 'SchManuf3_01' prototype is SchManuf3
.NameInList '���������� �� ������ � ������������'

.fields
  nomer ddoc
  poluchat
  sklad
  np barkod mc ed kol summa kol_nakl summa_nakl otkl_kol otkl_sum
  party mc2 ed2 kol2 summa2 kol2_nakl summa2_nakl otklP_kol otklP_sum
  Summa_All SummaALL_Nakl Summa_Otkl
  PagePrn
.endfields
.{
        ������������ ��������� �� ������ � ������������ �  ^  ��  @@@@@@@@@@ � ���������.

    �����⥫� : ^
    ����� ���㧪�: ^

��������������������������������������������������������������������������������������������������������������������������������������������������������������������
 � �    ������������  �            ������������           � ������ � ������⢮ �      �㬬�     �  ������⢮ �    �㬬�       �  ���⮪/�����室 (+/-)
�/��       �����        �                                   �����७�ﳯ� �᭮�����  �� �᭮�����  � �� �������묳 �� ��������   �������������������������������
   �                    �                                   �         �            �                �             �                � �� ���-��   �  �� �㬬�
������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
&&& @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&&
.if spparty3
.{
   @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&&
.}
.end
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������������������
                                                                                   &'&&&&&&&&&&&.&&                &'&&&&&&&&&&&.&&               &'&&&&&&&&&&&.&&��

.if PrintPage3
^
.else
��������������������������������������������������������������������������������������������������������������������������������������������������������������������
.end

.}
.endform

.linkform 'SchManuf3_02' prototype is SchManuf3
.NameInList '���������� �� ������ � ������������ C ������ ���������'

.fields
  nomer ddoc
  poluchat
  sklad
  np barkod mc ed kol summa kol_nakl summa_nakl otkl_kol otkl_sum
  Party Analit ed2 kol2 summa2 kol2_nakl summa2_nakl otklP_kol otklP_sum
  Summa_All SummaALL_Nakl Summa_Otkl
  PagePrn
.endfields
.{

        ������������ ��������� �� ������ � ������������ �  ^  ��  @@@@@@@@@@ � ���������.

    �����⥫� : ^
    ����� ���㧪�: ^

��������������������������������������������������������������������������������������������������������������������������������������������������������������������
 � �    ������������  �            ������������           � ������ � ������⢮ �     �㬬�      �  ������⢮ �    �㬬�       �  ���⮪/�����室 (+/-)
�/��       �����        �                                   �����७�ﳯ� �᭮�����  �� �᭮�����  � �� �������묳 �� ��������   �������������������������������
   �                    �                                   �         �            �                �             �                � �� ���-��   �  �� �㬬�
������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
&&& @@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&&
.if spparty3
.{
   @@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&& &&&&&&&&.&&&& &'&&&&&&&&&&&.&&
.}
.end
.}
�������������������������������������������������������������������������������������������������������������������������������������������������������������������
                                                                                   &'&&&&&&&&&&&.&&                &'&&&&&&&&&&&.&&               &'&&&&&&&&&&&.&&��

.if PrintPage3
^
.else
��������������������������������������������������������������������������������������������������������������������������������������������������������������������
.end

.}
.endform