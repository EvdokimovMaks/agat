/*
 ���������������������������������������������������������������������������ͻ
 �                     (c) 1994,97 ��௮��� ���������                      �
 � �஥��        : ���������                                                 �
 � ���⥬�       : ����⨢�� ������                                        �
 � �����        : 4.33                                                      �
 � �����祭��    : ���� "����襭�� �����������⥩ �� �த����" - �ଠ      �
 � �⢥��⢥��� : �����쪮 ���⮫�� �������஢��                            �
 � ��ࠬ����     : ���                                                       �
 ���������������������������������������������������������������������������ͼ
*/
! ���� ᨬ��� ���ਯ��
! '@': ��᢮��� ���� ��쥪� (��६����� ������ ���� ⨯� LongInt )
!      ࠡ�⠥� ⮫쪮 ��� ��᫥������ tDebListStructure
!      ��� �⮣���� �㬬 �� ࠡ�⠥� ⠪ ��� ��쥪� �� ᮧ������!
!
! tDebListStructure - �� ��쥪� ��᫥����� �� �⮣�
!     ����� ���ਯ�� - ����ந�� �� ����� �ᥣ� ��쥪�
!          (�ᯮ�짮���� ��� ������⮢ � ��᢮���� ���� ��쥪�)
!     'K': ���� �� ���� tDeblistKeyPerDate ��� tDeblistKeyPerDay
! �� 2 ��� : ��⠭����� ����� ����� ��ਮ��
!     '#��������.������� '
!      ��� '#������� '      : ������ ���� �� 䠩��, ���஥ ������ ��ࠡ����
!                             ���� �� ��᫥�㥬�� ��쥪⮢
!
! ����᫥���騥(��������) �� ����� ᮡ�⢥���� ���ਯ�஢ ⮫쪮 Inherited
!  tDebListSumma    - Double
!  tDebListString   - String
!  tDebListDate     - Date
!  tDebListInteger  - Integer
!  tDebListLongInt  - LongInt
!  tDeblistKey      - ����ࠪ�� ��쥪� ����
!  tDeblistKeyDate       (���� �㦭� ��� ��ਧ��⠫��� 横���)
!  tDeblistKeyLongInt
!
! tDeblistKeyPerDate                =object(tDebListStucture)
!     'B': ��砫쭠� ��� ��ਮ�� Date
!     'E': ����筠� ��� ��ਮ��  Date
!     'N': ��ப� 1 ������������  String
!     'K': ��ப� 2 ������������  String
!
! tDeblistKeyPerDay                 =object(tDebListStucture)
!     'B': �������쭮� �᫮ ���� ����窨  LongInt
!     'E': ���ᨬ��쭮� �᫮ ���� ����窨 LongInt
!     'N': ��ப� ������������    String
!
! tDebListAbstractCycle             =object(tDebListStucture)
!     'L': Fields    (�� �㬬��㥬� ����)                 -> tDebListStucture
!     'S': SummsToUp (�㬬��㥬� ���� ����� �� 横��� )   -> tDebListStucture
!                      (tDebListDO ��� tDebListProdZakupSaldoItog ��� ��ਮ���)
!     'I': SummsToUp (�⮣� �� ����� 横�� ���� �� ������) -> tDebListStucture
!     'C': CalcSumms (����⠭� �� �⮣�� �㬬�,
!                          ���ਬ�� ᠫ줮 �� ����ࠣ����) -> tDebListStucture
!
! tDebListCycle � tDebListGorCycle  =object(tDebListAbstractCycle)
!     'V': ����७��� 横� (+����易⥫쭠� ��� - �����)     -> tDebListCycle ��� tDebListGorCycle
!     'U': �⮣� ����� 横�� �� ����� ����७���� 横��       -> tDebListCycle ��� tDebListGorCycle
!     'P': ��ਧ��⠫�� 横� (+����易⥫쭠� ��� - �����) -> tDebListGorCycle
!      (�� ��ਧ��⠫쭮�� ���筮 ���� �����)
!
! tDebListFileCycle                 =object(tDebListCycle)
!     '#<��ﯮ����⠡���>'      (���ਬ�� #Name)
!  ��� '#<��אַ��⠡����.��ﯮ��>'  (���ਬ�� #KatOrg.Name ��� 横��
!                                    �� KatOrg)
!
! tDebListBaseDocForKatOrg          =object(tDebListFileCycle)
!    &DateDog  - ��� �������
!    &DateOpl  - ���ᨬ��쭠� ��� ������
!    &DateOtgr - ���ᨬ��쭠� ��� ���㧪�
!    #BaseDoc.<��� ����> - ���� ⠡���� BaseDoc
!    #BaseFin.<��� ����> - ���� ⠡���� BaseFin
!    #KatSopr.<��� ����> - ���� ⠡���� KatSopr
!    #SpSopr.<��� ����>  - ���� ⠡���� SpSopr
!
! tDebListDO                        =object(tDebListStucture)
!     'D': SumDog     - �㬬� �������                       -> tDebListProdZakupSaldoItog
!     'Z': ToDate1    - ������ � ������������ �� ����1     -> tDebListProdZakupSaldoItog
!     'N': NProsr2    - ������祭�� ������ �� ����1 �� ����2  -> tDebListProdZakupSaldoItog
!     'B': All2       - �� ������ �� ����1 �� ����2        -> tDebListProdZakupSaldoItog
!     'T': ToDate2    - ������ � ������������ �� ����2     -> tDebListProdZakupSaldoItog
!     'C': AfterDate2 - ������ ��᫥ ����2                  -> tDebListProdZakupSaldoItog
!     'A': All        - �⮣��� ������ � ������������     -> tDebListProdZakupSaldoItog
!
! tDebListProdZakupSaldoItog        =object(tDebListStucture)
!     'P': Prod   - ������� �த���, ���᪠ �� ���ᨣ���� -> tDebListOplOtgrItog
!     'Z': Zakup  - ������� ���㯪�, �ਥ�� �� ���ᨣ����  -> tDebListOplOtgrItog
!     'S': Saldo  - ࠧ���                                  -> tDebListOplOtgrItog
!     'I': Itog   - �㬬�                                    -> tDebListOplOtgrItog
!
! tDebListOplOtgrItog               =object(tDebListStucture)
!     'O': Oplata   - �����                -> tDebListMoneyTovarDolg
!     'G': Otgruzka - ���㧪�/�ਥ� ⮢�� -> tDebListDirectVozratDolg
!     'I': Itog     - ࠧ���               -> tDebListDirectVozratDolgFact
!
! tDebListMoneyTovarDolg            =object(tDebListStucture)
!     'M': Money   - ����� ���죠��  -> tDebListDirectVozrat
!     'T': Tovar   - ����� ⮢�஬   -> tDebListDirectVozrat
!     'I': Itog    - �⮣� ������     -> tDebListDirectVozrat
!     'N': Normal  - ��ଠ�쭠� ������������� �� �����    -> tDebListSumma
!     'P': Prosr   - ����祭��� ������������� �� �����  -> tDebListSumma
!
! tDebListDirectVozrat              =object(tDebListStucture)
!     'D': Direct  - � ��אַ� ���ࠢ�����         -> tDebListSumma
!     'V': Vozvrat - ������  (�� ४����樨 ��� �� ���ᨣ��樨) -> tDebListSumma
!     'I': Itog    - ࠧ���                      -> tDebListSumma
!          ���室� �� tDebListSumma
!
! tDebListDirectVozratDolg         =object(tDebListDirectVozvrat)    (������ � ������������ �� ⮢���)
! � tDebListDirectVozratDolgFact   =object(tDebListDirectVozratDolg) (䠪��᪨� ������ � ������������)
!     'N': Normal  - ��ଠ�쭠� �������������    -> tDebListSumma
!     'P': Prosr   - ����祭��� �������������  -> tDebListSumma
!

#doc
���� "����襭�� �����������⥩ �� �த����" - �ଠ
#end
.Set Name = 'DebPas'
.hide
.fields
  Otchet     : LongInt
  MainCycle  : LongInt
  ErrInit    : Boolean
  ErrInit2   : Boolean
  KatOrgNum  : LongInt
  StepDocNum : LongInt
  StepDocNum1: LongInt
  KatOrgNum1 : LongInt
.endfields
 ^ ^
.{CHECKENTER Nastr1
^��� ��⠢���� ��� ����ன�� ����
.{CHECKENTER Nastr2
^��࠭��㥬 �� ����ன�� ��諠
.}
.}
����� ���� �!
.{CHECKENTER fKatorg1
^����� �� ����ࠣ���� �!
.{CHECKENTER fBaseDoc1
^�� �� �������� ������ �����!
.{CHECKENTER fBaseDoc2
^��࠭��㥬 ������� BaseDoc
.}
.}
�⮣� �� ����ࠣ���� ��⠢���� ���!
.{CHECKENTER fKatorg2
^��࠭��㥬 ������� KatOrg
.}
.}
�⮣� �� ����� ����� !
.endform

!*****************************************************************************

#doc
���� � ����襭�� ������������ �� �த���� (ࠧ������)
#end
.linkform 'DebPas01' prototype is DebPas
.NameInList '���� � ����襭�� ������������ �� �த���� (ࠧ������)'
.var
  BaseDoc:longint     // 横� �� ������ࠬ
  AllKontr:word
  grKontrName:string
  Date1  :date
  Date2  :date
  vValOt :string
  DBegDO :date
  DEndDO :date
  Sost   :word
  IsProd :Boolean

!  Prod     :boolean
!  Zakup    :boolean
!  KonsP    :boolean
!  KonsZ    :boolean
!  Rub      :boolean
!  Val      :boolean
!  RubVal   :boolean
!  RubValRub:word
  fValut   :boolean

  KatOrgName:string   // ������������ ����ࠣ���

  Days1  :longint     // ��� ����窨
  Days21 :longint
  Days22 :longint
  Days3  :longint

  NoDoc:String  // � �������
  dDoc:date     // ��� �������
  dOpl:date     // ����. ��� ������

  DSumDog :double  // �㬬� �������  �� �த����
  KSumDog:double  // �㬬� ������஢ �� ����ࠣ���� �� �த����
  OSumDog:double  // �㬬� ������� �� ����� �� �த����
//  䠪��᪨� ������������ �� ��砫� ��ਮ�� xZIIN

//䠪��᪨� ������������ �� ��砫� ��ਮ�� xZPIN �� �த����
  dZPIN:double    // �� ��������
  kZPIN:double    // �� ����ࠣ����
  oZPIN:double    // �� �����
//䠪��᪨� ������������ �� ����� ��ਮ�� xTPIN �� �த����
  dTPIN:double    // �� ��������
  kTPIN:double    // �� ����ࠣ����
  oTPIN:double    // �� �����

//����祭�� 䠪��᪨� ������������ �� ��砫� ��ਮ�� xZPIP
  dZPIP:double    // �� ��������
  kZPIP:double    // �� ����ࠣ����
  oZPIP:double    // �� �����
//����祭�� 䠪��᪨� ������������ �� ����� ��ਮ�� xTPIP
  dTPIP:double  // �� ��������
  kTPIP:double  // �� ����ࠣ����
  oTPIP:double  // �� �����

// ������祭��� ����� �� ������ࠬ �த��� �� ��ਮ�
  dNPOI:double  // �� ��������
  kNPOI:double  // �� ����ࠣ����
  oNPOI:double  // �� �����

//����襭�� ������������(�����) P2xIOIIx!
  P2dPO1:double // �� ��������
  P2kPO1:double // �� ����ࠣ����
  P2oPO1:double // �� �����

  P2dPO2:double // �� ��������
  P2kPO2:double // �� ����ࠣ����
  P2oPO2:double // �� �����

  P2dPO3:double // �� ��������
  P2kPO3:double // �� ����ࠣ����
  P2oPO3:double // �� �����
.endvar
.{CHECKENTER Nastr1
.begin // ��� �� ����ࠨ���� ����
  DebSetupField(MainCycle,BaseDoc,'@V');      // 横� �� ������ࠬ

  DebSetupField(MainCycle,AllKontr,   '&AllKontr');
  DebSetupField(MainCycle,grKontrName,'&grKontrName');

  DebSetupField(MainCycle,KatOrgName,'#NAME'); // ������������ ����ࠣ���

  DebSetupField(MainCycle,Days1,  '1P2KE');    // ��� ����窨
  DebSetupField(MainCycle,Days21, '2P2KB');
  DebSetupField(MainCycle,Days22, '2P2KE');
  DebSetupField(MainCycle,Days3,  '3P2KB');

  DebSetupField(BaseDoc,  Date1,  '&Date1');
  DebSetupField(BaseDoc,  Date2,  '&Date2');
  DebSetupField(BaseDoc,  vValOt, '&vValOt');
  DebSetupField(BaseDoc,  DBegDO, '&DBegDO');
  DebSetupField(BaseDoc,  DEndDO, '&DEndDO');
  DebSetupField(BaseDoc,  Sost,   '&Sost');
  DebSetupField(BaseDoc,  IsProd, '&IsProd');

!  DebSetupField(BaseDoc,  Prod,     '&Prod');
!  DebSetupField(BaseDoc,  Zakup,    '&Zakup');
!  DebSetupField(BaseDoc,  KonsP,    '&KonsP');
!  DebSetupField(BaseDoc,  KonsZ,    '&KonsZ');
!  DebSetupField(BaseDoc,  Rub,      '&Rub');
!  DebSetupField(BaseDoc,  Val,      '&Val');
!  DebSetupField(BaseDoc,  RubVal,   '&RubVal');
!  DebSetupField(BaseDoc,  RubValRub,'&RubValRub');

  DebSetupField(BaseDoc,  fValut, '&fValut');

  DebSetupField(BaseDoc,  NoDoc,  '#NoDoc'); // ��� �������
  DebSetupField(BaseDoc,  dDoc,   '#dDoc'); // ��� �������
  DebSetupField(BaseDoc,  dOpl,   '&DateMaxOpl'); // ����. ��� ������

// �㬬� ��६ ⮫쪮 �� ������ࠬ �த��!
  DebSetupField(BaseDoc,  dSumDog,'SDP');   // �㬬� �������
  DebSetupField(BaseDoc,  kSumDog,'IDP');   // �㬬� ������஢ �� ����ࠣ����
  DebSetupField(MainCycle,oSumDog,'UIDP');   // �㬬� ������஢ �� �����

//  䠪��᪨� ������������ �� ��砫� ��ਮ�� xZIIN
  DebSetupField(BaseDoc,  dZPIN, 'SZPIN');    // �� ��������
  DebSetupField(BaseDoc,  kZPIN, 'IZPIN');    // �� ����ࠣ����
  DebSetupField(MainCycle,oZPIN, 'UIZPIN');    // �� �����
//  䠪��᪨� ������������ �� ����� ��ਮ�� xTIIN
  DebSetupField(BaseDoc,  dTPIN, 'STPIN');    // �� ��������
  DebSetupField(BaseDoc,  kTPIN, 'ITPIN');    // �� ����ࠣ����
  DebSetupField(MainCycle,oTPIN, 'UITPIN');    // �� �����

//  ����祭�� 䠪��᪨� ������������ �� ��砫� ��ਮ�� xZIIP
  DebSetupField(BaseDoc,  dZPIP, 'SZPIP');    // �� ��������
  DebSetupField(BaseDoc,  kZPIP, 'IZPIP');    // �� ����ࠣ����
  DebSetupField(MainCycle,oZPIP, 'UIZPIP');    // �� �����
//  ����祭�� ������������ �� ����� ��ਮ�� xTIIP
  DebSetupField(BaseDoc,  dTPIP, 'STPIP');    // �� ��������
  DebSetupField(BaseDoc,  kTPIP, 'ITPIP');    // �� ����ࠣ����
  DebSetupField(MainCycle,oTPIP, 'UITPIP');    // �� �����

// ������祭��� ����� �� ������ࠬ �த��� �� ��ਮ�
  DebSetupField(BaseDoc,  dNPOI, 'SNPOII');    // �� ��������
  DebSetupField(BaseDoc,  kNPOI, 'INPOII');    // �� ����ࠣ����
  DebSetupField(MainCycle,oNPOI, 'UINPOII');    // �� �����

// ����襭�� ������������(�����) P2xIOIIx! (⮫쪮 �த���)
       // �� 10 ���� P2xPO1
  DebSetupField(BaseDoc,  P2dPO1, '1P2SPOII'); // �� ��������
  DebSetupField(BaseDoc,  P2kPO1, '1P2IPOII'); // �� ����ࠣ����
  DebSetupField(MainCycle,P2oPO1, '1P2UIPOII'); // �� �����
       // �� 11 �� 45 ���� P2xPO2
  DebSetupField(BaseDoc,  P2dPO2, '2P2SPOII'); // �� ��������
  DebSetupField(BaseDoc,  P2kPO2, '2P2IPOII'); // �� ����ࠣ����
  DebSetupField(MainCycle,P2oPO2, '2P2UIPOII'); // �� �����
       // ����� 45 ���� P2xPO3
  DebSetupField(BaseDoc,  P2dPO3, '3P2SPOII'); // �� ��������
  DebSetupField(BaseDoc,  P2kPO3, '3P2IPOII'); // �� ����ࠣ����
  DebSetupField(MainCycle,P2oPO3, '3P2UIPOII'); // �� �����
end.
.{CHECKENTER Nastr2
.}
.}
.fields
  CommonFormHeader
 DateToStr(Date1,'DD/MM/YYYY')
 DateToStr(Date2,'DD/MM/YYYY')
 vValOt
 if (sost=1,'��ଫ塞�',
      if (sost=2,'�ᯮ��塞�',
      if (sost=3,'�������',''
    )))
 DateToStr(dBegDO,'DD/MM/YYYY')
 DateToStr(dEndDO,'DD/MM/YYYY')
 If(fValut,'(⮫쪮 �믨ᠭ�� � '+vValOt+')','')
 If(AllKontr=1,'(�� �ᥬ ����ࠣ��⠬)',
    If(AllKontr=0,'(�� ��࠭�� ����ࠣ��⠬)',
    If(AllKontr=2,'�� ��㯯� ����ࠣ��⮢: '+grKontrName,''
   )))
.endfields
�� ^

                    ����� � ��������� ����������� �������������

  �� ��ਮ� � ^ �� ^ � ^
   �� ^ ������ࠬ �த��� � ^ �� ^ ^
   ^��
!
!     [@] �த���                 [@] �㡫���
!     [@] ���㯪�                 [@] ������
!     [@] ���� �� ���ᨣ����   [@] ����⭮-�㡫���
!     [@] �ਥ� �� ���ᨣ����        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

�� ������⥫�� ������������ ᮮ⢥������ ����� ����ࠣ���, ����⥫�� - ��襬� �����.��

.{CHECKENTER fKatorg1
.fields
  KatOrgNum KatOrgName
  Days1 Days21 Days22 (Days3-1)
.endfields

�� ^.�� ����ࠣ����: ^��
�����������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
� � ��� �   ���   �  ���    �     �㬬�     �  �� �� ��砫� � ��� �� ��砫� �         �㬬� ������ �� ����� ��ਮ�       �  �� �� �����  � ��� �� �����  �
�         �   ���  � ������ ���     ���     �   ���⭮��   �   ���⭮��   �����������������������������������������������Ĵ   ���⭮��   �   ���⭮��   �
�         �          � �������� �               �    ��ਮ��    �    ��ਮ��    � �ப ��@~@@��.���@~@@��@~@@��.� �����@~@@���� �    ��ਮ��    �    ��ਮ��    �
���������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.{CHECKENTER fBaseDoc1;IsProd=true
!.begin Message(''#3'����fStepDoc1',0); end.
.fields
  NoDoc DateToStr(dDoc,'DD/MM/YYYY')
         DateToStr(dOpl,'DD/MM/YYYY') dSumDog         dZPIN            dZPIP        P2dPO1+dNPOI      P2dPO2           P2dPO3          dTPIN            dTPIP
.endfields
���@~@@@@@@@�@~@@@@@@@@�@~@@@@@@@@�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&���
.{CHECKENTER fBaseDoc2
.}
.}
.fields
                                    kSumDog         kZPIN            kZPIP         P2kPO1+kNPOI      P2kPO2           P2kPO3          kTPIN            kTPIP
.endfields
�����������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
� �⮣� �� ����ࠣ����          �&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�
�������������������������������������������������������������������������������������������������������������������������������������������������������������������
.{CHECKENTER fKatorg2//;false
.}
.}
.fields
  If(AllKontr=2  ,'�⮣� �� ��㯯�','') Days1 Days21 Days22 (Days3-1)
  If(AllKontr=2  ,'����ࠣ��⮢:',
    If(AllKontr=0,'�⮣� �� �ᥬ ��࠭��',''))
  If(AllKontr=2  ,grKontrName,
    If(AllKontr=0,'����ࠣ��⠬:',
    If(AllKontr=1,'�⮣� �� �ᥬ ����ࠣ��⠬:','')))
                                    oSumDog         oZPIN            oZPIP         P2oPO1+oNPOI       P2oPO2           P2oPO3          oTPIN            oTPIP
.endfields

��
�����������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                               �    �㬬�      �  �� �� ��砫� � ��� �� ��砫� �         �㬬� ������ �� ����� ��ਮ�       �  �� �� �����  � ��� �� �����  �
�                               �     ���      �    ���⭮��  �   ���⭮��   �����������������������������������������������Ĵ   ���⭮��   �   ���⭮��   �
� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@ �    ��⮢     �     ��ਮ��   �    ��ਮ��    � �ப ��@~@@��.���@~@@��@~@@��.� �����@~@@���� �    ��ਮ��    �    ��ਮ��    �
� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@ �������������������������������������������������������������������������������������������������������������������������������Ĵ
� @~@@@@@@@@@@@@@@@@@@@@@@@@@@@ �&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�
�������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform

!*****************************************************************************

#doc
���� � ����襭�� ������������ �� �த���� (ᢥ����)
#end
.linkform 'DebPas02' prototype is DebPas
.NameInList '���� � ����襭�� ������������ �� �த���� (ᢥ����)'
.var
  ff    :string
  BaseDoc:longint     // 横� �� ������ࠬ
  AllKontr:word
  grKontrName:string
  Date1  :date
  Date2  :date
  vValOt :string
  DBegDO :date
  DEndDO :date
  Sost   :word
!  Prod     :boolean
!  Zakup    :boolean
!  KonsP    :boolean
!  KonsZ    :boolean
!  Rub      :boolean
!  Val      :boolean
!  RubVal   :boolean
!  RubValRub:word
  fValut   :boolean

  KatOrgName:string   // ������������ ����ࠣ���

  Days1  :longint     // ��� ����窨
  Days21 :longint
  Days22 :longint
  Days3  :longint

  KSumDog:double  // �㬬� ������஢ �� ����ࠣ���� �� �த����
  OSumDog:double  // �㬬� ������� �� ����� �� �த����
//  䠪��᪨� ������������ �� ��砫� ��ਮ�� xZIIN

//䠪��᪨� ������������ �� ��砫� ��ਮ�� xZPIN �� �த����
  kZPIN:double    // �� ����ࠣ����
  oZPIN:double    // �� �����
//䠪��᪨� ������������ �� ����� ��ਮ�� xTPIN �� �த����
  kTPIN:double    // �� ����ࠣ����
  oTPIN:double    // �� �����

//����祭�� 䠪��᪨� ������������ �� ��砫� ��ਮ�� xZPIP
  kZPIP:double    // �� ����ࠣ����
  oZPIP:double    // �� �����

//����祭�� 䠪��᪨� ������������ �� ����� ��ਮ�� xTPIP
  kTPIP:double  // �� ����ࠣ����
  oTPIP:double  // �� �����

// ������祭��� ����� �� ������ࠬ �த��� �� ��ਮ�
  kNPOI:double  // �� ����ࠣ����
  oNPOI:double  // �� �����

//����襭�� ������������(�����) P2xIOIIx!
  P2kPO1:double // �� ����ࠣ����
  P2oPO1:double // �� �����

  P2kPO2:double // �� ����ࠣ����
  P2oPO2:double // �� �����

  P2kPO3:double // �� ����ࠣ����
  P2oPO3:double // �� �����
.endvar
.{CHECKENTER Nastr1
.begin // ��� �� ����ࠨ���� ����

  DebSetupField(MainCycle,BaseDoc,'@V');      // 横� �� ������ࠬ

  DebSetupField(MainCycle,AllKontr,   '&AllKontr');
  DebSetupField(MainCycle,grKontrName,'&grKontrName');

  DebSetupField(MainCycle,KatOrgName,'#NAME'); // ������������ ����ࠣ���

  DebSetupField(MainCycle,Days1,  '1P2KE');    // ��� ����窨
  DebSetupField(MainCycle,Days21, '2P2KB');
  DebSetupField(MainCycle,Days22, '2P2KE');
  DebSetupField(MainCycle,Days3,  '3P2KB');

  DebSetupField(BaseDoc,  Date1,  '&Date1');
  DebSetupField(BaseDoc,  Date2,  '&Date2');
  DebSetupField(BaseDoc,  vValOt, '&vValOt');
  DebSetupField(BaseDoc,  DBegDO, '&DBegDO');
  DebSetupField(BaseDoc,  DEndDO, '&DEndDO');
  DebSetupField(BaseDoc,  Sost,   '&Sost');

!  DebSetupField(BaseDoc,  Prod,     '&Prod');
!  DebSetupField(BaseDoc,  Zakup,    '&Zakup');
!  DebSetupField(BaseDoc,  KonsP,    '&KonsP');
!  DebSetupField(BaseDoc,  KonsZ,    '&KonsZ');
!  DebSetupField(BaseDoc,  Rub,      '&Rub');
!  DebSetupField(BaseDoc,  Val,      '&Val');
!  DebSetupField(BaseDoc,  RubVal,   '&RubVal');
!  DebSetupField(BaseDoc,  RubValRub,'&RubValRub');

  DebSetupField(BaseDoc,  fValut, '&fValut');

// �㬬� ��६ ⮫쪮 �� ������ࠬ �த��!
  DebSetupField(BaseDoc,  kSumDog,'IDP');   // �㬬� ������஢ �� ����ࠣ����
  DebSetupField(MainCycle,oSumDog,'UIDP');   // �㬬� ������஢ �� �����

//  䠪��᪨� ������������ �� ��砫� ��ਮ�� xZIIN
  DebSetupField(BaseDoc,  kZPIN, 'IZPIN');    // �� ����ࠣ����
  DebSetupField(MainCycle,oZPIN, 'UIZPIN');    // �� �����
//  䠪��᪨� ������������ �� ����� ��ਮ�� xTIIN
  DebSetupField(BaseDoc,  kTPIN, 'ITPIN');    // �� ����ࠣ����
  DebSetupField(MainCycle,oTPIN, 'UITPIN');    // �� �����

//  ����祭�� 䠪��᪨� ������������ �� ��砫� ��ਮ�� xZIIP
  DebSetupField(BaseDoc,  kZPIP, 'IZPIP');    // �� ����ࠣ����
  DebSetupField(MainCycle,oZPIP, 'UIZPIP');    // �� �����
//  ����祭�� ������������ �� ����� ��ਮ�� xTIIP
  DebSetupField(BaseDoc,  kTPIP, 'ITPIP');    // �� ����ࠣ����
  DebSetupField(MainCycle,oTPIP, 'UITPIP');    // �� �����

// ������祭��� ����� �� ������ࠬ �த��� �� ��ਮ�
  DebSetupField(BaseDoc,  kNPOI, 'INPOII');    // �� ����ࠣ����
  DebSetupField(MainCycle,oNPOI, 'UINPOII');    // �� �����

// ����襭�� ������������(�����) P2xIOIIx! (⮫쪮 �த���)
       // �� 10 ���� P2xPO1
  DebSetupField(BaseDoc,  P2kPO1, '1P2IPOII'); // �� ����ࠣ����
  DebSetupField(MainCycle,P2oPO1, '1P2UIPOII'); // �� �����
       // �� 11 �� 45 ���� P2xPO2
  DebSetupField(BaseDoc,  P2kPO2, '2P2IPOII'); // �� ����ࠣ����
  DebSetupField(MainCycle,P2oPO2, '2P2UIPOII'); // �� �����
       // ����� 45 ���� P2xPO3
  DebSetupField(BaseDoc,  P2kPO3, '3P2IPOII'); // �� ����ࠣ����
  DebSetupField(MainCycle,P2oPO3, '3P2UIPOII'); // �� �����
end.
.{CHECKENTER Nastr2
.}
.}
.fields
  CommonFormHeader
 DateToStr(Date1,'DD/MM/YYYY')
 DateToStr(Date2,'DD/MM/YYYY')
 vValOt
 if (sost=1,'��ଫ塞�',
      if (sost=2,'�ᯮ��塞�',
      if (sost=3,'�������',''
    )))
 DateToStr(dBegDO,'DD/MM/YYYY')
 DateToStr(dEndDO,'DD/MM/YYYY')
 If(fValut,'(⮫쪮 �믨ᠭ�� � '+vValOt+')','')
 If(AllKontr=1,'(�� �ᥬ ����ࠣ��⠬)',
    If(AllKontr=0,'(�� ��࠭�� ����ࠣ��⠬)',
    If(AllKontr=2,'�� ��㯯� ����ࠣ��⮢: '+grKontrName,''
   )))
  Days1 Days21 Days22 (Days3-1)
.endfields
�� ^

             �������� ����� � ��������� ����������� �������������

  �� ��ਮ� � ^ �� ^ � ^
   �� ^ ������ࠬ �த��� � ^ �� ^ ^
   ^��
!
!     [@] �த���                 [@] �㡫���
!     [@] ���㯪�                 [@] ������
!     [@] ���� �� ���ᨣ����   [@] ����⭮-�㡫���
!     [@] �ਥ� �� ���ᨣ����        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

�� ������⥫�� ������������ ᮮ⢥������ ����� ����ࠣ���, ����⥫�� - ��襬� �����.��

�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
�                                           �     �㬬�     �  �� �� ��砫� � ��� �� ��砫� �         �㬬� ������ �� ����� ��ਮ�       �  �� �� �����  � ��� �� �����  �
� ����ࠣ���                                �     ��⮢    �   ���⭮��   �   ���⭮��   �����������������������������������������������Ĵ   ���⭮��   �   ���⭮��   �
�                                           �               �    ��ਮ��    �    ��ਮ��    � �ப ��@~@@��.���@~@@��@~@@��.� �����@~@@���� �    ��ਮ��    �    ��ਮ��    �
���������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ��
.{CHECKENTER fKatorg1
.{CHECKENTER fBaseDoc1
.{CHECKENTER fBaseDoc2
.}
.}
.fields
 KatOrgName                                     kSumDog         kZPIN            kZPIP         P2kPO1+kNPOI        P2kPO2           P2kPO3          kTPIN           kTPIP
.endfields
���@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&���
.{CHECKENTER fKatorg2
.}
.}
.fields
 If(AllKontr=2  ,'�⮣� �� ��㯯� ����ࠣ��⮢:'+grKontrName,
   If(AllKontr=0,'�⮣� �� �ᥬ ��࠭�� ����ࠣ��⠬:',
   If(AllKontr=1,'�⮣� �� �ᥬ ����ࠣ��⠬:','')))
                                                 oSumDog         oZPIN            oZPIP       P2oPO1+oNPOI        P2oPO2           P2oPO3          oTPIN            oTPIP
.endfields
�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�&'&&&&&&&&&&.&&�
�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.endform