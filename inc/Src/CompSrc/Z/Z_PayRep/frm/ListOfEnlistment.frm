//-----------------------------------------------------------------------------
// Галактика 9.1 - Заработная плата                   (c) корпорация ГАЛАКТИКА
// XML форма для создания списка на зачисление
//-----------------------------------------------------------------------------
#doc
XML форма для создания списка на зачисление
#end

.set name = 'ListOfEnlistment'
.hide
.set filler = '-'
.fields
    wEncoding              // Кодировка
    CustomerUNP            // УНП организации
    BankBIC                // Код банка
    BankName               // Наименование банка
    DocumentDate           // Дата документа
    DocumentNumber         // Номер документа
    PayDocNum              // Номер платежного поручения на сумму списка
    PayDocDate             // Дата платежного поручения на сумму списка
    PayerBankName          // Наименование банка плательщика в платежном поручении на сумму списка
    PayerBankCode          // Код банка плательщика в платежном поручении на сумму списка
    PayerAccountInfo       // Счет плательщика в платежном поручении на сумму списка
    BeneficiaryBankName    // Наименование банка получателя в платежном поручении на сумму списка
    BeneficiaryBankCode    // Код банка получателя в платежном поручении на сумму списка
    BeneficiaryAccount     // Счет получателя в платежном поручении на сумму списка
    PayCommissDocNum       // Номер платежного поручения на сумму списка
    PayCommissDocDate      // Дата платежного поручения на сумму списка
    Commiss                // Размер комиссии
    PayerCommissBankName   // Наименование банка плательщика в платежном поручении на сумму комиссии
    PayerCommissBankCode   // Код банка плательщика в платежном поручении на сумму комиссии
    PayerCommissAccount    // Счет плательщика в платежном поручении на сумму комиссии
    BenefCommissBankName   // Наименование банка получателя в платежном поручении на сумму комиссии
    BenefCommissBankCode   // Код банка получателя в платежном поручении на сумму комиссии
    BenefCommissAccount    // Счет получателя в платежном поручении на сумму комиссии
.endfields
^^^^^^^^^^^^^^^^^^^^^^^
.fields              // поля по циклу
    sFIO             //  ФИО получателя
    Amount           //  Сумма
    Account          //  Счет получателя
.endfields
.{ ListOfEnlistment_Persons CheckEnter
   ^^^
.}
.fields
  AmountTotal          // Общая сумма списка
  ListsSignedFaceName  // ФИО лица, подписавшего списки
  ListsSignedFacePos   // Должность лица, подписавшего списки
.endfields
^^^
.begin
 ListOfEnlistment.fExit;
end.
.endform
!

.Linkform 'ListOfEnlistment_2017' prototype 'ListOfEnlistment'
.nameinlist 'XML форма для создания списка на зачисление'
.F 'ListOfEnlistment.xml'
!
.var
  Npp        : word;     // Номер по порядку
  sEncoding  : string;   // Кодировка  Строковое значение
.endvar
!
.fields
  sEncoding              // Кодировка
  CustomerUNP            // УНП организации
  BankBIC                // Код банка
  BankName               // Наименование банка
  DocumentDate           // Дата документа
  DocumentNumber         // Номер документа
  PayDocNum              // Номер платежного поручения на сумму списка
  PayDocDate             // Дата платежного поручения на сумму списка
  PayerBankName          // Наименование банка плательщика в платежном поручении на сумму списка
  PayerBankCode          // Код банка плательщика в платежном поручении на сумму списка
  PayerAccountInfo       // Счет плательщика в платежном поручении на сумму списка
  BeneficiaryBankName    // Наименование банка получателя в платежном поручении на сумму списка
  BeneficiaryBankCode    // Код банка получателя в платежном поручении на сумму списка
  BeneficiaryAccount     // Счет получателя в платежном поручении на сумму списка
  PayCommissDocNum       // Номер платежного поручения на сумму списка
  PayCommissDocDate      // Дата платежного поручения на сумму списка
  Commiss                // Размер комиссии*
  PayerCommissBankName   // Наименование банка плательщика в платежном поручении на сумму комиссии
  PayerCommissBankCode   // Код банка плательщика в платежном поручении на сумму комиссии
  PayerCommissAccount    // Счет плательщика в платежном поручении на сумму комиссии
  BenefCommissBankName   // Наименование банка получателя в платежном поручении на сумму комиссии
  BenefCommissBankCode   // Код банка получателя в платежном поручении на сумму комиссии
  BenefCommissAccount    // Счет получателя в платежном поручении на сумму комиссии
.endFields
!
.begin
  case wEncoding of
    2 : sEncoding := 'UTF-8';
  else
    sEncoding := 'windows-1251';
  end;
end.
!
<?xml version="1.0" encoding="^"?>
<Export>
  <DOCUMENT>
    <CashList>
      <CustomerUNP>^</CustomerUNP>
      <BankBIC>^</BankBIC>
      <BankName>^</BankName>
      <DocumentDate>^</DocumentDate>
      <DocumentNumber>^</DocumentNumber>
      <CashType>'ВЫПЛАТЫ, ВХОДЯЩИЕ В СОСТАВ ФОНДА ЗАРАБОТНОЙ ПЛАТЫ, СТИПЕНДИЙ И ПРОЧИХ РАСХОДОВ'</CashType>
      <CurrCode>933</CurrCode>
      <PayDocNum>^</PayDocNum>
      <PayDocDate>^</PayDocDate>
      <PayerBankName>^</PayerBankName>
      <PayerBankCode>^</PayerBankCode>
      <PayerAccountInfo>^</PayerAccountInfo>
      <BeneficiaryBankName>^</BeneficiaryBankName>
      <BeneficiaryBankCode>^</BeneficiaryBankCode>
      <BeneficiaryAccount>^</BeneficiaryAccount>
      <PayCommissDocNum>^</PayCommissDocNum>
      <PayCommissDocDate>^</PayCommissDocDate>
      <Commiss>^</Commiss>
      <PayerCommissBankName>^</PayerCommissBankName>
      <PayerCommissBankCode>^</PayerCommissBankCode>
      <PayerCommissAccount>^</PayerCommissAccount>
      <BenefCommissBankName>^</BenefCommissBankName>
      <BenefCommissBankCode>^</BenefCommissBankCode>
      <BenefCommissAccount>^</BenefCommissAccount>
      <List>
!---------------------
.begin
  Npp := 0;
end.
!
.{ ListOfEnlistment_Persons CheckEnter   //  ЦИКЛ ПО ЛЮДЯМ
!
.begin
  Inc(Npp);
end.
!
.fields
  sFIO             // ФИО получателя
  Amount           // Сумма
  Npp              // Номер по порядку
  Account          // Счет получателя
!
.endfields
        <ListRow>
          <FIO>^</FIO>
          <Amount>^</Amount>
          <Num>^</Num>
          <Account>^</Account>
        </ListRow>
.}
!
.fields
  AmountTotal          // Общая сумма списка
  ListsSignedFaceName  // ФИО лица, подписавшего списки
  ListsSignedFacePos   // Должность лица, подписавшего списки
.endFields
!
      </List>
      <AmountTotal>^</AmountTotal>
      <ListsSignedFaceName>^</ListsSignedFaceName>
      <ListsSignedFacePos>^</ListsSignedFacePos>
    </CashList>
  </DOCUMENT>
</Export>
.endform
