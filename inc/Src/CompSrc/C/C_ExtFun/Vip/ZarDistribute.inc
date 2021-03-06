//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 9.1 - ��ࠡ�⭠� ����
// ���ᠭ�� ���譨� �㭪権 ��� ��ᯥ��� �ࢥ஢ ���� ��௫���
//------------------------------------------------------------------------------

// ��ࢥ�
procedure SetAutoregParam(string, word, word);                external 'ZarDistribute.dll#SetAutoregParam';
function ZarServerStart(word, string): word;                  external 'ZarDistribute.dll#ZarServerStart';
function ZarServerStop: word;                                 external 'ZarDistribute.dll#ZarServerStop';
function GetZarQueueLen: longint;                             external 'ZarDistribute.dll#GetZarQueueLen';
function GetPayrollParam: longint;                            external 'ZarDistribute.dll#GetPayrollParam';
function GetRaznoskaBeg: string;                              external 'ZarDistribute.dll#GetRaznoskaBeg';
function GetRaznoskaEnd: string;                              external 'ZarDistribute.dll#GetRaznoskaEnd';
                                                             
// ������                                                    
const
  // ��� �ଠ� ����� �������� (wNameType), �����頥���� �㭪樥� GetZarCompName
  cgNameType_NetBIOS = 0; // ��� �����쭮�� �������� (�� 㬮�砭��)
  cgNameType_DNS     = 1; // ������ ���, ���஥ �������筮 ���������� ��������
  cgNameType_IP      = 2; // �����䨪��� �������� �� ��� IP-�����
end;
  
function GetZarCompName(wNameType: word): string;             external 'ZarDistribute.dll#GetZarCompName';
function GetZarUserName: string;                              external 'ZarDistribute.dll#GetZarUserName';
function CallZarServer(string, word, string, string): word;   external 'ZarDistribute.dll#CallZarServer';
function GetLastResponse: string;                             external 'ZarDistribute.dll#GetLastResponse';

// ��ࢥ� ��⮬���᪮� ॣ����樨
function GetStartedServCount: longint;                        external 'ZarDistribute.dll#GetStartedServCount';
function GetStartedServerName: string;                        external 'ZarDistribute.dll#GetStartedServerName';
function GetStartedServerDescr: string;                       external 'ZarDistribute.dll#GetStartedServerDescr';
function GetStartedServerPort: word;                          external 'ZarDistribute.dll#GetStartedServerPort';
function SetConnectionType(_ct: word): word;                  external 'ZarDistribute.dll#SetConnectionType';
