  // ������� ��������
  iExAttr   :iExtAttr;
  refImpDef : ImpDefine;    // �㭪樨 ��� ������
  fun  : ieFun;             // �㭪樨 ��� ��ᯮ��-������
  m_objManipulation  : Manipulation; // ���ࠨ����� �������

  cIEHead               : Comp;
  cIELog                : Comp;
  cCurFieldNRec         : Comp;
  Radio1                : Word;
  cCurrentHeader        : Comp;    // nRec ⥪�饣� ���㬥�� - ���������
  cCurrentSpecification : Comp;    // nRec ⥪�饣� ���㬥�� - ᯥ�䨪�樨
  lDocumentsImported    : Longint; // ������⢮ ������஢����� ���㬥�⮢
  wWarningResult        : Word;    // ����� �࠭���� १���� �⢥� �� �।�०����� � ����୮� ������
  wDupWarningResult     : Word;
  wAbsWarningResult     : Word;
  wErrorResult          : Word;    // � ����� - � ����襭�� 㭨���쭮�� ���� �� ������
  wCantImportResult     : Word;    // १���� �⢥� �� ������������� �����
  hMarker               : TPtr;
  lMarker               : Longint;
//  sCurFieldName         : String;
  wErrorsCount          : word;    // ��᫮ �訡�� ��⠢�� ���㬥�⮢ � ��

  sImportField : string; // ��� ������ �������
  sImportFieldO: string; // ��� ������ �������
  sFormulaOrig : string; // ��㫠 ��� ���᫥��� �� ����

  boFpLog      : boolean; //

  hMarkerInsRecs         : TPtr;    // ��થ� ��⠢������ ����ᥩ

  bAddMC   : boolean;//ᮧ����� ��
  bNeedLog : boolean;//�뢮� �㡫���⮢ � ���

  oExtClass: iExtClass;

  wMessageError : word;

  iFileStruct : GetFieldFromFile;
