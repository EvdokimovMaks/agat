//�������� ����⠭�� ����.
//����室��� ��७��� � �� ����⠭�� ���� �� ��� �������� ��ࠡ�⮪,
//�.�. � ��� ������ ���� � � �� ����⠭�� �� ��᪮�쪮 ࠧ

const
  //���� ���짮��⥫�᪨� �����⨪
  KODGRKAU_RS                                   : word = 10545; //2015 ����� ���⭮�� ���
  KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU : word = 10879; //���� ��室�� �ਪ��� �� �������஢��
  KODGRKAU_KORPORATIVNIE_KARTI                  : word = 10880; //��௮�⨢�� �����
  KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA           : word = 10695; //����� �ᯮ�짮����� ���
  KODGRKAU_IGK                                  : word = 10527; //2015 �����䨪��� ���㤠��⢥����� ����ࠪ�
  KODGRKAU_PODGR                                : word = 10057; //�����㯯� ���ᮭ��� (���/���/...)
  KODGRKAU_CATEG                                : word = 10036; //��⥣�ਨ (�㪮����⥫�/ᯥ樠�����/...)
  KODGRKAU_DDS                                  : word = 10009; //�����䨪��� ���
  KODGRKAU_PRINADLEJNOST_AVANSU                 : word = 10008; //���⥦�: �ਭ���������� � ������
  KODGRKAU_RBP                                  : word = 163;   //2005. ���室� ����� ��ਮ���
  KODGRKAU_SROCHNAYA_LICENSIYA                  : word = 10753; //2016 ��筠�/�����筠� ��業���

  //���譨� ��ਡ��� ��� ���⨩
  ATTRNAM_NREC_KATPARTY_GOD_VIPUSKA               : comp = 0001000000001E99h;

  //���譨� ��ਡ��� ��� ��楢�� ��⮢
  ATTRNAM_NREC_LSCHET_KORPORATIVNAYA_KARTA        : comp = 0001000000000F16h;

  //���譨� ��ਡ��� ��� �ਪ���� �� �������஢��
  ATTRNAM_NREC_PRIKAZ_ZAKAZ_ZATRAT                : comp = 0001000000000F17h; //����� ����� - ��뫪� �� ��⥬��� �����⨪� �����
  ATTRNAM_NREC_PRIKAZ_VID_RASHODOV                : comp = 0001000000000F18h; //��� ��室�� - ��뫪� �� ����. �����⨪� KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU

  //���譨� ��ਡ��� ��� ����஢�� �������஢��, ��, ���
  ATTRNAM_NREC_RASHDOC_RS_SPISANIYA               : comp = 0001000000000F19h; //������ ��� ᯨᠭ�� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_RS
  ATTRNAM_NREC_RASHDOC_REJIM_ISPOLZOVANIYA_SCHETA : comp = 0001000000000F1Ah; //����� �ᯮ�짮����� ��� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_RASHDOC_ZAKAZ_VIBITIYA             : comp = 0001000000000F1Bh; //����� ����� - ��뫪� �� ��⥬��� �����⨪� ��ꥪ�� ��ந⥫��⢠
  ATTRNAM_NREC_RASHDOC_STATYA_STRUKTURI_CENI      : comp = 0001000000000F1Ch; //����� �������� 業� - ��뫪� �� ��⥬��� �����⨪� ���� ����� ��ꥪ⮢ ��ந⥫��⢠
  ATTRNAM_NREC_RASHDOC_KONTRAGENT                 : comp = 0001000000000F1Dh; //����ࠣ��� - ��뫪� �� ��⥬��� �����⨪� �࣠����樨
  ATTRNAM_NREC_RASHDOC_DOGOVOR                    : comp = 0001000000000F1Eh; //������� ����ࠣ��� - ��뫪� �� ��⥬��� �����⨪� ��������

  //���譨� ��ਡ��� ��� �࣠����権
  ATTRNAM_NREC_KATORG_MSP                         : comp = 00010000000014B9h; //��ꥪ� ������ � �।���� ������ (����� � �।��� �।�ਭ���⥫��⢮ ���) - ����⢥���� �᫮ 1 - ���

  //���譨� ��ਡ��� ��� �������
  ATTRNAM_NREC_DOGOVOR_STZ                        : comp = 00010000000000B3h; //����� ��室�� (�������᪨�, ���������) - ��뫪� �� ���짮��⥫���� �����⨪�
  ATTRNAM_NREC_DOGOVOR_ZAKAZ                      : comp = 00010000000000ABh; //����� ������ - ��뫪� �� ��ꥪ� ��ந⥫��⢠

  //���譨� ��ਡ��� ��� ��
  ATTRNAM_NREC_BASEDOC_ISPOLNITEL_DOGOVORA        : comp = 000100000000005Bh; //�ᯮ���⥫� ������� - ��뫪� �� ���ࠧ�������
  ATTRNAM_NREC_BASEDOC_DDS                        : comp = 000100000000008Fh; //����� ��� - ��뫪� �� ����. �����⨪� "�����䨪��� ���"
  ATTRNAM_NREC_BASEDOC_AVANS                      : comp = 000100000000008Dh; //�����/��. ���� - ��뫪� �� ����. �����⨪� "���⥦�: �ਭ���������� � ������"
  ATTRNAM_NREC_BASEDOC_NAZNPL                     : comp = 000100000000010Dh; //�����祭�� ���⥦� - ��ப�

  //���譨� ��ਡ��� ��� ��ப ��
  ATTRNAM_NREC_SPSTEP_ZAKAZ_VIBITIYA              : comp = 0001000000000A87h; //����� ����� - ��뫪� �� ��⥬��� �����⨪� ��ꥪ�� ��ந⥫��⢠
  ATTRNAM_NREC_SPSTEP_RS_SPISANIYA                : comp = 0001000000000A86h; //������ ��� ᯨᠭ�� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_RS
  ATTRNAM_NREC_SPSTEP_REJIM_ISPOLZOVANIYA_SCHETA  : comp = 000100000000079Eh; //����� �ᯮ�짮����� ��� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_SPSTEP_STATIA_VIBITIYA             : comp = 0001000000000A88h; //����� �������� 業� �� ������ ����� - ��뫪� �� ��⥬��� �����⨪� 73 - ���� ����� ��ꥪ⮢ ��ந⥫��⢠
  ATTRNAM_NREC_SPSTEP_RASHDOC_NREC                : comp = 0001000000000F1Fh; //���Rashdoc.nrec - ��ப�, nrec �� ������ ����஢�� �ਪ���, �易���� � ����樥� ��
  ATTRNAM_NREC_SPSTEP_VID_LICENSII                : comp = 00010000000003E3h; //_��� ��業��� - ��뫪� �� ���짮��⥫���� �����⨪� 2005. ���室� ����� ��ਮ���
  ATTRNAM_NREC_SPSTEP_SROCHNAYA_LICENSIYA         : comp = 0001000000000ADAh; //2016 ��筠�/�����筠� ��業��� - ��뫪� �� ���짮��⥫���� �����⨪� 2016 ��筠�/�����筠� ��業���
  ATTRNAM_NREC_SPSTEP_RASHIFROVKA_STZATR          : comp = 0001000000001FABh; //�����஢�� ���� ����� - ��뫪� �� ���짮��⥫���� �����⨪� �����஢�� ���� �����

  //���譨� ��ਡ��� ���⥦��� ���㬥�⮢
  ATTRNAM_NREC_PLPOR_NOMER_V_BANKE                : comp = 00010000000014D2h; //������㬥�⠂����� - �� ������ ��室��� ���⥦�� �� ������-����� �� ��ᢠ������� ᢮� �����.
                                                                              //��� ��宦����� ᮮ⢥��⢨� � ���㬥�⮬ ����� � �⮬ ��ਡ�� �࠭���� ������᪨� ����� ���㬥��
  ATTRNAM_NREC_PLPOR_REJIM_ISPOLZOVANIYA_SCHETA   : comp = 000100000000077Ah; //����� �ᯮ�짮����� ��� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_PLPOR_DDS                          : comp = 0001000000000090h; //����� ���

  //���譨� ��ਡ��� ���
  ATTRNAM_NREC_CLAIM_TU                           : comp = 0001000000000421h; //��孨�᪨� �᫮��� - ��ப� � �������ਥ� � ����樨 ���

  //���譨� ��ਡ��� ���
  ATTRNAM_NREC_NALREGDC_KOLLIC                    : comp = 0001000000000A85h; //������⢮ ��業���
  ATTRNAM_NREC_NALREGDC_SRBESSR                   : comp = 0001000000000A4Ah; //��筠�/�����筠� ��業���
  ATTRNAM_NREC_NALREGDC_RBP                       : comp = 0001000000001674h; //������������ ��室�

  //���譨� ��ਡ��� ��ꥪ⮢ ��ந⥫��⢠
  ATTRNAM_NREC_KATSTROY_IGK                       : comp = 00010000000004CCh; //�����䨪��� ���.����ࠪ�
  ATTRNAM_NREC_KATSTROY_KREDIT                    : comp = 0001000000002028h; //�।��� �����
  ATTRNAM_NREC_KATSTROY_PERSON                    : comp = 00010000000000D9h; //����㤭��

  //���譨� ��ਡ��� � ��⠫��� ������ �࣠����権
  ATTRNAM_NREC_KATBANK_IGK                        : comp = 00010000000009BFh; //�����䨪��� ���.����ࠪ�, ��뫠���� �� exclassseg

  //���譨� ��ਡ��� � ᯨ᪥ ��⥣�਩
  ATTRNAM_NREC_KLKATEGO_PODGR                     : comp = 0001000000001B5Bh; //�����㯯� ���ᮭ��� - ���짮��⥫�᪠� �����⨪� KODGRKAU_PODGR
  ATTRNAM_NREC_KLKATEGO_CATEG                     : comp = 0001000000001B5Ch; //��⥣��� ���ᮭ��� - ���짮��⥫�᪠� �����⨪� KODGRKAU_CATEG

  //�।��।������ ��㣨
  KATUSL_NREC_SUTOCHNIE                           : comp = 00010000000003FEh; //�����

  //楫���� ���
  SALDTUNE_NREC_DEFAULT                           : comp = 0001000000000001h; //����ன�� 楫����� ��� �� 㬮�砭��

  //������ ��
  KATNOTES_NREC_BASEDOC_OFORML                    : comp = 40009D44C1790C6Bh; //��ଫ塞�
  KATNOTES_NREC_BASEDOC_ISPOLN                    : comp = 400056A46A9AD669h; //�ᯮ��塞�
  KATNOTES_NREC_BASEDOC_OPLACH                    : comp = 0001000000000077h; //����祭
  KATNOTES_NREC_BASEDOC_REESTR                    : comp = 000100000000007Eh; //� ॥���
  KATNOTES_NREC_BASEDOC_OTLOJ                     : comp = 0001000000000150h; //�⫮���
  KATNOTES_NREC_BASEDOC_ZAKR                      : comp = 4000485AB57C8F9Dh; //�������

  //���� ������஢
  VIDDOG_NREC_D_SCHETA_GAR_PISMA                  : comp = 0001000000000051h; //�_���, ��࠭⨩�� ���쬠 (��� �������)

  //���祭�� ���
  SPKAU_NREC_REJIM_ISPOLZOVANIYA_SCHETA_3MLN      : comp = 000100000000139Eh;  //��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
                                                                               //2.8_� ᮮ⢥�ᢨ� � ��. � �. 2 ��. 8.3 ��  � 275 ��� ������ ���� ��室�� �� �㬬� �� ����� 3 �� ( ��� -> ��騩 3 ���.)
  SPKAU_NREC_PRINADL_AVANS_AVANS                  : comp = 00010000000001DEh;  //��뫪� �� ���짮��⥫���� �����⨪� ���⥦�: �ਭ���������� � ������ = "�����"
  SPKAU_NREC_PRINADL_AVANS_OKRASCH                : comp = 00010000000001DFh;  //��뫪� �� ���짮��⥫���� �����⨪� ���⥦�: �ਭ���������� � ������ = "�����⥫�� ����"
  SPKAU_NREC_STATUS_SOGLASOVANIYA_SOGLASOVANO     : comp = 00010000000001CEh;  //��뫪� �� ���짮��⥫���� �����⨪� "������ ᮣ��ᮢ����" = "�����ᮢ���" (���� � ��)
  SPKAU_NREC_CWS_TRAVEL_HOURS                     : comp = 0001000000001AB1h;  //��뫪� �� ���짮��⥫���� �����⨪� "���� ᢮����� ���鸞" = "��ᮢ � ��� �|ࠡ�稩 ���� (�������஢��)"
  SPKAU_NREC_CWS_TRAVEL_SUM                       : comp = 0001000000001AB2h;  //��뫪� �� ���짮��⥫���� �����⨪� "���� ᢮����� ���鸞" = "����� �� �६� � ���|� ࠡ�稩 ���� (�������஢��)"
  SPKAU_NREC_CWS_TRAVEL_HOURS_WEEKEND             : comp = 0001000000001AB3h;  //��뫪� �� ���짮��⥫���� �����⨪� "���� ᢮����� ���鸞" = "��ᮢ � ��� �|��室��� ���� (�������஢��)"
  SPKAU_NREC_CWS_TRAVEL_SUM_WEEKEND               : comp = 0001000000000F58h;  //��뫪� �� ���짮��⥫���� �����⨪� "���� ᢮����� ���鸞" = "����� �� �६� � ���|� ��室��� ���� (�������஢��)"
  //����� ��⮢
  PLANSSCH_NREC_2013                              : comp = 000100000000000Eh;  //���� ��⮢ 2013 �
  PLANSSCH_NREC_TEHN                              : comp = 40017E58EB0A93F3h;  //��孨�᪨� ���� ��⮢
  //���
  cgKau_Claim       : word = 5191;  //��ப� ���
  cgKau_SrBessr     : word = 10753; //2016 ��筠�/�����筠� ��業���
  cgKau_ContractId  : word = 10527; //�����䨪��� ��᪮��ࠪ�
  cgKau_RBP         : word = 163;   //2005. ���室� ����� ��ਮ���
  cgKau_StZ2013     : word = 10016; //2013 ���� �����
  cgKau_TipOper     : word = 11273; //⨯ ����樨
  cgKau_PrinadlAvans: word = 10008; //���⥦�: �ਭ���������� � ������
  cgKau_RashStZatr  : word = 11309; //�����஢�� ���� �����
  cgKau_CWSCostItem : word = 10029; //���� ᢮����� ���鸞

  //����ன�� �����ᠭ⮢
  FEESIGNERS_CONSTREP_FINDIR_SLZAP                : word = 9091; //����ன�� �����ᠭ⮢ � ���� � �� "�����ᮢ�� ��४��. ��㦥���� ����᪠"

  //������ ����権 ���
  ClaimStateMadeoutTop       = 0001000000000043h;  //����� - ��ଫ塞�
  ClaimStateMadeout          = 00010000000000F3h;  //��ଫ���
  ClaimStateMadeoutReplacing = 00010000000000FCh;  //���������
  ClaimStateAcceptTop        = 0001000000000044h;  //����� - �ᯮ��塞�
  ClaimStateAccept           = 00010000000000F8h;  //�ਭ�� � �ᯮ������
  ClaimStateAcceptReplacing  = 0001000000000119h;  //���������.�ਭ�� � �ᯮ������

  //��㯯� ��
  GROUPSCH_NREC_USERSETS     = 000100000000013Bh;  //���짮��⥫�᪨� ������

  //���� ⠡��� ᮮ⢥��⢨�
  FPKATIMP_CODE_STZ2013_STZSTROY                   : string = '20'; //�������. 2013 ���� ����� - ���� ����� ��ꥪ⮢ ��ந⥫��⢠

  STATLOG_TIPDOC_INDENT = 30000;

  //���� ����஥� � ⠡��� FormPl
  FORMPL_TYPEALG_ROWS             : word = 28000;
  FORMPL_TYPEALG_CELLSCHEMAS      : word = 28001;
  FORMPL_TYPEALG_ROWSCHEMAS       : word = 28002;
  FORMPL_TYPEALG_CHANGE_STATUS_TXO: word = 28003;

  //���� ����権
  TYPOPER_REZERV                  : comp = 000100000000186Dh;
  TYPOPER_FACT                    : comp = 000100000000186Fh;

  //���� �痢� DocRef
  DOCREF_STAFFSTRUCT              : word = 65001;
  DOCREF_STAFFSTRUCT_TYPE_PEREMESH: word = 0; //⨯ �裡 � ��⪥ - ������ ��६�饭� �� ��㣮� ��
  DOCREF_STAFFSTRUCT_TYPE_PEREDANO: word = 1; //⨯ �裡 � ��⪥ - ������ ��।��� �� ��㣮�� ���ࠧ�������
  DOCREF_STAFFSTRUCT_TYPE_PEREMESH_REPR: string = '��६�饭��';
  DOCREF_STAFFSTRUCT_TYPE_PEREDANO_REPR: string = '��।�� �� ��㣮�� ���ࠧ�������';

  WAYACCOU_CWS: comp = 0001000000000088h;


  cgAG_Report_50501: word = 50501;
end;
