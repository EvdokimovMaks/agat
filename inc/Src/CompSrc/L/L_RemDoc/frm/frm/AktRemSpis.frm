!7���������������������������������������������������������������������ͻ
!�      �஥�� ��������� (c) 1994,95 TOP SOFT Ltd., �� ����� ������    �
!�  ����� :     3.30                                                  �
!�  ���ࠡ�⠫:  ��ࠢ��� �.�.                                         �
!�  �����祭��: ����                                                   �
!�  ���������:                                                         �
!���������������������������������������������������������������������ͼ
!*********************************************************************
! �᫮�� ������祭�� :
!  ��� - ��樮���쭠� ��� ������
!  ��� - �����
!  �� - ��⭠� ������
!  ��� - ���ࠧ㬥������, �� ������ �� ⨯� ������ ���
!  ��� - ������⢮
!  �� - ��� �������
!  �� - ���⮬ �������
!  ��� - ���� �����
!  ��樧 - ��ன �����
!  ��� - ��騩 �����
!  ���_ - ��ப��� ����������
!  �� - �⮨����� (������⢮ * 業�)
!  � - �㬬� �� �⮨����
!  � - �㬬� �� ��������
!  �� - ��業�
!********************************************************************
#doc
����
#end
.set name = 'AktRemSpis'
.hide
.var
  �⍄����0 : double
  �⍠恍0  : double
  �⍠摍0  : double
  �������0  : double
  ��⍠恍0 : double
  ��⍠摍0 : double
.endvar
.fields
  �࣠������
  �࣠������
  �࣠������_����
  �࣠������_����
  �࣠������_�����
  �࣠������_���
  �࣠������_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
  �࣠������_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
  �࣠������_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
  �࣠������_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
  �࣠������_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
  �࣠������_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
  �࣠������_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
  �࣠������_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
  �࣠������_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
  �࣠������_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮�� 
  �࣠������_�������_���
  �࣠������_������_���
  �࣠������_������_������
  �࣠������_�����_���
  �࣠������_�����_���
  �࣠������_�����_���
  �࣠������_�����_������_���
  �࣠������_�����_������_���
  �࣠������_�����_������_������
  �࣠������_����������
  �࣠������
  �࣠������                  // KatOrg.KODPLATNDS       =  28 �����
      �࣠������_����_���
      �࣠������_����_������਩
      �࣠������_����_����
      �࣠������_����_��
      �࣠������_����_���
      �࣠������_����_���
      �࣠������_����_���_���
      �࣠������_����_���_����
      �࣠������_����_���_���
      �࣠������_����_���_���

 ���_�४ ����� ���ਯ�� �����_�_���ਯ�஬
 ���:date ������_��� �����
 �����_��� �����_�����
 �����_��� :date

   ����ࠣ���
   ����ࠣ��⊮�
   ����ࠣ���_����
   ����ࠣ���_����
   ����ࠣ���_�����
   ����ࠣ���_���
  ����ࠣ���_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
  ����ࠣ���_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
  ����ࠣ���_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
  ����ࠣ���_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
  ����ࠣ���_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
  ����ࠣ���_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
  ����ࠣ���_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
  ����ࠣ���_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
  ����ࠣ���_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
  ����ࠣ���_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮�� 
   ����ࠣ���_�������_���
   ����ࠣ���_������_���
   ����ࠣ���_������_������
   ����ࠣ���_�����_���
   ����ࠣ���_�����_���
   ����ࠣ���_�����_���
   ����ࠣ���_�����_������_���
   ����ࠣ���_�����_������_���
   ����ࠣ���_�����_������_������
   ����ࠣ���_����������
   ����ࠣ��Ⓧ�
   ����ࠣ��⊏�                  // KatOrg.KODPLATNDS       =  28 �����
       ����ࠣ���_����_���
       ����ࠣ���_����_������਩
       ����ࠣ���_����_����
       ����ࠣ���_����_��
       ����ࠣ���_����_���
       ����ࠣ���_����_���
       ����ࠣ���_����_���_���
       ����ࠣ���_����_���_����
       ����ࠣ���_����_���_���
       ����ࠣ���_����_���_���
!- volod 20.02.2000
!- �����稪
  �����⥫�                     // KatOrg.Name
  �����⥫슮�                  // KatOrg.TipOrg
  �����⥫�_����               // KatOrg.Addr
  �����⥫�_����                // KatOrg.OKPO
  �����⥫�_�����               // KatOrg.OKONH
  �����⥫�_���                 //  KatOrg.TEL
  �����⥫�_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
  �����⥫�_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
  �����⥫�_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
  �����⥫�_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
  �����⥫�_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
  �����⥫�_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
  �����⥫�_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
  �����⥫�_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
  �����⥫�_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
  �����⥫�_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮�� 
  �����⥫�_�������_���         //  KatState.KOD
  �����⥫�_������_���          //  KatState.Name
  �����⥫�_������_������       //  KatState.IsNal
  �����⥫�_�����_���           // KatCity.KOD);
  �����⥫�_�����_���           // KatCity.Name);
  �����⥫�_�����_���           // KatCity.TEL);
  �����⥫�_�����_������_���    //  KatState.KOD);
  �����⥫�_�����_������_���    //  KatState.Name);
  �����⥫�_�����_������_������ //  KatState.IsNal);
  �����⥫�_����������          // KatOrg.CorpoIn
  �����⥫쓍�                  // KatOrg.UNN         =  17 �����
  �����⥫슏�                  // KatOrg.KODPLATNDS       =  28 �����
      �����⥫�_����_���
      �����⥫�_����_������਩
      �����⥫�_����_����
      �����⥫�_����_��
      �����⥫�_����_���
      �����⥫�_����_���
      �����⥫�_����_���_���
      �����⥫�_����_���_����
      �����⥫�_����_���_���
      �����⥫�_����_���_���   // 10 �����

!- ����ࠣ��� ��� ���������⮢
  ���⥫�騪                     // KatOrg.Name
  ���⥫�騪���                  // KatOrg.TipOrg
  ���⥫�騪_����               // KatOrg.Addr
  ���⥫�騪_����                // KatOrg.OKPO
  ���⥫�騪_�����               // KatOrg.OKONH
  ���⥫�騪_���                 //  KatOrg.TEL
  ���⥫�騪_���∭�             // KatOrg.CONTAKTS      ���⠪⭠� ���ଠ��
  ���⥫�騪_Email               // KatOrg.EMAIL         �����஭�� ���⮢� ����
  ���⥫�騪_OKATO               // PodrInfo.OKATO       ��� �� �����ᨩ᪮�� �����䨪���� ���������⨢��-����ਠ�쭮�� �������
  ���⥫�騪_KBK                 // PodrInfo.KBK         ��� ��⭮� �����䨪�樨
  ���⥫�騪_OGRN                // PodrInfo.OGRN        �᭮���� ���㤠��⢥��� ॣ����樮��� �����
  ���⥫�騪_������_�_��         // PodrInfo.REGNOMPFR   �������樮��� ����� � ��
  ���⥫�騪_������_���客�⥫� // PodrInfo.POlE3S      �������樮��� ����� ���客�⥫�
  ���⥫�騪_�࣠�_�ᯮ��_����� // PodrInfo.INSNAME     �࣠� �ᯮ���⥫쭮� �����
  ���⥫�騪_��ଠ_����⢥����� // FormSobs.Name        ��ଠ ᮡ�⢥�����
  ���⥫�騪_���_���⥫쭮��    // FormSobs.VidD        ��� ���⥫쭮�� 
  ���⥫�騪_�������_���         //  KatState.KOD
  ���⥫�騪_������_���          //  KatState.Name
  ���⥫�騪_������_������       //  KatState.IsNal
  ���⥫�騪_�����_���           // KatCity.KOD);
  ���⥫�騪_�����_���           // KatCity.Name);
  ���⥫�騪_�����_���           // KatCity.TEL);
  ���⥫�騪_�����_������_���    //  KatState.KOD);
  ���⥫�騪_�����_������_���    //  KatState.Name);
  ���⥫�騪_�����_������_������ //  KatState.IsNal);
  ���⥫�騪_����������          // KatOrg.CorpoIn
  ���⥫�騪���                  // KatOrg.UNN         =  17 �����
  ���⥫�騪���                  // KatOrg.KODPLATNDS       =  28 �����
      ���⥫�騪_����_���
      ���⥫�騪_����_������਩
      ���⥫�騪_����_����
      ���⥫�騪_����_��
      ���⥫�騪_����_���
      ���⥫�騪_����_���
      ���⥫�騪_����_���_���
      ���⥫�騪_����_���_����
      ���⥫�騪_����_���_���
      ���⥫�騪_����_���_���   // 10 �����
!- volod

 �甠��_���� �甠��_�����
!.if akts01
 �᭮����� ��⠎᭮�����
!.end
!.{
!.}
 ��������� ��摨���� ���������
!.{
  ����_�४
  ����� �������� �⯅� �煤
  �����:double ����:double �����:double
  ����:double ����:DOUBLE ����:double
  ������:double �����:double ������:double
  �⍠�:double �⍠�:DOUBLE �₠�:double
  �����1�:double �����1�:double
  �����2�:double �����2�:double
  �����3�:double �����3�:double
  �����4�:double �����4�:double
  �����5�:double �����5�:double
  �����6�:double �����6�:double
  �����_��稥_�:double �����_��稥_�:double
  ������:double ���恍:double ������:double
  ��������:double ���恍��:double ��������:double

  ������:double ���摍:double ������:double
  ��������:double ���摍��:double ��������:double

  �������:double ���樧���:double ���த���:double �������:double
  �������:double ���樧���:double ���த���:double �������:double
  �������:double ���樧���:double ���த���:double �������:double
  �⍠���:double �⍠恍:double �₠���:double
  �⍠���:double �⍠摍:double �₠���:double
  �⍄����:double �‪樧���:double �⍏த���:double �⍀����:double
  �⍄����:double �‪樧���:double �⍏த���:double �⍀����:double
  �⍄����:double �‪樧���:double �⍏த���:double �⍀����:double
  �����:double ����樧:double ����த:double �����:double
!.}
  ������������� ���_�������������
  �����:double  ���_�����
  ������:double ���_������
  ��⍠�:double ���_��⍠�
  ��⍠�:DOUBLE ���_��⍠�
  ��₠�:double ���_��₠�
  ��⍠���:double ���_��⍠���
  ��⍠恍:double ���_��⍠恍
  ��₠���:double ���_��₠���
  ��⍠���:double ���_��⍠���
  ��⍠摍:double ���_��⍠摍
  ��₠���:double ���_��₠���
  �������:double  ���_�������
  ���樧���:double ���_���樧���
  ���த���:double ���_���த���
  �������:double   ���_�������
  �������:double   ���_�������
  ���樧���:double ���_���樧���
  ���த���:double ���_���த���
  �������:double   ���_�������
  �������:double   ���_�������
  ���樧���:double ���_���樧���
  ���த���:double ���_���த���
  �������:double   ���_�������
  ������:double �����樧:double
  �����த:double ������:double
  ���摨����
.endfields
.{
  �࣠������                                 ^
  �࣠������                              ^
  �࣠������_����                           ^
  �࣠������_����                            ^
  �࣠������_�����                           ^
  �࣠������_���                             ^
  �࣠������_���∭�                         ^
  �࣠������_Email                           ^
  �࣠������_OKATO                           ^
  �࣠������_KBK                             ^
  �࣠������_OGRN                            ^
  �࣠������_������_�_��                     ^
  �࣠������_������_���客�⥫�             ^
  �࣠������_�࣠�_�ᯮ��_�����             ^
  �࣠������_��ଠ_����⢥�����             ^
  �࣠������_���_���⥫쭮��                ^
  �࣠������_�������_���                     ^
  �࣠������_������_���                      ^
  �࣠������_������_������                   ^
  �࣠������_�����_���                       ^
  �࣠������_�����_���                       ^
  �࣠������_�����_���                       ^
  �࣠������_�����_������_���                ^
  �࣠������_�����_������_���                ^
  �࣠������_�����_������_������             ^
  �࣠������_����������                      ^
  �࣠������                              ^
  �࣠������                              ^
      �࣠������_����_���                    ^
      �࣠������_����_������਩             ^
      �࣠������_����_����                  ^
      �࣠������_����_��                    ^
      �࣠������_����_���                    ^
      �࣠������_����_���                   ^
      �࣠������_����_���_���               ^
      �࣠������_����_���_����              ^
      �࣠������_����_���_���              ^
      �࣠������_����_���_���              ^

 ���_�४              ^
 �����                 ^
 ���ਯ��            ^
 �����_�_���ਯ�஬  ^
 ���                  ^
 ������_���           ^
 �����                 ^
 �����_��� ^ �����_����� ^ �����_��� ^

   ����ࠣ���                                 ^
   ����ࠣ��⊮�                              ^
   ����ࠣ���_����                           ^
   ����ࠣ���_����                            ^
   ����ࠣ���_�����                           ^
   ����ࠣ���_���                             ^
   ����ࠣ���_���∭�                         ^
   ����ࠣ���_Email                           ^
   ����ࠣ���_OKATO                           ^
   ����ࠣ���_KBK                             ^
   ����ࠣ���_OGRN                            ^
   ����ࠣ���_������_�_��                     ^
   ����ࠣ���_������_���客�⥫�             ^
   ����ࠣ���_�࣠�_�ᯮ��_�����             ^
   ����ࠣ���_��ଠ_����⢥�����             ^
   ����ࠣ���_���_���⥫쭮��                ^
   ����ࠣ���_�������_���                     ^
   ����ࠣ���_������_���                      ^
   ����ࠣ���_������_������                   ^
   ����ࠣ���_�����_���                       ^
   ����ࠣ���_�����_���                       ^
   ����ࠣ���_�����_���                       ^
   ����ࠣ���_�����_������_���                ^
   ����ࠣ���_�����_������_���                ^
   ����ࠣ���_�����_������_������             ^
   ����ࠣ���_����������                      ^
   ����ࠣ��Ⓧ�                              ^
   ����ࠣ��⊏�                              ^
       ����ࠣ���_����_���                    ^
       ����ࠣ���_����_������਩             ^
       ����ࠣ���_����_����                  ^
       ����ࠣ���_����_��                    ^
       ����ࠣ���_����_���                    ^
       ����ࠣ���_����_���                   ^
       ����ࠣ���_����_���_���               ^
       ����ࠣ���_����_���_����              ^
       ����ࠣ���_����_���_���              ^
       ����ࠣ���_����_���_���              ^

 �����⥫� ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^
 ���⥫�騪 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^

 �甠��_����  ^
 �甠��_����� ^

.if AktRemSpis
 �᭮����� ^ ��⠎᭮����� ^
.end
 ��������� ^ ��摨���� ^ ��������� ^
.{
  ����_�४ ^
  ����� ^ �������� ^ �⯅� ^ �煤 ^
  ����� ^ ���� ^ ����� ^
  ���� ^ ���� ^ ���� ^ ������ ^ ����� ^ ������ ^
  �⍠� ^ �⍠� ^ �₠� ^
  �����1� ^ �����1� ^
  �����2� ^ �����2� ^
  �����3� ^ �����3� ^
  �����4� ^ �����4� ^
  �����5� ^ �����5� ^
  �����6� ^ �����6� ^
  �����_��稥_� ^ �����_��稥_� ^
  ������ ^ ���恍 ^ ������ ^ �������� ^ ���恍�� ^ �������� ^
  ������ ^ ���摍 ^ ������ ^ �������� ^ ���摍�� ^ �������� ^
  ������� ^ ���樧��� ^ ���த��� ^ ������� ^
  ������� ^ ���樧��� ^ ���த��� ^ ������� ^
  ������� ^ ���樧��� ^ ���த��� ^ ������� ^
  �⍠��� ^ �⍠恍 ^ �₠��� ^ �⍠��� ^ �⍠摍 ^ �₠��� ^
  �⍄���� ^ �‪樧��� ^ �⍏த��� ^ �⍀���� ^
  �⍄���� ^ �‪樧��� ^ �⍏த��� ^ �⍀���� ^
  �⍄���� ^ �‪樧��� ^ �⍏த��� ^ �⍀���� ^
  ����� ^ ����樧 ^ ����த ^ ����� ^
.begin
  �⍄����0 := Round(�⍄����,2);
  �⍠恍0  := Round(�⍠恍,2);
  �⍠摍0  := Round(�⍠摍,2);
  �������0  := �������0  + �⍄����0;
  ��⍠恍0 := ��⍠恍0 + �⍠恍0;
  ��⍠摍0 := ��⍠摍0 + �⍠摍0;
end.
.}
  ������������� ^ ���_������������� ^
  ����� ^ ���_����� ^ ������ ^ ���_������ ^
  ��⍠� ^ ���_��⍠� ^ ��⍠� ^ ���_��⍠� ^ ��₠� ^ ���_��₠� ^
  ��⍠��� ^ ���_��⍠��� ^ ��⍠恍 ^ ���_��⍠恍 ^ ��₠��� ^ ���_��₠��� ^
  ��⍠��� ^ ���_��⍠��� ^ ��⍠摍 ^ ���_��⍠摍 ^ ��₠��� ^ ���_��₠��� ^
  ������� ^ ���_������� ^
  ���樧��� ^ ���_���樧��� ^
  ���த��� ^ ���_���த��� ^
  ������� ^ ���_������� ^
  ������� ^ ���_������� ^
  ���樧��� ^ ���_���樧��� ^
  ���த��� ^ ���_���த��� ^
  ������� ^ ���_������� ^
  ������� ^ ���_������� ^
  ���樧��� ^ ���_���樧��� ^
  ���த��� ^ ���_���த��� ^
  ������� ^ ���_������� ^
  ������ ^ �����樧 ^ �����த ^ ������ ^
  ���摨���� ^
.}
.endform

//------------------------------------------------------------------------------

#doc
��� �� ᯨᠭ�� �� �� ६��⮢
#end
.linkform 'AktRemSpis_01' prototype is AktRemSpis
.NameInList '��� �� ᯨᠭ�� �� �� ६��⮢'
.group '��� �� ᯨᠭ�� �� �� ६��⮢'
.fields
 CommonFormHeader
 �࣠������
 �����_�_���ਯ�஬
 ��� �����
 �᭮����� ��⠎᭮�����
 ����ࠣ���
 ��摨���� ��������� ��摨���� ���������
 ����� �������� �⯅� 
 DoubleToStr(�����, '[|-]3666`666`666`666`666.' + PadCh('','8',wGetTune('ROUND.KOLSIGN'))) 
 DoubleToStr(���� , '[|-]3666`666`666`666`666.' + PadCh('','8',wGetTune('ROUND.KOLSIGN')))  
 ���� ���� �⍠� �₠�
 ��⍠� ��₠� ���_�������������
 ��⍠� ��摨���� ���_��⍠�
 ��₠� ��������� ���_��₠�
 ���摨����
.endfields
.{
 ^

�࣠������ : ^

              ��� �  ^  �� ᯨᠭ�� �� �� ६��⮢
                        �� ^

 ����� : ^
.if AktRemSpis
  �᭮����� �  ^ �� ^
.end

 �����稪 : ^

�� ���������������������������������������������������������������������������������������������������������������������������������������
 �����������멳       ������������      � ������ �       ������⢮        �           ����            �           �⮨�����
     �����     �            ��           �����७���������������������������������������������������������������������������������������
               �                         �         ��� ���㬥��� 䠪��᪨ � � @~@@@@@@  � � @~@@@@@@  �  � @~@@@@@@   � � @~@@@@@@
 ���������������������������������������������������������������������������������������������������������������������������������������
.{
 @@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@ &&&&&&&&&&&& &&&&&&&&&&&& &&&&&&&&&&.&& &&&&&&&&&&.&& &&&&&&&&&&&&.&& &&&&&&&&&&&.&&
.}
                                                                                                  �⮣� : &&&&&&&&&&&&.&& &&&&&&&&&&&.&&

���ᥣ� ���饭� ������������ : ^
 �� �㬬� : &&&&&&&&&&&&& @@@@@@ (�ய���� : ^ )
          : &&&&&&&&&&&&& @@@@@@ (�ய���� : ^ )��
��
��
�� ���ᠭ�� ࠧ�訫 ___________          ��.(���訩) ��壠��� ___________

 ���ᠫ     __________________     ��
��
 ^
.}
.endform