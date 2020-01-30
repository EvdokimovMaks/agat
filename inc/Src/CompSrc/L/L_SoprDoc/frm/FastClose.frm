.set name='fastclose'
.hide
.fields
  RecSrc    : comp
  NumSrc
  DateSrc   : date
  DateOprSrc: date
  SummSrc   : double
  DescrSrc
  NotesSrc
  RecSN     : comp
  NumSN
  DateSN    : date
  DateOprSN : date
  SummSN    : double
  DescrSN
  RecKN     : comp
  NumKN
  DateKN    : date
  DateOprKN : date
  SummKN    : double
  DescrKN
  NotesKN
.endfields
.{
 ^ ^ ^ ^ ^ ^ ^
 ^ ^ ^ ^ ^ ^
 ^ ^ ^ ^ ^ ^ ^
.}
.endform


.linkform 'fastclose_01' prototype is fastclose
.nameinlist '▐Ю╝Б╝╙╝╚ ╙╝ЮЮ╔╙Б╗Ю╝╒╙╗ ╓╝╙Ц╛╔╜Б╝╒ ╜═Г╗А╚╔╜╗О'
#include format.frn
.fields
  CommonFormHeader
  NumSrc
  if (DateSrc = Date(0,0,0), '', DateToStr(DateSrc, 'DD/MM/YY'))
  if (DateoprSrc = Date(0,0,0), '', DateToStr(DateOprSrc, 'DD/MM/YY'))
  DescrSrc NotesSrc
  if (SummSrc = 0, '', DoubleToStr(SummSrc, Cena_Pr))

  NumSN
  if (DateSN  = Date(0,0,0), '', DateToStr(DateSN , 'DD/MM/YY'))
  if (DateOprSN  = Date(0,0,0), '', DateToStr(DateOprSN , 'DD/MM/YY'))
  DescrSN
  if (SummSN = 0, '', DoubleToStr(SummSN , Cena_Pr))

  NumKN
  if (DateKN  = Date(0,0,0), '', DateToStr(DateKN , 'DD/MM/YY'))
  if (DateOprKN  = Date(0,0,0), '', DateToStr(DateOprKN , 'DD/MM/YY'))
  DescrKN NotesKN
  if (SummKN = 0, '', DoubleToStr(SummKN , Cena_Pr))
.endfields
Ъ≤
 ^
                                           ▐ Ю ╝ Б ╝ ╙ ╝ ╚   ╓ ╝ ╙ Ц ╛ ╔ ╜ Б ╝ ╒   ╜ ═ Г ╗ А ╚ ╔ ╜ ╗ О
здддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддбдддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©
Ё                         ┬АЕ╝╓╜К╘  ╓╝╙Ц╛╔╜Б                            Ё                   ▒Б╝Ю╜╗ЮЦНИ╗╘  ╓╝╙Ц╛╔╜Б                  Ё                      ┬А╞Ю═╒╗Б╔╚Л╜К╘  ╓╝╙Ц╛╔╜Б                        Ё
цддддддддддддддддбддддддддбддддддддбддддддддбдддддддддддбдддддддддддддддеддддддддддддддддбддддддддбддддддддбддддддддбдддддддддддддддеддддддддддддддддбддддддддбддддддддбддддддддбдддддддддддбдддддддддддддд╢
Ё      █╝╛╔Ю     Ё  └═Б═  Ё  └═Б═  Ё └╔А╙Ю. Ё  ▒Б═БЦА   Ё  ▒Ц╛╛═ ╒ █└┘  Ё      █╝╛╔Ю     Ё  └═Б═  Ё  └═Б═  Ё └╔А╙Ю. Ё  ▒Ц╛╛═ ╒ █└┘  Ё     █╝╛╔Ю      Ё  └═Б═  Ё  └═Б═  Ё └╔А╙Ю. Ё  ▒Б═БЦА   Ё  ▒Ц╛╛═ ╒ █└┘ Ё
Ё                ЁА╝╖╓═╜╗ОЁ ╗А╞╝╚╜.Ё        Ё           Ё               Ё                ЁА╝╖╓═╜╗ОЁ ╗А╞╝╚╜.Ё        Ё               Ё                ЁА╝╖╓═╜╗ОЁ ╗А╞╝╚╜.Ё        Ё           Ё              Ё
цддддддддддддддддеддддддддеддддддддеддддддддедддддддддддедддддддддддддддеддддддддддддддддеддддддддеддддддддеддддддддедддддддддддддддеддддддддддддддддеддддддддеддддддддеддддддддедддддддддддедддддддддддддд╢
.{
Ё@@@@@@@@@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@@@@Ё&&&&&&&&&&&&&&&Ё@@@@@@@@@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@Ё&&&&&&&&&&&&&&&Ё@@@@@@@@@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@Ё@@@@@@@@@@@Ё&&&&&&&&&&&&&&Ё
.}
юддддддддддддддддаддддддддаддддддддаддддддддадддддддддддадддддддддддддддаддддддддддддддддаддддддддаддддддддаддддддддадддддддддддддддаддддддддддддддддаддддддддаддддддддаддддддддадддддддддддаддддддддддддддыЪ≤

.endform
