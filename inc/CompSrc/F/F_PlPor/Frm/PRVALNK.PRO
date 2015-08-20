//------------------------------------------------------------------------------
//                                                      (c) корпорация Галактика
// Галактика 5.0 - Бухгалтерский контур
// Печать валютных платежных документов
//------------------------------------------------------------------------------

#doc
Печать валютных платежных документов
#end
.set name = 'PrValNK'
.hide
.fields
!
 mfobik
 unnname
!
 nRecDoc
 cGroupSch
!
 NoDok
 DatVip
 DatVip1
 DayVip MonthVip YearVip
 DatPost
!
 nameorgplat nameorgplat1 plat31 plat31Ost
 adrorgplat telorgplat OKPOplat unnplat
 PlatKodState PlatNameState
 PlatKodCity PlatNameCity PlatTELCity
!
 namebankplat  bankplat31 bankplat31Ost
 adrBankplat  mfo1Bankplat  mfo2Bankplat  acc1Bankplat  acc2Bankplat acc3Bankplat
 remarkBankPlat KodStateBankPlat NameStateBankPlat 
!
 nameorgPol  pol31 pol31Ost
 adrorgPol  telorgPol  OKPOPol unnPol
 PolKodState PolNameState
 PolKodCity PolNameCity PolTELCity
!
 namebankPol  bankpol31 bankpol31Ost
 adrBankPol  mfo1BankPol  mfo2BankPol  acc1BankPol  acc2BankPol  acc3BankPol
 remarkBankPol KodStateBankPol NameStateBankPol 
!
 namebankBen  bankben31 bankben31Ost
 adrBankBen   mfo1BankBen  mfo2BankBen acc1BankBen  acc2BankBen  acc3BankBen
 remarkBankBen
!
 nameorgGruzPol  GruzPol31 GruzPol31Ost
 adrorgGruzPol  telorgGruzPol  OKPOGruzPol unnGruzPol
 GruzPolKodState GruzPolNameState
 GruzPolKodCity GruzPolNameCity GruzPolTELCity
!
 Summa
 SummaX
 SummaTruncFrac
 SimvolV
 NameV
 SummaSimv
 SummaSimvX
 SumProp
 SumPropS
 SumPropS1
 SumPropAll
 SumPropAllX
 SumPropAllS
!
 SummaPropEng
 SummaPropEngV
!
 SummaR       
 SummaRX       
 SummaRTruncFrac
 SimvolVR       
 NameVR
 SummaRSimv       
 SummaRSimvX       
 SumRProp       
 SumRPropS      
 SumRPropS1
 SumRPropAll    
 SumRPropAllX    
 SumRPropAllS 
!
 SummaNDE     
 SummaNDEX     
 SummaNDETruncFrac 
 SimvolNDE         
 NameNDE           
!
 MandatorySale 
 MandatorySaleP
 MandatoryKomis
 MandatoryKomisP
 MandatoryPeriod
 NotAllocation  
 NotAllocationS 
 NotAllocationP 
 NotAllocationSP 
 Allocation     
 AllocationS    
 AllocationP    
 AllocationSP    
 PureSumma
 PureSummaS
 PureSummaP
 PureSummaSP
!
 Nazn
 Nazn1
 Nazn2
 Nazn3
 Nazn4
 Nazn5
 Rash1
 Rash2
 Rash3
 Rash4
 Rash_1
 Rash_2
 Rash_3
 Rash_4
 wADoc_1
 wADoc_2
 wADoc_3
 wADoc_n
 VidOper
 KodTec
 KodNew
 DatOts
 DatOtsStr
 SROKPLAT
 TelePosPlat
! документы-приложения
 NoContract     
 DateContract   
 SumContract   
 NoPassport     
 DatePassport   
 NoAct     
 DateAct   
!
 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13
 payUSD
 payDM
 payElse
 ElseWhat
 page_symb
.endfields
.{
! системные настройки
mfobik            МФО, БИК или что еще ^
unnname           УНН, ИНН или что еще ^
! ссылки
nRecDoc           nRec документа                ^
cGroupSch         группа документов-оснований   ^
!
NoDok             номер документа                       ^
DatVip            дата его выписки: ДД месяц ГГГГ г.    ^
DatVip1           дата его выписки в формате ДД/ММ/ГГГГ ^
DayVip            число даты выписки                 ^ 
MonthVip          месяц даты выписки                 ^  
YearVip           год даты выписки                   ^
DatPost           дата поставки                      ^

! плательщик
nameorgplat       организация-плательщик                ^
nameorgplat1      настраиваемое наименование организации-плательщика ^
plat31                  ^
plat31Ost               ^
adrorgplat        адрес плательщика                     ^
telorgplat        телефон/факс плательщика              ^
OKPOplat          код ОКПО плательщика                  ^
unnplat           код УНН плательщика                   ^
PlatKodState   ^
PlatNameState  ^
PlatKodCity    ^
PlatNameCity   ^
PlatTELCity    ^

! банк плательщика
namebankplat      наименование банка плательщика        ^
bankplat31                ^
bankplat31Ost             ^
adrBankplat       адрес банка                           ^
mfo1Bankplat      код МФО банка 1'                      ^
mfo2Bankplat      код МФО банка 2'                      ^
acc1Bankplat      счет в банке 1'                       ^
acc2Bankplat      счет в банке 2'                       ^
acc3Bankplat      счет в банке 3'                       ^ 
remarkBankplat    примечание для банка плательщика      ^
KodStateBankPlat  код страны банка плательщика          ^
NameStateBankPlat наименование страны банка плательщика ^

! бенефициар
nameorgPol        организация-получатель                ^
pol31                ^
pol31Ost             ^
adrorgPol         адрес получателя                    ^
telorgPol         телефон/факс получателя             ^
OKPOPol           код ОКПО получателя                 ^
unnPol            код УНН получателя                  ^
PolKodState    ^
PolNameState   ^
PolKodCity     ^
PolNameCity    ^
PolTELCity     ^

! банк бенефициара
namebankPol       наименование банка получателя         ^
bankpol31                ^
bankpol31Ost             ^
adrBankPol        адрес банка получателя                ^
mfo1BankPol       код МФО банка 1'                      ^
mfo2BankPol       код МФО банка 2'                      ^
acc1BankPol       счет в банке 1'                       ^
acc2BankPol       счет в банке 2'                       ^
acc3BankPol       счет в банке 3'                       ^ 
remarkBankPol     примечание для банка получателя       ^
KodStateBankPol   код страны банка бенефициара          ^
NameStateBankPol  наименование страны банка бенефициара ^

! банк-корреспондент получателя
namebankBen       наименование банка посредника бенефициара      ^
               ^
               ^
adrBankBen        адрес банка                         ^
mfo1BankBen       код МФО банка 1'                    ^
mfo2BankBen       код МФО банка 2'                    ^
acc1BankBen       счет в банке 1'                     ^
acc2BankBen       счет в банке 2'                     ^
acc3BankBen       счет в банке 3'                     ^
remarkBankBen     примечание для банка бенефициара    ^

! грузополучатель
nameorgGruzPol        организация-грузополучатель         ^
               ^
               ^
adrorgGruzPol         адрес грузополучателя               ^
telorgGruzPol         телефон/факс грузополучателя        ^
OKPOGruzPol           код ОКПО грузополучателя            ^
unnGruzPol            код УНН грузополучателя             ^
GruzPolKodState    ^
GruzPolNameState   ^
GruzPolKodCity     ^
GruzPolNameCity    ^
GruzPolTELCity     ^

! суммы в валюте платежа
Summa             сумма платежа цифрами               ^
SummaX            сумма платежа (строка с разделителем)   ^
SummaTruncFrac    сумма платежа цифрами (доллары/центы)   ^
SimvolV           символ валюты                           ^
NameV             наименование валюты                     ^
SummaSimv         сумма платежа цифрами + символ валюты   ^
SummaSimvX        сумма платежа цифрами + символ валюты (строка с разделителем)
                ^
SumProp           сумма платежа прописью                  ^
SumPropS          сумма платежа прописью в скобках        ^
SumPropS1         сумма платежа прописью в скобках + наименование валюты       ^
SumPropAll        сумма платежа цифрами + символ валюты + прописью в скобках
                ^
SumPropAllX       сумма платежа цифрами + символ валюты + прописью в скобках (строка с разделителем)
                ^
SumPropAllS       сумма платежа цифрами (доллары/центы) + символ валюты + прописью в скобках
                ^
SummaPropEng      сумма прописью по-английски в НДЕ
            ^
SummaPropEngV     сумма прописью по-английски в инвалюте
            ^
! суммы в валюте расчетов
SummaR            сумма в валюте расчетов цифрами        ^
SummaRX           сумма в валюте расчетов (строка с разделителем)  ^
SummaRTruncFrac   сумма в валюте расчетов  цифрами (доллары/центы) ^
SimvolVR          символ валюты расчетов                           ^
NameVR            наименование валюты расчетов                     ^
SummaRSimv        сумма в валюте расчетов цифрами + символ валюты  ^
SummaRSimvX       сумма в валюте расчетов цифрами + символ валюты (строка с разделителем) ^
SumRProp          сумма в валюте расчетов прописью                 ^
SumRPropS         сумма в валюте расчетов прописью в скобках       ^
SumRPropS1        сумма в валюте расчетов прописью в скобках + наименование валюты       ^
SumRPropAll       сумма в валюте расчетов цифрами + символ валюты + прописью в скобках
                ^
SumRPropAllX      сумма в валюте расчетов цифрами + символ валюты + прописью в скобках (строка с разделителем)
                ^
SumRPropAllS      сумма платежа в валюте расчетов цифрами (доллары/центы) + символ валюты + прописью в скобках
                ^

! суммы в НДЕ для валюты расчетов
SummaNDE          cумма в НДЕ для валюты расчетов цифрами   ^
SummaNDEX         cумма в НДЕ для валюты расчетов цифрами (строка с разделителем)  ^
SummaNDETruncFrac сумма в НДЕ для валюты расчетов  цифрами (доллары/центы)  ^
SimvolNDE         символ НДЕ                                    ^
NameNDE           наименование НДЕ                              ^

! 17 полей - обязательная продажа валюты
MandatorySale     процент обязательной продажи валюты цифрами  ^
MandatorySaleP    процент обязательной продажи валюты прописью ^
MandatoryKomis    процент комиссии цифрами  ^
MandatoryKomisP   процент комиссии прописью ^
MandatoryPeriod   срок обязательной продажи (в днях) ^
NotAllocation     сумма, не подлежащая распределению в счет обязательной продажи 
        ^
NotAllocationS    сумма, не подлежащая распределению в счет обязательной продажи + символ валюты
        ^
NotAllocationP    сумма, не подлежащая распределению в счет обязательной продажи - прописью
        ^
NotAllocationSP   сумма, подлежащая обязательной продаже + символ валюты + прописью в скобках
        ^
Allocation        сумма, подлежащая обязательной продаже                        ^
AllocationS       сумма, подлежащая обязательной продаже + символ валюты        ^
AllocationP       сумма, подлежащая обязательной продаже - прописью             ^
AllocationSP      сумма, подлежащая обязательной продаже + символ валюты + прописью в скобках
        ^
PureSumma         сумма зачисления на текущий валютный счет                     ^
PureSummaS        сумма зачисления на текущий валютный счет + символ валюты     ^
PureSummaP        сумма зачисления на текущий валютный счет - прописью  ^
PureSummaSP       сумма зачисления на текущий валютный счет + символ валюты + прописью в скобках
        ^
Nazn              назначение платежа (полное)         ^
Nazn1                                (строка 1)       ^
Nazn2                                (строка 2)       ^
Nazn3                                (строка 3)       ^
Nazn4                                (строка 4)       ^
Nazn5                                (строка 5)       ^
! за счет отправителя
Rash1             расходы банка отправителя           ^
Rash2             расходы банка-корреспондента        ^
! за счет бенефициара
Rash3             расходы банка отправителя           ^
Rash4             расходы банка-корреспондента        ^
! все расходы
Rash_1            все расходы за счет отправителя     ^
Rash_2            все расходы за счет бенефициара     ^
Rash_3            совместные расходы                  ^
Rash_4            расходы не взимать                  ^
! расходы по переводу (аналогично невалютным платежным поручениям)
wADoc_1           За счет плательщика                 ^
wADoc_2           За счет бенефициара                 ^
wADoc_3        ^  // Расходы банка-отправителя за счет плательщика,
                  // расходы других банков за счет бенефициара 
wADoc_n        ^  // 1 - За счет плательщика
                  // 2 - За счет бенефициара
                  // 3 - Расходы банка-отправителя за счет плательщика,
                  // расходы других банков за счет бенефициара

VidOper        ^      // Вид операции
KodTec         ^      // Назначение платежа
KodNew         ^      // Очередной платеж
DatOts         ^      // Дата отсылки в банк
DatOtsStr      ^
SROKPLAT       ^      // Срок платежа
TelePosPlat    ^      // почтой/телеграфом

// документы-приложения
NoContract     ^      // № контракта
DateContract   ^      // дата контракта
SumContract    ^      // сумма контракта
NoPassport     ^      // № паспорта сделки
DatePassport   ^      // дата паспорта сделки
NoAct          ^      // № ТН или акта
DateAct        ^      // дата ТН или акта

s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13   РС по-цифрам ^^^^^^^^^^^^^
payUSD            платеж в USD                        ^
payDM             платеж в DM                         ^
payElse           платеж в                            ^
ElseWhat          в другой валюте                     ^
.if DelimiterPlatV

.end
page_symb ^

.}
.endform
