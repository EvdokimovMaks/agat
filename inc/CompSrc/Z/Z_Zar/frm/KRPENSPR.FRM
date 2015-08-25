/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Заработная плата                                          ║
 ║ Версия        : 5.00                                                      ║
 ║ Назначение    : Краткая форма  пенсионной справки                         ║
 ║ Ответственный : Маслакова Татьяна Владимировна                            ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Краткая форма  пенсионной справки
#end
.set name='KRPENSPR'
.hide
.fields
 Data
 FIO
 Pred1
 Dog Data1 г1 Data2  г2
 выплаты
 расч_сч1
 расч_сч2
 Pred2 расч_сч3
 Pred3
 s1
 s2 Рук
 s3 Бух
.endfields
.{
.{
   ^ ^ ^
.{
   ^ ^ ^ ^ ^
.}
.{
   ^
.}
   ^
   ^
   ^ ^
   ^
   ^
   ^ ^
   ^ ^
.}
.}
.endform

.linkform 'KrPenSpr_01' prototype is 'KrPenSpr'
.nameinlist 'Краткая  форма справки'
.fields
CommonFormHeader
.endfields
^
.var
 ss  :string
 ss1 :string
 ss2  :string
 ss3  :string
 ss4  :string
 ss5  :string
.endvar
.begin
     ss:='';ss1:='';
     ss:=Pred1;
     if length(Pred1) > 62
      {
       ss:=GetPartStr(Pred1,62);
       ss1:=substr(Pred1,length(ss)+1,62);
      }
end.
.fields
 Data
 FIO
 ss ss1
 Dog Data1 г1 Data2  г2
 выплаты
.endfields

.{

.{




                        С П Р А В К А  N ___________ от ^

       Выдана  ^  в том, что он(она)
   работал(а) в ^
   ^ по коллективным договорам подряда:
.{
                ^  с &&&&&&&&&& ^  по   &&&&&&&&&& ^
.}
   Выплаты производились:
.{
   ^
.}
.begin
     ss2:='';ss3:='';
     ss2:=Pred2;
     if length(Pred2) > 66
      {
       ss2:=GetPartStr(Pred2,66);
       ss3:=substr(Pred2,length(ss2)+1,66);
      }
     ss4:='';ss5:='';
     ss4:=Pred3;
     if length(Pred3) > 48
      {
       ss4:=GetPartStr(Pred3,48);
       ss5:=substr(Pred3,length(ss4)+1,48);
      }
end.
.fields
 расч_сч1
 расч_сч2
 ss2 ss3 расч_сч3
 ss4 ss5
 s1
 s2 Рук
 s3 Бух
 'true':'s'
.endfields
   Работа выполнена в срок, качественно, в полном объеме.
       Отчисления  в  пенсионный  фонд   от   заработной   платы  произведены
   полностью на р/с N ^.
       Страховые   отчисления  произведены  на   всю  сумму  заработка на р/с
   N ^ .

       Р/с ^
       ^ N ^.
       Регистрационный номер ^
       ^ в пенсионном фонде
       ^



          ^ ^


          ^ ^
 ^
.}

.}
.endForm
