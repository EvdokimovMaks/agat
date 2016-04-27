//Пользователький Тип, предназначенный для установки коэффициентов и доп.полей в позициях заявки
type TMTODistrField = record
  _Kst:double;
  _Ksnabsbit:double;
  _Ktr:double;
  _Kdef:double;
  _LOT:string;
  _OTV:string;
  _POST:string;
  DocOsn:string;
  _cPOST:comp;
  _cFil:comp;
  _cSlg:comp;
  _cProg:comp;
  _cStbud:comp;
  _cStatus:comp;
  //Вн.атр
  VnAtr:string;//Наименование атрибута
  sVal:string;
  doVal:double;
  dVal:date;
  tVal:time;

  cAttr:comp;
//  AttrType:word;
  cAnVal:comp;
 
end;
