.set name='MyFRM'
.NameInList 'Мой первый Отчет :)'
.fields
f1
f2
f3
f4
f5
f6
f7
f8
f9

.endfields
.{ CheckEnter Loop5
дата:  ^
время: ^
пользователь: ^
имя:   ^
Подразделение: ^
.{ CheckEnter loop6
^: ^
.{ CheckEnter Loop123
	   ^^
.}

.}
.}

.endform

 //******************
.linkform 'MyFRMprototype' prototype is 'MyFRM'
.group 'My'
.NameInList 'Фонд времени работы'
.fields
f1
f2
f3
f4
f5
f6
f7
f8
f9
.endfields
.{ CheckEnter Loop5
 ^ ^ ^

                             ^

Подразделение: ^

.{ CheckEnter loop6
^ : @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
─────────────┬──────────────────────────────|
  Период     |    Плановый фонд времени (ч) |
             |                              |
─────────────┴──────────────────────────────|
.{ CheckEnter Loop123
@@@@@@@@@@@@                        &&&&.&&
.}

.}
.}
.endform
