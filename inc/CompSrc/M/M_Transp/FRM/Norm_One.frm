/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 � �����皋�� 7.12 ����←キ┘ 矗��甎�珥��                                     �
 � ��М��� 筮爼� か� �━�皰� �� ��                                           �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name='Norm_One'
.hide
.fields
! ��硅 筥�赳��
    FiltDateBeg  FiltDateEnd
! 瘁覊�� �� ����瘡 �� �━�矣
    Tarifav_nrec
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
!����Ν覃 ���ム
    GarNomerMain
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
!�珮���〓� �牀．�
    GroupProbeg
!�珮���〓� �牀．�
    OtklGrProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯 ��皰��瘠
    RealMoto
!�珮���〓� ��皰��瘠
    GroupMoto
!�珮���〓� ��皰��瘠
    OtklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! 瘁覊�� �� ����瘡 �� �━�矣 皰��│�
    TarifavGsm_nrec
! ��━キ����┘ 皰��│�
    Toplivo
! �腑皚�� イ┃���
    UchEd
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! ���竅皋�覃 �┃━祠
    DopMinGsm
! �皴竕キ� �� ���
    OtpLzv
! ���竅皋�覃 �皴竅�
    DopOtp
.endfields

^ ^
.{
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{
^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.endform

.linkform 'Norm_One01' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� �牀．��� � 皰��│�'
.Group '�珮��� �≒�矗��甎�珥'
.Group '�≒�矗��甎�珥'
.var
  otklgsm    : double;
  otklProbeg : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
! �皖���キ┘
    otklProbeg
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                         ���������
                        �━�皰� �牀．�� � 皰��│� か� �≒�矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳
  ��爲�  ��         ����.   �  �ィ.    ���爼�     �����讚�   ��皖���キ┘�����      �����
                    貝��ム  �  ���ム   �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳
.{
.begin
  otklProbeg := double(NormaProbeg) - double(RealProbeg)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
          @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One02' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ��皰��甌� � 皰��│�'
.Group '�珮��� �≒�矗��甎�珥'
.Group '�≒�矗��甎�珥'
.var
  otklgsm    : double;
  otklMoto   : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼�
    NormaMoto
!����讚覃
    RealMoto
! �皖���キ┘
    otklMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� ��皰��甌� � 皰��│� か� �≒�矗��甎�珥�


  陳陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳
  ��爲�  ��         ����.   �  �ィ.    ���爼�     �����讚�   ��皖���キ┘�����      �����
                    貝��ム  �  ���ム   �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳
.{
.begin
  otklMoto := double(NormaMoto) - double(RealMoto)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
          @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One03' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ����｀皰� � 皰��│�'
.Group '�珮��� �≒�矗��甎�珥'
.Group '�≒�矗��甎�珥'
.var
  otklgsm    : double;
  otklProbeg : double;
  otklMOto   : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
! �皖���キ┘
    otklProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯
    RealMoto
! �皖���キ┘
    otklMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� ����｀皰� � 皰��│� か� �≒�矗��甎�珥�


  陳陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         ����.   �  �ィ.    � ��爼�    �����讚�   ��皖���キ┘� ��爼�    �����讚�   ��皖���キ┘�����      �����
                    貝��ム  �  ���ム   劾牀．�/���劾牀．�/���劾牀．�/���階�皰��瘠  階�皰��瘠  階�皰��瘠  貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
.begin
  otklProbeg := double(NormaProbeg) - double(RealProbeg)
  otklMoto   := double(NormaMoto) - double(RealMoto)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
          @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One01Gr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� �牀．��� � 皰��│� � 竍モ�� �珮��'
.Group '�珮��� �≒�矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg GroupProbeg
! �皖���キ┘
    otklGrProbeg
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!����Ν覃 ���ム
    GarNomerMain
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                        ���������
                        �━�皰� �牀．�� � 皰��│� か� �≒�矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         ����.   �  �ィ.    ���爼�     �����讚�   ��珮���〓� ��皖���キ┘�����      �����
                    貝��ム  �  ���ム   �          �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
          @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.}
.endform
.linkform 'Norm_One02Gr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ��皰��甌� � 皰��│�  � 竍モ�� �珮��'
.Group '�珮��� �≒�矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼�
    NormaMoto
!����讚覃
    RealMoto  GroupMoto
! �皖���キ┘
    otklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!����Ν覃 ���ム
    GarNomerMain
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                           ���������
                        �━�皰� ��皰��甌� � 皰��│� か� �≒�矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         ����.   �  �ィ.    ���爼�     �����讚�   ��珮����襯 ��皖���キ┘�����      �����
                    貝��ム  �  ���ム   �          �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
          @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.}
.endform
.linkform 'Norm_One03Gr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ����｀皰� � 皰��│�  � 竍モ�� �珮��'
.Group '�珮��� �≒�矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!����Ν覃 ���ム
    GarNomer
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg GroupProbeg
! �皖���キ┘
    otklGrProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯
    RealMoto   GroupMoto
! �皖���キ┘
    otklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!����Ν覃 ���ム
    GarNomerMain
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                           ���������
                        �━�皰� ����｀皰� � 皰��│� か� �≒�矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         ����.   �  �ィ.    � ��爼�    �����讚�   ��珮���〓� ��皖���キ┘� ��爼�    �����讚�   ��珮����襯 ��皖���キ┘�����      �����
                    貝��ム  �  ���ム   劾牀．�/���劾牀．�/���劾牀．�/���劾牀．�/���階�皰��瘠  階�皰��瘠  階�皰��瘠  階�皰��瘠  貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
          @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform

.linkform 'Norm_One01gd' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� �牀．��� � 皰��│�'
.Group '�.�. 矗��甎�珥'
.Group '�珮��� �.�. 矗��甎�珥'
.var
  otklgsm    : double;
  otklProbeg : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
! �皖���キ┘
    otklProbeg
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                         ���������
                        �━�皰� �牀．�� � 皰��│� か� �.�. 矗��甎�珥�
  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳
.{
.begin
  otklProbeg := double(NormaProbeg) - double(RealProbeg)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.}
.endform
.linkform 'Norm_One02gd' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ��皰��甌� � 皰��│�'
.Group '�.�. 矗��甎�珥'
.Group '�珮��� �.�. 矗��甎�珥'
.var
  otklgsm    : double;
  otklMoto   : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼�
    NormaMoto
!����讚覃
    RealMoto
! �皖���キ┘
    otklMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                           ���������
                        �━�皰� ��皰��甌� � 皰��│� か� �.�. 矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳
.{
.begin
  otklMoto := double(NormaMoto) - double(RealMoto)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.}
.endform
.linkform 'Norm_One03gd' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ����｀皰� � 皰��│�'
.Group '�.�. 矗��甎�珥'
.Group '�珮��� �.�. 矗��甎�珥'
.var
  otklgsm    : double;
  otklProbeg : double;
  otklMOto   : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
! �皖���キ┘
    otklProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯
    RealMoto
! �皖���キ┘
    otklMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                            ���������
                        �━�皰� ����｀皰� � 皰��│� か� �.�. 矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   � ��爼�    �����讚�   ��皖���キ┘� ��爼�    �����讚�   ��皖���キ┘�����      �����
                    �  ���ム   劾牀．�/���劾牀．�/���劾牀．�/���階�皰��瘠  階�皰��瘠  階�皰��瘠  貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
.begin
  otklProbeg := double(NormaProbeg) - double(RealProbeg)
  otklMoto   := double(NormaMoto) - double(RealMoto)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One01Grgd' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� �牀．��� � 皰��│� � 竍モ�� �珮��'
.Group '�珮��� �.�. 矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg GroupProbeg
! �皖���キ┘
    otklGrProbeg
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� �牀．�� � 皰��│� か� �.�. 矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��珮���〓� ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
   @@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One02Grgd' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ��皰��甌� � 皰��│�  � 竍モ�� �珮��'
.Group '�珮��� �.�. 矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼�
    NormaMoto
!����讚覃
    RealMoto  GroupMoto
! �皖���キ┘
    otklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� ��皰��甌� � 皰��│� か� �.�. 矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��珮����襯 ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One03Grgd' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ����｀皰� � 皰��│�  � 竍モ�� �珮��'
.Group '�珮��� �.�. 矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg GroupProbeg
! �皖���キ┘
    otklGrProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯
    RealMoto   GroupMoto
! �皖���キ┘
    otklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� ����｀皰� � 皰��│� か� �.�. 矗��甎�珥�

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   � ��爼�    �����讚�   ��珮���〓� ��皖���キ┘� ��爼�    �����讚�   ��珮����襯 ��皖���キ┘�����      �����
                    �  ���ム   劾牀．�/���劾牀．�/���劾牀．�/���劾牀．�/���階�皰��瘠  階�皰��瘠  階�皰��瘠  階�皰��瘠  貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform

.linkform 'Norm_One01pr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� �牀．��� � 皰��│�'
.Group '�牀腮� 矗��甎�珥'
.Group '�珮��� �牀腮� 矗��甎�珥'
.var
  otklgsm    : double;
  otklProbeg : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
! �皖���キ┘
    otklProbeg
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                         ���������
                        �━�皰� �牀．�� � 皰��│� か� �牀腮� ※ぎ� ��

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳
.{
.begin
  otklProbeg := double(NormaProbeg) - double(RealProbeg)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.}
.endform
.linkform 'Norm_One02pr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ��皰��甌� � 皰��│�'
.Group '�牀腮� 矗��甎�珥'
.Group '�珮��� �牀腮� 矗��甎�珥'
.var
  otklgsm    : double;
  otklMoto   : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼�
    NormaMoto
!����讚覃
    RealMoto
! �皖���キ┘
    otklMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                           ���������
                        �━�皰� ��皰��甌� � 皰��│� か� �牀腮� ※ぎ� ��

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳
.{
.begin
  otklMoto := double(NormaMoto) - double(RealMoto)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳
.}
.endform
.linkform 'Norm_One03pr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ����｀皰� � 皰��│�'
.Group '�牀腮� 矗��甎�珥'
.Group '�珮��� �牀腮� 矗��甎�珥'
.var
  otklgsm    : double;
  otklProbeg : double;
  otklMOto   : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg
! �皖���キ┘
    otklProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯
    RealMoto
! �皖���キ┘
    otklMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                            ���������
                        �━�皰� ����｀皰� � 皰��│� か� �牀腮� ※ぎ� ��

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   � ��爼�    �����讚�   ��皖���キ┘� ��爼�    �����讚�   ��皖���キ┘�����      �����
                    �  ���ム   劾牀．�/���劾牀．�/���劾牀．�/���階�皰��瘠  階�皰��瘠  階�皰��瘠  貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
.begin
  otklProbeg := double(NormaProbeg) - double(RealProbeg)
  otklMoto   := double(NormaMoto) - double(RealMoto)
end.
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&& &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One01Grpr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� �牀．��� � 皰��│� � 竍モ�� �珮��'
.Group '�珮��� �牀腮� 矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg GroupProbeg
! �皖���キ┘
    otklGrProbeg
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� �牀．�� � 皰��│� か� �牀腮� ※ぎ� ��

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��珮���〓� ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One02Grpr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ��皰��甌� � 皰��│�  � 竍モ�� �珮��'
.Group '�珮��� �牀腮� 矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼�
    NormaMoto
!����讚覃
    RealMoto  GroupMoto
! �皖���キ┘
    otklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                          ���������
                        �━�皰� ��皰��甌� � 皰��│� か� �牀腮� ※ぎ� ��

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   ���爼�     �����讚�   ��珮����襯 ��皖���キ┘�����      �����
                    �  ���ム   �          �          �          �          貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
.linkform 'Norm_One03Grpr' prototype is 'Norm_One'
.NameInList  '�イ���痰� �━�皰� ����｀皰� � 皰��│�  � 竍モ�� �珮��'
.Group '�珮��� �牀腮� 矗��甎�珥'
.var
  otklgsm    : double;
.endvar
.fields
! ��爲� ��
    MarkaTc
!��痺��珀癶キ�覃 ���ム
    GosNomer
!��爼� �牀．��
    NormaProbeg
!����讚覃 �牀．�
    RealProbeg GroupProbeg
! �皖���キ┘
    otklGrProbeg
!��爼� ��皰��甌�
    NormaMoto
!����讚襯
    RealMoto   GroupMoto
! �皖���キ┘
    otklGrMoto
!'���� ������'
    DateBeg
!'���� ��▲琥キ��'
    DateEnd
!��痺��珀癶キ�覃 ���ム
    GosNomerMain
! ��━キ����┘ 皰��│�
    Toplivo
! ��爼� 皰��│�
    NormaGsm
! ����讚� ├��痳�ぎ����
    RealGsm
! �皖���キ┘
    otklgsm
.endfields

                                           ���������
                        �━�皰� ����｀皰� � 皰��│� か� �牀腮� ※ぎ� ��

  陳陳陳陳陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳�
  ��爲�  ��         �  ��珥.   � ��爼�    �����讚�   ��珮���〓� ��皖���キ┘� ��爼�    �����讚�   ��珮����襯 ��皖���キ┘�����      �����
                    �  ���ム   劾牀．�/���劾牀．�/���劾牀．�/���劾牀．�/���階�皰��瘠  階�皰��瘠  階�皰��瘠  階�皰��瘠  貝�����    皆�▲琥キ��
  陳陳陳陳陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳�
.{
  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@ &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& &&&&&&&.&& @@@@@@@@@@ @@@@@@@@@@
                     @@@@@@@@@@
.{
.begin
  otklGsm := double(NormaGsm) - double(RealGsm)
end.
  @@@@@@@@@@@@@@@@@@@@@@@@@     &&&&&&&.&& &&&&&&&.&&            &&&&&&&.&&
.}
  陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳�
.}
.endform
