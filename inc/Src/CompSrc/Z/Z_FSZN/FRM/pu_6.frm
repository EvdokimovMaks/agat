/*
 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
 �                     (c) 1994,2000 ��牆���罔� ���������                    �
 � 蹍オ�        : ���������                                                 �
 � ��痰ガ�       : ����｀皚�� �����                                          �
 � �ム瓱�        : 5.70                                                      �
 � ��Л�腑�┘    : �砒モ��痰� � ���                                          �
 � �癶モ痰▲��覃 : �カュ ��瓱�┤ �■キ譽※�                                  �
 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/
#doc
�砒モ��痰� � ���
#end
.set name = 'FORMPU6'
.hide
.fields
 PersonsNumb : integer
 PachNumBegin: integer
 AllCounter  : word
 RabCounter  : word
 �矗�絎〓�_���ム
 TabN
 Pach_NachItog:double
 Pach_VzItog:double
 Pach_VzItogUpl:double
 ���┼��
 ���
 �砒メ癶�
 ���珥��:word
 God: word
 CharF:word
 CharF1
 CharF2
 CharF3
 CharF4
 Fone_org

 RealInn
 RegPFNum
 Pred
 KPP
 curdate
 HP
 Val1
 KolStag : word
 Okrug : word
 PrizSum1: word   ProcSum1:double  Sum11:double    Sum13:double
 PrizSum2: word   ProcSum2:double  Sum21:double    Sum23:double
 PrizSum3: word   ProcSum3:double  Sum31:double    Sum33:double
 PrizSum4: word   ProcSum4:double  Sum41:double    Sum43:double
 PrizSum5: word   ProcSum5:double  Sum51:double    Sum53:double
 PrizSum6: word   ProcSum6:double  Sum61:double    Sum63:double
 PrizSum7: word   ProcSum7:double  Sum71:double    Sum73:double
 PrizSum8: word   ProcSum8:double  Sum81:double    Sum83:double
 PrizSum9: word   ProcSum9:double  Sum91:double    Sum93:double
 PrizSum10: word  ProcSum10:double Sum101:double   Sum103:double
 PrizSum11: word  ProcSum11:double Sum111:double   Sum113:double
 PrizSum12: word  ProcSum12:double Sum121:double   Sum123:double
 ISum1:double ISum2:double ISum3:double

! ====== 痰�Θ, �����メ� �����キ��爬� ======
 ��━_痰���
 nppSt
 ���_痰��� ���_痰���
 ���_痰���_珥� ���_痰���_珥�
 ProfCode VidDeyal Cod_VidDeyal
 Dop_Pokazat Dop_Rned

 Dolg_ruk
 ���_珮��〓え皀��
 Fio_Buh
 ��甄� �メ閹 ���

 Adv10_Prz:word
 ���_�甎����皀��
 皀�_�甎����皀��
 FIO_KP
 CodeOKPO
 itognach:double
 itogVz:double
 itogVzUpl:double
 Dolg_ruk_��6
 ���_珮�_��6
 ��甄�_��6 �メ閹_��6 ���_��6
.endfields
.{ CheckEnter formpu6Enter

 PersonsNumb  ^
 PachNumBegin ^
 AllCounter   ^
 RabCounter   ^
 �矗�絎〓�_���ム  ^
 TabN             ^
 Pach_NachItog   ^
 Pach_VzItog     ^
 Pach_VzItogUpl  ^
 ���┼��         ^
 ���             ^
 �砒メ癶�        ^
 ���珥��         ^
 God             ^
 CharF           ^
 CharF1          ^
 CharF2          ^
 CharF3          ^
 CharF4          ^
 Fone_org        ^
 RealInn         ^
 RegPFNum        ^
 Pred            ^
 KPP             ^
 curdate         ^
 HP              ^
 Val1            ^
 KolStag         ^
 Okrug           ^

 1. �▲ぅ��� � ��腮甄キ�閻 � ▼����� �� �牀筌瘁┏���讚�� �キ瓱����� 痰��絎���┘
                     ��爬�            �祠��                          �Л��
 PrizSum1    &&&  ProcSum1  &&&&&&&   Sum11  &&&&&&&&&&&&&&&&&&&&&   Sum13  &&&&&&&&&&&&&&&&&&&&&
 PrizSum2    &&&  ProcSum2  &&&&&&&   Sum21  &&&&&&&&&&&&&&&&&&&&&   Sum23  &&&&&&&&&&&&&&&&&&&&&
 PrizSum3    &&&  ProcSum3  &&&&&&&   Sum31  &&&&&&&&&&&&&&&&&&&&&   Sum33  &&&&&&&&&&&&&&&&&&&&&
 PrizSum4    &&&  ProcSum4  &&&&&&&   Sum41  &&&&&&&&&&&&&&&&&&&&&   Sum43  &&&&&&&&&&&&&&&&&&&&&
 PrizSum5    &&&  ProcSum5  &&&&&&&   Sum51  &&&&&&&&&&&&&&&&&&&&&   Sum53  &&&&&&&&&&&&&&&&&&&&&
 PrizSum6    &&&  ProcSum6  &&&&&&&   Sum61  &&&&&&&&&&&&&&&&&&&&&   Sum63  &&&&&&&&&&&&&&&&&&&&&
 PrizSum7    &&&  ProcSum7  &&&&&&&   Sum71  &&&&&&&&&&&&&&&&&&&&&   Sum73  &&&&&&&&&&&&&&&&&&&&&
 PrizSum8    &&&  ProcSum8  &&&&&&&   Sum81  &&&&&&&&&&&&&&&&&&&&&   Sum83  &&&&&&&&&&&&&&&&&&&&&
 PrizSum9    &&&  ProcSum9  &&&&&&&   Sum91  &&&&&&&&&&&&&&&&&&&&&   Sum93  &&&&&&&&&&&&&&&&&&&&&
 PrizSum10d  &&&  ProcSum10 &&&&&&&  Sum101  &&&&&&&&&&&&&&&&&&&&&  Sum103  &&&&&&&&&&&&&&&&&&&&&
 PrizSum11d  &&&  ProcSum11 &&&&&&&  Sum111  &&&&&&&&&&&&&&&&&&&&&  Sum113  &&&&&&&&&&&&&&&&&&&&&
 PrizSum12d  &&&  ProcSum12 &&&&&&&  Sum121  &&&&&&&&&&&&&&&&&&&&&  Sum123  &&&&&&&&&&&&&&&&&&&&&

 �皰��                                ISum1  &&&&&&&&&&&&&&&&&&&&&   ISum2  &&&&&&&&&&&&&&&&&&&&&  ISum3  &&&&&&&&&&&&&&&&&&&&&

2. �▲ぅ��� � ��｀皀 � �甌°� 竅��※閻 矗磴� � �牀筌瘁┏���讚�� 痰�Ε

   ��━_痰���            | nppSt| ���_痰���   | ���_痰���  |���_痰���_珥�|���_痰���_珥�|ProfCode   |VidDeyal   |Cod_VidDeyal|Dop_Pokazat|Dop_Rned
.{ CheckEnter PU6_Stages
   &&&&&&&&&&&&&&&&&&&&& |&&&&& |&&&&&&&&&&&& |&&&&&&&&&&&&|&&&&&&&&&&&& |&&&&&&&&&&&& |&&&&&&&&&& |&&&&&&&&&& |&&&&&&&&&&&|&&&&&&&&&&&|&&&&&&&&&&
.}

 Dolg_ruk           ^
 ���_珮��〓え皀��   ^
 Fio_Buh            ^
 ��甄�              ^
 �メ閹              ^
 ���                ^


.{ CheckEnter PU6PR4
 Adv10_Prz          ^
 ���_�甎����皀��    ^
 皀�_�甎����皀��    ^
 FIO_KP             ^
 CodeOKPO           ^
 itognach           ^
 itogVz             ^
 itogVzUpl          ^
 Dolg_ruk_��6       ^
 ���_珮�_��6        ^
 ��甄�_��6          ^
 �メ閹_��6          ^
 ���_��6            ^
.if PU6DeadLine
.end
.}
.}
.endform
!!!!!!!!!!!!!!!!!!!!!!! ��-6 � 1.04.2012 ���� (��痰���←キ┘ �� 9.02.2012�. �3)!!!!!!!!!!!!!!!!!!!!!!!!!!!
.linkform 'formPU6_01.04.2012_LMAGNIT' prototype is 'FORMPU6'
.nameinlist '��爼� ��-6 �� 1.04.2012 (���� か� �����皚諷 ��瓱皀�ォ)'
.var
 pach_nmb   : word;
 nomer      : word;
 KolNach    : integer;
 Initial1, Initial2,
 EndLineStr : string[1];
 _cnt       : word;
 SumNach    : double;
 SumVz      : double;
 ���瓱���讚覃_�牀罐�� : double;
 TrueType   : string[1];
 InPrizSum1, InPrizSum2, InPrizSum3,InPrizSum4,
 InPrizSum5, InPrizSum6, InPrizSum7, InPrizSum8,
 InPrizSum9, InPrizSum10, InPrizSum11, InPrizSum12 : boolean;
.endvar
!=============================================================================
!   �祗�罔� , ��皰��� ＜ぅ� ��爛ぅ�閧� �礒�� �� �襤�え碎 ���琺��鉗竡
!   瓷�！� ┼� �モ
!=============================================================================
.function PriznForLastChar(_index : word) : string;
begin
 PriznForLastChar := '';
 case _index of
   1:{
      if  (KolStag = 0)and
          ((CharF=2)
            or (
             (not InPrizSum2)and
             (not InPrizSum3)and
             (not InPrizSum4)and
             (not InPrizSum5)and
             (not InPrizSum6)and
             (not InPrizSum7)and
             (not InPrizSum8)and
             (not InPrizSum9)and
             (not InPrizSum10)and
             (not InPrizSum11)and
             (not InPrizSum12)
             )
            ) then PriznForLastChar := '>';
     }
   2:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           (not InPrizSum3)and
           (not InPrizSum4)and
           (not InPrizSum5)and
           (not InPrizSum6)and
           (not InPrizSum7)and
           (not InPrizSum8)and
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
           )
          ) then PriznForLastChar := '>';
     }
   3:{
      if  (KolStag = 0)and
          ((CharF=2)
          or (
           (not InPrizSum4)and
           (not InPrizSum5)and
           (not InPrizSum6)and
           (not InPrizSum7)and
           (not InPrizSum8)and
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
           )
          ) then PriznForLastChar := '>';
   }
   4:{
      if  (KolStag = 0)and
          ((CharF=2)
           or (
           (not InPrizSum5)and
           (not InPrizSum6)and
           (not InPrizSum7)and
           (not InPrizSum8)and
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   5:{
      if  (KolStag = 0)and
          ((CharF=2)
           or (
           (not InPrizSum6)and
           (not InPrizSum7)and
           (not InPrizSum8)and
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          )then PriznForLastChar := '>';
   }
   6:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           (not InPrizSum7)and
           (not InPrizSum8)and
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          )then PriznForLastChar := '>';
   }
   7:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           (not InPrizSum8)and
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   8:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           (not InPrizSum9)and
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
   9:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           (not InPrizSum10)and
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
   }
  10:{
      if  (KolStag = 0)and
          ((CharF=2)
       or (
           (not InPrizSum11)and
           (not InPrizSum12)
          )
          ) then PriznForLastChar := '>';
  }
  11:{
      if  (KolStag = 0)and
          ((CharF=2)or (not InPrizSum12)) then PriznForLastChar := '>';
  }
  12:{ if (KolStag = 0) PriznForLastChar := '>'}
 end;
end.
!=============================================================================
.function WriteInForm(_sum : double; prizn: word) : string;
begin
  WriteInForm := '0,00';
  if (_sum <> 0)
    WriteInForm := DoubleToStr(_sum,'[|-]36666666666667,8899')
  else if (_sum = 0) and (prizn = 1)
    WriteInForm := '0,00';
end.
.function WriteInFormPr(_sum : double; prizn: word) : string;
begin
  WriteInFormPr := '0';
  if (_sum <> 0)
    WriteInFormPr := DoubleToStr(_sum,'[|-]366666666666~99')
  else if (_sum = 0) and (prizn = 1)
    WriteInFormPr := DoubleToStr(0,'[|-]366666666666~99')
end.
!=============================================================================
.function SpaceOfZeroForTotal(_categ: string): string;
begin
  SpaceOfZeroForTotal := ' ';
   if trim( _categ) = '01'
   or trim( _categ) = '02'
   or trim( _categ) = '07'
     if CharF <> 2
       SpaceOfZeroForTotal := 0;
end.
.begin
  pach_nmb:= PachNumBegin
  nomer   := 0
  KolNach := 0
  SumNach := 0
  SumVz   := 0
end.
.{ CheckEnter formpu6Enter
.begin
   Initial1 := ���;
   Initial2 := �砒メ癶�;
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
LPadCh(pach_nmb, '0', 5)
if(CharF = 0, '�',if(CharF = 1, '�', if(CharF = 2, '�', if(CharF = 3, '�',' '))))
if(���珥�� = 1,1,if(���珥�� = 12, 2, if(���珥�� = 123, 3, if(���珥�� = 1234, 4,' '))))
God

if(CharF<>2, DoubleToStr(Pach_NachItog,'[|-]36666666666667,8899'),' ')
if(CharF<>2, DoubleToStr(Pach_VzItog,'[|-]36666666666667,8899'),' ')
if(CharF<>2, DoubleToStr(Pach_VzItogUpl,'[|-]36666666666667,8899'),' ')
if(Trim(PersonsNumb)<>'',Trim(PersonsNumb),' ')  // ���-〓 ��痰�� � ��腦�
.endfields
����=1.5=
<����=^=^=^=^=^=^=^=^=^=^=^=>
.}
.begin
  nomer:= nomer + 1;
  KolNach:= 0
  SumNach:= 0
  SumVz  := 0
  _cnt    := 0;
  case CharF of
   0: TrueType:= '�'
   1: TrueType:= '�'
   2: TrueType:= '�'
   3: TrueType:= '�'
  end;
  case ���珥�� of
   1:    ���珥��:= 1
   12:   ���珥��:= 2
   123:  ���珥��:= 3
   1234: ���珥��:= 4
  end;

  InPrizSum1 := false; InPrizSum2 := false;
  InPrizSum3 := false; InPrizSum4 := false;
  InPrizSum5 := false; InPrizSum6 := false;
  InPrizSum7 := false; InPrizSum8 := false;
  InPrizSum9 := false; InPrizSum10 := false;
  InPrizSum11 := false; InPrizSum12 := false;
 if (Sum11 <> 0)
 or (Sum13 <> 0)
 or (PrizSum1 = 1)  then
  begin
    SumNach:= SumNach + double(Sum11);
    SumVz  := SumVz + Sum13;
    KolNach:= KolNach+1;
    InPrizSum1 := true;
  end;
 if (Sum21 <> 0)
 or (Sum23 <> 0)
 or (PrizSum2 = 1) then
  begin
    SumNach:= SumNach + Sum21;
    SumVz  := SumVz +   Sum23;
    KolNach:= KolNach+1;
    InPrizSum2 := true;
  end;
 if (Sum31 <> 0)
 or (Sum33 <> 0)
 or (PrizSum3 = 1) then
  begin
    SumNach:= SumNach + Sum31;
    SumVz  := SumVz +   Sum33;
    KolNach:= KolNach+1;
    InPrizSum3 := true;
  end;
 if (Sum41 <> 0)
 or (Sum43 <> 0)
 or (PrizSum4 = 1) then
  begin
    SumNach:= SumNach + Sum41;
    SumVz  := SumVz +   Sum43;
    KolNach:= KolNach+1;
    InPrizSum4 := true;
  end;
 if (Sum51 <> 0)
 or (Sum53 <> 0)
 or (PrizSum5 = 1) then
  begin
    SumNach:= SumNach + Sum51;
    SumVz  := SumVz +   Sum53;
    KolNach:= KolNach+1;
    InPrizSum5 := true;
  end;
 if (Sum61 <> 0)
 or (Sum63 <> 0)
 or (PrizSum6 = 1) then
  begin
    SumNach:= SumNach + Sum61;
    SumVz  := SumVz +   Sum63;
    KolNach:= KolNach+1;
    InPrizSum6 := true;
  end;
 if (Sum71 <> 0)
 or (Sum73 <> 0)
 or (PrizSum7 = 1) then
  begin
    SumNach:= SumNach + Sum71;
    SumVz  := SumVz +   Sum73;
    KolNach:= KolNach+1;
    InPrizSum7 := true;
  end;
 if (Sum81 <> 0)
 or (Sum83 <> 0)
 or (PrizSum8 = 1) then
  begin
    SumNach:= SumNach + Sum81;
    SumVz  := SumVz +   Sum83;
    KolNach:= KolNach+1;
    InPrizSum8 := true;
  end;
 if (Sum91 <> 0)
 or (Sum93 <> 0)
 or (PrizSum9 = 1) then
  begin
    SumNach:= SumNach + Sum91;
    SumVz  := SumVz +   Sum93;
    KolNach:= KolNach+1;
    InPrizSum9 := true;
  end;
 if (Sum101 <> 0)
 or (Sum103 <> 0)
 or (PrizSum10 = 1) then
  begin
    SumNach:= SumNach + Sum101;
    SumVz  := SumVz +   Sum103;
    KolNach:= KolNach+1;
    InPrizSum10 := true;
  end;
 if (Sum111 <> 0)
 or (Sum113 <> 0)
 or (PrizSum11 = 1) then
  begin
    SumNach:= SumNach + Sum111;
    SumVz  := SumVz +   Sum113;
    KolNach:= KolNach+1;
    InPrizSum11 := true;
  end;
 if (Sum121 <> 0)
 or (Sum123 <> 0)
 or (PrizSum12 = 1) then
  begin
    SumNach:= SumNach + Sum121;
    SumVz  := SumVz +   Sum123;
    KolNach:= KolNach+1;
    InPrizSum12 := true;
  end;
end.
.begin
���瓱���讚覃_�牀罐�� := 0.00;
if(���瓱���讚覃_�牀罐�� < ProcSum1)
     ���瓱���讚覃_�牀罐�� := ProcSum1;
if(���瓱���讚覃_�牀罐�� < ProcSum2)
     ���瓱���讚覃_�牀罐�� := ProcSum2;
if(���瓱���讚覃_�牀罐�� < ProcSum3)
     ���瓱���讚覃_�牀罐�� := ProcSum3;
if(���瓱���讚覃_�牀罐�� < ProcSum4)
     ���瓱���讚覃_�牀罐�� := ProcSum4;
if(���瓱���讚覃_�牀罐�� < ProcSum5)
     ���瓱���讚覃_�牀罐�� := ProcSum5;
if(���瓱���讚覃_�牀罐�� < ProcSum6)
     ���瓱���讚覃_�牀罐�� := ProcSum6;
if(���瓱���讚覃_�牀罐�� < ProcSum7)
     ���瓱���讚覃_�牀罐�� := ProcSum7;
if(���瓱���讚覃_�牀罐�� < ProcSum8)
     ���瓱���讚覃_�牀罐�� := ProcSum8;
if(���瓱���讚覃_�牀罐�� < ProcSum9)
     ���瓱���讚覃_�牀罐�� := ProcSum9;
if(���瓱���讚覃_�牀罐�� < ProcSum10)
     ���瓱���讚覃_�牀罐�� := ProcSum10;
if(���瓱���讚覃_�牀罐�� < ProcSum11)
     ���瓱���讚覃_�牀罐�� := ProcSum11;
if(���瓱���讚覃_�牀罐�� < ProcSum12)
     ���瓱���讚覃_�牀罐�� := ProcSum12;
end.
.fields
TrueType
if(Trim(RegPFNum) <> '',Trim(RegPFNum),' ')
if(Trim(�矗�絎〓�_���ム)<>'',Trim(�矗�絎〓�_���ム),' ')
if(Trim(���┼��)  <> '' ,UpCase(Trim(���┼��)),' ')
if(Trim(Initial1 )<> '',UpCase(Trim(Initial1)),' ')
if(Trim(Initial2) <> '',UpCase(Trim(Initial2)),' ')
if(���瓱���讚覃_�牀罐�� <> 0.00, DoubleToStr(���瓱���讚覃_�牀罐��, '\2p[|-]3666 666 666 666 666 667,8'), ' ')

if((CharF <> 2)and(ISum1 <> 0),DoubleToStr(ISum1,'[|-]36666666666667,8899'), SpaceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum2 <> 0),DoubleToStr(ISum2,'[|-]36666666666667,8899'), SpaceOfZeroForTotal(HP))
if((CharF <> 2)and(ISum3 <> 0),DoubleToStr(ISum3,'[|-]36666666666667,8899'), SpaceOfZeroForTotal(HP))
if(CharF <> 2,KolNach,' ')
KolStag
curdate
���珥��
God
if(Trim(Fone_org)<>'',Trim(Fone_org),' ')
if ( TrueType = '�','','') // �� ＜ゃ薀� 瓩カ�碎: メ�� � 腑��▲�� �モ ����瓮� � 痰�Ε � �皙キ闔��� 筮爼�, 皰 痰�※碎 '>'
.endfields
<��-6=^=^=^=^=^=^=^= =^=^=^=^=^=^=^=^=^=^
.fields
WriteInForm(Sum11, PrizSum1)   WriteInForm(Sum13, PrizSum1)     PriznForLastChar(1)
WriteInForm(Sum21, PrizSum2)   WriteInForm(Sum23, PrizSum2)     PriznForLastChar(2)
WriteInForm(Sum31, PrizSum3)   WriteInForm(Sum33, PrizSum3)     PriznForLastChar(3)
WriteInForm(Sum41, PrizSum4)   WriteInForm(Sum43, PrizSum4)     PriznForLastChar(4)
WriteInForm(Sum51, PrizSum5)   WriteInForm(Sum53, PrizSum5)     PriznForLastChar(5)
WriteInForm(Sum61, PrizSum6)   WriteInForm(Sum63, PrizSum6)     PriznForLastChar(6)
WriteInForm(Sum71, PrizSum7)   WriteInForm(Sum73, PrizSum7)     PriznForLastChar(7)
WriteInForm(Sum81, PrizSum8)   WriteInForm(Sum83, PrizSum8)     PriznForLastChar(8)
WriteInForm(Sum91, PrizSum9)   WriteInForm(Sum93, PrizSum9)     PriznForLastChar(9)
WriteInForm(Sum101, PrizSum10) WriteInForm(Sum103, PrizSum10)   PriznForLastChar(10)
WriteInForm(Sum111, PrizSum11) WriteInForm(Sum113, PrizSum11)   PriznForLastChar(11)
WriteInForm(Sum121, PrizSum12) WriteInForm(Sum123, PrizSum12)   PriznForLastChar(12)
.endfields
.{?internal;(InPrizSum1=true)and(CharF<>2)
����=1=^=^= =^
.}
.{?internal;(InPrizSum2=true)and(CharF<>2)
����=2=^=^= =^
.}
.{?internal;(InPrizSum3=true)and(CharF<>2)
����=3=^=^= =^
.}
.{?internal;(InPrizSum4=true)and(CharF<>2)
����=4=^=^= =^
.}
.{?internal;(InPrizSum5=true)and(CharF<>2)
����=5=^=^= =^
.}
.{?internal;(InPrizSum6=true)and(CharF<>2)
����=6=^=^= =^
.}
.{?internal;(InPrizSum7=true)and(CharF<>2)
����=7=^=^= =^
.}
.{?internal;(InPrizSum8=true)and(CharF<>2)
����=8=^=^= =^
.}
.{?internal;(InPrizSum9=true)and(CharF<>2)
����=9=^=^= =^
.}
.{?internal;(InPrizSum10=true)and(CharF<>2)
����=10=^=^= =^
.}
.{?internal;(InPrizSum11=true)and(CharF<>2)
����=11=^=^= =^
.}
.{?internal;(InPrizSum12=true)and(CharF<>2)
����=12=^=^= =^
.}
.{ CheckEnter PU6_Stages
.fields
If(CharF<>2, ���_痰���, ' ')
If(CharF<>2, ���_痰���, ' ')

// �襪カ錺� ├ 痰牀�� "��� �牀筌瘁┬ (ぎ�Ν�痰�)"
if(Trim(ProfCode)<>'',
  if (Pos('.',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode)))) > 0,
    SubStr(Trim(ProfCode), 1, Pos('.',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode))))-1),
    if (Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode)))) > 0,
      SubStr(Trim(ProfCode), 1, Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode))))-1),
  UpCase(Trim(ProfCode)))),
' ')

// �襪カ錺� ├ 痰牀�� "��お�� �牀筌瘁┬ (ぎ�Ν�痰�)"
if(Trim(ProfCode)<>'',
  if (Length(Trim(ProfCode)) <= 6,
    ' ',
    if (Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) = 0,
      if (Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode)))) = 0,
        SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode))),
      ' '),
      if (Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) > 1,
        SubStr(Trim(ProfCode), 7, Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode))))-1),
        ' '))),
' ')

// �襪カ錺� ├ 痰牀�� "��� �牀├〓き�� �牀筌瘁┬ ��｀腑�� ┼� ぎ�Ν�痰� 甄礒�薀��"
if(Trim(ProfCode)<>'',
  if (Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) > 0 and Length(Trim(ProfCode)) <> Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode))))+6
    and Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode)))) = 0,
    SubStr(Trim(ProfCode), Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode))))+7, Length(Trim(ProfCode))),
    if (Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) > 0 and Length(Trim(ProfCode)) <> Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode))))+6
      and Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode)))) > 0,
      if  (Pos(' ',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) - Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) <> 1,
        Trim(SubStr(Trim(ProfCode), Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode))))+7, Pos(' ',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))) - Pos('.',SubStr(Trim(ProfCode), 7, Length(Trim(ProfCode)))))),
      ' '),
    ' ')),
' ')

// �襪カ錺� ├ 痰牀�� "��� 甎��〓膈┴�"
if(Trim(ProfCode)<>'',
  if (Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode)))) > 0,
    SubStr(Trim(ProfCode), Pos(' ',SubStr(Trim(ProfCode), 1, Length(Trim(ProfCode))))+1, Length(Trim(ProfCode))),
    '1'),
'1')

if(Trim(VidDeyal)    <>'',UpCase(Trim(VidDeyal)),' ')
if(Trim(Cod_VidDeyal)<>'' and Trim(VidDeyal) <> '��������' and Trim(VidDeyal) <> '��������',UpCase(Trim(Cod_VidDeyal)),' ')
if(Trim(Cod_VidDeyal)<>'' and (Trim(VidDeyal) = '��������' or Trim(VidDeyal) = '��������'),UpCase(Trim(Cod_VidDeyal)),' ')

if(Trim(Dop_Pokazat) <>'' and CharF <> 2, UpCase(Trim(Dop_Pokazat)),' ')
if(Trim(Dop_Rned)    <>'' and CharF <> 2, UpCase(Trim(Dop_Rned)),' ')
EndLineStr
.endfields
.begin
  EndLineStr := '';
  _cnt       := _cnt + 1;
  if (_cnt = KolStag) EndLineStr := '>';
end.
����=^=^=^=^=^= = =^=^=^=^=^=^=^
.}
.{ CheckEnter PU6PR4
.if PU6DeadLine
.fields
pach_nmb
.endfields
___����� ^ �����
.begin
  pach_nmb:= pach_nmb + 1;
  nomer:= 0;
  KolNach := 0
  SumNach := 0
  SumVz   := 0
end.
.end
.}
.}
.endform
