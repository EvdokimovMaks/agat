library ExportCIK;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes,
  Dialogs;

type
  TCharArray = array [1..69] of byte;

const
  Chars866  : TCharArray = (
    128,    129,    130,    131,    132,    133,    240,    134,    135,    136,
    137,    138,    139,    140,    141,    142,    143,    144,    145,    146,
    147,    148,    149,    150,    151,    152,    153,    154,    155,    156,
    157,    158,    159,    160,    161,    162,    163,    164,    165,    241,
    166,    167,    168,    169,    170,    171,    172,    173,    174,    175,
    224,    225,    226,    227,    228,    229,    230,    231,    232,    233,
    234,    235,    236,    237,    238,    239,    248,    252,    255
  );

  Chars1251 : TCharArray = (
    192{�}, 193{�}, 194{�}, 195{�}, 196{�}, 197{�}, 168{�}, 198{�}, 199{�}, 200{�},
    201{�}, 202{�}, 203{�}, 204{�}, 205{�}, 206{�}, 207{�}, 208{�}, 209{�}, 210{�},
    211{�}, 212{�}, 213{�}, 214{�}, 215{�}, 216{�}, 217{�}, 218{�}, 219{�}, 220{�},
    221{�}, 222{�}, 223{�}, 224{�}, 225{�}, 226{�}, 227{�}, 228{�}, 229{�}, 184{�},
    230{�}, 231{�}, 232{�}, 233{�}, 234{�}, 235{�}, 236{�}, 237{�}, 238{�}, 239{�},
    240{�}, 241{�}, 242{�}, 243{�}, 244{�}, 245{�}, 246{�}, 247{�}, 248{�}, 249{�},
    250{�}, 251{�}, 252{�}, 253{�}, 254{�}, 255{�}, 176{�}, 169{�}, 160{ }
  );

  function TestRic(strRIC: PChar): Integer; stdcall;
    external 'TSRIC321.dll' name 'TestRic';

  function TestData(strFIO, strRIC: PChar): Integer; stdcall;
    external 'TSRIC321.dll' name 'TestData';


{$R *.res}
// *****************************************************************************
// ������� �������� ������ (Str) �� ����� ��������� (CharsFrom) � ������ (CharsTo) 
function FromTo (Str: string; CharsFrom, CharsTo: TCharArray): string;
var
  i, j   : integer;
  CurChar: byte;
begin
  Result := '';
  for i := 1 to Length(Str) do
  begin
    CurChar := ord(Str[i]);
    for j := Low(CharsFrom) to High(CharsFrom) do
      if ( CurChar = CharsFrom[j] ) then
      begin
        CurChar := CharsTo[j];
        break;
      end;
    Result := Result + chr(CurChar);
  end;
end; {FromTo}
// *****************************************************************************
// ������� ������ �� ��������� ��������� � 1251
Function DocBasFn866to1251 (Str: string): string;
begin
  Result := FromTo(Str, Chars866, Chars1251);
end;
// *****************************************************************************
// ������� ��������� ����
// ���������:
//  sFIO -- ������ ���� ���+DDMMYYYY
function Generate_CIK(sFIO: string): string; export;
var
  F: array[0..255] of char;
  CIK: array[0..17] of char;
  DosFIO: string;
begin
  DosFIO := DocBasFn866to1251(sFIO);
  StrPCopy(F, DosFIO);
  CIK := '000000000000000T'#0;
  TestData(F, CIK);
  TestRic(CIK);
  Result := CIK;
end;
// *****************************************************************************
// ������� �������� ����
// ���������:
//  sFIO -- ������ ���� ���+DDMMYYYY
//   sCIK -- ����������� ���
function Check_CIK(sFIO, sCIK: string): boolean; export;
var
  F: array[0..255] of char;
  CIK: array[0..17] of char;
  DosFIO: string;
begin
  DosFIO := DocBasFn866to1251(sFIO);
  StrPCopy(F, DosFIO);
  CIK := '000000000000000T'#0;
  TestData(F, CIK);
  TestRic(CIK);
  Result := CIK = sCIK;
end;

exports
  Generate_CIK name 'GENERATE_CIK',
  Check_CIK name 'CHECK_CIK';

begin
end.
 