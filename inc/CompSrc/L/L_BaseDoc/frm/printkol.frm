#doc
����� ������⢠ �� �� ���㬥���.
#end
.linkform 'PrintKol' prototype is 'PRBDOC'
.NameInList '������⢮ �� �� ���㬥���'
.group '�த���'
.var
  kolAll : double;
.endvar
.FIELDS
  PrintNumber(mnd, nomer)
  ddoc
  DoubleToStr( kolAll, '\2p[|-]36`666`666`666`666`666.88' )
.ENDFIELDS
.{
���� : � ^  ��  ^
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

��饥 ������⢮ �� �� ���㬥���: ^
.}
.if Delimiter
.end
.endform