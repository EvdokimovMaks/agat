//******************************************************************************
//                                                      (แ) ชฎเฏฎเ ๆจ๏  ซ ชโจช 
//  ซ ชโจช  7.12 -  เ กฎโญ ๏ ฏซ โ 
//******************************************************************************

#doc
  ’ กฅซ์ ใ็ฅโ  จแฏฎซ์งฎข ญจ๏ เ กฎ็ฅฃฎ ขเฅฌฅญจ จ เ แ็ฅโ  ง เ กฎโญฎฉ ฏซ โ๋
  (’จฏฎข ๏ ไฎเฌ  ü ’-12, 3-๏ แโเ ญจๆ ).
#end
.form 'UnifiedFormT12_ThirdPage'
.hide
.fields
  LinesPerPage: integer
  ‘โเใชโใเญฎฅ_ฏฎคเ งคฅซฅญจฅ
  ChargeCode1 ChargeName1
  ChargeCode2 ChargeName2
  ChargeCode3 ChargeName3
  ChargeCode4 ChargeName4
  ChargeCode5 ChargeName5

  TabN
  Tariff: double
  Category
  PostName
  PostCode
  WorkCond
  Razr
  Account1 Sum1 HD1 Sum2 HD2 Sum3 HD3 Sum4 HD4 Sum5 Percent
  ChargeCode6 Account6 Sum6 HD6

.endfields
 ^^
 ^^
 ^^
 ^^
 ^^
 ^^
.{ tabt12_3 checkenter
 ^^^^^^^ ^^^ ^^ ^^ ^^ ^^ ^^^^
.} //tabt12_3l
.endForm

.linkform 'UnifiedFormT12_ThirdPage_link' prototype is 'UnifiedFormT12_ThirdPage'
.group '’12'
.nameinlist '3-๏ แโเ ญจๆ '
.var
  FirstLine:        boolean;
  LineCount:        integer;
  LastTabN:         string;
  Beginning:        boolean;
  DelimiterNeeded:  boolean;
  ChargeName1Str:   string;
  ChargeName2Str:   string;
  ChargeName3Str:   string;
  ChargeName4Str:   string;
  ChargeName5Str:   string;

  Account1Str:      string;
  Account6Str:      string;

  HD1Str:           string;
  HD2Str:           string;
  HD3Str:           string;
  HD4Str:           string;
  HD6Str:           string;
  StartPage:        integer;
  PageNum:          integer;
  TabNStr:          string;
.endvar
.begin
  ChargeName1Str := ChargeName1;
  ChargeName2Str := ChargeName2;
  ChargeName3Str := ChargeName3;
  ChargeName4Str := ChargeName4;
  ChargeName5Str := ChargeName5;
  ReadMyDsk(StartPage, 'Vedt12fc_StartPage', false);
  PageNum := StartPage;
  LineCount := 0;
end.
ÿ.{?internal;(StartPage > 0);
.fields
  pagenum
.endfields
                                                                                                                                                                                                                        จแโ &&
.begin
  LineCount := LineCount+1;
  PageNum := PageNum + 1;
end.
.}
.fields
  ChargeCode1
  ChargeCode2
  ChargeCode3
  ChargeCode4
  ChargeCode5
  LogicSubStr(ChargeName1Str, 17, true, true)
  LogicSubStr(ChargeName2Str, 17, true, true)
  LogicSubStr(ChargeName3Str, 17, true, true)
  LogicSubStr(ChargeName4Str, 17, true, true)
  LogicSubStr(ChargeName5Str, 17, true, true)
.endfields
2.  แ็ฅโ แ ฏฅเแฎญ ซฎฌ ฏฎ ฎฏซ โฅ โเใค                                                                                                                                                                 3-๏ แโเ ญจๆ  ไฎเฌ๋ N ’-12
ษออออออออออหอออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออหออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ’ กฅซ์ญ๋ฉ บ’ เจไญ ๏   บ                                                            จค ฎฏซ โ๋                                                                         บ                      เฎ็จฅ                          บ
บญฎฌฅเ     บแโ ขช      วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤืฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤถ
บ          บ(็ แฎข ๏,  บ                                       ชฎคณ@@@@ณ               ชฎคณ@@@@ณ               ชฎคณ@@@@ณ               ชฎคณ@@@@ณ               ชฎคณ@@@@บขจค   ณชฎเเฅแฏฎญคจเใ๎้จฉ แ็ฅโ ณ   แใฌฌ ,    ณ  ็ แ๋   บ
บ          บคญฅขญ ๏),  บÿ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ÿ ภฤฤฤฤดÿ@@@@@@@@@@@@@@@@@ÿ ภฤฤฤฤดÿ@@@@@@@@@@@@@@@@@ÿ ภฤฤฤฤดÿ@@@@@@@@@@@@@@@@@ÿ ภฤฤฤฤดÿ@@@@@@@@@@@@@@@@@ÿ ภฤฤฤฤถฎฏซ โ๋ณ                       ณ    เใก.     ณ  (คญจ)  บ
บ          บ(ฎชซ ค)    บ              ญ จฌฅญฎข ญจฅ                     ณ  ญ จฌฅญฎข ญจฅ         ณ  ญ จฌฅญฎข ญจฅ         ณ  ญ จฌฅญฎข ญจฅ         ณ  ญ จฌฅญฎข ญจฅ         บ      ณ                       ณ             ณ         บ
บ          บเใก.       วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ      ณ                       ณ             ณ         บ
บ          บ           บ                                                       ชฎเเฅแฏฎญคจเใ๎้จฉ แ็ฅโ                                                                  บ      ณ                       ณ             ณ         บ
บ          บ           วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ      ณ                       ณ             ณ         บ
บ          บ           บ                       ณ                       ณ                       ณ                       ณ                       ณ                       บ      ณ                       ณ             ณ         บ
บ          บ           วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤถ      ณ                       ณ             ณ         บ
บ          บ           บชฎเเฅแฏฎญคจเใ๎้จฉ แ็ฅโ ณ   แใฌฌ ,    ณ  ็ แ๋   ณ   แใฌฌ ,    ณ  ็ แ๋   ณ   แใฌฌ ,    ณ  ็ แ๋   ณ   แใฌฌ ,    ณ  ็ แ๋   ณ   แใฌฌ ,    ณ ฏเฎๆฅญโ บ      ณ                       ณ             ณ         บ
บ          บ           บ                       ณ    เใก.     ณ  (คญจ)  ณ    เใก.     ณ  (คญจ)  ณ    เใก.     ณ  (คญจ)  ณ    เใก.     ณ  (คญจ)  ณ    เใก.     ณ         บ      ณ                       ณ             ณ         บ
วฤฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤถ
บ   18     บ    19     บ           20          ณ      21     ณ    22   ณ     23      ณ    24   ณ      25     ณ    26   ณ     27      ณ    28   ณ     29      ณ    30   บ  31  ณ          32           ณ      33     ณ    34   บ
ฬออออออออออฮอออออออออออฮอออออออออออออออออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออฮออออออุอออออออออออออออออออออออุอออออออออออออุอออออออออน
.begin
  FirstLine := true;
  LineCount := LineCount + 17;
end.
.{ tabt12_3 checkenter
.begin
  Beginning := true;
  Account1Str := Account1;
  Account6Str := Account6;
  TabNStr := TabN;

  HD1Str := HD1;
  HD2Str := HD2;
  HD3Str := HD3;
  HD4Str := HD4;
  HD6Str := HD6;
end.
.{ while (length(Account1Str) > 0) or (length(HD1Str) > 0) or (length(HD2Str) > 0) or (length(HD3Str) > 0) or (length(HD4Str) > 0) or (length(Account6Str) > 0) or (length(HD6Str) > 0) or ((length(TabNStr) > 0) and (TabN <> TabNStr))
.begin
  // ญใฆญฎ ซจ เ แฏฅ็ โ โ์ เ งคฅซจโฅซ์ ฌฅฆคใ ค ญญ๋ฌจ ฏฎ คขใฌ โ กฅซ์ญ๋ฌ ญฎฌฅเ ฌ
  DelimiterNeeded := not FirstLine and (TabN <> LastTabN)
end.
! ญใฆญฎ เ แฏฅ็ โ โ์ เ งคฅซจโฅซ์ จ ฅแโ์ ฌฅแโฎ ญ  แโเ ญจๆฅ คซ๏ คซ๏ ญฅฃฎ จ ฎคญฎฉ
! แโเฎชจ แ ค ญญ๋ฌจ (ฏฎแซฅคญ๎๎ แโเฎชใ ง ญจฌ ฅโ ฏฎคญฎฆจฅ)
.{?internal; DelimiterNeeded and (LineCount < LinesPerPage - 2)
วฤฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤืฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤถ
.begin
  LineCount := LineCount + 1;
  // ญ ฏฅ็ โ ซจ จ ง ก๋ซจ
  DelimiterNeeded := false;
end.
.}
.begin
  LineCount := LineCount + 1;
end.
! ญฅโ ฌฅแโ  คซ๏ ฏฅ็ โจ ค ฆฅ ฎคญฎฉ แโเฎชจ ค ญญ๋ๅ, ซจกฎ ญฅ ๅข โ ฅโ ฌฅแโ  คซ๏
! เ งคฅซจโฅซ๏ จ แโเฎชจ แ ค ญญ๋ฌจ
.{?internal;(LineCount >= LinesPerPage) or DelimiterNeeded and (LineCount >= LinesPerPage - 1)
ศออออออออออสอออออออออออสอออออออออออออออออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออสออออออฯอออออออออออออออออออออออฯอออออออออออออออออออออออผ
.{ while (LineCount < LinesPerPage)

.begin
  LineCount := LineCount + 1;
end.
.}
.begin
LineCount:=0;
end.
.{?internal;(StartPage > 0);
.fields
  pagenum
.endfields
                                                                                                                                                                                                                        จแโ &&
.begin
  LineCount := LineCount+1;
  PageNum := PageNum + 1;
end.
.}
ษออออออออออหอออออออออออหอออออออออออออออออออออออัอออออออออออออัอออออออออัอออออออออออออัอออออออออัอออออออออออออัอออออออออัอออออออออออออัอออออออออัอออออออออออออัอออออออออหออออออัอออออออออออออออออออออออัอออออออออออออัอออออออออป
บ   18     บ    19     บ           20          ณ      21     ณ    22   ณ     23      ณ    24   ณ      25     ณ    26   ณ     27      ณ    28   ณ     29      ณ    30   บ  31  ณ          32           ณ      33     ณ    34   บ
ฬออออออออออฮอออออออออออฮอออออออออออออออออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออุอออออออออออออุอออออออออฮออออออุอออออออออออออออออออออออุอออออออออออออุอออออออออน
.begin
  FirstLine := true;
  LineCount := LineCount + 4;
end.
.}
.{?internal;Beginning
.fields
  if (TabN = LastTabN, '', LogicSubStr(TabNStr, 10, true, true))
  if (TabN = LastTabN, '', string(Tariff))
  LogicSubStr(Account1Str, 23, true, true)
  Sum1
  LogicSubStr(HD1Str, 9, true, true)
  Sum2
  LogicSubStr(HD2Str, 9, true, true)
  Sum3
  LogicSubStr(HD3Str, 9, true, true)
  Sum4
  LogicSubStr(HD4Str, 9, true, true)
  Sum5
  Percent
  ChargeCode6
  LogicSubStr(Account6Str, 23, true, true)
  Sum6
  LogicSubStr(HD6Str, 9, true, true)
.endfields
บ@@@@@@@@@@บ@@@@@@@@@@@บ@@@@@@@@@@@@@@@@@@@@@@@ณ&#&&&&&&&&.&&ณ@@@@@@@@@ณ&#&&&&&&&&.&&ณ@@@@@@@@@ณ&#&&&&&&&&.&&ณ@@@@@@@@@ณ&#&&&&&&&&.&&ณ@@@@@@@@@ณ&#&&&&&&&&.&&ณ&#&&&&.&&บ@@@@@@ณ@@@@@@@@@@@@@@@@@@@@@@@ณ&#&&&&&&&&.&&ณ@@@@@@@@@บ
.}
.{?internal;not Beginning
.fields
  if (TabNStr = TabN, '', LogicSubStr(TabNStr, 10, true, true))
  LogicSubStr(Account1Str, 23, true, true)
  LogicSubStr(HD1Str, 9, true, true)
  LogicSubStr(HD2Str, 9, true, true)
  LogicSubStr(HD3Str, 9, true, true)
  LogicSubStr(HD4Str, 9, true, true)
  LogicSubStr(Account6Str, 23, true, true)
  LogicSubStr(HD6Str, 9, true, true)
.endfields
บ@@@@@@@@@@บ           บ@@@@@@@@@@@@@@@@@@@@@@@ณ             ณ@@@@@@@@@ณ             ณ@@@@@@@@@ณ             ณ@@@@@@@@@ณ             ณ@@@@@@@@@ณ             ณ         บ      ณ@@@@@@@@@@@@@@@@@@@@@@@ณ             ณ@@@@@@@@@บ
.}
.begin
  LastTabN := TabN;
  FirstLine := false;
  Beginning := false;
end.
.}
.} //tabt12_3
ศออออออออออสอออออออออออสอออออออออออออออออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออฯอออออออออออออฯอออออออออสออออออฯอออออออออออออออออออออออฯอออออออออออออฯอออออออออผÿ
.endform
