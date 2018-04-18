//-----------------------------------------------------------------------------
// �����⨪� 8.10 - ��ࠡ�⭠� ����                   (c) ��௮��� ���������
// XML �ଠ �� ���᫥��� ��ࠡ�⭮� �����
//-----------------------------------------------------------------------------
#doc
XML �ଠ �� ���᫥��� ��ࠡ�⭮� �����
#end

.set name = 'TransferSalaryXml'
.hide
.set filler = '-'
.fields
    DateForm         // ��� �ନ஢���� ॥���
    NumDog           // ����� �������
    DateDog          // ��� �������
    NameOrg          // ������������ �࣠����樨
    INN              // ���
    RasSchet         // ������ ��� �࣠����樨
    BIK              // ���
    IdDocument       // ����ࢨ筮�����㬥��
    NumRees          // ����� ॥���
    DateRees         // ��� ॥���
    SumAll           // �㬬��⮣�
    TypeOfTransfer   // ��� ���᫥���
    NumPaymentOrder  // ����� ���⥦���� ����祭��
    DatePaymentOrder // ��� ���⥦���� ����祭��
.endfields
^^^^^^^^^^^^^^
.fields              // ���� �� 横��
    SurName          // �������
    FirstName        // ���
    SecName          // ����⢮
    OtdBank          // �⤥����� �����
    FilBank          // ������ �⤥����� �����
    LSchet           // ��楢�� ���
    Summa            // �㬬�
    Currency         // ��� ������
.endfields
.{ TransferSalaryXml_Persons CheckEnter
   ^^^^^^^^
.}
.begin
 TransferSalaryXml.fExit;
end.
.endform
!
.Linkform 'TransferSalaryXml_2012' prototype 'TransferSalaryXml'
.nameinlist 'XML �ଠ �� ���᫥��� ��ࠡ�⭮� �����'
.F 'TransferSalaryXml.XML'
!
.var
  Npp   : word; //  ����� �� ���浪�
.endvar
!
.fields
  DateForm                       // ��� �ନ஢���� ॥���
  NumDog                         // ����� �������
  DateDog                        // ��� �������
  Replace(NameOrg, '"', '&quot;')// ������������ �࣠����樨
  INN                            // ���
  RasSchet                       // ������ ��� �࣠����樨
  BIK                            // ���
  IdDocument                     // ����ࢨ筮�����㬥��
  NumRees                        // ����� ॥���
  DateRees                       // ��� ॥���
.endFields
<?xml version="1.0" encoding="windows-1251"?>
<��⠏� ��⠔�ନ஢����="^"
         ������������="^"
         ��⠄������="^"
         �������������࣠����樨="^"
.{?INTERNAL; ( INN <> '' )
         ���="^"
.}
!
.{?INTERNAL; ( RasSchet <> '' )
         �����멑��࣠����樨="^"
.}
.{?INTERNAL; ( BIK <> '' )
         ���="^"
.}
         ����ࢨ筮�����㬥��="^"
         �����������="^"
         ��⠐�����="^">
!
  <���᫥�����௫���>
!---------------------
.begin
  Npp := 0;
end.
!
.{ TransferSalaryXml_Persons CheckEnter
!
.begin
  Inc(Npp);
end.
!
.fields
  Npp              //  ����� �� ���浪�
  SurName          //  �������
  FirstName        //  ���
  SecName          //  ����⢮
  OtdBank          //  �⤥����� �����
  FilBank          //  ������ �⤥����� �����
  LSchet           //  ��楢�� ���
  Summa            //  �㬬�
  Currency         //  ��� ������
!
.endfields
      <����㤭�� ���="^">
        <�������>^</�������>
        <���>^</���>
        <����⢮>^</����⢮>
        <�⤥����������>^</�⤥����������>
        <�������⤥�������>^</�������⤥�������>
        <��楢�����>^</��楢�����>
        <�㬬�>^</�㬬�>
        <���������>^</���������>
      </����㤭��>
.}
!
.fields
  TypeOfTransfer   // ��� ���᫥���
  NumPaymentOrder  // ����� ���⥦���� ����祭��
  DatePaymentOrder // ��� ���⥦���� ����祭��
  Npp              // ������⢮ ����ᥩ
  SumAll           // �㬬��⮣�
.endFields
!
  </���᫥�����௫���>
  <������᫥���>^</������᫥���>
.{?INTERNAL; ( trim(NumPaymentOrder) <> '' )
  <���⥦�������祭��>^</���⥦�������祭��>
  <��⠏��⥦��������祭��>^</��⠏��⥦��������祭��>
.}
!
  <����஫�륑㬬�>
    <������⢮����ᥩ>^</������⢮����ᥩ>
    <�㬬��⮣�>^</�㬬��⮣�>
  </����஫�륑㬬�>
</��⠏�>
.endform
