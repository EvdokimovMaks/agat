/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T"                                       ║
  ║      Проект "КАДРЫ"                                                 ║
  ║      Версия : 5.8                                                   ║
  ║      Разработал:  Мохова Ж.И.                                       ║
  ║      Назначение:  Форма Т-11a  Сводный приказ о награждении         ║
  ║      Параметры:                                                     ║
  ║      Изменения: май 2001 - новая форма!!!                           ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/
#doc
Форма Т-11a  Сводный приказ о награждении
#end
.form Nfrmt11A_2004
.Hide
.Fields
Организация
ОКПО
TitleDocNrec : comp
номер_документа
дата_составления
motive
FortType
!.{ myPsnCycle11 CheckEnter
ContDocNrec : comp
PersNrec : comp
AppointNrec : comp
FIO
FIO_2
FIO_3
FIO_VP
FIO_5
FIO_6
TabN
подразделение
должность
razr
SumR
znak

!.}
Foundation
ДолжнРук
ФиоРук

.EndFields

Организация                  ^
ОКПО                         ^
TitleDocNrec : comp          ^
номер_документа              ^
дата_составления             ^
motive                       ^
FortType                     ^
.{ myPsnCycle11A_2004 CheckEnter
ContDocNrec : comp           ^
PersNrec : comp              ^
AppointNrec : comp           ^
FIO                          ^
FIO_2                        ^
FIO_3                        ^
FIO_VP                       ^
FIO_5                        ^
FIO_6                        ^
TabN                         ^
подразделение                ^
должность                    ^
razr                         ^
SumR                         ^
znak                         ^
.}
Foundation                   ^
ДолжнРук                     ^
ФиоРук                       ^

.endform
