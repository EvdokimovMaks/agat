/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,2000 ชฎเฏฎเ ๆจ๏ €€’€                    บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ  งญ ็ฅญจฅ    :  กฎ็จฉ โ กฅซ์                                            บ
 บ โขฅโแโขฅญญ๋ฉ : ฎเง๎ช จโ ซจฉ ”เ ญๆฅขจ็                                  บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
 กฎ็จฉ โ กฅซ์
#end
.form PrintWrk
.uniqueconsts
.hide
.fields
  LinesPerPage: integer
  Post wtPred wtBoss wtMonth wtYear
.endfields
^
                                                                " “โขฅเฆค ๎ "

                                                          ^  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                          ^         ฤฤฤฤฤฤฤฤฤฤฤฤ /

                           ’€… “—…’€ €—… ……
                                  ง   ^  &&&& ฃ.
.{ Absences checkenter
.fields
  AbsenceNotation
.endfields
^
.}
.fields
  Day1 Day2 Day3 Day4 Day5 Day6 Day7 Day8 Day9 Day10 Day11 Day12 Day13 Day14 Day15
  Day16 Day17 Day18 Day19 Day20 Day21 Day22 Day23 Day24 Day25 Day26 Day27 Day28 Day29 Day30 Day31
.endfields
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
.{ // main cycle
.{ Header checkenter
.fields
  ฌ๏_ใเฎขญ๏_จฅเ เๅจจ
.endfields
^
.}
.{ Body checkenter
.fields
  wtNpp wtFIO wtTabN wtPost wtSalary wtMpf
  wtD01 wtD02 wtD03 wtD04 wtD05 wtD06 wtD07 wtD08 wtD09 wtD10
  wtD11 wtD12 wtD13 wtD14 wtD15 wtD16 wtD17 wtD18 wtD19 wtD20
  wtD21 wtD22 wtD23 wtD24 wtD25 wtD26 wtD27 wtD28 wtD29 wtD30 wtD31
  WorkingDays WorkingHours PlannedWorkingDays PlannedWorkingHours
  EveningDays EveningHours PlannedEveningDays PlannedEveningHours
  NightDays NightHours PlannedNightDays PlannedNightHours
  WorkingHolidays HolidayHours PlannedWorkingHolidays PlannedHolidayHours
  WorkingWeekends WeekendHours PlannedWorkingWeekends PlannedWeekendHours
  OverworkDays OverworkHours PlannedOverworkDays PlannedOverworkHours
.endfields
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
.{ AbsenceData checkenter
.fields
  AbsenceData: integer
.endfields
^
.}
.}  // Body
.{ Totals checkenter
.fields
 wtItPodr
 WorkingDaysSum WorkingHoursSum PlannedWorkingDaysSum PlannedWorkingHoursSum
 EveningDaysSum EveningHoursSum PlannedEveningDaysSum PlannedEveningHoursSum
 NightDaysSum NightHoursSum PlannedNightDaysSum PlannedNightHoursSum
 WorkingHolidaysSum HolidayHoursSum PlannedWorkingHolidaysSum PlannedHolidayHoursSum
 WorkingWeekendsSum WeekendHoursSum PlannedWorkingWeekendsSum PlannedWeekendHoursSum
 OverworkDaysSum OverworkHoursSum PlannedOverworkDaysSum PlannedOverworkHoursSum
.endfields
^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
^ ^ ^ ^
.{ AbsenceSum checkenter
.fields
  AbsenceSum: longint
.endfields
^
.}
.} //totals
.} // main
.fields
 udu
.endfields
.if yes_uo
.{ usl_uo
 ^
.}
.end
.endform


#declare FormFeed
.{ while (LineCount < LinesPerPage)

.begin Inc(LineCount); end.
.}
.begin Inc(PageCount) end.
.fields
  PageCount
.endfields
จแโ @@@@
.begin
  LineCount := 1;
  PrintHeader := true;
end.
#end

// ColWidth - ่จเจญ  ชฎซฎญชจ แ ญฅ๏ขช ฌจ
#declare ProcessAbsences(ColWidth)
.var
  WorkerName:       string;
  WorkerPostName:   string;
  GroupingLevelName: string;
  AbsenceCount: integer;
  HeaderStr0:   string;
  HeaderStr1:   string;
  HeaderStr2:   string;
  HeaderStr3:   string;
  HeaderStr4:   string;
  HeaderStr5:   string;
  AbsenceStr0:  string;
  AbsenceStr1:  string;
  AbsenceStr2:  string;
  SumStr0:      string;
  SumStr1:      string;
  SumStr2:      string;
  LineCount:    integer;
  First:        boolean;
  PageCount:    longint;
  BodyHeight:   integer;
  PrintHeader:  boolean;
.endvar
.begin
  var PredName: string;

  AbsenceCount := 0;
  HeaderStr0 := '';
  HeaderStr1 := '';
  HeaderStr2 := '';
  HeaderStr3 := '';
  HeaderStr4 := '';
  HeaderStr5 := '';
  AbsenceStr1 := '';
  AbsenceStr2 := '';
  SumStr1 := '';
  SumStr2 := '';
  LineCount := 10;
  PredName := wtPred;
  while Length(PredName) > 0
  {
    LogicSubStr(PredName, 49, true, true);
    if Length(PredName) > 0
      Inc(LineCount);
  }
  PageCount := 1;
  PrintHeader := true;
  First := true;
end.
.{ PrintWrk_Absences checkenter
.begin
  HeaderStr1 := if (HeaderStr1 = '', Pad('บ', #ColWidth + 1), HeaderStr1 + Pad('ณ', #ColWidth + 1));
  HeaderStr3 := if (HeaderStr3 = '', PadCh('ื', 'ฤ', #ColWidth + 1), HeaderStr3 + PadCh('ย', 'ฤ', #ColWidth + 1));
  HeaderStr4 := if (HeaderStr4 = '', Center(AbsenceNotation, #ColWidth), HeaderStr4 + 'ณ' + Center(AbsenceNotation, #ColWidth));
  HeaderStr5 := if (HeaderStr5 = '', PadCh('ฮ', 'อ', #ColWidth + 1), HeaderStr5 + PadCh('ุ', 'อ', #ColWidth + 1));
  AbsenceStr1 := if (AbsenceStr1 = '', Pad('บ', #ColWidth + 1), AbsenceStr1 + Pad('ณ', #ColWidth + 1));
  AbsenceStr2 := if (AbsenceStr2 = '', PadCh('ฮ', 'อ', #ColWidth + 1), AbsenceStr2 + PadCh('ุ', 'อ', #ColWidth + 1));
  SumStr1 := if (SumStr1 = '', PadCh('ื', 'ฤ', #ColWidth + 1), SumStr1 + PadCh('ล', 'ฤ', #ColWidth + 1));
  SumStr2 := if (SumStr2 = '', PadCh('ส', 'อ', #ColWidth + 1), SumStr2 + PadCh('ฯ', 'อ', #ColWidth + 1));
  Inc(AbsenceCount);
end.
.}
.begin
  if (AbsenceCount > 0)
  {
    HeaderStr4 := HeaderStr4 + 'บ';
    if ((AbsenceCount = 1) and (#ColWidth < 6))
    {
      if (#ColWidth >= 5) // โ.ฅ. =
        HeaderStr2 := 'บ' + Center('ฅ๏ข.', #ColWidth);
      else
        HeaderStr2 := 'บ' + Center('/', #ColWidth);
    }
    else
      HeaderStr2 := 'บ' + Center('ฅ๏ขชจ', AbsenceCount * (#ColWidth + 1) - 1);
    HeaderStr0 := PadCh('ห', 'อ', AbsenceCount * (#ColWidth + 1));
  }
end.
#end

//------------------------------------------------------------------------------
//                                                                   PRINTWRK_00
//------------------------------------------------------------------------------
#declare BodyFooter00
.{?internal;(not First)
.fields
  SumStr2
.endfields
ศอออสออออออออออออสอออออออสอออออออออออสออออออออออสอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออสอออออสออฯออออออฯออฯออออออฯออฯออออออฯออฯออออออฯออฯออออออฯออฯออออออ^ผ
.begin
  Inc(LineCount);
  First := true;
end.
.}
#end

.linkform 'PrintWrk_00' prototype is 'PrintWrk'
.group 'withevnnochn'
.nameinlist ' กฎ็จฉ โ กฅซ์ ( ซ์โฅเญ โจขญ๋ฉ ไฎเฌ โ)'
.fields
  CommonFormHeader Post wtPred wtBoss wtMonth wtYear
.endfields
ÿ^

                                                                " “โขฅเฆค ๎ "

                                                          ^  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                          ฤฤฤฤฤฤฤฤฤฤฤฤ / ^  /

                           ÿ’€… “—…’€ €—… ……
                                  ง   ^  &&&& ฃÿ.
#ProcessAbsences(3)
.{ //main cycle
.{ PrintWrk_Header checkenter
.{?internal; (LineCount + 16 > LinesPerPage)
#FormFeed
.}
.fields
  ฌ๏_ใเฎขญ๏_จฅเ เๅจจ
.endfields
ÿ^ÿ
.begin
  Inc(LineCount);
  PrintHeader := true;
end.
.} //PrintWrk_Header
.{ PrintWrk_Body checkenter
.begin
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
  BodyHeight := 0;
  while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0) do
  {
    Inc(BodyHeight);
    LogicSubStr(WorkerName, 12, true, true);
    LogicSubStr(WorkerPostName, 11, true, true);
  }
  // แ ใ็ฅโฎฌ เ งคฅซจโฅซ๏
  Inc(BodyHeight);
  if BodyHeight < 4
    BodyHeight := 4;
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
end.
.{?internal;(LineCount + BodyHeight + 1 > LinesPerPage)
#BodyFooter00
#FormFeed
.}
.{?internal;(PrintHeader)
.fields
  HeaderStr0
  HeaderStr2
  HeaderStr3
  Day1 Day2 Day3 Day4 Day5 Day6 Day7 Day8 Day9 Day10 Day11 Day12 Day13 Day14 Day15
  HeaderStr1
  HeaderStr4
  Day16 Day17 Day18 Day19 Day20 Day21 Day22 Day23 Day24 Day25 Day26 Day27 Day28 Day29 Day30 Day31
  HeaderStr1
.endfields
ÿษอออหออออออออออออหอออออออหอออออออออออหออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหอออออหอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ^ป
บ   บ            บ       บ           บ          บ                                           —จแซ  ฌฅแ๏ๆ                                         บ ’“ บ           โเ กฎโ ญฎ ฏฎ ไ ชโใ/ฏฎ ฏซ ญใ                    ^บ
บ N บ            บ  ’ ก  บ คฎซฆญฎแโ์ บ  ชซ ค,  วฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤถ     วฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤ^ถ
บn/nบ   กฎโญจช  บ   N   บ(ฏเฎไฅแแจ๏)บ  โ เจไ   บ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  X  บ     บ เ กฎ็จๅ ณขฅ็ฅเญจๅ ณ ญฎ็ญ๋ๅ  ณ ฏเ งคญ. ณข๋ๅฎคญ๋ๅ ณแ/ใเฎ็ญ๋ๅ^บ
บ   บ            บ       บ           บ          วฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤถ     วฤฤยฤฤฤฤฤฤลฤฤยฤฤฤฤฤฤลฤฤยฤฤฤฤฤฤลฤฤยฤฤฤฤฤฤลฤฤยฤฤฤฤฤฤลฤฤยฤฤฤฤฤฤถ^
บ   บ            บ       บ           บ          บ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && บ     บคญณ ็ แฎขณคญณ ็ แฎขณคญณ ็ แฎขณคญณ ็ แฎขณคญณ ็ แฎขณคญณ ็ แฎข^บÿ
ÿ.begin
  LineCount := LineCount + 6;
  PrintHeader := false;
  First := true;
end.
.}
.begin
  AbsenceStr0 := '';
end.
.{ PrintWrk_AbsenceData checkenter
.begin
  var Data: string;
  if AbsenceData = 0
    Data := Pad('', 3);
  else
    Data := LPad(string(AbsenceData), 3);
  AbsenceStr0 := if (AbsenceStr0 = '', 'บ' + Data, AbsenceStr0 + 'ณ' + Data);
end.
.}
.fields
  HeaderStr5
  wtNpp LogicSubStr(WorkerName, 12, true, true) wtTabN LogicSubStr(WorkerPostName, 11, true, true) wtSalary
  wtD01 wtD02 wtD03 wtD04 wtD05 wtD06 wtD07 wtD08 wtD09  wtD10 wtD11 wtD12 wtD13 wtD14 wtD15
  WorkingDays WorkingHours EveningDays EveningHours
  NightDays NightHours WorkingHolidays HolidayHours
  WorkingWeekends WeekendHours OverworkDays OverworkHours AbsenceStr0
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true) wtMpf AbsenceStr1
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true)
  wtD16 wtD17 wtD18 wtD19  wtD20 wtD21 wtD22 wtD23 wtD24 wtD25 wtD26 wtD27 wtD28 wtD29 wtD30 wtD31
  PlannedWorkingDays PlannedWorkingHours PlannedEveningDays PlannedEveningHours
  PlannedNightDays PlannedNightHours PlannedWorkingHolidays PlannedHolidayHours
  PlannedWorkingWeekends PlannedWeekendHours PlannedOverworkDays PlannedOverworkHours AbsenceStr1
.endfields
ฬอออฮออออออออออออฮอออออออฮอออออออออออฮออออออออออฮอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออฮอออออฮออุออออออุออุออออออุออุออออออุออุออออออุออุออออออุออุออออออ^น
บ&&&บ@@@@@@@@@@@@บ&&&&&&&บ@@@@@@@@@@@บ&#&&&&&.&&บ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ  X  บ     บ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          วฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤถ &.&&บ  ณ      ณ  ณ      ณ  ณ      ณ  ณ      ณ  ณ      ณ  ณ      ^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&บ     บ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&ณ&#ณ&#&.&&^บ
.begin
  LineCount := LineCount + 4;
  First := false;
 end.
.{ while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0)
.fields
  LogicSubStr(WorkerName, 12, true, true)
  LogicSubStr(WorkerPostName, 11, true, true)
  AbsenceStr1
.endfields
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     บ     บ  ณ      ณ  ณ      ณ  ณ      ณ  ณ      ณ  ณ      ณ  ณ      ^บ
.begin Inc(LineCount) end.
.} // while
.} // PrintWrk_Body
#BodyFooter00
.{?internal; (LineCount + 3 > LinesPerPage)
#FormFeed
.}
.{ PrintWrk_Totals checkenter
.begin
  SumStr0 := '';
end.
.{ PrintWrk_AbsenceSum checkenter
.begin
  var Sum: string;
  if AbsenceSum = 0
    Sum := Pad('', 3);
  else
    Sum := LPad(string(AbsenceSum), 3);
  SumStr0 := if (SumStr0 = '', ' ' + Sum, SumStr0 + ' ' + Sum);
end.
.}
.begin
  GroupingLevelName := wtItPodr;
end.
.fields
  LogicSubStr(GroupingLevelName, 47, true, true):'t:-'
  WorkingDaysSum EveningDaysSum NightDaysSum
  WorkingHolidaysSum WorkingWeekendsSum OverworkDaysSum SumStr0
  LogicSubStr(GroupingLevelName, 47, true, true)
  WorkingHoursSum EveningHoursSum NightHoursSum
  HolidayHoursSum WeekendHoursSum OverworkHoursSum
.endfields
ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ญฅฉ ________________________________________________________________________________________________      &#&&      &#&&      &#&&      &#&&      &#&&      &#&&^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ — แฎข                                                                                                 &#&&&&.&& &#&&&&.&& &#&&&&.&& &#&&&&.&& &#&&&&.&& &#&&&&.&&ÿ

.begin LineCount := LineCount + 3 end.
.} //totals
.}  // main

.fields
  PageCount
.endfields
ฎซจ็ฅแโขฎ ซจแโฎข: &&&&&&&&&&
.if PrintWrk_yes_uo

“แซฎขญ๋ฅ ฎกฎงญ ็ฅญจ๏:
.{ PrintWrk_usl_uo
.fields
  udu
.endfields
 ^
.}
.end

 ’ กฅซ์้จช ________________  ็ ซ์ญจช __________________ โคฅซ ช คเฎข _________________ ’ __________________ ใๅฃ ซโฅเ __________________ÿ
.endform


//------------------------------------------------------------------------------
//                                                                   PRINTWRK_01
//------------------------------------------------------------------------------
#declare BodyFooter01
.{?internal;(not First)
.fields
  SumStr2
.endfields
ศอออสออออออออออออสอออออออสอออออออออออสออออออออออสอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออสอออออสอออออฯออออออสอออออออฯอออออออ^ผ
.begin
  Inc(LineCount);
  First := true;
end.
.}
#end

.linkform 'PrintWrk_01' prototype is 'PrintWrk'
.group 'withevnnochn'
.nameinlist ' กฎ็จฉ โ กฅซ์ ฏฎ ฏฎคเ งคฅซฅญจ๏ฌ แ คฎฏ. ขเฅฌฅญฅฌ'
.fields
  CommonFormHeader Post wtPred wtBoss wtMonth wtYear
.endfields
ÿ^

                                                                " “โขฅเฆค ๎ "

                                                          ^  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                          ฤฤฤฤฤฤฤฤฤฤฤฤ / ^  /

                           ÿ’€… “—…’€ €—… ……
                                  ง   ^  &&&& ฃ.ÿ
#ProcessAbsences(5)
.{ //main cycle
.{ PrintWrk_Header checkenter
.{?internal; (LineCount + 16 > LinesPerPage)
#FormFeed
.}
.fields
  ฌ๏_ใเฎขญ๏_จฅเ เๅจจ
.endfields
ÿ^ÿ
.begin
  Inc(LineCount);
  PrintHeader := true;
end.
.} //PrintWrk_Header
.{ PrintWrk_Body checkenter
.begin
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
  BodyHeight := 0;
  while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0) do
  {
    Inc(BodyHeight);
    LogicSubStr(WorkerName, 12, true, true);
    LogicSubStr(WorkerPostName, 11, true, true);
  }
  // แ ใ็ฅโฎฌ เ งคฅซจโฅซ๏
  Inc(BodyHeight);
  if BodyHeight < 4
    BodyHeight := 4;
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
end.
.{?internal;(LineCount + BodyHeight + 1 > LinesPerPage)
#BodyFooter01
#FormFeed
.}
.{?internal;(PrintHeader)
.fields
  HeaderStr0
  if (AbsenceCount > 0, PadCh('บ',' ', AbsenceCount * 6), '')
  HeaderStr2
  Day1 Day2 Day3 Day4 Day5 Day6 Day7 Day8 Day9 Day10 Day11 Day12 Day13 Day14 Day15
  if (AbsenceCount > 0, PadCh('บ',' ', AbsenceCount * 6), '')
  HeaderStr3
  Day16 Day17 Day18 Day19 Day20 Day21 Day22 Day23 Day24 Day25 Day26 Day27 Day28 Day29 Day30 Day31
  HeaderStr4
.endfields
ÿษอออหออออออออออออหอออออออหอออออออออออหออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหอออออหออออออออออออหอออออออออออออออ^ป
บ   บ            บ       บ           บ          บ                                           —จแซ  ฌฅแ๏ๆ                                         บ ’“ บ            บ               ^บ
บ N บ            บ  ’ ก  บ คฎซฆญฎแโ์ บ  ชซ ค,  วฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤถ     บ โเ กฎโ ญฎ บ  ง ญจๅ ็ แฎข ^บ
บn/nบ   กฎโญจช  บ   N   บ(ฏเฎไฅแแจ๏)บ  โ เจไ   บ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  X  บ     บ            บ               ^บ
บ   บ            บ       บ           บ          วฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤถ     วฤฤฤฤฤยฤฤฤฤฤฤืฤฤฤฤฤฤฤยฤฤฤฤฤฤฤ^ถ
บ   บ            บ       บ           บ          บ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && บ     บ คญฅฉณ ็ แฎขบขฅ็ฅเญ.ณ ญฎ็ญ๋ๅบ^ÿ
.begin
  LineCount := LineCount + 6;
  PrintHeader := false;
  First := true;
end.
.}
.begin
  AbsenceStr0 := '';
end.
.{ PrintWrk_AbsenceData checkenter
.begin
  var Data: string;
  if AbsenceData = 0
    Data := Pad('', 5);
  else
    Data := LPad(string(AbsenceData), 5);
  AbsenceStr0 := if (AbsenceStr0 = '', 'บ' + Data, AbsenceStr0 + 'ณ' + Data);
end.
.}
.fields
  HeaderStr5
  wtNpp LogicSubStr(WorkerName, 12, true, true) wtTabN LogicSubStr(WorkerPostName, 11, true, true) wtSalary
  wtD01 wtD02 wtD03 wtD04 wtD05 wtD06 wtD07 wtD08 wtD09 wtD10 wtD11 wtD12 wtD13 wtD14 wtD15 wtMpf
  WorkingDays WorkingHours EveningHours NightHours AbsenceStr0
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true) AbsenceStr1
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true)
  wtD16 wtD17 wtD18 wtD19  wtD20 wtD21 wtD22 wtD23 wtD24 wtD25 wtD26 wtD27 wtD28 wtD29 wtD30 wtD31
  AbsenceStr1
.endfields
ฬอออฮออออออออออออฮอออออออฮอออออออออออฮออออออออออฮอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออฮอออออฮอออออุออออออฮอออออออุอออออออ^น
บ&&&บ@@@@@@@@@@@@บ&&&&&&&บ@@@@@@@@@@@บ&#&&&&&.&&บ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ  X  บ &.&&บ   &#ณ&#&.&&บ &#&.&&ณ &#&.&&^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          วฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤถ     บ     ณ      บ       ณ       ^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&บ     บ     ณ      บ       ณ       ^บ
.begin
  LineCount := LineCount + 4;
  First := false;
 end.
.{ while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0)
.fields
  LogicSubStr(WorkerName, 12, true, true)
  LogicSubStr(WorkerPostName, 11, true, true)
  AbsenceStr1
.endfields
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     บ     บ     ณ      บ       ณ       ^บ
.begin Inc(LineCount) end.
.} // while
.} // PrintWrk_Body
#BodyFooter01
.{?internal; (LineCount + 3 > LinesPerPage)
#FormFeed
.}
.{ PrintWrk_Totals checkenter
.begin
  SumStr0 := '';
end.
.{ PrintWrk_AbsenceSum checkenter
.begin
  var Sum: string;
  if AbsenceSum = 0
    Sum := Pad('', 5);
  else
    Sum := LPad(string(AbsenceSum), 5);
  SumStr0 := if (SumStr0 = '', ' ' + Sum, SumStr0 + ' ' + Sum);
end.
.}
.begin
  GroupingLevelName := wtItPodr;
end.
.fields
  LogicSubStr(GroupingLevelName, 47, true, true):'t:-'
  WorkingDaysSum  SumStr0
  LogicSubStr(GroupingLevelName, 47, true, true)
  WorkingHoursSum EveningHoursSum NightHoursSum
.endfields
ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ คญฅฉ: _______________________________________________________________________________________        &&#&&                ^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ ็ แฎข:                                                                                           &#&&&&.&& &#&&.&& &#&&.&&ÿ

.begin LineCount := LineCount + 3 end.
.} //totals
.}  // main

.fields
  PageCount
.endfields
ฎซจ็ฅแโขฎ ซจแโฎข: &&&&&&&&&&
.if PrintWrk_yes_uo

“แซฎขญ๋ฅ ฎกฎงญ ็ฅญจ๏:
.{ PrintWrk_usl_uo
.fields
  udu
.endfields
 ^
.}
.end

 ’ กฅซ์้จช ________________  ็ ซ์ญจช __________________ โคฅซ ช คเฎข _________________ ’ __________________ ใๅฃ ซโฅเ __________________ÿ
.endform

//------------------------------------------------------------------------------
//                                                                  PRINTWRK_01o
//------------------------------------------------------------------------------
#declare BodyFooter01o
.{?internal;(not First)
.fields
  SumStr2
.endfields
อออสออออออออออออสอออออออสอออออออออออสออออออออออสออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออฯออออสออออสอออออฯออออออสออออออฯออออออ^ผ
.begin
  Inc(LineCount);
  First := true;
end.
.}
#end

.linkform 'PrintWrk_01o' prototype is 'PrintWrk'
.group 'withevnnochn'
.nameinlist ' กฎ็จฉ โ กฅซ์ ฏฎ ฏฎคเ งคฅซฅญจ๏ฌ แ คฎฏ. ขเฅฌฅญฅฌ (แโ ญค เโญ๋ฉ ไฎเฌ โ)'
.fields
  CommonFormHeader Post wtPred wtBoss wtMonth wtYear
.endfields
ÿ^

                                                                " “โขฅเฆค ๎ "

                                                          ^  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                          ฤฤฤฤฤฤฤฤฤฤฤฤ / ^  /

                           ÿ’€… “—…’€ €—… ……
                                  ง   ^  &&&& ฃ.ÿ
#ProcessAbsences(5)
.{ //main cycle
.{ PrintWrk_Header checkenter
.{?internal; (LineCount + 16 > LinesPerPage)
#FormFeed
.}
.fields
  ฌ๏_ใเฎขญ๏_จฅเ เๅจจ
.endfields
ÿ^ÿ
.begin
  Inc(LineCount);
  PrintHeader := true;
end.
.} //PrintWrk_Header
.{ PrintWrk_Body checkenter
.begin
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
  BodyHeight := 0;
  while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0) do
  {
    Inc(BodyHeight);
    LogicSubStr(WorkerName, 12, true, true);
    LogicSubStr(WorkerPostName, 11, true, true);
  }
  // แ ใ็ฅโฎฌ เ งคฅซจโฅซ๏
  Inc(BodyHeight);
  if BodyHeight < 4
    BodyHeight := 4;
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
end.
.{?internal;(LineCount + BodyHeight + 1 > LinesPerPage)
#BodyFooter01o
#FormFeed
.}
.{?internal;(PrintHeader)
.fields
  HeaderStr0
  HeaderStr2
  HeaderStr3
  Day1 Day2 Day3 Day4 Day5 Day6 Day7 Day8 Day9 Day10 Day11 Day12 Day13 Day14 Day15
  Day16 Day17 Day18 Day19 Day20 Day21 Day22 Day23 Day24 Day25 Day26 Day27 Day28 Day29 Day30 Day31
  HeaderStr4
.endfields
ÿอออหออออออออออออหอออออออหอออออออออออหออออออออออหออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหออออหออออออออออออหอออออออออออออ^ป
   บ            บ  ’ ก  บ           บ  ชซ ค,  บ                                                                             —จแซ  ฌฅแ๏ๆ                                                                  บ %  บ โเ กฎโ ญฎ บ   ง ญจๅ    ^บ
 N บ   ”      บ   N   บ คฎซฆญฎแโ์ บ          วฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤยฤฤฤฤถฏเฅฌวฤฤฤฤฤยฤฤฤฤฤฤืฤฤฤฤฤฤยฤฤฤฤฤฤ^บ
n/nบ            บ       บ(ฏเฎไฅแแจ๏)บ  แโ ขช   บ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && ณ && บ ’“บ คญฅฉณ็ แฎข บขฅ็ฅเญณญฎ็ญ๋ฅบ^ÿ
.begin
  LineCount := LineCount + 4;
  PrintHeader := false;
  First := true;
end.
.}
.begin
  AbsenceStr0 := '';
end.
.{ PrintWrk_AbsenceData checkenter
.begin
  var Data: string;
  if AbsenceData = 0
    Data := Pad('', 5);
  else
    Data := LPad(string(AbsenceData), 5);
  AbsenceStr0 := if (AbsenceStr0 = '', 'บ' + Data, AbsenceStr0 + 'ณ' + Data);
end.
.}
.fields
  HeaderStr5
  wtNpp LogicSubStr(WorkerName, 12, true, true) wtTabN LogicSubStr(WorkerPostName, 11, true, true) wtSalary
  wtD01 wtD02 wtD03 wtD04 wtD05 wtD06 wtD07 wtD08 wtD09 wtD10 wtD11 wtD12 wtD13 wtD14 wtD15
  wtD16 wtD17 wtD18 wtD19  wtD20 wtD21 wtD22 wtD23 wtD24 wtD25 wtD26 wtD27 wtD28 wtD29 wtD30 wtD31 wtMpf
  WorkingDays WorkingHours EveningHours NightHours AbsenceStr0
.endfields
อออฮออออออออออออฮอออออออฮอออออออออออฮออออออออออฮออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออุออออฮออออฮอออออุออออออฮออออออุออออออ^น
&&&บ@@@@@@@@@@@@บ&&&&&&&บ@@@@@@@@@@@บ&'#&&&&.&&บ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&ณ&~.&บ &.&บ&#&.&ณ&#&.&&บ&#&.&&ณ&#&.&&^บ
.begin
  LineCount := LineCount + 2;
  First := false;
 end.
.{ while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0)
.fields
  LogicSubStr(WorkerName, 12, true, true)
  LogicSubStr(WorkerPostName, 11, true, true)
  AbsenceStr1
.endfields
   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    ณ    บ    บ     ณ      บ      ณ      ^บ
.begin Inc(LineCount) end.
.} // while
.} // PrintWrk_Body
#BodyFooter01o
.{?internal; (LineCount + 3 > LinesPerPage)
#FormFeed
.}
.{ PrintWrk_Totals checkenter
.begin
  SumStr0 := '';
end.
.{ PrintWrk_AbsenceSum checkenter
.begin
  var Sum: string;
  if AbsenceSum = 0
    Sum := Pad('', 5);
  else
    Sum := LPad(string(AbsenceSum), 5);
  SumStr0 := if (SumStr0 = '', ' ' + Sum, SumStr0 + ' ' + Sum);
end.
.}
.begin
  GroupingLevelName := wtItPodr;
end.
.fields
  LogicSubStr(GroupingLevelName, 47, true, true):'t:-'
  WorkingDaysSum  SumStr0
  LogicSubStr(GroupingLevelName, 47, true, true)
  WorkingHoursSum EveningHoursSum NightHoursSum
.endfields
ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ คญฅฉ: _________________________________________________________________________________________________________________________________________________        &#&&&              ^
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ ็ แฎข:                                                                                                                                                     &#&&&&.&& &#&.&& &#&.&&ÿ

.begin LineCount := LineCount + 3 end.
.} //totals
.}  // main

.fields
  PageCount
.endfields
ฎซจ็ฅแโขฎ ซจแโฎข: &&&&&&&&&&
.if PrintWrk_yes_uo

“แซฎขญ๋ฅ ฎกฎงญ ็ฅญจ๏:
.{ PrintWrk_usl_uo
.fields
  udu
.endfields
 ^
.}
.end

 ’ กฅซ์้จช ________________  ็ ซ์ญจช __________________ โคฅซ ช คเฎข _________________ ’ __________________ ใๅฃ ซโฅเ __________________ÿ
.endform

//------------------------------------------------------------------------------
//                                                                   PRINTWRK_02
//------------------------------------------------------------------------------
#declare BodyFooter02
.{?internal;(not First)
.fields
  SumStr2
.endfields
ศอออสออออออออออออสอออออออสอออออออออออสออออออออออสอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออฯอออออสอออออสอออออฯออออออสอออออฯออออออ^ผ
.begin
  Inc(LineCount);
  First := true;
end.
.}
#end

.linkform 'PrintWrk_02' prototype is 'PrintWrk'
.group 'withfond'
.nameinlist ' กฎ็จฉ โ กฅซ์ ฏฎ ฏฎคเ งคฅซฅญจ๏ฌ'
.fields
  CommonFormHeader Post wtPred wtBoss wtMonth wtYear
.endfields
ÿ^

                                                                " “โขฅเฆค ๎ "

                                                          ^  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                          ฤฤฤฤฤฤฤฤฤฤฤฤ / ^  /

                           ÿ’€… “—…’€ €—… ……
                                  ง   ^  &&&& ฃ.ÿ
#ProcessAbsences(5)
.{ //main cycle
.{ PrintWrk_Header checkenter
.{?internal; (LineCount + 16 > LinesPerPage)
#FormFeed
.}
.fields
  ฌ๏_ใเฎขญ๏_จฅเ เๅจจ
.endfields
ÿ^ÿ
.begin
  Inc(LineCount);
  PrintHeader := true;
end.
.} //PrintWrk_Header
.{ PrintWrk_Body checkenter
.begin
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
  BodyHeight := 0;
  while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0) do
  {
    Inc(BodyHeight);
    LogicSubStr(WorkerName, 12, true, true);
    LogicSubStr(WorkerPostName, 11, true, true);
  }
  // แ ใ็ฅโฎฌ เ งคฅซจโฅซ๏
  Inc(BodyHeight);
  if BodyHeight < 4
    BodyHeight := 4;
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
end.
.{?internal;(LineCount + BodyHeight + 1 > LinesPerPage)
#BodyFooter02
#FormFeed
.}
.{?internal;(PrintHeader)
.fields
  HeaderStr0
  if (AbsenceCount > 0, PadCh('บ',' ', AbsenceCount * 6), '')
  HeaderStr2
  Day1 Day2 Day3 Day4 Day5 Day6 Day7 Day8 Day9 Day10 Day11 Day12 Day13 Day14 Day15
  if (AbsenceCount > 0, PadCh('บ',' ', AbsenceCount * 6), '')
  HeaderStr3
  Day16 Day17 Day18 Day19 Day20 Day21 Day22 Day23 Day24 Day25 Day26 Day27 Day28 Day29 Day30 Day31
  HeaderStr4
.endfields
ÿษอออหออออออออออออหอออออออหอออออออออออหออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหอออออหออออออออออออหออออออออออออ^ป
บ   บ            บ       บ           บ          บ                                           —จแซ  ฌฅแ๏ๆ                                         บ ’“ บ            บ            ^บ
บ N บ            บ  ’ ก  บ คฎซฆญฎแโ์ บ  ชซ ค,  วฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤยฤฤฤฤฤถ     บ โเ กฎโ ญฎ บ”ฎญค ขเฅฌฅญจ^บ
บn/nบ   กฎโญจช  บ   N   บ(ฏเฎไฅแแจ๏)บ  โ เจไ   บ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  X  บ     บ            บ            ^บ
บ   บ            บ       บ           บ          วฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤถ     วฤฤฤฤฤยฤฤฤฤฤฤืฤฤฤฤฤยฤฤฤฤฤฤ^ถ
บ   บ            บ       บ           บ          บ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && ณ  && บ     บ คญฅฉณ ็ แฎขบ คญฅฉณ ็ แฎขบ^ÿ
.begin
  LineCount := LineCount + 6;
  PrintHeader := false;
  First := true;
end.
.}
.begin
  AbsenceStr0 := '';
end.
.{ PrintWrk_AbsenceData checkenter
.begin
  var Data: string;
  if AbsenceData = 0
    Data := Pad('', 5);
  else
    Data := LPad(string(AbsenceData), 5);
  AbsenceStr0 := if (AbsenceStr0 = '', 'บ' + Data, AbsenceStr0 + 'ณ' + Data);
end.
.}
.fields
  HeaderStr5
  wtNpp LogicSubStr(WorkerName, 12, true, true) wtTabN LogicSubStr(WorkerPostName, 11, true, true) wtSalary
  wtD01 wtD02 wtD03 wtD04 wtD05 wtD06 wtD07 wtD08 wtD09 wtD10 wtD11 wtD12 wtD13 wtD14 wtD15 wtMpf
  WorkingDays WorkingHours PlannedWorkingDays PlannedWorkingHours AbsenceStr0
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true) AbsenceStr1
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true)
  wtD16 wtD17 wtD18 wtD19  wtD20 wtD21 wtD22 wtD23 wtD24 wtD25 wtD26 wtD27 wtD28 wtD29 wtD30 wtD31
  AbsenceStr1
.endfields
ฬอออฮออออออออออออฮอออออออฮอออออออออออฮออออออออออฮอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออุอออออฮอออออฮอออออุออออออฮอออออุออออออ^น
บ&&&บ@@@@@@@@@@@@บ&&&&&&&บ@@@@@@@@@@@บ&#&&&&&.&&บ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ  X  บ &.&&บ   &#ณ&#&.&&บ   &#ณ&#&.&&^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          วฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤลฤฤฤฤฤถ     บ     ณ      บ     ณ      ^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&ณ&~.&&บ     บ     ณ      บ     ณ      ^บ
.begin
  LineCount := LineCount + 4;
  First := false;
 end.
.{ while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0)
.fields
  LogicSubStr(WorkerName, 12, true, true)
  LogicSubStr(WorkerPostName, 11, true, true)
  AbsenceStr1
.endfields
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     ณ     บ     บ     ณ      บ     ณ      ^บ
.begin Inc(LineCount) end.
.} // while
.} // PrintWrk_Body
#BodyFooter02
.{?internal; (LineCount + 3 > LinesPerPage)
#FormFeed
.}
.{ PrintWrk_Totals checkenter
.begin
  SumStr0 := '';
end.
.{ PrintWrk_AbsenceSum checkenter
.begin
  var Sum: string;
  if AbsenceSum = 0
    Sum := Pad('', 5);
  else
    Sum := LPad(string(AbsenceSum), 5);
  SumStr0 := if (SumStr0 = '', ' ' + Sum, SumStr0 + ' ' + Sum);
end.
.}
.begin
  GroupingLevelName := wtItPodr;
end.
.fields
  LogicSubStr(GroupingLevelName, 47, true, true):'t:-'
  WorkingDaysSum PlannedWorkingDaysSum SumStr0
  LogicSubStr(GroupingLevelName, 47, true, true)
  WorkingHoursSum PlannedWorkingHoursSum
.endfields
 ÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ คญฅฉ: _______________________________________________________________________________________        &&#&&        &&#&&^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ ็ แฎข:                                                                                           &#&&&&.&&    &#&&&&.&&ÿ

.begin LineCount := LineCount + 3 end.
.} //totals
.}  // main

.fields
  PageCount
.endfields
ฎซจ็ฅแโขฎ ซจแโฎข: &&&&&&&&&&
.if PrintWrk_yes_uo

“แซฎขญ๋ฅ ฎกฎงญ ็ฅญจ๏:
.{ PrintWrk_usl_uo
.fields
  udu
.endfields
 ^
.}
.end

 ’ กฅซ์้จช ________________  ็ ซ์ญจช __________________ โคฅซ ช คเฎข _________________ ’ __________________ ใๅฃ ซโฅเ __________________ÿ
.endform


//------------------------------------------------------------------------------
//
//------------------------------------------------------------------------------
#declare BodyFooter03
.{?internal;(not First)
.fields
  SumStr2
.endfields
ศอออสออออออออออออสอออออออสอออออออออออสออออออออออสออฯออฯออฯออฯออฯออฯออฯออฯออฯออฯออฯออฯออฯออฯออฯออสออออสอออออฯออออออสอออออออฯอออออออ^ผ
.begin
  Inc(LineCount);
  First := true;
end.
.}
#end
.linkform 'PrintWrk_03' prototype is 'PrintWrk'
.group 'withevnnochn_condenced'
.NameInList ' กฎ็จฉ โ กฅซ์ ฏฎ ฏฎคเ งคฅซฅญจ๏ฌ แ คฎฏ. ขเฅฌฅญฅฌ (ใฏซฎโญฅญญ๋ฉ)'
.fields
  CommonFormHeader Post wtPred wtBoss wtMonth wtYear
.endfields
ÿ^

                                                                " “โขฅเฆค ๎ "

                                                          ^  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

                                                          ฤฤฤฤฤฤฤฤฤฤฤฤ / ^  /

                           ÿ’€… “—…’€ €—… ……
                                  ง   ^  &&&& ฃ.ÿ
#ProcessAbsences(5)
.{ //main cycle
.{ PrintWrk_Header checkenter
.{?internal; (LineCount + 16 > LinesPerPage)
#FormFeed
.}
.fields
  ฌ๏_ใเฎขญ๏_จฅเ เๅจจ
.endfields
ÿ^ÿ
.begin
  Inc(LineCount);
  PrintHeader := true;
end.
.} //PrintWrk_Header
.{ PrintWrk_Body checkenter
.begin
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
  BodyHeight := 0;
  while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0) do
  {
    Inc(BodyHeight);
    LogicSubStr(WorkerName, 12, true, true);
    LogicSubStr(WorkerPostName, 11, true, true);
  }
  // แ ใ็ฅโฎฌ เ งคฅซจโฅซ๏
  Inc(BodyHeight);
  if BodyHeight < 4
    BodyHeight := 4;
  WorkerName := wtFIO;
  WorkerPostName := wtPost;
end.
.{?internal;(LineCount + BodyHeight + 1 > LinesPerPage)
#BodyFooter03
#FormFeed
.}
.{?internal;(PrintHeader)
.fields
  HeaderStr0
  if (AbsenceCount > 0, PadCh('บ',' ', AbsenceCount * 6), '')
  HeaderStr2
  Day1 Day2 Day3 Day4 Day5 Day6 Day7 Day8 Day9 Day10 Day11 Day12 Day13 Day14 Day15
  if (AbsenceCount > 0, PadCh('บ',' ', AbsenceCount * 6), '')
  HeaderStr3
  Day16 Day17 Day18 Day19 Day20 Day21 Day22 Day23 Day24 Day25 Day26 Day27 Day28 Day29 Day30 Day31
  HeaderStr4
.endfields
ÿษอออหออออออออออออหอออออออหอออออออออออหออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออหออออหออออออออออออหอออออออออออออออ^ป
บ   บ            บ       บ           บ          บ                 —จแซ  ฌฅแ๏ๆ                   บ ’“บ            บ               ^บ
บ N บ            บ  ’ ก  บ คฎซฆญฎแโ์ บ  ชซ ค,  วฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤยฤฤถ    บ โเ กฎโ ญฎ บ  ง ญจๅ ็ แฎข ^บ
บn/nบ   กฎโญจช  บ   N   บ(ฏเฎไฅแแจ๏)บ  โ เจไ   บ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณX บ    บ            บ               ^บ
บ   บ            บ       บ           บ          วฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤถ    วฤฤฤฤฤยฤฤฤฤฤฤืฤฤฤฤฤฤฤยฤฤฤฤฤฤฤ^ถ
บ   บ            บ       บ           บ          บ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&บ    บ คญฅฉณ ็ แฎขบขฅ็ฅเญ.ณ ญฎ็ญ๋ๅบ^ÿ
.begin
  LineCount := LineCount + 6;
  PrintHeader := false;
  First := true;
end.
.}
.begin
  AbsenceStr0 := '';
end.
.{ PrintWrk_AbsenceData checkenter
.begin
  var Data: string;
  if AbsenceData = 0
    Data := Pad('', 5);
  else
    Data := LPad(string(AbsenceData), 5);
  AbsenceStr0 := if (AbsenceStr0 = '', 'บ' + Data, AbsenceStr0 + 'ณ' + Data);
end.
.}
.fields
  HeaderStr5
  wtNpp LogicSubStr(WorkerName, 12, true, true) wtTabN LogicSubStr(WorkerPostName, 11, true, true) wtSalary
  wtD01 wtD02 wtD03 wtD04 wtD05 wtD06 wtD07 wtD08 wtD09 wtD10 wtD11 wtD12 wtD13 wtD14 wtD15 wtMpf
  WorkingDays WorkingHours EveningHours NightHours AbsenceStr0
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true) AbsenceStr1
  LogicSubStr(WorkerName, 12, true, true) LogicSubStr(WorkerPostName, 11, true, true)
  wtD16 wtD17 wtD18 wtD19  wtD20 wtD21 wtD22 wtD23 wtD24 wtD25 wtD26 wtD27 wtD28 wtD29 wtD30 wtD31
  AbsenceStr1
.endfields
ฬอออฮออออออออออออฮอออออออฮอออออออออออฮออออออออออฮออุออุออุออุออุออุออุออุออุออุออุออุออุออุออุออฮออออฮอออออุออออออฮอออออออุอออออออ^น
บ&&&บ@@@@@@@@@@@@บ&&&&&&&บ@@@@@@@@@@@บ&#&&&&&.&&บ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณX บ&.&&บ   &#ณ&#&.&&บ &#&.&&ณ &#&.&&^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          วฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤลฤฤถ    บ     ณ      บ       ณ       ^บ
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&ณ&&บ    บ     ณ      บ       ณ       ^บ
.begin
  LineCount := LineCount + 4;
  First := false;
 end.
.{ while (Length(WorkerName) > 0) or (Length(WorkerPostName) > 0)
.fields
  LogicSubStr(WorkerName, 12, true, true)
  LogicSubStr(WorkerPostName, 11, true, true)
  AbsenceStr1
.endfields
บ   บ@@@@@@@@@@@@บ       บ@@@@@@@@@@@บ          บ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  ณ  บ    บ     ณ      บ       ณ       ^บ
.begin Inc(LineCount) end.
.} // while
.} // PrintWrk_Body
#BodyFooter03
.{?internal; (LineCount + 3 > LinesPerPage)
#FormFeed
.}
.{ PrintWrk_Totals checkenter
.begin
  SumStr0 := '';
end.
.{ PrintWrk_AbsenceSum checkenter
.begin
  var Sum: string;
  if AbsenceSum = 0
    Sum := Pad('', 5);
  else
    Sum := LPad(string(AbsenceSum), 5);
  SumStr0 := if (SumStr0 = '', ' ' + Sum, SumStr0 + ' ' + Sum);
end.
.}
.begin
  GroupingLevelName := wtItPodr;
end.
.fields
  LogicSubStr(GroupingLevelName, 47, true, true):'t:-'
  WorkingDaysSum  SumStr0
  LogicSubStr(GroupingLevelName, 47, true, true)
  WorkingHoursSum EveningHoursSum NightHoursSum
.endfields
ÿ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ คญฅฉ: ______________________________________        &&#&&                ^
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  กฎ็จๅ ็ แฎข:                                          &#&&&&.&& &#&&.&& &#&&.&&ÿ

.begin LineCount := LineCount + 3 end.
.} //totals
.}  // main

.fields
  PageCount
.endfields
ฎซจ็ฅแโขฎ ซจแโฎข: &&&&&&&&&&
.if PrintWrk_yes_uo

“แซฎขญ๋ฅ ฎกฎงญ ็ฅญจ๏:
.{ PrintWrk_usl_uo
.fields
  udu
.endfields
 ^
.}
.end

 ’ กฅซ์้จช ________________  ็ ซ์ญจช __________________ โคฅซ ช คเฎข _________________ ’ __________________ ใๅฃ ซโฅเ __________________ÿ
.endform