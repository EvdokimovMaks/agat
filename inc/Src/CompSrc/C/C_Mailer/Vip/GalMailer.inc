// ����� ��� ��ᮥ���塞�� 䠩���
const
  MAPI_OLE = 00000001h;
  MAPI_OLE_STATIC = 00000002h;
end;

// ����� ��� �����⥫�� ���쬠
const
  MAPI_ORIG = 0;  // ᮧ��⥫� ���쬠
  MAPI_TO = 1;    // �����⥫�
  MAPI_CC = 2;    // �����⥫� �����
  MAPI_BCC = 3;   // �����⥫� ���⮩ �����
end;

// ���� �����頥��� �訡��
const
  SUCCESS_SUCCESS = 0;
  MAPI_USER_ABORT = 1;
  MAPI_E_USER_ABORT = MAPI_USER_ABORT;
  MAPI_E_FAILURE = 2;
  MAPI_E_LOGON_FAILURE = 3;
  MAPI_E_LOGIN_FAILURE = MAPI_E_LOGON_FAILURE;
  MAPI_E_DISK_FULL = 4;
  MAPI_E_INSUFFICIENT_MEMORY = 5;
  MAPI_E_ACCESS_DENIED = 6;
  MAPI_E_TOO_MANY_SESSIONS = 8;
  MAPI_E_TOO_MANY_FILES = 9;
  MAPI_E_TOO_MANY_RECIPIENTS = 10;
  MAPI_E_ATTACHMENT_NOT_FOUND = 11;
  MAPI_E_ATTACHMENT_OPEN_FAILURE = 12;
  MAPI_E_ATTACHMENT_WRITE_FAILURE = 13;
  MAPI_E_UNKNOWN_RECIPIENT = 14;
  MAPI_E_BAD_RECIPTYPE = 15;
  MAPI_E_NO_MESSAGES = 16;
  MAPI_E_INVALID_MESSAGE = 17;
  MAPI_E_TEXT_TOO_LARGE = 18;
  MAPI_E_INVALID_SESSION = 19;
  MAPI_E_TYPE_NOT_SUPPORTED = 20;
  MAPI_E_AMBIGUOUS_RECIPIENT = 21;
  MAPI_E_AMBIG_RECIP = MAPI_E_AMBIGUOUS_RECIPIENT;
  MAPI_E_MESSAGE_IN_USE = 22;
  MAPI_E_NETWORK_FAILURE = 23;
  MAPI_E_INVALID_EDITFIELDS = 24;
  MAPI_E_INVALID_RECIPS = 25;
  MAPI_E_NOT_SUPPORTED = 26;
end;

// ����� ���쬠
const
  MAPI_UNREAD = 00000001h;
  MAPI_RECEIPT_REQUESTED = 00000002h;
  MAPI_SENT = 00000004h;
end;

// ����� ��� �㭪樨 LogOn 
const
  MAPI_LOGON_UI = 00000001h;                // Display logon UI
  MAPI_PASSWORD_UI = 00020000h;             // prompt for password only
  MAPI_NEW_SESSION = 00000002h;             // Don't use shared session
  MAPI_FORCE_DOWNLOAD = 00001000h;          // Get new mail before return
  MAPI_ALLOW_OTHERS = 00000008h;            // Make this a shared session
  MAPI_EXPLICIT_PROFILE = 00000010h;        // Don't use default profile
  MAPI_EXTENDED = 00000020h;                // Extended MAPI Logon
  MAPI_USE_DEFAULT = 00000040h;             // Use default profile in logon
  MAPI_SIMPLE_DEFAULT = MAPI_LOGON_UI or MAPI_FORCE_DOWNLOAD or MAPI_ALLOW_OTHERS;
  MAPI_SIMPLE_EXPLICIT = MAPI_NEW_SESSION or MAPI_FORCE_DOWNLOAD or MAPI_EXPLICIT_PROFILE;

// ����� ��� �㭪樨 MAPILogoff
  MAPI_LOGOFF_SHARED = 00000001h;           // Close all shared sessions
  MAPI_LOGOFF_UI = 00000002h;               // It's OK to present UI

// ����� ��� �㭪樨 MAPISendMail
// MAPI_LOGON_UI        00000001h     Display logon UI
// MAPI_NEW_SESSION     00000002h     Don't use shared session
  MAPI_DIALOG = 00000008h;                  // Display a send note UI
// MAPI_USE_DEFAULT     00000040h     Use default profile in logon

// ����� ��� �㭪樨 MAPIFindNext
  MAPI_UNREAD_ONLY = 00000020h;             // Only unread messages
  MAPI_GUARANTEE_FIFO = 00000100h;          // use date order
  MAPI_LONG_MSGID = 00004000h;              // allow 512 char returned ID

//����� ��� �㭪樨 MAPIReadMail
  MAPI_PEEK = 00000080h;                    // Do not mark as read.
  MAPI_SUPPRESS_ATTACH = 00000800h;         // header + body, no files
  MAPI_ENVELOPE_ONLY = 00000040h;           // Only header information
  MAPI_BODY_AS_FILE = 00000200h;

// ����� ��� �㭪樨 MAPISaveMail
// MAPI_LOGON_UI        00000001h     Display logon UI
// MAPI_NEW_SESSION     00000002h     Don't use shared session
// MAPI_LONG_MSGID      00004000h     allow 512 char returned ID

// ����� ��� �㭪樨 MAPIAddress
// MAPI_LOGON_UI        00000001h     Display logon UI
// MAPI_NEW_SESSION     00000002h     Don't use shared session

// ����� ��� �㭪樨 MAPIDetails
// MAPI_LOGON_UI        00000001h     Display logon UI
// MAPI_NEW_SESSION     00000002h     Don't use shared session
  MAPI_AB_NOMODIFY = 00000400h;             // Don't allow mods of AB entries

// ����� ��� �㭪樨 MAPIResolveName
// MAPI_LOGON_UI        00000001h     Display logon UI
// MAPI_NEW_SESSION     00000002h     Don't use shared session
// MAPI_DIALOG          00000008h     Prompt for choices if ambiguous
// MAPI_AB_NOMODIFY     00000400h     Don't allow mods of AB entries
end;