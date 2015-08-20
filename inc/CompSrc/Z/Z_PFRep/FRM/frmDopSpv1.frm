//******************************************************************************
// Галактика 8.1
// Справка о начислении доп. тарифов страховых взносов к СПВ-1 
//******************************************************************************
.set name='frmDopSpv1'
.hide
.fields
  dateformir naimstrah
  regnom     FioSotr
  snils      procent
  dat1       dat2
  Sum        SumVzn
  nameruk    fioruk  
.endfields
.{ SotrCycle checkenter 
^ ^
^ ^
^ ^  
^ ^ 
^ ^  
^ ^
.}
.endform
