/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994, 2003 ��牆���罔� ���������                   �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ���� � ������������                                       �
 � �ム瓱�        : 7.10                                                      �
 � ��Л�腑�┘    : �砒モ� か� ��癸珮���                                      �
 � �癶モ痰▲��覃 : ����牀� �ム�ォ ���皰�譽※� (SSA)                          �
 � �����モ琺     :                                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
//=== ������ ��� ��������� ===
.set name = 'ShifrMG'
.hide
.fields
  dateRec dateEnd             //1,2
  //-->1
  kod_podr name_podr          //3,4
   //-->2
   kod_party name_party        //5,6
    //-->3
    kod_groupmc name_groupmc   //7,8
           //-->4
                        namnom_syr edizm_syr kol_syr cen_syr sum_syr nomdoc type_syr nrec_syr nrec_part_syr //9,10,11,12,13,14,15,16,17
           //<--4
          sum_groupmc                //18
    //<--3
   sum_party                   //19
   //<--2
  sum_podr                    //20
  //<--1
  SUM_VED                     //21
.endfields

^ ^
.{
^ ^
.{
^ ^
.{
^ ^
.{
        ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^
.}
^
.}
^
.}
^
.endform

.linkform 'ShifrMG_01' prototype is 'ShifrMG'
.NameInList '������� � ������� ���/���/������ ��'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  kod_podr name_podr          //3,4
  kod_party                   //5
  kod_groupmc  sum_groupmc    //7,18
  kod_party sum_party         //5,19
  kod_podr name_podr sum_podr //3,4,20
  SUM_VED                     //21
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     ����む�Гカキ┘   @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
        ��籥  @@@@@@@@
.{
.{
.}
            @@@@@@@@@                           &&&&&&&&&&&&&&&&&&&&.&&
.}
        �皰�� �� ��� @@@@@@@@@@@@@                    &&&&&&&&&&&&&&&&&.&&
     ______________________________________________________________________
.}
     ���皰�� ��  ��む�Гカキ��:@@@@@@ @@@@@@@@@@@@@@@@@@@  &&&&&&&&&&&&&&.&&��
     =======================================================================
   
.}
     �皰�� ��  ▲ぎ��痰�:                                &&&&&&&&&&&&&&.&&
.endform

.linkform 'ShifrMG_02' prototype is 'ShifrMG'
.NameInList '������� � ������� ���/���/������/��'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  kod_podr name_podr          //3,4
  kod_party name_party        //5,6
  kod_groupmc name_groupmc    //7,8
        namnom_syr kol_syr edizm_syr cen_syr:'P:L' sum_syr:'P:L' nomdoc //9,10,11,12,13,14
  kod_groupmc sum_groupmc     //7,18
  kod_party sum_party         //5,19
  kod_podr name_podr sum_podr //3,4,20
  SUM_VED                     //21
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     ����む�Гカキ┘   @@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
        ��籥  @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
           �珮���  @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
.{
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&.&& @@@@@@@@@ �� &&&&&&&&&.&& 痰�━.&'&&&&&&&&&&&.&& ����.� @@@@@@@@@@@@@@@@@@@
.}
��
           �皰�� �� �珮��� @@@@@@@@@             &'&&&&&&&&&&&&&&&&&&&.&&
.}
        �皰�� �� ��� @@@@@@@@@@@@@                    &'&&&&&&&&&&&&&&&&.&&
     ______________________________________________________________________
.}
     ���皰�� ��  ��む�Гカキ��:@@@@@@ @@@@@@@@@@@@@@@@@@@  &'&&&&&&&&&&&&&.&&��
     =======================================================================
   
.}
     �皰�� ��  ▲ぎ��痰�:                                &'&&&&&&&&&&&&&.&&
.endform

//=== ������ ��� ���������1 ===
.set name = 'ShifrMG1'
.hide
.fields
  dateRec dateEnd             //1,2
  //-->1
  kod_party name_party        //3,4
   //-->2
   kod_podr name_podr        //5,6
    //-->3
    kod_groupmc name_groupmc  //7,8
           //-->4
                        namnom_syr edizm_syr kol_syr cen_syr sum_syr nomdoc type_syr nrec_syr nrec_part_syr //9,10,11,12,13,14,15,16,17
           //<--4
          sum_groupmc               //18
    //<--3
   sum_podr                   //19
   //<--2
  sum_party                   //20
  //<--1
  SUM_VED                     //21
.endfields

^ ^
.{
^ ^
.{
^ ^
.{
^ ^
.{
        ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^
.}
^
.}
^
.}
^
.endform

.linkform 'ShifrMG1_01' prototype is 'ShifrMG1'
.NameInList '������� � ������� ���/���/������ ��'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  kod_party name_party        //3,4
  kod_podr name_podr          //5,6
  kod_groupmc name_groupmc sum_groupmc //7,8,18
  name_podr sum_podr          //6,19
  name_party sum_party        //4,20
  SUM_VED                     //21
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     ����籥 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
        ��む�Гカキ┘ @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.{
.}
          @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&.&&
.}
        �皰�� �� ��む�Гカキ�� @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&&
     ______________________________________________________________________
.}
     ���皰�� �� ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
     =======================================================================
   
.}
     �皰�� ��  ▲ぎ��痰�:                          &'&&&&&&&&&&&&&&&&&&&&.&&
.endform

.linkform 'ShifrMG1_02' prototype is 'ShifrMG1'
.NameInList '������� � ������� ���/���/������/��'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  kod_party name_party        //3,4
  kod_podr name_podr          //5,6
  kod_groupmc name_groupmc    //7,8
        namnom_syr kol_syr edizm_syr cen_syr:'P:L' sum_syr:'P:L' nomdoc //9,10,11,12,13,14
        name_groupmc sum_groupmc    //8,18
  name_podr sum_podr          //6,19
  name_party sum_party        //4,20
  SUM_VED                     //21
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     ����籥 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
        ��む�Гカキ┘ @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
           �珮��� @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
.{
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&.&& @@@@@@@@@ �� &&&&&&&&&.&& 痰�━.&'&&&&&&&&&&&.&& ����.� @@@@@@@@@@@@@@@@@@@
.}
��
           �皰�� �� �珮��� @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&
.}
        �皰�� �� ��む�Гカキ�� @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&&
     ______________________________________________________________________
.}
     ���皰�� �� ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
     =======================================================================
   
.}
     �皰�� ��  ▲ぎ��痰�:                          &'&&&&&&&&&&&&&&&&&&&&.&&
.endform

//=== ������ ��� ���������2 ===
.set name = 'ShifrMG2'
.hide
.fields
  dateRec dateEnd               //1,2
         //-->1
         name_SchSbsch                //3
    //-->2
    kod_party name_party        //4,5
     //-->3
     kod_podr name_podr         //6,7
      //-->4
      kod_groupmc name_groupmc  //8,9
             //-->5
                         namnom_syr edizm_syr kol_syr cen_syr sum_syr nomdoc type_syr nrec_syr nrec_part_syr //10,11,12,13,14,15,16,17,18
             //<--5
            sum_groupmc               //19
      //<--4
     sum_podr                   //20
     //<--3
    sum_party                   //21
    //<--2
         sum_SchSbsch                //22
         //<--1
  SUM_VED                     //23
.endfields

^ ^
.{
^
.{
^ ^
.{
^ ^
.{
^ ^
.{
        ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
^
.}
^
.}
^
.}
^
.}
^
.endform

.linkform 'ShifrMG2_01' prototype is 'ShifrMG2'
.NameInList '������� � ������� C���/���/���'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  name_SchSbsch               //3
  kod_party name_party        //4,5
  kod_podr name_podr sum_podr //6,7,20
  name_party sum_party        //5,21
  name_SchSbsch sum_SchSbsch  //3,22
  SUM_VED                     //23
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     C��� @@@@@@@@@@@@@@@@@@@@@@@@
.{
     ����籥 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
.{
.{
.}
.}
         @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&&
.}
     ���皰�� �� ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
     =======================================================================
.}
     ����� �� ����� @@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&&.&&
.}
     �皰�� ��  ▲ぎ��痰�:                          &'&&&&&&&&&&&&&&&&&&&&.&&
.endform

.linkform 'ShifrMG2_02' prototype is 'ShifrMG2'
.NameInList '������� � ������� ����/���/���/������ ��'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  name_SchSbsch               //3
  kod_party name_party        //4,5
  kod_podr name_podr          //6,7
  kod_groupmc name_groupmc sum_groupmc //8,9,16
  name_podr sum_podr          //7,20
  name_party sum_party        //5,21
  name_SchSbsch sum_SchSbsch  //3,22
  SUM_VED                     //23
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     C��� @@@@@@@@@@@@@@@@@@@@@@@@
.{
     ����籥 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
        ��む�Гカキ┘ @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
.{
.}
          @@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&.&&
.}
        �皰�� �� ��む�Гカキ�� @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&&
     ______________________________________________________________________
.}
     ���皰�� �� ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
     =======================================================================
.}
     ����� �� ����� @@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&&.&&
.}
     �皰�� ��  ▲ぎ��痰�:                          &'&&&&&&&&&&&&&&&&&&&&.&&
.endform

.linkform 'ShifrMG2_03' prototype is 'ShifrMG2'
.NameInList '������� � ������� ����/���/���/������/��'
.Group '��������� ����������� ������'
.p 83
.fields
  dateRec dateEnd             //1,2
  name_SchSbsch               //3
  kod_party name_party        //4,5
  kod_podr name_podr          //6,7
  kod_groupmc name_groupmc    //8,9
  namnom_syr kol_syr edizm_syr cen_syr:'P:L' sum_syr:'P:L' nomdoc //10,11,12,13,14,15
  name_groupmc sum_groupmc    //9,16
  name_podr sum_podr          //7,20
  name_party sum_party        //5,21
  name_SchSbsch sum_SchSbsch  //3,22
  SUM_VED                     //23
.endfields
.[h skip
                                                              ��痰 @NP@
     ---------------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ---------------------------------------------------------------------------
.]h
                ��������� ����������� ������ �� ����������
           �� �ム┏�  � ^ �� ^
     ----------------------------------------------------------------------
         �珮��� ��砌キ��痰�             |              �皰━�痰�
     ----------------------------------------------------------------------
.{
     C��� @@@@@@@@@@@@@@@@@@@@@@@@
.{
     ����籥 @@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{
        ��む�Гカキ┘ @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.{
           �珮��� @@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
��
.{
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &&&&&&&&&.&& @@@@@@@@@ �� &&&&&&&&&.&& 痰�━.&'&&&&&&&&&&&.&& ����.� @@@@@@@@@@@@@@@@@@@
.}
��
           �皰�� �� �珮��� @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&
.}
        �皰�� �� ��む�Гカキ�� @@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&.&&
     ______________________________________________________________________
.}
     ���皰�� �� ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&.&&��
     =======================================================================
   
.}
     ����� �� ����� @@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&&&&&&&.&&
.}
     �皰�� ��  ▲ぎ��痰�:                          &'&&&&&&&&&&&&&&&&&&&&.&&
.endform
