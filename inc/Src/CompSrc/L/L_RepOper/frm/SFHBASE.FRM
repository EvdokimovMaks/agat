/*
╔═══════════════════════════════════════════════════════════════════════════╗
║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
║ Проект        : ГАЛАКТИКА                                                 ║
║ Система       : Отдел разработки контура логистики                        ║
║ Версия        : 6.0                                                       ║
║ Назначение    : Печать счетов-фактур (базовая форма)                      ║
║ Основана на форме разработанной : Володько Анатолий Владимирович (Anatoly)║
║ Параметры     : нет                                                       ║
╚═══════════════════════════════════════════════════════════════════════════╝
*/
#doc
Печать счетов-фактур (базовая форма)
#end
.set name='SFHReest'
.hide
.fields
  IsKontrGroup :boolean  //   0                             1.
  IsObjectGroup:boolean  //   0a                            2.
  IsPrintGroup :boolean  //   0б                            3.
  //----------------------------------------------------------
  Nds          :string   //   1                             4.
  Akciz        :string   //   2                             5.
  Nalog2       :string   //   5                             6.
  cNds         :comp     //   6                             7.
  cAkciz       :comp     //   7                             8.
  cNalog2      :comp     //  10                             9.
  MetodUch     :word     //  11                            10.
  Stav1        :double   //  12                            11.
  Stav2        :double   //  13                            12.
  Direct       :word     //  14                            13.
  pBou         :longint  //  15                            14.
  pDoc         :longint  //  15a    добавлено 15/07/98     15.
  ReeDollar    :string   //  15б    Зайцев 28.08.98        16.
  ReeDollarah  :string   //  15в                           17.
  ReeSimvolV   :string   //  15г                           18.
.endfields
 0aб12567012345aбвг
 ^^^^^^^^^^^^^^^^^^
 123456789012345678
.if HSFReest_SetDateRange
.fields
  dBeg         :Date     //  16
  dEnd         :Date     //  17
.endfields
 12
 ^^
.end
.fields
  AllKontr      :word     //  18
  pFilters      :string   //  18a
  pMyOrgName    :string   //  19
  pMyOrgAddr    :string   //  20
  pMyOrgTel     :string   //  21
  pMyOrgSchet   :string   //  22
  pMyOrgBank    :string   //  23
  pMyOrgGorod   :string   //  24
  pMyOrgINN     :string   //  25
  pMyOrgOKONH   :string   //  26
  pMyOrgOKPO    :string   //  27
  pMyOrgBankRemark:string //  28   добавлено 18/09/97  13:03
  pMyOrgBankAddr:string   //  29
  pMyOrgBankMFO:string    //  30
  pMyOrgBankRKC:string    //  31
  pMyOrgBankSchRKC:string //  32
  pMyOrgBankSchPlatDoc:string // 33
.endfields
12345678901234567
^^^^^^^^^^^^^^^^^
.{ CheckEnter HSFReest_Schf
.{ CheckEnter HSFReest_HeaderGroup
.fields
 NameGroup:string:'T:-'
.endfields
1
^
.}//HeaderGroup
.if HSFReest_PrintBody
.fields
 cSchfact      :Comp         //   0  SchFact.Nrec
 dFact         :Date         //   1
 dPost         :Date         //   2
 dReg          :Date         //   3
 NSF           :string       //   4
 BaseDoc_NoDoc :string       //   5
 BaseDoc_dDoc  :Date         //   6
 ExportImport  :double       //   8
 SAkciz        :double       //   9  Акциз
 S1            :double       //  10  без НДС 20%
 S2            :double       //  11  НДС 20%
 S3            :double       //  12  Итого по 20%
 S4            :double       //  13  без НДС 10%
 S5            :double       //  14  НДС 10%
 S6            :double       //  15  Итого по 20%
 S7            :double       //  16  без НДС
 S10           :double       //  16a прочие налоги
 S             :double       //  17  Итого по СФ
 SOplSt        :double       //  18  Не оплачено
 SOplSt2       :double       //  18a  Не сторнировано
 SReg          :double       //  19  Не зарегистрировано
 SubTip        :word         //  20
 UsersDoc_Name :string       //  21
  MyOrgName    :string   //  19
  MyOrgAddr    :string   //  20
  MyOrgTel     :string   //  21
  MyOrgSchet   :string   //  22
  MyOrgBank    :string   //  23
  MyOrgGorod   :string   //  24
  MyOrgINN     :string   //  25
  MyOrgOKONH   :string   //  26
  MyOrgOKPO    :string   //  27
  MyOrgBankRemark:string //  28   добавлено 18/09/97  13:03
  MyOrgBankAddr:string   //  29
  MyOrgBankMFO:string    //  30
  MyOrgBankRKC:string    //  31
  MyOrgBankSchRKC:string //  32
  MyOrgBankSchPlatDoc:string // 33
 OrgName       :string       //  22
 OrgAddr       :string       //  23
 OrgTel        :string       //  24
 OrgSchet      :string       //  25
 OrgBank       :string       //  26
 OrgGorod      :string       //  27
 OrgINN        :string       //  28
 OrgOKONH      :string       //  29
 OrgOKPO       :string       //  30
 OrgBankRemark:string     //  31   добавлено 18/09/97  13:03
 OrgBankAddr:string       //  32
 OrgBankMFO:string        //  33
 OrgBankRKC:string        //  34
 OrgBankSchRKC:string     //  35
 OrgBankSchPlatDoc:string //  36

 cPlat         :Comp      //  1             SoprHoz.nRec ?
 PlatNo        :string    //  2
 PlatDat       :Date      //  3
 PlatNazn      :string    //  4
 Nazn          :string    //  5
 GruzFrom      :string    //  6
 GruzTo        :string    //  7

 Dollar        :string    //  8    Зайцев 28.08.98
 Dollarah      :string    //  9
 SimvolV       :string    //  10
 .endfields
0123456*890123456a78901 901234567890123 234567890123456 12345678901
^^^^^^^*^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^ ^^^^^^^^^^^
.{CheckEnter HSFReest_SchfKatSopr
.fields
 cSopr     : comp       //  0
 NSopr     : string     //  1
 DSopr     : Date       //  2
 NSoprDO   : string     //  3
 DSoprDO   : Date       //  4
 GruzFromK : string     //  5
 GruzToK   : string     //  6
.endfields
0123456
^^^^^^^
.{CheckEnter HSFReest_SchfSpSopr
.fields
  cSpSopr      :comp         //   1      SpSopr.NRec
.endfields
1
^
.{CheckEnter HSFReest_SchfSpSoprNalog
.fields
  cSpDocNal    :Comp         //  1
.endfields
1
^
.} // SchfSpSoprNalog
.} // SchfSpSopr
.} // SchfKatSopr
.{CheckEnter HSFReest_SpSchf
.fields
  cSpSchf      :comp         //   0   SpSchf.NRec
  SpName       :string       //   1
  SpBarCode    :string       //   1a  добавлено 16.06.98
  SpOKDP       :string       //   2
  SpOtpEd      :string       //   3
  SpKol        :double       //   4
  SpPrice      :double       //   5
  SpPrMC       :word         //   6
  SpGrNal      :comp         //   7
  SpNKvit      :string       //   8
  SpNVagon     :string       //   9
  SpGrPrMC     :word         //   10
.endfields
  a        1
011234567890
^^^^^^^^^^^^
.fields
  SpSumNoNDS   :double       //  1
  SpNDS        :double       //  2
  SpPerc       :double       //  3
  SpAkciz      :double       //  4
  SpDrNal      :double       //  5
  SpSumma      :double       //  6
.endfields
123456
^^^^^^
.} // SpSchf
.{CheckEnter HSFReest_NalogFinSchf
.fields
  cNalogFin  : Comp            // 1  "ссылка на NalogFin",
.endfields
1
^
.} // NalogFinSchf
.fields
  Predmet      :string       //   1
.endfields
1
^
.end //PrintBody
.{CheckEnter HSFReest_GrpTotal
.fields
  FooterGroupName :string:'T:-'
  GrExportImport  :double       //   8
  GrSAkciz        :double       //   9  Акциз
  GrS1            :double       //  10  без НДС 20%
  GrS2            :double       //  11  НДС 20%
  GrS3            :double       //  12  Итого по 20%
  GrS4            :double       //  13  без НДС 10%
  GrS5            :double       //  14  НДС 10%
  GrS6            :double       //  15  Итого по 20%
  GrS7            :double       //  16  без НДС
  GrS10           :double       //  16a прочие налоги
  GrS             :double       //  17  Итого по СФ
  GrSOplSt        :double       //  18  Не оплачено
  GrSOplSt2       :double       //  18a Не сторнировано
  GrSReg          :double       //  19  Не зарегистрировано
.endfields
 890123456a78a9
^^^^^^^^^^^^^^^
.} //GrpTotal
.} //Schf
.endform

#include sfhreest.frn