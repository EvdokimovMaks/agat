//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// �᭮��� ����⠭�� ��� ࠡ��� � ���㬥�⠬� ��� ��� ��� (��������)
//******************************************************************************

const
  FLT_DATE       = 0001h;
  FLT_STATUS     = 0002h;
  FLT_AGENT      = 0004h;
  FLT_DOC        = 0008h;
  FLT_DOC_TYPE   = 0010h;
  FLT_NOT_PAY    = 0020h;
  FLT_CURRENCY   = 0040h;

  ID_FILT_BKPR : word = 65501;
  ID_FILT_BKZK : word = 65502;
  ID_FILT_JBUY : word = 65503;
  ID_FILT_JSELL: word = 65504;
  ID_FILT_AVREG: word = 65505;
  ID_FILT_UKS  : word = 65506;
  ID_FILT_EXPSF: word = 65507;
  ID_REESTR_UKS: word = 65508;
  ID_DELAYEDUKS_REG: word = 65509;
  ID_DELAYEDUKS_STORNO: word = 65510;
  ID_FILT_EXPSF_BEL : Word = 65511;
end;