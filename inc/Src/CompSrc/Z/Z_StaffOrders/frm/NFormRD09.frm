/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8, 7.1                                           ║
  ║      Разработал: Антонович А.К.     11/03/2004                      ║
  ║      Назначение: Назначение персональных надбавок РД 09             ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Назначение персональных надбавок РД 09
#end
.form NformRD09
.Hide
.Fields
Организация
ОКПО
TitleDocNrec : comp
sBarCode
PersNrec : comp
AppointNrec : comp
номер_документа
дата_составления

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

!.{RD09_Raise  CheckEnter
Npp
NameRaise
Summa
DateBeg
DateEnd
priznak : word
!.}

Основание
Appendix1
Appendix2
Appendix3
Appendix4
Appendix5

ДолжнРук
ФиоРук

.EndFields
Организация                   ^
ОКПО                          ^
TitleDocNrec : comp           ^
sBarCode                      ^
PersNrec : comp               ^
AppointNrec : comp            ^
номер_документа               ^
дата_составления              ^

FIO                           ^
FIO_2                         ^
FIO_3                         ^
FIO_VP                        ^
FIO_5                         ^
FIO_6                         ^
TabN                          ^
подразделение                 ^
должность                     ^
razr                          ^

.{RD09_Raise  CheckEnter
Npp                           ^
NameRaise                     ^
Summa                         ^
DateBeg                       ^
DateEnd                       ^
priznak                       ^
.}

Основание                     ^
Appendix1                     ^
Appendix2                     ^
Appendix3                     ^
Appendix4                     ^
Appendix5                     ^

ДолжнРук                      ^
ФиоРук                        ^
.endform