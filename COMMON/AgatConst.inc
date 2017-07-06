//�������� ����⠭�� ����.
//����室��� ��७��� � �� ����⠭�� ���� �� ��� �������� ��ࠡ�⮪,
//�.�. � ��� ������ ���� � � �� ����⠭�� �� ��᪮�쪮 ࠧ

const
  //���� ���짮��⥫�᪨� �����⨪
  KODGRKAU_RS                                   : word = 10545; //2015 ����� ���⭮�� ���
  KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU : word = 10879; //���� ��室�� �ਪ��� �� �������஢��
  KODGRKAU_KORPORATIVNIE_KARTI                  : word = 10880; //��௮�⨢�� �����
  KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA           : word = 10695; //����� �ᯮ�짮����� ���

  //���譨� ��ਡ��� ��� ��楢�� ��⮢
  ATTRNAM_NREC_LSCHET_KORPORATIVNAYA_KARTA : comp = 0001000000000F16h;

  //���譨� ��ਡ��� ��� �ਪ���� �� �������஢��
  ATTRNAM_NREC_PRIKAZ_ZAKAZ_ZATRAT         : comp = 0001000000000F17h; //����� ����� - ��뫪� �� ��⥬��� �����⨪� �����
  ATTRNAM_NREC_PRIKAZ_VID_RASHODOV         : comp = 0001000000000F18h; //��� ��室�� - ��뫪� �� ����. �����⨪� KODGRKAU_VID_RASHODOV_PRIKAZA_NA_KOMANDIROVKU

  //���譨� ��ਡ��� ��� ����஢�� �������஢��, ��, ���
  ATTRNAM_NREC_RASHDOC_RS_SPISANIYA               : comp = 0001000000000F19h; //������ ��� ᯨᠭ�� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_RS
  ATTRNAM_NREC_RASHDOC_REJIM_ISPOLZOVANIYA_SCHETA : comp = 0001000000000F1Ah; //����� �ᯮ�짮����� ��� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_RASHDOC_ZAKAZ_VIBITIYA             : comp = 0001000000000F1Bh; //����� ����� - ��뫪� �� ��⥬��� �����⨪� ��ꥪ�� ��ந⥫��⢠
  ATTRNAM_NREC_RASHDOC_STATYA_STRUKTURI_CENI      : comp = 0001000000000F1Ch; //����� �������� 業� - ��뫪� �� ��⥬��� �����⨪� ���� ����� ��ꥪ⮢ ��ந⥫��⢠
  ATTRNAM_NREC_RASHDOC_KONTRAGENT                 : comp = 0001000000000F1Dh; //����ࠣ��� - ��뫪� �� ��⥬��� �����⨪� �࣠����樨
  ATTRNAM_NREC_RASHDOC_DOGOVOR                    : comp = 0001000000000F1Eh; //������� ����ࠣ��� - ��뫪� �� ��⥬��� �����⨪� ��������

  //���譨� ��ਡ��� ��� ��ப ��
  ATTRNAM_NREC_SPSTEP_ZAKAZ_VIBITIYA              : comp = 0001000000000A87h; //����� ����� - ��뫪� �� ��⥬��� �����⨪� ��ꥪ�� ��ந⥫��⢠
  ATTRNAM_NREC_SPSTEP_RS_SPISANIYA                : comp = 0001000000000A86h; //������ ��� ᯨᠭ�� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_RS
  ATTRNAM_NREC_SPSTEP_REJIM_ISPOLZOVANIYA_SCHETA  : comp = 000100000000079Eh; //����� �ᯮ�짮����� ��� - ��뫪� �� ���짮��⥫���� �����⨪� KODGRKAU_REJIM_ISPOLZOVANIYA_SCHETA
  ATTRNAM_NREC_SPSTEP_STATIA_VIBITIYA             : comp = 0001000000000A88h; //����� �������� 業� �� ������ ����� - ��뫪� �� ��⥬��� �����⨪� 73 - ���� ����� ��ꥪ⮢ ��ந⥫��⢠
  ATTRNAM_NREC_SPSTEP_RASHDOC_NREC                : comp = 0001000000000F1Fh; //���Rashdoc.nrec - ��ப�, nrec �� ������ ����஢�� �ਪ���, �易���� � ����樥� ��

  //�।��।������ ��㣨
  KATUSL_NREC_SUTOCHNIE : comp = 00010000000003FEh; //�����

  //楫���� ���
  SALDTUNE_NREC_DEFAULT : comp = 0001000000000001h; //����ன�� 楫����� ��� �� 㬮�砭��

  //������ ��
  KATNOTES_NREC_BASEDOC_OFORML : comp = 40009D44C1790C6Bh; //��ଫ塞�
  KATNOTES_NREC_BASEDOC_ISPOLN : comp = 400056A46A9AD669h; //�ᯮ��塞�
  KATNOTES_NREC_BASEDOC_OPLACH : comp = 0001000000000077h; //����祭
  KATNOTES_NREC_BASEDOC_REESTR : comp = 000100000000007Eh; //� ॥���
  KATNOTES_NREC_BASEDOC_OTLOJ  : comp = 0001000000000150h; //�⫮���
  KATNOTES_NREC_BASEDOC_ZAKR   : comp = 4000485AB57C8F9Dh; //�������

end;