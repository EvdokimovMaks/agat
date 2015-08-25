//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Детализация строк по необлагаемым суммам РСВ-1
//------------------------------------------------------------------------------
#doc
Детализация строк по необлагаемым суммам РСВ-1
#end
.form 'RsvotchN'
.hide
.p 60
.fields
  MyFormMainName
  MyFormName1
  MyFormName2
  Мес

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
