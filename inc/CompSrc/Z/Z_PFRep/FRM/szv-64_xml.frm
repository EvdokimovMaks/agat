.linkform 'SZV_64_XML' prototype is 'SZV-64'
.F 'IS_SZV_6_4.XML'
.nameinlist'���� ��� �� �� ��'
.var
  EndPach       : boolean;
  �����������   : string;
  ��������_���⭮��_��ਮ��,
  ��������_���४��㥬���_��ਮ��,
  ���_���⭮��_��ਮ��,
  ���_���४��㥬���_��ਮ��,
  �����_��ਮ�,
  ���४��㥬�_��ਮ�: string;
  ����������   : string;
  �����         : word;
  ��������窥   : longint;
  �������窨�� : longint;
  sRound        : string;
  ��।         : string;
  ��।��⪮�  : string;
  ��ଠ         : string;
  NppStrLgot    : LongInt
  �������祪    : string;
.endvar
.function GetPeriodName(_period, _year: word): string;
begin
  case _period of
    1: Result := '� 01.01.' + _year + ' �� 31.03.' + _year;
    2: Result := '� 01.04.' + _year + ' �� 30.06.' + _year;
    3: Result := '� 01.07.' + _year + ' �� 30.09.' + _year;
    4: Result := '� 01.10.' + _year + ' �� 31.12.' + _year;
   end;
end.
!
.fields
  ��������窥
  ���
  ����।
  ��������
  ��������
  ��ଠ  
  if( ��ࠬ�����।   = 1, ��।, ��।��⪮� )
  if( ��ࠬ�����।�� = 1, ��।, ��।��⪮� )
  ��������
  �������窨��
  ��������
  ��⠑���
  �����������
  ��⥣���
  �����_��ਮ�
  ���_���⭮��_��ਮ��
  ��������_���⭮��_��ਮ��
  ���४��㥬�_��ਮ�
  ���_���४��㥬���_��ਮ��
  ��������_���४��㥬���_��ਮ��
  ����������
  DoubleToStr(����窥��㬬��, sRound)    DoubleToStr(����窥��㬬��1, sRound)     DoubleToStr(����窥��㬬��2, sRound)
!
  DoubleToStr(����窥��㬂���_�, sRound)
  DoubleToStr(����窥��㬂���_�, sRound)
  DoubleToStr(����窥��㬂���_�, sRound)
  DoubleToStr(����窥��㬂���_�, sRound)
!
.endfields
!
.begin
  �������窨�� :=  PachNumBegin;
  ��������窥   :=  1;
  �������祪    := if( wQuotes = 0, '"', '&quot;' );
  ��।         :=  Replace( Upcase( Trim( �����। ) ), '"', �������祪);
  ��।��⪮�  :=  Replace( Upcase( Trim( �����।��⪮� ) ), '"', �������祪);
  ��ଠ         :=  Upcase( Trim( �ଠᮡ��) );
!
  if ( wRound = 2 )
    sRound := '[|-]3666666666666667.88';
  else
    sRound :='[|-]3666666666666667';
!
  case ������� of
    0: ����������� := '��������';
    1: ����������� := '��������������';
    2: ����������� := '����������';
  end;
!--------------------
  if ������� = 0  //��室�� ᢥ�����
  {
    ��������_���⭮��_��ਮ�� := GetPeriodName(��ਮ�, ���);
    ���_���⭮��_��ਮ��      := ���;
    �����_��ਮ�            := ��ਮ�;
  }
  else
  {
    ��������_���⭮��_��ਮ��       := GetPeriodName(��ਮ�_���४�஢��, ���_��_���४�஢��);
    ���_���⭮��_��ਮ��            := ���_��_���४�஢��;
    if ( ���_���⭮��_��ਮ�� > 2014 )
    {
      case ��ਮ�_���४�஢�� of
      1: �����_��ਮ� := 3;
      2: �����_��ਮ� := 6;
      3: �����_��ਮ� := 9;
      4: �����_��ਮ� := 0;
      else
        �����_��ਮ�              := ��ਮ�_���४�஢��;
      end;
    }
    else
      �����_��ਮ�                := ��ਮ�_���४�஢��;
    ��������_���४��㥬���_��ਮ�� := GetPeriodName(��ਮ�, ���);
    ���_���४��㥬���_��ਮ��      := ���;
    ���४��㥬�_��ਮ�            := ��ਮ�
  }
!--------------------
  case ��ਮ� of
    1: ����� := 1; // 1 ����⠫
    2: ����� := 4; // 1 ���㣮���
    3: ����� := 7; // 9 ����楢
    4: ����� := 10;// ���
  end;
!--------------------
end.
!
.{ CheckEnter AllParts_SZV_64
!
.begin
  EndPach     := false;
  case ������ of
    0: ���������� := '��������';
    1: ���������� := '����������-��������';
  end;
end.
!
<?xml version="1.0" encoding="windows-1251"?>
<�������>
  <�����></�����>
  <��������������>
    <����ଠ�>07.00</����ଠ�>
    <��������>�������</��������>
    <�ணࠬ�������⮢��������>
       <���������ணࠬ��>���������</���������ணࠬ��>
       <�����>8.10</�����>
    </�ணࠬ�������⮢��������>
    <���筨�������>������������</���筨�������>
  </��������������>
!
  <��窠�室��儮�㬥�⮢ ���㦥��� = "� ��⠢� 䠩��" �⠤�� = "�� ��ࠡ�⪨">
    <��������_�����_��_������_������_�_��_���������_�������>
      <��������窥>^</��������窥>
      <����室�饩����>����� �����</����室�饩����>
      <���⠢�⥫쏠窨>
        <�������멍����>
          <���>^</���>
          <���>^</���>
        </�������멍����>
        <��������>^</��������>
        <��������>^</��������>
        <��ଠ>^</��ଠ>
        <�������������࣠����樨>^</�������������࣠����樨>
        <��������������⪮�>^</��������������⪮�>
        <�������樮��멍����>^</�������樮��멍����>
      </���⠢�⥫쏠窨>
      <�������窨>
        <�᭮����>^</�᭮����>
      </�������窨>
      <���⠢���㬥�⮢>
        <������⢮>1</������⢮>
        <����稥���㬥�⮢>
          <������㬥��>��������_�_�����_������_�_���������_�������_�_���������_�����_��</������㬥��>
          <������⢮>^</������⢮>
        </����稥���㬥�⮢>
      </���⠢���㬥�⮢>
      <��⠑��⠢�����>^</��⠑��⠢�����>
      <�����������>^</�����������>
      <�����⥣�ਨ>^</�����⥣�ਨ>
      <����멏�ਮ�>
        <����⠫>^</����⠫>
        <���>^</���>
.{?internal; ( ������� = 0 or ( ������� <> 0 and ���_���⭮��_��ਮ�� < 2015 ) )
        <��������>^</��������>
.}
      </����멏�ਮ�>
.{?internal; ( ������� <> 0 )
      <���४��㥬멎���멏�ਮ�>
        <����⠫>^</����⠫>
        <���>^</���>
        <��������>^</��������>
      </���४��㥬멎���멏�ਮ�>
.}
      <����������>^</����������>
!-----------------------------------------------------------------------------------------
.{?internal; ( ������� <> 2 )
      <�㬬��믫�∢�����ࠦ����������㇋>
        <�����ப�>����</�����ப�>
        <�㬬��믫��ᥣ�>^</�㬬��믫��ᥣ�>
        <�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>^</�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>
        <�㬬��믫�⍠�᫥����客륂�����ॢ���騥>^</�㬬��믫�⍠�᫥����客륂�����ॢ���騥>
      </�㬬��믫�∢�����ࠦ����������㇋>
!
      <�㬬�����ᮢ�����客��>
        <���᫥��>^</���᫥��>
        <����祭�>^</����祭�>
      </�㬬�����ᮢ�����客��>
      <�㬬�����ᮢ��������⥫���>
        <���᫥��>^</���᫥��>
        <����祭�>^</����祭�>
      </�㬬�����ᮢ��������⥫���>
.}
    </��������_�����_��_������_������_�_��_���������_�������>
!
.fields
! �������� � ����� ������ � ��������� ������� � ��������� ����� ��
  ��������窥
  �����������
  ��������
  if( ��ࠬ�����।�� = 1, ��।, ��।��⪮� )
  ���
  ����।
  ��⥣���
  �����_��ਮ�
  ���_���⭮��_��ਮ��
  ��������_���⭮��_��ਮ��
  ���४��㥬�_��ਮ�
  ���_���४��㥬���_��ਮ��
  ��������_���४��㥬���_��ਮ��
  ���客�������
  UpCase(�������)
  UpCase(���)
  UpCase(����⢮)
  ����������
!- �������� � �㬬� �믫�� � ���� ������ࠦ�����, ���᫥���� � ����� 䨧. ��� -----
  �����       DoubleToStr(�㬂믫_Mec1, sRound)    DoubleToStr(�㬁1_Mec1, sRound)     DoubleToStr(�㬁2_Mec1, sRound)
 (����� + 1)  DoubleToStr(�㬂믫_Mec2, sRound)    DoubleToStr(�㬁1_Mec2, sRound)     DoubleToStr(�㬁2_Mec2, sRound)
 (����� + 2)  DoubleToStr(�㬂믫_Mec3, sRound)    DoubleToStr(�㬁1_Mec3, sRound)     DoubleToStr(�㬁2_Mec3, sRound)
              DoubleToStr(�㬂믫�⮣�, sRound)    DoubleToStr(�㬁1_�⮣�, sRound)    DoubleToStr(�㬁2_�⮣�, sRound)
!-- �������� � �㬬� �믫�� � ���� ������ࠦ����� �����客������ ���, ����⮣� �� ᮮ⢥������� -----
!--- ����� ࠡ��, �� ����� ���᫥�� ���客� ������ �� �������⥫쭮�� ���� -----------------------
  �����       DoubleToStr(�㬂��1_Mec1, sRound)    DoubleToStr(�㬂��2_Mec1, sRound)
 (����� + 1)  DoubleToStr(�㬂��1_Mec2, sRound)    DoubleToStr(�㬂��2_Mec2, sRound)
 (����� + 2)  DoubleToStr(�㬂��1_Mec3, sRound)    DoubleToStr(�㬂��2_Mec3, sRound)
              DoubleToStr(�㬂��1�⮣�, sRound)    DoubleToStr(�㬂��2�⮣�, sRound)
!-- �������� � ���᫥���� � 㯫�祭��� ���客�� ������ �� ��易⥫쭮�
!-- ���ᨮ���� ���客���� �� ��᫥���� 3 ����� ���⭮�� ��ਮ��
  DoubleToStr(�㬑��占�, sRound)     DoubleToStr(�㬑��哯�, sRound)
  DoubleToStr(�㬍�������, sRound)     DoubleToStr(�㬍�������, sRound)
!
.endfields
!
.{ CheckEnter SZV_64
!
.begin
  ��������窥 := ��������窥 + 1;
end.
!
    <��������_�_�����_������_�_���������_�������_�_���������_�����_��>
      <��������窥>^</��������窥>
      <�����������>^</�����������>
      <�������樮��멍����>^</�������樮��멍����>
      <��������������⪮�>^</��������������⪮�>
      <�������멍����>
        <���>^</���>
        <���>^</���>
      </�������멍����>
      <�����⥣�ਨ>^</�����⥣�ਨ>
      <����멏�ਮ�>
        <����⠫>^</����⠫>
        <���>^</���>
.{?internal; ( ������� = 0 or ( ������� <> 0 and ���_���⭮��_��ਮ�� < 2015 ) )
        <��������>^</��������>
.}
      </����멏�ਮ�>
.{?internal; ( ������� <> 0 )
      <���४��㥬멎���멏�ਮ�>
        <����⠫>^</����⠫>
        <���>^</���>
        <��������>^</��������>
      </���४��㥬멎���멏�ਮ�>
.}
      <���客�������>^</���客�������>
      <���>
        <�������>^</�������>
        <���>^</���>
        <����⢮>^</����⢮>
      </���>
      <����������>^</����������>
!- �������� � �㬬� �믫�� � ���� ������ࠦ�����, ���᫥���� � ����� 䨧. ��� -----
.{?internal; ( ������� <> 2 )
      <�㬬��믫�∢�����ࠦ����������㇋>
        <�����ப�>����</�����ப�>
        <�����>^</�����>
        <�㬬��믫��ᥣ�>^</�㬬��믫��ᥣ�>
        <�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>^</�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>
        <�㬬��믫�⍠�᫥����客륂�����ॢ���騥>^</�㬬��믫�⍠�᫥����客륂�����ॢ���騥>
      </�㬬��믫�∢�����ࠦ����������㇋>
!--------------------------------------------------------------------------------------------
      <�㬬��믫�∢�����ࠦ����������㇋>
        <�����ப�>����</�����ப�>
        <�����>^</�����>
        <�㬬��믫��ᥣ�>^</�㬬��믫��ᥣ�>
        <�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>^</�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>
        <�㬬��믫�⍠�᫥����客륂�����ॢ���騥>^</�㬬��믫�⍠�᫥����客륂�����ॢ���騥>
      </�㬬��믫�∢�����ࠦ����������㇋>
!----------------------------------------------------------------------------------------------
      <�㬬��믫�∢�����ࠦ����������㇋>
        <�����ப�>����</�����ப�>
        <�����>^</�����>
        <�㬬��믫��ᥣ�>^</�㬬��믫��ᥣ�>
        <�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>^</�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>
        <�㬬��믫�⍠�᫥����客륂�����ॢ���騥>^</�㬬��믫�⍠�᫥����客륂�����ॢ���騥>
      </�㬬��믫�∢�����ࠦ����������㇋>
!-----------------------------------------------------------------------------------------
      <�㬬��믫�∢�����ࠦ����������㇋>
        <�����ப�>����</�����ப�>
        <�㬬��믫��ᥣ�>^</�㬬��믫��ᥣ�>
        <�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>^</�㬬��믫�⍠�᫥����客륂����덥�ॢ���騥>
        <�㬬��믫�⍠�᫥����客륂�����ॢ���騥>^</�㬬��믫�⍠�᫥����客륂�����ॢ���騥>
      </�㬬��믫�∢�����ࠦ����������㇋>
.}
!-- �������� � �㬬� �믫�� � ���� ������ࠦ����� �����客������ ���, ����⮣� �� ᮮ⢥�������
!--- ����� ࠡ��, �� ����� ���᫥�� ���客� ������ �� �������⥫쭮�� ����
!-- �������� � �㬬� �믫�� � ���� ������ࠦ����� �����客������ ���, ����⮣� �� ᮮ⢥������� -----
!--- ����� ࠡ��, �� ����� ���᫥�� ���客� ������ �� �������⥫쭮�� ���� -----------------------
.{?internal; ( �㬂��1_Mec1 <> 0 ) or ( �㬂��2_Mec1 <> 0 )
      <�㬬��믫�∢�����ࠦ���������������>
        <�����ப�>����</�����ப�>
        <�����>^</�����>
        <�㬬��믫�⏮��������27-1>^</�㬬��믫�⏮��������27-1>
        <�㬬��믫�⏮��������27-2-18>^</�㬬��믫�⏮��������27-2-18>
      </�㬬��믫�∢�����ࠦ���������������>
.}
!----------------------------------------------------------------------------------------------
.{?internal; ( �㬂��1_Mec2 <> 0 ) or ( �㬂��2_Mec2 <> 0 )
      <�㬬��믫�∢�����ࠦ���������������>
        <�����ப�>����</�����ப�>
        <�����>^</�����>
        <�㬬��믫�⏮��������27-1>^</�㬬��믫�⏮��������27-1>
        <�㬬��믫�⏮��������27-2-18>^</�㬬��믫�⏮��������27-2-18>
      </�㬬��믫�∢�����ࠦ���������������>
.}
!----------------------------------------------------------------------------------------------
.{?internal; ( �㬂��1_Mec3 <> 0 ) or ( �㬂��2_Mec3 <> 0 )
      <�㬬��믫�∢�����ࠦ���������������>
        <�����ப�>����</�����ப�>
        <�����>^</�����>
        <�㬬��믫�⏮��������27-1>^</�㬬��믫�⏮��������27-1>
        <�㬬��믫�⏮��������27-2-18>^</�㬬��믫�⏮��������27-2-18>
      </�㬬��믫�∢�����ࠦ���������������>
.}
!----------------------------------------------------------------------------------------------
.{?internal; ( �㬂��1�⮣� <> 0 ) or ( �㬂��2�⮣� <> 0 )
      <�㬬��믫�∢�����ࠦ���������������>
        <�����ப�>����</�����ப�>
        <�㬬��믫�⏮��������27-1>^</�㬬��믫�⏮��������27-1>
        <�㬬��믫�⏮��������27-2-18>^</�㬬��믫�⏮��������27-2-18>
      </�㬬��믫�∢�����ࠦ���������������>
.}
!-- �������� � ���᫥���� � 㯫�祭��� ���客�� ������ �� ��易⥫쭮�
!-- ���ᨮ���� ���客���� �� ��᫥���� 3 ����� ���⭮�� ��ਮ��
.{?internal; ( ������� <> 2 )
      <�㬬�����ᮢ�����客��>
        <���᫥��>^</���᫥��>
        <����祭�>^</����祭�>
      </�㬬�����ᮢ�����客��>
      <�㬬�����ᮢ��������⥫���>
        <���᫥��>^</���᫥��>
        <����祭�>^</����祭�>
      </�㬬�����ᮢ��������⥫���>
.}
!--------------------------------------------------------------------------------------------
!  �������� � �⠦��
.fields
  nppSt                               // �������ப�
  ���_�⠦�                           // ��⠍�砫���ਮ��
  ���_�⠦�                           // ��⠊��栏�ਮ��
  ��᫮_����ᥩ_����                  // ������⢮�죮��呮�⠢�����
  UpCase(TerCond)                     // �᭮�������
  DoubleToStr(Double(���㣠_���_���_ᢥ�_3),'666666666666667.88')//�����樥��
  UpCase(WorkCond)                    // �᭮��������
  ���_����樨_ᯨ᪠1                 // ������᪠
  UpCase(����_���_�⠦_�᭮�����)  // �᭮�������
  ����_���_�⠦_���_ᢥ�3          // ����
  ����_���_�⠦_���_ᢥ�4          // ������
  ����_���_�⠦_���_ᢥ�1          // ������
  ����_���_�⠦_���_ᢥ�2          // ���
  UpCase(����_���_�⠦_���_ᢥ�_3) // ����℥�
  UpCase(���㣠_���_�᭮�����)       // �᭮�������
  ���㣠_���_���_ᢥ�3               // ����
  ���㣠_���_���_ᢥ�4               // ������
  ���㣠_���_���_ᢥ�1               // �᥌�����
  ���㣠_���_���_ᢥ�2               // �᥄��
  DoubleToStr(���㣠_���_���_ᢥ�_3,'666666666666667.88')  // ����⠢��

.endfields
!
.begin
  NppStrLgot := 1;
end.
!
.{ CheckEnter SZV64_Stages
      <�⠦��멏�ਮ�>
        <�������ப�>^</�������ப�>
        <��⠍�砫���ਮ��>^</��⠍�砫���ਮ��>
        <��⠊��栏�ਮ��>^</��⠊��栏�ਮ��>
!              �᭮��������         �᭮��������          ������᪠                    �᭮�������                             ����℥�                               �᭮�������
.{?internal; ( TerCond <> '' ) or ( WorkCond <> '' ) or ( ���_����樨_ᯨ᪠1 <> '' ) or ( ����_���_�⠦_�᭮����� <> '' ) or ( ����_���_�⠦_���_ᢥ�_3 <> '' ) or ( ���㣠_���_�᭮����� <> '')
!
        <������⢮�죮��呮�⠢�����>^</������⢮�죮��呮�⠢�����>
        <�죮�멑⠦>
          <�������ப�>1</�������ப�>
          <�ᮡ�����⨓��>
            <�����ਠ��륓᫮���>
              <�᭮�������>^</�᭮�������>
.{?internal; ( TerCond<>''and ���㣠_���_���_ᢥ�_3 > 0 and ���㣠_���_���_ᢥ�_3 < 1 )
                <�����樥��>^</�����樥��>
.}
            </�����ਠ��륓᫮���>
            <�ᮡ륓᫮����㤠>
              <�᭮��������>^</�᭮��������>
              <������᪠>^</������᪠>
            </�ᮡ륓᫮����㤠>
            <����塞멑⠦>
              <�᭮�������>^</�᭮�������>
!              ����                                   ������
.{?internal; ( ����_���_�⠦_���_ᢥ�3 <> 0 ) or ( ����_���_�⠦_���_ᢥ�4 <> 0 )
              <��ࠡ�⪠����>
                <����>^</����>
                <������>^</������>
              </��ࠡ�⪠����>
.}
!              �᥌�����                              �᥄��
.{?internal; ( ����_���_�⠦_���_ᢥ�1 <> 0 ) or ( ����_���_�⠦_���_ᢥ�2 <> 0 )
              <��ࠡ�⪠�������ୠ�>
                <�᥌�����>^</�᥌�����>
                <�᥄��>^</�᥄��>
              </��ࠡ�⪠�������ୠ�>
.}
            </����塞멑⠦>
            <����℥�>^</����℥�>
            <���㣠���>
              <�᭮�������>^</�᭮�������>
!              ����                              ������
.{?internal; ( ���㣠_���_���_ᢥ�3 <> 0 ) or ( ���㣠_���_���_ᢥ�4 <> 0 )
              <��ࠡ�⪠����>
                <����>^</����>
                <������>^</������>
              </��ࠡ�⪠����>
.}
.{?internal; ( ���㣠_���_���_ᢥ�1 <> 0 ) or ( ���㣠_���_���_ᢥ�2 <> 0 )
                <��ࠡ�⪠�������ୠ�>
                  <�᥌�����>^</�᥌�����>
                  <�᥄��>^</�᥄��>
                </��ࠡ�⪠�������ୠ�>
.}
!
.{?internal; ( TerCond = '' or ���㣠_���_���_ᢥ�_3 = 0 or ���㣠_���_���_ᢥ�_3 >= 1 )
                <����⠢��>^</����⠢��>
.}
            </���㣠���>
          </�ᮡ�����⨓��>
        </�죮�멑⠦>
.} // �஢�ઠ �� ����������
!
.{ CheckEnter SZV64_Vred1
.}
!
.{ CheckEnter SZV64_Lgot
!
.begin
  NppStrLgot := NppStrLgot + 1;
 end.
!
.fields
  NppStrLgot                              // �������ப�
  UpCase(TerCond_Lgot)                    // �᭮�������
  UpCase(WorkCond_Lgot)                   // �᭮��������
  ���_����樨_ᯨ᪠2                     // ������᪠
  UpCase(����_���_�⠦_�᭮�����_Lgot) // �᭮�������
  ����_���_�⠦_���_ᢥ�1_Lgot         // �᥌�����
  ����_���_�⠦_���_ᢥ�2_Lgot         // �᥄��
  UpCase(����_���_�⠦_���_ᢥ�3_Lgot) // ����℥�
  UpCase(���㣠_���_�᭮�����_Lgot)      // �᭮�������
  ���㣠_���_���_ᢥ�3_Lgot              // ����
  ���㣠_���_���_ᢥ�4_Lgot              // ������
  ���㣠_���_���_ᢥ�1_Lgot              // �᥌�����
  ���㣠_���_���_ᢥ�2_Lgot              // �᥄��
  ��_���_���㣠_���_���_ᢥ�3_Lgot       // ����⠢��
.endfields
!              �᭮�������               �᭮��������               ������᪠                    �᭮�������                                  ����℥�                                   �᭮�������
.{?internal; ( TerCond_Lgot <> '' ) or ( WorkCond_Lgot <> '' ) or ( ���_����樨_ᯨ᪠2 <> '' ) or ( ����_���_�⠦_�᭮�����_Lgot <> '' ) or ( ����_���_�⠦_���_ᢥ�3_Lgot <> '' ) or ( ���㣠_���_�᭮�����_Lgot <> '' )
!
        <�죮�멑⠦>
          <�������ப�>^</�������ப�>
          <�ᮡ�����⨓��>
            <�����ਠ��륓᫮���>
              <�᭮�������>^</�᭮�������>
            </�����ਠ��륓᫮���>
            <�ᮡ륓᫮����㤠>
              <�᭮��������>^</�᭮��������>
              <������᪠>^</������᪠>
            </�ᮡ륓᫮����㤠>
            <����塞멑⠦>
              <�᭮�������>^</�᭮�������>
!              �᥌�����                                   �᥄��
.{?internal; ( ����_���_�⠦_���_ᢥ�1_Lgot <> 0 ) or ( ����_���_�⠦_���_ᢥ�2_Lgot <> 0 )
              <��ࠡ�⪠�������ୠ�>
                <�᥌�����>^</�᥌�����>
                <�᥄��>^</�᥄��>
              </��ࠡ�⪠�������ୠ�>
.}
            </����塞멑⠦>
            <����℥�>^</����℥�>
            <���㣠���>
              <�᭮�������>^</�᭮�������>
!               ����                                  ������
.{?internal; ( ���㣠_���_���_ᢥ�3_Lgot <> 0 ) or ( ���㣠_���_���_ᢥ�4_Lgot <> 0 )
              <��ࠡ�⪠����>
                <����>^</����>
                <������>^</������>
              </��ࠡ�⪠����>
.}
!              �᥌�����                             �᥄��
.{?internal; ( ���㣠_���_���_ᢥ�1_Lgot <> 0) or ( ���㣠_���_���_ᢥ�2_Lgot <> 0 )
              <��ࠡ�⪠�������ୠ�>
                <�᥌�����>^</�᥌�����>
                <�᥄��>^</�᥄��>
              </��ࠡ�⪠�������ୠ�>
.}
!              ����⠢��
.{?internal; ( ��_���_���㣠_���_���_ᢥ�3_Lgot <> '' )
              <����⠢��>^</����⠢��>
.}
            </���㣠���>
          </�ᮡ�����⨓��>
        </�죮�멑⠦>
.}    // �஢�ઠ �� ����������
!
.{ CheckEnter SZV64_Vred2
.}
.}
      </�⠦��멏�ਮ�>
.}
!
.fields
  ��⠑���   // ��⠇���������
.endfields
!
     <��⠇���������>^</��⠇���������>
    </��������_�_�����_������_�_���������_�������_�_���������_�����_��>
.}
!
.{ CheckEnter ADV_65
.if DeadLineSzv_64
.begin
  EndPach := true;
end.
!
.fields
   �������窨��
.endfields
  </��窠�室��儮�㬥�⮢>
</�������>
___����� ^ �����!!!_���०��_�����!
.end
!
.begin
  �������窨�� := �������窨�� + 1;
  ��������窥   := 1;
end.
!
.{?internal; not EndPach
  </��窠�室��儮�㬥�⮢>
</�������>
.}
.}
.}
!
.endform
