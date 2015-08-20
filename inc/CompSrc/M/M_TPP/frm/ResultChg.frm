//------------------------------------------------------------------------------
//                                                      (c) корпорация ГАЛАКТИКА
// ГАЛАКТИКА 7.11 - Производственное планирование
// Результат проведения замен по "Акту замен"
//------------------------------------------------------------------------------

#doc
Базовая форма результата проведения замен по "Акту замен"</brief>
#end

.form ResChange
.HIDE
.defo landscape
.FIELDS
dtDate
Doc_Name
Act_Name
Type_Change
Title_1
Title_2
Title_3
Title_4
Title_5
Old_Material
Old_Amount
Old_EdIzm
New_Material
New_Amount
New_EdIzm
In_Product
.ENDFIELDS

ОТЧЕТ О РЕЗУЛЬТАТАХ ПРОВЕДЕНИЯ ИЗМЕНЕНИЙ 
  ^
  ^
.{
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
  ^
.}
.endform

.LINKFORM ResChange01 PROTOTYPE IS ResChange
.NameInList "Результат  проведения замен "
.fields
dtDate
Doc_Name
.endfields
.var
isType_Change : string; 
Cur_Act_Name  : string;
.endvar
.begin
isType_Change := '';
Cur_Act_Name  := '';
end.

ОТЧЕТ О РЕЗУЛЬТАТАХ ПРОВЕДЕНИЯ ИЗМЕНЕНИЙ 
НА ДАТУ         ^
В  ДОКУМЕНТЕ    ^
.{
.{ ?Internal;(Cur_Act_Name <> Act_Name)
.fields
  Act_Name
.endfields

ПО АКТУ ЗАМЕН   ^
.begin
  Cur_Act_Name:= Act_Name;
  isType_Change :='';
end.
.} //end of ?Internal
.{ ?Internal;(isType_Change <> Type_Change)
.fields
  Type_Change
  Title_1
  Title_2
  Title_3
  Title_4
  Title_5
.endfields
                                                                              
ВИД ИЗМЕНЕНИЙ : @@@@@@@@@@@@@@@@                     
 @@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@       @@@@@@@@@@@@@@@@@@
.begin
  isType_Change := Type_Change;
end.
.} //end of ?Internal
.fields
  Old_Material
  Old_Amount
  Old_EdIzm
  New_Material
  New_Amount
  New_EdIzm
  In_Product
.endfields
 @@@@@@@@@@@@@@@@@@   &&&&&.&&&&& @@@@@@  @@@@@@@@@@@@@@@@@@   &&&&&.&&&&& @@@@@@     @@@@@@@@@@@@@@@@@@@@@@@@@
.}

.EndForm