/*
 ╔═══════════════════════════════════════════════════════════════════════════╗
 ║                     (c) 1994,97 корпорация ГАЛАКТИКА                      ║
 ║ Проект        : ГАЛАКТИКА                                                 ║
 ║ Система       : Оперативный контур                                        ║
 ║ Версия        : 4.33                                                      ║
 ║ Назначение    : Отчет "Погашение задолженностей по продажам" - форма      ║
 ║ Ответственный : Володько Анатолий Владимирович                            ║
 ║ Параметры     : нет                                                       ║
 ╚═══════════════════════════════════════════════════════════════════════════╝
*/
! Первый символ дескриптора
! '@': присвоить адрес обьекта (переменная должна быть типа LongInt )
!      работает только для наследников tDebListStructure
!      для итоговых сумм не работает так как обьект не создается!
!
! tDebListStructure - любой обьект наследуется от этого
!     конец дескриптора - настроить на данные всего обьекта
!          (использовать для элементов и присвоения адреса обьекта)
!     'K': пойти на ключ tDeblistKeyPerDate или tDeblistKeyPerDay
! до 2 цифр : установить номер записи периода
!     '#ИМЯФАЙЛА.ИМЯПОЛЯ '
!      или '#ИМЯПОЛЯ '      : задать поле из файла, которое должен обработать
!                             один из наследуемых обьектов
!
! Нижеследующие(элементы) не имеют собственных дескрипторов только Inherited
!  tDebListSumma    - Double
!  tDebListString   - String
!  tDebListDate     - Date
!  tDebListInteger  - Integer
!  tDebListLongInt  - LongInt
!  tDeblistKey      - абстрактный обьект ключа
!  tDeblistKeyDate       (ключи нужны для горизонтальных циклов)
!  tDeblistKeyLongInt
!
! tDeblistKeyPerDate                =object(tDebListStucture)
!     'B': начальная дата периода Date
!     'E': конечная дата периода  Date
!     'N': строка 1 наименования  String
!     'K': строка 2 наименования  String
!
! tDeblistKeyPerDay                 =object(tDebListStucture)
!     'B': минимальное число дней просрочки  LongInt
!     'E': максимальное число дней просрочки LongInt
!     'N': строка наименования    String
!
! tDebListAbstractCycle             =object(tDebListStucture)
!     'L': Fields    (не суммируемые поля)                 -> tDebListStucture
!     'S': SummsToUp (суммируемые поля вверх по циклам )   -> tDebListStucture
!                      (tDebListDO или tDebListProdZakupSaldoItog для периодов)
!     'I': SummsToUp (итоги по моему циклу моих же данных) -> tDebListStucture
!     'C': CalcSumms (рассчитаные по итогам суммы,
!                          например сальдо по контрагенту) -> tDebListStucture
!
! tDebListCycle и tDebListGorCycle  =object(tDebListAbstractCycle)
!     'V': внутренний цикл (+необязательная цифра - номер)     -> tDebListCycle или tDebListGorCycle
!     'U': итоги моего цикла по данным внутреннего цикла       -> tDebListCycle или tDebListGorCycle
!     'P': горизонтальный цикл (+необязательная цифра - номер) -> tDebListGorCycle
!      (из горизонтального вторично пойти нельзя)
!
! tDebListFileCycle                 =object(tDebListCycle)
!     '#<имяполявмоейтаблице>'      (Например #Name)
!  или '#<имямоейтаблицы.имяполя>'  (Например #KatOrg.Name для цикла
!                                    по KatOrg)
!
! tDebListBaseDocForKatOrg          =object(tDebListFileCycle)
!    &DateDog  - дата договора
!    &DateOpl  - максимальная дата оплаты
!    &DateOtgr - максимальная дата отгрузки
!    #BaseDoc.<имя поля> - поля таблицы BaseDoc
!    #BaseFin.<имя поля> - поля таблицы BaseFin
!    #KatSopr.<имя поля> - поля таблицы KatSopr
!    #SpSopr.<имя поля>  - поля таблицы SpSopr
!
! tDebListDO                        =object(tDebListStucture)
!     'D': SumDog     - сумма договора                       -> tDebListProdZakupSaldoItog
!     'Z': ToDate1    - обороты и задолженности до даты1     -> tDebListProdZakupSaldoItog
!     'N': NProsr2    - непросроченные обороты от даты1 до даты2  -> tDebListProdZakupSaldoItog
!     'B': All2       - все обороты от даты1 до даты2        -> tDebListProdZakupSaldoItog
!     'T': ToDate2    - обороты и задолженности до даты2     -> tDebListProdZakupSaldoItog
!     'C': AfterDate2 - обороты после даты2                  -> tDebListProdZakupSaldoItog
!     'A': All        - итоговые обороты и задолженности     -> tDebListProdZakupSaldoItog
!
! tDebListProdZakupSaldoItog        =object(tDebListStucture)
!     'P': Prod   - договора продажи, отпуска на консигнацию -> tDebListOplOtgrItog
!     'Z': Zakup  - договора покупки, приема на консигнацию  -> tDebListOplOtgrItog
!     'S': Saldo  - разница                                  -> tDebListOplOtgrItog
!     'I': Itog   - сумма                                    -> tDebListOplOtgrItog
!
! tDebListOplOtgrItog               =object(tDebListStucture)
!     'O': Oplata   - оплата                -> tDebListMoneyTovarDolg
!     'G': Otgruzka - отгрузка/прием товара -> tDebListDirectVozratDolg
!     'I': Itog     - разница               -> tDebListDirectVozratDolgFact
!
! tDebListMoneyTovarDolg            =object(tDebListStucture)
!     'M': Money   - оплата деньгами  -> tDebListDirectVozrat
!     'T': Tovar   - оплата товаром   -> tDebListDirectVozrat
!     'I': Itog    - итого оплаты     -> tDebListDirectVozrat
!     'N': Normal  - нормальная задолженность по оплате    -> tDebListSumma
!     'P': Prosr   - просроченная задолженность по оплате  -> tDebListSumma
!
! tDebListDirectVozrat              =object(tDebListStucture)
!     'D': Direct  - в прямом направлении         -> tDebListSumma
!     'V': Vozvrat - возврат  (по рекламации или по консигнации) -> tDebListSumma
!     'I': Itog    - разница                      -> tDebListSumma
!          переходы на tDebListSumma
!
! tDebListDirectVozratDolg         =object(tDebListDirectVozvrat)    (обороты и задолженности по товару)
! и tDebListDirectVozratDolgFact   =object(tDebListDirectVozratDolg) (фактические обороты и задолженности)
!     'N': Normal  - нормальная задолженность    -> tDebListSumma
!     'P': Prosr   - просроченная задолженность  -> tDebListSumma
!

#doc
Отчет "Погашение задолженностей по продажам" - форма
#end
.Set Name = 'DebPas'
.hide
.fields
  Otchet     : LongInt
  MainCycle  : LongInt
  ErrInit    : Boolean
  ErrInit2   : Boolean
  KatOrgNum  : LongInt
  StepDocNum : LongInt
  StepDocNum1: LongInt
  KatOrgNum1 : LongInt
.endfields
 ^ ^
.{CHECKENTER Nastr1
^Сюды вставлять всю настройку отчета
.{CHECKENTER Nastr2
^Гарантируем что настройка прошла
.}
.}
Шапку отчета сюда!
.{CHECKENTER fKatorg1
^Шапку по контрагенту сюда!
.{CHECKENTER fBaseDoc1
^Все по договору печатать здесь!
.{CHECKENTER fBaseDoc2
^Гарантируем допечатку BaseDoc
.}
.}
Итоги по контрагенту вставлять сюды!
.{CHECKENTER fKatorg2
^Гарантируем допечатку KatOrg
.}
.}
Итоги по отчету здесь !
.endform

!*****************************************************************************

#doc
Отчет о погашении задолженности по продажам (развернутый)
#end
.linkform 'DebPas01' prototype is DebPas
.NameInList 'Отчет о погашении задолженности по продажам (развернутый)'
.var
  BaseDoc:longint     // цикл по договорам
  AllKontr:word
  grKontrName:string
  Date1  :date
  Date2  :date
  vValOt :string
  DBegDO :date
  DEndDO :date
  Sost   :word
  IsProd :Boolean

!  Prod     :boolean
!  Zakup    :boolean
!  KonsP    :boolean
!  KonsZ    :boolean
!  Rub      :boolean
!  Val      :boolean
!  RubVal   :boolean
!  RubValRub:word
  fValut   :boolean

  KatOrgName:string   // наименование контрагента

  Days1  :longint     // дни просрочки
  Days21 :longint
  Days22 :longint
  Days3  :longint

  NoDoc:String  // № договора
  dDoc:date     // дата договора
  dOpl:date     // макс. дата оплаты

  DSumDog :double  // сумма договора  по продажам
  KSumDog:double  // сумма договоров по контрагенту по продажам
  OSumDog:double  // сумма договора по отчету по продажам
//  фактические задолженности на начало периода xZIIN

//фактические задолженности на начало периода xZPIN по продажам
  dZPIN:double    // по договору
  kZPIN:double    // по контрагенту
  oZPIN:double    // по отчету
//фактические задолженности на конец периода xTPIN по продажам
  dTPIN:double    // по договору
  kTPIN:double    // по контрагенту
  oTPIN:double    // по отчету

//просроченные фактические задолженности на начало периода xZPIP
  dZPIP:double    // по договору
  kZPIP:double    // по контрагенту
  oZPIP:double    // по отчету
//просроченные фактические задолженности на конец периода xTPIP
  dTPIP:double  // по договору
  kTPIP:double  // по контрагенту
  oTPIP:double  // по отчету

// непросроченная оплата по договорам продажи за период
  dNPOI:double  // по договору
  kNPOI:double  // по контрагенту
  oNPOI:double  // по отчету

//погашение задолженности(оплата) P2xIOIIx!
  P2dPO1:double // по договору
  P2kPO1:double // по контрагенту
  P2oPO1:double // по отчету

  P2dPO2:double // по договору
  P2kPO2:double // по контрагенту
  P2oPO2:double // по отчету

  P2dPO3:double // по договору
  P2kPO3:double // по контрагенту
  P2oPO3:double // по отчету
.endvar
.{CHECKENTER Nastr1
.begin // енто мы настраиваем поля
  DebSetupField(MainCycle,BaseDoc,'@V');      // цикл по договорам

  DebSetupField(MainCycle,AllKontr,   '&AllKontr');
  DebSetupField(MainCycle,grKontrName,'&grKontrName');

  DebSetupField(MainCycle,KatOrgName,'#NAME'); // наименование контрагента

  DebSetupField(MainCycle,Days1,  '1P2KE');    // дни просрочки
  DebSetupField(MainCycle,Days21, '2P2KB');
  DebSetupField(MainCycle,Days22, '2P2KE');
  DebSetupField(MainCycle,Days3,  '3P2KB');

  DebSetupField(BaseDoc,  Date1,  '&Date1');
  DebSetupField(BaseDoc,  Date2,  '&Date2');
  DebSetupField(BaseDoc,  vValOt, '&vValOt');
  DebSetupField(BaseDoc,  DBegDO, '&DBegDO');
  DebSetupField(BaseDoc,  DEndDO, '&DEndDO');
  DebSetupField(BaseDoc,  Sost,   '&Sost');
  DebSetupField(BaseDoc,  IsProd, '&IsProd');

!  DebSetupField(BaseDoc,  Prod,     '&Prod');
!  DebSetupField(BaseDoc,  Zakup,    '&Zakup');
!  DebSetupField(BaseDoc,  KonsP,    '&KonsP');
!  DebSetupField(BaseDoc,  KonsZ,    '&KonsZ');
!  DebSetupField(BaseDoc,  Rub,      '&Rub');
!  DebSetupField(BaseDoc,  Val,      '&Val');
!  DebSetupField(BaseDoc,  RubVal,   '&RubVal');
!  DebSetupField(BaseDoc,  RubValRub,'&RubValRub');

  DebSetupField(BaseDoc,  fValut, '&fValut');

  DebSetupField(BaseDoc,  NoDoc,  '#NoDoc'); // дата договора
  DebSetupField(BaseDoc,  dDoc,   '#dDoc'); // дата договора
  DebSetupField(BaseDoc,  dOpl,   '&DateMaxOpl'); // макс. дата оплаты

// Суммы берем только по договорам продаж!
  DebSetupField(BaseDoc,  dSumDog,'SDP');   // сумма договора
  DebSetupField(BaseDoc,  kSumDog,'IDP');   // сумма договоров по контрагенту
  DebSetupField(MainCycle,oSumDog,'UIDP');   // сумма договоров по отчету

//  фактические задолженности на начало периода xZIIN
  DebSetupField(BaseDoc,  dZPIN, 'SZPIN');    // по договору
  DebSetupField(BaseDoc,  kZPIN, 'IZPIN');    // по контрагенту
  DebSetupField(MainCycle,oZPIN, 'UIZPIN');    // по отчету
//  фактические задолженности на конец периода xTIIN
  DebSetupField(BaseDoc,  dTPIN, 'STPIN');    // по договору
  DebSetupField(BaseDoc,  kTPIN, 'ITPIN');    // по контрагенту
  DebSetupField(MainCycle,oTPIN, 'UITPIN');    // по отчету

//  просроченные фактические задолженности на начало периода xZIIP
  DebSetupField(BaseDoc,  dZPIP, 'SZPIP');    // по договору
  DebSetupField(BaseDoc,  kZPIP, 'IZPIP');    // по контрагенту
  DebSetupField(MainCycle,oZPIP, 'UIZPIP');    // по отчету
//  просроченные задолженности на конец периода xTIIP
  DebSetupField(BaseDoc,  dTPIP, 'STPIP');    // по договору
  DebSetupField(BaseDoc,  kTPIP, 'ITPIP');    // по контрагенту
  DebSetupField(MainCycle,oTPIP, 'UITPIP');    // по отчету

// непросроченная оплата по договорам продажи за период
  DebSetupField(BaseDoc,  dNPOI, 'SNPOII');    // по договору
  DebSetupField(BaseDoc,  kNPOI, 'INPOII');    // по контрагенту
  DebSetupField(MainCycle,oNPOI, 'UINPOII');    // по отчету

// погашение задолженности(оплата) P2xIOIIx! (только продажи)
       // до 10 дней P2xPO1
  DebSetupField(BaseDoc,  P2dPO1, '1P2SPOII'); // по договору
  DebSetupField(BaseDoc,  P2kPO1, '1P2IPOII'); // по контрагенту
  DebSetupField(MainCycle,P2oPO1, '1P2UIPOII'); // по отчету
       // от 11 до 45 дней P2xPO2
  DebSetupField(BaseDoc,  P2dPO2, '2P2SPOII'); // по договору
  DebSetupField(BaseDoc,  P2kPO2, '2P2IPOII'); // по контрагенту
  DebSetupField(MainCycle,P2oPO2, '2P2UIPOII'); // по отчету
       // более 45 дней P2xPO3
  DebSetupField(BaseDoc,  P2dPO3, '3P2SPOII'); // по договору
  DebSetupField(BaseDoc,  P2kPO3, '3P2IPOII'); // по контрагенту
  DebSetupField(MainCycle,P2oPO3, '3P2UIPOII'); // по отчету
end.
.{CHECKENTER Nastr2
.}
.}
.fields
  CommonFormHeader
 DateToStr(Date1,'DD/MM/YYYY')
 DateToStr(Date2,'DD/MM/YYYY')
 vValOt
 if (sost=1,'оформляемым',
      if (sost=2,'исполняемым',
      if (sost=3,'закрытым',''
    )))
 DateToStr(dBegDO,'DD/MM/YYYY')
 DateToStr(dEndDO,'DD/MM/YYYY')
 If(fValut,'(только выписанным в '+vValOt+')','')
 If(AllKontr=1,'(по всем контрагентам)',
    If(AllKontr=0,'(по выбранным контрагентам)',
    If(AllKontr=2,'по группе контрагентов: '+grKontrName,''
   )))
.endfields
 Б ^

                    ОТЧЕТ О ПОГАШЕНИИ ДЕБИТОРСКОЙ ЗАДОЛЖЕННОСТИ

  За период с ^ по ^ в ^
   по ^ договорам продажи с ^ по ^ ^
   ^ Б
!
!     [@] продажа                 [@] рублевые
!     [@] закупка                 [@] валютные
!     [@] отпуск на консигнацию   [@] валютно-рублевые
!     [@] прием на консигнацию        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

 С Положительные задолженности соответствуют долгу контрагента, отрицательные - нашему долгу. С

.{CHECKENTER fKatorg1
.fields
  KatOrgNum KatOrgName
  Days1 Days21 Days22 (Days3-1)
.endfields

 Б ^.По контрагенту: ^ Б
 Ш┌─────────┬──────────┬──────────┬───────────────┬───────────────┬───────────────┬───────────────────────────────────────────────┬───────────────┬───────────────┐
│ № Счета │   Дата   │  Дата    │     Сумма     │  ДЗ на начало │ ПДЗ на начало │         Суммы оплаты за отчетный период       │  ДЗ на конец  │ ПДЗ на конец  │
│         │   Счета  │ оплаты по│     Счета     │   отчетного   │   отчетного   ├───────────────┬───────────────┬───────────────┤   отчетного   │   отчетного   │
│         │          │ договору │               │    периода    │    периода    │ Срок до@~@@дн.│от@~@@до@~@@дн.│ более@~@@дней │    периода    │    периода    │
├─────────┼──────────┼──────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┤ Ш
.{CHECKENTER fBaseDoc1;IsProd=true
!.begin Message(''#3'ОтчетfStepDoc1',0); end.
.fields
  NoDoc DateToStr(dDoc,'DD/MM/YYYY')
         DateToStr(dOpl,'DD/MM/YYYY') dSumDog         dZPIN            dZPIP        P2dPO1+dNPOI      P2dPO2           P2dPO3          dTPIN            dTPIP
.endfields
 Ш│@~@@@@@@@│@~@@@@@@@@│@~@@@@@@@@│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│ Ш
.{CHECKENTER fBaseDoc2
.}
.}
.fields
                                    kSumDog         kZPIN            kZPIP         P2kPO1+kNPOI      P2kPO2           P2kPO3          kTPIN            kTPIP
.endfields
 Ш├─────────┴──────────┴──────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┤
│ Итого по контрагенту          │&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│
└───────────────────────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┘ Ш
.{CHECKENTER fKatorg2//;false
.}
.}
.fields
  If(AllKontr=2  ,'Итого по группе','') Days1 Days21 Days22 (Days3-1)
  If(AllKontr=2  ,'контрагентов:',
    If(AllKontr=0,'Итого по всем выбранным',''))
  If(AllKontr=2  ,grKontrName,
    If(AllKontr=0,'контрагентам:',
    If(AllKontr=1,'Итого по всем контрагентам:','')))
                                    oSumDog         oZPIN            oZPIP         P2oPO1+oNPOI       P2oPO2           P2oPO3          oTPIN            oTPIP
.endfields

 С
 И┌───────────────────────────────┬───────────────┬───────────────┬───────────────┬───────────────────────────────────────────────┬───────────────┬───────────────┐
│                               │    Сумма      │  ДЗ на начало │ ПДЗ на начало │         Суммы оплаты за отчетный период       │  ДЗ на конец  │ ПДЗ на конец  │
│                               │     всех      │    отчетного  │   отчетного   ├───────────────┬───────────────┬───────────────┤   отчетного   │   отчетного   │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@ │    счетов     │     периода   │    периода    │ Срок до@~@@дн.│от@~@@до@~@@дн.│ более@~@@дней │    периода    │    периода    │
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@ ├───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┤
│ @~@@@@@@@@@@@@@@@@@@@@@@@@@@@ │&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│
└───────────────────────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┘ Щ
.endform

!*****************************************************************************

#doc
Отчет о погашении задолженности по продажам (свернутый)
#end
.linkform 'DebPas02' prototype is DebPas
.NameInList 'Отчет о погашении задолженности по продажам (свернутый)'
.var
  ff    :string
  BaseDoc:longint     // цикл по договорам
  AllKontr:word
  grKontrName:string
  Date1  :date
  Date2  :date
  vValOt :string
  DBegDO :date
  DEndDO :date
  Sost   :word
!  Prod     :boolean
!  Zakup    :boolean
!  KonsP    :boolean
!  KonsZ    :boolean
!  Rub      :boolean
!  Val      :boolean
!  RubVal   :boolean
!  RubValRub:word
  fValut   :boolean

  KatOrgName:string   // наименование контрагента

  Days1  :longint     // дни просрочки
  Days21 :longint
  Days22 :longint
  Days3  :longint

  KSumDog:double  // сумма договоров по контрагенту по продажам
  OSumDog:double  // сумма договора по отчету по продажам
//  фактические задолженности на начало периода xZIIN

//фактические задолженности на начало периода xZPIN по продажам
  kZPIN:double    // по контрагенту
  oZPIN:double    // по отчету
//фактические задолженности на конец периода xTPIN по продажам
  kTPIN:double    // по контрагенту
  oTPIN:double    // по отчету

//просроченные фактические задолженности на начало периода xZPIP
  kZPIP:double    // по контрагенту
  oZPIP:double    // по отчету

//просроченные фактические задолженности на конец периода xTPIP
  kTPIP:double  // по контрагенту
  oTPIP:double  // по отчету

// непросроченная оплата по договорам продажи за период
  kNPOI:double  // по контрагенту
  oNPOI:double  // по отчету

//погашение задолженности(оплата) P2xIOIIx!
  P2kPO1:double // по контрагенту
  P2oPO1:double // по отчету

  P2kPO2:double // по контрагенту
  P2oPO2:double // по отчету

  P2kPO3:double // по контрагенту
  P2oPO3:double // по отчету
.endvar
.{CHECKENTER Nastr1
.begin // енто мы настраиваем поля

  DebSetupField(MainCycle,BaseDoc,'@V');      // цикл по договорам

  DebSetupField(MainCycle,AllKontr,   '&AllKontr');
  DebSetupField(MainCycle,grKontrName,'&grKontrName');

  DebSetupField(MainCycle,KatOrgName,'#NAME'); // наименование контрагента

  DebSetupField(MainCycle,Days1,  '1P2KE');    // дни просрочки
  DebSetupField(MainCycle,Days21, '2P2KB');
  DebSetupField(MainCycle,Days22, '2P2KE');
  DebSetupField(MainCycle,Days3,  '3P2KB');

  DebSetupField(BaseDoc,  Date1,  '&Date1');
  DebSetupField(BaseDoc,  Date2,  '&Date2');
  DebSetupField(BaseDoc,  vValOt, '&vValOt');
  DebSetupField(BaseDoc,  DBegDO, '&DBegDO');
  DebSetupField(BaseDoc,  DEndDO, '&DEndDO');
  DebSetupField(BaseDoc,  Sost,   '&Sost');

!  DebSetupField(BaseDoc,  Prod,     '&Prod');
!  DebSetupField(BaseDoc,  Zakup,    '&Zakup');
!  DebSetupField(BaseDoc,  KonsP,    '&KonsP');
!  DebSetupField(BaseDoc,  KonsZ,    '&KonsZ');
!  DebSetupField(BaseDoc,  Rub,      '&Rub');
!  DebSetupField(BaseDoc,  Val,      '&Val');
!  DebSetupField(BaseDoc,  RubVal,   '&RubVal');
!  DebSetupField(BaseDoc,  RubValRub,'&RubValRub');

  DebSetupField(BaseDoc,  fValut, '&fValut');

// Суммы берем только по договорам продаж!
  DebSetupField(BaseDoc,  kSumDog,'IDP');   // сумма договоров по контрагенту
  DebSetupField(MainCycle,oSumDog,'UIDP');   // сумма договоров по отчету

//  фактические задолженности на начало периода xZIIN
  DebSetupField(BaseDoc,  kZPIN, 'IZPIN');    // по контрагенту
  DebSetupField(MainCycle,oZPIN, 'UIZPIN');    // по отчету
//  фактические задолженности на конец периода xTIIN
  DebSetupField(BaseDoc,  kTPIN, 'ITPIN');    // по контрагенту
  DebSetupField(MainCycle,oTPIN, 'UITPIN');    // по отчету

//  просроченные фактические задолженности на начало периода xZIIP
  DebSetupField(BaseDoc,  kZPIP, 'IZPIP');    // по контрагенту
  DebSetupField(MainCycle,oZPIP, 'UIZPIP');    // по отчету
//  просроченные задолженности на конец периода xTIIP
  DebSetupField(BaseDoc,  kTPIP, 'ITPIP');    // по контрагенту
  DebSetupField(MainCycle,oTPIP, 'UITPIP');    // по отчету

// непросроченная оплата по договорам продажи за период
  DebSetupField(BaseDoc,  kNPOI, 'INPOII');    // по контрагенту
  DebSetupField(MainCycle,oNPOI, 'UINPOII');    // по отчету

// погашение задолженности(оплата) P2xIOIIx! (только продажи)
       // до 10 дней P2xPO1
  DebSetupField(BaseDoc,  P2kPO1, '1P2IPOII'); // по контрагенту
  DebSetupField(MainCycle,P2oPO1, '1P2UIPOII'); // по отчету
       // от 11 до 45 дней P2xPO2
  DebSetupField(BaseDoc,  P2kPO2, '2P2IPOII'); // по контрагенту
  DebSetupField(MainCycle,P2oPO2, '2P2UIPOII'); // по отчету
       // более 45 дней P2xPO3
  DebSetupField(BaseDoc,  P2kPO3, '3P2IPOII'); // по контрагенту
  DebSetupField(MainCycle,P2oPO3, '3P2UIPOII'); // по отчету
end.
.{CHECKENTER Nastr2
.}
.}
.fields
  CommonFormHeader
 DateToStr(Date1,'DD/MM/YYYY')
 DateToStr(Date2,'DD/MM/YYYY')
 vValOt
 if (sost=1,'оформляемым',
      if (sost=2,'исполняемым',
      if (sost=3,'закрытым',''
    )))
 DateToStr(dBegDO,'DD/MM/YYYY')
 DateToStr(dEndDO,'DD/MM/YYYY')
 If(fValut,'(только выписанным в '+vValOt+')','')
 If(AllKontr=1,'(по всем контрагентам)',
    If(AllKontr=0,'(по выбранным контрагентам)',
    If(AllKontr=2,'по группе контрагентов: '+grKontrName,''
   )))
  Days1 Days21 Days22 (Days3-1)
.endfields
 Б ^

             ИТОГОВЫЙ ОТЧЕТ О ПОГАШЕНИИ ДЕБИТОРСКОЙ ЗАДОЛЖЕННОСТИ

  За период с ^ по ^ в ^
   по ^ договорам продажи с ^ по ^ ^
   ^ Б
!
!     [@] продажа                 [@] рублевые
!     [@] закупка                 [@] валютные
!     [@] отпуск на консигнацию   [@] валютно-рублевые
!     [@] прием на консигнацию        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

 С Положительные задолженности соответствуют долгу контрагента, отрицательные - нашему долгу. С

 Ш┌───────────────────────────────────────────┬───────────────┬───────────────┬───────────────┬───────────────────────────────────────────────┬───────────────┬───────────────┐
│                                           │     Сумма     │  ДЗ на начало │ ПДЗ на начало │         Суммы оплаты за отчетный период       │  ДЗ на конец  │ ПДЗ на конец  │
│ Контрагент                                │     Счетов    │   отчетного   │   отчетного   ├───────────────┬───────────────┬───────────────┤   отчетного   │   отчетного   │
│                                           │               │    периода    │    периода    │ Срок до@~@@дн.│от@~@@до@~@@дн.│ более@~@@дней │    периода    │    периода    │
├───────────────────────────────────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┤ Ш
.{CHECKENTER fKatorg1
.{CHECKENTER fBaseDoc1
.{CHECKENTER fBaseDoc2
.}
.}
.fields
 KatOrgName                                     kSumDog         kZPIN            kZPIP         P2kPO1+kNPOI        P2kPO2           P2kPO3          kTPIN           kTPIP
.endfields
 Ш│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│ Ш
.{CHECKENTER fKatorg2
.}
.}
.fields
 If(AllKontr=2  ,'Итого по группе контрагентов:'+grKontrName,
   If(AllKontr=0,'Итого по всем выбранным контрагентам:',
   If(AllKontr=1,'Итого по всем контрагентам:','')))
                                                 oSumDog         oZPIN            oZPIP       P2oPO1+oNPOI        P2oPO2           P2oPO3          oTPIN            oTPIP
.endfields
 Ш├───────────────────────────────────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┤
│@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│&'&&&&&&&&&&.&&│
└───────────────────────────────────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┘ Ш
.endform
