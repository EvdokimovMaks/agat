//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� "���⥦�� ���������"
// ����� - �����ᮢ�� ��易⥫��⢮
//------------------------------------------------------------------------------

#doc
����� - �����ᮢ�� ��易⥫��⢮ (���⨯).<br>
#end
.set name='AktOFP'
.hide
.Fields
  AktOfpNRec
// 12
  AktOFP_desgr              // ��㯯� ���ਯ�஢
  AktOFP_descr              // ���ਯ�� ��������
  AktOFP_dInput             // ��� ᮧ����� ���㬥��
  AktOFP_NoDoc              // ����� ���㬥��

  AktOFP_Group              // ��㯯� ���
  AktOFP_Svodnoe            // ������� ���
  AktOFP_Status             // ����� ���㬥��
  AktOFP_TipMoney           // ��� �� �����
  AktOFP_Purpose            // �����祭��
  AktOFP_Prior              // �ਮ��� �ᯮ������
  AktOFP_dDoc               // ������㥬�� ��� ����襭�� ��易⥫���
  AktOFP_dFirstLast
//11
  AktDogovorName            // �������
  DocReasonName             // ���㬥��-�᭮�����
  AktOrg_Name               // ����ࠣ���
  AktOFP_Direct             // ���ࠢ����� �������� �।��
  AktOFP_TypePlat           // ��� ���⥦�
  AktOFP_Summa              // �㬬� ��易⥫���
  AktOFPValSimv             // ������ �������� �������
  AktOFP_HozSumma           // �㬬� 䠪��᪮�� �ᯮ������
  AktOFPValSimv1
  AktPodr_Name              // ����� ���
  AktCurator_FIO            // ����� ���
  TuneBudget                // ���� ��� � ��⮬

  AktOfp_StBudName          // 横� �� ࠧ��᪥ �� �����
  AktOfp_StBudCO            // 業�� �⢥��⢥�����
  AktOFPBud_cVal            // ����� ����
  AktOFPBud_Sum_FPPlan      // �㬬� �� �������� ����
  AktOFPBud_Sum_FPRezerv    // �㬬� �� �������� �����
  AktOFPBud_Sum_FPFact      // �㬬� �� �������� ����
  AktOFPBud_Sum_Free        // ᢮������ �㬬�
  AktOFPBud_StBudSum        // �㬬� �� ����
  AktOFPBud_StBudSumVal     // ����� �㬬� �� ����
  AktOFPBud_Percent         // ��業�
  AktOfp_AnTypeName         // ������������ �����⨪� ����
  AktOfp_AnValueName        // ���祭�� �����⨪� ����

.endFields
.{
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^

.{ AktOfp_StBud CheckEnter
 ^ ^ ^ ^ ^ ^ ^ ^ ^ ^

.if AktOfp_AnaliticsTitle
.{ AktOfp_Analitics CheckEnter
 ^ ^
.}
.end

.}

.}
.endform

//*******************************************************************
#doc
�����ᮢ�� ��易⥫��⢮.<br>
#end
.linkform 'AktOFP01' prototype is 'AktOFP'
.nameinlist '�����ᮢ�� ��易⥫��⢮'
.group '�����ᮢ�� ��易⥫��⢮'
.p 50
.defo portrait
.set filler = '_'
.Fields
  AktOFP_desgr              // ��㯯� ���ਯ�஢
  AktOFP_descr              // ���ਯ�� ��������
  AktOFP_dInput             // ��� ᮧ����� ���㬥��
  AktOFP_NoDoc              // ����� ���㬥��

  AktOFP_Group              // ��㯯� ���
  AktOFP_Svodnoe            // ������� ���
  AktOFP_Status             // ����� ���㬥��
  AktOFP_TipMoney           // ��� �� �����
  AktOFP_Purpose            // �����祭��
  AktOFP_Prior              // �ਮ��� �ᯮ������
  AktOFP_dDoc               // ������㥬�� ��� ����襭�� ��易⥫���
  AktOFP_dFirstLast

  AktDogovorName            // �������
  DocReasonName             // ���㬥��-�᭮�����
  AktOrg_Name               // ����ࠣ���
  AktOFP_Direct             // ���ࠢ����� �������� �।��
  AktOFP_TypePlat           // ��� ���⥦�
  AktOFP_Summa              // �㬬� ��易⥫���
  AktOFPValSimv             // ������ �������� �������
  AktOFP_HozSumma           // �㬬� 䠪��᪮�� �ᯮ������
  AktOFPValSimv1
  AktPodr_Name              // ����� ���
  AktCurator_FIO            // ����� ���

  // 横� �� ࠧ��᪥ �� �����
  AktOfp_StBudName          // 横� �� ࠧ��᪥ �� �����
  AktOfp_StBudCO            // 業�� �⢥��⢥�����
  AktOFPBud_Percent         // ��業�
  AktOFPBud_StBudSum        // �㬬� �� ����
  AktOFPBud_StBudSumVal     // ����� �㬬� �� ����
  AktOFPBud_Sum_FPPlan      // �㬬� �� �������� ����
  AktOFPBud_cVal            // ����� ����
  AktOFPBud_StBudSum        // �㬬� �� ����
  AktOFPBud_StBudSumVal     // ����� �㬬� �� ����
  AktOFPBud_Sum_Free        // ᢮������ �㬬�
  AktOFPBud_cVal            // ����� ����
  AktOfp_AnTypeName         // ������������ �����⨪� ����
  AktOfp_AnValueName        // ���祭�� �����⨪� ����

.endFields
.{

                            ������������ ���������������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 ��㯯� ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ������� ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����      ��@@@@@@@@@@@@@@@@@@@@@@@�� ��� �� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭��  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 ������㥬�� ��� ����襭�� ��@@@@@@@@@@@��  ���ࢠ�  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �������     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �᭮�����   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 ���ࠢ����� ��@@@@@@@@@@@@@@@@@@@@@@��   ��� ���⥦�  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �㬬�       ��&'&&&&&&&&&&&&&&& @@@@��   �����᪠� �㬬�  ��&'&&&&&&&&&&&&&&& @@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ AktOfp_StBud CheckEnter
 �����      ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{?internal; (TuneBudget = 0)
                          ��業�  ��&'&&&%��         �㬬�  ��&'&&&&&&&&&&&&&&& @@@@��
.}
.{?internal; (TuneBudget = 1)
 �����       ��&'&&&&&&&&&&&&&&& @@@@��
 ���ॡ����� ��&'&&&&&&&&&&&&&&& @@@@��
 ��������    ��&'&&&&&&&&&&&&&&& @@@@��
.}

.if AktOfp_AnaliticsTitle
 �����⨪�                               ���祭�� �����⨪�
.{ AktOfp_Analitics CheckEnter
 ��@@@@@@@@@@@@@@@@@@@@@@@@@@@��  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}

.end
.}

.}
.endform
