//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� "���⥦�� ���������"
// ����� - �����ᮢ�� ��易⥫��⢮
//------------------------------------------------------------------------------

#doc
����� - ������� 䨭��ᮢ�� ��易⥫��⢮ (���⨯).<br>
#end
.set name='AktSum'
.hide
.Fields
  AktSum_NRec
  AktSum_desgr              // ��㯯� ���ਯ�஢
  AktSum_descr              // ���ਯ�� ��������
  AktSum_dInput             // ��� ᮧ����� ���㬥��
  AktSum_NoDoc              // ����� ���㬥��

  AktSum_fGroup             // ��㯯� ��
  AktSum_Name               // ������������
  AktSum_dDoc               // ������㥬�� ��� ����襭��
  AktSumNotes_Name          // �����
  AktSum_Direct             // ���ࠢ����� �������� �।��
  AktSum_fAktSumPrior       // �ਮ���
  AktSum_Sum                // �㬬�
  AktSum_valsAktSum         // �����
  AktSum_SumDebts           // �������������
  TuneBudget                // ���� ��� � ��⮬

  AktOfpNRec
  AktOFP_desgr              // ��㯯� ���ਯ�஢
  AktOFP_descr              // ���ਯ�� ��������
  AktOFP_dInput             // ��� ᮧ����� ���㬥��
  AktOFP_NoDoc              // ����� ���㬥��

  AktOFP_Group              // ��㯯� ���
  AktOFP_Status             // ����� ���㬥��
  AktOFP_TipMoney           // ��� �� �����
  AktOFP_Purpose            // �����祭��
  AktOFP_Prior              // �ਮ��� �ᯮ������
  AktOFP_dDoc               // ������㥬�� ��� ����襭�� ��易⥫���
  AktOFP_dFirstLast         // ���ࢠ�

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

  AktOFP_AktPerfPurpose1    // �����祭�� ���⥦�
  AktOFP_AktPerfPurpose2    // �����祭�� ���⥦�
  AktOFP_AktPerfPurpose3    // �����祭�� ���⥦�
  AktOFP_AktPerfPurpose4    // �����祭�� ���⥦�
  AktOFP_AktPerfPurpose5    // �����祭�� ���⥦�
  AktOFP_AktPerfPurpose6    // �����祭�� ���⥦�

  AktOfp_StBud_FpSpAttrNRec
  AktOfp_StBud_Name         // ������������ ����
  AktOfp_StBud_CO_Name      // ������������ ��
  AktOfp_StBud_Proc         // ��業�
  AktOfp_StBud_Sum          // �㬬�
  AktOfp_StBud_cVal         // �����
  AktOfp_StBud_FreeSum      // ��������
  AktOfp_StBud_StBudVal     // �����


.endFields
.{
^ ^ ^ ^ ^
^ ^ ^ ^ ^
^ ^ ^ ^ ^

.{ AktSum_AktOfp CheckEnter
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^

.{ AktSum_AktOfp_StBud CheckEnter
^ ^ ^ ^ ^ ^ ^ ^
.}

.}

.}
.endform

#doc
������� 䨭��ᮢ�� ��易⥫��⢮.<br>
#end
.linkform 'AktSum01' prototype is 'AktSum'
.nameinlist '������� 䨭��ᮢ�� ��易⥫��⢮'
.group '������� 䨭��ᮢ�� ��易⥫��⢮'
.p 50
.defo portrait
.Fields
  AktSum_desgr            // ��㯯� ���ਯ�஢
  AktSum_descr            // ���ਯ�� ��������
  AktSum_dInput           // ��� ᮧ����� ���㬥��
  AktSum_NoDoc            // ����� ���㬥��

  AktSum_fGroup           // ��㯯� ��
  AktSum_Name             // ������������
  AktSumNotes_Name        // �����
  AktSum_fAktSumPrior     // �ਮ���
  AktSum_Direct           // ���ࠢ����� �������� �।��
  AktSum_dDoc             // ������㥬�� ��� ����襭��
  AktSum_Sum              // �㬬�
  AktSum_valsAktSum       // �����
  AktSum_SumDebts         // �������������
  AktSum_valsAktSum       // �����

  AktOFP_NoDoc            // ����� ���㬥��
  AktOrg_Name             // ����ࠣ���
  AktOFP_Status           // ����� ���㬥��
  AktOFP_Prior            // �ਮ��� �ᯮ������
  AktOFP_Direct           // ���ࠢ����� �������� �।��
  AktOFP_dDoc             // ������㥬�� ��� ����襭�� ��易⥫���
  AktOFP_Summa            // �㬬� ��易⥫���
  AktOFPValSimv           // ������ �������� �������

  AktOfp_StBud_Name       // ������������ ����
  AktOfp_StBud_CO_Name    // ������������ ��
  AktOfp_StBud_Proc       // ��業�
  AktOfp_StBud_Sum        // �㬬�
  AktOfp_StBud_cVal       // �����
  AktOfp_StBud_FreeSum    // ��������
  AktOfp_StBud_StBudVal   // �����

.endFields
.{

                          ��������� ���������� ���������������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 ��㯯� ���   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ������������ ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����       ��@@@@@@@@@@@@@@@@@@@@@@�� �ਮ���     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ���ࠢ�����  ��@@@@@@@@@@@@@@@@@@@@@@�� ������㥬�� ��� ����襭�� ��@@@@@@@@@@@@@@@��
 �㬬�        ��&'&&&&&&&&&&&&&&& @@@@�� ������������� ��&'&&&&&&&&&&&&&&&&&&&&& @@@@��

.{ AktSum_AktOfp CheckEnter
 �������ᮢ�� ��易⥫��⢮��                                      ����� ��@@@@@@@@@@��
 ����ࠣ���   ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����       ��@@@@@@@@@@@@@@@@@@@@@@�� �ਮ���     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ���ࠢ�����  ��@@@@@@@@@@@@@@@@@@@@@@�� ������㥬�� ��� ����襭�� ��@@@@@@@@@@@@@@@��
 �㬬�        ��&'&&&&&&&&&&&&&&& @@@@��

.{ AktSum_AktOfp_StBud CheckEnter
 �����       ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ��業�      ��&'&&&%��          �㬬� ��&'&&&&&&&&&&&&&&& @@@@��
.{?internal; (TuneBudget = 1)
                           �������� ��&'&&&&&&&&&&&&&&& @@@@��
.}

.}
.}

.}
.endform
