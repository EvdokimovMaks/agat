#ifndef __SiLogFuncs_inc___
#define __SiLogFuncs_inc___

// �㭪樨 ��⮪���஢���� ������⥪� SiLog.dll ࠡ���� ��稭�� � �⫠��� 5.5.20
// ��� ��⨢�樨 � SmartInspect Configuretion Builder �㦭� ᮧ���� 䠩� <���䨣���� ��⮪���>.sic
// ��⥬ � .cfg �����⨪� �������� ࠧ��� � ��뫪�� �� ��� 䠩�
//   {SmartInspect}
//     ConfigFile = <����>\<���䨣���� ��⮪���>.sic

#doc
  <brief>
    ����� ���������᪮�� ��⮪���.
  </brief>
#end
procedure SiLogDll_Enable; external 'SILog.dll#SiEnable';

#doc
  <brief>
    �몫�祭�� ���������᪮�� ��⮪���.
  </brief>
#end
procedure SiLogDll_Disable; external 'SILog.dll#SiDisable';

#doc
  <brief>
    ����頥� ����祭 �� ���������᪨� ��⮪��.
  </brief>
#end
function  SiLogDll_GetEnabled: Boolean; external 'SILog.dll#SiGetEnabled';
#doc
  <brief>
    ������� � ���������᪨� ��⮪�� ���⮥ ᮮ�饭��.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>ATitle</code> - �����㥬�� ᮮ�饭��.</li>
  </ul>
#end
procedure SiLogDll_LogMessage(ATitle: String); external 'SILog.dll#SiLogMessage';

#doc
  <brief>
    ������� � ���������᪨� ��⮪�� �।�०���饥 ᮮ�饭��.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>ATitle</code> - �����㥬�� ᮮ�饭��.</li>
  </ul>
#end
procedure SiLogDll_LogWarning(ATitle: String); external 'SILog.dll#SiLogWarning';

#doc
  <brief>
    ������� � ���������᪨� ��⮪�� ᮮ�饭�� �� �訡��.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>ATitle</code> - �����㥬�� ᮮ�饭��.</li>
  </ul>
#end
procedure SiLogDll_LogError(ATitle: String); external 'SILog.dll#SiLogError';

#doc
  <brief>
    ������� � ���������᪨� ��⮪�� ᮮ�饭�� �� �᪫��⥫쭮� ���樨.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>ATitle</code> - �����㥬�� ᮮ�饭��.</li>
  </ul>
#end
procedure SiLogDll_LogFatal(ATitle: String); external 'SILog.dll#SiLogFatal';

#doc
  <brief>
    ������� � ���������᪨� ��⮪�� ᮮ�饭�� �� �⫠���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>ATitle</code> - �����㥬�� ᮮ�饭��.</li>
  </ul>
#end
procedure SiLogDll_LogDebug(ATitle: String); external 'SILog.dll#SiLogDebug';

#doc
  <brief>
    ������� � ���������᪨� ��⮪�� ᮮ�饭�� � ���஡������.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>ATitle</code> - �����㥬�� ᮮ�饭��.</li>
  </ul>
#end
procedure SiLogDll_LogVerbose(ATitle: String); external 'SILog.dll#SiLogVerbose';

#doc
  <brief>
    ������� � ���������᪨� ��⮪�� 㢥�������� � ⮬ �� �ந������ �室 � �㭪��.
  </brief>

  <p>
    ������� � ���������᪨� ��⮪�� 㢥�������� � ⮬ �� �ந������ �室 � �㭪��.<br>
    �� ����� � ���������᪨� ��⮪�� �����ন������ ������ �㭪�� � �㭪樨.<br>
    �������� ����ந�� �⥪ �맮�� ��⮤��, �� �������� � ��������樨 �訡�� � ��室��� ����.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>AMethodName</code> - ��� �����㥬�� �㭪樨.</li>
  </ul>

  <h3>����砭��</h3>
  <p>
    �㭪�� ��ୠ� � �㭪樨 LeaveMethod.
  </p>
#end
procedure SiLogDll_EnterMethod(AMethodName: String); external 'SILog.dll#SiEnterMethod';
#doc
  <brief>
    ������� � ���������᪨� ��⮪�� 㢥�������� � ⮬ �� �ந������ ��室 �� �㭪樨.
  </brief>

  <p>
    ������� � ���������᪨� ��⮪�� 㢥�������� � ⮬ �� �ந������ ��室 �� �㭪樨.<br>
    �� ����� � ���������᪨� ��⮪�� �����ন������ ������ �㭪�� � �㭪樨.<br>
    �������� ����ந�� �⥪ �맮�� ��⮤��, �� �������� � ��������樨 �訡�� � ��室��� ����.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>AMethodName</code> - ��� �����㥬�� �㭪樨.</li>
  </ul>

  <h3>����砭��</h3>
  <p>
    �㭪�� ��ୠ� � �㭪樨 EnterMethod.
  </p>
#end
procedure SiLogDll_LeaveMethod(AMethodName: String); external 'SILog.dll#SiLeaveMethod';
#doc
  <brief>
    ������� ⠡���� ��� �࣠����樨 ���������᪨� ������.
  </brief>

  <p>
    ������� ⠡���� ��� �࣠����樨 ���������᪨� ������.<br>
    �����頥� 㪠��⥫� �� ᮧ������ ⠡����.<br>
    ������⢮ ������� � �� ��������� �������� ��⥬ ����᫥��� �१ ࠧ����⥫�.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>Headers</code> - ����᫥��� ���������� �������.</li>
  </ul>
#end
function SiLogDll_ContextTableCreate(Headers: String): longint; external 'SILog.dll#SiContextTableCreate';
#doc
  <brief>
    �������� ����� ��ப� � ⠡���� ���������᪨� ������ �� 㪠��⥫�.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>hTable</code> - ⠡��� � ������ �㤥� ��������� ��ப�.</li>
  </ul>
#end
procedure SiLogDll_ContextTableBeginRow(hTable: longint); external 'SILog.dll#SiContextTableBeginRow';
#doc
  <brief>
    �����뢠�� � ��ப���� ���祭�� � ⥪���� �祩�� ⥪�饩 ��ப� ⠡����.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>hTable</code> - ⠡��� � ������ �㤥� ��������� ���祭��;</li>
    <li><code>AEntry</code> - ������塞�� ���祭��.</li>
  </ul>
#end
procedure SiLogDll_ContextTableAddRowEntry(hTable: longint, AEntry: String); external 'SILog.dll#SiContextTableAddRowEntry';
#doc
  <brief>
    ����뢠�� ⥪���� ��ப� � ⠡���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>hTable</code> - ⠡��� � ���ன �㤥� ������ ��ப�.</li>
  </ul>
#end
procedure SiLogDll_ContextTableEndRow(hTable: longint); external 'SILog.dll#SiContextTableEndRow';
#doc
  <brief>
    ���������� � ���������᪨� ��⮪�� ⠡���� � ����묨.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>hTable</code> - ������塞�� ⠡���;</li>
    <li><code>AComment</code> - �������਩ ��� ⠡����.</li>
  </ul>
#end
procedure SiLogDll_ContextLog(hContext: longint, AComment: String); external 'SILog.dll#SiContextLog';
#doc
  <brief>
    ��⠭�������� ���䨣��樮��� 䠩�� ��� ���������᪮�� ��⮪���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>AConfigFileName</code> - ���� � ���䨣��樮����� 䠩��.</li>
  </ul>
#end
procedure SiLogDll_SetConfigFileName(AConfigFileName: String); external 'SILog.dll#SiSetConfigFileName';
#doc
  <brief>
    ��⠭�������� ��ப� ������祭�� � ���������᪮�� ��⮪���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>AConnections</code> - ��ப� ������祭��.</li>
  </ul>
#end
procedure SiLogDll_SetConnections(AConnections: String); external 'SILog.dll#SiSetConnections';
#doc
  <brief>
    ��⠭�������� ��᮪�� �筮��� �६���(����ᥪ㭤�).
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>Enabled</code> - ०�� ��᮪�� �筮��.</li>
  </ul>
#end
procedure SiLogDll_SetHighResolution(Enabled: Boolean); external 'SILog.dll#SiSetHighResolution';

//procedure SiLogDll_LogSqlStr(ATitle: String, hStr: longint);                        external 'SILog.dll#SILOGSQLSTR';
#doc
  <brief>
    �����頥� ᮤ�ন��� ���� ������ � ���� ��ப�.
  </brief>
#end
function SimpleClipboardToString: String; external 'SILog.dll#SimpleClipboardToString';
#doc
  <brief>
    ������� ��� �������� ��ப.<br>
    �����頥� 㪠��⥫� �� ��������.
  </brief>
#end
function ClipBarCodes_Create: longint; external 'SILog.dll#ClipBarCodes_Create';
#doc
  <brief>
    ����뢠�� ������ ⥪�饣� ������� � �㫥��� ���祭��.<br>
    ����뢠�� ⥪�騩 ������� � ���祭�� nil.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipBarCodes</code> - 㪠��⥫� �� ��� ��������.</li>
  </ul>
#end
procedure ClipBarCodes_Restart(aClipBarCodes: longint); external 'SILog.dll#ClipBarCodes_Restart';
#doc
  <brief>
    �����頥� ������⢮ ������⮢ � ��� ������樨.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipBarCodes</code> - 㪠��⥫� �� ��� ��������.</li>
  </ul>
#end
function ClipBarCodes_Count(aClipBarCodes: longint): longint; external 'SILog.dll#ClipBarCodes_Count';
#doc
  <brief>
    ���室�� �� ᫥���騩 ������� � ��� ������樨.<br>
    �����頥� �ᯥ譮��� ���室� �� ᫥���騩 �������.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipBarCodes</code> - 㪠��⥫� �� ��� ��������.</li>
  </ul>
#end
function ClipBarCodes_Next(aClipBarCodes: longint): boolean; external 'SILog.dll#ClipBarCodes_Next';
#doc
  <brief>
    �����頥� ���祭�� ⥪�饣� 㧫� ��� ������樨.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipBarCodes</code> - 㪠��⥫� �� ��� ��������.</li>
  </ul>
#end
function ClipBarCodes_CurrentValue(aClipBarCodes: longint): String; external 'SILog.dll#ClipBarCodes_CurrentValue';
#doc
  <brief>
    �᢮������� ��� ��������.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipBarCodes</code> - 㪠��⥫� �� ��� ��������.</li>
  </ul>
#end
procedure ClipBarCodes_Free(aClipBarCodes: longint); external 'SILog.dll#ClipBarCodes_Free';

#doc
  <brief>
    ������� ⥪�⮢� ���⥩��� ��� ࠡ��� � ���஬ ������.<br>
    �����頥� 㪠��⥫� �� ᮧ����� ���⥩���.
  </brief>
#end
function ClipboardText_Create: longint; external 'SILog.dll#ClipboardText_Create';
#doc
  <brief>
    ����頥� � ���� ������ ���祭�� �� ⥪�⮢��� ���⥩���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���.</li>
  </ul>
#end
procedure ClipboardText_Copy(aClipText: longint); external 'SILog.dll#ClipboardText_Copy';
#doc
  <brief>
    ����頥� � ⥪�⮢� ���⥩��� ���祭�� �� ���� ������.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���.</li>
  </ul>
#end
procedure ClipboardText_Paste(aClipText: longint); external 'SILog.dll#ClipboardText_Paste';
#doc
  <brief>
    ��頥� ⥪�⮢� ���⥩���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���.</li>
  </ul>
#end
procedure ClipboardText_Clear(aClipText: longint); external 'SILog.dll#ClipboardText_Clear';
#doc
  <brief>
    �������� � ⥪�⮢� ���⥩��� ��ப�.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���.</li>
    <li><code>Str</code> - ������塞�� ��ப�.</li>
  </ul>
#end
procedure ClipboardText_AddStr(aClipText: longint, Str: String); external 'SILog.dll#ClipboardText_AddStr';
#doc
  <brief>
    �����頥� ����� ���祭�� � ⥪�⮢�� ���⥩���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���.</li>
  </ul>
#end
function ClipboardText_Length(aClipText: longint): longint; external 'SILog.dll#ClipboardText_Length';
#doc
  <brief>
    �����頥� ᪮��஢����� �����ப� �� ⥪�⮢��� ���⥩���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���;</li>
    <li><code>Index</code> - ������ ��砫� ����஢���� �����ப�;</li>
    <li><code>Count</code> - ������⢮ �����㥬�� ᨬ�����.</li>
  </ul>
#end
function ClipboardText_SubStr(aClipText: longint, Index: longint, Count: longint): String; external 'SILog.dll#ClipboardText_SubStr';
#doc
  <brief>
    �᢮������� ⥪�⮢� ���⥩���.
  </brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aClipText</code> - 㪠��⥫� �� ⥪�⮢� ���⥩���;</li>
  </ul>
#end
procedure ClipboardText_Free(aClipText: longint); external 'SILog.dll#ClipboardText_Free';

#doc
  </brief>

  <p>
    ��뢠�� ������ �롮� 䠩��.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>aWildCard</code> - ��᪠.</li>
    <li><code>ATitle</code> - ��������� ����.</li>
    <li><code>InputName</code> - ��������� label.</li>
    <li><code>AOptions</code> - 䫠��
        CONST fdOkButton = 1;
              fdOpenButton    = 2;
              fdReplaceButton = 4;
              fdClearButton   = 8;
              fdHelpButton    = 16;
              fdSaveButton    = 32.</li>
    <li><code>HistoryId</code> - 䫠� hiOpenFileDialog.</li>
  </ul>
#end
function SelFileDialogVip(aWildCard : String, ATitle: String, InputName : String, AOptions: Word, HistoryId : longint,
                       var OutName : String, var OutFlags : Word): word; external 'G_Common.dll';


#end
