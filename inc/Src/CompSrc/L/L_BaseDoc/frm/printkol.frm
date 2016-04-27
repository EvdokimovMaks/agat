#doc
Печать количества МЦ по документу.
#end
.linkform 'PrintKol' prototype is 'PRBDOC'
.NameInList 'Количество МЦ по документу'
.group 'Продажа'
.var
  kolAll : double;
.endvar
.FIELDS
  PrintNumber(mnd, nomer)
  ddoc
  DoubleToStr( kolAll, '\2p[|-]36`666`666`666`666`666.88' )
.ENDFIELDS
.{
СЧЕТ : № ^  от  ^
.begin
 kolAll := 0;
end.
.{ CheckEnter IsBaseFin
.}
.{ CheckEnter IsExClass
.}
.{ CheckEnter IsGroup
.}
.{
.begin
  kolAll += kol;
end.
.}

Общее количество МЦ по документу: ^
.}
.if Delimiter
.end
.endform