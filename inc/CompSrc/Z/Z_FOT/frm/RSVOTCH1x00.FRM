//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.1 - Заработная плата, Управление персоналом
// Детализация строк 1000-1100 РСВ
//------------------------------------------------------------------------------
#doc
Детализация строк 1000-1100 РСВ
#end
.form 'Rsvotch1x00'
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
  SumOpl
.endfields
 ^
 ^
 ^
 ^
    .{.?t1x00Shap11;      ^.}
    .{.?t1x00Shap22;      ^.}
    .{.?t1x00Shap33;      ^.}
    .{.?t1x00Shap44;      ^.}
.{ t1x00Tab1 CheckEnter
^ ^ ^ ^ .{.?t1x00Summa1;     ^.}
.}
.endForm
