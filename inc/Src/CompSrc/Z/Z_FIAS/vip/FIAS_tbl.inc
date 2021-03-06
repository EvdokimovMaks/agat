//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1 - ��ࠢ����� ���ᮭ����
// ����⠭�� �ࠢ�筨��� � ⠡��� ���� ����
//------------------------------------------------------------------------------

Const
  // ����⠭�� �ଠ⮢ �࠭���� ���� ������ ��ꥪ⮢
  cgKladrDbf = 1;
  cgFiasDbf  = 2;
  cgFiasXml  = 3;

  // ����⠭�� �ࠢ�筨��� � ⠡��� ���� ����
  cgTbl_SocrBase     = 01;
  cgTbl_CurentSt     = 02;
  cgTbl_ActStat      = 03;
  cgTbl_OperStat     = 04;
  cgTbl_CenterSt     = 05;
  cgTbl_IntvStat     = 06;
  cgTbl_HstStat      = 07;
  cgTbl_EstStat      = 08;
  cgTbl_StrStat      = 09;
  cgTbl_AddrObj      = 10;
  cgTbl_Del_AddrObj  = 11;
  cgTbl_Del_HouseInt = 12;
  cgTbl_Del_House    = 13;
  cgTbl_Del_NormDoc  = 14;
  cgTbl_HouseInt     = 15;
  cgTbl_Houses       = 16;
  cgTbl_LandMark     = 17;
  cgTbl_NDocType     = 18;
  cgTbl_NormDoc      = 19;
  cgTbl_KladrCity    = 20;
  cgTbl_KladrStreet  = 21;
  cgTbl_AltNames     = 22;

  // ����⠭�� ��� ���饭�� � ������⠬ ���ᨢ� � ���祭�ﬨ ����� �������㥬�� ����� (AddrObjXX - sTerr)
  cgFld_ACTSTATUS  = 01;
  cgFld_AOGUID     = 02;
  cgFld_AOID       = 03;
  cgFld_AOLEVEL    = 04;
  cgFld_AREACODE   = 05;
  cgFld_AUTOCODE   = 06;
  cgFld_CENTSTATUS = 07;
  cgFld_CITYCODE   = 08;
  cgFld_CODE       = 09;
  cgFld_CURRSTATUS = 10;
  cgFld_ENDDATE    = 11;
  cgFld_FORMALNAME = 12;
  cgFld_IFNSFL     = 13;
  cgFld_IFNSUL     = 14;
  cgFld_NEXTID     = 15;
  cgFld_OFFNAME    = 16;
  cgFld_OKATO      = 17;
  cgFld_OKTMO      = 18;
  cgFld_OPERSTATUS = 19;
  cgFld_PARENTGUID = 20;
  cgFld_PLACECODE  = 21;
  cgFld_PLAINCODE  = 22;
  cgFld_POSTALCODE = 23;
  cgFld_PREVID     = 24;
  cgFld_REGIONCODE = 25;
  cgFld_SHORTNAME  = 26;
  cgFld_STARTDATE  = 27;
  cgFld_STREETCODE = 28;
  cgFld_TERRIFNSFL = 29;
  cgFld_TERRIFNSUL = 30;
  cgFld_UPDATEDATE = 31;
  cgFld_CTARCODE   = 32;
  cgFld_EXTRCODE   = 33;
  cgFld_SEXTCODE   = 34;
  cgFld_LIVESTATUS = 35;
  cgFld_NORMDOC    = 36;

  cgFld_BUILDNUM   = 37;
  cgFld_ESTSTATUS  = 38;
  cgFld_HOUSEGUID  = 39;
  cgFld_HOUSENUM   = 40;
  cgFld_STATSTATUS = 41;
  cgFld_STRUCNUM   = 42;
  cgFld_STRSTATUS  = 43;
  cgFld_COUNTER    = 44;

  cgFld_IntGUID    = 45;
  cgFld_HouseIntID = 46;
  cgFld_IntEnd     = 47;
  cgFld_IntStart   = 48;
  cgFld_IntStatus  = 49;

  // ����⠭�� ��� ���饭�� � ������⠬ ���ᨢ� � ���祭�ﬨ ����� �������㥬�� ����� (HouseXX - House)
  cgFld_HOUSE_POSTAlCODE = 50;
  cgFld_HOUSE_IFNSFL     = 51;
  cgFld_HOUSE_TERRIFNSFL = 52;
  cgFld_HOUSE_IFNSUL     = 53;
  cgFld_HOUSE_TERRIFNSUL = 54;
  cgFld_HOUSE_OKATO      = 55;
  cgFld_HOUSE_OKTMO      = 56;
  cgFld_HOUSE_UPDATEDATE = 57;
  cgFld_HOUSE_HOUSENUM   = 58;
  cgFld_HOUSE_ESTSTATUS  = 59;
  cgFld_HOUSE_BUILDNUM   = 60;
  cgFld_HOUSE_STRUCNUM   = 61;
  cgFld_HOUSE_STRSTATUS  = 62;
  cgFld_HOUSE_HOUSEID    = 63;
  cgFld_HOUSE_HOUSEGUID  = 64;
  cgFld_HOUSE_AOGUID     = 65;
  cgFld_HOUSE_STARTDATE  = 66;
  cgFld_HOUSE_ENDDATE    = 67;
  cgFld_HOUSE_STATSTATUS = 68;
  cgFld_HOUSE_NORMDOC    = 69;
  cgFld_HOUSE_COUNTER    = 70;
  cgFld_HOUSE_CADNUM     = 71;
  cgFld_HOUSE_DIVTYPE    = 72;

end;
