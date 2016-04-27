//********************************************************************************
//                                                        (c) корпорация Галактика
// Галактика 8.10 - Справочник групп заказов
// отчет
//********************************************************************************
#doc
Список групп заказов
#end
.set name='ListGroupTheme'
.hide
.fields
 WhatClass
.endfields
^
.{ AddInformation CheckEnter
.{ Usual_CircleLeaf CheckEnter
.fields
 Attr1Leaf : string
 Attr2Leaf : string
.Endfields
^ ^
.}
.{ Usual_CircleNode CheckEnter
.fields
 Attr1Node : string
 Attr2Node : string
.Endfields
^ ^
.}
.}
.endform

#doc
Список групп тем
#end
.linkform 'listgrouptheme01' prototype is 'ListGroupTheme'
.nameinlist 'Список групп заказов'
.fields
 WhatClass
.endfields

                                 ^ Б

                    Б   БНаименование                                     Код

 Б.{ AddInformation CheckEnter
.{ Usual_CircleLeaf CheckEnter
.fields
 Attr1Leaf : 'T:-'
 Attr2Leaf
.endfields
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@
.}
.{ Usual_CircleNode CheckEnter
.fields
 Attr1Node : 'T:-'
 Attr2Node
.endfields
   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@@@
.}
.} Б
 Б.endform Б
