.linkform 'AktPriemDvizh' prototype is 'GroupOs'
.NameInList '[ВСМН] Акт приема-передачи в уставный капитал движимого имущества'
.group 'Поступление ОС <<ВСМН>>'
.group 'Выбытие ОС <<ВСМН>>'
.F 'NUL'
.var
  iRow, NPP : word;
  iFeeSigners : FeeSigners;
  piExAttr    : iExtAttr;
  TotalSumm : double;
  SumNDS : double;
  TotalSumNDS : double;
  barcode : string;
  sBookName : string;

.endvar
.create view s
as select
 *
from
 SpMoveOS
;
.{ // Начало формы
.begin
  xlKillExcel;
  xlDisplayAlerts(false);
  xlCreateExcelWithTemplate(TranslatePath('%ClientStartPath%')+'Xls\F_OSOper\AktPriemDvizh.xlt',true);
end.
.begin

  // xlGetActiveWorkBookName(sBookName);

  if (xlIsExcelValid)
  {
    var barcode : string;
    barcode :=  Ean13ToEanGnivcTTF(GenerateBarCodeEx (coMoveOs, MoveOsNRec));
    xlSetCellStringValue(barcode, 2/*Row*/, 2/*Col*/, 2, 2 );
    xlSetCellStringValue(String(Дата_документа), 4/*Row*/, 12/*Col*/,4 ,12 );
    xlSetCellStringValue(Поставщик, 6/*Row*/, 7/*Col*/,6 ,7 );
    xlSetCellStringValue(Получатель, 8/*Row*/, 7/*Col*/,8 ,7);
    xlSetCellStringValue(Поставщик, 12/*Row*/, 10/*Col*/,12 ,10);
    xlSetCellStringValue(Получатель, 16/*Row*/, 3/*Col*/,16 ,3);
  }
  iRow:=23;
  NPP:=0;
  TotalSumm   :=0;
  TotalSumNDS :=0;
end.

.{ CheckEnter FeeSignersMember_GroupOs
.}
.{ CheckEnter FeeSignersResponsible_GroupOs
.}

.{ CheckEnter CycleByGroupIK
.begin
   //спецификация
    iRow++;
    NPP++;
    xlInsertRange(-4121/*xlShiftDown*/ , iRow, 1,iRow, 12);
    xlMergeCells(iRow, 3,iRow, 4);
    xlMergeCells(iRow, 5,iRow, 6);
    xlMergeCells(iRow, 9,iRow, 11);

    xlSetCellStringValue(NPP, iRow, 1/*Col*/,iRow ,1);
    xlSetCellStringValue(chr(39)+Инвентарный_Номер, iRow, 2/*Col*/,iRow ,2);

    xlSetCellStringValue(Наименование, iRow, 3/*Col*/,iRow ,3);
    xlAlignCellsEx(/*xlLeft*/-4131,-4107, iRow, 2, iRow, 4);
    xlSetCellNumberValue(Количество, iRow, 5/*Col*/,iRow ,5);
    xlSetCellNumberValue(Стоимость_всего, iRow, 7/*Col*/,iRow ,7);
    SumNDS := piExAttr.doGetAttr(coSpMoveOS, Comp(SPMOVEOSNREC), 'Сумма НДС');
    xlSetCellNumberValue(SumNDS, iRow, 8/*Col*/,iRow ,8);

    xlSetCellNumberValue(Срок_полезного_использования, iRow, 9/*Col*/,iRow ,9);
    xlSetCellNumberValue(Остаточная_стоимость, iRow, 12/*Col*/,iRow ,12);
    xlAlignCells(/*xlRight*/-4152, iRow, 5, iRow, 12);

    XlWrapText(iRow, 1,iRow, 12);
    XlSetFontSize(10,iRow, 1,iRow, 12);
    xlSetNumberFormat ( '#'+xlGetThousandSeparator+ '##0'+xlGetDecimalSeparator+'00',iRow, 7, iRow, 8);
    xlSetNumberFormat ( '#'+xlGetThousandSeparator+ '##0'+xlGetDecimalSeparator+'00',iRow, 12, iRow, 12);
    TotalSumm := TotalSumm + Double(Стоимость_всего);
    TotalSumNDS := TotalSumNDS + SumNDS;
end.
.{ CheckEnter FormGroupOsMemo
.}

.{ CheckEnter FormGroupOs_NalDrag
.}

.{ CheckEnter FormGroupOs_AktUsl
.}

.}
.begin
   //итого
   iRow++;
   var formula : string;
   var Val : string;
 //  formula:='=СУММ(R[-'+string(iRow - 16)+']C:'+'R[-1]C'+')';
 //  xlSetCellFormula( formula, iRow, 8, iRow, 8);
   xlSetCellNumberValue( TotalSumm, iRow, 7, iRow, 7);
   xlSetCellNumberValue( TotalSumNDS, iRow, 8, iRow, 8);
   xlSetNumberFormat ( '#'+xlGetThousandSeparator+ '##0'+xlGetDecimalSeparator+'00',iRow, 7, iRow, 11);

   iRow:= iRow+6;
   iFeeSigners.InitFeeSigners(7306/*cgReport_Os*/);
   iFeeSigners.FindFeeSignersByNRec(Comp(cFeeSignersNRec));
   if (iFeeSigners.FeeSignersIsValid)
   {
#declare Sdal
     if iFeeSigners.GetSignerFirst
     {
       xlSetCellStringValue(iFeeSigners.GetSignerPosition(2) +' '+iFeeSigners.GetSignerFIO(2) ,  14/*Row*/, 2/*Col*/,14 ,2);
       xlSetCellStringValue(iFeeSigners.GetSignerInfo(word(1)), 14/*Row*/, 9/*Col*/,14 ,9);

       //сдал
       xlSetCellStringValue(iFeeSigners.GetSignerPosition(1), iRow, 1/*Col*/,iRow ,1);
       xlSetCellStringValue(iFeeSigners.GetSignerFIO(1)     , iRow, 6/*Col*/,iRow ,6);
     }
#End

#declare Prinial
    if iFeeSigners.GetSignerFirst
    {
       xlSetCellStringValue(iFeeSigners.GetSignerPosition(2) +' '+iFeeSigners.GetSignerFIO(2), 16/*Row*/, 8/*Col*/,16 ,8);
   //    xlSetCellStringValue(iFeeSigners.GetSignerPosition(2) , 11/*Row*/, 7/*Col*/,11 ,7);
       xlSetCellStringValue(iFeeSigners.GetSignerInfo(word(1)),18/*Row*/, 3/*Col*/,18 ,3);

       //принял
       xlSetCellStringValue(iFeeSigners.GetSignerPosition(1), iRow, 8/*Col*/,iRow ,8);
       xlSetCellStringValue(iFeeSigners.GetSignerFIO(1)     , iRow, 12/*Col*/,iRow ,12);
    }
#End
     if s.GetFirst SpMoveOS where ((Comp(SPMOVEOSNREC) == SpMoveOS.Nrec))= tsOk
     {
       var StrSumm : string;
       StrSumm := DoubleToString(s.SpMoveOS.cVal, TotalSumm);
       xlSetCellStringValue(DoubleToStr(Trunc(TotalSumm), '6 666 666 666 666')
                             +' ('+
                             if (InStr('коп',StrSumm) > 0,
                                 SubStr(StrSumm,1,Length(StrSumm)-10) +')'+ SubStr(StrSumm,Length(StrSumm)-10, 11),
                                ')')
                               +':', 20,7,20,7);

    }
     if ТИПОПЕРАЦИИ = 1 // поступление
     {
       //------------- директор
       if iFeeSigners.RestrictFeeByRole(2, 'Direct')
       #Prinial
       //------------- контактное лицо
       if iFeeSigners.RestrictFeeByRole(2, 'KontaktLico')
         #Sdal

     }
     if ТИПОПЕРАЦИИ = 4  //выбытие
     {
       //------------- директор
       if iFeeSigners.RestrictFeeByRole(2, 'Direct')
       #Sdal

       if iFeeSigners.RestrictFeeByRole(2, 'KontaktLico')
       #Prinial
     }
     iFeeSigners.ClearRestriction;
   }
end.
.begin
   //XlWrapText(20, 1,iRow, 12);
    var fMacros, str : string;
    fmacros  := GetStringParameter('Files','TmpFilesDirectory',0)+'AktPriemDvizh.bas';
    DeleteFile(Fmacros);
    LogStrToFile(Fmacros, 'Sub Sub1()                         ');
    LogStrToFile(Fmacros, 'Dim Rng As Excel.Range             ');
    LogStrToFile(Fmacros, 'Dim Sh As Excel.Worksheet          ');
    LogStrToFile(Fmacros, 'Set Sh = Application.ActiveSheet   ');
    LogStrToFile(Fmacros, 'Set Rng = Sh.Range("C23:D'+iRow+'")');
    LogStrToFile(Fmacros, 'RngAutoFit Rng                     ');
    LogStrToFile(Fmacros, 'Set Rng = Sh.Range("G20:L20")');
    LogStrToFile(Fmacros, 'RngAutoFit Rng                     ');
    LogStrToFile(Fmacros, 'End Sub                            ');

    // xlSetActiveWorkBookByName(sBookName);
    // message('1 ' + sBookName);

    if ( xlImportModule(Fmacros) )
    {
       if ( not xlRunMacro('Sub1') )
        message('Ошибка запуска макроса AktPriemDvizh');
    }
    else
    {
      var err: longInt;
      err := xlGetLastError();
      message ('Ошибка загрузки макроса AktPriemDvizh ' + string(err));
    }
    DeleteFile(Fmacros);

    xlKillExcel;

    GroupOs.fExit;
end.
.} // Конец формы
.endform
