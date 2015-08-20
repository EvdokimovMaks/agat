/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 2000,   корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный контур                                        ║
 ║ Версия        : 5.8                                                       ║
 ║ Назначение    : Печать каталогов по резервированию СФ                     ║
 ║ Ответственный : Полежай Алексей Геннадьевич                               ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Печать каталога мест формирования СФ
#end
.autoform 'SFFrmPlace'
#ifdef __NUM_SF_RESERVE__
.NameInList 'Каталог мест формирования СФ'
.list 'Каталог мест формирования СФ'
.create view vFormPlace
from
  FormPlace (ReadOnly)
order by FormPlace.Name
;
.fields
  CommonFormHeader
  FormPlace.Name
.endfields
^
──────────────────────────────────────────────────────────────
              Каталог мест формирования СФ
──────────────────────────────────────────────────────────────
.{table 'vFormPlace.FormPlace' by FormPlace.Name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} //table
#end
.endform


#doc
Печать каталога типов резервирования СФ
#end
.autoform 'SFResRange'
#ifdef __NUM_SF_RESERVE__
.NameInList 'Каталог типов резервирования'
.list 'Каталог типов резервирования'
.create view vResRange
from
  ResRange  (ReadOnly),
  FormPlace (ReadOnly)
where
((
  ResRange.cFormPlace == FormPlace.nRec
))
order by ResRange.wYear, ResRange.Number1
;
.fields
  CommonFormHeader
  ResRange.wYear
  ResRange.Number1
  ResRange.Number2
  FormPlace.Name
.endfields
^
         Каталог типов резервирования номеров СФ

───────┬────────────┬────────────┬────────────────────────────
 Год   │ С номера   │  По номер  │    Место формирования
───────┴────────────┴────────────┴────────────────────────────
.{table 'vResRange.ResRange'
@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
.} //table
#end
.endform
