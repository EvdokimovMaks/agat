//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
//�����⨪� 7.1 - ����஫����
//���� "���� ����� �� �ந�����⢮"
//------------------------------------------------------------------------------
.set name = 'RPotrResource'
.nameinlist '������� �ଠ'
.hide
.fields
DataTimeUserStr
NamePeriod
NameBalas
NameFiltrMC
NameFiltrUsl
NamePotr
NameRes
NameEi
Kol
Sum
SumEi
Kol_Podr
Sum_Podr
NameRes_Bold
NameEi_Bold
Kol_Bold
Sum_Bold
SumEi_Bold
Kol_Podr_Bold
Sum_Podr_Bold
.endfields
^ ^ ^ ^ ^
     .{.?stPodrPotr; ^.}
     .{.?stKolSumPodrPotr; .}
.{

.if boPrintStat_Rpotr
 ^^^^^ .{.?stKolSumTek; ^ ^.}
.else
 ^^^^^ .{.?stKolSumTek_Bold; ^ ^.}
.end

.}
.endform
