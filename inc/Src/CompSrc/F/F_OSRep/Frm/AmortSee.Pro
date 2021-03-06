//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.85 - �᭮��� �।�⢠
// �������� ������ �� ����⨧�樨 �� ��⮤�� ���
// ��������! ������� slk-���� � �ଠ� Excel
//------------------------------------------------------------------------------

#include FeeSigners.frn

#doc
�������� ������ �� ����⨧�樨 �� ��⮤�� ���
#end

.set name = 'AmortSee'
.hide
.group '�������� ������ �� ����⨧�樨'
.fields

  BegDate      : date
  EndDate      : date
  Param_wStoimInReestr : word   // ����� ��ࢮ��砫쭮� �⮨���� (�⮨����) � ॥���
  AdditionalParam : word        // �������⥫�� ��ࠬ���� �� ����

  ������
  ��ଠ�_�㬬 : string // ��ଠ� ᮤ�ঠ騩�� � ��륪驪�� ���짮��⥫� UserDeskRep.ResName[1]

  //---------------------------------------------
  fMetodName1 // ��室�� ��⮤ ���
  fMetodName2 // ��⮤ ��� ��� �ࠢ�����

  //---------------------------------------------
  // ��㯯�஢�� � �⮣���
  Node_Name

  Node_SIznM1  : double // �㬬� ����� �� ����� �� ��室���� ��⮤� ���
  Node_Stoim1  : double // �⮨����� ��ꥪ� �� ��室���� ��⮤� ���
  Node_SumIzn1 : double // �㬬� ����� ��ꥪ� �� ��室���� ��⮤� ���

  Node_SIznM2  : double // �㬬� ����� �� ����� �� ��⮤� ��� ��� �ࠢ�����
  Node_Stoim2  : double // �⮨����� ��ꥪ� �� ��⮤� ��� ��� �ࠢ�����
  Node_SumIzn2 : double // �㬬� ����� ��ꥪ� �� ��⮤� ��� ��� �ࠢ�����

  Node_Raznost    : double // ���� ࠧ��� �� �㬬�� ����� �� �����
  Node_PR         : double // ����ﭭ�� ࠧ�����
  Node_PRPog      : double // ����襭� ����ﭭ�� ࠧ�����
  Node_VVRNach    : double // ���᫥��� ���⠥��� �६����� ࠧ���� (���)
  Node_VVRPog     : double // ����襭�� ���
  Node_NVRNach    : double // ���᫥��� ���������������� �६����� ࠧ���� (���)
  Node_NVRPog     : double // ����襭�� ���
  Node_TotalPR    : double // ����������� ����稭� ����ﭭ�� ࠧ����
  Node_TotalPRPog : double // ����������� ����稭� ����ﭭ�� ࠧ����
  Node_TotalVVR   : double // ����������� ����稭� ���⠥��� �६����� ࠧ���� (���)
  Node_TotalNVR   : double // ����������� ����稭� ���������������� �६����� ࠧ���� (���)

  Node_ValName
  //---------------------------------------------
  // ��室�� ��ப� ����
  Leaf_Name

  Leaf_InvNumber
  Leaf_Period : date // ��ਮ� (�����) �ࠢ�������� ������

  Leaf_SIznM1     : double // �㬬� ����� �� ����� �� ��室���� ��⮤� ���
  Leaf_Stoim1     : double // �⮨����� ��ꥪ� �� ��室���� ��⮤� ���
  Leaf_SumIzn1    : double // �㬬� ����� ��ꥪ� �� ��室���� ��⮤� ���
  Leaf_Algoritm1  // ������������ �����⬠ ���᫥��� ����⨧�樨
  Leaf_TXO1       // ������������ ��� �� ����⨧�樨

  Leaf_SIznM2     : double // �㬬� ����� �� ����� �� ��⮤� ��� ��� �ࠢ�����
  Leaf_Stoim2     : double // �⮨����� ��ꥪ� �� ��⮤� ��� ��� �ࠢ�����
  Leaf_SumIzn2    : double // �㬬� ����� ��ꥪ� �� ��⮤� ��� ��� �ࠢ�����
  Leaf_Algoritm2  // ������������ �����⬠ ���᫥��� ����⨧�樨
  Leaf_TXO2       // ������������ ��� �� ����⨧�樨

  Leaf_Raznost    : double // ���� ࠧ�����
  Leaf_PR         : double // ����ﭭ�� ࠧ�����
  Leaf_PRPog      : double // ����襭� ����ﭭ�� ࠧ�����
  Leaf_VVRNach    : double // ���᫥��� ���⠥��� �६����� ࠧ���� (���)
  Leaf_VVRPog     : double // ����襭�� ���
  Leaf_NVRNach    : double // ���᫥��� ���������������� �६����� ࠧ���� (���)
  Leaf_NVRPog     : double // ����襭�� ���
  Leaf_TotalPR    : double // ����������� ����稭� ����ﭭ�� ࠧ����
  Leaf_TotalPRPog : double // ����������� ����稭� ����ﭭ�� ࠧ����
  Leaf_TotalVVR   : double // ����������� ����稭� ���⠥��� �६����� ࠧ���� (���)
  Leaf_TotalNVR   : double // ����������� ����稭� ���������������� �६����� ࠧ���� (���)

  Leaf_ValName
  //---------------------------------------------
  Leaf_wTiDk     : word  // ⨯ (��/���)
  Leaf_cKatOS    : comp  // ��뫪� �� ������ ��
  Leaf_DateK     : date  // ��� ����� � ��ᯫ����

!  // �� ��室���� ��⮤� ���
  Leaf_cSpKatOS1 : comp     // ��뫪� �� SpKatOS
  Leaf_SrokIsp1  : double   // �ப ��������� �ᯮ�짮����� (� ������)
  Leaf_STOIM_1   : double   // ��ࢮ��砫쭠� �⮨�����
  Leaf_SIZNM_1   : double   // ����� �� ����� EndDate
  Leaf_SUMIZN_1  : double   // �㬬� ����� �� ��ਮ� BegDate-EndDate
  Leaf_SUMIZN_IzmStm1  : double   // �㬬� ����� �� ��ਮ� BegDate-EndDate �� ����権 ��� �⮨����
  Leaf_OstSTOIM_1: double   // ����筠� �⮨����� �� EndDate

! // �� ��⮤� ��� ��� �ࠢ�����
  Leaf_cSpKatOS2 : comp     // ��뫪� �� SpKatOS
  Leaf_SrokIsp2  : double   // �ப ��������� �ᯮ�짮����� (� ������)
  Leaf_STOIM_2   : double   // ��ࢮ��砫쭠� �⮨�����
  Leaf_SIZNM_2   : double   // ����� �� ����� EndDate
  Leaf_SUMIZN_2  : double   // �㬬� ����� �� ��ਮ� BegDate-EndDate
  Leaf_SUMIZN_IzmStm2  : double   // �㬬� ����� �� ��ਮ� BegDate-EndDate �� ����権 ��� �⮨����
  Leaf_OstSTOIM_2: double   // ����筠� �⮨����� �� EndDate

  Leaf_VVR_Stoim    : double   // ��� ��ࢮ��砫쭮� �⮨����
  Leaf_NVR_Stoim    : double   // ��� ��ࢮ��砫쭮� �⮨����
  Leaf_VVR_Inp      : double   // ��� �� BegDate
  Leaf_NVR_Inp      : double   // ��� �� BegDate
  Leaf_PR_Inp       : double   // ��  �� BegDate
  Leaf_PRPog_Inp    : double   // ����襭� ��  �� BegDate

  Leaf_VVR_Period   : double   // ��� �� ��ਮ� BegDate-EndDate
  Leaf_NVR_Period   : double   // ��� �� ��ਮ� BegDate-EndDate
  Leaf_PR_Period    : double   // ��  �� ��ਮ� BegDate-EndDate
  Leaf_PRPog_Period : double   // ��  �� ��ਮ� BegDate-EndDate

  Leaf_VVR_Cor      : double   // ���४�஢�� ��� �� ��ਮ� BegDate-EndDate
  Leaf_VVRPog_Cor   : double   // ���४�஢�� ���� �� ��ਮ� BegDate-EndDate
  Leaf_NVR_Cor      : double   // ���४�஢�� ��� �� ��ਮ� BegDate-EndDate
  Leaf_NVRPog_Cor   : double   // ���४�஢�� ���� �� ��ਮ� BegDate-EndDate
  Leaf_PR_Cor       : double   // ���४�஢�� �� �� ��ਮ� BegDate-EndDate
  Leaf_PRPog_Cor    : double   // ���४�஢�� ����襭� �� �� ��ਮ� BegDate-EndDate

  Leaf_Vyb_Period_1 : double   // ���⨥ �� ��室���� ��⮤� ��� �� ��ਮ� BegDate-EndDate
  Leaf_Vyb_Period_2 : double   // ���⨥ �� ��⮤� ��� ��� �ࠢ����� �� ��ਮ� BegDate-EndDate

  Leaf_STOIM_CUR_1    : double   // ������ ��ࢮ��砫쭠� �⮨�����
  Leaf_SIZNM_CUR_1    : double   // ����騩 ����� �� ����� EndDate
  Leaf_SUMIZN_CUR_1   : double   // ����騩 ���������� �����

  Leaf_STOIM_CUR_2    : double   // ������ ��ࢮ��砫쭠� �⮨�����
  Leaf_SIZNM_CUR_2    : double   // ����騩 ����� �� ����� EndDate
  Leaf_SUMIZN_CUR_2   : double   // ����騩 ���������� �����

#FeeSigners_Os_Fields

.endfields
  //---------------------------------------------
.{
     BegDate        ^
     EndDate        ^
     Param_wStoimInReestr ^
     AdditionalParam      ^
.{ AmortSee_Filter CheckEnter
^
.}
     ��ଠ�_�㬬    ^
     fMetodName1    ^
     fMetodName2    ^
.{
.{ AmortSee_Header CheckEnter
     Node_Name      ^

     Node_SIznM1    ^
     Node_Stoim1    ^
     Node_SumIzn1   ^

     Node_SIznM2    ^
     Node_Stoim2    ^
     Node_SumIzn2   ^

     Node_Raznost    ^
     Node_PR         ^
     Node_PRPog      ^
     Node_VVRNach    ^
     Node_VVRPog     ^
     Node_NVRNach    ^
     Node_NVRPog     ^
     Node_TotalPR    ^
     Node_TotalPRPog ^
     Node_TotalVVR   ^
     Node_TotalNVR   ^
     Node_ValName    ^
.}
.{ AmortSee_Body CheckEnter
     Leaf_Name      ^

     Leaf_InvNumber ^
     Leaf_Period    ^

     Leaf_SIznM1    ^
     Leaf_Stoim1    ^
     Leaf_SumIzn1   ^
     Leaf_Algoritm1 ^
     Leaf_TXO1      ^

     Leaf_SIznM2    ^
     Leaf_Stoim2    ^
     Leaf_SumIzn2   ^
     Leaf_Algoritm2 ^
     Leaf_TXO2      ^

     Leaf_Raznost    ^
     Leaf_PR         ^
     Leaf_PRPog      ^
     Leaf_VVRNach    ^
     Leaf_VVRPog     ^
     Leaf_NVRNach    ^
     Leaf_NVRPog     ^
     Leaf_TotalPR    ^
     Leaf_TotalPRPog ^
     Leaf_TotalVVR   ^
     Leaf_TotalNVR   ^
     Leaf_ValName    ^

     //--------------------------
     Leaf_wTiDk     ^
     Leaf_cKatOS    ^
     Leaf_DateK     ^

     Leaf_cSpKatOS1 ^
     Leaf_SrokIsp1  ^
     Leaf_STOIM_1    ^
     Leaf_SIZNM_1    ^
     Leaf_SUMIZN_1   ^
     Leaf_SUMIZN_IzmStm1  ^
     Leaf_OstSTOIM_1 ^

     Leaf_cSpKatOS_2 ^
     Leaf_SrokIsp_2  ^
     Leaf_STOIM_2    ^
     Leaf_SIZNM_2    ^
     Leaf_SUMIZN_2   ^
     Leaf_SUMIZN_IzmStm2  ^
     Leaf_OstSTOIM_2 ^

     Leaf_VVR_Stoim     ^
     Leaf_NVR_Stoim     ^

     Leaf_VVR_Inp       ^
     Leaf_NVR_Inp       ^
     Leaf_PR_Inp        ^
     Leaf_PRPog_Inp     ^

     Leaf_VVR_Period    ^
     Leaf_NVR_Period    ^
     Leaf_PR_Period     ^
     Leaf_PRPog_Period  ^

     Leaf_VVR_Cor       ^
     Leaf_VVRPog_Cor    ^
     Leaf_NVR_Cor       ^
     Leaf_NVRPog_Cor    ^
     Leaf_PR_Cor        ^
     Leaf_PRPog_Cor     ^

     Leaf_Vyb_Period_1 ^
     Leaf_Vyb_Period_2 ^

     Leaf_STOIM_CUR_1    ^
     Leaf_SIZNM_CUR_1    ^
     Leaf_SUMIZN_CUR_1   ^

     Leaf_STOIM_CUR_2    ^
     Leaf_SIZNM_CUR_2    ^
     Leaf_SUMIZN_CUR_2   ^
.}
.{ AmortSee_Footer CheckEnter
.}
.{ AmortSee_Line CheckEnter
������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.}
.}
.}
#FeeSigners_Os_Body(AmortSee)
.endform
