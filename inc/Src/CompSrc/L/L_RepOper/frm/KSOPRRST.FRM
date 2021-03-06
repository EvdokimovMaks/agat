//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.73 - ����� ������ �����⨪�
// ������᪨� ॥���� ���㬥�⮢
//------------------------------------------------------------------------------

#include Responsible.frn

#doc
��ଠ ��� ������᪨� ॥��஢ ���������
#end
.form 'KSoprRst'
.hide
.{
.fields
 wPrintForm    : word
 wTuneVal      : word
 strReestrName : string
 sOrgName      : string
 dBegin        : string
 dEnd          : string
 flgRepStyles  : word
 ValNDE        : string
 ValTar        : string
.endfields
 wPrintForm    ^
 wTuneVal      ^
 strReestrName ^
 sOrgName      ^
 dBegin        ^
 dEnd          ^
 flgRepStyles  ^
 ValNDE        ^
 ValTar        ^

.{ CheckEnter Filter
.fields
 Filter     : string
 Znach      : string
.endfields
 Filter     ^
 Znach      ^
.{ CheckEnter Znach
.fields
 MultiZnach : string
.endfields
 MultiZnach ^
.} // CheckEnter Znach
.} // CheckEnter Filter

.fields
#ResponsibleFields
.endfields
#ResponsibleBody(KSOPRRST)

.{ //main cycle
.{ CheckEnter GroupHeader_KS
.fields
 GroupHeaderName : string
 GroupSum2       : double
 GroupSumV2      : double
 GroupPercentNDE : double
.endfields
 GroupHeaderName ^
 GroupSum2       ^
 GroupSumV2      ^
 GroupPercentNDE ^

.} // CheckEnter GroupHeader_KS

.fields
  nKatSopr   : comp
  CurrencyKS : string
  SpSoprVal
  strDocName2: string
  DocIt      : double
  DocItV     : double
.endfields
  nKatSopr    ^
  CurrencyKS  ^
  SpSoprVal   ^
  strDocName2 ^
  DocIt       ^
  DocItV      ^

.if PrnKSoprSpec
.{CheckEnter PrnKSoprSpec2
.fields
  SpSoprNRec     : comp
  SpSoprName
  SpSoprKod
  KatOtpEdName
  KatOtpEdAbbr
  SpSoprKolOpl   : double
  SpSoprPriceNDE : double
  SpSoprSumNDE   : double
  SpSoprPriceVal : double
  SpSoprSumVal   : double
  SpSoprUks
  SpSoprZatr
.endfields
  SpSoprNRec     ^
  SpSoprName     ^
  SpSoprKod      ^
  KatOtpEdName   ^
  KatOtpEdAbbr   ^
  SpSoprKolOpl   ^
  SpSoprPriceNDE ^
  SpSoprSumNDE   ^
  SpSoprPriceVal ^
  SpSoprSumVal   ^
  SpSoprUks      ^
  SpSoprZatr     ^

.}//CheckEnter PrnKSoprSpec2
.end //if

.{ CheckEnter GroupTotal_KS
.fields
  GroupTotalName : string
  GroupSum       : double
  GroupSumV      : double
.endfields
  GroupTotalName ^
  GroupSum       ^
  GroupSumV      ^

.} // CheckEnter GroupTotal_KS
.} // end of main cycle
.}
.endform


!======================================================================
#doc
��������� �������
#end
.linkform 'KSOPRRST_Reestr03' prototype is 'KSOPRRST'
!======================================================================
.group '��������� �������'
.p 55
.defo landscape
.NameInList '��������� �������'
! ----------------------------------------------------------------------
#include vKSReest.frn
! ----------------------------------------------------------------------
.var
  strGroupSumV    : string;
  strWarning      : string;
  strRekvKontr    : string;
  sBlank          : string;
  boNeedSpecif,
  boCalcInValOtch : boolean;
  i               : integer;
.endvar
#ResponsibleLinkVar
.{
.begin
 boNeedSpecif := ((flgRepStyles and 1 ) <> 0);
 boCalcInValOtch := ((flgRepStyles and 2) <> 0);
 strWarning := if( wPrintForm = 1, '***** ��������! ������ �������, ������� � �������� ������ ������ ***** ��� ��������� ������� ������� �������������� <CTRL>+<P> *****', '');
end.
.fields
 CommonFormHeader
 strWarning
.endfields
�^   ^
.fields
 strReestrName
.endfields
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
!------------------------------------------------------------------------
.{ ?INTERNAL; ((flgRepStyles and word(8)) = 8);
.begin
  if Length(sOrgName) <= 42
  {
    For (i := 1; i < 42 - (Length(sOrgName)); i := i + 1)
       sBlank := sBlank + ' ';

    sOrgName := sOrgName + sBlank;
  }
end.
.fields
 sOrgName
.endfields

 �E^�E
  (������������ �࣠����樨, �।�����)
.}
!------------------------------------------------------------------------
.{ CheckEnter Filter
.{ CheckEnter Znach
.}
.}
!------------------------------------------------------------------------
.fields
  ValNDE
  ValTar
.endfields
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 �᫮��� ����祭�� � ��� ��室�  �   ������������    �   ��� ����樨  �  �᭮����� ����祭�� �       ������������        � ��.  �  ������⢮    �    � @@@@@@        �   � @~@@@@@@@@     �      ���     �  �᭮�����
  �����⢠,ࠡ��, �              �     ����樨      �                  �   �����⢠, ࠡ��,  �      ��ꥪ� ���        � ���. �                �����������������������������������������ĳ   �ਧ�����   � ��� �ਧ�����
    ���, �ࠢ    �              �                   �                  �      ���, �ࠢ     �                           �      �                �      �㬬�         �      �㬬�         � ��ꥪ� ��� � ��ꥪ� ���
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
#ResponsibleLinkInit(KSOPRRST)
.{ //MAIN CYCLE ON KATSOPR's
!------------------------------------------------------------------------
.[h SKIP
.fields
 CommonFormHeader
 strReestrName
  ValNDE
  ValTar
.endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 �������������������������������������������������������������������������������������������������������������������������������������������� ���� � @Np@
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
 �᫮��� ����祭�� � ��� ��室�  �   ������������    �   ��� ����樨  �  �᭮����� ����祭�� �       ������������        � ��.  �  ������⢮    �    � @@@@@@        �   � @~@@@@@@@@     �      ���     �  �᭮�����
  �����⢠,ࠡ��, �              �     ����樨      �                  �   �����⢠, ࠡ��,  �      ��ꥪ� ���        � ���. �                �����������������������������������������ĳ   �ਧ�����   � ��� �ਧ�����
    ���, �ࠢ    �              �                   �                  �      ���, �ࠢ     �                           �      �                �      �㬬�         �      �㬬�         � ��ꥪ� ��� � ��ꥪ� ���
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.]h //HEADER end
!------------------------------------------------------------------------
.{ CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.Fields GroupHeaderName:'T:-' .EndFields
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}//CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.{ table 'vKatSoprRee.KatSopr'
.begin
   strRekvKontr := if( boNeedSpecif, ', ����ࠣ���: ', '' ) + KatOrg.Name + if( Trim( KatOrg.Tel ) <> '' , ', �/�.' + KatOrg.Tel, '' );
end.
.{ ?internal; boNeedSpecif;
.fields
   strDocName2
   PrintNumber( vKatSoprRee.KatSopr.Descr, vKatSoprRee.KatSopr.nSopr )
   KatSopr.dSopr
   '�� � ' + vKatSoprRee.BaseDoc.NoDoc + ' �� ' + DateToStr(vKatSoprRee.BaseDoc.dDoc, 'DD mon YYYY �.')
 .endfields
                                    ^ ��� ^�� ���� ^���� ^��.
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.fields
   KatSopr.dSopr
   PrintNumber( vKatSoprRee.KatSopr.Descr, vKatSoprRee.KatSopr.nSopr )
   strRekvKontr
   DocIt
   DocItV
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; (not boNeedSpecif) and (not boCalcInValOtch);
.fields
   KatSopr.dSopr
   PrintNumber( vKatSoprRee.KatSopr.Descr, vKatSoprRee.KatSopr.nSopr )
   strRekvKontr
   DocIt
   DocItV
   CurrencyKS
.endfields
 @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&& @~@@@@@@@@@@@
.} //.{ ?internal; (not boNeedSpecif) and boCalcInValOtch;
.{ ?internal; boNeedSpecif;

.} //?internal; boNeedSpecif;
.if PrnKSoprSpec
.{CheckEnter PrnKSoprSpec2
.}
.{ table 'vKatSoprRee.SpSopr'
.begin
#include vKSProc.frn
end.
.fields
    NalogExClass1
    NalogExClass2
    NalogAttr1
    if( SpSopr.PrMC = 1, KatMC.Name, KatUsl.Name )
//    if( SpSopr.PrMC = 1, KatMC.BarKod, KatUsl.Kod )
    KatOtpEd.Abbr
    SpSopr.KolFact
//    dblPriceNDE
    dblSumNDE
//    dblPriceVal
    dblSumVal
    NalogAttr2
    NalogAttr3
.endfields
 @@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@                       @@@@@@@@@@@@@@@                          @@@@@@@@@@@@@@@@@@@@@@@@@@  @~@@@@ &'&&&&&&&&.&&&    &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&  @@@@@@@@@@@@  @@@@@@@@@@@@@@@@@@@@
.} //table
.end //if
.} //table KatSopr
.{ ?internal; boNeedSpecif;
                                                                                                 ������������������������������������������������������������������������������������������������������������������������������
.fields
  DocIt
  DocItV
.endfields
                ��   �⮣� �� ���㬥���:                                                                                                              &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&��
.} //.{ ?internal; boNeedSpecif;
.{ CheckEnter GroupTotal_KS; ((flgRepStyles and 4) = 4);
.begin
  strGroupSumV := if( boCalcInValOtch, DoubleToStr( GroupSumV, '[|-]36`666`666`666`666`666.88' ),'');
end.
.{ ?internal; boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
.endfields
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                 &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&��
.} //.{ ?internal; boNeedSpecif;
.{ ?internal; not boNeedSpecif;
.fields
  GroupTotalName:'T:-'
  GroupSum
  strGroupSumV
.endfields
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                                                                         &'&&&&&&&&&&&&&&.&&  &'&&&&&&&&&&&&&&.&&��
.} //.{ ?internal; not boNeedSpecif;
.} //CheckEnter GroupTotal_KS; ((flgRepStyles and 4) = 4);
.} //MAIN CYCLE ON KATSOPR's
.{While (�����_�⢥��⢥�����_��� < ������⢮_�⢥��⢥����_���)
.begin
 �����_�⢥��⢥�����_��� := �����_�⢥��⢥�����_��� + 1;
end.
.fields
  ���ᨢ_�⢥��⢥����_���_��������� [�����_�⢥��⢥�����_���]
  ���ᨢ_�⢥��⢥����_���_���       [�����_�⢥��⢥�����_���]
.endfields

��@@@@@@@@@@@@@@@@@@@@@@@@@��  ____________________    ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                (�������)                            (�.�.�������)
.}
.}
�
.endform

!======================================================
#doc
�������� ������ ���������/�����
#end
.linkform 'KSoprRST_Reestr01' prototype is 'KSoprRST'
!======================================================
.group '�������� ������'
.group '�������� ������_���'
.group '�������� ������_����'
.group '�������� ������_����'
.p 55
.defo landscape
.NameInList '�������� ������ ���������/�����'
.var
 i: word;
.endvar
#ResponsibleLinkVar
.{
.begin
 i := 0; //���稪 ���-�� ��ப � �ଥ
end.
.fields
 CommonFormHeader
.endfields
�^
.fields
 strReestrName
.endfields
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
!------------------------------------------------------------------------
.{ CheckEnter Filter
.{ CheckEnter Znach
.}
.}
!------------------------------------------------------------------------
.fields
  ValNDE
  ValTar
.endfields
 �����������������������������������������������������������������������������������������������������������������������������������������������������������
                                                                                                         �                 �⮣�                 �    � %
                                 ������������ �஢�� ��㯯�஢��                                         ���������������������������������������Ĵ � ��饬�
                                                                                                         �     � @@@@@@      �    � @~@@@@@@@@   �   �⮣�
 �����������������������������������������������������������������������������������������������������������������������������������������������������������
#ResponsibleLinkInit(KSOPRRST)
.{ //MAIN CYCLE ON KATSOPR's
.[h SKIP

.fields CommonFormHeader strReestrName .endfields
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 ����������������������������������������������������������������������������������������������������������������������������������������������� ���� � @Np@

.]h //HEADER end
.{ CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.Fields                              GroupHeaderName:'T:-'                                                  GroupSum2            GroupSumV2    GroupPercentNDE .EndFields
�� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ &'&&&&&&&&&&&&&&.&& &'&&&&&&&&&&&&&&.&&  &&&.&&��
.{ ?INTERNAL; ( i = 0 );
  ����������������������������������������������������������������������������������������������������������������������������������������������������������
.} //
.begin
  i := i + 1;
end.
.}//CheckEnter GroupHeader_KS; ((flgRepStyles and word(4)) = 4);
.if PrnKSoprSpec
.{CheckEnter PrnKSoprSpec2
.}
.end //if
.{ CheckEnter GroupTotal_KS
.} // CheckEnter GroupTotal_KS
.} //MAIN CYCLE ON KATSOPR's
.}
�
.endform

//॥��� �� ��������\��⠬
#include KSopr01.frn
//॥��� �� ��������\��⠬ � ��ꥪ⠬� ��ந⥫��⢠ � ����ﬨ �����
#define KSoprRst_UKS
#include KSopr01.frn
#undef KSoprRst_UKS
