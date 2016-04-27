/*
 иммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╩
 ╨                     (c) 1994,97 ╙╝Ю╞╝Ю═Ф╗О ┐─▀─┼▓┬┼─                      ╨
 ╨ ▐Ю╝╔╙Б        : ┐─▀─┼▓┬┼─                                                 ╨
 ╨ ▒╗АБ╔╛═       : ─╒Б╝БЮ═╜А╞╝ЮБ                                             ╨
 ╨ ┌╔ЮА╗О        : 5.00                                                      ╨
 ╨ █═╖╜═Г╔╜╗╔    : ┼═ЮБ╝Б╔╙═ ╒╝╓╗Б╔╚╔╘                                       ╨
 ╨ ▌Б╒╔БАБ╒╔╜╜К╘ : ▀╗А╗Ф═ █═Б═╚ЛО ▄╗Е═╘╚╝╒╜═                                 ╨
 хммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм╪
*/
.set name='Kar_Vod'
.hide
!.p 60
.fields
 Podraz  Data_Now
 KolName0
 KolName1
 KolName2
 KolName3
 Tabn Fio Sosto
 d1 dw1 d2 dw2 d3 dw3 d4 dw4 d5 dw5 d6 dw6 d7 dw7 d8 dw8 d9 dw9 d10 dw10 d11 dw11 d12 dw12 d13 dw13 d14 dw14 d15 dw15
 d16 dw16 d17 dw17 d18 dw18 d19 dw19 d20 dw20 d21 dw21 d22 dw22 d23 dw23 d24 dw24 d25 dw25 d26 dw26
 d27  dw27 d28  dw28  d29 dw29 d30 dw30 d31 dw31
 Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
 StagVd NomUdov
 All_time PlanAll_time Razn_Time Higth_Time Low_Time Holiday_time KalendDn
 Kol_name
.endfields
.{
^ ^
 .{.?stColumnNameVod0;^ .}
 .{.?stColumnNameVod1;^ .}
 .{.?stColumnNameVod2;^ .}
 .{.?stColumnNameVod3;^ .}
---------------------------------
.{
^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^  ^
^ ^ ^ ^ ^ ^ ^ ^ ^
^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ .{.?stColumnDataVod; ^.}
.}
.}
.endform
.linkform 'Kar_Vod_01' prototype is 'Kar_Vod'
.NameInList '┼═ЮБ╝Б╔╙═ ╒╝╓╗Б╔╚╔╘'
.Group 'Kar_VodGr1'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
 StagVd NomUdov
.endfields
^
.{
                           ┼═ЮБ╝Б╔╙═ ╒╝╓╗Б╔╚╔╘
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
здддддддддбдддддддддддддддддддддддбдддддбдбдбдбдбдбдбддбддбддбддбддбддбддбддбддбдддбдддбддбддддддддддбддддддддддддд©
Ё ▓═║.╜╝╛.Ё         ■ ┬ ▌         Ё┼╚═ААЁ─ЁBЁCЁDЁEЁFЁBEЁCEЁDEЁTmЁTbЁA1ЁB1ЁC1ЁD1ЁC1EЁD1EЁM Ё  ▒Б═╕    Ё █╝╛╔Ю Ц╓.   Ё
юдддддддддадддддддддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддаддаддддддддддаддддддддддддды
.]h
Ё@@@@@@@@ Ё@@@@@@@@@@@@@@@@@@@@@@@Ё&&#& Ё@Ё@Ё@Ё@Ё@Ё@Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@  Ё@  Ё@ Ё@@@@@@@@@@Ё@@@@@@@@@@@@@Ё.{.?stColumnDataVod;.}
.[f
юдддддддддадддддддддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддаддаддддддддддаддддддддддддды
.]f
.}
.}
.endform
.linkform 'Kar_Vod_02' prototype is 'Kar_Vod'
.NameInList '└═╜╜К╔ ╝ ╒╝╓╗Б╔╚ОЕ'
.Group 'Kar_VodGr2'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Sosto Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
.endfields
^
.{
                    ┬╜Д╝Ю╛═Ф╗О  ╝ ╒╝╓╗Б╔╚ОЕ
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
здддддддддбдддддддддддддддддддддддбддддддддддддддддбдддддбдбдбдбдбдбдбддбддбддбддбддбддбддбддбддбдддбдддбдд©
Ё ▓═║.╜╝╛.Ё         ■ ┬ ▌         Ё  ▒╝АБ╝О╜╗╔     Ё┼╚═ААЁ─ЁBЁCЁDЁEЁFЁBEЁCEЁDEЁTmЁTbЁA1ЁB1ЁC1ЁD1ЁC1EЁD1EЁM Ё
юдддддддддадддддддддддддддддддддддаддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддадды
.]h
Ё@@@@@@@@ Ё@@@@@@@@@@@@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@@Ё&&#& Ё@Ё@Ё@Ё@Ё@Ё@Ё @Ё @Ё @Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@  Ё@  Ё@ Ё.{.?stColumnDataVod;.}
.[f
юдддддддддадддддддддддддддддддддддаддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддадды
.]f
.}
.}
.endform

.linkform 'Kar_Vod_03' prototype is 'Kar_Vod'
.NameInList '▓═║╔╚Л ╒╝╓╗Б╔╚╔╘'
.Group 'Kar_VodGr3'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio
 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15
 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31
.endfields
^
.{
                    ┬╜Д╝Ю╛═Ф╗О  ╝ ╒╝╓╗Б╔╚ОЕ
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
здддддддддбдддддддддддддддддддддддбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбд©
Ё ▓═║.╜╝╛.Ё         ■ ┬ ▌         Ё1Ё2Ё3Ё4Ё5Ё6Ё7Ё8Ё9Ё0Ё1Ё2Ё3Ё4Ё5Ё6Ё7Ё8Ё9Ё0Ё1Ё2Ё3Ё4Ё5Ё6Ё7Ё8Ё9Ё0Ё1Ё
юдддддддддадддддддддддддддддддддддададададададададададададададададададададададададададададададады
.]h
Ё@@@@@@@@ Ё@@@@@@@@@@@@@@@@@@@@@@@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё.{.?stColumnDataVod;.}
.[f
юдддддддддадддддддддддддддддддддддададададададададададададададададададададададададададададададады
 1 - █═ ╛═ЮХЮЦБ╔  2 - ░╔╛╝╜Б         3 - ▌Б╞ЦА╙
 4 - │╝╚Л╜╗Г╜К╘   5 - ┌КЕ╝╓╜╝╘       6 - ▐Ю╝ёЦ╚
.]f
.}
.}
.endform

.linkform 'Kar_Vod_01vib' prototype is 'Kar_Vod'
.NameInList '┼═ЮБ╝Б╔╙═ ╒К║К╒Х╗Е ╒╝╓╗Б╔╚╔╘'
.Group 'Kar_VodGr1vib'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
 StagVd NomUdov
.endfields
^
.{
                           ┼═ЮБ╝Б╔╙═ ╒К║К╒Х╗Е ╒╝╓╗Б╔╚╔╘
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
здддддддддбдддддддддддддддддддддддбдддддбдбдбдбдбдбдбддбддбддбддбддбддбддбддбддбдддбдддбддбддддддддддбддддддддддддд©
Ё ▓═║.╜╝╛.Ё         ■ ┬ ▌         Ё┼╚═ААЁ─ЁBЁCЁDЁEЁFЁBEЁCEЁDEЁTmЁTbЁA1ЁB1ЁC1ЁD1ЁC1EЁD1EЁM Ё  ▒Б═╕    Ё █╝╛╔Ю Ц╓.   Ё
юдддддддддадддддддддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддаддаддддддддддаддддддддддддды
.]h
Ё@@@@@@@@ Ё@@@@@@@@@@@@@@@@@@@@@@@Ё&&#& Ё@Ё@Ё@Ё@Ё@Ё@Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@  Ё@  Ё@ Ё@@@@@@@@@@Ё@@@@@@@@@@@@@Ё.{.?stColumnDataVod;.}
.[f
юдддддддддадддддддддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддаддаддддддддддаддддддддддддды
.]f
.}
.}
.endform
.linkform 'Kar_Vod_02vib' prototype is 'Kar_Vod'
.NameInList '└═╜╜К╔ ╝ ╒К║К╒Х╗Е ╒╝╓╗Б╔╚ОЕ'
.Group 'Kar_VodGr2vib'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio Sosto Klass KatgA KatgB KatgC KatgD KatgE KatgF KatgBE KatgCE KatgDE
 KatgTm    KatgTb   KatgA1   KatgB1  KatgC1  KatgD1   KatgC1E   KatgD1E   KatgM
.endfields
^
.{
                    ┬╜Д╝Ю╛═Ф╗О ╝ ╒К║К╒Х╗Е ╒╝╓╗Б╔╚ОЕ
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
здддддддддбдддддддддддддддддддддддбддддддддддддддддбдддддбдбдбдбдбдбдбддбддбддбддбддбддбддбддбддбдддбдддбдд©
Ё ▓═║.╜╝╛.Ё         ■ ┬ ▌         Ё  ▒╝АБ╝О╜╗╔     Ё┼╚═ААЁ─ЁBЁCЁDЁEЁFЁBEЁCEЁDEЁTmЁTbЁA1ЁB1ЁC1ЁD1ЁC1EЁD1EЁM Ё
юдддддддддадддддддддддддддддддддддаддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддадды
.]h
Ё@@@@@@@@ Ё@@@@@@@@@@@@@@@@@@@@@@@Ё@@@@@@@@@@@@@@@@Ё&&#& Ё@Ё@Ё@Ё@Ё@Ё@Ё @Ё @Ё @Ё@ Ё@ Ё@ Ё@ Ё@ Ё@ Ё@  Ё@  Ё@ Ё.{.?stColumnDataVod;.}
.[f
юдддддддддадддддддддддддддддддддддаддддддддддддддддадддддадададададададдаддаддаддаддаддаддаддаддадддадддадды
.]f
.}
.}
.endform

.linkform 'Kar_Vod_03vib' prototype is 'Kar_Vod'
.NameInList '▓═║╔╚Л ╒К║К╒Х╗Е ╒╝╓╗Б╔╚╔╘'
.Group 'Kar_VodGr3vib'
.fields
 CommonFormHeader
 Podraz
 Tabn Fio
 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15
 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31
.endfields
^
.{
                    ┬╜Д╝Ю╛═Ф╗О ╝ ╒К║К╒Х╗Е ╒╝╓╗Б╔╚ОЕ
^
 .{.?stColumnNameVod0;.} .{.?stColumnNameVod1;.} .{.?stColumnNameVod2;.} .{.?stColumnNameVod3;.}
.{
.[h OverWrite
здддддддддбдддддддддддддддддддддддбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбдбд©
Ё ▓═║.╜╝╛.Ё         ■ ┬ ▌         Ё1Ё2Ё3Ё4Ё5Ё6Ё7Ё8Ё9Ё0Ё1Ё2Ё3Ё4Ё5Ё6Ё7Ё8Ё9Ё0Ё1Ё2Ё3Ё4Ё5Ё6Ё7Ё8Ё9Ё0Ё1Ё
юдддддддддадддддддддддддддддддддддададададададададададададададададададададададададададададададады
.]h
Ё@@@@@@@@ Ё@@@@@@@@@@@@@@@@@@@@@@@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё@Ё.{.?stColumnDataVod;.}
.[f
юдддддддддадддддддддддддддддддддддададададададададададададададададададададададададададададададады
 1 - █═ ╛═ЮХЮЦБ╔  2 - ░╔╛╝╜Б         3 - ▌Б╞ЦА╙
 4 - │╝╚Л╜╗Г╜К╘   5 - ┌КЕ╝╓╜╝╘       6 - ▐Ю╝ёЦ╚
.]f
.}
.}
.endform