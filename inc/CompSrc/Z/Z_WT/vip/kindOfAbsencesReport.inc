#ifndef _kindOfAbsencesReport_inc_INCLUDED_
#define _kindOfAbsencesReport_inc_INCLUDED_
const
  // [r]eport [p]rint [t]ype
  // Вынести в common.inc
  rptFCOM = 1;
  rptFastReport = 2;
  rptRTF = 3;
  rptXLS = 4;

  // [m]ode of [r]eport
  mrByPerson = 0;
  mrByAbsence = 1;

  // [r]eport [f]ormat
  rfRTF = 0;
  rfExcel = 1;
  rfFastReport = 2;

  // [c]ompound [h]ierarchy [p]rocess [e]lement
  // Если добавляете новую константу измените рамки допустимого диапазона соответственно:
  // chpeMinCorrectValue, chpeMaxCorrectValue
  chpeMinCorrectValue = 1;
  chpeProcessEntity = 1;
  chpeProcessData = 2;
  chpeProcessTotal = 3;
  chpeFinalIteration = 4;
  chpeMaxCorrectValue = 4;


end;
#end
