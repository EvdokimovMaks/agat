/*
  ╔═════════════════════════════════════════════════════════════════════╗
  ║      Н Т О  "T O P   S O F T",  А О   "Н О В Ы Й   А Т Л А Н Т"     ║
  ║      Проект    : ГАЛАКТИКА  (с) 2000                                ║
  ║      Система   : Управление персоналом                              ║
  ║      Версия    : 5.8                                                ║
  ║      Разработал: Антонович А.К.     13/06/2001                      ║
  ║      Назначение: Учетная карточка по форме Т-4 приказ № 136         ║
  ║      Изменения :                                                    ║
  ╚═════════════════════════════════════════════════════════════════════╝
*/

#doc
Учетная карточка по форме Т-4 приказ № 136
#end
.form t_4_136
.Hide
.Fields
KatOrg_Name
KatOrg_Okpo
Doc1
Doc2
Cex
Vacansy
TabNum
FIO_ABC
JobVid
Sex
FIO_1
FIO_2
FIO_3
BornDate
// образование
Education
// послевузовское проф образование
Type_Education
Name_Education
NumDoc
DateEnd
DocDateEnd
Spez
// ученая степень
educS1
educS2
educS3
educS4
educS5
educS6
educS7
educS8
educS9
educS10
// ученая звание
educZ1
educZ2
educZ3
educZ4
educZ5
educZ6
educZ7
educZ8
// стаж
staj1
staj2
// научные труды
job1
job2
// присуждение уч степени
step1
step2
step3
step4

.endFields

KatOrg_Name               ^
KatOrg_Okpo               ^
Doc1                      ^
Doc2                      ^
Cex                       ^
Vacansy                   ^
TabNum                    ^
FIO_ABC                   ^
JobVid                    ^
Sex                       ^
FIO_1                     ^
FIO_2                     ^
FIO_3                     ^
BornDate                  ^
// образование
Education                 ^
// послевузовское проф образование
Type_Education            ^
Name_Education            ^
NumDoc                    ^
DateEnd                   ^
DocDateEnd                ^
Spez                      ^
// ученая степень
educS1                    ^
educS2                    ^
educS3                    ^
educS4                    ^
educS5                    ^
educS6                    ^
educS7                    ^
educS8                    ^
educS9                    ^
educS10                   ^
// ученое звание
educZ1                    ^
educZ2                    ^
educZ3                    ^
educZ4                    ^
educZ5                    ^
educZ6                    ^
educZ7                    ^
educZ8                    ^
// стаж
staj1                     ^
staj2                     ^
// научные труды
job1                      ^
job2                      ^
// присуждение уч степени
.{t4_136_Cycle1  CheckEnter
step1                     ^
step2                     ^
step3                     ^
step4                     ^
.}

.endform