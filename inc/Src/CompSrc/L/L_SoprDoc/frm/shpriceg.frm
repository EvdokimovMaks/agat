//******************************************************************************
//                                                      (c) ╙╝Ю╞╝Ю═Ф╗О ┐═╚═╙Б╗╙═
// ┐═╚═╙Б╗╙═ 7.12 - ▀╝ё╗АБ╗╙═
// ▌║╝║И╔╜╜К╘ ╞Ю╝Б╝╙╝╚ Д╝Ю╛╗Ю╝╒═╜╗О Ф╔╜К
//******************************************************************************

#doc
▌║╝║И╔╜╜К╘ ╞Ю╝Б╝╙╝╚ Д╝Ю╛╗Ю╝╒═╜╗О Ф╔╜К
#end
.Set name = 'ShPriceG'
.Hide
#include format2.frn
.fields
  KatSoprNRec
  KatSoprNoDoc
  KatSoprDDoc : date
  KatOrgName
  KatOrgUNN
  KatOrgAddr
  KatOrgPostAddr

  ValSym

  Npp
  MCName
  MCKod
  EdName

  SpKol       : double
  SpPrice     : double
  SpSumm      : double
  SopUsl      : double
  SopUslNal   : double
  SopOther    : double
  SopOtherNal : double
  NalNDS      : double
  NalAkcis    : double
  NalProd     : double
  NalAllOther : double
  SumNalItogo : double
  SumTotal    : double
.endfields
^ ^ ^
^ ^ ^ ^
^
.{
^ ^ ^ ^
^ ^
^
^ ^
^ ^
^ ^ ^ ^
^ ^
.}
.endform

//******************************************************************************

#doc
▌║╝║И╔╜╜К╘ ╞Ю╝Б╝╙╝╚ Д╝Ю╛╗Ю╝╒═╜╗О Ф╔╜К
#end
.LinkForm 'ShPriceG_1' prototype is 'ShPriceG'
.NameInlist '▌║╝║И╔╜╜К╘ ╞Ю╝Б╝╙╝╚ Д╝Ю╛╗Ю╝╒═╜╗О Ф╔╜К'
.Defo landscape
.P 55
.Set Filler ='-'
.fields
  CommonFormHeader
.endfields
^
.var
  lItog7, lItog8, lItog9, lItog10, lItog11, lItog12, lItog13, lItog14, lItog15, lItog16, lItog17 : double;
  aItog7, aItog8, aItog9, aItog10, aItog11, aItog12, aItog13, aItog14, aItog15, aItog16, aItog17 : double;
.endvar
.fields
  '▐░▌▓▌┼▌▀ ■▌░▄┬░▌┌─█┬÷ √┘█'
  '╞╝ А╞╔Ф╗Д╗╙═Ф╗╗ ╜═╙╚═╓╜╝╘ Э ' + KatSoprNoDoc + ' ╝Б ' +  DateToStr(KatSoprDDoc, 'DD mon YYYY')
  KatOrgName + ', ' + KatOrgPostAddr
.endfields


Ъ≥@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@



▌Юё═╜╗╖═Ф╗О: @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ъ≥
.begin
  lItog7  := 0.0;
  lItog8  := 0.0;
  lItog9  := 0.0;
  lItog10 := 0.0;
  lItog11 := 0.0;
  lItog12 := 0.0;
  lItog13 := 0.0;
  lItog14 := 0.0;
  lItog15 := 0.0;
  lItog16 := 0.0;
  lItog17 := 0.0;

  aItog7  := 0.0;
  aItog8  := 0.0;
  aItog9  := 0.0;
  aItog10 := 0.0;
  aItog11 := 0.0;
  aItog12 := 0.0;
  aItog13 := 0.0;
  aItog14 := 0.0;
  aItog15 := 0.0;
  aItog16 := 0.0;
  aItog17 := 0.0;
end.
.{
.[h
.begin
  lItog7  := 0.0;
  lItog8  := 0.0;
  lItog9  := 0.0;
  lItog10 := 0.0;
  lItog11 := 0.0;
  lItog12 := 0.0;
  lItog13 := 0.0;
  lItog14 := 0.0;
  lItog15 := 0.0;
  lItog16 := 0.0;
  lItog17 := 0.0;
end.
.fields
  ValSym
  ValSym
  ValSym
  ValSym
  ValSym
  ValSym
  ValSym
  ValSym
  ValSym
.endfields
Ъ≤здддбддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддбддддддддддбддддддддддбддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддбддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддд©
Ё   Ё                       ▓╝╒═Ю                          Ё         Ё          Ё          Ё              Ё       ▒╝╞ЦБАБ╒ЦНИ╗╔ ЦА╚Цё╗, @~@@@@@@@@@       Ё                     █═╚╝ё╗ ╞╝ ▄√                       Ё              Ё
Ё Э цддддддддддддддддддддддддддддддддддддддддбддддддддддддд╢ ┘╓╗╜╗Ф═ Ё          Ё          Ё              цдддддддддддддддддддддддбдддддддддддддддддддддддеддддддддддбддддддддддбддддддддддбддддддддддбдддддддддддд╢              Ё
Ё╞/╞Ё             █═╗╛╔╜╝╒═╜╗╔               Ё     ┼╝╓     Ё╗╖╛╔Ю╔╜╗ОЁ┼╝╚╗Г╔АБ╒╝Ё   √╔╜═,  Ё    ▒Ц╛╛═,    Ё ╝А╜╝╒╜╝ё╝ ╙╝╜БЮ═ё╔╜Б═ Ё  ╓ЮЦё╝ё╝ ╙╝╜БЮ═ё╔╜Б═  Ё   █└▒,   Ё  ─╙Ф╗╖,  Ё   █═╚╝ё  Ё▌АБ═╚Л╜К╔ Ё    ┬Б╝ё╝,  Ё    ▒Ц╛╛═,    Ё
Ё   Ё                                        Ё             Ё         Ё          Ё@~@@@@@@@@Ё@~@@@@@@@@@@@@цддддддддддддбддддддддддеддддддддддддбдддддддддд╢@~@@@@@@@@Ё@~@@@@@@@@Ё c ╞Ю╝╓═╕,Ё  ╜═╚╝ё╗, Ё@~@@@@@@@@@@Ё@~@@@@@@@@@@@@Ё
Ё   Ё                                        Ё             Ё         Ё          Ё          Ё              Ё   ▒Ц╛╛═    Ё  █═╚╝ё╗  Ё   ▒Ц╛╛═    Ё  █═╚╝ё╗  Ё          Ё          Ё@~@@@@@@@@Ё@~@@@@@@@@Ё            Ё              Ё
цдддеддддддддддддддддддддддддддддддддддддддддедддддддддддддедддддддддеддддддддддеддддддддддеддддддддддддддеддддддддддддеддддддддддеддддддддддддеддддддддддеддддддддддеддддддддддеддддддддддеддддддддддеддддддддддддедддддддддддддд╢
Ё 1 Ё                   2                    Ё      3      Ё    4    Ё    5     Ё    6     Ё      7       Ё     8      Ё     9    Ё     10     Ё   11     Ё    12    Ё    13    Ё    14    Ё    15    Ё     16     Ё      17      Ё
цдддеддддддддддддддддддддддддддддддддддддддддедддддддддддддедддддддддеддддддддддеддддддддддеддддддддддддддеддддддддддддеддддддддддеддддддддддддеддддддддддеддддддддддеддддддддддеддддддддддеддддддддддеддддддддддддедддддддддддддд╢Ъ≤
.]h
.begin
  lItog7  := lItog7  + SpSumm;
  lItog8  := lItog8  + SopUsl;
  lItog9  := lItog9  + SopUslNal;
  lItog10 := lItog10 + SopOther;
  lItog11 := lItog11 + SopOtherNal;
  lItog12 := lItog12 + NalNDS;
  lItog13 := lItog13 + NalAkcis;
  lItog14 := lItog14 + NalProd;
  lItog15 := lItog15 + NalAllOther;
  lItog16 := lItog16 + SumNalItogo;
  lItog17 := lItog17 + SumTotal;

  aItog7  := aItog7  + SpSumm;
  aItog8  := aItog8  + SopUsl;
  aItog9  := aItog9  + SopUslNal;
  aItog10 := aItog10 + SopOther;
  aItog11 := aItog11 + SopOtherNal;
  aItog12 := aItog12 + NalNDS;
  aItog13 := aItog13 + NalAkcis;
  aItog14 := aItog14 + NalProd;
  aItog15 := aItog15 + NalAllOther;
  aItog16 := aItog16 + SumNalItogo;
  aItog17 := aItog17 + SumTotal;
end.
.fields
  Npp
  MCName
  MCKod
  EdName

  DoubleToStr(SpKol, Kol_Pr)
  DoubleToStr(SpPrice, Cena_Pr)

  DoubleToStr(SpSumm, Cena_Pr)

  DoubleToStr(SopUsl, Cena_Pr)
  DoubleToStr(SopUslNal, Cena_Pr)

  DoubleToStr(SopOther, Cena_Pr)
  DoubleToStr(SopOtherNal, Cena_Pr)

  DoubleToStr(NalNDS, Cena_Pr)
  DoubleToStr(NalAkcis, Cena_Pr)
  DoubleToStr(NalProd, Cena_Pr)
  DoubleToStr(NalAllOther, Cena_Pr)

  DoubleToStr(SumNalItogo, Cena_Pr)
  DoubleToStr(SumTotal, Cena_Pr)

.endfields
Ъ≤Ё&&&Ё@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Ё&&&&&&&&&&&&&Ё@~@@@@@@@Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&&&&&ЁЪ≤
.[f
.fields
  DoubleToStr(lItog7,  Cena_Pr)
  DoubleToStr(lItog8,  Cena_Pr)
  DoubleToStr(lItog9,  Cena_Pr)
  DoubleToStr(lItog10, Cena_Pr)
  DoubleToStr(lItog11, Cena_Pr)
  DoubleToStr(lItog12, Cena_Pr)
  DoubleToStr(lItog13, Cena_Pr)
  DoubleToStr(lItog14, Cena_Pr)
  DoubleToStr(lItog15, Cena_Pr)
  DoubleToStr(lItog16, Cena_Pr)
  DoubleToStr(lItog17, Cena_Pr)
.endfields
Ъ≤юдддаддддддддддддддддддддддддддддддддддддддддадддддддддддддадддддддддаддддддддддаддддддддддеддддддддддддддеддддддддддддеддддддддддеддддддддддддеддддддддддеддддддддддеддддддддддеддддддддддеддддддддддеддддддддддддеддддддддддддддЁЪ≤
Ъ≤                                                                                           Ё&#'&&&&&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&&&&&ЁЪ≤
Ъ≤                                                                                           юддддддддддддддаддддддддддддаддддддддддаддддддддддддаддддддддддаддддддддддаддддддддддаддддддддддаддддддддддаддддддддддддаддддддддддддддыЪ≤
.]f
.}
.fields
  DoubleToStr(aItog7,  Cena_Pr)
  DoubleToStr(aItog8,  Cena_Pr)
  DoubleToStr(aItog9,  Cena_Pr)
  DoubleToStr(aItog10, Cena_Pr)
  DoubleToStr(aItog11, Cena_Pr)
  DoubleToStr(aItog12, Cena_Pr)
  DoubleToStr(aItog13, Cena_Pr)
  DoubleToStr(aItog14, Cena_Pr)
  DoubleToStr(aItog15, Cena_Pr)
  DoubleToStr(aItog16, Cena_Pr)
  DoubleToStr(aItog17, Cena_Pr)
.endfields
Ъ≤                                                                                           зддддддддддддддбддддддддддддбддддддддддбддддддддддддбддддддддддбддддддддддбддддддддддбддддддддддбддддддддддбддддддддддддбдддддддддддддд©Ъ≤
Ъ≤                                                                                           Ё&#'&&&&&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&Ё&#'&&&&&&&&&Ё&#'&&&&&&&&&&&ЁЪ≤
Ъ≤                                                                                           юддддддддддддддаддддддддддддаддддддддддаддддддддддддаддддддддддаддддддддддаддддддддддаддддддддддаддддддддддаддддддддддддаддддддддддддддыЪ≤
.endform
