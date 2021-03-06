//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ����⠭�� ⠡��� ��� ࠡ�祣� �६���
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// [s]chedule [t]ype
//------------------------------------------------------------------------------
// ����� �� ��᪨ ��筮� ���४�஢��
stMask = -3;
// ��ଠ��� ��䨪 (��� ���� ���� �६��� �� ��ଠ����樨 ࠡ���
// �ᮢ/���� ��� �㬬�஢����� ��� ᢥ�������)
stStandard  = -2;
// ������� ��䨪
stBalanced  = -1;
// ������� ��䨪
stPlanned   = 0;
// 䠪��᪨� ⠡���
stActual    = 1;

//------------------------------------------------------------------------------
// [h]ours [k]ind
//------------------------------------------------------------------------------
// ࠡ�稥 ���
hkWorking                     = 1;
// ��� ࠡ��� ���஬
hkEvening                     = 2;
// ��� ࠡ��� �����
hkNight                       = 3;
// ��� ࠡ��� � �ࠧ����� ��� (�� ������). �㬬� hkWorkingHoliday � hkWeekendHoliday.
hkHoliday                     = 4;
// ��� ࠡ��� � ��室�� (�� ������)
hkWeekend                     = 5;
// ᢥ������
hkOverwork                    = 6;
// ���⮪ ᢥ�������
hkOverworkRest                = 7;
// ࠡ�稥 ��� � �窨 �७�� ���� �� �।����
hkWorkingForAvgEarnings       = 10;
// ���, �� ����� ����� �믫���� �����
// (ࠡ�稥 ��� � ����, ����騩�� �� ����� ࠡ�稬, ���� ���
// ��室�饣��� �� ⠪�� ���� ����稢������ �⪫������)
hkAdvanceable                 = 11;
// ����稢���� ���
// (ࠡ�稥 ��� ���� ��� ��室�饣��� �� ���� ����稢������ �⪫������)
hkPaid                        = 12;
// ���ࠡ�⪠ �� ��ਮ�
hkOverworkForPeriod           = 14;
// ࠡ�稥 ���, ���室�騥 �� ᫥���騥 ��⪨
hkCarry                       = 17;
// ࠡ�稥 ��� ��� ���� �६��� �� ���쭨筮��(��� �室����� ����� �����)
hkTimeForSickListEnteringKind = 18;
// �।��� �த����⥫쭮��� ࠡ�祣� ���, �ᮢ
hkWorkDayAvgTime              = 20;
// �� ��ࠡ�⠭�� ��� (��� ��� ����஥� "ࠡ�稥 ��� �� ���⮬...")
hkWholeWorking                = 21;
// ��� ࠡ��� � ࠡ�稩 �� ����� �ࠧ����
hkWorkingHoliday              = 22;
// ��� ࠡ��� � ��ࠡ�稩 �� ����� �ࠧ���� (�� ������)
hkWeekendHoliday              = 23;
// ��� ������⢨� �� 㢠��⥫쭮� ��稭�
hkAbsenceForValidReason       = 24;
// ��� �
hkAppearance                  = 25;
// ��� 㬥������ ���� ���
hkDecreasingStandardTime      = 26;
// ��� ࠡ��� �� �।��� �᫮����
// [!] ���ॢ訩 ��� �ᮢ. ���ࠥ��� ⮫쪮 �� �ਧ��� "�।�� �᫮���" � �⪫�������
hkHarmfulConditions           = 27;
// ��� ࠡ��� � �ࠧ���� ᢥ�� �����
hkOverPlannedHoliday          = 28;
// ��� ࠡ��� �� �ਪ��� �� ࠡ��� � ��室��
hkOrderedWeekendWork          = 29;
// ����稢���� ��� ࠡ��� �� �ਪ��� �� ࠡ��� � ��室��
hkPaidOrderedWeekendWork      = 30;
// ��� ࠡ��� �� �ਪ��� �� ࠡ��� � ��室��/�ࠧ����� �� ���
// �㬬� hkHolidayForLeave � hkWeekendForLeave
hkOrderedWeekendWorkForLeave  = 13;
// ��� ࠡ��� �� �ਪ��� �� ᢥ������� ࠡ��� �� ���
hkOrderedOvertimeWorkForLeave = 15;
// ��� ࠡ��� �� �ਪ��� �� ࠡ��� ᢥ����筮
hkOvertimeWorkOrder           = 31;
//----------- ���� �ᮢ � �����, ����訬 31. �ᯮ�짮���� ⮫쪮 � �㭪��� � ����䨪ᮬ Ex
// ��� ࠡ��� � ��ଠ���� �᫮���� ��㤠 (� ����� �।���� ICOrdinary), � ��ࠢ�����騥�� � ⠪���
hkICOrdinary                  = 32;
// ��� ࠡ��� �� �।��� �᫮���� ��㤠 (� ����� �।���� ICHarmful), � ��ࠢ�����騥�� � ⠪���
hkICHarmful                   = 33;
// ��� ࠡ��� � �ᮡ� �।��� �᫮���� ��㤠 (� ����� �।���� ICExtraHarmful), � ��ࠢ�����騥�� � ⠪���
hkICExtraHarmful              = 34;
// ��� ࠡ���, �ਭ����騥 ���⨥ � ����� ���᫥��� �� ���. ��䠬
// (�㬬� hkICOrdinary, hkICHarmful, hkICExtraHarmful)
hkWorkingForIslbrCalculations = 35;
// ᢥ������, ����⠭�� �� �ࠢ���� ��������� ��� (�㦥��� ��� �ᮢ)
hkDailyOverhours              = 36;
// ᢥ������, ����⠭�� �� �ࠢ���� �㬬�஢������ ���
// (�㦥��� ��� �ᮢ, ����� ���� ����� ���)
hkSummedOverhours             = 37;
// ��� 㬥������ ���� ���, ��� ��� �룫��� ᮣ��᭮ ����ன���. ����訢��� ��� ��䨪� stActual
hkActualDecreasingStandTime   = 38;
// ��� ࠡ��� � �ࠧ����� (��ࠡ�稥 �� �����) �� ���
hkHolidayForLeave             = 39;
// ��� ࠡ��� � ��室�� �� ���
hkWeekendForLeave             = 40;
// ��� ࠡ��� � ��ࠡ�稥 �� ����� �ࠧ����� (��� �� ������, ⠪ � �� ���)
// �㬬� hkWeekendHoliday � hkHolidayForLeave
hkWholeWeekendHoliday         = 41;
// ��� ࠡ��� � �ࠧ����� (� �� ������, � �� ���)
// �㬬� hkWorkingHoliday, hkWeekendHoliday � hkHolidayForLeave
hkWholeHoliday                = 42;
// ��� ࠡ��� � ��室�� (� �� ������, � �� ���)
// �㬬� hkWeekend � hkWeekendForLeave
hkWholeWeekend                = 43;
// �࠭��, �� ���ன - ����� ᢥ������, � ��᫥ ���ன - ���⮪ ᢥ�������,
// �� �ࠢ���� �㬬�஢������ ���. ����� ����� �� �ந������ ��ਮ� � �ࠢ������
// � hkSummedOverhours �� ��� �� ��ਮ�, ⠪�� ��ࠧ�� ���⮪ ᢥ������� ������.
hkSummedOverworkRestBorder    = 44;
// ࠡ�稥 ��� �� �६� ���᪠. ������� ⮫쪮 �᫨ ��� ���᪠ � ��� �� ����,
// � ���� �� �� ��� ���᪠ �ꥤ��� ࠡ�稬�.
hkWorkingWhileVacation        = 45;
// 䠪��᪨ ��ࠡ�⠭�� + ��� ����稢����� �������஢��, ����� � ���筮� ०���
// �� �室�� � 䠪��᪨ ��ࠡ�⠭��� �६�
hkWorkingWithBusinessTrips    = 46;
// �।�� ���, ���騥 "� �����" ��� ��. ����� hkICHarmful, �᫨ ���� �� �⮣� �।��.
// � ��⠫��� ����� - ����
hkCreditedHarmful             = 47;
// "�����" ��� ��� ���� � hkCreditedHarmful. � �㬬� � hkCreditedHarmful ���� hkWorkingForIslbrCalculations
hkCreditedOrdinary            = 48;
hkCreditedExtraHarmful        = 49; // ����� ��� ���쭥�襣� ࠧ���� �㭪樮����
hkOrdinaryCalculation         = 50; // ��� ࠡ��� � ��ଠ���� �᫮���� ��㤠 (� ����� �।���� ICOrdinary), � ��ࠢ�����騥�� � ⠪��� ��� ��� ࠡ��� � ����� ��� ������� ࠡ�稩 ����
hkHarmfulCalculation          = 51; // ��� ࠡ��� �� �।��� �᫮���� ��㤠 (� ����� �।���� ICHarmful), � ��ࠢ�����騥�� � ⠪��� ��� ��� ࠡ��� � ����� ��� ������� ࠡ�稩 ����
hkExtraHarmfulCalculation     = 52; // ��� ࠡ��� � �ᮡ� �।��� �᫮���� ��㤠 (� ����� �।���� ICExtraHarmful), � ��ࠢ�����騥�� � ⠪���  ��� ��� ࠡ��� � ����� ��� ������� ࠡ�稩 ����

//------------------------------------------------------------------------------
// [d]ay [k]ind
//------------------------------------------------------------------------------
dkSpecial               = 1;
// ����, ����騩�� ࠡ�稬 �� ������ (������ �� ����஥�)
dkWorking               = 2;
// �ࠧ����� ����
dkHoliday               = 3;
// ��室���
dkWeekEnd               = 4;
// ��� ࠡ��� ᢥ����筮
dkOverWork              = 5;
dkOverworkRest          = 6;
// ��� ࠡ��� ���஬
dkEvening               = 7;
// ��� ࠡ��� �����
dkNight                 = 8;
// ��� � �窨 �७�� ���� �� �।����
dkWorkingForAvgEarnings = 10;
// ����, �� ����� ����� �믫���� �����
// (ࠡ�稩 ���� �� ����� � ���� ࠡ�稩 ���� �� 䠪��, ���� ����,
// �� ����� ��諮�� ����稢����� �⪫������)
dkAdvanceable           = 11;
// ����稢���� ����
// (ࠡ�稩 ����, ���� ����, �� ����� ��諮�� ����稢����� �⪫������)
dkPaid                  = 12;
// ࠡ�� � �ࠧ����� ���� (��� � ࠡ�稩 �� �����, ⠪ � � ��ࠡ�稩 �� �����)
dkWorkingHoliday        = 13;
// ࠡ�� � ��室��� ���� (�� ������)
dkWorkingWeekend        = 14;
// �� ��ࠡ�⠭�� ��� (��� ��� ����஥� "ࠡ�稥 ��� �� ���⮬...")
dkWholeWorking          = 15;
// ��� �
dkAppearance            = 16;
// ��ࠡ�稩 �ࠧ����� ����
dkWeekendHoliday        = 17;
// �� ���襭�� 䨫��஬ ����
dkEnabled               = 18;
// ��� ࠡ��� �� �।��� �᫮����
dkHarmfulConditions     = 19;
// ��������� ��� ࠡ���
dkCalendarWorking             = 20;
// ��� ࠡ��� �� �ਪ��� �� ࠡ��� � ��室��
dkOrderedWeekendWork          = 21;
// ��� ����稢����� ࠡ��� �� �ਪ��� �� ࠡ��� � ��室��
dkPaidOrderedWeekendWork      = 22;
// ��� ࠡ��� �� �ਪ��� �� ࠡ��� ᢥ����筮
dkOrderedOvertimeWork         = 23;
// ��������� ��� ��� ���� ���᪠
dkCalendarVacation            = 24;
// ��� ��� �६���, �室�饣� � ���� ���쭨筮��
dkTimeForSickListEnteringKind = 25;
// ��� ࠡ��� � ��室��/�ࠧ����� �� �ਪ���, �� ���
dkOrderedWeekendWorkForLeave  = 26;
// ��� ࠡ��� ᢥ����筮 �� �ਪ���, �� ���
dkOrderedOvertimeWorkForLeave = 27;
// ��� ࠡ��� � ࠡ�稩 �� ����� �ࠧ����� ����
dkWorkingWorkingHoliday       = 28;
// ��� ࠡ��� � ��ࠡ�稩 �� ����� �ࠧ����� ���� (�� ������)
dkWorkingWeekendHoliday       = 29;
// ���, ��ࠡ�⠭�� � ��ଠ���� �᫮���� ��㤠 (� ����� �।���� ICOrdinary), � ��ࠢ�����騥�� � ⠪���
dkICOrdinary                  = 30;
// ���, ��ࠡ�⠭�� �� �।��� �᫮���� ��㤠 (� ����� �।���� ICHarmful), � ��ࠢ�����騥�� � ⠪���
dkICHarmful                   = 31;
//----------- ���� ���� � �����, ����訬 31. �ᯮ�짮���� ⮫쪮 � �㭪��� � ����䨪ᮬ Ex
// ���, ��ࠡ�⠭�� � �ᮡ� �।��� �᫮���� ��㤠 (� ����� �।���� ICExtraHarmful), � ��ࠢ�����騥�� � ⠪���
dkICExtraHarmful              = 32;
// ��� ࠡ���, �ਭ����騥 ���⨥ � ����� ���᫥��� �� ���. ��䠬
dkWorkingForIslbrCalculations = 33;
// ���, ����騥 ��뢠���� ���室�騬� ᬥ����
dkShiftable                   = 34;
// ��� ࠡ��� � ��ࠡ�稥 �� ����� �ࠧ����� �� ���
dkWorkingHolidayForLeave      = 35;
// ��� ࠡ��� � ��室�� �� ���
dkWorkingWeekendForLeave      = 36;
// ���, ����騥�� �।�묨 � �窨 �७�� ���᪮� �� �।�� �᫮��� ��㤠
dkHarmfulForVacations         = 37;
// ���, � ����� ������⥫쭮� ���-�� �㬬�஢����� ᢥ������� �ᮢ (hkSummedOverhours)
dkWithSummedOverhours         = 38;
// ���, ᮤ�ঠ騥 ࠡ��� �� �६� ���᪠ (�����६���� ࠡ�稥 ��� � ��� ���᪠)
dkWorkingWhileVacation        = 39;
// ���, ᮤ�ঠ騥 䠪��᪨ ��ࠡ�⠭��� �६� �/��� �६� ����稢����� �������஢��
dkWorkingWithBusinessTrips    = 40;
// ����稥 � ���쭨筮�� � ���᪠ � ���� ����
dkSchrodingersDay             = 41;
// ��室��� �� �६� ࠡ��� �� �६� ���᪠
dkWeekendWhileVacation        = 42;

//------------------------------------------------------------------------------
// [c]ontrol [f]lags
//------------------------------------------------------------------------------
// ��� ��� 䨫��஢
cfDisregardFilters      = 128;
// ��� ��� ��� �ਥ�� �� ࠡ���/㢮�쭥���
cfDisregardPeriod       = 64;
cfAllFlags              = 224; // � ��⮬ १�ࢭ��� 䫠��� 32

coWorkingHoursMask    = 1;
coEveningHoursMask    = 2;
coNightHoursMask      = 4;
coDiscountHoliday     = 8;
coDiscountWeekEnd     = 16;
// �� ����� ���� ࠡ�⮩ ᢥ����筮
coDiscountOverwork    = 32;
// ��᪠ �ࠧ������ �ᮢ
coHolidayHoursMask    = 64;
// ��筠� ���४�஢�� ���室�饩 ࠡ�祩 ᬥ��
coShiftCorrectionMask = 128;
// ����� �������� � ��᪥ "�ࠧ����� ���" ࠡ�稬� �� �����
coHolidayHoursAsWorkingHoliday = 256;
//------------------------------------------------------------------------------
// [a]bsence [t]ype
// ⨯� ���
//------------------------------------------------------------------------------
// ��⥬��
atSystem = 0;
// �� �����
atMonthly = 1;

//------------------------------------------------------------------------------
// [a]bsence [a]ttributes
// ��ਡ��� ���
//------------------------------------------------------------------------------
// �᫮���� ������祭�� ���: string
aaMark          = 1;
// ��� ��砫� ���: date;
aaBeginning     = 2;
// ��� ����砭�� ���: date
aaEnding        = 3;
// ���-�� ���� ���: byte
aaDays          = 4;
// ���-�� �ᮢ ���: double
aaHours         = 5;
// ���ᠭ�� ���: string
aaDescription   = 6;
// ��� ���� ������: word
aaPaymentCode   = 7;
// nrec �����-���筨��: comp
aaSourceRecord  = 8;
// nrec �᫮����� ������祭��: comp
aaNotation      = 9;
// ��� ���: word (�. akXXXX-����⠭��)
aaKind          = 10;
// ���� ��।������ �ᮢ ���: longint (PContainer); ���५�
aaHoursMap      = 11;
// ���� ��।������ ���� ���: longint (PContainer); ���५�
aaDayMap        = 12;
// ��� �� �⭨����, � �������� ���: boolean
aaAdditive      = 13;
// � �����䨪��� �᫮���� ������祭�� �⮨� �室������ � ���� ࠡ�祣�
// �६��� �� �롮� ��࠭�祭�� ��ᮡ��: boolean
aaWorkTime      = 14;
// ��� ��� ������祭�� ���� ����� � �⠭������ �ଠ� �-12, �-13: string
aaStandardCode  = 15;
// ��� ��� �뢮�� ���ଠ樨 � ���� � ������ �ଠ� ⠡���: string
aaAbsenceCode   = 16;
// �室�� � ���� �।��ᯨ�筮� �᫥�����: boolean
aaPayrollAvgNum = 17;
// ��� ���� ��ᮡ�� ��� ���� ���᪠
aaCode          = 18;
// ��� ��㯯� �᫮����� ������祭��: longint
aaGroupCode     = 19;
// �ਧ��� "�": boolean
aaAppearance    = 20;
// ��८�।���� ��� �।����: boolean
aaOverridesInsalubrityCode          = 21;
// ��� �।����, �� ����� ��८�।����: word
aaInsalubrityCode                   = 22;
// ��⠥��� ��ࠡ�⠭�� �६���� � �窨 �७�� ���. ��䮢: boolean
aaWorkingForInsalubrityCalculations = 23;
// �室�� � ��⠢ ࠡ��� �ᮢ: boolean
aaIncludedInWorkingHours            = 24;
// �ਧ��� "㬥��蠥� ����": boolean
aaDecreasesStandardTime             = 25;
// ��⥭��� �� ��� �� �, �⮡� ������ 楫� ����: ᮧ���� �� �᭮��
// ���쭨筮��/���᪠/�������஢��, ���� �� �᭮�� 㬥��襭�� � �㫥�� ���-��� �ᮢ.
// �ਧ��� �ࠪ�ਧ�� ������ "楫���������� �� �����". ���� �� �� ����⨥ ᮢ������ � "楫����������� �� 䠪��".
// : boolean
aaWholeDay                          = 26;
aaSourceKind = 27; // ��� �⪫������: word

//------------------------------------------------------------------------------
MaxVarianceCount = 10;  // ���५�
// ����᪠� ����⠭�, ���ᨬ��쭮� ���祭�� ������⢠ �६���,
// ���ਭ������� � ����⢥ ��ࠡ�⠭���� - ����爭�, �ॢ���騥 ��, �����
// �ᮡ� ���
MaxWorkingHours  = 100;

//------------------------------------------------------------------------------
// [w]orking [t]able [a]ttribute
//------------------------------------------------------------------------------
wtaChange      = 1;
wtaDepartment  = 2;

ByCurrency   = 906;
UkrCurrency  = 980;
RuCurrency   = 810;

//------------------------------------------------------------------------------
//����⠭�� ��� ⠡��� ��� ࠡ�祣� �६���
//------------------------------------------------------------------------------
WeekEndMark                 = '�';
DefaultSickMark             = '�';
DefaultVacationMark         = '�';

// �� ����⠭�� �ᯮ������� ��� ����⪨ � ⠡��� ����, ������� 楫������묨
// �����
SickSpecialValue            = 255;
VacationSpecialValue        = 254;
FiredSpecialValue           = 253;
BusinessTripSpecialValue    = 252;
DayLongAbsenceSpecialValue  = 251;
//250 - ����७��� ���

//------------------------------------------------------------------------------
// ��ਮ�� �㬬�஢������ ��� ᢥ�������
//[p]eriod [s]ummed [o]verwork
//------------------------------------------------------------------------------
psoMonth    = 0;
psoQuarter  = 1;
psoHalfYear = 2;
psoYear     = 3;

//------------------------------------------------------------------------------
// [v]ariance [k]ind
// ��� �⪫������
//------------------------------------------------------------------------------
// ������
vkChange       = 0;
// 㬥��襭��
vkDecrease     = 1;
// 㢥��祭��
vkIncrease     = 2;
// ����襭�� ०���
vkIrregularity = 3;
// ��筥��� (�� ����� �� ������⢮ ��ࠡ�⠭���� �६���)
vkRefinement   = 4;
// ���ଠ�� (�� ����� �� ������⢮ ��ࠡ�⠭���� �६���, �� �⮬ ����� �� ������ ���)
vkInformation  = 5;

//------------------------------------------------------------------------------
// [a]bsence [k]ind
//------------------------------------------------------------------------------
akNone              = 0;
// ��筠� ���४�஢�� (��᪠ ��� ����᫮���� �⪫������)
akHandCorrection    = 4;
// �������஢��
akBusinessTrip      = 32;
// ��� �� ���᪠ (��⥬��� ���)
akVacationRecall    = 64;
// �믮������ ��ᮡ易����⥩
akDuty              = 128;
// ���쭨�� (��⥬��� ���)
akSickList          = 256;
// ���� (��⥬��� ���)
akVacation          = 512;
// ��室��� ���� (�� ᠬ�� ���� - �㪢� "�" � ⠡���, ���� �� �����騩 ��室���)
akWeekendMark       = 768;
// ���� ��� (����砥��� �� �⪫������ �� ⠡��� ��� ࠡ�祣� �६���)
akTableAbsence      = 1024;
// ����襭�� ०���
akIrregularity      = 2048;
// ��筥��� (�� ����� �� ������⢮ ��ࠡ�⠭���� �६���)
akRefinement        = 4096;
// �ਪ�� �� ���ࠬ �� ࠡ��� ᢥ����筮
akOvertimeWorkOrder = 8192;
// �ਪ�� �� ���ࠬ �� ࠡ��� � ��室��
akWeekendWorkOrder  = 8193;
// �ਪ�� �� ���ࠬ �� ���祭��
akTrainingOrder     = 8194;
// �ਪ�� �� ���ࠬ: ��७�� ���祭��
akTrainingTransferOrder = 8195;
// ⨯ ⠡��쭮�� �⪫������: ���ଠ��
akInformation       = 8196;
// �ਪ�� �� ���ᮢ�� �⪫������
akHoursAbsenceOrder = 8197;
// ��� �� �ਪ��� �� ࠡ��� � ��室��� ����
akHoursAbsenceByWeekendWorkOrderForLeave = 8198;

//------------------------------------------------------------------------------
// ����� �⫠��筮�� �뢮�� ����७��� ������� ⠡���
// (WT Debug Output)
//------------------------------------------------------------------------------
// ���� ��� ⨯�� �� ��� ⥪�饣� ����� ⠡���
wtdoHours              = 1;
// ��� ��� ⨯�� �� ��� ⥪�饣� ����� ⠡���
wtdoDays               = 2;
// ����ন��� ࠡ�祩 ������樨 ���室�� - ���५�
wtdoChanges            = 4;
// ���
wtdoAbsences           = 8;
// ��������� �⪫������
wtdoMovableVariances   = 16;
wtdoSystemVariances    = 16; // ���ॢ�. �����.
// ������ ���
wtdoMonthlyAbsences    = 32;
// ���⥬�� ���
wtdoSystemAbsences     = 64;
// �������� ⮫쪮 ����ﭭ�� ���室�� - ���५�
wtdoPermanentChanges   = 128;
// ��䨪� ࠡ��
wtdoSchedules          = 256;
// ����७���� ⥪�饣� ���᫨⥫� ४����⮢ �� �� ����, ����� � �������஬ ������
wtdoPADetails          = 512;
// ����७���� ���᫨⥫� ४����⮢ �� � ��⮬ ⮫쪮 ����ﭭ�� ���室��, ����� � �������஬ ������
wtdoPADetailsPermanent = 1024;
// ��।���⥫� �������� �।���� �� ���� �� �� � ���室��
wtdoBaseIns            = 2048;
// �뢥�� ��� (�� ���뢠�� ���ॢ訥 ����⠭��)
wtdoAll                = 3963; // ������ ���祭�� �� ���������� ����� wtdo-����⠭�

//------------------------------------------------------------------------------
// [a]ttribute [p]refix
//------------------------------------------------------------------------------
apWorking              = '����稥';
apEveningHours         = '���୨�';
apNightHours           = '����';
apHolidayHours         = '�ࠧ�����';
apWorkingHolidayHours  = '�ࠧ�����, ࠡ�稥 �� �����';
apWeekendHolidayHours  = '�ࠧ�����, �� ࠡ�稥 �� �����';
apWeekendHours         = '��室��';
apOverworkHours        = '���������';
apOverworkHoursRest    = '��������� (���⮪)';
apICOrdinary           = '����� � ������ �᫮����';
apICHarmful            = '����� �� �।��� �᫮����';
apICExtraHarmful       = '����� � �ᮡ� �।��� �᫮����';
apHolidayHoursForLeave = '�ࠧ����� �� ���';
apWeekendHoursForLeave = '��室�� �� ���';

//------------------------------------------------------------------------------
// [a]ttribute [s]uffix
//------------------------------------------------------------------------------
asPaymentKind =     '���������';
asPercent =         '��業�';
asTotalHours =      '�⮣� �ᮢ �� ��ਮ�';
asTotalDays  =      '�⮣� ���� �� ��ਮ�';

//------------------------------------------------------------------------------
// [e]xternal [a]ttribute
//------------------------------------------------------------------------------
eaTotalWorkingHours = apWorking + '.' + asTotalHours;
eaTotalWorkingDays  = apWorking + '.' + asTotalDays;

//------------------------------------------------------------------------------
// LS[T]AB.[F]ILIALNO, 䫠��� ��� ���� FILIALNO ⠡���
//------------------------------------------------------------------------------
// �����樥�� �।��ᯨ�筮� ������ ������
tfAvgFactorManualEntry = 1;
// � ��⠡� �࠭���� ࠩ���� �����樥��
tfRegionalFactorStored = 2;
// ��室�� ��� �࠭���� � ��⮢�� ��᪥ � ���� LSTAB.VIDOPL[3]
tfWeekendsStored = 4;
// ����� ����� �� ��७�� ४����⮢ ��
tfPermanentLsData = 8;
// ������ ����� ����ਠ��� �᫮���, ������ᨬ� �� ADVISES
tfIndependentTerritoryCon = 16;
// � ��⠡� �࠭���� ���-�� �⠢��, �᫮��� ��㤠 �� ࠡ�祬 ���� � ����ਠ��� �᫮���
tfWageRateInsalubrityTerritorialStored = 32;
// � ��⠡� �࠭���� �⮣� �� �ࠧ�����
tfHolidayStored = 64;
// � ��⠡� �࠭���� �⮣� �� ���
tfForLeaveStored = 128;

//------------------------------------------------------------------------------
//[h]oliday [t]ype constants
//------------------------------------------------------------------------------
htNone            = 0;
htHoliday         = 1; // �ࠧ����
htMovedSaturday   = 2; // ��७�ᥭ��� �㡡�� (��� ���������� ���᪮� �� 5-������)
htWorking         = 3; // ࠡ�稩 ���� (����ᥭ� ��� �㡡��) (��� ���������� ���᪮�)
htMovedSunday     = 4; // ��७�ᥭ��� ����ᥭ� (��� ���������� ���᪮� �� 5- � 6-������)

//------------------------------------------------------------------------------
// Flags for [P]erexod [Ch]anging
//------------------------------------------------------------------------------

pchBrigade       = 4; // �ਣ���
pchCategory      = 8; // ��⥣���
pchRejim         = 16; // ०��
pchPosition      = 32; // ���������
pchSysPay        = 64; // ���⥬� ������
pchCorrectCoeff  = 128; // ���४����騩 �����樥�� ��� ���
pchTarif         = 256; // ���䭠� �⠢�� ��� �����
pchCurrency      = 512; // �����
pchTarStav       = 1024; // ��� � ������������ ��䭮� �⪨
pchRazr          = 2048; // �����
pchKTY           = 4096; // �����樥�� ��㤮���� �����
pchOsnOpl        = 8192; // ��⮬���᪮� ��. �᭮����� ���� ������ �� �।����.ࠧ��᪥
pchRegionPercent = 16384; // ��業� ࠩ����� ��������
pchNorthCategory = 32768; // ��� � ������������ ��⥣�ਨ ��� �믫��� ᥢ���� ��������
pchSHPZ          = 65536;  // ���
pchTXO           = 131072; // �����⢥���� ������
pchParameter     = 262144; // ��ࠬ��� �롮�
pchExtrAnalitik  = 524288;  // �������⥫�� �����⨪�
pchTerrUsl       = 1048576; // �����ਠ��� �᫮��� (���ॢ訩 ��ࠬ���)
pchPodr          = 2097152; // ���ࠧ������� (2^21)
pchIF            = 4194304; // �������� �� ���筨��� 䨭���஢����
pchKPS           = 8388608; // ��離� �ᮡ� �᫮��� - ��� - �����ਠ��� �᫮���
pchStavka        = 16777216;// ������⢮ �⠢��
// ��⮢�� ��᪠, ����뢠��� �� �������� ��������� � ���室�
pchAllChanges    = 33554428; // (2^25 - 4)

// �᫨ ���室� �뫨 �����४⭮ �������஢���
pchError         = 1610612736;//(2^30 + 2^29)
// �ਧ��� "����஧�筮�� ���室�"
pchTranslucent   = 1073741824; // 2^30

//------------------------------------------------------------------------------
// [c]hange [t]ype
// ⨯ ���室� � �����ਮ�
//------------------------------------------------------------------------------
ctPermanent         = 0; // ����ﭭ�
ctTemporary         = 1; // �६����
ctArchivePermanent  = 3; // ��娢�� ����ﭭ�
ctArchiveTemporary  = 4; // ��娢�� �६����

//------------------------------------------------------------------------------
// ᯮᮡ ���� ᢥ������� �ᮢ
// [o]verwork [c]alculation [m]ethod
//------------------------------------------------------------------------------
// �� ����ன��
ocmDefault  = 0;
// �������� ���
ocmDaily    = 1;
// �㬬�஢���� ��� (��ਮ� = �����)
ocmSummed   = 2;
// ᬥ蠭��
ocmMixed    = 3;

//------------------------------------------------------------------------------
// ��稭�, �� ����� 㪠���� � ��� ���� �।����� (Insalubrity Code Reason)
//------------------------------------------------------------------------------
// ��稭�, �易��� � ��।������� �।���� ᮣ��᭮ �᫮��� ��㤠 �� �� � ���⮬ ���室��
icrClassifierFail      = 1;  // �� �ਢ易�� �᫮��� ��㤠 �� ࠡ�祬 ����
//-------------------------
icrListCodeSpecialCon  = 2;  // ᮣ��᭮ ������ ᯨ᪠, � ���஬� �⭮���� ������ "�ᮡ�� �᫮���"
icrUnharmfulSpecialCon = 4;  // �ᮡ� �᫮��� �� �⭮����� �� �।��
icrSubStrKPS           = 8;  // ᮣ��᭮ ��ࢮ�� ᨬ���� ���
icrPPSPercent          = 16; // ᮣ��᭮ ���祭�� ��業� ��� �� ����
icrSpecialConRefFilled = 32; // ��������� ��뫪� �� �ᮡ� �᫮���
icrSpecialConRefEmpty  = 64; // �� ��������� ��뫪� �� �ᮡ� �᫮���
// 128 - १�� �� ��砩 ������ ��� ��ਠ�⮢ �� ������ �஢��. �᫨ �������, ������.
icrWouldBeHarmful      = 256; // �᫮��� �।�� ᮣ��᭮ ��稭�� 2..32
icrWouldBeExtraHarmful = 512; // �᫮��� �ᮡ� �।�� ᮣ��᭮ ��稭�� 2..32
//--------------------------
icrSexFail             = 1024; // �� ᮢ������ ��� �� �᫮��� ��㤠 � ����� 䨧��᪮�� ���
// 2048, 4096 - १�� ��� AdvFunc
icrRetirementAge       = 8192; // ���⨣��� ���ᨮ��� ������
icr30Days              = 16384; // �� ��諮 30 ���� � ������ �६������ ��ॢ��� �� ���।��� ���������
// 32768, 65536 - १�� �� ��㣨� ��������⥫�� ��ࠧ��
icrFinalResultHarmful      = 131072; // �����⥫�� १���� �� ������ �⠯�: �।�� �᫮���
icrFinalResultExtraHarmful = 262144; // �����⥫�� १���� �� ������ �⠯�: �ᮡ� �।�� �᫮���

// ��稭�, �易��� � ��।������� �।���� �� 䠪��, � ���⮬ �⪫������
icr2_BaseInsalubrity   = 1; // ᮣ��᭮ �᫮��� ��㤠 �� ���� � ���⮬ ���室��
icr2_HoursMoreHarmful  = 2; // �����㦥�� ��ࠡ�⠭�� � �窨 �७�� ���. ��䮢 ��� � ������ �।������
icr2_HoursLessHarmful  = 4; // ��ࠡ�⠭��� � �窨 �७�� ���. ��䮢 �६� 楫���� � ����� �।��� �᫮����, 祬 �� �����
icr2_AbsencesHours     = 8; // �����㦥�� ��� ���, ������� �।����� �� ������
icr2_Absence           = 16; // �����㦥�� ���, ������� �।����� �� ������
icr2_SickListDayBefore = 32; // �।����� ���쭨筮�� �ਭ�� ࠢ��� �।���� ��᫥����� ��� ��। ��砫�� ���쭨筮��
icr2_VacationDayBefore = 64; // �।����� ���᪠ �ਭ�� ࠢ��� �।���� ��᫥����� ��� ��। ��砫�� ���᪠
icr2_FullDay           = 128; // ��ࠡ�⠫ � �窨 �७�� ���. ��䮢 ����� ����
icr2_NotFullDay        = 256; // ��ࠡ�⠫ � �窨 �७�� ���. ��䮢 ������� ����
icr2_NotWorking        = 512; // �� ࠡ�⠫ � ࠡ�稩 �� ����� ����
icr2_80Percent         = 1024; // ����� ��� ��⠥��� 80% ��������� �६��� (���� - 100%)
icr2_AbsencesAtWeekend = 2048; // �����㦥�� ��� � ��室��� �� ����� ����
icr2_HarmfulAbsence    = 4096; // �����㦥�� ��� � �ਧ����� "�।�� �᫮���"
icr2_NearestDayBefore  = 8192; // ᮣ��᭮ �।���� ������襣� �।�����饣� ࠡ�祣� �� ����� ���
icr2_HoursMajority     = 16384; // ��������� ⮬�, �� ������ ���� �६��� ��ࠡ�⠭� ������ � ⠪�� �᫮����
// 32768, 65536, 131072, 262144 - १��
icr2_FinalResultHarmful      = 524288; // �����⥫�� १���� �� ������ �⠯�: �।�� �᫮���
icr2_FinalResultExtraHarmful = 1048576; // �����⥫�� १���� �� ������ �⠯�: �ᮡ� �।�� �᫮���

//------------------------------------------------------------------------------
// ������ �८�ࠧ������ ��稭� �।���� � ��ப�
//------------------------------------------------------------------------------
ir2strDefault    = 0; // ��樠���(�) �ଠ�
ir2strProOnly    = 1; // ⮫쪮 ��㬥��� � ����� �ਭ�⮣� �襭��
ir2strContraOnly = 2; // ⮫쪮 ��㬥���, ����� �뫨 ��ᬮ�७�, �� ��⨢���� �襭��
