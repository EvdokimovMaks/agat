//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// ��⠫����� ��ப �� ����������� �㬬�� ���-1
//------------------------------------------------------------------------------
#doc
��⠫����� ��ப �� ����������� �㬬�� ���-1
#end
.form 'RsvotchN'
.hide
.p 60
.fields
  MyFormMainName
  MyFormName1
  MyFormName2
  ���

  VidOpl1 VidOpl2 VidOpl3 VidOpl4
  Npp
  TabN
  VidRab
  FIO
  StrNumb
  BornDate
  SumOpl
.endfields
 ^
 ^
 ^
 ^
    .{.?tnShap11;      ^.}
    .{.?tnShap22;      ^.}
    .{.?tnShap33;      ^.}
    .{.?tnShap44;      ^.}
.{ tnTab1 CheckEnter
^ ^ ^ ^ ^ ^ .{.?tnsumma1;     ^.}
.}
.endForm
