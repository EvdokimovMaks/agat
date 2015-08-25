/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,2001 корпорация ГАЛАКТИКА                    ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.73 и выше                                               ║
 ║ Назначение    : Формирование Анкетных данных по  работникам               ║
 ║                 для  страхового  фонда                                    ║
 ║ Ответственный : Мелех Василий Евгеньевич                                  ║
 ║ Параметры     : нет                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Формирование Анкетных данных по  работникам
для  страхового  фонда
#end
.set name = 'DPENS4'
.hide
.{ AllPachLoop400 CheckEnter
.fields
CodeOKPO
РегНомер Наименование
INN
KPP
НомерПачки ДатаСостав: date
ЧислоДок
.endfields
^
"ЗГЛВ","02.50"
"РБТД","РБТД","^","^"
"ПАПЧК",^,"^",1
"ТИПД","АНКТ",^
^ ^
.{ NexpPersLoop400 CheckEnter
.fields
НомерДок
ДатаЗаполнения: date СтрахНомер ДатаПоступления: date
ТабНом
Фамилия Имя Отчество
Фамилия_нов Имя_нов Отчество_нов
Пол
ДатаРожд : date
НасПункт Район Обл Страна
Гражданство
ТипДок ТипДок4 НаимДок Серия СерияРим СерияРус НомерПасс Датавыдачи:date КемВыдан
!------- свидетельство о смерти
НомерЗаписиАкта
ДатаЗаписиАкта
ДатаСмерти:date
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Адр1Индекс Адр1Адр АдрПрописки_магнит
Адр2Индекс Адр2Адр АдрПроживания_магнит
Телефоны
.endfields
^ ^ ^ ^
^ ^ ^
"АНКТ",^,"^","^","^","^","^","^","^","СТАНДАРТ","^",0,0,0,"СТАНДАРТ","^","^","^","^","^","^","^","^",^,"^","^",^,"^",^,"^","^" ^^
^^^
.fields
ДатаОтчета : date
РуководФИО
РуководДОЛЖ
ИсполнительФИО
.endfields
^^^^
.}
.if DEndPach4
.{ DOP_ADV61 CheckEnter
.fields
EndPriz:word
PeriodKv:word
YearAdv:word
.endfields
^^^
.}
.fields
НомТекПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.end
.}
.endform
!
.linkform 'DPENS4_MAGNITl01' prototype is 'DPENS4'
.nameinlist'Файл анкетных данных для застрахованных лиц(вер. 4.00)'
.var
 PachCnt : word;
 DocCnt  : word;
 my_pred : string[100];
.endvar
.group 'Анкеты на магнитных носителях'
.begin
  PachCnt :=0
  DocCnt  :=0
end.
.{ AllPachLoop400 CheckEnter
.fields
РегНомер
INN KPP
my_pred
(Word(НомерПачки) + PachCnt) ДатаСостав
ЧислоДок
.endfields
.begin
  my_pred := Upcase(Trim(Replace(Наименование, '"', '/' )));
end.
"ЗГЛВ","04.00","ГАЛАКТИКА","8.10"
"РБТД","РБТД","^",^,^,"^"
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",0,0,0,0,0,0,0,0,0
"ТИПД","АНКТ",^
.begin
  PachCnt := PachCnt + 1
  DocCnt  :=0
end.
.{ NexpPersLoop400 CheckEnter
.fields
(Word(НомерДок) + DocCnt)
if(Day(ДатаЗаполнения) = 0,'', String(ДатаЗаполнения))
Trim(UpCase(Фамилия)) Trim(UpCase(Имя)) Trim(UpCase(Отчество))
if(Пол = chr(0),Trim(''), UpCase(Пол))
if(Day(ДатаРожд) = 0,'', String(ДатаРожд))
Trim(UpCase(НасПункт)) Trim(UpCase(Район)) Trim(UpCase(Обл)) Trim(UpCase(Страна))
Гражданство
Trim(UpCase(ТипДок)) Trim(UpCase(НаимДок)) UpCase(СерияРим) UpCase(СерияРус) НомерПасс
if(Day(Датавыдачи) = 0,'', String(Датавыдачи))
Trim(UpCase(КемВыдан))
Trim(UpCase(АдрПрописки_магнит)) Trim(UpCase(АдрПроживания_магнит)) Trim(Телефоны)
.endfields
"АНКТ",^,"^","^","^","^","^","СТАНДАРТ","^",0,0,0,"СТАНДАРТ","^","^","^","^","^","^","^","^","^",^,"^","^","^","^","^"
.begin
  DocCnt := DocCnt + 1
end.
.}
.if DEndPach4
.{ DOP_ADV61 CheckEnter
.}
.{?internal;EndPriz=0
.fields
НомТекПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.}
.end
.}
.endform
!
.linkform 'DPENS4_MAGNITl013' prototype is 'DPENS4'
.nameinlist'Файл данных об обмене Страхового свидетельства ( ИАДВ-2 И)'
.var
 PachCnt : word;
 DocCnt  : word;
 my_pred    : string[100];
 strStandart: string[100];
.endvar
.group 'Заявление об обмене на бумажных бланках'
.begin
  PachCnt := 0
  DocCnt  := 0
  strStandart := 'СТАНДАРТ';
end.
.{ AllPachLoop400 CheckEnter
.fields
РегНомер
INN KPP
my_pred
(Word(НомерПачки) + PachCnt) ДатаСостав
ЧислоДок
.endfields
.begin
  my_pred := Upcase(Trim(Replace(Наименование, '"', '/' )));
end.
"ЗГЛВ","04.00","ГАЛАКТИКА","8.10"
"РБТД","РБТД","^",^,^,"^"
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",0,0,0,0,0,0,0,0,0
"ТИПД","ОБМН",^
.begin
  PachCnt := PachCnt + 1
  DocCnt  :=0
end.
.{ NexpPersLoop400 CheckEnter
.fields
  (Word(НомерДок) + DocCnt)
  if(Day(ДатаЗаполнения) = 0,'', String(ДатаЗаполнения))
  СтрахНомер
  Trim(UpCase(Фамилия)) 
  Trim(UpCase(Имя)) 
  Trim(UpCase(Отчество))
  Trim(UpCase(Фамилия_нов)) 
  Trim(UpCase(Имя_нов)) 
  Trim(UpCase(Отчество_нов))
  if(Пол = chr(0),Trim(''), UpCase(Пол))
! 10
  if(Day(ДатаРожд) = 0,'', strStandart)
  if(Day(ДатаРожд) = 0,'', String(ДатаРожд))

  if( (Trim(UpCase(НасПункт)) <> '')
  or  (Trim(UpCase(Район))    <> '')
  or  (Trim(UpCase(Обл))      <> '')
  or  (Trim(UpCase(Страна))   <> ''),
  strStandart, '')
  Trim(UpCase(НасПункт)) Trim(UpCase(Район)) Trim(UpCase(Обл)) Trim(UpCase(Страна))

  Гражданство
  Trim(UpCase(ТипДок)) Trim(UpCase(НаимДок)) UpCase(СерияРим) UpCase(СерияРус) НомерПасс
  if(Day(Датавыдачи) = 0,'', String(Датавыдачи))
  Trim(UpCase(КемВыдан))
  Trim(UpCase(АдрПрописки_магнит)) Trim(UpCase(АдрПроживания_магнит)) Trim(Телефоны)
.endfields
"ОБМН",^,"^","^","^","^","^","^","^","^","^","^","^",0,0,0,"^","^","^","^","^","^","","","^","^","^","^",^,"^","^","^","^","^"
.begin
  DocCnt := DocCnt + 1
end.
.}
.if DEndPach4
.{ DOP_ADV61 CheckEnter
.}
.{?internal;EndPriz=0
.fields
НомТекПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.}
.end
.}
.endform
!
.linkform 'DPENS4_MAGNITl012' prototype is 'DPENS4'
.nameinlist'Файл заявлений о выдаче дубликата страхового свидетельства(4.00)'
.var
 PachCnt : word;
 DocCnt  : word;
 my_pred    : string[100];
.endvar
.group 'Заявление о выдаче на бумажных бланках'
.begin
  PachCnt :=0
  DocCnt  :=0
end.
.{ AllPachLoop400 CheckEnter
.fields
РегНомер
INN KPP
my_pred
(Word(НомерПачки) + PachCnt) ДатаСостав
ЧислоДок
.endfields
.begin
  my_pred := Upcase(Trim(Replace(Наименование, '"', '/' )));
end.
"ЗГЛВ","04.00","ГАЛАКТИКА","8.10"
"РБТД","РБТД","^",^,^,"^"
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",0,0,0,0,0,0,0,0,0
"ТИПД","ДУБЛ",^
.begin
  PachCnt := PachCnt + 1
  DocCnt  :=0
end.
.{ NexpPersLoop400 CheckEnter
.fields
(Word(НомерДок) + DocCnt)
if(Day(ДатаЗаполнения) = 0,'', String(ДатаЗаполнения))
Trim(UpCase(Фамилия)) Trim(UpCase(Имя)) Trim(UpCase(Отчество))
if(Пол = chr(0),Trim(''), UpCase(Пол))
if(Day(ДатаРожд) = 0,'', String(ДатаРожд))
Trim(UpCase(НасПункт)) Trim(UpCase(Район)) Trim(UpCase(Обл)) Trim(UpCase(Страна))
Гражданство
Trim(UpCase(ТипДок)) Trim(UpCase(НаимДок)) UpCase(СерияРим) UpCase(СерияРус) НомерПасс
if(Day(Датавыдачи) = 0,'', String(Датавыдачи))
Trim(UpCase(КемВыдан))
Trim(UpCase(АдрПрописки_магнит)) Trim(UpCase(АдрПроживания_магнит)) Trim(Телефоны)
СтрахНомер
.endfields
"ДУБЛ",^,"^","^","^","^","^","СТАНДАРТ","^",0,0,0,"СТАНДАРТ","^","^","^","^","^","","","","","",0,0,0,"","","","","","","","","^","^","^","^",^,"^","^","^","^","^","^","БУДУТ"
.begin
  DocCnt := DocCnt + 1
end.
.}
.if DEndPach4
.{ DOP_ADV61 CheckEnter
.}
.{?internal;EndPriz=0
.fields
НомТекПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.}
.end
.}
.endform
.linkform 'DPENS4_MAGNITl014' prototype is 'DPENS4'
.nameinlist'Файл справок о смерти(4.00)'
.var
 PachCnt : word;
 DocCnt  : word;
 ГдеРаботал : string[80];
 my_pred    : string[100];
.endvar
.group 'Справка о смерти'
.begin
  PachCnt :=0
  DocCnt  :=0
end.
.{ AllPachLoop400 CheckEnter
.fields
РегНомер
INN KPP
my_pred
(Word(НомерПачки) + PachCnt) ДатаСостав
ЧислоДок
.endfields
.begin
  my_pred := Upcase(Trim(Replace(Наименование, '"', '/' )));
end.
"ЗГЛВ","04.00","ГАЛАКТИКА","8.10"
"РБТД","РБТД","^",^,^,"^"
"ПАЧК",^,"ОПИСЬ","ОП61","^",1,0,"","","","","",0,0,0,0,0,0,0,0,0
"ТИПД","СМРТ",^
.begin
  PachCnt := PachCnt + 1
  DocCnt  :=0
  ГдеРаботал :=  UpCase(my_pred);
end.
.{ NexpPersLoop400 CheckEnter
.fields
(Word(НомерДок) + DocCnt)
Trim(UpCase(Фамилия)) Trim(UpCase(Имя)) Trim(UpCase(Отчество))
if(Пол = chr(0),Trim(''), UpCase(Пол))
if(Day(ДатаРожд) = 0,'', String(ДатаРожд))
Trim(UpCase(НасПункт)) Trim(UpCase(Район)) Trim(UpCase(Обл)) Trim(UpCase(Страна))
ДатаСмерти
Trim(UpCase(НомерЗаписиАкта))
ДатаЗаписиАкта
Trim(UpCase(ТипДок)) Trim(UpCase(НаимДок)) UpCase(СерияРим) UpCase(СерияРус) НомерПасс
if(Day(Датавыдачи) = 0,'', String(Датавыдачи))
Trim(UpCase(КемВыдан))
Trim(UpCase(АдрПроживания_магнит))
ГдеРаботал
СтрахНомер
ДатаОтчета
.endfields
"СМРТ",^,"^","^","^","^","СТАНДАРТ","^",0,0,0,"СТАНДАРТ","^","^","^","^","^","^","^","^","^","^","^",^,"^","^","^","^","^","","^"
.begin
  DocCnt := DocCnt + 1
end.
.}
.if DEndPach4
.{ DOP_ADV61 CheckEnter
.}
.{?internal;EndPriz=0
.fields
НомТекПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.}
.end
.}
.endform