/*
���������������������������������������������������������������������������ͻ
�                     (c) 1994,97 ��௮��� ���������                      �
� �஥��        : ���������                                                 �
� ���⥬�       : ����⨢�� ������                                        �
� �����        : 5.20                                                      �
� �����祭��    : ����� ��⮢-䠪��� (������� �ଠ)                      �
� �⢥��⢥��� : �����쪮 ���⮫�� �������஢�� (Anatoly)                  �
� ��ࠬ����     : ���                                                       �
���������������������������������������������������������������������������ͼ
*/

#doc
����� ��⮢-䠪��� (������� �ଠ)
#end
.set name='Schfrees'
.hide
// ��६����� ��।����� � SfBla2vp.frn
//.var
//  iCountry: MCOriginCountry;
//.endvar
.fields
  CFH          :string   //  CommonFormHeader
  wCountry     :word
  UnnORInn     :string
  Kol_Pr       :byte
  dMinKol      :double
  Nds          :string   //   1 ������������ ���
  Akciz        :string   //   2 ������������ ��樧�
  Nalog2       :string   //   5 ������������ ���. ������
  cNds         :comp     //   6 ��뫪� �� ���
  cAkciz       :comp     //   7           ��樧
  cNalog2      :comp     //  10           ���. �����
  MetodUch     :word     //  11 ��⮤ ��� (0-�� ���.,1-�� ���.,2-�� ����.)
  Stav1        :double   //  12 �⠢�� ��� �᭮����
  Stav2        :double   //  13            ��������.
  Stav3        :double   //  13a           �� ��ᯮ��
  Direct       :word     //  14 ���ࠢ����� (1-�த���, 2-���㯪�)
// ��ࠬ���� ���� ॥��� ��
  pBou         :longint  //  15 ��᪠ ���ﭨ� ���㬥�⮢
  pDoc         :longint  //  15a ��᪠ ⨯�� ���㬥�⮢
  pGroup       :longint  //  15 ����� ��㯯�஢��
  isNDEEqual   :boolean  //  15aa ����� ���-����������
  ppPrintParam :word     //  15ab ��ࠬ���� ����
  ppPrintField :word     //  15ab ��ࠬ���� ����
  AllKontr     :word     //      䨫��� �� ����ࠣ��⠬ (0-��)
  ReeDollar    :string   //  15� ������������ ������ ॥���
  ReeDollarah  :string   //  15� �㬬� � ... �������
  ReeSimvolV   :string   //  15� ᨬ��� ������
  sValNDE      :string

  // ������
  Director     : String   //  15� ��४��
  Main_Buh     : String   //  15� ��. ��壠���
  IP_FIO       : String   //  �������㠫�� �।�ਭ���⥫�, ���
  IP_Info      : String   //  �������㠫�� �।�ਭ���⥫�, ४������
  MemoIP_Info  : String   //  �뢮� �������⥫쭮� ������
  isFootnote   : Boolean  //  �뢮� �������⥫쭮� ������
.endfields
     1234567890123aab45678
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

// 䨫��� �� ���
.if SetDateRange
.fields
  dBeg         :Date     //  16 ���. ���
  dEnd         :Date     //  17 ���. ���
.endfields
 12
 ^^
.end
.fields
//��ਡ��� ᮡ�⢥���� �࣠����樨, ��� ���������, � �� ��.
  pMyOrgName          :string //  19
  pMyOrgAddr          :string //  20
  pMyOrgTel           :string //  21
  pMyOrgSchet         :string //  22
  pMyOrgBank          :string //  23
  pMyOrgGorod         :string //  24
  pMyOrgINN           :string //  25
  pMyOrgOKONH         :string //  26
  pMyOrgOKPO          :string //  27
  pMyOrgBankRemark    :string //  28   ��������� 18/09/97  13:03
  pMyOrgBankAddr      :string //  29
  pMyOrgBankMFO       :string //  30
  pMyOrgBankRKC       :string //  31
  pMyOrgBankSchRKC    :string //  32
  pMyOrgBankSchPlatDoc:string //  33
.endfields
123456789012345
^^^^^^^^^^^^^^^
// �᭮���� 横� �� ��
.{CheckEnter Schf
// ��ࠬ���� ��㯯�஢��
.if HeaderGroup
.fields
 NameGroup : string       // ��������
 KontrGroup: boolean      // ���祭�� ��ࠬ��� ���-��
.endfields
12
^^
.end
// ��ࠬ���� ��
.fields
 nSchfact         : Comp         //   0 nrec ��
 skipInReestr     : Boolean      //   0a �� ������ � ॥���
 wPrStav          : word         //   �ਧ��� ����⭮�� �⠢�� ���.
 // �⠭����� ��. ��� ���४�஢�筮�� �� - ���ଠ�� �� ��室��� ��.
 dFact            : Date         //   1 ��� ��⠢����� ��
 dPost            : Date         //   2 ��� ����祭�� ��
 dReg             : Date         //   3 ��� ॣ����樨 ��
 NSF              : String       //   4 ����� ��
 SF_Src_List      : String       //   ���᮪ ����஢ � ��� ��室��� �� ��� ���४�஢�筮�� ��
 // ���४�஢��� ��
 dFact_CorrV      : Date
 dPost_CorrV      : Date
 dReg_CorrV       : Date
 NSF_CorrV        : String
 // ��ࠢ����� ��室���� ��
 dRevision        : Date
 nRevision        : String
 // ��ࠢ����� ���४�஢�筮�� ��. ���� �� ���⠥���.
 dRevision_CorrV  : Date
 nRevision_CorrV  : String

 NBlanka          :string    //   ����� ������
 sertSerial       :string
 sertNumber       :string
 sertDate         :string
 BaseDoc_NoDoc    :string    //   5 ����� ��
 BaseDoc_dDoc     :Date      //   6 ��� ���. ��
//��
 DogovorDO_NoDoc :string     //  6a ����� �������
 DogovorDO_dDoc  :Date       //  6b ��� ���. �������
 Payment         :word       //  6c �᫮��� ������
 OKED            :string     //  6d ��� ����
//
 ExportImport  :double       //  8 �㬬� ��ᯮ��/������
 SAkciz        :double       //  9  ��樧
 //Belarus
 Tara          :double       //  9a �㬬� �� ��
 Tara_NDS      :double       //  9b �㬬� �� �� � ���
 //
 dblSaleTax    :double       //  9c  ����� � �த��
 S1            :double       //  10  ��� ��� 20%
 S2            :double       //  11  ��� 20%
 S3            :double       //  12  �⮣� �� 20%
 S4            :double       //  13  ��� ��� 10%
 S5            :double       //  14  ��� 10%
 S6            :double       //  15  �⮣� �� 10%
 S23           :double       //  15a ��� ��� 0%
 S8            :double       //  15b ��� 0%
 S9            :double       //  15c �⮣� �� 0%
 S7            :double       //  16  ��� ���
 S10           :double       //  16a ��稥 ������
 S             :double       //  17  �⮣� �� ��
 SOplSt        :double       //  18  �� ����祭�
 SOplSt2       :double       //  18a  �� ��୨஢���
 SReg          :double       //  19  �� ��ॣ����஢���
 SubTip        :word         //  20  ���⨯ �� (SchFact.SubTip)
 // 0-���㧪� 16-����� 19-��稥 ���. 17-���⥦ 27-������ ���⥦� 8-������ ⮢��
 UsersDoc_Name :string       //  21  ����-� ⨯� ��
 TipUser       :word         //  22  ⨯ �� (SchFact.TipUser)
//��ਡ��� ᮡ�⢥���� �࣠����樨
  MyOrgNRec     : Comp   // NRec ᮡ�⢥���� �࣠����樨
  MyOrg_Up_NRec : Comp   // NRec �������� �࣠����樨
  MyOrgName    :string   //  19
  MyOrgAddr    :string   //  20
  MyPostAddr   :string   //  ���⮢� ����
  MyOrgTel     :string   //  21
  MyOrgSchet   :string   //  22
  MyOrgBank    :string   //  23
  MyOrgGorod   :string   //  24
  MyOrgINN     :string   //  25
  MyOrgKPP     :string   //  25a
  MyOrgOKONH   :string   //  26
  MyOrgOKPO    :string   //  27
  MyOrgBankRemark:string //  28   ��������� 18/09/97  13:03
  MyOrgBankAddr:string   //  29
  MyOrgBankMFO:string    //  30
  MyOrgBankRKC:string    //  31
  MyOrgBankSchRKC:string //  32
  MyOrgBankSchPlatDoc:string // 33
//��ਡ��� �࣠����樨-����ࠣ���
  OrgUnnORInn   :string
  OrgNRec       :Comp         // NRec �࣠����樨
  Org_Up_NRec   :Comp         // NRec �������� �࣠����樨
  OrgName       :string       //  22
  OrgAddr       :string       //  23
  PostAddr      :string       //  ���⮢� ����
  OrgTel        :string       //  24
  OrgSchet      :string       //  25
  OrgBank       :string       //  26
  OrgGorod      :string       //  27
  OrgINN        :string       //  28
  OrgKPP        :string       //  28a
  OrgOKONH      :string       //  29
  OrgOKPO       :string       //  30
  OrgBankRemark:string     //  31   ��������� 18/09/97  13:03
  OrgBankAddr:string       //  32
  OrgBankMFO:string        //  33
  OrgBankRKC:string        //  34
  OrgBankSchRKC:string     //  35
  OrgBankSchPlatDoc:string //  36
//��ࠬ���� ��� �� ���� "� ���㬥��� �" (��� ��� �� ���⥦�)
 cPlat         :Comp      //  1 nRec ���
 PlatNo        :string    //  2 �����
 PlatDat       :Date      //  3 ��� ��ࠡ�⪨
 PlatNazn      :string    //  4 �����祭�� �� ���
 PlatNo_Date   :string    //    ���ଠ�� � ���⥦�
 GruzFromNRec  :Comp      //  NRec ��㧮��ࠢ�⥫�
 GruzFrom      :string    //  6 ��㧮��ࠢ�⥫�
 GruzToNRec    :Comp      //  NRec ��㧮�����⥫�
 GruzTo        :string    //  7 ��㧮�����⥫�
// ����� ��
 cSchfVal      :comp      //  8
 Dollar        :string    //  8
 SimvolV       :string    //  10
 ISO           :string
.endfields
0a1234           56abcd*89abc012345abc6a78901 9012345a67890123 2345678a90123456 12345678890
^^^^^^^ ^^^^^^^^ ^^^^^^^^^^*^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^ ^^^^^^^^^
.if Dopol
.fields
  Nazn         :string    //  5 �����祭�� �� ��
  Dollarah     :string    //  9
.endfields
^^
.end
.fields
// �����ᠭ��
  IsValidFeeSigners        : boolean   // True, �᫨ ��㯯� ��࠭�.
  cFeeSignersNRec          : comp      // ��뫪� �� ��࠭��� ��㯯� �����ᠭ⮢
  NameFeeSigners           : string    // ��� ��࠭��� ��㯯� �����ᠭ⮢

  KolSigners_Director      : word

  Signer_nRec_Director     : comp
  Signer_FIO_Director      : string
  Signer_TabN_Director     : longint
  Signer_Position_Director : string
  Signer_Role_Director     : string
  Signer_Dover_Director    : string

  KolSigners_MainBuh       : word

  Signer_nRec_MainBuh      : comp
  Signer_FIO_MainBuh       : string
  Signer_TabN_MainBuh      : longint
  Signer_Position_MainBuh  : string
  Signer_Role_MainBuh      : string
  Signer_Dover_MainBuh     : string
.endfields
  IsValidFeeSigners        - ^
  cFeeSignersNRec          - ^
  NameFeeSigners           - ^

  KolSigners_Director - ^
.{ CheckEnter FeeSignersMember_Schfrees_Dir
  Signer_nRec_Director     - ^
  Signer_FIO_Director      - ^
  Signer_TabN_Director     - ^
  Signer_Position_Director - ^
  Signer_Role_Director     - ^
  Signer_Dover_Director    - ^
.}
  KolSigners_MainBuh - ^
.{ CheckEnter FeeSignersMember_Schfrees_Buh
  Signer_nRec_MainBuh      - ^
  Signer_FIO_MainBuh       - ^
  Signer_TabN_MainBuh      - ^
  Signer_Position_MainBuh  - ^
  Signer_Role_MainBuh      - ^
  Signer_Dover_MainBuh     - ^
.}
// 横� �� ���, �� ����� ᮧ��� ��
.{CheckEnter SchfKatSopr
.fields
 cSopr     : comp       //  0 nRec ���
 NSopr     : string     //  1 �����
 DSopr     : Date       //  2 ��� ���.
 NSoprDO   : string     //  3 ����� ��
 DSoprDO   : Date       //  4 ��� ���. ��
//��
 NSoprDG   : string     //  4a ����� �������
 DSoprDG   : Date       //  4b ��� ���. �������
 SoprPaym  : word       //  4c �᫮��� ������
//
 GruzFromK : string     //  5 ��㧮��ࠢ�⥫�
 GruzToK   : string     //  6 ��㧮�����⥫�
.endfields
01234abc56
^^^^^^^^^^
// 横� �� ᯥ��-� ���
.{CheckEnter SchfSpSopr
.fields
  cSpSopr      :comp         //   1 nRec ����樨 ᯥ��-�
.endfields
1
^
// 横� �� ������� ����樨 ᯥ��-� ���
.{CheckEnter SchfSpSoprNalog
.fields
  cSpDocNal    :Comp         //  1 nRec ������
.endfields
1
^
.} // SchfSpSoprNalog
.} // SchfSpSopr
.} // SchfKatSopr
// 横� �� ᯥ��-� ��
.{CheckEnter SpSchf
.fields
  cSpSchf      :comp         // 0 nRec
  SpName       :string       // 1 ������������ ����樨 ᯥ�-�
  SpBarCode    :string       // 1a
  SpOKDP       :string       // 2
  SpOtpEd      :string       // 3 ���᪭�� ������
  SpABBREd     :string       // 3� ᮪�饭��� ������������ ������� ����७��
  SpKodEd      :string       // 3� ��� ������� ����७��
  SpKol        :double       // 4 ���-��
  SpPrice      :double       // 5 業�
#ifdef _RoundInDoc_
  SpPrNoNds    :double       //   業� ��� ���
#end
  SpPrMC       :word         // 6 �ਧ��� (1-��, 2-��㣠)
  SpGrNal      :comp         // 7 ��뫪� �� ��㯯� ������� �� ����樨
  SpNKvit      :string       // 8 ����� ���⠭樨
  SpNVagon     :string       // 9 ����� �������
  SpGrPrMC     :word         // 10 <>0 - ��㯯�஢�� �� �ਧ���� ��/��.
// �㬬� �� ����樨 ᯥ�-� ��
  SpSumNoNDS   :double       // 1 ��� ���
  SpNDS        :double       // 2 ���
  SpPerc       :double       // 3 �⠢��
  sSpPerc      :string       // 3 �⠢�� � ���� ��ப�
  SpAkciz      :double       // 4 ��樧
  SpDrNal      :double       // 5 ��稥 ������
  SpSaleTax    :double       // 5a ����� � �த��
  SpExistNDS   :boolean      // 5b true - ���� ���
  SpSumma      :double       // 6 �⮣� � ���
  GTDKod       :string
  GTDCountry   :string
  GTDNomer     :string
//�������⥫�� ���祭�� ��� ���४�஢�筮�� ��
  SpKol_Src      :double
  SpPrice_Src    :double
#ifdef _RoundInDoc_
  SpPrNoNds_Src  :double     //   業� ��� ���
#end
  SpSumNoNDS_Src :double     // 1 ��� ���
  SpNDS_Src      :double     // 2 ���
  SpPerc_Src     :double     // 3 �⠢��
  SpAkciz_Src    :double     // 4 ��樧
  SpDrNal_Src    :double     // 5 ��稥 ������
  SpSaleTax_Src  :double     // 5a ����� � �த��
  SpExistNDS_Src :boolean    // 5b true - ���� ���
  SpSumma_Src    :double     // 6 �⮣� � ���
// ���������� � ᯥ�䨪�樨
  SpDopol        :string 
.endfields
    a  ��      1
01123334567890 12345ab6        12345ab6
^^^^^^^^^^^^^^ ^^^^^^^^ ^^^ ^^ ^^^^^^^^ ^^
#ifdef _RoundInDoc_
^ 業� ��� ��� �����㣫�����
^ 業� ��� ��� �����㣫����� ��� ���४�஢�筮�� ��
#end
.} // SpSchf
// ��� ������⠭�
.{CheckEnter KazSt
.fields
  KzStNDS:double
  KzNDS  :double
  KzNoNDS:double
  KzStAkc:double
  KzAkciz:double
.endfields
12345
^^^^^
.}
.{CheckEnter NalogFinSchf
.fields
  cNalogFin  : Comp            // 1  "��뫪� �� NalogFin",
.endfields
1
^
.} // NalogFinSchf
.fields
  Predmet      :string       //   1
  bSumEqual    :boolean      //   2 ���㣫���� �⮣���� �㬬
  ItSumNoNDS    :double
  ItAkciz       :double
  ItNDS         :double
  ItSumma       :double

  ItSumNoNDS_Dop :double
  ItAkciz_Dop    :double
  ItNDS_Dop      :double
  ItSumma_Dop    :double

  strNDS        :string
  strSumma      :string
.endfields
12
^^ ^^^^ ^^^^ ^^
.if ItogoGroup       // �⮣� �� ��㯯� ���-䠪���. �᫨ true, � �� ������ �⮣�
.fields
 FooterGroup     :string
 GrExportImport  :double       //   8
 GrSAkciz        :double       //   9  ��樧
 //Belarus
 GrTara          :double       //   9a
 GrTara_NDS      :double       //   9b
 GrSaleTax       :double       //  ����� � �த��
 //
 GrS1            :double       //  10  ��� ��� 20%
 GrS2            :double       //  11  ��� 20%
 GrS3            :double       //  12  �⮣� �� 20%
 GrS4            :double       //  13  ��� ��� 10%
 GrS5            :double       //  14  ��� 10%
 GrS6            :double       //  15  �⮣� �� 20%
 GrS23           :double       //  15a ��� ��� 0%
 GrS8            :double       //  15b ��� 0%
 GrS9            :double       //  15c �⮣� �� 0%
 GrS7            :double       //  16  ��� ���
 GrS10           :double       //  16a ��稥 ������
 GrS             :double       //  17  �⮣� �� ��
 GrSOplSt        :double       //  18  �� ����祭�
 GrSOplSt2       :double       //  18a �� ��୨஢���
 GrSReg          :double       //  19  �� ��ॣ����஢���
.endfields
12345678901234567890
^^^^^^^^^^^^^^^^^^^^^
.end
.} // Schf
.endform

#include declar.frn    // ������樨, ����� �ᯮ������� �� ���� ��
#include schfbla1.frn
#include schfbla2.frn  // ������ �� (� 25.02.2000)
#include schfbla3.frn  // ����窠 ��� oper02fix16
#include schfbla4.frn  // ������ �� (� 01.01.2001)
#include schfbla6.frn  // ������ �� (� 11.05.2006)
#include schfbla7.frn  // ���४�஢��� ���-䠪���
#include schfbla8.frn  // ������ �� (� 01.01.2012)
#include schfbla5.frn  // ������ �� ��� ��
#include schfree1.frn
#include schfree2.frn  // ��� �������
#include schfree3.frn  // ��� ������⠭�
#include nsfbla1.frn   // ��� ������⠭�