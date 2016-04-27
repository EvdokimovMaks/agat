//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 8.10 - Бухгалтерский контур
// Печать бюджетной классификации платежных поручений для РБ (базовая форма)
//------------------------------------------------------------------------------

#doc
Печать платежных документов
#end
.set name = 'BudgKlass'
.nameinlist 'БАЗОВАЯ ФОРМА'
.hide
.fields
NumPlPor
DatePlPor : date
! цикл по хоз.операциям
SHNRec
SHGL  
SHUNK 
SHRD  
SHPRD 
SHVID 
SHPAR 
SHPR    
SHPPR   
SHKT    
SHST    
SHPST   
SHEL    
SHSumma     : double
! итоговая сумма по хоз.операциям
ItogSHSumma : double
OrgBoss
OrgBuh
.endfields
NumPlPor  ^
DatePlPor ^
.{checkenter PlatDocsCycleBudgKlass
// 14 полей - для бюджетных организаций
SHNRec  ^
SHGL    ^
SHUNK   ^
SHRD    ^
SHPRD   ^
SHVID   ^
SHPAR   ^
SHPR    ^  
SHPPR   ^  
SHKT    ^  
SHST    ^  
SHPST   ^  
SHEL    ^  
SHSumma ^
.}
ItogSHSumma ^
OrgBoss     ^
OrgBuh      ^
.endform