//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� ������ �����⨪�
// ������ ���⥦�� �� ���
//------------------------------------------------------------------------------

#doc
"������ ���⥦�� �� ���"
#end
.set name='ReeGTD'
.hide
.nameinlist '������ ��� (������� �ଠ)'
.var
  NalogParamTxt: string
  SopNalogParamTxt: string
.endvar
.fields
!.{ReeGTD_Sopr CheckEnter   // ���
  SoprNRec: comp
  DscSopr DesGrSopr nSopr DscAndNomer dSopr:date:'m:DD/MM/YYYY'
  SoprName
  BaseDocNo
  OrgName OrgINN GruzFrom GruzFromINN GruzTo GruzToINN
  dOpr:date:'m:DD/MM/YYYY'
  dPrice:date:'m:DD/MM/YYYY'
  NazName
  NazCode
  NalVhod
!.{ReeGTD_SpSopr CheckEnter   // ᯥ�䨪��� ���
  SpSoprNRec: comp
  Nam Bar OtpEd Kol tmpMas tmpVol
  Price:double PriceNoNal:double PriceWNal:double
  Sum:double SumNoNal:double SumNalPos:double SumWNal:double
  PriceV:double PriceVNoNal:double PriceVWNal:double
  SumV:double SumVNoNal:double SumVNalPos:double SumVWNal:double
  SimVal ValBasToOt
  PriceVdoc SumVdoc SimValDoc Party
!  OrdPriceR OrdPriceV
  NDS:double NDSv:double AKC:double AKCv:double
  NPP1:double NPP1v:double NPP2:double NPP2v:double
  NPP3:double NPP3v:double NPP4:double NPP4v:double
  NPP5:double NPP5v:double NPP6:double NPP6v:double
!.{ReeGTD_SpDocNal CheckEnter   // ������
  SpDocNalNRec: comp
  NalogName: string
  NalogNpp: word
  NalogPerc: double
  NalogSumNal: double
  NalogVal: string
  NalogSumVal: double
  NalogSumma: double
  NalogOrg: string
  NalogParam: word
!.}   // ������
!.{ReeGTD_SoprHoz CheckEnter   // ���⥦�
  SpSopHozNRec: comp
  SoprHozNRec: comp
  PlatDatOb: date
  PlatKolOpl: double
  PlatSumOpl: double
  PlatSumOplV: double
  PlatValOpl: double
  PlatTiDkGal: word
  PlatTiDkGalTxt: string
  PlatdDoc: date
  PlatNumDoc: string
  PlatSumDoc: double
  PlatSumVDoc: double
  PlatValDoc: string
  PlatComment: string
!.}   // ���⥦�
!.}   // ᯥ�䨪��� ���
!.{ReeGTD_SopSopr CheckEnter   // ����.��㣨
  SopSoprNRec: comp
  SopDscSopr SopDesGrSopr SopnSopr SopDscAndNomer SopdSopr:date:'m:DD/MM/YYYY'
  SopSoprName
  SopBaseDocNo
  SopOrgName SopOrgINN SopGruzFrom SopGruzFromINN SopGruzTo SopGruzToINN
  SopdOpr:date:'m:DD/MM/YYYY'
  SopdPrice:date:'m:DD/MM/YYYY'
  SopNazName
  SopNazCode
  SopNalVhod
!.{ReeGTD_SopSpSopr CheckEnter   // ᯥ�䨪��� ᮯ�.��㣨
  SopSpSoprNRec: comp
  SopNam SopBar SopOtpEd SopKol SoptmpMas SoptmpVol
  SopPrice:double SopPriceNoNal:double SopPriceWNal:double
  SopSum:double SopSumNoNal:double SopSumNalPos:double SopSumWNal:double
  SopPriceV:double SopPriceVNoNal:double SopPriceVWNal:double
  SopSumV:double SopSumVNoNal:double SopSumVNalPos:double SopSumVWNal:double
  SopSimVal SopValBasToOt
  SopPriceVdoc SopSumVdoc SopSimValDoc SopParty
!  OrdPriceR OrdPriceV
  SopNDS:double  SopNDSv:double  SopAKC:double  SopAKCv:double
  SopNPP1:double SopNPP1v:double SopNPP2:double SopNPP2v:double
  SopNPP3:double SopNPP3v:double SopNPP4:double SopNPP4v:double
  SopNPP5:double SopNPP5v:double SopNPP6:double SopNPP6v:double
!.{ReeGTD_SopSpDocNal CheckEnter   // ������
  SopSpDocNalNRec: comp
  SopNalogName: string
  SopNalogNpp: word
  SopNalogPerc: double
  SopNalogSumNal: double
  SopNalogVal: string
  SopNalogSumVal: double
  SopNalogSumma: double
  SopNalogOrg: string
  SopNalogParam: word
!.}   // ������
!.{ReeGTD_SopSoprHoz CheckEnter   // ���⥦�
  SopSpSopHozNRec: comp
  SopSoprHozNRec: comp
  SopPlatDatOb: date
  SopPlatKolOpl: double
  SopPlatSumOpl: double
  SopPlatSumOplV: double
  SopPlatValOpl: double
  SopPlatTiDkGal: word
  SopPlatTiDkGalTxt: string
  SopPlatdDoc: date
  SopPlatNumDoc: string
  SopPlatSumDoc: double
  SopPlatSumVDoc: double
  SopPlatValDoc: string
  SopPlatComment: string
!.}   // ���⥦�
!.}   // ᯥ�䨪��� ᮯ�.��㣨
!.}   // ����.��㣨
!.}   // ���
.endfields
.{ReeGTD_Sopr CheckEnter   // ���
 NRec:                  ^
 ���ਯ�� ���������:  ^
 ��� ��㯯� ���짮��⥫�� ^
 ����� ���������:       ^
 ����� � ���ਯ�஬:  ^
 ��� ���������:        ^
 �ਬ�砭�� � ���������:^
 ���㬥��-�᭮�����:    ^
 ����ࠣ���:            ^  ��� ^
 ��㧮��ࠢ�⥫�:      ^  ��� ^
 ��㧮�����⥫�:       ^  ��� ^
 ��� ���室/ᯨᠭ��: ^
 ��� 業:              ^
 ������������ �����祭�� ^
 ��� �����祭��         ^
 ������:                ^ � �⮨����� ��/���
.{ReeGTD_SpSopr CheckEnter   // ᯥ�䨪��� ���
   NREC ����樨 ^
   ������������ ����樨 ^
   ������������ ����� ^
   ���᪭�� ������    ^
   ������⢮           &'&&&&&&&&&&&&&.&&&
   ���                  &'&&&&&&&&&&&&&.&&&
   ��ꥬ                &'&&&&&&&&&&&&&.&&&
   ���� �� ���㬥���    &&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
   �⮨����� �� ���㬥�.&&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  ������ &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
   ���� � ������� �����&&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
   �⮨� � ���.�����   &&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  ������ &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
   ������� �����       ^
   ���� ������ ���⮢  &&&&&&&&&&&.&&&&&
   ���� � �����        &'&&&&&&&&&&&&&.&&&
   �⮨����� � �����   &'&&&&&&&&&&&&&.&&&
   �����               ^
   �����               ^
!   ���� �� �थ�       &'&&&&&&&&&&&&&.&&&   � ����� &'&&&&&&&&&&&&&.&&&
   ------------------------------------------------------
   ���      &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   ��樧    &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   �����1   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   �����2   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   �����3   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   �����4   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   �����5   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
   �����6   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
.{ReeGTD_SpDocNal CheckEnter   // ������
     NRec           ^
     �������� ������:    ^
     �����:              ^
     ��業⭠� �⠢��:  &&&&&&&&&&&&&&.&&
     �㬬� � ���.������: &&&&&&&&&&&&&&.&&
     ����� ������:      ^
     �㬬� � ���.����.: &&&&&&&&&&&&&&.&&
     �㬬� � ���:        &&&&&&&&&&&&&&.&&
     �࣠������:        ^
     ��ࠬ����:          &&&&&&&&&&&&&&&&&
.begin
  NalogParamTxt := if ((NalogParam and 1) = 0, '-', '�')+
                   if ((NalogParam and 2) = 0, '-', '�')+
                   if ((NalogParam and 4) = 0, '-', '�');
end.
.}   // ������
���⥦�
.{ReeGTD_SoprHoz CheckEnter   // ���⥦�
     SpSopHozNRec: comp        ^
     SoprHozNrec: comp         ^
     ��� ����樨:            ^
     ������⢮ ����祭����:   &&&&&&&&&&&&&&.&&
     �㬬� ����祭����:        &&&&&&&&&&&&&&.&&
     �㬬� ����祭���� � ���.: &&&&&&&&&&&&&&.&&
     ����� ����樨:          ^
     ��� ���㬥��:            ^
     ��� ���㬥��:            ^
     ��� ���㬥��:           ^
     ����� ���㬥��:          ^
     �㬬� ���㬥��:          &&&&&&&&&&&&&&.&&
     �㬬� ���㬥�� � �����: &&&&&&&&&&&&&&.&&
     ����� ���㬥��:         ^
     �ਬ�砭��:               ^
.}   // ���⥦�
.}   // ᯥ�䨪��� ���
���������騥 ��㣨 ��㣨� ����ࠣ��⮢
.{ReeGTD_SopSopr CheckEnter   // ����.��㣨
      NRec:                  ^
      ���ਯ�� ���������:  ^
      ��� ��㯯� ���짮��⥫�� ^
      ����� ���������:       ^
      ����� � ���ਯ�஬:  ^
      ��� ���������:        ^
      �ਬ�砭�� � ���������:^
      ���㬥��-�᭮�����:    ^
      ����ࠣ���:            ^  ��� ^
      ��㧮��ࠢ�⥫�:      ^  ��� ^
      ��㧮�����⥫�:       ^  ��� ^
      ��� ���室/ᯨᠭ��: ^
      ��� 業:              ^
      ������������ �����祭�� ^
      ��� �����祭��         ^
      ������:                ^ � �⮨����� ��/���
.{ReeGTD_SopSpSopr CheckEnter   // ᯥ�䨪��� ᮯ�.��㣨
        NRec: comp       ^
        ������������ ����樨 ^
        ������������ ����� ^
        ���᪭�� ������    ^
        ������⢮           &'&&&&&&&&&&&&&.&&&
        ���                  &'&&&&&&&&&&&&&.&&&
        ��ꥬ                &'&&&&&&&&&&&&&.&&&
        ���� �� ���㬥���    &&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
        �⮨����� �� ���㬥�.&&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  ������ &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
        ���� � ������� �����&&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
        �⮨� � ���.�����   &&&&&&&&&&&&&&&.&&&  ��� ������� &&&&&&&&&&&&&&&.&&&  ������ &&&&&&&&&&&&&&&.&&&  � �������� &&&&&&&&&&&&&.&&&
        ������� �����       ^
        ���� ������ ���⮢  &&&&&&&&&&&.&&&&&
        ���� � �����        &'&&&&&&&&&&&&&.&&&
        �⮨����� � �����   &'&&&&&&&&&&&&&.&&&
        �����               ^
        �����               ^
!        ���� �� �थ�       &'&&&&&&&&&&&&&.&&&   � ����� &'&&&&&&&&&&&&&.&&&
        ------------------------------------------------------
        ���      &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        ��樧    &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        �����1   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        �����2   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        �����3   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        �����4   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        �����5   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
        �����6   &&&&&&&&&&&&&&.&&  &&&&&&&&&&&&&&.&&
.{ReeGTD_SopSpDocNal CheckEnter   // ������
          NRec           ^
          �������� ������:    ^
          �����:              ^
          ��業⭠� �⠢��:  &&&&&&&&&&&&&&.&&
          �㬬� � ���.������: &&&&&&&&&&&&&&.&&
          ����� ������:      ^
          �㬬� � ���.����.: &&&&&&&&&&&&&&.&&
          �㬬� � ���:        &&&&&&&&&&&&&&.&&
          �࣠������:        ^
          ��ࠬ����:          &&&&&&&&&&&&&&&&&
.begin
  SopNalogParamTxt := if ((SopNalogParam and 1) = 0, '-', '�')+
                      if ((SopNalogParam and 2) = 0, '-', '�')+
                      if ((SopNalogParam and 4) = 0, '-', '�');
end.
.}   // ������
���⥦�
.{ReeGTD_SopSoprHoz CheckEnter        // ���⥦�
          SopSpSopHozNRec:          ^
          SopSoprHozNRec:           ^
          ��� ����樨:            ^
          ������⢮ ����祭����:   &&&&&&&&&&&&&&.&&
          �㬬� ����祭����:        &&&&&&&&&&&&&&.&&
          �㬬� ����祭���� � ���.: &&&&&&&&&&&&&&.&&
          ����� ����樨:          ^
          ��� ���㬥��:            ^
          ��� ���㬥��:            ^
          ��� ���㬥��:           ^
          ����� ���㬥��:          ^
          �㬬� ���㬥��:          &&&&&&&&&&&&&&.&&
          �㬬� ���㬥�� � �����: &&&&&&&&&&&&&&.&&
          ����� ���㬥��:         ^
          �ਬ�砭��:               ^
.}   // ���⥦�
.}   // ᯥ�䨪��� ᮯ�.��㣨
.}   // ����.��㣨
.}   // ���
.endform

#doc
������ ���⥦�� � ࠧ१� ���
#end
.linkform ReeGTD_01 prototype ReeGTD
.nameinlist '������ ���⥦�� � ࠧ१� ���'
.fields
  CommonFormHeader
  NSopr if(longint(dSopr)=0,'',DateToStr(dSopr,'DD/MM/YYYY'))
.endfields
.{ReeGTD_Sopr CheckEnter   // ���
��^��
��                       ���।������ ���⥦� �� ��������� �  ^ �� ^��
�����������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�     �����/��㣠     �  �����   �   ���   �       ����ࠣ���       �      �㬬�       �    � �����    � ��� ��� ��� �� ⮢/�� �    � �����    �
���������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.{ReeGTD_SpSopr CheckEnter   // ᯥ�䨪��� ���
.{ReeGTD_SpDocNal CheckEnter   // ������
.}   // ������
.{ReeGTD_SoprHoz CheckEnter   // ���⥦�
.fields
  Nam PlatNumDoc if(longint(PlatdDoc)=0,'',DateToStr(PlatdDoc,'DD/MM/YYYY'))
  OrgName PlatSumDoc PlatSumVDoc PlatValDoc PlatSumOpl PlatSumOpl*PlatSumVDoc/PlatSumDoc
.endfields
���@@@@@@@@@@@@@@@@@@@@@@���@~@@@@@@@@���@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&.&& @@@@@�&'&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&.&&���
.}   // ���⥦�
.}   // ᯥ�䨪��� ���
.{ReeGTD_SopSopr CheckEnter   // ����.��㣨
.{ReeGTD_SopSpSopr CheckEnter   // ᯥ�䨪��� ᮯ�.��㣨
.{ReeGTD_SopSpDocNal CheckEnter   // ������
.}   // ������
.{ReeGTD_SopSoprHoz CheckEnter        // ���⥦�
.fields
  SopNam SopPlatNumDoc if(longint(SopPlatdDoc)=0,'',DateToStr(SopPlatdDoc,'DD/MM/YYYY'))
  SopOrgName SopPlatSumDoc SopPlatSumVDoc SopPlatValDoc SopPlatSumOpl SopPlatSumOpl*SopPlatSumVDoc/SopPlatSumDoc
.endfields
���@@@@@@@@@@@@@@@@@@@@@@���@~@@@@@@@@���@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&.&& @@@@@�&'&&&&&&&&&&&&&.&&�&'&&&&&&&&&&&.&&���
.}   // ���⥦�
.}   // ᯥ�䨪��� ᮯ�.��㣨
.}   // ����.��㣨
���������������������������������������������������������������������������������������������������������������������������������������������������������
.}   // ���
.endform