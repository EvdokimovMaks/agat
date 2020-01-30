/////////////////////////////////////////////////////////////////////
//////////////////// ⠡��� ��� FastReport ����  /////////////////
/////////////////////////////////////////////////////////////////////
// -a - ���䨪� ��� �⫨������ ����� ���� �ப� ������ �����
table struct OtchRasprOpl
(
  NRec : tNRec,          //����� �����
  PID : s200,            //1 PID
  PID_a : s200,          //1 PID 
  NSI : tBarKod,         //2 ���
  NomNumber : tBarKod,   //3 ������������ �����
  Prog : s80,            //4 �ணࠬ��
  ProgR : s20,           //5 ������ �ணࠬ��
  Obj : s200,            //6 ��ꥪ�
  Obj_a : s200,          //6_a ��ꥪ�
  MTP : tName,           //7 ���
  EI : tName,            //8 ��
  Count : double,        //9 ������⢮
  Count_a : double,      //9_a ������⢮
  SpNumber : tDocNumber, //10 ����� ᯥ�䨪�樨
  DatePost : Date,       //11 ��� ���⠢��
  DatePost_a : Date,     //11_a ��� ���⠢��
  CountPost : tSumma,    //12 ������⢮ ���⠢��
  CountPost_a : tSumma,  //12_a ������⢮ ���⠢��
  SumPost : double,      //13 �㬬� ���⠢��
  SumPost_a : double,    //13_a �㬬� ���⠢��
  BankGar : string,      //14 ����稥 ������᪮� ��࠭⨨
  SumAv : double,        //15 �㬬� �����
  RasprOpl : string,     //� � ��� �ᯮ�殮��� �� ������
  PlPorAv : string,      //� � ��� ���⥦���� ����祭�� �� ������ �����
  PrDoc : string,        //� � ��� ��室���� ���㬥��
  SchFact : string,      //� � ��� ���-䠪����
  SumOpl : double,       //�㬬� �����⥫쭮� ������
  RasprOplF : string,    //� � ���  �ᯮ�殮��� �� ������ �� 䠪�� ���⠢��
  PlPorF : string        //� � ��� ���⥦���� ����祭�� �� ������ �� 䠪�� ���⠢��

)
with index
(
 RasPl01  =  NRec(Unique, Surrogate, Journal)
);

table struct OtchPlPor
(
  NRec : tNRec,          //����� �����
  cParent : comp,        //��뫪� �� 㧥�
  SumAv : double,        //�㬬� �����
  RasprOpl : string,     //� � ��� �ᯮ�殮��� �� ������
  PlPorAv : string,      //� � ��� ���⥦���� ����祭�� �� ������ �����
  PrDoc : string,        //� � ��� ��室���� ���㬥��
  SchFact : string,      //� � ��� ���-䠪����
  SumOpl : double,       //�㬬� �����⥫쭮� ������
  RasprOplF : string,    //� � ���  �ᯮ�殮��� �� ������ �� 䠪�� ���⠢��
  PlPorF : string        //� � ��� ���⥦���� ����祭�� �� ������ �� 䠪�� ���⠢��

)
with index
(
 RPl01  =  NRec(Unique, Surrogate, Journal),
 RPl02  =  cParent
);

/////////////////////////////////////////////////////////////////////


