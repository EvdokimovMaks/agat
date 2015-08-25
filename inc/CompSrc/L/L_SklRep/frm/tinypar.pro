!  (c) 1987 корпорация ГАЛАКТИКА
!  Проект        : ГАЛАКТИКА
!  Система       : Оперативный контур
!  Версия        : 5.20
!  Назначение    : оборотная ведомость форма 6
!  Ответственный : Александр Валерьевич Крахотко

#doc
Оборотная ведомость форма 6
#end
.set name = 'TinyPar'
.hide
!.test
.fields
  sPodr  : string
  sMOL   : string
  sMC    : string
  sParty : string
  sGrMC  : string

  дата_начальная : date
  дата_конечная  : date

!текущий курс валюты
  Kurs_val : double
  NDE_Simv : string
  VAL_Simv : string

  валюта_1_рек : comp
  валюта_1_сим : string
  валюта_2_рек : comp
  валюта_2_сим : string

!{ CheckEnter TinyParPodr
  склад_рек : comp
  склад_имя : string
!{ CheckEnter TinyParMol
  мол_рек : comp
  мол_имя : string
!{ CheckEnter TinyParMC
  мц_рек : comp
  мц_ном : string
  мц_имя : string
  мц_группа     : string
  мц_рек_группы : comp
  мц_масса : double
  мц_объем : double

  ед_учт_рек : comp
  ед_учт_имя : string

  ед_отп_рек : comp
  ед_отп_имя : string
  ед_отп_кое : double

!{ CheckEnter TinyParParty
  партия_рек : comp
  партия_имя : string

    // итоги по ПАРТИИ
    pbk:double pbs:double pbsv:double
    pak:double pas:double pasv:double
    psk:double pss:double pssv:double
    pek:double pes:double pesv:double
!.}
    // итоги по МЦ
    tbk:double tbs:double tbsv:double
    tak:double tas:double tasv:double
    tsk:double tss:double tssv:double
    tek:double tes:double tesv:double
!.}
    // итоги по МОЛ
    mbk:double mbs:double mbsv:double
    mak:double mas:double masv:double
    msk:double mss:double mssv:double
    mek:double mes:double mesv:double
!.}
    // итоги по СКЛАДУ
    sbk:double sbs:double sbsv:double
    sak:double sas:double sasv:double
    ssk:double sss:double sssv:double
    sek:double ses:double sesv:double
!.}
    // итоги по ОТЧЕТУ
    ibk:double ibs:double ibsv:double
    iak:double ias:double iasv:double
    isk:double iss:double issv:double
    iek:double ies:double iesv:double
.endfields

  ^ ^ ^ ^ ^
  дата_начальная : date     ^
  дата_конечная  : date     ^

  Kurs_val : double         ^
  NDE_Simv : string         ^
  VAL_Simv : string         ^

  валюта_1_рек : comp       ^
  валюта_1_сим : string     ^
  валюта_2_рек : comp       ^
  валюта_2_сим : string     ^

.{ CheckEnter TinyParPodr
  склад_рек : comp          ^
  склад_имя : string        ^
.{ CheckEnter TinyParMol
  мол_рек : comp            ^
  мол_имя : string          ^
.{ CheckEnter TinyParMC
  мц_рек : comp             ^
  мц_ном : string           ^
  мц_имя : string           ^
  мц_группа     : string    ^
  мц_рек_группы : comp      ^
  мц_масса : double         ^
  мц_объем : double         ^

  ед_учт_рек : comp         ^
  ед_учт_имя : string       ^

  ед_отп_рек : comp         ^
  ед_отп_имя : string       ^
  ед_отп_кое : double       ^

.{ CheckEnter TinyParParty
  партия_рек : comp         ^
  партия_имя : string       ^

    pbk:double ^ pbs:double ^ pbsv:double ^
    pak:double ^ pas:double ^ pasv:double ^
    psk:double ^ pss:double ^ pssv:double ^
    pek:double ^ pes:double ^ pesv:double ^
.} // CheckEnter TinyParParty
    // итоги по МЦ
    tbk:double ^ tbs:double ^ tbsv:double ^
    tak:double ^ tas:double ^ tasv:double ^
    tsk:double ^ tss:double ^ tssv:double ^
    tek:double ^ tes:double ^ tesv:double ^
.} // CheckEnter TinyParMC
    // итоги по МОЛ
    mbk:double ^ mbs:double ^ mbsv:double ^
    mak:double ^ mas:double ^ masv:double ^
    msk:double ^ mss:double ^ mssv:double ^
    mek:double ^ mes:double ^ mesv:double ^
.} // CheckEnter TinyParMol
    // итоги по СКЛАДУ
    sbk:double ^ sbs:double ^ sbsv:double ^
    sak:double ^ sas:double ^ sasv:double ^
    ssk:double ^ sss:double ^ sssv:double ^
    sek:double ^ ses:double ^ sesv:double ^
.} // CheckEnter TinyParPodr
    // итоги по ОТЧЕТУ
    ibk:double ^ ibs:double ^ ibsv:double ^
    iak:double ^ ias:double ^ iasv:double ^
    isk:double ^ iss:double ^ issv:double ^
    iek:double ^ ies:double ^ iesv:double ^
---------- END
.endform
