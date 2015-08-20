//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 7.12 - Векселя и кредиты
// Печать каталога векселей из окна редактирования
//------------------------------------------------------------------------------

#doc
Печать каталога векселей из окна редактирования
#end

.set name='VeksEditP'
.nameinlist 'Базовая форма'
.hide
.fields

 VekslNRec
 VekslDescG
 VekslDescr

 SrDoc
 NoDoc
 NoBlnk
 DatVip

 NameVid1

 MestVip
 MestGah
 Period
 Percent
 SrokGash
 DatGash

 Sum
 SumSimv
 SumV
 SumPl
 SumPlV

 StatName
 VekslDat
 BankDat
 BicDat
 RaschDat

 PlatName
 BankPlat
 BicPlat
 RaschPlat

 DergName
 UslPog
 SumVSimv
.endfields

 VekslNRec   Veksl.NRec - ^
 VekslDescG  Группа дескрипторов - ^
 VekslDescr  Дескриптор          - ^

 SrDoc       Серия документа     - ^
 NoDoc       Номер документа     - ^
 NoBlnk      Бланк               - ^
 DatVip      Дата составления    - ^

 StatName   Статус документа     - ^
 NameVid1   Вид документа        - ^

 VekslDat   Векселедатель        - ^
 BankDat    Банк векселедателя   - ^
 BicDat     Бик/МФО банка векселедателя        - ^
 RaschDat   Расчетный счет банка векселедателя - ^

 PlatName   Плательщик            - ^
 BankPlat   Банк плательщика      - ^
 BicPlat    Бик/МФО банка плательщика        - ^
 RaschPlat  Расчетный счет банка плательщика - ^

 DergName   Первый держатель - ^
 MestVip    Место выдачи     - ^
 MestGah    Место платежа    - ^
 UslPog     Условия погашения- ^

 Period     Период           - ^
 Percent    Процент годовых  - ^
 SrokGash   Срок погашения   - ^
 DatGash    Фактически погашен- ^

 Sum        Сумма по векселю в рублях - ^
 SumSimv    Символ рубля              - ^
 SumV       Сумма по векселю в валюте - ^
 SumPl      Сумма гашения в рублях    - ^
 SumPlV     Сумма гашения в валюте    - ^
 SumVSimv   Символ валюты             - ^
.endform

!=============================================================
.linkform 'VeksEditP01' prototype is 'VeksEditP'
!=============================================================
.NameInList 'Документ для проверки работоспособности формы'
.hide
.group 'Редактирование'
.p 80
.defo portrait
.fields
  CommonFormHeader
  VekslNRec
  VekslDescG
  VekslDescr
  SrDoc
  NoDoc
  NoBlnk
  DatVip
  NameVid1
  MestVip
  MestGah
  Period
  Percent
  SrokGash
  DatGash
  Sum
  SumSimv
  SumV
  SumPl
  SumPlV

  StatName

  VekslDat
  BankDat
  BicDat
  RaschDat

  PlatName
  BankPlat
  BicPlat
  RaschPlat

  DergName
  UslPog
  SumVSimv
.endfields

^
 Ш
   VekslNRec - ^
    Группа дескрипторов - ^
    Дескриптор          - ^

    Серия документа     - ^
    Номер документа     - ^
    Бланк               - ^
    Дата составления    - ^

    Вид документа        - ^

    Место выдачи     - ^
    Место платежа    - ^
    Период           - ^
    Процент годовых  - ^
    Срок погашения   - ^
    Фактически погашен- ^

    Сумма по векселю в рублях - ^
    Символ рубля              - ^
    Сумма по векселю в валюте - ^

    Сумма гашения в рублях    - ^
    Сумма гашения в валюте    - ^

    Статус документа     - ^

    Векселедатель        - ^
    Банк векселедателя   - ^
    Бик/МФО банка векселедателя        - ^
    Расчетный счет банка векселедателя - ^

    Плательщик            - ^
    Банк плательщика      - ^
    Бик/МФО банка плательщика        - ^
    Расчетный счет банка плательщика - ^

    Первый держатель - ^

    Условия погашения- ^

    Символ валюты             - ^
 Ш
.endform




