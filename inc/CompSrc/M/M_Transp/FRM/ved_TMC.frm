/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,97 ��牆���罔� ���������                      �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : 蹍├〓め癶�                                              �
 � �ム瓱�        : 5.70                                                      �
 � ��Л�腑�┘    : �砒モ �� �覩竅�� ���.�牀ゃ�罔� � ��оェ� ���竍�皀�ォ      �
 � �癶モ痰▲��覃 : �イ▲れ �.�. (MEDVED)                                     �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
.set name = 'Ved_TMC'
.hide
.fields
 BegDate  EndDate
 PodrFrom
 PodrTo
 Name1 EdIzm NettoEd Kol: double Netto: double dOpr TTN Price Stoim: double 
.endfields
 ^ ^
.{
^
^
��━キ. ��.├�. �メ イ. ���-〓 �メ ���� ��� �キ� �祠�� 
^       ^       ^       ^      ^   ^    ^    ^   ^     
.}
.endform
.linkform 'Ved_TMC_01' prototype is 'Ved_TMC'
.NameInList '�砒モ �� 瓷����� � ��оェ� ���'
.group '�砒モ �� 瓷����� � ��оェ� ���'
.fields
 BegDate  EndDate
.endfields
.var
 ItgMCKol, ItgMCNetto, ItgMCStoim: double
 ItgPolStoim, ItgOtpStoim: double
 NameMC, NamePol, NameOtp: String[30]
 cFirstMC, cFirst, cFirstOtp, cOtp, cItgPol, stPodrFrom, stPodrTo, stMC: boolean
.endvar
.fields
 NameMC ItgMCKol ItgMCNetto ItgMCStoim
 NamePol ItgPolStoim
 NameOtp ItgOtpStoim
.endfields
.fields
 PodrFrom
 PodrTo
 Name1 EdIzm NettoEd Kol Netto dOpr TTN Price Stoim
.endfields

    �� ���砒モ �� 〓Б��矣 ��皰〓� �牀ゃ�罔� ├ ��む�Гカキ┤
     �� 瓷����� � ��оェ� �� �� �ム┏� c @@@@@@@@@@ �� @@@@@@@@@@��

敖陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳朕
���━キ����┘ ���.   ��メ       ����-〓      ��メ       �����      ����ム    ��キ�             ��祠��            �
�             ��К.  灰え��肓   �            �          �          貝����き���                 �                 �
.begin
cFirst := true
cFirstOtp := true
end.
.{
.begin
 stPodrFrom := NameOtp <> PodrFrom
 stPodrTo := NamePol <> PodrTo
 stMC := NameMC <> Name1
 end.
.{?internal;(stPodrFrom=true or stPodrTo=true or stMC=true) and cFirst=false;
団陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� @@@@@@@@@@@@@@@@@@��       ���&'&&&&&.&&&&�&&&&&&.&&&���          �         �                 ���&'&&&&&&&&&&&&.&&���
.begin
ItgPolStoim := ItgPolStoim + ItgMCStoim
ItgMCKol := 0
ItgMCNetto := 0
ItgMCStoim := 0
cFirstMC := true;
end.
.}
.{?internal;(stPodrFrom=true or stPodrTo=true) and cFirst=false;
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� �� ���竍�皀��: @@@@@@@@@@@@@@@@@@@@@@@@@@��                                               ���&'&&&&&&&&&&&&.&&���
.begin
ItgOtpStoim := ItgOtpStoim + ItgPolStoim
ItgPolStoim := 0
cItgPol := true
end.
.}
.{?internal;(stPodrFrom=true and cFirst=false);
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� �� �皴��※皀��: @@@@@@@@@@@@@@@@@��                                                       ���&'&&&&&&&&&&&&.&&���
.begin
ItgOtpStoim := 0
end.
.}
.{?internal;(stPodrFrom=true)
.begin
 cFirstMC := true
end.
.{?internal;(cFirstOtp=true and stPodrFrom=true)
団陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?internal;(cFirstOtp=false and stPodrFrom=true)
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
��� �皴��※皀��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                       �         �                 �                 �
.begin
cOtp := true
end.
.}
.{?internal;(stPodrTo=true)
.{?Internal;(stPodrTo=true and cOtp=true)
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(stPodrTo=true and cOtp=false)
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
��� ���竍�皀��:  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                       �         �                 �                 �
.}
.{?Internal;(cFirstMC=true and cItgPol=true)
団陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(cFirstMC=true and cItgPol=false and cFirst=false)
団陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(cFirstMC=true and cItgPol=false and cFirst=true)
団陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(cFirstMC=false)
団陳陳陳陳陳陳田陳陳津陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
�@@@@@@@@@@@@@�@@@@@@�&&&&&&.&&&�&'&&&&&.&&&&�&&&&&&.&&&�@@@@@@@@@@�@@@@@@@@@�&'&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&.&&�
.begin
 cFirstMC := false
 cFirst := false
 cFirstOtp := false
 cOtp := false
 cItgPol := false
 NameOtp := PodrFrom
 NamePol := PodrTo
 NameMC  := Name1
 ItgMCKol := ItgMCKol + Kol
 ItgMCNetto := ItgMCNetto + Netto
 ItgMCStoim := ItgMCStoim + Stoim
end.
.}
.fields
 NameMC ItgMCKol ItgMCNetto ItgMCStoim
 NamePol ItgPolStoim
 NameOtp ItgOtpStoim
.endfields
.begin
 ItgPolStoim := ItgPolStoim + ItgMCStoim
 ItgOtpStoim := ItgOtpStoim + ItgPolStoim
end.
団陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� @@@@@@@@@@@@@@@@@@��       ���&'&&&&&.&&&&�����&&&&&&.&&&���          �         �                 ���&'&&&&&&&&&&&&.&&���
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� �� ���竍�皀��: @@@@@@@@@@@@@@@@@@@@@@@@@@��                                               ���&'&&&&&&&&&&&&.&&���
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� �� �皴��※皀��: @@@@@@@@@@@@@@@@@��                                                       ���&'&&&&&&&&&&&&.&&���
青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳潰
.endform
.linkform 'ved_TMC_02' prototype is 'Ved_TMC'
.NameInList '�砒モ ��� � ��оェ� ���竍�皀�ォ'
.group '�砒モ ��� � ��оェ� ���竍�皀�ォ'
.fields
 BegDate  EndDate
.endfields
.var
 ItgSklKol, ItgSklNetto, ItgSklStoim: double
 ItgMCStoim, ItgOtpStoim: double
 NameMC, NamePol, NameOtp, Sklad: String[30]
 cFirstMC, cFirst, stPodrFrom, stPodrTo, stMC, stItgSkl: boolean
.endvar
.fields
 NamePol ItgSklKol ItgSklNetto ItgSklStoim
 NameMC ItgMCStoim
 NameOtp ItgOtpStoim
.endfields
.fields
 PodrFrom
 Name1 EdIzm NettoEd
 PodrTo
 Sklad Kol Netto dOpr TTN Price Stoim
.endfields

     ���砒モ �� 〓Б��矣 ��皰〓� �牀ゃ�罔� ├ ��む�Гカキ┤
     �� �� � ��оェ� ���竍�皀�ォ �� �ム┏� c @@@@@@@@@@ �� @@@@@@@@@@��

敖陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳賃陳陳陳陳陳陳陳陳朕
���━キ����┘ ���.   ��メ       ����-〓      ��メ       �����      ����ム    ��キ�             ��祠��            �
�             ��К.  灰え��肓   �            �          �          貝����き���                 �                 �
.begin
cFirst := true
end.
.{
.begin 
 stPodrFrom := NameOtp <> PodrFrom
 stPodrTo := NamePol <> PodrTo
 stMC := NameMC <> Name1
 end.
.{?internal;(stPodrFrom=true or stPodrTo=true or stMC=true) and cFirst=false;
団陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� @@@@@@@@@@@@@@@@@@��       ���&'&&&&&.&&&&�����&&&&&&.&&&���          �         �                 ���&'&&&&&&&&&&&&.&&���
.begin
ItgMCStoim := ItgMCStoim + ItgSklStoim
ItgSklKol := 0
ItgSklNetto := 0
ItgSklStoim := 0
stItgSkl := true;
end.
.}
.{?internal;(stMC=true or stPodrFrom=true) and cFirst=false;
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� @@@@@@@@@@@@@@@@@@@@@@@@@@��                                                              ���&'&&&&&&&&&&&&.&&���
.begin
ItgOtpStoim := ItgOtpStoim + ItgMCStoim
ItgMCStoim := 0
cFirstMC := true;
stItgSkl := false;
end.
.}
.{?internal;(stPodrFrom=true and cFirst=false);
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� �� �皴��※皀��: @@@@@@@@@@@@@@@@@��                                                       ���&'&&&&&&&&&&&&.&&���
.begin
ItgOtpStoim := 0
end.
.}
.{?internal;(stPodrFrom=true)
.begin
 cFirstMC := true
end.
.{?internal;(stPodrFrom=true and cFirst=true)
団陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?internal;(stPodrFrom=true and cFirst=false and ItgOtpStoim <>0)
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?internal;(stPodrFrom=true and cFirst=false and ItgOtpStoim = 0)
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
� ���皴��※皀��: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                       �         �                 �                 �
.}
.{?internal;(stMC=true)
.{?Internal;(cFirstMC=true and stMC=true and ItgOtpStoim<>0)
団陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳賃陳陳陳陳賃陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(cFirstMC=true and stMC=true and ItgOtpStoim=0)
団陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳堕陳陳陳陳陳賃陳陳陳陳陳堕陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(cFirstMC=false and stMC=true)
団陳陳陳陳陳陳田陳陳津陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
�@@@@@@@@@@@@@�@@@@@@�&&&&&&.&&&�            �          �          �         �                 �                 �
.}
.{?Internal;false
PodrTo ^
.}
.begin
 if stPodrTo=true
    Sklad := PodrTo
 else
    Sklad := '';
end.
.{?Internal;(stItgSkl=true)
団陳陳陳陳陳陳堕陳陳賃陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
.{?Internal;(stItgSkl=false)
団陳陳陳陳陳陳田陳陳津陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
.}
���@@@@@@@@@@@@@���      �          �&'&&&&&.&&&&�&&&&&&.&&&�@@@@@@@@@@�@@@@@@@@@�&'&&&&&&&&&&&&.&&�&'&&&&&&&&&&&&.&&�
.begin
 ItgSklKol := ItgSklKol + Kol
 ItgSklNetto := ItgSklNetto + Netto
 ItgSklStoim := ItgSklStoim + Stoim
 cFirstMC := false
 cFirst := false
 stItgSkl := false
 NameOtp := PodrFrom
 NamePol := PodrTo
 NameMC  := Name1
end.
.}
.fields
 NamePol ItgSklKol ItgSklNetto ItgSklStoim
 NameMC ItgMCStoim
 NameOtp ItgOtpStoim
.endfields
.begin
 ItgMCStoim := ItgMCStoim + ItgSklStoim
 ItgOtpStoim := ItgOtpStoim + ItgMCStoim
end.
団陳陳陳陳陳陳祖陳陳珍陳陳陳陳陳田陳陳陳陳陳津陳陳陳陳陳田陳陳陳陳津陳陳陳陳津陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� @@@@@@@@@@@@@@@@@@��       ���&'&&&&&.&&&&�����&&&&&&.&&&���          �         �                 ���&'&&&&&&&&&&&&.&&���
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳祖陳陳陳陳陳珍陳陳陳陳陳祖陳陳陳陳珍陳陳陳陳珍陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� @@@@@@@@@@@@@@@@@@@@@@@@@@��                                                              ���&'&&&&&&&&&&&&.&&���
団陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳津陳陳陳陳陳陳陳陳調
����皰�� �� �皴��※皀��: @@@@@@@@@@@@@@@@@��                                                       ���&'&&&&&&&&&&&&.&&���
青陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳珍陳陳陳陳陳陳陳陳潰
.endform


