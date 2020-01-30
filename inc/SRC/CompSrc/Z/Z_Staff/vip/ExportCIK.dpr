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
    192{А}, 193{Б}, 194{В}, 195{Г}, 196{Д}, 197{Е}, 168{Ё}, 198{Ж}, 199{З}, 200{И},
    201{Й}, 202{К}, 203{Л}, 204{М}, 205{Н}, 206{О}, 207{П}, 208{Р}, 209{С}, 210{Т},
    211{У}, 212{Ф}, 213{Х}, 214{Ц}, 215{Ч}, 216{Ш}, 217{Щ}, 218{Ъ}, 219{Ы}, 220{Ь},
    221{Э}, 222{Ю}, 223{Я}, 224{а}, 225{б}, 226{в}, 227{г}, 228{д}, 229{е}, 184{ё},
    230{ж}, 231{з}, 232{и}, 233{й}, 234{к}, 235{л}, 236{м}, 237{н}, 238{о}, 239{п},
    240{р}, 241{с}, 242{т}, 243{у}, 244{ф}, 245{х}, 246{ц}, 247{ч}, 248{ш}, 249{щ},
    250{ъ}, 251{ы}, 252{ь}, 253{э}, 254{ю}, 255{я}, 176{°}, 169{№}, 160{ }
  );

  function TestRic(strRIC: PChar): Integer; stdcall;
    external 'TSRIC321.dll' name 'TestRic';

  function TestData(strFIO, strRIC: PChar): Integer; stdcall;
    external 'TSRIC321.dll' name 'TestData';


{$R *.res}
// *****************************************************************************
// функция перевода строки (Str) из одной кодировки (CharsFrom) в другую (CharsTo) 
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
// перевод строки из досовской кодировки в 1251
Function DocBasFn866to1251 (Str: string): string;
begin
  Result := FromTo(Str, Chars866, Chars1251);
end;
// *****************************************************************************
// Функция генерации СИКа
// Параметры:
//  sFIO -- строка типа ФИО+DDMMYYYY
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
// функция проверки СИКа
// Параметры:
//  sFIO -- строка типа ФИО+DDMMYYYY
//   sCIK -- проверяемый СИК
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
 