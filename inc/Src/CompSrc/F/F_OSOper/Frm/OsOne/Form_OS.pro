//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����⨪� 8.1 - ��壠���᪨� ������
// ����� �� ������ ����� �� (���)
//------------------------------------------------------------------------------
// #include PREDEFS.INC

#include FeeSigners.frn

#doc
  ��ଠ ��� ���� ���⮢ �� ������ ����� �� (���).<br>
#end
.form osOne
.group '����㯫���� �� <<�����>>'
!.group '����㯫���� �� <<��������>>'
!.group '����㯫���� �� <<������⠭>>'
.group '����㯫���� �� <<����>>'
!.group '����㯫���� ��� <<�����>>' // ����㯫���� �� �������
!.group '����㯫���� ��� <<��������>>' // ����㯫���� �� �������
!.group '����㯫���� ��� <<������⠭>>'
!.group '����㯫���� ��� <<����>>'
!.group '����७��� ��६�饭�� �� <<�����>>'
!.group '����७��� ��६�饭�� �� <<��������>>'
!.group '����७��� ��६�饭�� �� <<������⠭>>'
!.group '����७��� ��६�饭�� �� <<����>>'
!.group '����७��� ��६�饭�� ��� <<�����>>'
!.group '����७��� ��६�饭�� ��� <<��������>>'
!.group '����७��� ��६�饭�� ��� <<������⠭>>'
!.group '����७��� ��६�饭�� ��� <<����>>'
!.group '��������� �⮨���� �� <<�����>>' // ��������� �⮨���� �� �������
!.group '��������� �⮨���� �� <<��������>>' // ��������� �⮨���� �� �������
!.group '��������� �⮨���� �� <<����>>' // ��������� �⮨���� �� �������
!.group '��������� �⮨���� ��� <<�����>>'
!.group '��������� �⮨���� ��� <<��������>>'
!.group '��������� �⮨���� ��� <<����>>'
!.group '���⨥ �� <<�����>>'
!.group '���⨥ �� <<��������>>'
!.group '���⨥ �� <<������⠭>>'
!.group '���⨥ �� <<����>>'
!.group '���⨥ ��� <<�����>>'
!.group '���⨥ ��� <<��������>>'
!.group '���⨥ ��� <<������⠭>>'
!.group '���⨥ ��� <<����>>'
.hide

  // �� ��������� ��⮪� ����室��� �������, ��
  // ��⮪ ���������� �� 2-� ����:
  // �᭮��� �।�⢠ � �����ਠ��� ��⨢� - � F_OSOper\Vip\OSPrint.vip)
  //                         � ��� ��ந⥫��⢠ � F_OSOper\Vip\VvStroy_Rep.vpp
.fields

  SpMoveOsNRec               : comp
  MoveOsNRec                 : comp
  SpMoveNRec                 : comp
  isBudjetOrg                : boolean
  isPrintOrgSdat             : boolean

  ������_�����⨪�_��_����                   : boolean
  ��_���������_ࠧ���_2_�_��1                   : boolean // ��� ���ᨨ ��� ����樨 �����

  ���⠢騪
  ���⠢騪_����
  ���⠢騪_���
  ���⠢騪_����
  ���⠢騪_���
  ���⠢騪_�����
  ���⠢騪_���
  ���⠢騪_����_���
  ���⠢騪_����_����
  ���⠢騪_����_���
  ���⠢騪_����_���_�_���
  ���⠢騪_����_���_����㬥�⮢
  ���⠢騪_����_���
  ���⠢騪_����_���

  �����⥫�
  �����⥫�_����
  �����⥫�_���
  �����⥫�_����
  �����⥫�_���
  �����⥫�_�����
  �����⥫�_���
  �����⥫�_����_���
  �����⥫�_����_����
  �����⥫�_����_���
  �����⥫�_����_���_�_���
  �����⥫�_����_���_����㬥�⮢
  �����⥫�_����_���
  �����⥫�_����_���

  �㪮����⥫�_���⠢騪�_nRec                  : comp
  �㪮����⥫�_���⠢騪�
  �㪮����⥫�_���⠢騪�_���������

  ������_��壠���_���⠢騪�_nRec             : comp
  ������_��壠���_���⠢騪�
  ������_��壠���_���⠢騪�_���������

  �㪮����⥫�_�����⥫�_nRec                  : comp
  �㪮����⥫�_�����⥫�
  �㪮����⥫�_�����⥫�_���������

  ������_��壠���_�����⥫�_nRec             : comp
  ������_��壠���_�����⥫�
  ������_��壠���_�����⥫�_���������

  ������୮�_���ࠧ�������_���⠢騪�
  ���_���⥫쭮��_���⠢騪�                   : longint // ��� ��-1 <<��������>>

  ������୮�_���ࠧ�������_�����⥫�
  ���_���⥫쭮��_�����⥫�                   : longint // ��� ��-1 <<��������>>

  ���_���⠢騪�_nRec                           : comp
  ���_���⠢騪�
  �������_�����_���⠢騪�
  ���_���������_���⠢騪�

  ���_�����⥫�_nRec                           : comp
  ���_�����⥫�
  �������_�����_�����⥫�
  ���_���������_�����⥫�

  ���������_NRec                                : comp   // ��� ��-1, ��-1�, ��-14 (����㯫����)
  ���������_���                                : date   // ��� ��-1, ��-1�, ��-14 (����㯫����)

  ����७�����_���_�뤠�                      : date   // ��� ��-1, ��-1�, ��-14 (����㯫����)
  ����७�����_�����                                     // ��� ��-1, ��-1�, ��-14 (����㯫����)
  ����७���_���_���                                    // ��� ��-1, ��-1�, ��-14 (����㯫����)
  ����७���_���_���_���_�����                          // ��� ��-1, ��-1�, ��-14 (����㯫����)
  ����७���_���_���������                              // ��� ��-1, ��-1�, ��-14 (����㯫����)

  �⮨�����_�ਮ��⥭��_������ୠ�             : double // ��� �� - 1
  �⮨�����_��_�������                          : double // ��� �� - 14
  �⮨�����_��_��饥_������⢮                 : double // ��� �� - 14
  ������_�⮨�����                              : double

  �����_�㬬�_�����                            : double
  �����_�㬬�_�����_��_�������                 : double

//------------- ���ଠ�� � ��������� ��।�� �� � �� ------------------//
  ���������_��।��_NRec                       : comp   // ��� ��-1 (����㯫����)
  ���������_��।��_������������_������        : string // ��� ��-1 (����㯫����)
  ���������_��।��_����_������                : double // ��� ��-1 (����㯫����)
  ���������_��।��_�㬬�_�_�����             : double // ��� ��-1 (����㯫����)

//------------- ���ଠ�� � ��������� �� ���⨥ ------------------//
  ���������_���⨥_NRec                        : comp   // ��� ��-1 (���⨥)
  ���������_���⨥_�⮨�����_���_���           : double // ��� ��-1 (���⨥)
  ���������_���⨥_�⠢��_���                  : double // ��� ��-1 (���⨥)
  ���������_���⨥_�㬬�_���                   : double // ��� ��-1 (���⨥)

  ����⨧�樮����_��㯯�_������������
  ����⨧�樮����_��㯯�_���

  �࣠������_����⮢�⥫�
  ���
  �������_�����

//------------- ���ଠ�� �� �� ------------------//
  ��������������
  �����᪨�_�ப_��ᯫ��樨                 : double

  �ப_�ᯮ�짮�����_��_����㯫����             : double
  �ப_���������_�ᯮ�짮�����                  : double
  �⮨�����_��_����㯫����                     : double

  �㬬�_���᫥����_����⨧�樨                 : double
  �⮨�����_����㯫����_��ࢮ��砫쭠�          : double
  �⮨�����_����㯫����_��ࢮ��砫쭠�_��       : double
  ����⠭���⥫쭠�_�⮨�����                   : double // ��� �� - 3
  ���������_�⮨����                           : double // ��� �� - 3
  ������_��_६���                             : double // ��� �� - 3

  �������樮���_�����

  KatStroyDataReg                               : date
  KatStroyNoSvidReg                             : string
  KatStroyName                                  : string

  ��ଠ
  KodOrg
  ��⮤_���
  oc_nma
  �����_���㬥��
  ���_���㬥��                                : date
  ���_�ਪ���                                  : date
  �����_�ਪ���
  ���_����樨                                  : word
  ����_��_������                               : boolean
  NastrOsNRec                                   : comp
  ���_��㯯����_����祪                       : comp
  ����來����_�஡���_���                     : word
  kolFormat                                     : string   // �ଠ� �뢮�� ������⢠ � ��


  ���_������।
  �������_����।

  ���_�����
  �������_���

  ���_�����।
  Departament
  ���_�����।

  ���_�������
  Departament_Out
  ���_�������

  �⮨�����_��                                  : double
  �����_��
  ��������                                      : string
  ���멈�������                                : string
  �����᪮�
  ��‬
  ����‬
  ���_��ଠ
  ��ଠ                                         : double
  ��ଠ_������������

  nRec_�����⬠_���᫥���_����⨧�樨         : comp
  ������������_�����⬠_���᫥���_����⨧�樨 : string

  ����

  ����                                         : string
  ��ઠ
  ���_��                                        : double
  KatOSNRec                                     : comp
  KatOScMC                                      : comp
  KatOSBarKod                                   : string

  KatOsGrOsKodGr                                : string 
  KatOsGrOsNameGr                               : string

  ���ᯫ��樨��
  ���_���⠢騪�
  ��ꥪ�_�_�����⥫�                           : word  // = 0
  ��ꥪ⍠室����
  SumAmort
  ���_����
  ���_����
  ���_����_fict
  ���_����_fict
  ���_��_fict                                  : date
  Date_ekcpl
  ������_����७��_nRec                        : comp
  ������_����७��

  SrokIsp                                       : double
  PsNum
  ��ࠪ���⨪�

  �⮨�����_����                                : double
  �����_����                                    : double
  �����_�⮨�����_����                          : double
  ����_�����_����                              : double
  �����_��_�����_����                           : double

  ���_��                                       : date
  ���_����                                     : date
  ���_�����                                    : date
  ���_���_���������                          : date
  ���_�����                                  : date

  ���_����
  ���_����

  �᭮�����_���_��⠢�����_���
  ��稭�_ᯨᠭ��
  �ਬ�砭��_��_����樨                        : string

 #FeeSigners_Os_Fields

//------  横� �� ����⠬
  ��℥�
  ��ㄥ�
  ��ㄥ����
  ����℥�
  ����
  ����
  ���ॊ��
  ������

//------ 横� �� ��⠢���騬 ᫮����� ��ꥪ�
  KatOs_nRec_Leaf                               : comp
  KatOs_cMc_Leaf
  ���_�����_����
  ��������������_����
  ������⢮_����
  �����_����
  �⮨�����_����
  ��������_����
  ���_����_����⨧�樨_����
  Kodof_nRec_Leaf                               : comp
  ���_����_����
  ���_����_����
  SpMoveOs_nRec_Leaf                            : comp
  ����_�����_����
  �����_�⮨�����_����
  ����_�����_����
  ����_�⮨�����_����

//------  横� �� �� ��ꥪ�
  OsMcNRec
  ������������_���⠢���饩
  ���_��_���⠢�����                           : double

//------  横� �� �ࠣ��⠫���
  NameDrag
  NomenclaturN
  N_Edin
  MassaDrag                                     : double
  �������                                       : string

//------  横� �� ��㣠�
  nRec_OsMcUsl                                  : comp
  nRec_KatUsl                                   : comp
  nRec_SpSopr                                   : comp
  nRec_KatSopr                                  : comp
  ������������_��㣨
  �����_�_���_���㬥��
  ���।�������_�㬬�_��㣨                   : double

.endfields

!
.var
  iExcelFormat : ExcelFormat;
.endvar
! --------------------------------------------------------------------------
.{ // ��砫� ���
 { *** ��砫� ��� ***

  SpMoveOsNRec                                  - ^
  MoveOsNRec                                    - ^
  SpMoveNRec                                    - ^
  isBudjetOrg                                   - ^
  isPrintOrgSdat                                - ^

  ������_�����⨪�_��_����                   - ^
  ��_���������_ࠧ���_2_�_��1                   - ^

  ���⠢騪                                     - ^
  ���⠢騪_����                                - ^
  ���⠢騪_���                                 - ^
  ���⠢騪_����                               - ^
  ���⠢騪_���                                 - ^
  ���⠢騪_�����                               - ^
  ���⠢騪_���                                 - ^
  ���⠢騪_����_���                            - ^
  ���⠢騪_����_����                          - ^
  ���⠢騪_����_���                           - ^
  ���⠢騪_����_���_�_���                     - ^
  ���⠢騪_����_���_����㬥�⮢               - ^
  ���⠢騪_����_���                            - ^
  ���⠢騪_����_���                            - ^

  �����⥫�                                    - ^
  �����⥫�_����                               - ^
  �����⥫�_���                                - ^
  �����⥫�_����                              - ^
  �����⥫�_���                                - ^
  �����⥫�_�����                              - ^
  �����⥫�_���                                - ^
  �����⥫�_����_���                           - ^
  �����⥫�_����_����                         - ^
  �����⥫�_����_���                          - ^
  �����⥫�_����_���_�_���                    - ^
  �����⥫�_����_���_����㬥�⮢              - ^
  �����⥫�_����_���                           - ^
  �����⥫�_����_���                           - ^

  �㪮����⥫�_���⠢騪�_nRec                  - ^
  �㪮����⥫�_���⠢騪�                       - ^
  �㪮����⥫�_���⠢騪�_���������             - ^

  ������_��壠���_���⠢騪�_nRec             - ^
  ������_��壠���_���⠢騪�                  - ^
  ������_��壠���_���⠢騪�_���������        - ^

  �㪮����⥫�_�����⥫�_nRec                  - ^
  �㪮����⥫�_�����⥫�                       - ^
  �㪮����⥫�_�����⥫�_���������             - ^

  ������_��壠���_�����⥫�_nRec             - ^
  ������_��壠���_�����⥫�                  - ^
  ������_��壠���_�����⥫�_���������        - ^

  ������୮�_���ࠧ�������_���⠢騪�          - ^
  ���_���⥫쭮��_���⠢騪�                   - ^

  ������୮�_���ࠧ�������_�����⥫�          - ^
  ���_���⥫쭮��_�����⥫�                   - ^

  ���_���⠢騪�_nRec                           - ^
  ���_���⠢騪�                                - ^
  �������_�����_���⠢騪�                    - ^
  ���_���������_���⠢騪�                      - ^

  ���_�����⥫�_nRec                           - ^
  ���_�����⥫�                                - ^
  �������_�����_�����⥫�                    - ^
  ���_���������_�����⥫�                      - ^

  ���������_NRec                                - ^
  ���������_���                                - ^

  ����७�����_���_�뤠�                      - ^
  ����७�����_�����                            - ^
  ����७���_���_���                           - ^
  ����७���_���_���_���_�����                 - ^
  ����७���_���_���������                     - ^

  �⮨�����_�ਮ��⥭��_������ୠ�             - ^
  �⮨�����_��_�������                          - ^
  �⮨�����_��_��饥_������⢮                 - ^
  ������_�⮨�����                              - ^

  �����_�㬬�_�����                            - ^
  �����_�㬬�_�����_��_�������                 - ^

//------------- ���ଠ�� � ��������� ��।�� �� � �� ------------------//
  ���������_��।��_NRec                       - ^
  ���������_��।��_������������_������        - ^
  ���������_��।��_����_������                - ^
  ���������_��।��_�㬬�_�_�����             - ^

//------------- ���ଠ�� � ��������� �� ���⨥ ------------------//
  ���������_���⨥_NRec                        - ^
  ���������_���⨥_�⮨�����_���_���           - ^
  ���������_���⨥_�⠢��_���                  - ^
  ���������_���⨥_�㬬�_���                   - ^

  ����⨧�樮����_��㯯�_������������           - ^
  ����⨧�樮����_��㯯�_���                    - ^

  �࣠������_����⮢�⥫�                      - ^
  ���                                           - ^
  �������_�����                               - ^

//------------- ���ଠ�� �� �� ------------------//
  ��������������                                - ^
  �����᪨�_�ப_��ᯫ��樨                 - ^

  �ப_�ᯮ�짮�����_��_����㯫����             - ^
  �ப_���������_�ᯮ�짮�����                  - ^
  �⮨�����_��_����㯫����                     - ^

  �㬬�_���᫥����_����⨧�樨                 - ^
  �⮨�����_����㯫����_��ࢮ��砫쭠�          - ^
  �⮨�����_����㯫����_��ࢮ��砫쭠�_��       - ^
  ����⠭���⥫쭠�_�⮨�����                   - ^
  ���������_�⮨����                           - ^
  ������_��_६���                             - ^

  �������樮���_�����                         - ^

  KatStroyDataReg                               - ^
  KatStroyNoSvidReg                             - ^
  KatStroyName                                  - ^

  ��ଠ                                         - ^
  KodOrg                                        - ^
  ��⮤_���                                   - ^
  oc_nma                                        - ^
  �����_���㬥��                               - ^
  ���_���㬥��                                - ^
  ���_�ਪ���                                  - ^
  �����_�ਪ���                                 - ^
  ���_����樨                                  - ^
  ����_��_������                               - ^
  NastrOsNRec                                   - ^
  ���_��㯯����_����祪                       - ^
  ����來����_�஡���_���                     - ^
  kolFormat                                     - ^

  ���_������।                                 - ^
  �������_����।                               - ^

  ���_�����                                     - ^
  �������_���                                   - ^

  ���_�����।                                  - ^
  Departament                                   - ^
  ���_�����।                                  - ^

  ���_�������                                   - ^
  Departament_Out                               - ^
  ���_�������                                   - ^

  �⮨�����_��                                  - ^
  �����_��                                      - ^
  ��������                                      - ^
  ���멈�������                                - ^
  �����᪮�                                     - ^
  ��‬                                        - ^
  ����‬                                     - ^
  ���_��ଠ                                     - ^
  ��ଠ                                         - ^
  ��ଠ_������������                            - ^

  nRec_�����⬠_���᫥���_����⨧�樨         - ^
  ������������_�����⬠_���᫥���_����⨧�樨 - ^

  ����                                          - ^

  ����                                         - ^
  ��ઠ                                         - ^
  ���_��                                        - ^
  KatOSNRec                                     - ^
  KatOScMC                                      - ^
  KatOSBarKod                                   - ^
  KatOsGrOsKodGr                                - ^ 
  KatOsGrOsNameGr                               - ^
  ���ᯫ��樨��                               - ^
  ���_���⠢騪�                                - ^
  ��ꥪ�_�_�����⥫�                           - ^
  ��ꥪ⍠室����                              - ^
  SumAmort                                      - ^
  ���_����                                      - ^
  ���_����                                      - ^
  ���_����_fict                                 - ^
  ���_����_fict                                 - ^
  ���_��_fict                                  - ^
  Date_ekcpl                                    - ^
  ������_����७��_nRec                        - ^
  ������_����७��                             - ^

  SrokIsp                                       - ^
  PsNum                                         - ^
  ��ࠪ���⨪�                                - ^

  �⮨�����_����                                - ^
  �����_����                                    - ^
  �����_�⮨�����_����                          - ^
  ����_�����_����                              - ^
  �����_��_�����_����                           - ^

  ���_��                                       - ^
  ���_����                                     - ^
  ���_�����                                    - ^
  ���_���_���������                          - ^
  ���_�����                                  - ^

  ���_����                                      - ^
  ���_����                                      - ^

  �᭮�����_���_��⠢�����_���                - ^
  ��稭�_ᯨᠭ��                              - ^
  �ਬ�砭��_��_����樨                        - ^
#FeeSigners_Os_Body(osOne)

! 横� �� ����⠬
   { ***** 横� �� ����⠬ *****
.{ CheckEnter Os_Oborot
     { -------------------
       ��℥�                                  - ^
       ��ㄥ�                                   - ^
       ��ㄥ����                                - ^
       ����℥�                               - ^
       ����                                  - ^
       ����                                   - ^
       ���ॊ��                                - ^
       ������                               - ^
     } -------------------
.}
   }

! 横� �� ��⠢���騬 ᫮����� ��ꥪ�
   { ***** 横� �� ��⠢���騬 ᫮����� ��ꥪ� *****
.{ CheckEnter Os_Leafs
     { -------------------
       KatOs_nRec_Leaf                          - ^
       KatOs_cMc_Leaf                           - ^
       ���_�����_����                           - ^
       ��������������_����                      - ^
       ������⢮_����                          - ^
       �����_����                               - ^
       �⮨�����_����                           - ^
       ��������_����                            - ^
       ���_����_����⨧�樨_����               - ^
       Kodof_nRec_Leaf                          - ^
       ���_����_����                            - ^
       ���_����_����                            - ^
       SpMoveOs_nRec_Leaf                       - ^
       ����_�����_����                         - ^
       �����_�⮨�����_����                     - ^
       ����_�����_����                        - ^
       ����_�⮨�����_����                    - ^
     } -------------------
.}
   }

! 横� �� ��⠢���騬 ��ꥪ�
   { ***** 横� �� ��⠢���騬 ��ꥪ� *****
.{ CheckEnter Os_Sostav
     { -------------------
       OsMcNRec                                 - ^
       ������������_���⠢���饩                - ^
       ���_��_���⠢�����                      - ^
     } -------------------
.}
   }

! 横� �� �ࠣ��⠫���
   { ***** 横� �� �ࠣ��⠫��� *****
.{ CheckEnter Os_NalDrag
     { -------------------
       NameDrag                                 - ^
       NomenclaturN                             - ^
       N_Edin                                   - ^
       MassaDrag                                - ^
       �������                                  - ^
     } -------------------
.}
   }

! 横� �� ��㣠�
   { ***** 横� �� ��㣠� *****
.{ CheckEnter Os_AktUsl
     { -------------------
       nRec_OsMcUsl                             - ^
       nRec_KatUsl                              - ^
       nRec_SpSopr                              - ^
       nRec_KatSopr                             - ^
       ������������_��㣨                      - ^
       �����_�_���_���㬥��                   - ^
       ���।�������_�㬬�_��㣨              - ^
     } -------------------
.}
   }

 } *** ����� ��� ***
.} // ����� ���
.endform
