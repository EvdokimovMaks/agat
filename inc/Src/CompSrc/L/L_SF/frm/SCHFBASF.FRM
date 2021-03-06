/*
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
�                     (c) 1994,97 ��牆���罔� ���������                      �
� 蹍オ�        : ���������                                                 �
� ��痰ガ�       : ｯム�皋↓覃 ���矣�                                        �
� �ム瓱�        : 5.20                                                      �
� ��Л�腑�┘    : �ョ�碎 瘍モ��-���矣� (��М��� 筮爼�)                      �
� �癶モ痰▲��覃 : ����れ�� ���皰�┤ ���え��牀※� (Anatoly)                  �
� �����モ琺     : �モ                                                       �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
*/

#doc
�ョ�碎 瘍モ��-���矣� (��М��� 筮爼�)
#end
.set name='Schfrees'
.hide
// �ムガキ��� ��爛ぅ�キ� � SfBla2vp.frn
//.var
//  iCountry: MCOriginCountry;
//.endvar
.fields
  CFH          :string   //  CommonFormHeader
  wCountry     :word
  UnnORInn     :string
  Kol_Pr       :byte
  dMinKol      :double
  Nds          :string   //   1 ��━キ����┘ ���
  Akciz        :string   //   2 ��━キ����┘ ��罔��
  Nalog2       :string   //   5 ��━キ����┘ ぎ�. ������
  cNds         :comp     //   6 瘁覊�� �� ���
  cAkciz       :comp     //   7           ��罔�
  cNalog2      :comp     //  10           ぎ�. �����
  MetodUch     :word     //  11 �モ�� 竍モ� (0-�� �癸�.,1-�� ���.,2-�� ����.)
  Stav1        :double   //  12 痰�→� ��� �甅�↓��
  Stav2        :double   //  13            ぎ������.
  Stav3        :double   //  13a           �� 蹣甎�珥
  Direct       :word     //  14 �����←キ┘ (1-�牀����, 2-���祚��)
// �����モ琺 �ョ�皋 爛メ矗� ��
  pBou         :longint  //  15 ��瓷� 甌痰�鎰┤ ぎ�祠キ皰�
  pDoc         :longint  //  15a ��瓷� 皋��� ぎ�祠キ皰�
  pGroup       :longint  //  15 ���ム �珮���牀→�
  isNDEEqual   :boolean  //  15aa �ョ�碎 ���-蹣※���キ��
  ppPrintParam :word     //  15ab �����モ琺 �ョ�皋
  ppPrintField :word     //  15ab �����モ琺 �ョ�皋
  AllKontr     :word     //      筥�赳� �� ���矗��キ��� (0-≡�)
  ReeDollar    :string   //  15� ��━キ����┘ ���鈞� 爛メ矗�
  ReeDollarah  :string   //  15� 痺��� � ... ぎ������
  ReeSimvolV   :string   //  15� 瓱�〓� ���鈞�
  sValNDE      :string

  // ��く�瓱
  Director     : String   //  15� え爛�皰�
  Main_Buh     : String   //  15� ��. ＜紕��皀�
  IP_FIO       : String   //  ��え※ゃ��讚覃 �爛く爬�━�皀��, ���
  IP_Info      : String   //  ��え※ゃ��讚覃 �爛く爬�━�皀��, 爛�※Ж硅
  MemoIP_Info  : String   //  �襤�� ぎ�����皀�讚�� ��く�瓱
.endfields
     1234567890123aab45678
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

// 筥�赳� �� ��皀
.if SetDateRange
.fields
  dBeg         :Date     //  16 ���. ����
  dEnd         :Date     //  17 ���. ����
.endfields
 12
 ^^
.end
.fields
//�矗─竄� 甌＝癶キ��� �爍��├�罔�, か� ������→�, � �� ��.
  pMyOrgName          :string //  19
  pMyOrgAddr          :string //  20
  pMyOrgTel           :string //  21
  pMyOrgSchet         :string //  22
  pMyOrgBank          :string //  23
  pMyOrgGorod         :string //  24
  pMyOrgINN           :string //  25
  pMyOrgOKONH         :string //  26
  pMyOrgOKPO          :string //  27
  pMyOrgBankRemark    :string //  28   ぎ��←キ� 18/09/97  13:03
  pMyOrgBankAddr      :string //  29
  pMyOrgBankMFO       :string //  30
  pMyOrgBankRKC       :string //  31
  pMyOrgBankSchRKC    :string //  32
  pMyOrgBankSchPlatDoc:string //  33
.endfields
123456789012345
^^^^^^^^^^^^^^^
// �甅�↓�� 罔�� �� ��
.{CheckEnter Schf
// �����モ琺 �珮���牀→�
.if HeaderGroup
.fields
 NameGroup : string       // ��Б��┘
 KontrGroup: boolean      // Л�腑�┘ �����モ�� �珮�-��
.endfields
12
^^
.end
// �����モ琺 ��
.fields
 nSchfact         : Comp         //   0 nrec ��
 skipInReestr     : Boolean      //   0a �� �ョ���碎 � 爛メ矗�
 wPrStav          : word         //   踸Л�� ��瘁腑皚�痰� 痰�→� ���.
 Flag             : word         //   1 ；� - ��玻オ皋牀〓膈覃 ����甌�覃 ��
 // ������珥�覃 ��. ��� ��玻オ皋牀〓膈��� �� - ┃筮爼�罔� �� �痳�き�� ��.
 dFact            : Date         //   1 ���� 甌痰�←キ�� ��
 dPost            : Date         //   2 ���� ���竍キ�� ��
 dReg             : Date         //   3 ���� 爛��痰��罔� ��
 NSF              : String       //   4 ���ム ��
 SF_Src_List      : String       //   ���甌� ���ム�� � ��� �痳�き諷 �� か� ��玻オ皋牀〓膈��� ��
 // ��玻オ皋牀〓膈覃 ��
 dFact_CorrV      : Date
 dPost_CorrV      : Date
 dReg_CorrV       : Date
 NSF_CorrV        : String
 // �甎��←キ┘ �痳�き��� ��
 dRevision        : Date
 nRevision        : String
 // �甎��←キ┘ ��玻オ皋牀〓膈��� ��. ���� �� �ョ���モ瘴.
 dRevision_CorrV  : Date
 nRevision_CorrV  : String

 NBlanka          :string    //   ���ム ゛����
 sertSerial       :string
 sertNumber       :string
 sertDate         :string
 BaseDoc_NoDoc    :string    //   5 ���ム ��
 BaseDoc_dDoc     :Date      //   6 ���� 甌痰. ��
//��
 DogovorDO_NoDoc :string     //  6a ���ム ぎ��〓��
 DogovorDO_dDoc  :Date       //  6b ���� 甌痰. ぎ��〓��
 Payment         :word       //  6c 竅��※� ����硅
 IGK             :string
 OKED            :string     //  6d ��� ����
//
 ExportImport  :double       //  8 痺��� 蹣甎�珥�/━��珥�
 SAkciz        :double       //  9  ��罔�
 //Belarus
 Tara          :double       //  9a 痺��� �� ��爛
 Tara_NDS      :double       //  9b 痺��� �� ��爛 � ���
 //
 dblSaleTax    :double       //  9c  ����� � �牀���
 S1            :double       //  10  ．� ��� 20%
 S2            :double       //  11  ��� 20%
 S3            :double       //  12  �皰�� �� 20%
 S4            :double       //  13  ．� ��� 10%
 S5            :double       //  14  ��� 10%
 S6            :double       //  15  �皰�� �� 10%
 S23           :double       //  15a ．� ��� 0%
 S8            :double       //  15b ��� 0%
 S9            :double       //  15c �皰�� �� 0%
 S7            :double       //  16  ．� ���
 S10           :double       //  16a �牀腮� ������
 S             :double       //  17  �皰�� �� ��
 SOplSt        :double       //  18  �� ����腑��
 SOplSt2       :double       //  18a  �� 痰�爿�牀����
 SReg          :double       //  19  �� ��爛��痰爬牀����
 SubTip        :word         //  20  ��も┓ �� (SchFact.SubTip)
 // 0-�癸珮И� 16-����� 19-�牀腮� ぎ�. 17-���皀� 27-〓Б��� ���皀�� 8-〓Б��� 皰����
 UsersDoc_Name :string       //  21  ��━-� 皋�� ��
 TipUser       :word         //  22  皋� �� (SchFact.TipUser)
//�矗─竄� 甌＝癶キ��� �爍��├�罔�
  MyOrgNRec     : Comp   // NRec 甌＝癶キ��� �爍��├�罔�
  MyOrg_Up_NRec : Comp   // NRec ����↓�� �爍��├�罔�
  MyOrgName    :string   //  19
  MyOrgAddr    :string   //  20
  MyPostAddr   :string   //  ��艪��覃 �むメ
  MyOrgTel     :string   //  21
  MyOrgSchet   :string   //  22
  MyOrgBank    :string   //  23
  MyOrgGorod   :string   //  24
  MyOrgINN     :string   //  25
  MyOrgKPP     :string   //  25a
  MyOrgOKONH   :string   //  26
  MyOrgOKPO    :string   //  27
  MyOrgBankRemark:string //  28   ぎ��←キ� 18/09/97  13:03
  MyOrgBankAddr:string   //  29
  MyOrgBankMFO:string    //  30
  MyOrgBankRKC:string    //  31
  MyOrgBankSchRKC:string //  32
  MyOrgBankSchPlatDoc:string // 33
//�矗─竄� �爍��├�罔�-���矗��キ��
  OrgUnnORInn   :string
  OrgNRec       :Comp         // NRec �爍��├�罔�
  Org_Up_NRec   :Comp         // NRec ����↓�� �爍��├�罔�
  OrgName       :string       //  22
  OrgAddr       :string       //  23
  PostAddr      :string       //  ��艪��覃 �むメ
  OrgTel        :string       //  24
  OrgSchet      :string       //  25
  OrgBank       :string       //  26
  OrgGorod      :string       //  27
  OrgINN        :string       //  28
  OrgKPP        :string       //  28a
  OrgOKONH      :string       //  29
  OrgOKPO       :string       //  30
  OrgBankRemark:string     //  31   ぎ��←キ� 18/09/97  13:03
  OrgBankAddr:string       //  32
  OrgBankMFO:string        //  33
  OrgBankRKC:string        //  34
  OrgBankSchRKC:string     //  35
  OrgBankSchPlatDoc:string //  36
//�����モ琺 ��� ├ ���� "� ぎ�祠キ矣 �" (か� ��� �� ���皀��)
 cPlat         :Comp      //  1 nRec ���
 PlatNo        :string    //  2 ���ム
 PlatDat       :Date      //  3 ���� �÷�｀皖�
 PlatNazn      :string    //  4 ��Л�腑�┘ ├ ���
 PlatNo_Date   :string    //    ┃筮爼�罔� � ���皀Ε
 GruzFromNRec  :Comp      //  NRec �珮М�皴��※皀��
 GruzFrom                 //  6 �珮М�皴��※皀��
 GruzFromAddr             //  6 �珮М�皴��※皀��
 GruzToNRec    :Comp      //  NRec �珮М���竍�皀��
 GruzTo                   //  7 �珮М���竍�皀��
 GruzToAddr               //  7 �珮М���竍�皀��
// ���鈞� ��
 cSchfVal      :comp      //  8
 Dollar        :string    //  8
 SimvolV       :string    //  10
 ISO           :string
 StatusEDO     :string
 isNDS_NA      :boolean
.endfields
0a1234           56abcd*89abc012345abc6a78901 9012345a67890123 2345678a90123456 1234566778890
^^^^^^^^ ^^^^^^^^ ^^^^^^^^^^^*^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^ ^^^^^^^^^^^^^
.if Dopol
.fields
  Nazn         :string    //  5 ��Л�腑�┘ ├ ��
  Dollarah     :string    //  9
.endfields
^^
.end
.fields
// ��く����硅
  IsValidFeeSigners        : boolean   // True, メ�� �珮��� �襦����.
  cFeeSignersNRec          : comp      // �瘠��� �� �襦����竡 �珮��� ��く����皰�
  NameFeeSigners           : string    // ━� �襦������ �珮��� ��く����皰�

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
// 罔�� �� ���, �� ��皰琺� 甌Г�� ��
.{CheckEnter SchfKatSopr
.fields
 cSopr     : comp       //  0 nRec ���
 NSopr     : string     //  1 ���ム
 DSopr     : Date       //  2 ���� 甌痰.
 NSoprDO   : string     //  3 ���ム ��
 DSoprDO   : Date       //  4 ���� 甌痰. ��
//��
 NSoprDG   : string     //  4a ���ム ぎ��〓��
 DSoprDG   : Date       //  4b ���� 甌痰. ぎ��〓��
 SoprPaym  : word       //  4c 竅��※� ����硅
//
 GruzFromK : string     //  5 �珮М�皴��※皀��
 GruzToK   : string     //  6 �珮М���竍�皀��
.endfields
01234abc56
^^^^^^^^^^
// 罔�� �� 甎ユ��-� ���
.{CheckEnter SchfSpSopr
.fields
  cSpSopr      :comp         //   1 nRec ��Ж罔� 甎ユ��-�
.endfields
1
^
// 罔�� �� ������� ��Ж罔� 甎ユ��-� ���
.{CheckEnter SchfSpSoprNalog
.fields
  cSpDocNal    :Comp         //  1 nRec ������
.endfields
1
^
.} // SchfSpSoprNalog
.} // SchfSpSopr
.} // SchfKatSopr
// 罔�� �� 甎ユ��-� ��
.{CheckEnter SpSchf
.fields
  cSpSchf      :comp         // 0 nRec
  SpName       :string       // 1 ��━キ����┘ ��Ж罔� 甎ユ-�
  SpBarCode    :string       // 1a
  SpTNVED      :string
  SpOKDP       :string       // 2
  SpOtpEd      :string       // 3 �皴竅���� イ┃���
  SpABBREd     :string       // 3� 甌���薀���� ��━キ����┘ イ┃�肓 ├�ムキ��
  SpKodEd      :string       // 3� ��� イ┃�肓 ├�ムキ��
  SpKol        :double       // 4 ���-〓
  SpPrice      :double       // 5 罐��
  SpPrNoNds    :double       //   罐�� ．� ���
  SpPrMC       :word         // 6 �爬Л�� (1-��, 2-竅�磽�)
  SpGrNal      :comp         // 7 瘁覊�� �� �珮��� ������� �� ��Ж罔�
  SpNKvit      :string       // 8 ���ム �※���罔�
  SpNVagon     :string       // 9 ���ム� �������
  SpGrPrMC     :word         // 10 <>0 - �珮���牀→� �� �爬Л��� ��/竅�.
// 痺��� �� ��Ж罔� 甎ユ-� ��
  SpSumNoNDS   :double       // 1 ．� ���
  SpNDS        :double       // 2 ���
  SpPerc       :double       // 3 痰�→�
  sSpPerc      :string       // 3 痰�→� � ※ぅ 痰牀��
  SpAkciz      :double       // 4 ��罔�
  SpDrNal      :double       // 5 �牀腮� ������
  SpSaleTax    :double       // 5a ����� � �牀���
  SpExistNDS   :boolean      // 5b true - メ碎 ���
  SpSumma      :double       // 6 �皰�� � ���
  GTDKod       :string
  GTDCountry   :string
  GTDNomer     :string
//ぎ�����皀�讚襯 Л�腑��� か� ��玻オ皋牀〓膈��� ��
  SpKol_Src      :double
  SpPrice_Src    :double
  SpPrNoNds_Src  :double     //   罐�� ．� ���
  SpSumNoNDS_Src :double     // 1 ．� ���
  SpNDS_Src      :double     // 2 ���
  SpPerc_Src     :string     // 3 痰�→�
  SpAkciz_Src    :double     // 4 ��罔�
  SpDrNal_Src    :double     // 5 �牀腮� ������
  SpSaleTax_Src  :double     // 5a ����� � �牀���
  SpExistNDS_Src :boolean    // 5b true - メ碎 ���
  SpSumma_Src    :double     // 6 �皰�� � ���
// ������キ┘ � 甎ユ�筥��罔�
  SpDopol        :string 
.endfields
    a  ��      1
011123334567890 12345ab6        12345ab6
^^^^^^^^^^^^^^^ ^^^^^^^^ ^^^ ^^ ^^^^^^^^ ^^
^ 罐�� ．� �め �ギ�珮��キ���
^ 罐�� ．� �め �ギ�珮��キ��� か� ��玻オ皋牀〓膈��� ��
.} // SpSchf
// か� ����縺����
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
  cNalogFin  : Comp            // 1  "瘁覊�� �� NalogFin",
.endfields
1
^
.} // NalogFinSchf
.fields
  Predmet      :string       //   1
  bSumEqual    :boolean      //   2 ��珮��キ┘ �皰���諷 痺��
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
.if ItogoGroup       // �皰�� �� �珮��� 瘍モ-���矣�. �甄� true, 皰 �� �ョ���碎 �皰��
.fields
 FooterGroup     :string
 GrExportImport  :double       //   8
 GrSAkciz        :double       //   9  ��罔�
 //Belarus
 GrTara          :double       //   9a
 GrTara_NDS      :double       //   9b
 GrSaleTax       :double       //  ����� � �牀���
 //
 GrS1            :double       //  10  ．� ��� 20%
 GrS2            :double       //  11  ��� 20%
 GrS3            :double       //  12  �皰�� �� 20%
 GrS4            :double       //  13  ．� ��� 10%
 GrS5            :double       //  14  ��� 10%
 GrS6            :double       //  15  �皰�� �� 20%
 GrS23           :double       //  15a ．� ��� 0%
 GrS8            :double       //  15b ��� 0%
 GrS9            :double       //  15c �皰�� �� 0%
 GrS7            :double       //  16  ．� ���
 GrS10           :double       //  16a �牀腮� ������
 GrS             :double       //  17  �皰�� �� ��
 GrSOplSt        :double       //  18  �� ����腑��
 GrSOplSt2       :double       //  18a �� 痰�爿�牀����
 GrSReg          :double       //  19  �� ��爛��痰爬牀����
.endfields
12345678901234567890
^^^^^^^^^^^^^^^^^^^^^
.end
.} // Schf
.endform

#include declar.frn    // �オ����罔�, ��皰琺� �甎��讌竡矚� �爬 �ョ�皋 ��
#include schfbla1.frn
#include schfbla2.frn  // ゛���� �� (� 25.02.2000)
#include schfbla3.frn  // ��硅腦� か� oper02fix16
#include schfbla4.frn  // ゛���� �� (� 01.01.2001)
#include schfbla6.frn  // ゛���� �� (� 11.05.2006)
#include schfbla7.frn  // ��玻オ皋牀〓膈覃 瘍モ-���矣��
#include schfbla8.frn  // ゛���� �� (� 01.01.2012)
#include schfbla5.frn  // ゛���� �� か� ��
#include schfree1.frn
#include schfree2.frn  // か� �カ�珮瓱
#include schfree3.frn  // か� ����縺����
#include nsfbla1.frn   // か� ����縺����
