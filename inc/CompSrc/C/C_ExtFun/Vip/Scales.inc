// com-драйвер
procedure InitScales05;                      external 'scales05.dll';
procedure FreeScales05;                      external 'scales05.dll';
function  isInitScales05: boolean;           external 'scales05.dll';
function  GetWeight05(word): integer;        external 'scales05.dll';
function  GetState05 (word): word;           external 'scales05.dll';
function  Key05: longint;                    external 'scales05.dll';
function  UnLock05 (longint): longint;       external 'scales05.dll';
function  IsInit05: boolean;                 external 'scales05.dll';

// com-порт (Кричевцементошифер)
function InitScales02(byte, byte): word;     external 'G_Weight.dll';
function GetWeight02(word): integer;         external 'G_Weight.dll';
function GetState02(word): word;             external 'G_Weight.dll';
