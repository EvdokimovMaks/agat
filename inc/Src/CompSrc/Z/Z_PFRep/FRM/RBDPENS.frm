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
.set name = 'RBDPENS'
.hide
.{ RBAllPachLoop CheckEnter
.fields
TypesPu1: word  TypesPu2: word
CodeOKPO
РегНомер Наименование
КоличестоЗаписейПУ2:word
Квартал:word год
INN
KPP
НомерПачки:word ДатаСостав
ЧислоДок:word
.endfields
^ ^ ^^
^^
"ЗГЛВ","02.50"
"РБТД","РБТД","^","^"
"ПАПЧК",^,"^",1
"ТИПД","АНКТ",^
^ ^
.{ RBNexpPersLoop CheckEnter
.fields
Pu1LikePu2 : word
НомерДок
ДатаЗаполнения: date ВидДоговора
ДатаПоступленияПР ДатаУвольненияПР
ДатаПоступления: date ДатаУвольнения: date ПричинаУвольнения ТабНом
Фамилия Имя Отчество
Фамилия_стар Имя_стар Отчество_стар
Пол
Гражданство:word
Гражданство2009
ДатаРожд: date
ДатаРожд_стар: date
НасПункт Район Обл Страна
ТипДок ТипДок4 НаимДок
ПаспортНаим Серия СерияРим СерияРус НомерПасс Датавыдачи:date КемВыдан
ЛичныйНомер
СтрахНомер
Адр1Индекс Адр1Адр Адр2Индекс Адр2Адр Телефоны ТелефоныДом
.endfields
^
^ ^ ^ ^ ^ ^ ^^^
^^^
^^^
^
^^
^^
^^^^
^^^
^^^^^^^
^^
^^^^^^
.fields
ДатаОтчета : date
РуководФИО
РуководДОЛЖ
ИсполнительФИО
ИсполнительТелефон
.endfields
^^^^^
.}
.if RBDEndPach
.fields
НомТекПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.end
.{ RBDOPPU CheckEnter
.fields
EndPriz:word
PeriodKv:word
YearAdv:word
.endfields
^^^
.}
.}
.endform
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'PU1_LMAGNIT1' prototype is 'RBDPENS'
.group 'RB_ANKET'
.var
 TrueType: string[1]
 _PachNum: word;
.endvar
.nameinlist 'Форма ПУ-1(файл для магнитных носителей)'
.begin _PachNum := НомерПачки end.
.{ RBAllPachLoop CheckEnter
.fields
if(Trim(INN)<>'',Trim(INN),' ')
if(Trim(РегНомер)<>'',Trim(РегНомер),' ')
if(Trim(Наименование)<>'',UpCase(Trim(Наименование)),' ')
_PachNum
ЧислоДок
.endfields
ЗГЛВ=1.5=
<ПАЧК=^=^=^=^= = =1=
ТИПД=ПУ-1=^= = = = =>
.{ RBNexpPersLoop CheckEnter
.fields
TrueType
if((trim(РегНомер)<>''),trim(РегНомер),' ')
if((Trim(Фамилия)<>''),UpCase(Trim(Фамилия)),' ')
if((Trim(Имя)<>'')    ,UpCase(Trim(Имя)),' ')
if((Trim(Отчество)<>''),UpCase(Trim(Отчество)),' ')
if((Trim(Пол)<>''),UpCase(Trim(Пол)),' ')
Гражданство

if((day(ДатаРожд)<>0)  , string(ДатаРожд),' ')
if((Trim(НасПункт)<>''),UpCase(Trim(НасПункт)),' ')
if((Trim(Район)<>'')   ,UpCase(Trim(Район)),' ')
if((Trim(Обл)<>'')     ,UpCase(Trim(Обл)),' ')
if((Trim(Страна)<>'')  ,UpCase(Trim(Страна)),' ')

if((Trim(Серия)<>'')   ,Trim(Серия),' ')
if((Trim(НомерПасс)<>''),Trim(НомерПасс),' ')

if((day(Датавыдачи)<>0) ,string(Датавыдачи),' ')

if((Trim(КемВыдан)<>'')  ,UpCase(Trim(КемВыдан)),' ')
if((Trim(ЛичныйНомер)<>''),Trim(ЛичныйНомер),' ')

// для пачек с типом "Восстановление" адрес не выводится
if (TypesPu1 = 2, ' ', if((Trim(Адр1Индекс)<>'')and (Trim(Адр1Индекс)<>'0'),Trim(Адр1Индекс),' '))
if (TypesPu1 = 2, ' ', if((Trim(Адр1Адр)<>'')   ,UpCase(Trim(Адр1Адр)),' '))

if((Trim(Телефоны)<>'')   ,UpCase(Trim(Телефоны)),' ')
if((Trim(ТелефоныДом)<>''),UpCase(Trim(ТелефоныДом)),' ')

if((day(ДатаОтчета)<>0),string(ДатаОтчета),' ')

if((TypesPu1 <> 0)and(trim(СтрахНомер)<>'')and(trim(СтрахНомер)<>'0'),СтрахНомер,' ')
if( TypesPu1 <> 0 ,UpCase(Trim(Фамилия_стар)),' ')
if( TypesPu1 <> 0 ,UpCase(Trim(Имя_стар)),' ')
if( TypesPu1 <> 0 ,UpCase(Trim(Отчество_стар)),' ')
if( (TypesPu1 <>0)and(day(ДатаРожд_стар)<>0),string(ДатаРожд_стар),' ')
.endfields
.begin
 case TypesPu1 of
 0: TrueType:= 'Р'
 1: TrueType:= 'И'
 2: TrueType:= 'В'
 end;
end.
<ПУ-1=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=>
.}
.if RBDEndPach
.fields
_PachNum
.endfields
___КОНЕЦ ^ ПАЧКИ
.begin _PachNum := _PachNum + 1; end.
.end
.{ RBDOPPU CheckEnter
.}
.}
.endform
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'PU2_LMAGNIT1' prototype is 'RBDPENS'
.group 'RB_PRUV'
.nameinlist 'Форма ПУ-2(файл для магнитных носителей)'
.var
 Initial1, Initial2 : string[1];
 TrueType: string[1]
 Coun    : word;
 CloseChar  : string;
 _kv : string;
.endvar
.begin CloseChar := '>'; Coun := 0 end.
.{ RBAllPachLoop CheckEnter
.fields
if(Trim(INN)<>'',Trim(INN),' ')
if(Trim(РегНомер)<>'',Trim(РегНомер),' ')
if(Trim(Наименование)<>'',UpCase(Trim(Наименование)),' ')
НомерПачки
ЧислоДок
.endfields
ЗГЛВ=1.5=
<ПАЧК=^=^=^=^= = =1=
ТИПД=ПУ-2=^= = = = =>
.fields
TrueType
if(Trim(РегНомер)<>'',Trim(РегНомер),' ')
КоличестоЗаписейПУ2
if((Trim(ИсполнительТелефон)<>''),Trim(ИсполнительТелефон),' ')
ДатаЗаполнения
if(Trim(TrueType)<>'Р',Trim(_kv),' ')
год
.endfields
.begin
 case TypesPu2 of
 0: TrueType:= 'Р'
 1,4: TrueType:= 'И'
 2: TrueType:= 'К'
 3: TrueType:= 'О'
 end;
 case word(Квартал) of
 0: _kv:= '1'
 1: _kv:= '2'
 2: _kv:= '3'
 3: _kv:= '4'
 4: _kv:= '12'
 5: _kv:= '34'
 6: _kv:= '1234'
 7: _kv:= '23'
 8: _kv:= '123'
 9: _kv:= '234'
 end;
end.
<ПУ-2=^=^= = =^=^=^=^=^=
.{ RBNexpPersLoop CheckEnter
.begin
Coun := Coun + 1;
end.
.fields
if(Trim(Фамилия)<>'',UpCase(Trim(Фамилия)),' ')
if(Trim(Initial1)<>'',UpCase(Trim(Initial1)),' ')
if(Trim(Initial2)<>'',UpCase(Trim(Initial2)),' ')

if(Trim(СтрахНомер)<>'',UpCase(Trim(СтрахНомер)),' ')
if((TypesPu2<>3)and((trim(ВидДоговора)<>'03')and (Day(ДатаПоступления) <> 0)),string(ДатаПоступления),' ')
if((TypesPu2<>0)and(TypesPu2<>3)and(Day(ДатаУвольнения) <> 0)and(trim(ВидДоговора)<>'03'),string(ДатаУвольнения),' ')
if((TypesPu2<>3)and(TypesPu2<>0),if(Trim(ПричинаУвольнения)<>'',Trim(ПричинаУвольнения),' '),' ')
if(Coun <КоличестоЗаписейПУ2 , '', CloseChar)
.endfields
.begin
  if Coun > КоличестоЗаписейПУ2
    Coun:= 1;
  Initial1 := UpCase(Trim(Имя));
  Initial2 := UpCase(Trim(Отчество));
end.
ДВИЖ=^=^=^=^=^= =^= =^=^
.}
.if RBDEndPach
.fields
НомерПачки
.endfields
___КОНЕЦ ^ ПАЧКИ
.end
.{ RBDOPPU CheckEnter
.}
.}
.endform
