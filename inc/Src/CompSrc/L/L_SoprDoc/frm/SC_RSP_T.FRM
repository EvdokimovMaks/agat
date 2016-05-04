/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ��ࠢ����� ������ࠬ�                                     �
 � �����        : 5.70                                                      �
 � �����祭��    : ��ᯮ�殮��� �� ����㧪� ��� ���-������ (�୮�)       �
 � �⢥��⢥��� : ���蠪�� ����਩ ��ࣥ����                                �
 � ��ࠬ����     : ����                                                      �
 ���������������������������������������������������������������������������ͼ
*/

#doc
��ᯮ�殮��� �� ����㧪� (�୮�)
#end
.AutoForm 'SC_Rasp_t'(var pKatSopr:comp)
.NameInList '��ᯮ�殮��� �� ����㧪� (�୮�)'
.group '��� ������'
!.list ''
.Create view SC_Rasp_main1
from
   KatSopr                    (ReadOnly)
  ,SpSopr                     (ReadOnly)
  ,TTNDoc                     (ReadOnly)
  ,KatOrg                     (ReadOnly)
  ,Transp                     (ReadOnly)
  ,KnDriver                   (ReadOnly)
  ,KatMC                      (ReadOnly)
  ,KatOtpEd                   (ReadOnly)
  ,MetLoad                    (ReadOnly)
  ,synonym KatOrg BaseKatOrg  (ReadOnly)
where
  ((
    pKatSopr            ==   KatSopr.nRec    and
    KatSopr.NRec        ==   SpSopr.cSopr    and
    KatSopr.cOrgBase    ==   BaseKatOrg.NRec and
    word(1)             ==   SpSopr.PrMC     and
    SpSopr.cMCUSL       ==   KatMC.NRec      and
    SpSopr.cOtpEd       ==   KatOtpEd.NRec   and
    coKatSopr           ==   TTNDoc.wTable   and
    KatSopr.nRec        ==   TTNDoc.cDoc     and
    TTNDoc.cOrgAvt      ==   KatOrg.nRec     and  // ��⮯।���⨥
    TTNDoc.cTransp      ==   Transp.nRec     and  // ��� ��⮬�����
    TTNDoc.cDriver      ==   KnDriver.nRec   and  // ��� ����⥫�
    TTNDoc.cPunPMet     ==   MetLoad.NRec         //ᯮᮡ ����㧪�
  ))
;
.fields
  KatSopr.NSopr
  DateToStr(KatSopr.dSopr,'�� "DD" Mon YYYY �.')
  if (KatOrg.TipOrg<>'',KatOrg.TipOrg+' ','')+KatOrg.Name
  if (BaseKatOrg.TipOrg<>'',BaseKatOrg.TipOrg+' ','')+BaseKatOrg.Name
  Transp.Nomer
  KnDriver.Name
  Cur_Time
  KatMC.Name
  KatMC.Name
  string(SpSopr.KolFact)+' '+KatOtpEd.Name
  MetLoad.Name

  KatSopr.NSopr
  DateToStr(KatSopr.dSopr,'�� "DD" Mon YYYY �.')
  if (KatOrg.TipOrg<>'',KatOrg.TipOrg+' ','')+KatOrg.Name
  if (BaseKatOrg.TipOrg<>'',BaseKatOrg.TipOrg+' ','')+BaseKatOrg.Name
  Transp.Nomer
  KnDriver.Name
  KatMC.Name
  KatMC.Name
  string(SpSopr.KolFact)+' '+KatOtpEd.Name
  MetLoad.Name

  PadCh(KnDriver.Name,' ',30)
.endfields //                                                        ���.!           ����!
.p 55
.begin
  if ((GetFirst KatSopr <> 0) or
      (GetFirst SpSopr  <> 0) )
    {
    Message(''#3'��ᯮ�殮��� �� ���㧪� ������ �����.',0) ;
    SC_Rasp_t.fExit ;
    }
end.
[22;;{


��                   �������������� �� �������� � ^��   ^
                                                                                          1
  ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  �    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ���.� �/� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  �
  ����⥫� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  �              �६� �뤠�  ^
                                             �
  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                             �
   ����㧨��:                                �       �����᪨ ����㦥��:
  ������������ �த. @@@@@@@@@@@@@@@@@@@@@@@ �  ������������ �த. @@@@@@@@@@@@@@@@@@@@@@@
                                             �                   �����������������������Ŀ
                                             �                   �  ��   � ��誨 ��������
                                             �                   �����������������������Ĵ
  � ������⢥ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �  � ������⢥:    �       �       �       �
                                             �                   �������������������������
  ��� ����㧪�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@ �  ���㧨�: ________________________________
                                             �
                                             �                                  � - - - - -
  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �   �.�.
                                                       � � � � �   � � � � � �  � - - - - -

                   �������������� �� �������� � ^��   ^
                                                                                          2
  ��� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  �    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  ���.� �/� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  �
  ����⥫� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  �
                                             �
  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                             �
   ����㧨��:                                �       �����᪨ ����㦥��:
  ������������ �த. @@@@@@@@@@@@@@@@@@@@@@@ �  ������������ �த. @@@@@@@@@@@@@@@@@@@@@@@
                                             �                   �����������������������Ŀ
                                             �                   �  ��   � ��誨 ��������
                                             �                   �����������������������Ĵ
  � ������⢥ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ �  � ������⢥:    �       �       �       �
                                             �                   �������������������������
  ��� ����㧪�: @@@@@@@@@@@@@@@@@@@@@@@@@@@@ �  ���㧨�: ________________________________
   �������: ________________________�����   �
                                             �
  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

             ������������ �����������                   "____"__________________1999 �.
                                                          �����������������������Ŀ
                                                          �  ��   � ��誨 ��������
                                                          �����������������������Ĵ
  ����⥫�  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ����:          �       �       �       �
            ______________________________                �����������������������Ĵ
                       �������                            �       �       �       �
  ������騪 ______________________________ �ਭ�:        �       �       �       �
                                                          �������������������������
            ______________________________
                       ���������
.endform