//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - �����⨪�
// ����⠭�� (�����, ������⠭)
//******************************************************************************

const
  csDocType: string = 'd307.00';       //��ਡ�� type ⥣� <document>
  cwDocVer  : word   = 1;               //��ਡ�� version ⥣� <document>
  csFormID  : string = '307000000016';  //����� ��� <form_307000000016>
  csPageA_ID: string = '307000000016';  //����� ��࠭��� � <page_307000000016>
  csPageB_ID: string = '307000000023';  //����� ��࠭��� � <page_307000000023>

  cwPageLevel: word = 1;
  cwRowLevel: word = 2;

  //��� ��㯯�஢�� �� ����� � ��࠭�栬
  cwgSheet: word = 1;
  cwgPageA: word = 2;
  cwgPageB: word = 3;
end;

#define UTF_8 'UTF-8'         //����஢�� UTF-8
#define CP866 'CP866'         //DOS ����஢�� 866
#define cwRowsOnPage 10       //�᫮ ��ப �� ��࠭��

//��ࠬ���� �ନ஢���� ���� (��� DSK)
#define DSK_DSTART    'kzree307_dstart'
#define DSK_DEND      'kzree307_dend'
#define DSK_WREESTR   'kzree307_wreestr'
#define DSK_CODEPAGE  'kzree307_codepage'
#define DSK_ZEROPRINT 'kzree307_zeroprint'

//�뢮� �ᥫ �㦭�� �����
#declare dbl_(dbl_, len_)
  trim(string(round(#dbl_, 0), #len_, 0))
#end

//�뢮� ��ப �㦭�� ����� ��� ������ ��ப
#declare str_(s_, len_, ch_)
  if (trim(#s_) = '', '', LPadCh(SubStr(#s_, 1, #len_), #ch_, #len_))
#end

//�뢮� ��� ��� ������ ��ப
#declare Date_(d_)
  if (longint(#d_) = 0, '', DateToStr(#d_, 'DD.MM.YYYY'))
#end

//�������� ������ �� �६����� ⠡����
#declare insertRecord(wGr, n, s1, s2, s3, c, cGr)
  ClearBuffer(tnsSfReestr);
  sSfReestr.wGroup := #wGr;
  sSfReestr.npp   := #n;
  sSfReestr.sum1  := #s1;
  sSfReestr.sum2  := #s2;
  sSfReestr.sum3  := #s3;
  sSfReestr.cSf   := #c;
  sSfReestr.cGroup := #cGr;
  if (insert current sSfReestr <> tsOk) {}
#end

//���������� �⮣���� �㬬
#declare updateRecord(s1, s2, s3)
  sSfReestr.sum1  := Round(sSfReestr.sum1, 0) + #s1;
  sSfReestr.sum2  := Round(sSfReestr.sum2, 0) + #s2;
  sSfReestr.sum3  := Round(sSfReestr.sum3, 0) + #s3;
  if (update current sSfReestr <> tsOk) {}
#end
