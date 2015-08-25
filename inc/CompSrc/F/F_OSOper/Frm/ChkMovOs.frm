//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ���� � �஢�થ 楫��⭮�� ������ �� ������
//------------------------------------------------------------------------------
#doc
  ��ଠ ��� ���� ���� � �஢�થ 楫��⭮�� ������ �� ������
#end
.form 'ChkMoveOs'
.hide
.fields
  MoveOsNRec     : comp
  SpMoveNRec     : comp
  SpMoveOsNRec   : comp
  TiDk           : string
  SysOper        : string
  DatOb          : string
  NoDoc          : string
  MU             : string
  MsgErr         : string

  Msg            : string
  MsgNakl        : string
.endfields

.{ CheckEnter OperLoop
.{ CheckEnter SpMoveOsLoop
   MoveOsNRec     - ^
   SpMoveNRec     - ^
   SpMoveOsNRec   - ^
   TiDk           - ^
   SysOper        - ^
   DatOb          - ^
   NoDoc          - ^
   MU             - ^
   MsgErr         - ^
.}
.{
   Msg            - ^
.}
.}

.{ CheckEnter NaklLoop
.{
   MsgNakl        - ^
.}
.}

.endform

//------------------------------------------------------------------------------------------------------------------------------
.linkform 'ChkMoveOs_01' prototype is 'ChkMoveOs'
.NameInList '���᮪ ����襭�� � 楫��⭮�� ������ �� ������'
.fields
   CommonFormHeader
   TiDk
   substr(SysOper,1,25)
   DatOb
   NoDoc
   MU
   MsgErr
.endfields
^

.{ CheckEnter OperLoop
           ���᮪ ����襭�� � 楫��⭮�� ������ �� ������ � �� � ���
               � ����室��� ����⢨� �� �� ��ࠢ�����

��������������������������������������������������������������������������������������
�����        ���             �   ���   �      �����       �      ��⮤
      �     ����樨           � ����樨 �     ����樨     �      ���
��������������������������������������������������������������������������������������
.{ CheckEnter SpMoveOsLoop
@~@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@
   ^
.}
��������������������������������������������������������������������������������������

.fields
   Msg
.endfields
.{
^
.}
.}

.fields
   MsgNakl
.endfields
.{ CheckEnter NaklLoop
.{
^
.}
.}

.endform

