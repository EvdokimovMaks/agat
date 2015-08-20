//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ������� ��� ����ᮢ
// �������� ������ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠
//------------------------------------------------------------------------------

#doc
�������� ������ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠
#end
.Set Name = 'UksRepSaldo'
.Hide
.Fields
  dDate  sEdMode  sFilter
  sKolName sCurVal
  iIerLevel: integer
  iRepLevel: integer
  sGroup sKod fGrpTotal
  sMC sBarKod sCurEd
  cNode  : comp
  cRec   : comp
  cEd    : comp
  cObj   : comp
  cMC    : comp
  cPod   : comp
  cMol   : comp
  cPar   : comp
  cKau1  : comp
  cKau2  : comp
  cKau3  : comp
  cKau4  : comp
  cKau5  : comp
  cKau6  : comp
  cKau7  : comp
  cKau8  : comp
  cKau9  : comp
  fKol   : double
  fPrc   : double
  fSum   : double
  fTotal : double
.EndFields
  ^^^^^
.{
.{CheckEnter UrsHeader
  ^^^^^
.}
  ^^^^^^^^^^^^^^^^^^^^^^^
.}
  ^
.EndForm

!-----------------------------------------------------------------------------
#doc
�������� ������ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠
#end
.LinkForm 'UksRepSaldo_01' prototype is 'UksRepSaldo'
.NameInList '�������� ������ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠'
.Group 'WithEd'
.Fields
  dDate
.EndFields

                   ����������� ��������� �������� �����
                      �� ��ꥪ⠬ ��� ����ᮢ
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
  sKolName : 'P:C' sCurVal : 'P:C' sCurVal : 'P:C'
  sGroup : 'T:R' sKod fGrpTotal
  sMC: 'T:R' sBarKod sCurEd DoubleToStr(fKol, '[|-]3666`666`666`666`666.' + PadCh('','8',bGetTune('ROUND.KOLSIGN'))) fPrc fSum
  fTotal
.EndFields
�����������������������������������������������������������������������������������������������������������
          ������������         �    ���     �  ������  �@@@@@@@@@@�    ���� �     �     �⮨����� �
                               �            � ����७�� �          �@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@
.{
.{CheckEnter UrsHeader
.{?Internal;iIerLevel=1
���������������������������������������������������������������������������������������������������������
.}// Internal
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
��.}
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&&
.}
���������������������������������������������������������������������������������������������������������
�� ����� �� ���������   :                                                             &'&&&&&&&&&&&&&&&&.&&��
.EndForm


!-----------------------------------------------------------------------------
#doc
�������� ������ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠
#end
.LinkForm 'UksRepSaldo_02' prototype is 'UksRepSaldo'
.NameInList '�������� ������ �� � ࠧ१� ��ꥪ⮢ ��ந⥫��⢠'
.Group 'WithoutEd'
.Fields
  dDate
.EndFields

                   ����������� ��������� �������� �����
                      �� ��ꥪ⠬ ��� ����ᮢ
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
  sKolName : 'P:C' sCurVal : 'P:C' sCurVal : 'P:C'
  sGroup : 'T:R' sKod fGrpTotal
  sMC: 'T:R' sBarKod DoubleToStr(fKol, '[|-]3666`666`666`666`666.' + PadCh('','8',bGetTune('ROUND.KOLSIGN'))) fPrc fSum
  fTotal
.EndFields
�����������������������������������������������������������������������������������������������
         ������������          �    ���     �@@@@@@@@@@�    ���� �     �     �⮨����� �
                               �            �          �@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@
.{
.{CheckEnter UrsHeader
.{?Internal;iIerLevel=1
���������������������������������������������������������������������������������������������
.}// Internal
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
��.}
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@ &'&&&&&&&&&&.&& &'&&&&&&&&&&&&&&&&.&&
.}
���������������������������������������������������������������������������������������������
�� ����� �� ���������   :                                                 &'&&&&&&&&&&&&&&&&.&&��
.EndForm
