/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 5.70                                                      บ
 บ โขฅโแโขฅญญ๋ฉ : ฎเง๎ช จโ ซจฉ ”เ ญๆฅขจ็                                  บ
 บ  งญ ็ฅญจฅ    : โฎฃฎข ๏ ขฅคฎฌฎแโ์ ฏฎ กเจฃ คญ๋ฌ ญ เ๏ค ฌ                   บ
 บ                                                                           บ
 บ งฌฅญฅญจ๏                                                                 บ
 บ     €ขโฎเ: ___________________  โ : __________________                   บ
 บ     –ฅซ์ : ____________________________________________                   บ
 บ                                                                           บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
โฎฃฎข ๏ ขฅคฎฌฎแโ์ ฏฎ กเจฃ คญ๋ฌ ญ เ๏ค ฌ
#end
.FORM 'BrigadeDutyFinalForm'
.HIDE
.FIELDS
  CurrentDate: Date: 'M:DD/MM/YYYY'
  CurrentTime

  FilterName
  Filter

  เฅคฏเจ๏โจฅ

  เฅช_ญ เ๏ค 
  –ฅๅ
  ฎฌฅเ_ญ เ๏ค 
  ฎฌฅเ_กเจฃ ค๋
  เจฃ ค 
  เจฃ คจเ

  เฅช_เ กฎโ๋
  ฎคเ งคฅซฅญจฅ
  ’ กฅซ์ญ๋ฉ_ญฎฌฅเ
  ” ฌจซจ๏
  ’ เจไ: Double
  ’“: Double
  ฎซจ็ฅแโขฎ_คญฅฉ: Double
  ฎซจ็ฅแโขฎ_็ แฎข: Double
  ‘ใฌฌ : Double
  เฅฌจ๏: Double

.ENDFIELDS
^, ^
.IF BrigadeDutyFinalForm_PrintFilter
.{
^
.{
  ^
.}
.}
.END
^
.{ BrigadeDutyFinalForm_CycleDuty checkenter
^ ^ ^ ^ ^ ^
.{ BrigadeDutyFinalForm_JobData checkenter
  ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.}
.}

.[F
.]F
.ENDFORM


!==============================================================================
.LINKFORM 'BrigadeDutyFinalForm_Link' PROTOTYPE IS 'BrigadeDutyFinalForm'
.NAMEINLIST 'โฎฃฎข ๏ ขฅคฎฌฎแโ์ ฏฎ กเจฃ คญ๋ฌ ญ เ๏ค ฌ'
.DEFP PA4
.DEFO PORTRAIT
!.SET FILLER = '0'
.VAR
  DaySubTotal:      Double;
  HourSubTotal:     Double;
  PaymentSubTotal:  Double;
  PremiumSubTotal:  Double;
  OnHandSubTotal:   Double;

  PaymentTotal:     Double;
  PremiumTotal:     Double;
  DayTotal:         Double;
  HourTotal:        Double;
  OnHandTotal:      Double;

  Tariff:           Double;
  MPF:              Double;
  Days:             Double;
  Hours:            Double;
  Payment:          Double;
  Premium:          Double;
  RecordNumber:     LongInt;
  RecordCount:      LongInt;
  OldClockNumber:   string;
.ENDVAR
.[H OVERWRITE
.FIELDS
  CurrentDate
  CurrentTime

  FilterName
  Filter

  เฅคฏเจ๏โจฅ

  ฎฌฅเ_ญ เ๏ค 
  –ฅๅ
  ฎฌฅเ_กเจฃ ค๋
  เจฃ ค 
  เจฃ คจเ
.ENDFIELDS
ÿ^, ^
.]H
.IF BrigadeDutyFinalForm_PrintFilter

.{
^
.{
  ^
.}
.}
.END

ÿ’€ …‘’  € €€ÿ

เฅคฏเจ๏โจฅ:ÿ ^ÿ

.{ BrigadeDutyFinalForm_CycleDuty CHECKENTER
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  ฎฌฅเ ญ เ๏ค : ÿ@@@@@@@@@@@@@@@@@@@@ÿ  –ฅๅ: ÿ@@@@@@@@@@@@@@@@@@@@ÿ                                                                           บ
บ ฎฌฅเ กเจฃ ค๋: ÿ@@@@@@@@@@@@@@@@ÿ  เจฃ ค : ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ  เจฃ คจเ: ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ บ
ฬอออัออออออออออออออออออออออออัอออออออัออออออออออออออออออออออัอออออออออออออัออออัออออออัอออออออัออออออออออออออัออออออออออออออัออออออออออออออน
บN  ณฎคเ งคฅซฅญจฅ           ณ’ ก.ญ. ณ” ฌจซจ๏ ..          ณ’ เจไ (ฎชซ ค)ณ’“ ณญฅฉ  ณ— แฎข  ณ‘ใฌฌ          ณเฅฌจ๏        ณโฎฃฎ         บ
วฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤลฤฤฤฤฤฤลฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
.BEGIN
  DaySubTotal := 0;
  HourSubTotal := 0;
  PaymentSubTotal := 0;
  PremiumSubTotal := 0;
  DayTotal := 0;
  HourTotal := 0;
  PaymentTotal := 0;
  PremiumTotal := 0;
  RecordNumber := 1;
  RecordCount := 0;
  OldClockNumber := ’ กฅซ์ญ๋ฉ_ญฎฌฅเ;
END.
.{ BrigadeDutyFinalForm_JobData checkenter
.{?INTERNAL;(OldClockNumber<>’ กฅซ์ญ๋ฉ_ญฎฌฅเ) and (RecordCount>1);
.BEGIN
  OnHandSubTotal := PaymentSubTotal + PremiumSubTotal;
END.
.FIELDS
  DaySubTotal
  HourSubTotal
  PaymentSubTotal
  PremiumSubTotal
  OnHandSubTotal
.ENDFIELDS
ÿบ   ณ                        ณ       ณ                      ณ             ’ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บÿ
.}
.BEGIN
  OnHandSubTotal := ‘ใฌฌ  + เฅฌจ๏;
  if (OldClockNumber <> ’ กฅซ์ญ๋ฉ_ญฎฌฅเ)
  {
    DaySubTotal := 0;
    HourSubTotal := 0;
    PaymentSubTotal := 0;
    PremiumSubTotal := 0;
    RecordNumber := RecordNumber + 1;
    RecordCount := 0;
    OldClockNumber := ’ กฅซ์ญ๋ฉ_ญฎฌฅเ;
  }
  RecordCount := RecordCount + 1;

  Tariff := ’ เจไ;
  MPF := ’“;
  Days := ฎซจ็ฅแโขฎ_คญฅฉ;
  Hours := ฎซจ็ฅแโขฎ_็ แฎข;
  Payment := ‘ใฌฌ ;
  Premium := เฅฌจ๏;
END.
.{?INTERNAL;RecordCount=1;
.FIELDS
  RecordNumber
  ฎคเ งคฅซฅญจฅ
  ’ กฅซ์ญ๋ฉ_ญฎฌฅเ
  ” ฌจซจ๏
  Tariff
  MPF
  Days
  Hours
  Payment
  Premium
  OnHandSubTotal
.ENDFIELDS
บ&&&ณ@@@@@@@@@@@@@@@@@@@@@@@@ณ@@@@@@@ณ@@@@@@@@@@@@@@@@@@@@@@ณ&'&&&&&&&&.&&ณ&.&&ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บ
.}
.{?INTERNAL;RecordCount>1;
.FIELDS
  Tariff
  MPF
  Days
  Hours
  Payment
  Premium
  OnHandSubTotal
.ENDFIELDS
บ   ณ                        ณ       ณ                      ณ&'&&&&&&&&.&&ณ&.&&ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บ
.}
.BEGIN
  DaySubTotal := DaySubTotal + ฎซจ็ฅแโขฎ_คญฅฉ;
  HourSubTotal := HourSubTotal + ฎซจ็ฅแโขฎ_็ แฎข;
  PaymentSubTotal := PaymentSubTotal + ‘ใฌฌ ;
  PremiumSubTotal := PremiumSubTotal + เฅฌจ๏;

  DayTotal := DayTotal + ฎซจ็ฅแโขฎ_คญฅฉ;
  HourTotal := HourTotal + ฎซจ็ฅแโขฎ_็ แฎข;
  PaymentTotal := PaymentTotal + ‘ใฌฌ ;
  PremiumTotal := PremiumTotal + เฅฌจ๏;
  OnHandTotal := PaymentTotal + PremiumTotal;
END.
.}
.{?INTERNAL;RecordCount>1;
.BEGIN
  OnHandSubTotal := PaymentSubTotal + PremiumSubTotal;
END.
.FIELDS
  DaySubTotal
  HourSubTotal
  PaymentSubTotal
  PremiumSubTotal
  OnHandSubTotal
.ENDFIELDS
ÿบ   ณ                        ณ       ณ                      ณ             ’ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บÿ
.}
.FIELDS
  DayTotal
  HourTotal
  PaymentTotal
  PremiumTotal
  OnHandTotal
.ENDFIELDS
วฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤลฤฤฤฤฤฤลฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
ÿบ โฎฃฎ ฏฎ ญ เ๏คใ:                                                             ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บÿ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออฯออออออฯอออออออฯออออออออออออออฯออออออออออออออฯออออออออออออออผ

ÿ
.}
.[F
.]F
.ENDFORM


!==============================================================================
.LINKFORM 'BrigadeDutyFinalForm_Link1' PROTOTYPE IS 'BrigadeDutyFinalForm'
.NAMEINLIST 'โฎฃฎข ๏ ขฅคฎฌฎแโ์ ฏฎ กเจฃ คญ๋ฌ ญ เ๏ค ฌ (โฎซ์ชฎ จโฎฃจ)'
.DEFP PA4
.DEFO PORTRAIT
.SET FILLER = '0'
.VAR
  DaySubTotal:      Double;
  HourSubTotal:     Double;
  PaymentSubTotal:  Double;
  PremiumSubTotal:  Double;
  OnHandSubTotal:   Double;

  PaymentTotal:     Double;
  PremiumTotal:     Double;
  DayTotal:         Double;
  HourTotal:        Double;
  OnHandTotal:      Double;

  Department:       String;
  Surname:          String;
  Tariff:           Double;
  MPF:              Double;
  Days:             Double;
  Hours:            Double;
  Payment:          Double;
  Premium:          Double;
  RecordNumber:     LongInt;
  RecordCount:      LongInt;
  OldClockNumber:   string;
.ENDVAR
.[H OVERWRITE
.FIELDS
  CurrentDate
  CurrentTime

  FilterName
  Filter

  เฅคฏเจ๏โจฅ

  ฎฌฅเ_ญ เ๏ค 
  –ฅๅ
  ฎฌฅเ_กเจฃ ค๋
  เจฃ ค 
  เจฃ คจเ
.ENDFIELDS
ÿ^, ^
.]H
.IF BrigadeDutyFinalForm_PrintFilter

.{
^
.{
  ^
.}
.}
.END

ÿ’€ …‘’  € €€ÿ

เฅคฏเจ๏โจฅ:ÿ ^ÿ

.{ BrigadeDutyFinalForm_CycleDuty CHECKENTER
.BEGIN
  DaySubTotal := 0;
  HourSubTotal := 0;
  PaymentSubTotal := 0;
  PremiumSubTotal := 0;
  OnHandSubTotal := 0;

  DayTotal := 0;
  HourTotal := 0;
  PaymentTotal := 0;
  PremiumTotal := 0;
  RecordNumber := 1;

  Department := ฎคเ งคฅซฅญจฅ;
  Surname := ” ฌจซจ๏;
  Tariff := ’ เจไ;
  MPF := ’“;
  Days := ฎซจ็ฅแโขฎ_คญฅฉ;
  Hours := ฎซจ็ฅแโขฎ_็ แฎข;
  Payment := ‘ใฌฌ ;
  Premium := เฅฌจ๏;
  OldClockNumber := ’ กฅซ์ญ๋ฉ_ญฎฌฅเ;
END.
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  ฎฌฅเ ญ เ๏ค : ÿ@@@@@@@@@@@@@@@@@@@@ÿ  –ฅๅ: ÿ@@@@@@@@@@@@@@@@@@@@ÿ                                                                           บ
บ ฎฌฅเ กเจฃ ค๋: ÿ@@@@@@@@@@@@@@@@ÿ  เจฃ ค : ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ  เจฃ คจเ: ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ บ
ฬอออัออออออออออออออออออออออออัอออออออัออออออออออออออออออออออัอออออออออออออัออออัออออออัอออออออัออออออออออออออัออออออออออออออัออออออออออออออน
บN  ณฎคเ งคฅซฅญจฅ           ณ’ ก.ญ. ณ” ฌจซจ๏ ..          ณ’ เจไ (ฎชซ ค)ณ’“ ณญฅฉ  ณ— แฎข  ณ‘ใฌฌ          ณเฅฌจ๏        ณโฎฃฎ         บ
วฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤลฤฤฤฤฤฤลฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
.{ BrigadeDutyFinalForm_JobData checkenter
.{?INTERNAL;OldClockNumber<>’ กฅซ์ญ๋ฉ_ญฎฌฅเ;
.BEGIN
  OnHandSubTotal := PaymentSubTotal + PremiumSubTotal;
END.
.FIELDS
  RecordNumber
  Department
  OldClockNumber
  Surname
  Tariff
  MPF
  DaySubTotal
  HourSubTotal
  PaymentSubTotal
  PremiumSubTotal
  OnHandSubTotal
.ENDFIELDS
บ&&&ณ@@@@@@@@@@@@@@@@@@@@@@@@ณ@@@@@@@ณ@@@@@@@@@@@@@@@@@@@@@@ณ&'&&&&&&&&.&&ณ&.&&ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บ
.BEGIN
  Department := ฎคเ งคฅซฅญจฅ
  Surname := ” ฌจซจ๏;
  Tariff := ’ เจไ;
  MPF := ’“;
  Days := ฎซจ็ฅแโขฎ_คญฅฉ;
  Hours := ฎซจ็ฅแโขฎ_็ แฎข;
  Payment := ‘ใฌฌ ;
  Premium := เฅฌจ๏;
  DaySubTotal := 0;
  HourSubTotal := 0;
  PaymentSubTotal := 0;
  PremiumSubTotal := 0;
  RecordNumber := RecordNumber + 1;
  RecordCount := 0;
  OldClockNumber := ’ กฅซ์ญ๋ฉ_ญฎฌฅเ;
END.
.}
.BEGIN
  DaySubTotal := DaySubTotal + ฎซจ็ฅแโขฎ_คญฅฉ;
  HourSubTotal := HourSubTotal + ฎซจ็ฅแโขฎ_็ แฎข;
  PaymentSubTotal := PaymentSubTotal + ‘ใฌฌ ;
  PremiumSubTotal := PremiumSubTotal + เฅฌจ๏;
  DayTotal := DayTotal + ฎซจ็ฅแโขฎ_คญฅฉ;
  HourTotal := HourTotal + ฎซจ็ฅแโขฎ_็ แฎข;
  PaymentTotal := PaymentTotal + ‘ใฌฌ ;
  PremiumTotal := PremiumTotal + เฅฌจ๏;
  OnHandTotal := PaymentTotal + PremiumTotal;
END.
.}
.BEGIN
  OnHandSubTotal := PaymentSubTotal + PremiumSubTotal;
END.
.FIELDS
  RecordNumber
  Department
  OldClockNumber
  Surname
  Tariff
  MPF
  DaySubTotal
  HourSubTotal
  PaymentSubTotal
  PremiumSubTotal
  OnHandSubTotal
.ENDFIELDS
บ&&&ณ@@@@@@@@@@@@@@@@@@@@@@@@ณ@@@@@@@ณ@@@@@@@@@@@@@@@@@@@@@@ณ&'&&&&&&&&.&&ณ&.&&ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บ
.FIELDS
  DayTotal
  HourTotal
  PaymentTotal
  PremiumTotal
  OnHandTotal
.ENDFIELDS
วฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤลฤฤฤฤฤฤลฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
ÿบ โฎฃฎ ฏฎ ญ เ๏คใ:                                                             ณ&&&.&&ณ&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&ณ&'&&&&&&&&&.&&บÿ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออฯออออออฯอออออออฯออออออออออออออฯออออออออออออออฯออออออออออออออผ
ÿ
.}
.[F
.]F
.ENDFORM