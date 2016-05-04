/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ��ࠢ����� ������ࠬ�                                     �
 � �����        : 5.70                                                      �
 � �����祭��    : ��ᯮ�殮��� �� ����㧪� ��� ���-������ (�����쭮�)    �
 � �⢥��⢥��� : ���蠪�� ����਩ ��ࣥ����                                �
 � ��ࠬ����     : ����                                                      �
 ���������������������������������������������������������������������������ͼ
*/

#doc
��ᯮ�殮��� �� ����㧪� (�����쭮�)
#end
.AutoForm 'SC_Rasp_n'(var pKatSopr:comp)
.NameInList '��ᯮ�殮��� �� ����㧪� (�����쭮�)'
.group '��� ������'
!.list ''
.Create view SC_Rasp_main0
from
   KatSopr                    (ReadOnly)
  ,SpSopr                     (ReadOnly)
  ,TTNDoc                     (ReadOnly)
  ,Transp                     (ReadOnly)
  ,KnDriver                   (ReadOnly)
  ,KatMC                      (ReadOnly)
  ,KatOtpEd                   (ReadOnly)
where
  ((
    pKatSopr            ==   KatSopr.nRec    and
    KatSopr.NRec        ==   SpSopr.cSopr    and
    word(1)             ==   SpSopr.PrMC     and
    SpSopr.cMCUSL       ==   KatMC.NRec      and
    SpSopr.cOtpEd       ==   KatOtpEd.NRec   and
    coKatSopr           ==   TTNDoc.wTable   and
    KatSopr.nRec        ==   TTNDoc.cDoc     and
    TTNDoc.cTransp      ==   Transp.nRec     and  // ��� ��⮬�����
    TTNDoc.cDriver      ==   KnDriver.nRec        // ��� ����⥫�
  ))
;
.fields
  KatSopr.NSopr
  KatSopr.NSopr
  DateToStr(KatSopr.dSopr,'DD:MM:YYYY')
  DateToStr(KatSopr.dSopr,'DD:MM:YYYY')
  Transp.Nomer
  Transp.Nomer
  KnDriver.Name
  KnDriver.Name
  KatMC.Name
  KatMC.Name
  KatOtpEd.Name
  KatOtpEd.Name
  DoubleToStr(SpSopr.mTara, '6666666666666666.88')
  DoubleToStr(SpSopr.mTara, '6666666666666666.88')
.endfields //                                                        ���.!           ����!
.p 53
.begin
  if ((GetFirst KatSopr <> 0) or
      (GetFirst SpSopr <> 0) or
      (SpSopr.mTara=0))
    {
    Message(''#3'��ᯮ�殮��� �� ���㧪�'#13#3+
            '�������� ����� ���� �� ����� ��� ���.',0) ;
    SC_Rasp_n.fExit ;
    }
end.
[21;;{

��         ������������ �� ��������            �        ������������ �� ����������

��          � @@@@@@@@@@@@@@@@@@@@@@@@         �         � @@@@@@@@@@@@@@@@@@@@@@@@��


��    ��� @@@@@@@@@@                          �   ��� @@@@@@@@@@��

��    ���.� �/� @@@@@@@@@@@@@@@@@@@@@@@@@@@    �   ���.� �/� @@@@@@@@@@@@@@@@@@@@@@@@@@@��

��    ����⥫� @@@@@@@@@@@@@@@@@@@@@@@@@@@@    �   ����⥫� @@@@@@@@@@@@@@@@@@@@@@@@@@@@��

��    ��ઠ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    �   ��ઠ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

��    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    �   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

��    ��� ���    &&&&&&&&&&&&.&&              �   ��� ���    &&&&&&&&&&&&.&&��


��    ��ᯥ���                                �   ��������

��    ��ᮢ����
.endform