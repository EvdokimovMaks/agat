//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ������� ��� ����ᮢ
// �������� ᢥન ����ᮢ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠
//------------------------------------------------------------------------------

#doc
�������� ᢥન ����ᮢ �� � ࠧ१� ��ꥪ⮢ 楫����� �����祭��
#end
.Set Name = 'UksRepStock'
.Hide
.Fields
  dDate  sEdMode  sFilter
  sKolName sCurVal
  sMC sBarKod sCurEd fKolMtr fSumMtr fKolRes fSumRes fKolSkl fSumSkl fKolRst fSumRst
.EndFields
  ^^^^^
.{
  ^^^^^^^^^^^
.}
.EndForm

!-----------------------------------------------------------------------------
#doc
�������� ᢥન ����ᮢ ��
#end
.LinkForm 'UksRepStock_01' prototype is 'UksRepStock'
.NameInList '�������� ᢥન ����ᮢ ��'
.Group 'WithEd'
.Fields
  dDate
.EndFields

                      �������������
        ���⪮� ��� �� 楫����� � ᪫��᪮�� ����
                 �� ���ﭨ� �� ^ �.

.{?Internal;sEdMode <> ''
.Fields
  sEdMode
.EndFields
��^��
.}// Internal
.{?Internal;sFilter <> ''
.Fields
  sFilter
.EndFields
�������� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}// Internal
.Fields
  sKolName : 'P:C' sCurVal : 'P:C'
  sKolName : 'P:C' sCurVal : 'P:C'
  sKolName : 'P:C' sCurVal : 'P:C'
  sKolName : 'P:C' sCurVal : 'P:C'
  sMC : 'T:R' sBarKod sCurEd fKolMtr fSumMtr fKolRes fSumRes fKolSkl fSumSkl fKolRst fSumRst
.EndFields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
   ������������ ���業����    � ���������. �  ������  �       ������� ���         �       ��१�ࢨ஢���      �     �����᪨� ���⪨      �       �������� ���⪨
                               �   �����    � ����७�� ��������������������������������������������������������������������������������������������������������������������
                               �            �           �@@@@@@@@@@��⮨����� � @@@@@�@@@@@@@@@@��⮨����� � @@@@@�@@@@@@@@@@��⮨����� � @@@@@�@@@@@@@@@@��⮨����� � @@@@@
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@ &&&&&&.&&& &'&&&&&&&&&&&&.&& &&&&&&.&&& &'&&&&&&&&&&&&.&& &&&&&&.&&& &'&&&&&&&&&&&&.&& &&&&&&.&&& &'&&&&&&&&&&&&.&&
.}��
.EndForm

!-----------------------------------------------------------------------------
#doc
�������� ᢥન ����ᮢ ��
#end
.LinkForm 'UksRepStock_02' prototype is 'UksRepStock'
.NameInList '�������� ᢥન ����ᮢ ��'
.Group 'WithoutEd'
.Fields
  dDate
.EndFields

                      �������������
        ���⪮� ��� �� 楫����� � ᪫��᪮�� ����
                 �� ���ﭨ� �� ^ �.

.{?Internal;sEdMode <> ''
.Fields
  sEdMode
.EndFields
��^��
.}// Internal
.{?Internal;sFilter <> ''
.Fields
  sFilter
.EndFields
�������� : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}// Internal
.Fields
  sKolName : 'P:C' sCurVal : 'P:C'
  sKolName : 'P:C' sCurVal : 'P:C'
  sKolName : 'P:C' sCurVal : 'P:C'
  sKolName : 'P:C' sCurVal : 'P:C'
  sMC : 'T:R' sBarKod fKolMtr fSumMtr fKolRes fSumRes fKolSkl fSumSkl fKolRst fSumRst
.EndFields
����������������������������������������������������������������������������������������������������������������������������������������������������������������������
   ������������ ���業����    � ���������. �       ������� ���          �      ��१�ࢨ஢���        �     �����᪨� ���⪨       �      �������� ���⪨
                               �   �����    ������������������������������������������������������������������������������������������������������������������������
                               �            �@@@@@@@@@@��⮨����� � @@@@@@�@@@@@@@@@@��⮨����� � @@@@@@�@@@@@@@@@@��⮨����� � @@@@@@�@@@@@@@@@@��⮨����� � @@@@@@
��������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ &&&&&&.&&& &'&&&&&&&&&&&&&.&& &&&&&&.&&& &'&&&&&&&&&&&&&.&& &&&&&&.&&& &'&&&&&&&&&&&&&.&& &&&&&&.&&& &'&&&&&&&&&&&&&.&&
.}��
.EndForm