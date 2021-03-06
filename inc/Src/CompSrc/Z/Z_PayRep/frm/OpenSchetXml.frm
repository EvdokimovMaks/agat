//-----------------------------------------------------------------------------
// �����⨪� 8.10 - ��ࠡ�⭠� ����                   (c) ��௮��� ���������
// XML �ଠ �� ����⨥ ��⮢ ����⨪���� ����
//-----------------------------------------------------------------------------
#doc
XML �ଠ �� ����⨥ ��⮢ ����⨪���� ����
#end

.set name = 'OpenSchetXml'
.hide
.set filler = '-'
.fields
    wEncoding        // ����஢��
    DateForm         // ��� �ନ஢���� ॥���
    NumDog           // ����� �������
    DateDog          // ��� �������
    NameOrg          // ������������ �࣠����樨
    INN              // ���
    RasSchet         // ������ ��� �࣠����樨
    BIK              // ���
    IdDocument       // ����ࢨ筮�����㬥��
    NumRees          // ����� ॥���
.endfields
^^^^^^^^^^
.fields              // ���� �� 横��
    SurName          //  �������
    FirstName        //  ���
    SecName          //  ����⢮
    OtdBank          //  �⤥����� �����
    FilBank          //  ������ �⤥����� �����
    VidVklada        //  ��� ������
    KodVklada        //  ��� ������
    VidDoc           //  ��� ���㬥��
    KodVidDoc        //  ��� ���� ���㬥��
    DocSer           //  ���� ���㬥��
    DocNum           //  ����� ���㬥��
    DocGivenDate     //  ��� �뤠� ���㬥��
    DocGivenBy       //  ��� �뤠� ���㬥��
    KodGivenBy       //  ��� ���ࠧ�������
    DateBorn         //  ��� ஦�����
    BornAddr         //  ���� ஦�����
    Sex              //  ���
    WorkPhone        //  ����稩 ⥫�䮭
    HomePhone        //  ����譨� ⥫�䮭
    MobilePhone      //  ������� ⥫�䮭
    Email            //  �����஭�� ����
    RezOrNoRez       //  ��������
    GetGr            //  �ࠦ����⢮
    SNILS            //  �����
    CatPeople        //  ��⥣��� ��ᥫ����
    KontrolInfo      //  ����஫쭠� ���ଠ��
    EmText           //  ������஢���� ⥪��
//- ���� �࣠����樨
    OrgIndex         //  ������ �࣠����樨
    OrgCountry       //  ��࠭� �������� �࣠����樨
    OrgReg           //  ������ �������� �࣠����樨
    OrgRegShort      //  ������ ᮪�饭�� �࣠����樨
    OrgRai           //  ����� �������� �࣠����樨
    OrgRaiShort      //  ����� ᮪�饭�� �࣠����樨
    OrgCity          //  ��த �������� �࣠����樨
    OrgCityShort     //  ��த ᮪�饭�� �࣠����樨
    OrgNasPunkt      //  ��ᥫ���� �㭪� �������� �࣠����樨
    OrgNasPunktShort //  ��ᥫ���� �㭪�  ᮪�饭�� �࣠����樨
    OrgStreet        //  ���� �������� �࣠����樨
    OrgStrShort      //  ���� ᮪�饭�� �࣠����樨
    OrgDom           //  ��� �࣠����樨
    OrgKorp          //  ����� �࣠����樨
    OrgKvart         //  ������ �࣠����樨
//-----------------
    Post             //  ���������
//- ���� ॣ����樨
    PrIndex          //  ������
    PrCountry        //  ��࠭� ��������
    PrRegion         //  ������ ��������
    PrRegionShort    //  ������ ᮪�饭��
    PrRaion          //  ������ ��������
    PrRaionShort     //  ������ ᮪�饭��
    PrCity           //  ��த ��������
    PrCityShort      //  ��த ᮪�饭��
    PrNasPunkt       //  ��ᥫ���� �㭪� ��������
    PrNasPunktShort  //  ��ᥫ���� �㭪�  ᮪�饭��
    PrStreet         //  ���� ��������
    PrStrShort       //  ���� ᮪�饭��
    PrDom            //  ���
    PrKorp           //  �����
    PrKvart          //  ������
//- ���� �஦������
    ProzIndex          //  ������
    ProzCountry        //  ��࠭� ��������
    ProzRegion         //  ������ ��������
    ProzRegionShort    //  ������ ᮪�饭��
    ProzRaion          //  ������ ��������
    ProzRaionShort     //  ������ ᮪�饭��
    ProzCity           //  ��த ��������
    ProzCityShort      //  ��த ᮪�饭��
    ProzNasPunkt       //  ��ᥫ���� �㭪� ��������
    ProzNasPunktShort  //  ��ᥫ���� �㭪�  ᮪�饭��
    ProzStreet         //  ���� ��������
    ProzStrShort       //  ���� ᮪�饭��
    ProzDom            //  ���
    ProzKorp           //  �����
    ProzKvart          //  ������
.endfields
.{ OpenSchetXml_Persons CheckEnter
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.}
.begin
 OpenSchetXml.fExit;
end.
.endform
!
.Linkform 'OpenSchetXml_2012' prototype 'OpenSchetXml'
.nameinlist 'XML �ଠ �� ����⨥ ��⮢ ����⨪���� ����'
.F 'OpenSchetXml.XML'
!
.var
  Npp        : word;     //  ����� �� ���浪�
  sEncoding  : string;   // ����஢��  ��ப���� ���祭��
.endvar
!
.fields
  sEncoding                      // ����஢��
  DateForm                       // ��� �ନ஢���� ॥���
  NumDog                         // ����� �������
  DateDog                        // ��� �������
  Replace(NameOrg, '"', '&quot;')// ������������ �࣠����樨
  INN                            // ���
  RasSchet                       // ������ ��� �࣠����樨
  BIK                            // ���
  IdDocument                     // ����ࢨ筮�����㬥��
  NumRees                        // ����� ॥���
  DateForm                       // ��� �ନ஢���� ॥���
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
<��⠏� ��⠔�ନ஢����="^"
         ������������="^"
         ��⠄������="^"
         �������������࣠����樨="^"
         ���="^"
         �����멑��࣠����樨="^"
         ���="^"
         ����ࢨ筮�����㬥��="^"
         �����������="^"
         ��⠐�����="^">
  <����⨥��⮢>
!---------------------
.begin
  Npp := 0;
end.
!
.{ OpenSchetXml_Persons CheckEnter   // ??? ���� �� �����
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
  VidVklada        //  ��� ������
  KodVklada        //  ��� ������
  VidDoc           //  ��� ���㬥��
  KodVidDoc        //  ��� ���� ���㬥��
  DocSer           //  ���� ���㬥��
  DocNum           //  ����� ���㬥��
  DocGivenDate     //  ��� �뤠� ���㬥��
  DocGivenBy       //  ��� �뤠� ���㬥��
  KodGivenBy       //  ��� ���ࠧ�������
  DateBorn         //  ��� ஦�����
  BornAddr         //  ���� ஦�����
  Sex              //  ���
  WorkPhone        //  ����稩 ⥫�䮭
  HomePhone        //  ����譨� ⥫�䮭
  MobilePhone      //  ������� ⥫�䮭
  Email            //  �����஭�� ����
  RezOrNoRez       //  ��������
  GetGr            //  �ࠦ����⢮
  SNILS            //  �����
  CatPeople        //  ��⥣��� ��ᥫ����
  KontrolInfo      //  ����஫쭠� ���ଠ��
  EmText           //  ������஢���� ⥪��
//- ���� �࣠����樨
  OrgIndex         //  ������ �࣠����樨
  OrgCountry       //  ��࠭� �������� �࣠����樨
  OrgReg           //  ������ �������� �࣠����樨
  OrgRegShort      //  ������ ᮪�饭�� �࣠����樨
  OrgRai           //  ����� �������� �࣠����樨
  OrgRaiShort      //  ����� ᮪�饭�� �࣠����樨
  OrgCity          //  ��த �������� �࣠����樨
  OrgCityShort     //  ��த ᮪�饭�� �࣠����樨
  OrgNasPunkt      //  ��ᥫ���� �㭪� �������� �࣠����樨
  OrgNasPunktShort //  ��ᥫ���� �㭪�  ᮪�饭�� �࣠����樨
  OrgStreet        //  ���� �������� �࣠����樨
  OrgStrShort      //  ���� ᮪�饭�� �࣠����樨
  OrgDom           //  ��� �࣠����樨
  OrgKorp          //  ����� �࣠����樨
  OrgKvart         //  ������ �࣠����樨
//-------------------
  Post             //  ���������
//- ���� ॣ����樨
  PrIndex          //  ������
  PrCountry        //  ��࠭� ��������
  PrRegion         //  ������ ��������
  PrRegionShort    //  ������ ᮪�饭��
  PrRaion          //  ������ ��������
  PrRaionShort     //  ������ ᮪�饭��
  PrCity           //  ��த ��������
  PrCityShort      //  ��த ᮪�饭��
  PrNasPunkt       //  ��ᥫ���� �㭪� ��������
  PrNasPunktShort  //  ��ᥫ���� �㭪�  ᮪�饭��
  PrStreet         //  ���� ��������
  PrStrShort       //  ���� ᮪�饭��
  PrDom            //  ���
  PrKorp           //  �����
  PrKvart          //  ������
//- ���� �஦������
  ProzIndex          //  ������
  ProzCountry        //  ��࠭� ��������
  ProzRegion         //  ������ ��������
  ProzRegionShort    //  ������ ᮪�饭��
  ProzRaion          //  ������ ��������
  ProzRaionShort     //  ������ ᮪�饭��
  ProzCity           //  ��த ��������
  ProzCityShort      //  ��த ᮪�饭��
  ProzNasPunkt       //  ��ᥫ���� �㭪� ��������
  ProzNasPunktShort  //  ��ᥫ���� �㭪� ᮪�饭��
  ProzStreet         //  ���� ��������
  ProzStrShort       //  ���� ᮪�饭��
  ProzDom            //  ���
  ProzKorp           //  �����
  ProzKvart          //  ������
!
.endfields
      <����㤭�� ���="^">
        <�������>^</�������>
        <���>^</���>
        <����⢮>^</����⢮>
        <�⤥����������>^</�⤥����������>
        <�������⤥�������>^</�������⤥�������>
        <��������� �������������="^" ����������������="^" ���������="810"></���������>
        <����⮢�७����筮��>
          <������㬥��>^</������㬥��>
          <����������㬥��>^</����������㬥��>
          <����>^</����>
          <�����>^</�����>
          <��⠂뤠�>^</��⠂뤠�>
          <����뤠�>^</����뤠�>
          <������ࠧ�������>^</������ࠧ�������>
        </����⮢�७����筮��>
        <��⠐�������>^</��⠐�������>
        <���⮐�������>^</���⮐�������>
        <���>^</���>
        <����稩����䮭>^</����稩����䮭>
        <����譨�����䮭>^</����譨�����䮭>
        <������멒���䮭>^</������멒���䮭>
        <���୥․��>^</���୥․��>
        <��������>^</��������>
        <�ࠦ����⢮>^</�ࠦ����⢮>
        <�����>^</�����>
        <��⥣��ᥫ����>^</��⥣��ᥫ����>
        <����஫쭠�ଠ��>^</����஫쭠�ଠ��>
        <������஢���멒����>^</������஢���멒����>
        <���ጥ�⠐�����>
          <������>^</������>
          <��࠭�>
            <��࠭���������>^</��࠭���������>
          </��࠭�>
          <������>
            <��������������>^</��������������>
            <����������饭��>^</����������饭��>
          </������>
          <�����>
            <�������������>^</�������������>
            <���������饭��>^</���������饭��>
          </�����>
          <��த>
            <��த��������>^</��த��������>
            <��த����饭��>^</��த����饭��>
          </��த>
          <��ᥫ���멏㭪�>
            <��ᥫ���멏㭪⍠������>^</��ᥫ���멏㭪⍠������>
            <��ᥫ���멏㭪⑮��饭��>^</��ᥫ���멏㭪⑮��饭��>
          </��ᥫ���멏㭪�>
          <����>
            <���栍�������>^</���栍�������>
            <���树���饭��>^</���树���饭��>
          </����>
          <���>^</���>
          <�����>^</�����>
          <������>^</������>
        </���ጥ�⠐�����>
        <���������>^</���������>
        <����ய�᪨>
          <������>^</������>
          <��࠭�>
            <��࠭���������>^</��࠭���������>
          </��࠭�>
          <������>
            <��������������>^</��������������>
            <����������饭��>^</����������饭��>
          </������>
          <�����>
            <�������������>^</�������������>
            <���������饭��>^</���������饭��>
          </�����>
          <��த>
            <��த��������>^</��த��������>
            <��த����饭��>^</��த����饭��>
          </��த>
          <��ᥫ���멏㭪�>
            <��ᥫ���멏㭪⍠������>^</��ᥫ���멏㭪⍠������>
            <��ᥫ���멏㭪⑮��饭��>^</��ᥫ���멏㭪⑮��饭��>
          </��ᥫ���멏㭪�>
          <����>
            <���栍�������>^</���栍�������>
            <���树���饭��>^</���树���饭��>
          </����>
          <���>^</���>
          <�����>^</�����>
          <������>^</������>
        </����ய�᪨>
        <����஦������>
          <������>^</������>
          <��࠭�>
            <��࠭���������>^</��࠭���������>
          </��࠭�>
          <������>
            <��������������>^</��������������>
            <����������饭��>^</����������饭��>
          </������>
          <�����>
            <�������������>^</�������������>
            <���������饭��>^</���������饭��>
          </�����>
          <��த>
            <��த��������>^</��த��������>
            <��த����饭��>^</��த����饭��>
          </��த>
          <��ᥫ���멏㭪�>
            <��ᥫ���멏㭪⍠������>^</��ᥫ���멏㭪⍠������>
            <��ᥫ���멏㭪⑮��饭��>^</��ᥫ���멏㭪⑮��饭��>
          </��ᥫ���멏㭪�>
          <����>
            <���栍�������>^</���栍�������>
            <���树���饭��>^</���树���饭��>
          </����>
          <���>^</���>
          <�����>^</�����>
          <������>^</������>
        </����஦������>
      </����㤭��>
.}
!
.fields
  Npp  // ������⢮ ����ᥩ
.endFields
!
  </����⨥��⮢>
  <����஫�륑㬬�>
    <������⢮����ᥩ>^</������⢮����ᥩ>
  </����஫�륑㬬�>
</��⠏�>
.endform
