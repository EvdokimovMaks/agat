.linkform 'ag_t3_2004' prototype is t_3_2004I
.nameinlist 'Агат. Штатное расписание T-3'
.group 'T3_2004'
.f "NUL"

.var
  pXL: XLSRepBuilder;
  sXLSFileName, sXLTFileName: string;
  curCategory: string;
  curSubGroup: string;
.endvar

.create view v
as select ag_t3_totals.Nrec
from ag_t3_totals CurSubGroupTotals,
     ag_t3_totals CurCategoryTotals,
     ag_t3_totals SubGroupTotals,
     ag_t3_totals CategoryTotals,
     ag_t3_totals
where ((
  comp(0)                == CurSubGroupTotals.cParent and
  curSubGroup            == CurSubGroupTotals.Name    and
  CurSubGroupTotals.Nrec == CurCategoryTotals.cParent and
  curCategory            == CurCategoryTotals.Name    and
  comp(0)                == SubGroupTotals.cParent    and
  SubGroupTotals.Nrec    == CategoryTotals.cParent
));

.function ExtractPart(s: string; sStart: string; sEnd: string): string;
begin
  s := SubStr(s, Pos(sStart, s) + Length(sStart), 255);
  s := SubStr(s, 1, Pos(sEnd, s + sEnd) - 1);
  result := trim(s);
end.

.function ExtractPost(s: string): string;
begin
  result := SubStr(s, 1, Pos(',',s+',') - 1);
end.

.function ExtractCategory(s: string): string;
begin
  result := ExtractPart(s, ', категория: ', ' ');
end.

.function ExtractGrade(s: string): string;
begin
  result := ExtractPart(s, ', разряд: ', ',');
end.

.function ExtractSubgroup(s: string): string;
begin
  s := result := ExtractPart(s, ', категория: ', ',');
  result := SubStr(s, Pos(' ', s+' ') + 1, 255);
end.

.function ExcludeCode(s: string; sCode: string): string;
begin
  if SubStr(s, 1, Length(sCode)) = sCode
    result := Trim(SubStr(s, Length(sCode) + 1, 255));
  else
    result := s;
end.

.function StrToDouble(s: string): double;
begin
  s := replace(s,'''','');
  s := replace(s,' ','');
  s := replace(s,',','.');
  result := double(s);
end.

.procedure AddSubTotals;
begin
  v._loop SubGroupTotals
  {
    pXL.ClearTblBuffer;
    pXL.SetTblNumberFldValue('Type'           , 1000);
    pXL.SetTblStringFldValue('StaffStructName', 'В том числе ' + v.SubGroupTotals.Name + ':');
    pXL.SetTblNumberFldValue('Qty'            , v.SubGroupTotals.Qty);
    pXL.SetTblNumberFldValue('Fond'           , v.SubGroupTotals.Fond);
    pXL.InsTblRow;
    v._loop CategoryTotals
    {
      pXL.ClearTblBuffer;
      pXL.SetTblNumberFldValue('Type'           , 1000);
      pXL.SetTblStringFldValue('StaffStructName', '     в т.ч. ' + v.CategoryTotals.Name + ' ' + v.SubGroupTotals.Name);
      pXL.SetTblNumberFldValue('Qty'            , v.CategoryTotals.Qty);
      pXL.SetTblNumberFldValue('Fond'           , v.CategoryTotals.Fond);
      pXL.InsTblRow;
    }
  }
end.

.begin
  sXLSFileName := pXL.CreateReport(TranslatePath('%StartPath%Xls\ag_t3_2004.xlt'), True);
  //sXLSFileName := pXL.CreateXLT(TranslatePath('%StartPath%Xls\ag_t3_2004.xlt'), True);

  pXL.CreateTbls(sXLSFileName);
  pXL.CreateTbl('Main');
  pXL.CreateTblFld('Type');
  pXL.CreateTblFld('StaffStructName');
  pXL.CreateTblFld('StaffStructCode');
  pXL.CreateTblFld('Post');
  pXL.CreateTblFld('Category');
  pXL.CreateTblFld('Grade');
  pXL.CreateTblFld('SubGroup');
  pXL.CreateTblFld('Qty');
  pXL.CreateTblFld('Rate');
  pXL.CreateTblFld('Raise1Sum');
  pXL.CreateTblFld('Raise2Sum');
  pXL.CreateTblFld('Raise3Sum');
  pXL.CreateTblFld('Fond');
  pXL.CreateTblFld('Comment');
end.
.{ T3_2004IGroupCycle CheckEnter
.if T3_2004ITotal
.begin
  var _qty, _fond: double = 0;
  v._loop SubGroupTotals
  {
    _qty  += v.SubGroupTotals.Qty;
    _fond += v.SubGroupTotals.Fond;
  }
  //Итого по подразделению
  pXL.ClearTblBuffer;
  pXL.SetTblNumberFldValue('Type'           , 1000);
  pXL.SetTblStringFldValue('StaffStructName', BTotal0);
  pXL.SetTblNumberFldValue('Qty'            , _qty);
  pXL.SetTblNumberFldValue('Fond'           , _fond);
  pXL.InsTblRow;
  AddSubTotals;
end.
.end
.if T3_2004IlevelCheck
.begin
  //Заголовок подразделения
  pXL.ClearTblBuffer;
  pXL.SetTblNumberFldValue('Type'           , подразделение_уровень);
  pXL.SetTblStringFldValue('StaffStructName', подразделение);
  pXL.InsTblRow;
  v.delete all ag_t3_totals;
end.
.end
.{ T3_2004IPostCycle CheckEnter
.begin
  //Строка внутри подразделения
  var _qty, _rate, _r1, _r2, _r3, _fond: double;
  _qty := StrToDouble(staff4);
  _rate := StrToDouble(staff5);
  _r1 := StrToDouble(staff6);
  _r2 := StrToDouble(staff7);
  _r3 := StrToDouble(staff8);
  _fond := (_rate + _r1 + _r2 + _r3) * _qty;
  curSubGroup := ExtractSubgroup(staff3);
  curCategory := ExtractCategory(staff3);

  pXL.ClearTblBuffer;
  pXL.SetTblNumberFldValue('Type'           , 0);
  pXL.SetTblStringFldValue('StaffStructName', ExcludeCode(staff1, staff2));
  pXL.SetTblStringFldValue('StaffStructCode', staff2);
  pXL.SetTblStringFldValue('Post'           , ExtractPost(staff3));
  pXL.SetTblStringFldValue('Category'       , curCategory);
  pXL.SetTblStringFldValue('Grade'          , ExtractGrade(staff3));
  pXL.SetTblStringFldValue('SubGroup'       , curSubGroup);
  pXL.SetTblNumberFldValue('Qty'            , _qty);
  pXL.SetTblNumberFldValue('Rate'           , _rate);
  pXL.SetTblNumberFldValue('Raise1Sum'      , _r1);
  pXL.SetTblNumberFldValue('Raise2Sum'      , _r2);
  pXL.SetTblNumberFldValue('Raise3Sum'      , _r3);
  pXL.SetTblNumberFldValue('Fond'           , _fond);
  pXL.SetTblStringFldValue('Comment'        , staff10);
  pXL.InsTblRow;

  if v.getfirst CurSubGroupTotals != tsOk
    v.insert CurSubGroupTotals set CurSubGroupTotals.Name := curSubGroup;

  if v.getfirst CurCategoryTotals != tsOk
    v.insert CurCategoryTotals set CurCategoryTotals.cParent := v.CurSubGroupTotals.Nrec,
                                   CurCategoryTotals.Name := curCategory;

  v.update current CurSubGroupTotals set CurSubGroupTotals.Qty  := CurSubGroupTotals.Qty  + _qty,
                                         CurSubGroupTotals.Fond := CurSubGroupTotals.Fond + _fond;

  v.update current CurCategoryTotals set CurCategoryTotals.Qty  := CurCategoryTotals.Qty  + _qty,
                                         CurCategoryTotals.Fond := CurCategoryTotals.Fond + _fond;
end.
.{ T3_2004IPostCycle2 CheckEnter
.}
.}
.}
.if T3e_2004ITotal
.begin
  var _qty, _fond: double = 0;
  v._loop SubGroupTotals
  {
    _qty  += v.SubGroupTotals.Qty;
    _fond += v.SubGroupTotals.Fond;
  }
  //Итого по подразделению
  pXL.ClearTblBuffer;
  pXL.SetTblNumberFldValue('Type'           , 2000);
  pXL.SetTblStringFldValue('StaffStructName', Total0);
  pXL.SetTblNumberFldValue('Qty'            , _qty);
  pXL.SetTblNumberFldValue('Fond'           , _fond);
  pXL.InsTblRow;
  AddSubTotals;
end.
.end
.begin
  pXL.PublishTbl('Main');

  pXL.CreateVar(sXLSFileName);
  pXL.SetStringVar('KatOrgName' , KatOrg_Name);
  pXL.SetStringVar('KatOrgOkpo' , KatOrg_Okpo);
  pXL.SetStringVar('DocNumber'  , stBeg1);
  pXL.SetStringVar('DocDate'    , stBeg2);
  pXL.SetStringVar('DFromDay'   , stBeg3);
  pXL.SetStringVar('DFromMonth' , stBeg4);
  pXL.SetStringVar('DFromYear'  , stBeg5);
  pXL.SetStringVar('RaiseTitle1', stTitul1);
  pXL.SetStringVar('RaiseTitle2', stTitul2);
  pXL.SetStringVar('RaiseTitle3', stTitul3);
  pXL.SetStringVar('TotalQty'   , stEnd1);
  pXL.SetStringVar('TotalRate'  , stEnd_col_5);
  pXL.SetStringVar('TotalRaise1', stEnd2);
  pXL.SetStringVar('TotalRaise2', stEnd3);
  pXL.SetStringVar('TotalRaise3', stEnd4);
  pXL.PublishVar;

  pXL.LoadReport(sXLSFileName);
  pXL.DisConnectExcel;
end.
.endform
