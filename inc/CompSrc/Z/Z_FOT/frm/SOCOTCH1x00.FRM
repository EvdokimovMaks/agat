//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.1 - Заработная плата, Управление персоналом
// Детализация строк 1000-1100 РАП по ЕСН
//------------------------------------------------------------------------------
#doc
Детализация строк 1000-1100 РАП по ЕСН
#end
.form 'Socotch1x00'
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
    .{.?t1x00Shap1;      ^.}
    .{.?t1x00Shap2;      ^.}
    .{.?t1x00Shap3;      ^.}
    .{.?t1x00Shap4;      ^.}
.{ t1x00Tab CheckEnter
^ ^ ^ ^ .{.?t1x00Summa;     ^.}
.}
.endForm
