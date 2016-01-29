#doc
¥¥áâà ­ ª« ¤­ëå
#end
.set Name =  'ReestrNakl'
.hide
.fields

  Header1
  Header2

  KatSoprNrec : comp

  DateSopr
  NumSopr

  OrgName
  sPrim

  SumRub      : double
  SumVal      : double

  ValSmb

  SpSoprNrec  : comp

.endfields
^ ^
.{
^
^ ^
^
^
^ ^
^
.{
^
.}
.}
.endform


#doc
¥¥áâà
#end
.linkform '¥¥áâà' prototype is 'ReestrNakl'
.var
  ItogoRub : double;
  ItogoVal : double;
.endvar
#include format.frn
.fields
  CommonFormHeader
  Header1
  Header2
.endfields
.begin
  ItogoRub := 0;
  ItogoVal := 0;
end.
 ^


                                         ÿ^ÿ


 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄ
                        ³                                  ³                 ˆâ®£®                 ³
      „ â  ¨ ­®¬¥à      ³        @~@@@@@@@@@@@@@@          ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ³   ‚ «îâ 
       ¤®ªã¬¥­â         ³                                  ³       ¢ „…       ³     ¢  ¢ «îâ¥     ³
                        ³                                  ³                   ³     ¤®ªã¬¥­â      ³
 ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄ
.fields
  DateSopr
  NumSopr
  OrgName
  DoubleToStr(SumRub, Cena_PrR)
  DoubleToStr(SumVal, Cena_Pr) 
  ValSmb
.endfields
.{
@@@@@@@@@@  @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   &#'&&&&&&&&&&&&&&   &#'&&&&&&&&&&&&&&    @@@@@@@@@
.{
.}
.begin
  ItogoRub += SumRub;
  ItogoVal += SumVal;
end.
.}
.fields
  DoubleToStr(ItogoRub, Cena_PrR) 
  DoubleToStr(ItogoVal, Cena_Pr) 
.endfields

  ÿˆ’ƒ                                                      &#'&&&&&&&&&&&&&&   &#'&&&&&&&&&&&&&&ÿ

.endform
