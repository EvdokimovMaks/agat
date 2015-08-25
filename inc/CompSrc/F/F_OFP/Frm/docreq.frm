//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� "���⥦�� ���������"
// ��� �� ���⥦
//------------------------------------------------------------------------------

#doc
����� - ��� �� ���⥦ (���⨯).<br>
#end
.set name='DocReq'
.hide
.Fields
  DocReqNRec
// 10
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��
  DocReq_Status           // ����� ���㬥��
  DocReq_TipMoney         // ��� �� �����
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
// 8
  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������
  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���
  DocReq_MeanType         // ��� ���⥦���� �।�⢠
  DocReq_PlatMean         // ���⥦��� �।�⢮

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

  DocReq_wPeriod          // ��ਮ��筮��� ���⥦�
  DocReq_DaysOffset       // ������⢮ ���� ᬥ饭�� �⭮�⥫쭮 ��砫� ��ਮ��
  DocReq_MaxSumma         // ���ᨬ��쭠� �㬬� ���
  CreditName              // ������������ �।��
  TuneBudget              // ���� ��� � ��⮬

// �����᪠ �� �����
  DocReq_StBud_FpSpAttrNRec
  DocReq_StBud_Name         // ������������ ����
  DocReq_StBud_CO_Name      // ������������ ��
  DocReq_StBud_Proc         // ��業�
  DocReq_StBud_Sum          // �㬬�
  DocReq_StBud_cVal         // �����
  DocReq_StBud_FreeSum      // ��������
  DocReq_StBud_StBudVal     // ����� ᢮������ �㬬�
  DocReq_StBud_Plan         // ����
  DocReq_StBud_Fact         // ����
  DocReq_StBud_Rezerv       // �����

.endFields
.{
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^

.{ DocReq_StBud CheckEnter
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}

.}
.endform

//------------------------------------------------------------------------------
#doc
��� �� ��室������ �।��.<br>
#end
.linkform 'DocReq01' prototype is 'DocReq'
.nameinlist '��� �� ��室������ �।��'
.group '��� �� ��室������ �।��'
.p 50
.defo portrait
.set filler = '_'
.Fields
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��

  DocReq_Status           // ����� ���㬥��
  DocReq_TipMoney         // ��� �� �����
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���

  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������
  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

// �����᪠ �� �����
  DocReq_StBud_Name       // ������������ ����
  DocReq_StBud_CO_Name    // ������������ ��
  DocReq_StBud_Proc       // ��業�
  DocReq_StBud_Sum        // �㬬�
  DocReq_StBud_cVal       // �����
  DocReq_StBud_FreeSum    // ��������
  DocReq_StBud_StBudVal   // ����� ᢮������ �㬬�

.endFields
.{

                          �������� �� ������������ ���������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@�� ��� �� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �������    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 ������� � ��ਮ� � ��@@@@@@@@@@�� �� ��@@@@@@@@@@�� �� �㬬� ��&'&&&&&&&&&&&&&&&& @@@@@��

 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ DocReq_StBud CheckEnter
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                          ��業�    ��&'&&&%��       �㬬� ��&'&&&&&&&&&&&&&&& @@@@@��
.{?internal; (TuneBudget = 1)
                                                ����������&'&&&&&&&&&&&&&&& @@@@@��
.}

.}

.}
.endform

//------------------------------------------------------------------------------
#doc
��� �� ��室������ �।��.<br>
#end
.linkform 'DocReq02' prototype is 'DocReq'
.nameinlist '��� �� ��室������ �।��'
.group '��� �� ��室������ �।��'

.p 50
.defo portrait
.set filler = '_'
.Fields
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��

  DocReq_Status           // ����� ���㬥��
  DocReq_TipMoney         // ��� �� �����
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���

  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������
  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

// �����᪠ �� �����
  DocReq_StBud_Name       // ������������ ����
  DocReq_StBud_CO_Name    // ������������ ��
  DocReq_StBud_Proc       // ��業�
  DocReq_StBud_Sum        // �㬬�
  DocReq_StBud_cVal       // �����
  DocReq_StBud_FreeSum    // ��������
  DocReq_StBud_StBudVal   // ����� ᢮������ �㬬�

.endFields
.{

                          �������� �� ������������ ���������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@�� ��� �� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �������    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 � ��ਮ� � ��@@@@@@@@@@�� �� ��@@@@@@@@@@��          �� �㬬� ��&'&&&&&&&&&&&&&&&& @@@@@��

 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ DocReq_StBud CheckEnter
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                          ��業�    ��&'&&&%��       �㬬� ��&'&&&&&&&&&&&&&&& @@@@@��
.{?internal; (TuneBudget = 1)
                                                ����������&'&&&&&&&&&&&&&&& @@@@@��
.}

.}

.}
.endform

//------------------------------------------------------------------------------
#doc
��� �� ��ਮ���᪨� ��室 �।��.<br>
#end
.linkform 'DocReq03' prototype is 'DocReq'
.nameinlist '��� �� ��ਮ���᪨� ��室 �।��'
.group '��� �� ��ਮ���᪨� ��室 �।��'
.p 50
.defo portrait
.set filler = '_'
.Fields
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��

  DocReq_Status           // ����� ���㬥��
  DocReq_TipMoney         // ��� �� �����
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���

  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������
  DocReq_wPeriod          // ��ਮ��筮��� ���⥦�
  DocReq_DaysOffset       // ������⢮ ���� ᬥ饭�� �⭮�⥫쭮 ��砫� ��ਮ��

  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_MaxSumma         // ���ᨬ��쭠� �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

  // �����᪠ �� �����
  DocReq_StBud_Name       // ������������ ����
  DocReq_StBud_CO_Name    // ������������ ��
  DocReq_StBud_Proc       // ��業�
  DocReq_StBud_Sum        // �㬬�
  DocReq_StBud_cVal       // �����
  DocReq_StBud_FreeSum    // ��������
  DocReq_StBud_StBudVal   // ����� ᢮������ �㬬�

.endFields
.{

                     �������� �� ������������� ������ ���������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@�� ��� �� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �������    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �ந������� ������ � ��ਮ� � ��@@@@@@@@@@@�� �� ��@@@@@@@@@@@��
 ��ਮ���᪨ ���� ࠧ � ��@@@@@@@@@@@�� � ᬥ饭��� � ��@@@@�� ���� �� ��砫� ��ਮ��

 �������쭠� �㬬� ���⥦�  ��&'&&&&&&&&&&&&&&&& @@@@@@��
 ���ᨬ��쭠� �㬬� ���⥦� ��&'&&&&&&&&&&&&&&&& @@@@@@��

 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ DocReq_StBud CheckEnter
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                          ��業�    ��&'&&&%��       �㬬� ��&'&&&&&&&&&&&&&&& @@@@@��
.{?internal; (TuneBudget = 1)
                                                ����������&'&&&&&&&&&&&&&&& @@@@@��
.}

.}

.}
.endform

//------------------------------------------------------------------------------
#doc
��� �� ��ਮ���᪨� ��室 �।��.<br>
#end
.linkform 'DocReq04' prototype is 'DocReq'
.nameinlist '��� �� ��ਮ���᪨� ��室 �।��'
.group '��� �� ��ਮ���᪨� ��室 �।��'
.p 50
.defo portrait
.set filler = '_'
.Fields
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��

  DocReq_Status           // ����� ���㬥��
  DocReq_TipMoney         // ��� �� �����
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���

  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������

  DocReq_wPeriod          // ��ਮ��筮��� ���⥦�
  DocReq_DaysOffset       // ������⢮ ���� ᬥ饭�� �⭮�⥫쭮 ��砫� ��ਮ��

  DocReq_MeanType         // ��� ���⥦���� �।�⢠
  DocReq_PlatMean         // ���⥦��� �।�⢮
  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

// �����᪠ �� �����
  DocReq_StBud_Name       // ������������ ����
  DocReq_StBud_CO_Name    // ������������ ��
  DocReq_StBud_Proc       // ��業�
  DocReq_StBud_Sum        // �㬬�
  DocReq_StBud_cVal       // �����
  DocReq_StBud_FreeSum    // ��������
  DocReq_StBud_StBudVal   // ����� ᢮������ �㬬�

.endFields
.{

                     �������� �� ������������� ������ ���������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@�� ��� �� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �������    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 ������᪨� ��室 � ��ਮ� � ��@@@@@@@@@@@�� �� ��@@@@@@@@@@@��
 ��ਮ���᪨ ���� ࠧ � ��@@@@@@@@@@@@�� � ᬥ饭��� � ��@@@@�� ���� �� ��砫� ��ਮ��
 ��� ���⥦���� �।�⢠ ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ���⥦��� �।�⢮      ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �㬬� ��&'&&&&&&&&&&&&&&&& @@@@@��

 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ DocReq_StBud CheckEnter
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                          ��業�    ��&'&&&%��       �㬬� ��&'&&&&&&&&&&&&&&& @@@@@��
.{?internal; (TuneBudget = 1)
                                                ����������&'&&&&&&&&&&&&&&& @@@@@��
.}

.}

.}
.endform

//------------------------------------------------------------------------------
#doc
��� �� ����祭�� �।��.<br>
#end
.linkform 'DocReq05' prototype is 'DocReq'
.nameinlist '��� �� ����祭�� �।��'
.group '��� �� ����祭�� �।��'
.p 50
.defo portrait
.set filler = '_'
.Fields
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��

  DocReq_Status           // ����� ���㬥��
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���

  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������

  CreditName              // ������������ �।��

  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

// �����᪠ �� �����
  DocReq_StBud_Name       // ������������ ����
  DocReq_StBud_CO_Name    // ������������ ��
  DocReq_StBud_Proc       // ��業�
  DocReq_StBud_Sum        // �㬬�
  DocReq_StBud_cVal       // �����
  DocReq_StBud_FreeSum    // ��������
  DocReq_StBud_StBudVal   // ����� ᢮������ �㬬�

.endFields
.{

                           �������� �� ��������� ���������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �������    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 ������� �।�� � ��ਮ� � ��@@@@@@@@@@@�� �� ��@@@@@@@@@@@��
 �।��     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �㬬� ��&'&&&&&&&&&&&&&&&& @@@@@��

 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ DocReq_StBud CheckEnter
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                          ��業�    ��&'&&&%��       �㬬� ��&'&&&&&&&&&&&&&&& @@@@@��
.{?internal; (TuneBudget = 1)
                                                ����������&'&&&&&&&&&&&&&&& @@@@@��
.}

.}

.}
.endform

//------------------------------------------------------------------------------
#doc
���⥦��� ���.<br>
#end
.linkform 'DocReq31' prototype is 'DocReq'
.nameinlist '���⥦��� ���'
.group '���⥦��� ���'
.p 50
.defo portrait
.set filler = '_'
.Fields
  DocReq_desgr            // ��㯯� ���ਯ�஢
  DocReq_descr            // ���ਯ�� ��������
  DocReq_dInput           // ��� ᮧ����� ���㬥��
  DocReq_NoDoc            // ����� ���㬥��

  DocReq_Status           // ����� ���㬥��
  DocReq_TipMoney         // ��� �� �����
  DocReq_Purpose          // �����祭��
  DocReq_Prior            // �ਮ��� �ᯮ������
  DocReq_Dogovor          // �������
  DocReq_Kontr            // ������������ ����ࠣ���

  DocReq_dBegPlat         // ��� ��砫� ��ਮ�� ������
  DocReq_dEndPlat         // ��� ����砭�� ��ਮ�� ������
  DocReq_Summa            // �㬬� ���
  DocReqValSimv           // ������ �������� ������� ���

  DocReq_Center           // ����� �⢥��⢥�����
  DocReq_Curator          // ����� ���

// �����᪠ �� �����
  DocReq_StBud_Name       // ������������ ����
  DocReq_StBud_CO_Name    // ������������ ��
  DocReq_StBud_Proc       // ��業�
  DocReq_StBud_Sum        // �㬬�
  DocReq_StBud_cVal       // �����
  DocReq_StBud_FreeSum    // ��������
  DocReq_StBud_StBudVal   // ����� ᢮������ �㬬�

.endFields
.{

                                  ����������� ��������


 ��㯯�/���ਯ�� ��@@@@@@/@@@@@@@@@@�� ��� ᮧ����� ��@@@@@@@@@@@�� ����� ��@@@@@@@@@@��

 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@�� ��� �� ����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����祭�� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �ਮ���  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 �������    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����ࠣ��� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

 ������� � ��ਮ� � ��@@@@@@@@@@�� �� ��@@@@@@@@@@�� �� �㬬� ��&'&&&&&&&&&&&&&&&& @@@@@��

 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 �����    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

.{ DocReq_StBud CheckEnter
 �����     ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
 ����� �⢥��⢥����� ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                          ��業�    ��&'&&&%��       �㬬� ��&'&&&&&&&&&&&&&&& @@@@@��
.{?internal; (TuneBudget = 1)
                                                ����������&'&&&&&&&&&&&&&&& @@@@@��
.}

.}

.}
.endform
