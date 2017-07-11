//-----------------------------------------------------------------------------
// �����⨪� 9.1 - ��ࠡ�⭠� ����                   (c) ��௮��� ���������
// XML �ଠ ��� ᮧ����� ᯨ᪠ �� ���᫥���
//-----------------------------------------------------------------------------
#doc
XML �ଠ ��� ᮧ����� ᯨ᪠ �� ���᫥���
#end

.set name = 'ListOfEnlistment'
.hide
.set filler = '-'
.fields
    wEncoding              // ����஢��
    CustomerUNP            // ��� �࣠����樨
    BankBIC                // ��� �����
    BankName               // ������������ �����
    DocumentDate           // ��� ���㬥��
    DocumentNumber         // ����� ���㬥��
    PayDocNum              // ����� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
    PayDocDate             // ��� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
    PayerBankName          // ������������ ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
    PayerBankCode          // ��� ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
    PayerAccountInfo       // ��� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
    BeneficiaryBankName    // ������������ ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
    BeneficiaryBankCode    // ��� ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
    BeneficiaryAccount     // ��� �����⥫� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
    PayCommissDocNum       // ����� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
    PayCommissDocDate      // ��� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
    Commiss                // ������ �����ᨨ
    PayerCommissBankName   // ������������ ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
    PayerCommissBankCode   // ��� ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
    PayerCommissAccount    // ��� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
    BenefCommissBankName   // ������������ ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
    BenefCommissBankCode   // ��� ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
    BenefCommissAccount    // ��� �����⥫� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
.endfields
^^^^^^^^^^^^^^^^^^^^^^^
.fields              // ���� �� 横��
    sFIO             //  ��� �����⥫�
    Amount           //  �㬬�
    Account          //  ��� �����⥫�
.endfields
.{ ListOfEnlistment_Persons CheckEnter
   ^^^
.}
.fields
  AmountTotal          // ���� �㬬� ᯨ᪠
  ListsSignedFaceName  // ��� ���, �����ᠢ襣� ᯨ᪨
  ListsSignedFacePos   // ��������� ���, �����ᠢ襣� ᯨ᪨
.endfields
^^^
.begin
 ListOfEnlistment.fExit;
end.
.endform
!

.Linkform 'ListOfEnlistment_2017' prototype 'ListOfEnlistment'
.nameinlist 'XML �ଠ ��� ᮧ����� ᯨ᪠ �� ���᫥���'
.F 'ListOfEnlistment.xml'
!
.var
  Npp        : word;     // ����� �� ���浪�
  sEncoding  : string;   // ����஢��  ��ப���� ���祭��
.endvar
!
.fields
  sEncoding              // ����஢��
  CustomerUNP            // ��� �࣠����樨
  BankBIC                // ��� �����
  BankName               // ������������ �����
  DocumentDate           // ��� ���㬥��
  DocumentNumber         // ����� ���㬥��
  PayDocNum              // ����� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
  PayDocDate             // ��� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
  PayerBankName          // ������������ ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
  PayerBankCode          // ��� ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
  PayerAccountInfo       // ��� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
  BeneficiaryBankName    // ������������ ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
  BeneficiaryBankCode    // ��� ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
  BeneficiaryAccount     // ��� �����⥫� � ���⥦��� ����祭�� �� �㬬� ᯨ᪠
  PayCommissDocNum       // ����� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
  PayCommissDocDate      // ��� ���⥦���� ����祭�� �� �㬬� ᯨ᪠
  Commiss                // ������ �����ᨨ*
  PayerCommissBankName   // ������������ ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
  PayerCommissBankCode   // ��� ����� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
  PayerCommissAccount    // ��� ���⥫�騪� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
  BenefCommissBankName   // ������������ ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
  BenefCommissBankCode   // ��� ����� �����⥫� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
  BenefCommissAccount    // ��� �����⥫� � ���⥦��� ����祭�� �� �㬬� �����ᨨ
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
      <CashType>'�������, �������� � ������ ����� ���������� �����, ��������� � ������ ��������'</CashType>
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
.{ ListOfEnlistment_Persons CheckEnter   //  ���� �� �����
!
.begin
  Inc(Npp);
end.
!
.fields
  sFIO             // ��� �����⥫�
  Amount           // �㬬�
  Npp              // ����� �� ���浪�
  Account          // ��� �����⥫�
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
  AmountTotal          // ���� �㬬� ᯨ᪠
  ListsSignedFaceName  // ��� ���, �����ᠢ襣� ᯨ᪨
  ListsSignedFacePos   // ��������� ���, �����ᠢ襣� ᯨ᪨
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
