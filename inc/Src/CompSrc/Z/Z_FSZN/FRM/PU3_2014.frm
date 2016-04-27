//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��ࠢ����� ���ᮭ����
// ���⭮��� � �� ���㡫��� ��������. ��ଠ ��-3
//------------------------------------------------------------------------------
#doc
���⭮��� � �� ���㡫��� ��������.
��ଠ ��-3
#end
.set name = 'PU3_2014'
.hide
.fields
  PersonsNumb : integer
  PachNumBegin: integer
  AllCounter  : word
  RabCounter  : word
  ���客��_�����
  TabN
  Dog_Num
  Dog_Date : date
  // ���᫥��
  Pach_NachItog :double     // �㬬� ���᫥��� �� ��窥
  Pach_BolnItog :double     // �㬬� ���쭨��� �� ��窥
  Pach_UdItog   :double     // �㬬� 㤥ঠ��� (1%) �� ��窥
  Pach_28VzItog :double     // �㬬� ���ᨮ���� ����ᮢ (28%) �� ��窥
  Pach_6VzItog  :double     // �㬬� ���客�� ����ᮢ (6%) �� ��窥
  // ����祭�
  Pach_UdUplItog:double     // �㬬� 㯫�祭���� 㤥ঠ��� (1%) �� ��窥
  Pach_28VzUplItog:double   // �㬬� 㯫�祭��� ����ᮢ (28%) �� ��窥
  Pach_6VzUplItog:double    // �㬬� 㯫�祭��� ����ᮢ (6%) �� ��窥

  �������
  ���
  ����⢮
  CharF :word
  CharF1
  CharF2

  ����⠫ :word
  str����⠫
  MagtinKvartal:string

  God :word
  CharF3
  CharF4

  Fone_org
  RealInn
  RegPFNum
  Pred
  KPP
  curdate
  HP
  ����
  Val1
  SummUd1 : double
  KolStag : word
  Okrug : word

  KolNach : word

  ISum1     : double
  ISum2     : double
  ISumUd1   : double
  ISum28Vz  : double
  ISum6Vz   : double
  ISumUdUpl1: double
  ISumVzUpl : double
  //------------------------------------------------------------------------------
  // ����� �� ��������� ࠧ��� ��業⮢ (⠡��� "������ ���客�� ����ᮢ, ��業⮢")
  Per28 :double
  Per6  :double
  Per1  :double
  PerScaleChange
  PerScaleChangeRTF
  //------------------------------------------------------------------------------
  // ����� �� ����栬 (⠡��� "1. �������� � �㬬� �믫��, ���뢠���� �� �����祭�� ���ᨨ")
  Mes MesText
  PrizPrint:boolean
  PrizPrintSymb:boolean
  PrizSum1: word
  ProcUd1:double
  ProcNach281:double
  ProcNach61:double
  Sum11:double
  Sum12:double
  SumUd1:double
  Sum28Vz:double
  Sum6Vz:double
  Sum1UdUpl:double
  SumVzUpl:double
  DateChangePer
  //------------------------------------------------------------------------------
  //====== �⠦� ======
  ����_�⠦�
  nppSt
  ���_�⠦� ���_�⠦�
  ���_�⠦�_��� ���_�⠦�_���
  ProfCode VidDeyal
  Dop_Pokazat Dop_Rned

  Dolg_ruk
  ���_�㪮����⥫�
  Fio_Buh
  ��᫮ ����� ���

  Adv10_Prz:word
  ���_�ᯮ���⥫�
  ⥫_�ᯮ���⥫�
  FIO_KP
  CodeOKPO
  itognach_��4:double
  itogVremNetr:double
  ItogUd1:double
  Itog28Vz:double
  Itog6Vz:double
  ItogUdUpl:double
  Itog28VzUpl:double
  Itog6VzUpl:double
  Dolg_ruk_��4
  ���_�㪮����⥫�_��4
  ��᫮_��4 �����_��4 ���_��4
.endfields
.{ CheckEnter PU3_2014
  PersonsNumb ^
  PachNumBegin ^
  AllCounter ^
  RabCounter ^
  ���客��_����� ^
  TabN ^
  Dog_Num ^
  Dog_Date ^
  // ���᫥��
  Pach_NachItog ^
  Pach_BolnItog ^
  Pach_UdItog ^
  Pach_28VzItog ^
  Pach_6VzItog ^
  // ����祭�
  Pach_UdUplItog ^
  Pach_28VzUplItog ^
  Pach_6VzUplItog ^

  ������� ^
  ��� ^
  ����⢮ ^
  CharF ^
  CharF1 ^
  CharF2 ^

  ����⠫ ^
  str����⠫ ^
  MagtinKvartal ^

  God ^
  CharF3 ^
  CharF4 ^
  Fone_org ^
  RealInn ^
  RegPFNum ^
  Pred ^
  KPP ^
  curdate ^
  HP ^
  ���� ^
  Val1 ^
  SummUd1 ^
  KolStag ^
  Okrug ^
  KolNach ^
  ISum1 ^
  ISum2 ^
  ISumUd1 ^
  ISum28Vz ^
  ISum6Vz ^
  ISumUdUpl1 ^
  ISumVzUpl ^
  ��������������������������������������������������������������������������������������������Ŀ
  �  �������� � ����稭� ���客�� ����ᮢ                                                     �
  ����������������������������������������������������������������������������������������������
.{ CheckEnter PU3_2014_PerScale
  Per28 ^
  Per6 ^
  Per1 ^
  PerScaleChange ^
  PerScaleChangeRTF ^
.}
  ����������������������������������������������������������������������������������������������
  ��������������������������������������������������������������������������������������������Ŀ
  �  �������� � �㬬�� ���᫥���, ���쭨���, 㤥ঠ��� � ����ᮢ                             �
  ����������������������������������������������������������������������������������������������
.{ CheckEnter PU3_2014_NACH
   Mes ^  MesText ^  PrizPrint ^  PrizPrintSymb ^  PrizSum1 ^   ProcUd1 ^  ProcNach281 ^  ProcNach61 ^ Sum11 ^   Sum12 ^  SumUd1 ^   Sum28Vz ^  Sum6Vz ^  Sum1UdUpl ^  SumVzUpl ^  DateChangePer ^
.}
  ����������������������������������������������������������������������������������������������
  ��������������������������������������������������������������������������������������������Ŀ
  �  �������� � �⠦��                                                                         �
  ����������������������������������������������������������������������������������������������
.{ CheckEnter PU3_2014_Stages
  ����_�⠦� ^
  nppSt^
  ���_�⠦� ^
  ���_�⠦� ^
  ���_�⠦�_��� ^
  ���_�⠦�_��� ^
  ProfCode ^
  VidDeyal ^
  Dop_Pokazat ^
  Dop_Rned ^
.}
  ����������������������������������������������������������������������������������������������
  Dolg_ruk ^
  ���_�㪮����⥫� ^
  Fio_Buh ^
  ��᫮ ^ ����� ^ ��� ^
.{ CheckEnter PU_2014_PR4
  Adv10_Prz ^
  ���_�ᯮ���⥫� ^
  ⥫_�ᯮ���⥫� ^
  FIO_KP ^
  CodeOKPO ^
  itognach_��4 ^
  itogVremNetr ^
  ItogUd1 ^
  Itog28Vz ^
  Itog6Vz ^
  ItogUdUpl ^
  Itog28VzUpl ^
  Itog6VzUpl ^
  Dolg_ruk_��4 ^
  ���_�㪮����⥫�_��4 ^
  ��᫮_��4 ^ �����_��4 ^ ���_��4 ^
.if PU_2014_DeadLine
.end
.}
.}
.endform

!!!!!! �⫠���� ���� !!!!!!!!
.linkform 'PU3_TEST' prototype is 'PU3_2014'
.group '�⫠���'
.nameinlist '�⫠��� ��-3 (ᢥ����� � ���㦠���� ������)'
.{ CheckEnter PU3_2014
.fields
  PersonsNumb
  PachNumBegin
  AllCounter
  RabCounter
  ���客��_�����
  TabN
  Dog_Num

  Dog_Date
  // ���᫥��
  Pach_NachItog                 // �㬬� ���᫥��� �� ��窥
  Pach_BolnItog                 // �㬬� ���쭨��� �� ��窥
  Pach_UdItog                   // �㬬� 㤥ঠ��� (1%) �� ��窥
  Pach_28VzItog                 // �㬬� ���ᨮ���� ����ᮢ (28%) �� ��窥
  Pach_6VzItog                  // �㬬� ���客�� ����ᮢ (6%) �� ��窥
  // ����祭�
  Pach_UdUplItog                // �㬬� 㯫�祭���� 㤥ঠ��� (1%) �� ��窥
  Pach_28VzUplItog              // �㬬� 㯫�祭��� ����ᮢ (28%) �� ��窥
  Pach_6VzUplItog               // �㬬� 㯫�祭��� ����ᮢ (6%) �� ��窥

  �������
  ���
  ����⢮
  CharF CharF1
  CharF2
  ����⠫  str����⠫
  MagtinKvartal
  God CharF3 CharF4
  Fone_org

  RealInn
  RegPFNum
  Pred
  KPP
  curdate
  HP ����
  Val1
  SummUd1
  KolStag
  Okrug
  KolNach
  ISum1
  ISum2
  ISumUd1
  ISum28Vz
  ISum6Vz
  ISumUdUpl1
  ISumVzUpl
.endfields
  PersonsNumb ^
  PachNumBegin ^
  AllCounter ^
  RabCounter ^
  ���客��_����� ^
  TabN ^
  Dog_Num ^
  Dog_Date ^
   // ���᫥��
  Pach_NachItog ^                // �㬬� ���᫥��� �� ��窥
  Pach_BolnItog ^                // �㬬� ���쭨��� �� ��窥
  Pach_UdItog ^                  // �㬬� 㤥ঠ��� (1%) �� ��窥
  Pach_28VzItog ^                // �㬬� ���ᨮ���� ����ᮢ (28%) �� ��窥
  Pach_6VzItog ^                 // �㬬� ���客�� ����ᮢ (6%) �� ��窥
  // ����祭�
  Pach_UdUplItog ^               // �㬬� 㯫�祭���� 㤥ঠ��� (1%) �� ��窥
  Pach_28VzUplItog ^             // �㬬� 㯫�祭��� ����ᮢ (28%) �� ��窥
  Pach_6VzUplItog ^              // �㬬� 㯫�祭��� ����ᮢ (6%) �� ��窥

  ������� ^
  ��� ^
  ����⢮ ^
  CharF ^
  CharF1 ^
  CharF2 ^

  ����⠫ ^
  str����⠫ ^
  MagtinKvartal ^

  God ^
  CharF3 ^
  CharF4 ^
  Fone_org ^
  RealInn ^
  RegPFNum ^
  Pred ^
  KPP ^
  curdate ^
  HP ^
  ���� ^
  Val1 ^
  SummUd1 ^
  KolStag ^
  Okrug ^
  KolNach ^
  ISum1 ^
  ISum2 ^
  ISumUd1 ^
  ISum28Vz ^
  ISum6Vz ^
  ISumUdUpl1 ^
  ISumVzUpl ^
  ��������������������������������������������������������������������������������������������Ŀ
  �  �������� � ࠧ��� ���客�� ����ᮢ                                                      �
  ����������������������������������������������������������������������������������������������
.{ CheckEnter PU3_2014_PerScale
.fields
  Per28
  Per6
  Per1
  PerScaleChange
  PerScaleChangeRTF
.endfields
  Per28 ^
  Per6 ^
  Per1 ^
  PerScaleChange ^
  PerScaleChangeRTF ^
  ����������������������������������������������������������������������������������������������
.}
  ��������������������������������������������������������������������������������������������Ŀ
  �  �������� � �㬬�� ���᫥���, ���쭨���, 㤥ঠ��� � ����ᮢ                             �
  ����������������������������������������������������������������������������������������������
.{ CheckEnter PU3_2014_NACH
.fields
  Mes  MesText
  PrizPrint
  PrizPrintSymb
  PrizSum1
  ProcUd1
  ProcNach281
  ProcNach61
  Sum11
  Sum12
  SumUd1
  Sum28Vz
  Sum6Vz
  Sum1UdUpl
  SumVzUpl
  DateChangePer
.endfields
   Mes ^  MesText ^  PrizPrint ^  PrizPrintSymb ^  PrizSum1 ^   ProcUd1 ^  ProcNach281 ^  ProcNach61 ^ Sum11 ^   Sum12 ^  SumUd1 ^   Sum28Vz ^  Sum6Vz ^  Sum1UdUpl ^  SumVzUpl ^   DateChangePer ^
.}
  ����������������������������������������������������������������������������������������������
  ��������������������������������������������������������������������������������������������Ŀ
  �  �������� � �⠦��                                                                         �
  ����������������������������������������������������������������������������������������������
.{ CheckEnter PU3_2014_Stages
.fields
  //====== �⠦� ======
  ����_�⠦�
  nppSt
  ���_�⠦� ���_�⠦�
  ���_�⠦�_��� ���_�⠦�_���
  ProfCode VidDeyal
  Dop_Pokazat Dop_Rned
.endfields
  ����_�⠦� ^
  nppSt^
  ���_�⠦� ^
  ���_�⠦� ^
  ���_�⠦�_��� ^
  ���_�⠦�_��� ^
  ProfCode ^
  VidDeyal ^
  Dop_Pokazat ^
  Dop_Rned ^
  ����������������������������������������������������������������������������������������������
.}
.fields
  Dolg_ruk
  ���_�㪮����⥫�
  Fio_Buh
  ��᫮ ����� ���
.endfields
  Dolg_ruk ^
  ���_�㪮����⥫� ^
  Fio_Buh ^
  ��᫮ ^ ����� ^ ��� ^
.{ CheckEnter PU_2014_PR4
.fields
  Adv10_Prz
  ���_�ᯮ���⥫�
  ⥫_�ᯮ���⥫�
  FIO_KP
  CodeOKPO
  itognach_��4
  itogVremNetr
  ItogUd1
  Itog28Vz
  Itog6Vz
  ItogUdUpl
  Itog28VzUpl
  Itog6VzUpl
  Dolg_ruk_��4
  ���_�㪮����⥫�_��4
  ��᫮_��4 �����_��4 ���_��4
.endfields
  Adv10_Prz ^
  ���_�ᯮ���⥫� ^
  ⥫_�ᯮ���⥫� ^
  FIO_KP ^
  CodeOKPO ^
  itognach_��4 ^
  itogVremNetr ^
  ItogUd1 ^
  Itog28Vz ^
  Itog6Vz ^
  ItogUdUpl ^
  Itog28VzUpl ^
  Itog6VzUpl ^
  Dolg_ruk_��4 ^
  ���_�㪮����⥫�_��4 ^
  ��᫮_��4 ^ �����_��4 ^ ���_��4 ^
.if PU_2014_DeadLine
.end
.}
.}
.endform

!!!!!!!!!!!!!!!!!!!!!!!!��-3-2014!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'PU3_2014_LMAGNIT' prototype is 'PU3_2014'
.group '��-3'
.group '�⫠���'
.nameinlist '��ଠ ��-3 (䠩� ��� �������� ���⥫��)'
.var
 pach_nmb   : word
 nomer      : word
 Initial1, Initial2,
 EndLineStr : string[1];
 _cnt       : word;
 TrueType   : string[1];
.endvar
!=============================================================================
!   �㭪�� , ����� �㤥� ��।����� �㦭� �� �뢮���� ����뢠����
!   ᪮��� ��� ���
!=============================================================================
.function PriznForLastChar : string;
begin
 PriznForLastChar := '';
 if (KolStag = 0) and (( PrizPrintSymb )) then
   PriznForLastChar := '>';
end.
!=============================================================================
.function WriteInForm(_sum : double; prizn: word) : string;
begin
   WriteInForm := ' ';
   if (_sum <> 0)
     WriteInForm := DoubleToStr(_sum,'[|-]366666666666')
   else if (_sum = 0) and (prizn = 1 or prizn = 0)
     WriteInForm := DoubleToStr(0,'[|-]366666666666')
   // 㯫�祭�� ������ ��� ��� ⨯� ���㤭��� �뢮����� �᫮�
   else if (_sum = 0) and (prizn = 2)
     WriteInForm := DoubleToStr(0,'[|-]366666666666')
end.
.function WriteInFormPr(_sum : double; prizn: word) : string;
begin
   WriteInFormPr := ' ';
   if (_sum <> 0)
     WriteInFormPr := DoubleToStr(_sum,'[|-]366666666666~99')
   else if (_sum = 0) and (prizn = 1)
     WriteInFormPr := DoubleToStr(0,'[|-]366666666666~99')
end.
!=============================================================================
.function SapceOfZeroForTotal(_categ: string): string;
begin
  SapceOfZeroForTotal := ' ';
   if trim( _categ) = '01'
   or trim( _categ) = '02'
   or trim( _categ) = '07'
     if CharF <> 2
       SapceOfZeroForTotal := string(0);
end.
.begin
  pach_nmb:= word(PachNumBegin);
  nomer   := 0;
end.
.{ CheckEnter PU3_2014
.begin
   Initial1 := ���;
   Initial2 := ����⢮;
   if nomer=AllCounter then
      begin
         pach_nmb:= pach_nmb + 1;
         nomer:= 0;
      end
end.
.{?internal;(nomer=0)or(nomer=AllCounter)
.fields
if(Trim(RealInn)<>'',Trim(RealInn),' ')
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(Pred)<>'',UpCase(Trim(Pred)),' ')
LPadCh(string(pach_nmb),'0',9)
if(Trim(string(PersonsNumb))<>'',Trim(string(PersonsNumb)),' ')
if(CharF<>2, DoubleToStr(Pach_NachItog,'[|-]3666666666666'),string(0))
if(CharF<>2, DoubleToStr(Pach_BolnItog,'[|-]3666666666666'),string(0))
if(CharF<>2, if(God>2012, DoubleToStr(Pach_UdItog+Pach_28VzItog+Pach_6VzItog,'[|-]3666666666666'), string(0)),string(0))          // �㬬� 㤥ঠ��� (1%) + ���ᨮ���� ����ᮢ (28%) + ���客�� ����ᮢ (6%) �� ��窥
if(CharF<>2, if(God>2012, DoubleToStr(Pach_UdUplItog+Pach_28VzUplItog+Pach_6VzUplItog,'[|-]3666666666666'), string(0)),string(0)) // �㬬� 㯫�祭���� 㤥ঠ��� (1%) + 㯫�祭��� ����ᮢ 34%(28+6) �� ��窥
.endfields
����=1.6=
<����=^=^=^=^= = =1=
����=��-3=^=^=^=^=^=>
.}
.begin
  nomer:= nomer + 1;
  _cnt    := 0;
  case CharF of
   0: TrueType:= '�'
   1: TrueType:= '�'
   2: TrueType:= '�'
   3: TrueType:= '�'
  end;
end.
.fields
TrueType
if(Trim(RegPFNum)<>'',Trim(RegPFNum),' ')
if(Trim(���客��_�����)<>'',Trim(���客��_�����),' ')
if(Trim(�������)<>'' ,UpCase(Trim(�������)),' ')
if(Trim(Initial1)<>'',UpCase(Trim(Initial1)),' ')
if(Trim(Initial2)<>'',UpCase(Trim(Initial2)),' ')
if(Trim(HP)<>'',UpCase(Trim(HP)),' ')
if(Trim(Dog_Num)<>'',Trim(Dog_Num),' ')
if(day(Dog_Date)<>0,DateToStr(Dog_Date,'DD/MM/YYYY'),' ')
if((CharF <> 2)and(ISum1      <> 0),DoubleToStr(ISum1,   '[|-]3666666666666'), if((CharF <> 2), string(0), ' '))
if((CharF <> 2)and(ISum2      <> 0),DoubleToStr(ISum2,   '[|-]3666666666666'), if((CharF <> 2), string(0), ' '))
if((CharF <> 2)and(ISumUd1    <> 0),DoubleToStr(ISumUd1, '[|-]3666666666666'), if((CharF <> 2), string(0), ' '))
if((CharF <> 2)and(ISum28Vz   <> 0),DoubleToStr(ISum28Vz,'[|-]3666666666666'), if((CharF <> 2), string(0), ' '))
if((CharF <> 2)and(ISum6Vz    <> 0),DoubleToStr(ISum6Vz, '[|-]3666666666666'), if((CharF <> 2), string(0), ' '))
if((CharF <> 2)and(ISumUdUpl1 <> 0),if(God>2012,DoubleToStr(ISumUdUpl1,'[|-]3666666666666'), ' '), if(God>2012, if((CharF <> 2), string(0), ' '), ' '))
if((CharF <> 2)and(ISumVzUpl  <> 0),if(God>2012,DoubleToStr(ISumVzUpl, '[|-]3666666666666'), ' '), if(God>2012, if((CharF <> 2), string(0), ' '), ' '))
if((CharF <> 2),string(KolNach),' ')
if((CharF <> 2),string(KolStag),' ')
curdate
God
if(Trim(Fone_org)<>'',Trim(Fone_org),' ')
if ( TrueType = '�','>','')
.endfields
<��-3=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^= =^=^=^
.{ CheckEnter PU3_2014_PerScale
.}
.{ CheckEnter PU3_2014_NACH
.fields
  Mes
  WriteInForm(Sum11,         PrizSum1)
  WriteInForm(Sum12,         PrizSum1)
  WriteInForm(SumUd1,        PrizSum1)
  WriteInForm(Sum28Vz,       PrizSum1)
  WriteInForm(Sum6Vz,        PrizSum1)
  if(God>2012, WriteInForm(Sum1UdUpl, PrizSum1), ' ')
  if(God>2012, WriteInForm(SumVzUpl,  PrizSum1), ' ')
  WriteInFormPr(ProcUd1,     PrizSum1)
  WriteInFormPr(ProcNach281, PrizSum1)
  WriteInFormPr(ProcNach61,  PrizSum1)
  if (DateChangePer <> '', DateChangePer, ' ')
  PriznForLastChar
.endfields
.{?internal;(PrizPrint=true)and(CharF<>2)
����=^=^=^=^=^=^=^=^=^=^=^=^=^
.}
.}
.{ CheckEnter PU3_2014_Stages
.fields
���_�⠦� ���_�⠦�
if(Trim(ProfCode)<>'' and God<2014,UpCase(Trim(ProfCode)),' ')
if(Trim(VidDeyal)<>'',UpCase(Trim(VidDeyal)),' ')
if(Trim(Dop_Pokazat)<>'',UpCase(Trim(Dop_Pokazat)),' ')
if((Trim(Dop_Rned)<>'') ,UpCase(Trim(Dop_Rned)),' ')
EndLineStr
.endfields
.{?internal;(CharF<>2)or((CharF=2)and(Trim(HP)='03'))
.begin
  EndLineStr := '';
  _cnt       := _cnt + 1;
  if (_cnt = KolStag) EndLineStr := '>';
end.
����=^=^=^=^=^=^=^
.}
.}
.{ CheckEnter PU_2014_PR4
.if PU_2014_DeadLine
.fields
pach_nmb
.endfields
___����� ^ �����
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
end.
.end
.}
.}
.endform
