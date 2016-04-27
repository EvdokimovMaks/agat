/*
 ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
 บ                     (c) 1994,97 ชฎเฏฎเ ๆจ๏ €€’€                      บ
 บ เฎฅชโ        : €€’€                                                 บ
 บ ‘จแโฅฌ        :  เ กฎโญ ๏ ฏซ โ                                           บ
 บ ฅเแจ๏        : 5.00                                                      บ
 บ  งญ ็ฅญจฅ    : ‘ฎฎก้ฅญจ๏                                                 บ
 บ โขฅโแโขฅญญ๋ฉ :  แจซฅขแช ๏ €ญญ  ๏็ฅแซ ขฎขญ                              บ
 ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
*/
#doc
‘ฎฎก้ฅญจ๏
#end
.form Error
.hide
.fields
  Data
.endfields
.{
^
.}
.endform


.linkform ErrorOut prototype is 'Error'
.var
  ADate: Date
  ATime: Time
  AUser: string
.endvar
.begin
  ADate := Cur_Date;
  ATime := Cur_Time;
  AUser := UserName;
end.
.fields
  ADate
  ATime
  Data
.endfields
ÿเฎโฎชฎซ แฎฎก้ฅญจฉÿ                                              @@@@@@@@@@ @@@@@
--------------------------------------------------------------------------------
.{
^
.}
.[f
.fields
  ADate
  ATime
.endfields
.begin
  ADate := Cur_Date;
  ATime := Cur_Time;
end.
--------------------------------------------------------------------------------
                                                                @@@@@@@@@@ @@@@@
.]f
.endform