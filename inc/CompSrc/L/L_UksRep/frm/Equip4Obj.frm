//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.8 - ��ࠢ����� ����⠫�� �������ﬨ � ��ந⥫��⢮�
// ���祭� ����㤮����� �� ��ꥪ�� ��ந⥫��⢠
//------------------------------------------------------------------------------

#doc
���祭� ����㤮����� �� ��ꥪ�� ��ந⥫��⢠
#end
.Set Name = 'Equip4Obj'
.Hide
.Fields
  dStart sClass sObj sCode sFilter sVal
  Part sMC sBarKod sEd fKolT fSumT
                  fKolS fSumS
                  fKolM fSumM
                  fKol29 fSum29
                  fKolO fSumO
  fTotT fTotS fTotM fTot29 fTotO
.EndFields
  ^^^^^^
.{
  ^^^^^^^^^^^^^^
.}
  ^^^^^
.EndForm

!�����������������������������������������������������������������������������
#doc
���祭� ����㤮����� �� ��ꥪ�� ��ந⥫��⢠
#end
.LinkForm 'Equip4Obj_01' prototype is 'Equip4Obj'
.NameInList '���祭� ����㤮����� �� ��ꥪ�� ��ந⥫��⢠'
.Group '1'
.p 60
.Fields
  sClass sObj sCode dStart
.EndFields
                        ���������� ��������������
                 ^: ��^��. ���: ��^��
                           ���� ^ �.��

.{?Internal;sFilter <> ''
.Fields
  sFilter
.EndFields
�������� �� ��㯯�� ��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}// Internal
.Fields
  '�⮨�����, ' + sVal : 'P:C'
  '�⮨�����, ' + sVal : 'P:C'
  '�⮨�����, ' + sVal : 'P:C'
  '�⮨�����, ' + sVal : 'P:C'
.EndFields
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
                           �            �           �          �� ᪫����            �        ��।��� � ���⠦       �        ��⥭� �� �-29          �        ��ॢ����� � ��
  ������������ ���業���� � ���������. �  ������  ������������������������������������������������������������������������������������������������������������������������������������
    (���⨨)               �   �����    � ����७�� � ������⢮ �@@@@@@@@@@@@@@@@@@@� ������⢮ �@@@@@@@@@@@@@@@@@@@� ������⢮ �@@@@@@@@@@@@@@@@@@@� ������⢮ �@@@@@@@@@@@@@@@@@@@
������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.{?Internal;Part = ''
.Fields
  sMC sBarKod sEd fKolS fSumS
                  fKolM fSumM
                  fKol29 fSum29
                  fKolO fSumO
.EndFields
�� @@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@ &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&& &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&& &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&& &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&&��
.}
.{?Internal;Part <> ''
.Fields
  sMC sBarKod sEd fKolS fSumS
                  fKolM fSumM
                  fKol29 fSum29
                  fKolO fSumO
.EndFields
��   @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@ &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&& &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&& &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&& &&&&&&&&.&&& &'&&&&&&&&&&&&&&.&&��
.}
.}
.Fields
  fTotS fTotM fTot29 fTotO
.EndFields

�� ����� �� �������     :                                         &'&&&&&&&&&&&&&&&&.&&            &'&&&&&&&&&&&&&&&&.&&            &'&&&&&&&&&&&&&&&&.&&            &'&&&&&&&&&&&&&&&&.&&��
.EndForm
