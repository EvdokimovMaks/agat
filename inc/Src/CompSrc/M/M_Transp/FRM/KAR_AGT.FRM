/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : �≒�矗��甎�珥                                             �
 � �ム瓱�        : 5.00                                                      �
 � ��Л�腑�┘    : ��珥�皀�� ��爛��皰�                                       �
 � �癶モ痰▲��覃 : ��瓱�� �����跫                                            �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='kar_agt'
.hide
.group '｡薑� ������皀��'
.defo Landscape
.fields
 Arch
 NameOrg CurDate

 Compon_NRec
 aAvtoNom aAvtoGNom VidAgr KatOrg_Izg Date_Izg aNum aDateOn aStatus aTipComp aPodrKomp aMarkaTC
 aProbegn : double aProbegF: double aDateOff aStatusO
 Ist dIst
 aProbegGar : double aProbegExpl :double aMotoAll:double aMotoSr:double aMotoGar:double  aMotoExpl:double
 aDniAll:double �DniSr:double aDniGar:double  aDniExpl:double
 aMonthAll:double �MonthSr:double aMonthGar:double  aMonthExpl:double
 aCycleAll:double �CycleSr:double aCycleGar:double  aCycleExpl:double
 aNomAgt aPrice:double

 ExtAtrName ExtAtrVal

 aProbBeg:double aMotoBeg:double aDniBeg:double aMonthBeg:double aCycleBeg:double
 aPriceEnd:double
 sNomComp

 Compon_Move_NRec  sRemoval
 sMoveMarkaTC
 DaAvtoNom DaAvtoGNom DaDateOn DaStatus DaPodrKomp DaMarkaTC
 DaProbegn:double DaProbegF:double DaMotoSr:double DaMotoAll:double DaDniSr DaDniAll
 DaMonthSr DaMonthAll
 DaCycleAll DaCycleSr
 DaDateOff DaStatusO DaIst
 sMonth sYear SumProbegMonth:double SumProbeg:double SumMotoMonth:double SumMoto:double
 InChangeTransp
 sMainComissPost sMainComissFIO
 sComissPost sComissFIO
.endfields

^ ^ ^
.{
.[h OverWrite
.]h
^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^  ^
^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^
.if Ext_Atr
.{
^ ^
.}
.end
^ ^ ^ ^ ^
^ ^
.if Kar_Agt
.{
^ ^
^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^
^ ^
^ ^ ^
.{
^ ^ ^ ^ ^ ^
.}

.}
.end
^
^ ^
.{ CheckEnter ComissKarAgt
^ ^
.}
.[f
.]f
.}

.endform

.linkform 'kar_Agt_01' prototype is 'kar_Agt'
.NameInList '���甌� �����オ矣鉗��'
.group '｡薑� ������皀��'
.Defo Landscape
.fields
 CommonFormHeader
 Arch
 NameOrg CurDate
 aAvtoNom aAvtoGNom VidAgr aNomAgt aDateOn aStatus aProbegn aProbegF aMotoSr aMotoAll �DniSr aDniAll
 �MonthSr aMonthAll aCycleAll �CycleSr
 aDateOff
 aStatusO   Ist
.endfields
��^
                                      ���甌� �����オ矣鉗�� ^
                                         �� �爍��├�罔�
                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                    �� @@@@@@@@@@@@@@@@@@@@
.{
.[h OverWrite
陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳陳堕陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳賃陳陳陳陳堕陳陳陳陳堕陳陳陳陳堕陳陳陳賃陳陳陳陳賃陳陳陳陳堕陳陳陳陳堕陳陳陳賃陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳�
  ���.   �����Ν覃 �      �┐         � ���ム  �  ����    �  �┓    � 蹍．� � 蹍．� � ��皰��瘠� ��皰��瘠�  ���   �  ���    � ���-〓 � ���-〓  � ���-〓 � ���-〓  �  ����    �    �┓    � �痰�膈┴
  ���ム  �  ���ム  �   �����オ矣鉗ォ  � �����. 潟痰���→� �(���覃 � � �♂┤  � �� ��  �  �♂┘  � �� ��   � �♂┘  � �� ��   階メ閹ア � �メ閹ア � 罔���� � 罔����  � 甅閧��   凱皖爛��キ�鏗��痰祚�キ��
痼イ痰�� 梶爛め癶� �                  �        �          蟹��.爛�) �        �        �         �         �        �         � �♂┘  � �� ��   � �♂ゥ  � �� ��   �          �           �
陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳陳祖陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳珍陳陳陳陳祖陳陳陳陳祖陳陳陳陳祖陳陳陳珍陳陳陳陳珍陳陳陳陳祖陳陳陳陳祖陳陳陳珍陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳�
.]h
@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&.&& &&&&&.&& @@@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@
.if Ext_Atr
.{
.}
.end
.if Kar_Agt
.{
.{
.}
.}
.end
.{ CheckEnter ComissKarAgt
.}
.[f
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.]f
.}��
.endform

.linkform 'kar_Agt_02' prototype is 'kar_Agt'
.NameInList '踳�謌キ┘ 蹣甎�����罔���諷 ��爼'
.group '踳�謌キ┘ 蹣甎�����罔���諷 ��爼'
.Defo Landscape
.var
RazProbeg        :double
RazMoto          :double
RazDni           :double
RazMonth         :double
RazCycle         :double
.endvar
.fields
 CommonFormHeader
 Arch
 NameOrg CurDate
 aAvtoNom aAvtoGNom VidAgr aNomAgt aDateOn aStatus aProbegn  aProbegExpl RazProbeg
 aMotoAll aMotoExpl RazMoto
 aDniAll aDniExpl RazDni
 aMonthAll aMonthExpl RazMonth
 aCycleAll aCycleExpl RazCycle
 aDateOff
 aStatusO
.endfields
��^
                      �����オ矣鉗┘ ^ � �爛�謌キ�覓� 蹣甎�����罔���覓� ��爼���
                                         �� �爍��├�罔�
                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                    �� @@@@@@@@@@@@@@@@@@@@
.{
.[h OverWrite
陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳陳堕陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳堕陳陳陳陳賃陳陳陳陳賃陳陳陳陳堕陳陳陳陳堕陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳�
  ���.   �����Ν覃 �      �┐         � ���ム  �  ����    �  �┓    �  蹍．�   �  蹍．�   �    +/-    � ��皰��瘠 � ��皰��瘠  �   +/-    �   ���    �   ���    �   +/-   � ���-〓  � ���-〓   �   +/-   � ���-〓 � ���-〓  �  +/-    �  ����    �   �┓
  ���ム  �  ���ム  �   �����オ矣鉗ォ  � �����. 潟痰���→� �(���覃 � �  �♂┤    � 蹣甎����. �  �牀．�   �  �♂┘   � 蹣甎����. � ��皰���  �  �♂┘   � 蹣甎����.�   き�   � �メ閹ア � �メ閹ア  � �メ閹�  � 罔���� � 罔����  � 罔���   皆��爛��キ.凱皖爛��キ��
痼イ痰�� 梶爛め癶� �                  �        �          蟹��.爛�) �           �           � 蹣甎����. �          �           � 蹣甎����.�          �          轄�甎����.�  �♂┘  � 蹣甎����.轄�甎����.� �♂┘  轄�甎����.轄�甎����.�          �
陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳陳祖陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳祖陳陳陳陳珍陳陳陳陳珍陳陳陳陳祖陳陳陳陳祖陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳�
.]h
.begin
RazProbeg   := aProbegExpl - aProbegn
RazMoto     := aMotoExpl   - aMotoAll
RazDni      := aDniExpl    - aDniAll
RazMonth    := aMonthExpl  - aMonthAll
RazCycle    := aCycleExpl  - aCycleAll
end.
@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@
.if Ext_Atr
.{
.}
.end
.if Kar_Agt
.{
.{
.}
.}
.end
.{ CheckEnter ComissKarAgt
.}
.[f
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.]f
.}��
.endform


.linkform 'kar_Agt_03' prototype is 'kar_Agt'
.NameInList '��珥�皀�� �����オ矣鉗��'
.group '｡薑� ������皀��'
.Defo Landscape
.fields
 CommonFormHeader
 Arch
 NameOrg CurDate

 VidAgr aNomAgt aNum aProbegGar aProbegExpl aMotoExpl aPrice

 DaAvtoNom DaAvtoGNom DaDateOn DaStatus DaProbegn DaProbegF
 DaMotoSr DaMotoAll DaDateOff DaStatusO DaIst

.endfields
��^
                                    ��珥�皀�� �����オ矣鉗�� ^
                                         �� �爍��├�罔�
                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                    �� @@@@@@@@@@@@@@@@@@@@

.{

        ��珥�腦� 竍モ� �����オ矣鉗ォ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                          ���ム  @@@@@@@@@@@@@@@@@@
        ��Кム ______ ��ぅ�� _________  ��〓め��� N @@@@@@@@@
                   ��〓�-├��皰※皀�� _________ ���� ___________
�����皋���� ��爼� �牀．�� &&&&&&&.&& ��甎�����罔����� ��爼� �牀．�� &&&&&&&.&&
��甎�����罔����� ��爼� ��皰��甌� &&&&&&&&&&&&.&&
�皰━�痰� �� ���キ� ���爛��キ�� &&&&&&&&&&&&.&&
.if Ext_Atr
.{
.}
.end
.if Kar_Agt
陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳賃陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳�
   ���.  �����Ν覃 �  ����    �  �┓    � 蹍．� � 蹍．� � ��皰��瘠 � ��皰��瘠  �   ����   �   �┓     � �痰�膈┴
  ���ム  �  ���ム  潟痰���→� �(���覃 � � �♂┤  � �� ��  �  �♂┘   �  �� ��    �  甅閧��  凱皖爛��キ�鏗��痰祚�キ��
痼イ痰�� 梶爛め癶� �          蟹��.爛�) �        �        �          �           �          �           �
陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳珍陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳�
.{
@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&.&& &&&&&.&& @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@
.{
.}
.}
.end
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.{ CheckEnter ComissKarAgt
.}
.}��
.endform

.linkform 'kar_Agt_04' prototype is 'kar_Agt'
.NameInList '����→� � あ└キ┬ �����オ矣鉗��'
.group '｡薑� ������皀��'
.Defo Landscape
.fields
 CommonFormHeader
 Arch
 NameOrg CurDate

 aNomAgt VidAgr aProbegn aProbegGar aProbegExpl
 aAvtoGNom
 aMotoSr aMotoGar aMotoExpl
 �DniSr aDniGar aDniExpl
 �MonthSr aMonthGar aMonthExpl
 aCycleAll aCycleGar aCycleExpl

 DaAvtoNom DaAvtoGNom DaDateOn DaStatus DaProbegn DaProbegF
 DaMotoSr DaMotoAll DaDniSr DaDniAll DaMonthSr DaMonthAll
 DaCycleAll DaCycleSr
 DaDateOff DaStatusO DaIst

.endfields
��^
                                  �腑� あ└キ�� �����オ矣鉗�� ^
                                         �� �爍��├�罔�
                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                    �� @@@@@@@@@@@@@@@@@@@@

.{

       ����→� � あ└キ┬
陳陳陳陳賃陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
陳陳陳陳珍陳陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳陳
           蹍．�            �
陳陳陳陳賃陳陳陳陳賃陳陳陳陳調 ���ム 痼イ痰��
｡薑�    �������.  ���甎����.�
陳陳陳陳津陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳陳
&&&&&&.& �&&&&&&.& �&&&&&&&.&�
陳陳陳陳珍陳陳陳陳珍陳陳陳陳調
          ��皰��瘠           �  @@@@@@@@@@@@@
陳陳陳陳賃陳陳陳陳賃陳陳陳陳調
｡薑�    �������.  ���甎����.�
陳陳陳陳津陳陳陳陳津陳陳陳陳調
&&&&&&.& �&&&&&&.& �&&&&&&&.&�
陳陳陳陳珍陳陳陳陳珍陳陳陳陳調
          ���                �
陳陳陳陳賃陳陳陳陳賃陳陳陳陳調
｡薑�    �������.  ���甎����.�
陳陳陳陳津陳陳陳陳津陳陳陳陳調
&&&&&&.& �&&&&&&.& �&&&&&&&.&�
陳陳陳陳珍陳陳陳陳珍陳陳陳陳調
    ����腑痰〓 �メ閹ア       �
陳陳陳陳賃陳陳陳陳賃陳陳陳陳調
｡薑�    �������.  ���甎����.�
陳陳陳陳津陳陳陳陳津陳陳陳陳調
&&&&&&.& �&&&&&&.& �&&&&&&&.&�
陳陳陳陳珍陳陳陳陳珍陳陳陳陳調
    ����腑痰〓 罔����        �
陳陳陳陳賃陳陳陳陳賃陳陳陳陳調
｡薑�    �������.  ���甎����.�
陳陳陳陳津陳陳陳陳津陳陳陳陳調
&&&&&&.& �&&&&&&.& �&&&&&&&.&�
陳陳陳陳珍陳陳陳陳珍陳陳陳陳調
.if Ext_Atr
.{
.}
.end
.if Kar_Agt
陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳賃陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳賃陳陳陳陳堕陳陳陳賃陳陳陳陳堕陳陳陳賃陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳陳
   ���.  �����Ν覃 �  ����    �  �┓    � 蹍．� � 蹍．� � ��皰��瘠 � ��皰��瘠 �  ���   �  ���   � ���-〓 � ���-〓 � ���-〓 � ���-〓 �  ����    �    �┓    � �痰�膈┴
  ���ム  �  ���ム  潟痰���→� �(���覃 � � �♂┤  �  �� �� �  �♂┘   �  �� ��   � �♂┘  � �� ��  � �メ閹ア� �メ閹ア� 罔���� � 罔���� � 甅閧��   凱皖爛��キ�鏗��痰祚�キ��
痼イ痰�� 梶爛め癶� �          蟹��.爛�) �        �        �          �          �        �        � �♂┘  �  �� �� � �♂┘  � �� ��  �          �           �
陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳珍陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳珍陳陳陳陳祖陳陳陳珍陳陳陳陳祖陳陳陳珍陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳陳
.{
@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&.&& &&&&&.&& @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@ @@@@@@@@ @@@@@@@@ @@@@@@@@ @@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@@
.{
.}
.}
.end
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.{ CheckEnter ComissKarAgt
.}
.}��
.endform
.linkform 'kar_Agt_05' prototype is 'kar_Agt'
.NameInList '踳�謌キ┘ �����皋��諷 ��爼'
.group '踳�謌キ┘ �����皋��諷 ��爼'
.Defo Landscape
.var
RazProbeg        :double
RazMoto          :double
RazDni           :double
RazMonth         :double
RazCycle         :double
.endvar
.fields
 CommonFormHeader
 Arch
 NameOrg CurDate
 aAvtoNom aAvtoGNom VidAgr aNomAgt aDateOn aStatus aProbegn  aProbegGar RazProbeg
 aMotoAll aMotoGar RazMoto
 aDniAll aDniGar RazDni
 aMonthAll aMonthGar RazMonth
 aCycleAll aCycleGar RazCycle
 aDateOff
 aStatusO
.endfields
��^
                      �����オ矣鉗┘ ^ � �爛�謌キ�覓� �����皋��覓� ��爼���
                                         �� �爍��├�罔�
                              @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                    �� @@@@@@@@@@@@@@@@@@@@
.{
.[h OverWrite
陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳陳堕陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳堕陳陳陳陳堕陳陳陳陳堕陳陳陳賃陳陳陳陳賃陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳�
  ���.   �����Ν覃 �      �┐         � ���ム  �  ����    �  �┓    �  蹍．�   � 蹍．�    � +/- �牀．３ ��皰��瘠 � ��皰��瘠  � +/-��皰��甞   ���    �   ���    �  +/- き� � ���-〓  � ���-〓  �  +/-    � ���-〓 � ���-〓  �  +/-   �  ����    �   �┓
  ���ム  �  ���ム  �   �����オ矣鉗ォ  � �����. 潟痰���→� �(���覃 � �  �♂┤    械����皋��覃械����皋��覃�  �♂┘   械����皋��襯械����皋��襯�  �♂┘   � ������.  �  ������. � �メ閹ア � �メ閹ア � �メ閹ア � 罔���� � 罔����  � 罔���� 皆��爛��キ.凱皖爛��キ��
痼イ痰�� 梶爛め癶� �                  �        �          蟹��.爛�) �           �           �           �          �           �           �          �          �          � �♂┘   � ������. � ������. � �♂┘  � ������. � ������.�          �
陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳陳祖陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳祖陳陳陳陳祖陳陳陳陳祖陳陳陳珍陳陳陳陳珍陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳�
.]h
.begin
RazProbeg   := aProbegGar  - aProbegn
RazMoto     := aMotoGar    - aMotoAll
RazDni      := aDniGar     - aDniAll
RazMonth    := aMonthGar   - aMonthAll
RazCycle    := aCycleGar   - aCycleAll
end.
@@@@@@@@@ @@@@@@@@@ @@@@@@@@@@@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@ &&&&&&&&.&& &&&&&&&&.&& &&&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@ @@@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@
.if Ext_Atr
.{
.}
.end
.if Kar_Agt
.{
.{
.}
.}
.end
.{ CheckEnter ComissKarAgt
.}
.[f
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.]f
.}��
.endform
