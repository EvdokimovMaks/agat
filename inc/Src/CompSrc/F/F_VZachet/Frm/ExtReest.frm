//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.70 - ��壠���᪨� ������
// ����� ॥��஢ ��।������ ���⥦� �� ���
//------------------------------------------------------------------------------

!#include predefs.inc

#doc
����� ॥��஢ ��।������ ���⥦� �� ���
#end
.Form 'ExtReest'
.NameInList '������ �� ���⥦�'
.Hide
.fields
  NRec     : comp
  TipDoc   : word
  cSigners : comp
.endfields
^ ^ ^
.endform

.linkform 'Ree_1' prototype is 'ExtReest'
.NameInList '������ ��।������ ���⥦���� ���㬥�� �� ��������/��⠬'
.declare
#include FeeSigners.vih
.enddeclare
.var
  iFeeSigners : FeeSigners;
  arrSign_Name : array [1..100] of string;
  arrSign_Role : array [1..100] of string;
  i, j : word;
.endvar
.create view loPlP
var
  NRecPl  : comp;
  wTipDoc : word;
  AllHozDoc : word;

(
  temp,
  VidDocTxt,
  NameMCUsl,
  NameMCUsl1,
  k_Valut,
  k_Valut1,
  ValDo,
  ValDo1
)
As select
 ' ',
 ' ',
 if(SpSopr.PrMC=1,KatMC.Name,KatUsl.Name),
 if(SpSopr1.PrMC=1,KatMC1.Name,KatUsl1.Name),

 if(SoprHoz.KodValut=0,0,SoprHoz.SumValut/SoprHoz.Summa),
 if(SoprHoz1.KodValut=0,0,SoprHoz1.SumValut/SoprHoz1.Summa),

 if (BaseDoc.TipMoney <> 3,if(sGetTune('NDE.SIMVRUB')<>'',sGetTune('NDE.SIMVRUB'),'��.'),
                    KlValDo.SimVolV),
 if (BaseDocS.TipMoney <> 3,if(sGetTune('NDE.SIMVRUB')<>'',sGetTune('NDE.SIMVRUB'),'��.'),
                    KlValDo1.SimVolV)

from
  //��� ᠬ��� ��� TiDkGal = 70
  PlPor (Normal),

  //��� ������
  BaseFin  (Normal),
  SoprHoz  (Normal),
  SpSopHoz (Normal),
  Oborot   (Normal),
  KatOrg,
  BaseDoc,
  StepDoc,
  SchFact,
  NalogFin (Normal),
  KatNalog (Normal),
  KlVal    (ReadOnly),
  SpSopr,
  KATMC,
  KATUSL,
  synonym BaseFin  BaseFinS,
  synonym SoprHoz  SoprHoz1,
  synonym SpSopHoz SpSopHoz1,
  synonym Oborot   Oborot1,
  synonym KatOrg   KatOrg1,
  synonym KatOrg   KatOrg2,
  synonym BaseDoc  BaseDocS,
  synonym StepDoc  StepDocS,
  synonym SchFact  SchFact1,
  synonym NalogFin NalogFin1,
  synonym KatNalog KatNalog1,
  synonym KlVal    KlVal1,
  synonym KlVal    KlValDo,
  synonym UsersDoc UsersDoc1,
  synonym SpSopr SpSopr1,
  synonym KatSopr   KatSopr1,
  synonym KatMC    KatMC1,
  synonym KatUsl   KatUsl1,
  synonym KatOtpEd KatOtpEd1,
  synonym KlVal    KlValDo1,

  UsersDoc
  , Kontras
  , KatSopr
  , KatOtpEd
where
((
  // ����⢥���� �࣠������
  coGetTune('MyOrg') ==  KatOrg2.nRec       and

  // ������
  nrecPl == PlPor.NRec and
  PlPor.NRec         ==  BaseFin.cPlPor     and
  (
     PlPor.cPlat     =   BaseFin.cOrg       and
     word(1)         =   BaseFin.Direct
  )                                         and
  PlPor.cPlat        ==  KatOrg.NRec        and
  KatOrg.nRec        ==  KontraS.cOrg       and
  BaseFin.cBaseDoc   ==  BaseDoc.NRec       and
  BaseFin.cStepDoc   ==  StepDoc.NRec       and
  BaseFin.TipDoc     ==  SoprHoz.TipDoc     and
  BaseFin.NRec       ==  SoprHoz.cSoprDoc   and
  SoprHoz.NRec       ==  SpSopHoz.cSoprHoz  and
  SoprHoz.NRec       ==  NalogFin.cSoprHoz  and
  NalogFin.cNalog    ==  KatNalog.NRec      and
  BaseDoc.cVal       ==  KlVal.NRec         and
  SoprHoz.TipDoc     ==  Oborot.TiDk        and
  SoprHoz.cSoprDoc   ==  Oborot.cSoprDoc    and
  SoprHoz.NRec       ==  SchFact.cSoprHoz  and
  SchFact.TipUser    ==  UsersDoc.TipUsers
  and SoprHoz.NRec == SpSopHoz.cSoprHoz
  and SpSopHoz.cSpSopr == SpSopr.NRec
  and SpSopr.cSopr == KatSopr.NRec
  and SpSopr.cMCUsl == KatMC.NRec
  and SpSopr.cMCUsl == KatUsl.NRec
  and SpSopr.cOtpEd == KatOtpEd.NRec
  and  BaseDoc.cVal == KlValDo.NRec and

  // �।���, ������ ������⥫��
  PlPor.NRec         ==  BaseFinS.cPlPor    and
  (
     PlPor.cPol      =   BaseFinS.cOrg      and
     word(2)         =   BaseFinS.Direct
  )                                         and
  PlPor.cPol         ==  KatOrg1.NRec       and   // �।���
  BaseFinS.cBaseDoc  ==  BaseDocS.NRec      and   // ��
  BaseFinS.cStepDoc  ==  StepDocS.NRec      and   // ��
  BaseDocS.cVal      ==  KlVal1.NRec        and   // ��
  BaseFinS.TipDoc    ==  SoprHoz1.TipDoc    and   // ���������
  BaseFinS.NRec      ==  SoprHoz1.cSoprDoc  and   // ���������
  SoprHoz1.NRec      ==  SpSopHoz1.cSoprHoz and   // �����᪠ �� ���������
  SoprHoz1.NRec      ==  NalogFin1.cSoprHoz and   // ����祭�� ������
  NalogFin1.cNalog   ==  KatNalog1.NRec     and   // ����祭�� ������
  SoprHoz1.TipDoc    ==  Oborot1.TiDk       and   // �஢���� �� ����� ����
  SoprHoz1.cSoprDoc  ==  Oborot1.cSoprDoc   and   // �஢���� �� ������ ����
  SoprHoz1.NRec      ==  SchFact1.cSoprHoz  and   // ��� 䠪����
  SchFact1.TipUser   ==  UsersDoc1.TipUsers       // ��� 䠪����
  and SoprHoz1.NRec == SpSopHoz1.cSoprHoz
  and SpSopHoz1.cSpSopr == SpSopr1.NRec
  and SpSopr1.cSopr == KatSopr1.NRec
  and SpSopr1.cMCUsl == KatMC1.NRec
  and SpSopr1.cMCUsl == KatUsl1.NRec
  and SpSopr1.cOtpEd == KatOtpEd1.NRec
  and  BaseDocS.cVal == KlValDo1.NRec

));

.fields
  CommonFormHeader
  /*loPlP.VidDocTxt*/ loPlP.PlPor.NoDok
  loPlP.KatOrg.Name loPlP.KatOrg1.Name //������ �।���
  loPlP.PlPor.DatVip if(DateToStr(loPlP.PlPor.DatOB, 'DD/MM/YYYY')='��/��/����','',DateToStr(loPlP.PlPor.DatOB, 'DD/MM/YYYY'))
  loPlP.PlPor.SumPlat loPlP.PlPor.SumPlatV loPlP.KlVal.SimvolV

  loPlP.KatOrg.Name

  loPlP.BaseDoc.NoDoc if(loPlP.BaseDoc.TipMoney = 3,loPlP.BaseFin.SumVal,loPlP.BaseFin.Summa) loPlP.ValDo
  loPlP.NameMCUsl loPlP.KatSopr.NSopr loPlP.KatSopr.dSopr loPlP.SpSopr.Kol loPlP.SpSopHoz.Kolvo loPlP.KatOtpEd.Name
  loPlP.SpSopHoz.Summa - loPlP.SpSopr.SumNDS * (loPlP.SpSopHoz.Kolvo/loPlP.SpSopr.Kol)
  loPlP.SpSopr.SumNDS * (loPlP.SpSopHoz.Kolvo/loPlP.SpSopr.Kol)
  loPlP.SpSopHoz.Summa
  loPlP.SpSopHoz.Summa*k_Valut

.endfields
.var
  Summ, NSum   : double;
  SummV, NSumV : double;
  SumNoNds, SumNds : double;
.endvar
.begin
  loPlP.NrecPl:=NRec;
  loPlP.wTipDoc:=TipDoc;
  if ( loPlP.GetFirst PlPor= 0 )
   {
     loPlP.AllHozDoc:=TipDoc;
   }
  Summ:=0; NSum:=loPlP.PlPor.SumPlat;
  SummV:=0; NSumV:=loPlP.PlPor.SumPlatV;
  SumNoNds := 0;
  SumNds   := 0;
end.
��^��
��
                            �������� ��।������ ���⥦���� ���㬥����
                                    ��� ���������� � ^
     ������ ��"^"��  �।��� ��"^"��
     �믨ᠭ�  ��^��      �஢����� ��^��
     �㬬� ���⥦� �� ���㬥��� ��&#'&&&&&&&&&&&&&&.&&��      �㬬� � ����� ��&#'&&&&&&&&&&&&.&& ^��
�������������������������������������������������������������������������������������������������������������������������������������������
                         �   �����  �   ���   �          �  ���-��  � ������ �                        �㬬� ����祭����
       ������������      ����������/����������/�  ���-��  � ����祭. �����७������������������������������������������������������������
                         �   ���   �  ���    �          �          �         � �㬬� ��� ��� �   ���   �  �ᥣ� � ���  �  � �����
�������������������������������������������������������������������������������������������������������������������������������������������
�������� "^"��
.{table 'loPlP.BaseFin'
��  ���㬥��-�᭮����� � @@@@@@@@                                                                  �� �㬬� &#'&&&&&&&&&.&& @@@@@��
.{table 'loPlP.SpSopHoz'
��  @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &&&&&&.&&& &&&&&&.&&& @~@@@@@@@ &#'&&&&&&&&&.&& &#'&&&.&& &#'&&&&&&&&&.&& &#'&&&&&&&&&&.&&��
.begin
  Summ:=Summ+loPlP.SpSopHoz.Summa;
  SummV:=SummV+loPlP.SpSopHoz.Summa*k_Valut;
  SumNoNds := SumNoNds + (loPlP.SpSopHoz.Summa - loPlP.SpSopr.SumNDS * (loPlP.SpSopHoz.Kolvo/loPlP.SpSopr.Kol));
  SumNds   := SumNds + loPlP.SpSopr.SumNDS * (loPlP.SpSopHoz.Kolvo/loPlP.SpSopr.Kol);
end.
.}
.}
.begin
 NSum:=NSum-Summ; NSumV:=NSumV-SummV;
end.
.fields
  SumNoNds SumNds
  Summ SummV
  if(Round(NSum,3) > 0.001,NSum,0.00) if(Round(NSumV,3) > 0.001,NSumV,0.00)
.endfields
�������������������������������������������������������������������������������������������������������������������������������������������
 �����                                                                         �               �         �               �
   ࠧ��ᥭ�                                                                   �&#'&&&&&&&&&.&&�&#'&&&.&&�&#'&&&&&&&&&.&&�&#'&&&&&&&&&&.&&
   ࠧ����                                                                    �               �         �&#'&&&&&&&&&.&&�&#'&&&&&&&&&&.&&
�������������������������������������������������������������������������������������������������������������������������������������������
.begin
  Summ:=0;
  NSum:=loPlP.PlPor.SumPlat;
  SummV:=0;
  NSumV:=loPlP.PlPor.SumPlatV;
  SumNoNds := 0;
  SumNds   := 0;
end.
.fields
  loPlP.KatOrg1.Name

  loPlP.BaseDocS.NoDoc if(loPlP.BaseDocS.TipMoney = 3,loPlP.BaseFinS.SumVal,loPlP.BaseFinS.Summa) loPlP.ValDo1
  loPlP.NameMCUsl1 loPlP.KatSopr1.NSopr loPlP.KatSopr1.dSopr loPlP.SpSopr1.Kol loPlP.SpSopHoz1.Kolvo loPlP.KatOtpEd1.Name
  loPlP.SpSopHoz1.Summa - loPlP.SpSopr1.SumNDS * (loPlP.SpSopHoz1.Kolvo/loPlP.SpSopr1.Kol)
  loPlP.SpSopr1.SumNDS * (loPlP.SpSopHoz1.Kolvo/loPlP.SpSopr1.Kol)
  loPlP.SpSopHoz1.Summa
  loPlP.SpSopHoz1.Summa*k_Valut
.endfields
���।��� "^"��
.{table 'loPlP.BaseFinS'
��  ���㬥��-�᭮����� � @@@@@@@@                                                                  �� �㬬� &#'&&&&&&&&&.&& @@@@@��
.{table 'loPlP.SpSopHoz1'
��  @@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &&&&&&.&&& &&&&&&.&&& @~@@@@@@@ &#'&&&&&&&&&.&& &#'&&&.&& &#'&&&&&&&&&.&& &#'&&&&&&&&&&.&&��
.begin
  Summ:=Summ+loPlP.SpSopHoz1.Summa;
  SummV:=SummV+loPlP.SpSopHoz1.Summa*k_Valut1;
  SumNoNds := SumNoNds + (loPlP.SpSopHoz1.Summa - loPlP.SpSopr1.SumNDS * (loPlP.SpSopHoz1.Kolvo/loPlP.SpSopr1.Kol));
  SumNds   := SumNds + loPlP.SpSopr1.SumNDS * (loPlP.SpSopHoz1.Kolvo/loPlP.SpSopr1.Kol);
end.
.}
.}
.begin
 NSum:=NSum-Summ; NSumV:=NSumV-SummV;
end.
.fields
  SumNoNds SumNds
  Summ SummV

  if(Round(NSum,3) > 0.001,NSum,0.00) if(Round(NSumV,3) > 0.001,NSumV,0.00)
.endfields
�������������������������������������������������������������������������������������������������������������������������������������������
 �����                                                                         �               �         �               �
   ࠧ��ᥭ�                                                                   �&#'&&&&&&&&&.&&�&#'&&&.&&�&#'&&&&&&&&&.&&�&#'&&&&&&&&&&.&&
   ࠧ����                                                                    �               �         �&#'&&&&&&&&&.&&�&#'&&&&&&&&&&.&&
�������������������������������������������������������������������������������������������������������������������������������������������
.begin
  for (i := 1; i <= 100; i := i + 1)
  {
    arrSign_Name[i] := '';
    arrSign_Role[i] := '';
  }

  i := 0;
  j := 0;

  iFeeSigners.InitFeeSigners(cgReport_VZachet);

  // �����ᠭ�� ᮡ�⢥���� �࣠����樨
  if (iFeeSigners.FindFeeSignersByNRec(cSigners))
    if (iFeeSigners.GetSignerFirst)
      do
      {
        j := j + 1;
        arrSign_Name[j] := iFeeSigners.GetSignerFIO(7);
        arrSign_Role[j] := iFeeSigners.GetSignerRole;

        if (arrSign_Role[j] = '')
          arrSign_Role[j] := iFeeSigners.GetSignerPosition(1);
      }
      while (iFeeSigners.GetSignerNext);
end.
.{?Internal; (j > 0) and (loPlP.PlPor.cPlat = loPlP.PlPor.cPol)
.fields
  if (loPlP.GetFirst KatOrg2 = 0, loPlP.KatOrg2.Name, '')
  loPlP.KatOrg.Name
.endfields
�� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ��
.{ While (i < j) or (i < 2)
.begin
  i := i + 1;
end.
.fields
  arrSign_Role[i]
  arrSign_Name[i]
  if (i = 1, '�㪮����⥫�', if (i = 2, '������ ��壠���', ''))
  ''
.endfields
�� @@@@@@@@@@@@@@@@@@@@@@           @@@@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@@@           @@@@@@@@@@@@@@@@@@@@@@@ ��
.}
.}
.{?Internal; (j > 0) and (loPlP.PlPor.cPlat <> loPlP.PlPor.cPol)
.fields
  if (loPlP.GetFirst KatOrg2 = 0, loPlP.KatOrg2.Name, '')
  loPlP.KatOrg.Name
  loPlP.KatOrg1.Name
.endfields
�� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.{ While (i < j) or (i < 2)
.begin
  i := i + 1;
end.
.fields
  arrSign_Role[i]
  arrSign_Name[i]
  if (i = 1, '�㪮����⥫�', if (i = 2, '������ ��壠���', ''))
  if (i = 1, '�㪮����⥫�', if (i = 2, '������ ��壠���', ''))
.endfields
�� @@@@@@@@@@@@@@@@@         @@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@                   @@@@@@@@@@@@@@@@@                  ��
.}
.}
.endform
