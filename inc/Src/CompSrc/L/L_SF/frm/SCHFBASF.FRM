/*
╔═══════════════════════════════════════════════════════════════════════════╗
║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
║ Проект        : ГАЛАКТИКА                                                 ║
║ Система       : Оперативный контур                                        ║
║ Версия        : 5.20                                                      ║
║ Назначение    : Печать счетов-фактур (базовая форма)                      ║
║ Ответственный : Володько Анатолий Владимирович (Anatoly)                  ║
║ Параметры     : нет                                                       ║
╚═══════════════════════════════════════════════════════════════════════════╝
*/

#doc
Печать счетов-фактур (базовая форма)
#end
.set name='Schfrees'
.hide
// переменная определена в SfBla2vp.frn
//.var
//  iCountry: MCOriginCountry;
//.endvar
.fields
  CFH          :string   //  CommonFormHeader
  wCountry     :word
  UnnORInn     :string
  Kol_Pr       :byte
  dMinKol      :double
  Nds          :string   //   1 наименование НДС
  Akciz        :string   //   2 наименование акциза
  Nalog2       :string   //   5 наименование доп. налога
  cNds         :comp     //   6 ссылки на НДС
  cAkciz       :comp     //   7           акциз
  cNalog2      :comp     //  10           доп. налог
  MetodUch     :word     //  11 метод учета (0-по отгр.,1-по опл.,2-по запр.)
  Stav1        :double   //  12 ставка НДС основная
  Stav2        :double   //  13            дополнит.
  Stav3        :double   //  13a           на экспорт
  Direct       :word     //  14 направление (1-продажа, 2-закупка)
// Параметры печати реестра СФ
  pBou         :longint  //  15 маска состояний документов
  pDoc         :longint  //  15a маска типов документов
  pGroup       :longint  //  15 номер группировки
  isNDEEqual   :boolean  //  15aa печать НДЕ-эквивалента
  ppPrintParam :word     //  15ab параметры печати
  ppPrintField :word     //  15ab параметры печати
  AllKontr     :word     //      фильтр по контрагентам (0-все)
  ReeDollar    :string   //  15б наименование валюты реестра
  ReeDollarah  :string   //  15в сумма в ... долларах
  ReeSimvolV   :string   //  15г символ валюты
  sValNDE      :string

  // Подписи
  Director     : String   //  15д директор
  Main_Buh     : String   //  15е гл. бухгалтер
  IP_FIO       : String   //  Индивидуальный предприниматель, ФИО
  IP_Info      : String   //  Индивидуальный предприниматель, реквизиты
  MemoIP_Info  : String   //  Вывод дополнительной подписи
.endfields
     1234567890123aab45678
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

// фильтр по дате
.if SetDateRange
.fields
  dBeg         :Date     //  16 нач. дата
  dEnd         :Date     //  17 кон. дата
.endfields
 12
 ^^
.end
.fields
//атрибуты собственной организации, для заголовка, а не СФ.
  pMyOrgName          :string //  19
  pMyOrgAddr          :string //  20
  pMyOrgTel           :string //  21
  pMyOrgSchet         :string //  22
  pMyOrgBank          :string //  23
  pMyOrgGorod         :string //  24
  pMyOrgINN           :string //  25
  pMyOrgOKONH         :string //  26
  pMyOrgOKPO          :string //  27
  pMyOrgBankRemark    :string //  28   добавлено 18/09/97  13:03
  pMyOrgBankAddr      :string //  29
  pMyOrgBankMFO       :string //  30
  pMyOrgBankRKC       :string //  31
  pMyOrgBankSchRKC    :string //  32
  pMyOrgBankSchPlatDoc:string //  33
.endfields
123456789012345
^^^^^^^^^^^^^^^
// основной цикл по СФ
.{CheckEnter Schf
// параметры группировки
.if HeaderGroup
.fields
 NameGroup : string       // название
 KontrGroup: boolean      // значение параметра груп-ки
.endfields
12
^^
.end
// параметры СФ
.fields
 nSchfact         : Comp         //   0 nrec СФ
 skipInReestr     : Boolean      //   0a не печатать в реестре
 wPrStav          : word         //   Признак рассчетности ставки НДС.
 Flag             : word         //   1 бит - корректировочный авансовый СФ
 // Стандартный СФ. Для корректировочного СФ - информация об исходном СФ.
 dFact            : Date         //   1 дата составления СФ
 dPost            : Date         //   2 дата получения СФ
 dReg             : Date         //   3 дата регистрации СФ
 NSF              : String       //   4 номер СФ
 SF_Src_List      : String       //   Список номеров и дат исходных СФ для корректировочного СФ
 // Корректировочный СФ
 dFact_CorrV      : Date
 dPost_CorrV      : Date
 dReg_CorrV       : Date
 NSF_CorrV        : String
 // Исправление исходного СФ
 dRevision        : Date
 nRevision        : String
 // Исправление корректировочного СФ. Пока не печатается.
 dRevision_CorrV  : Date
 nRevision_CorrV  : String

 NBlanka          :string    //   номер бланка
 sertSerial       :string
 sertNumber       :string
 sertDate         :string
 BaseDoc_NoDoc    :string    //   5 номер ДО
 BaseDoc_dDoc     :Date      //   6 дата сост. ДО
//РК
 DogovorDO_NoDoc :string     //  6a номер договора
 DogovorDO_dDoc  :Date       //  6b дата сост. договора
 Payment         :word       //  6c условия оплаты
 IGK             :string
 OKED            :string     //  6d код ОКЭД
//
 ExportImport  :double       //  8 сумма экспорта/импорта
 SAkciz        :double       //  9  Акциз
 //Belarus
 Tara          :double       //  9a сумма по таре
 Tara_NDS      :double       //  9b сумма по таре с НДС
 //
 dblSaleTax    :double       //  9c  налог с продаж
 S1            :double       //  10  без НДС 20%
 S2            :double       //  11  НДС 20%
 S3            :double       //  12  Итого по 20%
 S4            :double       //  13  без НДС 10%
 S5            :double       //  14  НДС 10%
 S6            :double       //  15  Итого по 10%
 S23           :double       //  15a без НДС 0%
 S8            :double       //  15b НДС 0%
 S9            :double       //  15c Итого по 0%
 S7            :double       //  16  без НДС
 S10           :double       //  16a прочие налоги
 S             :double       //  17  Итого по СФ
 SOplSt        :double       //  18  Не оплачено
 SOplSt2       :double       //  18a  Не сторнировано
 SReg          :double       //  19  Не зарегистрировано
 SubTip        :word         //  20  Подтип СФ (SchFact.SubTip)
 // 0-отгрузка 16-аванс 19-прочие дох. 17-платеж 27-возврат платежа 8-возврат товара
 UsersDoc_Name :string       //  21  наим-е типа СФ
 TipUser       :word         //  22  тип СФ (SchFact.TipUser)
//атрибуты собственной организации
  MyOrgNRec     : Comp   // NRec собственной организации
  MyOrg_Up_NRec : Comp   // NRec головной организации
  MyOrgName    :string   //  19
  MyOrgAddr    :string   //  20
  MyPostAddr   :string   //  Почтовый адрес
  MyOrgTel     :string   //  21
  MyOrgSchet   :string   //  22
  MyOrgBank    :string   //  23
  MyOrgGorod   :string   //  24
  MyOrgINN     :string   //  25
  MyOrgKPP     :string   //  25a
  MyOrgOKONH   :string   //  26
  MyOrgOKPO    :string   //  27
  MyOrgBankRemark:string //  28   добавлено 18/09/97  13:03
  MyOrgBankAddr:string   //  29
  MyOrgBankMFO:string    //  30
  MyOrgBankRKC:string    //  31
  MyOrgBankSchRKC:string //  32
  MyOrgBankSchPlatDoc:string // 33
//атрибуты организации-контрагента
  OrgUnnORInn   :string
  OrgNRec       :Comp         // NRec организации
  Org_Up_NRec   :Comp         // NRec головной организации
  OrgName       :string       //  22
  OrgAddr       :string       //  23
  PostAddr      :string       //  Почтовый адрес
  OrgTel        :string       //  24
  OrgSchet      :string       //  25
  OrgBank       :string       //  26
  OrgGorod      :string       //  27
  OrgINN        :string       //  28
  OrgKPP        :string       //  28a
  OrgOKONH      :string       //  29
  OrgOKPO       :string       //  30
  OrgBankRemark:string     //  31   добавлено 18/09/97  13:03
  OrgBankAddr:string       //  32
  OrgBankMFO:string        //  33
  OrgBankRKC:string        //  34
  OrgBankSchRKC:string     //  35
  OrgBankSchPlatDoc:string //  36
//параметры ТХО из поля "К документу №" (для ТХО по платежу)
 cPlat         :Comp      //  1 nRec ТХО
 PlatNo        :string    //  2 номер
 PlatDat       :Date      //  3 дата обработки
 PlatNazn      :string    //  4 назначение из ТХО
 PlatNo_Date   :string    //    информация о платеже
 GruzFromNRec  :Comp      //  NRec грузоотправителя
 GruzFrom                 //  6 грузоотправитель
 GruzFromAddr             //  6 грузоотправитель
 GruzToNRec    :Comp      //  NRec грузополучателя
 GruzTo                   //  7 грузополучатель
 GruzToAddr               //  7 грузополучатель
// валюта СФ
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
  Nazn         :string    //  5 назначение из СФ
  Dollarah     :string    //  9
.endfields
^^
.end
.fields
// Подписанты
  IsValidFeeSigners        : boolean   // True, если Группа выбрана.
  cFeeSignersNRec          : comp      // Ссылка на выбранную группу подписантов
  NameFeeSigners           : string    // имя выбранной группы подписантов

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
// цикл по ТСД, по которым создан СФ
.{CheckEnter SchfKatSopr
.fields
 cSopr     : comp       //  0 nRec ТСД
 NSopr     : string     //  1 номер
 DSopr     : Date       //  2 дата сост.
 NSoprDO   : string     //  3 номер ДО
 DSoprDO   : Date       //  4 дата сост. ДО
//РК
 NSoprDG   : string     //  4a номер договора
 DSoprDG   : Date       //  4b дата сост. договора
 SoprPaym  : word       //  4c условия оплаты
//
 GruzFromK : string     //  5 грузоотправитель
 GruzToK   : string     //  6 грузополучатель
.endfields
01234abc56
^^^^^^^^^^
// цикл по специф-и ТСД
.{CheckEnter SchfSpSopr
.fields
  cSpSopr      :comp         //   1 nRec позиции специф-и
.endfields
1
^
// цикл по налогам позиции специф-и ТСД
.{CheckEnter SchfSpSoprNalog
.fields
  cSpDocNal    :Comp         //  1 nRec налога
.endfields
1
^
.} // SchfSpSoprNalog
.} // SchfSpSopr
.} // SchfKatSopr
// цикл по специф-и СФ
.{CheckEnter SpSchf
.fields
  cSpSchf      :comp         // 0 nRec
  SpName       :string       // 1 наименование позиции спец-и
  SpBarCode    :string       // 1a
  SpTNVED      :string
  SpOKDP       :string       // 2
  SpOtpEd      :string       // 3 отпускная единица
  SpABBREd     :string       // 3а сокращенное наименование единицы измерения
  SpKodEd      :string       // 3б код единицы измерения
  SpKol        :double       // 4 кол-во
  SpPrice      :double       // 5 цена
  SpPrNoNds    :double       //   цена без НДС
  SpPrMC       :word         // 6 признак (1-МЦ, 2-услуга)
  SpGrNal      :comp         // 7 ссылка на группу налогов по позиции
  SpNKvit      :string       // 8 номер квитанции
  SpNVagon     :string       // 9 номера вагонов
  SpGrPrMC     :word         // 10 <>0 - группировка по признаку МЦ/усл.
// суммы по позиции спец-и СФ
  SpSumNoNDS   :double       // 1 без НДС
  SpNDS        :double       // 2 НДС
  SpPerc       :double       // 3 ставка
  sSpPerc      :string       // 3 ставка в виде строки
  SpAkciz      :double       // 4 акциз
  SpDrNal      :double       // 5 прочие налоги
  SpSaleTax    :double       // 5a налог с продаж
  SpExistNDS   :boolean      // 5b true - есть НДС
  SpSumma      :double       // 6 итого с НДС
  GTDKod       :string
  GTDCountry   :string
  GTDNomer     :string
//дополнительные значения для корректировочного СФ
  SpKol_Src      :double
  SpPrice_Src    :double
  SpPrNoNds_Src  :double     //   цена без НДС
  SpSumNoNDS_Src :double     // 1 без НДС
  SpNDS_Src      :double     // 2 НДС
  SpPerc_Src     :string     // 3 ставка
  SpAkciz_Src    :double     // 4 акциз
  SpDrNal_Src    :double     // 5 прочие налоги
  SpSaleTax_Src  :double     // 5a налог с продаж
  SpExistNDS_Src :boolean    // 5b true - есть НДС
  SpSumma_Src    :double     // 6 итого с НДС
// Дополнение к спецификации
  SpDopol        :string 
.endfields
    a  аб      1
011123334567890 12345ab6        12345ab6
^^^^^^^^^^^^^^^ ^^^^^^^^ ^^^ ^^ ^^^^^^^^ ^^
^ цена без ндс неокругленная
^ цена без ндс неокругленная для корректировочного СФ
.} // SpSchf
// для казахстана
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
  cNalogFin  : Comp            // 1  "ссылка на NalogFin",
.endfields
1
^
.} // NalogFinSchf
.fields
  Predmet      :string       //   1
  bSumEqual    :boolean      //   2 округление итоговых сумм
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
.if ItogoGroup       // итого по группе счет-фактур. Если true, то не печатать Итого
.fields
 FooterGroup     :string
 GrExportImport  :double       //   8
 GrSAkciz        :double       //   9  Акциз
 //Belarus
 GrTara          :double       //   9a
 GrTara_NDS      :double       //   9b
 GrSaleTax       :double       //  налог с продаж
 //
 GrS1            :double       //  10  без НДС 20%
 GrS2            :double       //  11  НДС 20%
 GrS3            :double       //  12  Итого по 20%
 GrS4            :double       //  13  без НДС 10%
 GrS5            :double       //  14  НДС 10%
 GrS6            :double       //  15  Итого по 20%
 GrS23           :double       //  15a без НДС 0%
 GrS8            :double       //  15b НДС 0%
 GrS9            :double       //  15c Итого по 0%
 GrS7            :double       //  16  без НДС
 GrS10           :double       //  16a прочие налоги
 GrS             :double       //  17  Итого по СФ
 GrSOplSt        :double       //  18  Не оплачено
 GrSOplSt2       :double       //  18a Не сторнировано
 GrSReg          :double       //  19  Не зарегистрировано
.endfields
12345678901234567890
^^^^^^^^^^^^^^^^^^^^^
.end
.} // Schf
.endform

#include declar.frn    // Декларации, которые используются при печати СФ
#include schfbla1.frn
#include schfbla2.frn  // бланки СФ (с 25.02.2000)
#include schfbla3.frn  // затычка для oper02fix16
#include schfbla4.frn  // бланки СФ (с 01.01.2001)
#include schfbla6.frn  // бланки СФ (с 11.05.2006)
#include schfbla7.frn  // корректировочный счет-фактура
#include schfbla8.frn  // бланки СФ (с 01.01.2012)
#include schfbla5.frn  // бланки СФ для РБ
#include schfree1.frn
#include schfree2.frn  // для Беларуси
#include schfree3.frn  // для Казахстана
#include nsfbla1.frn   // для Казахстана
