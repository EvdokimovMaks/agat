//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ����������⢨� � ���-�ࢨᮬ ��� "��� ��⮢-䠪���"
//------------------------------------------------------------------------------------------------------------
#ifndef _InvoiceService_inc_
#define _InvoiceService_inc_

Type
  TEStatusInfo = record
    refObj: TPtr;            // ��뫪� �� ��ꥪ�
    NumInvoice: string;      // ����� ����
    Verify: longint;         // �஢�ઠ ���;
    Status: string;          // ����� ���㬥��;
    Message: string;         // ���ଠ樮���� ᮮ�饭�� � ����� ���㬥��;
    Since: string;           // ��� ��砫� ����⢨� ����� ���㬥��;
    BeginFileStatus: string; // ��࠭���� ����� ����
  end;

  TETicket = record
    refObj: TPtr;            // ��뫪� �� ��ꥪ�
    NumInvoice: string;      // ����� ����
    Accepted: longint;       // �஢�ઠ ���
    Message: string;         // ���ଠ樮���� ᮮ�饭�� � ����� ���㬥��
  end;

  TEDocList = record
    refObj: TPtr;            // ��뫪� �� ��ꥪ�
    Verify: longint;         // �஢�ઠ ���; �஢�ઠ ���;
    ToDate: _datetime;       // ��� �믮������ ����� ���᪠;
    lCount: longint;         // ������⢮ ��������� ���㬥�⮢;
  end;

  TEDocument = record
    refObj: TPtr;            // ��뫪� �� ��ꥪ�
    NumInvoice: string;      // ����� ����
    LoadFileName: string;    // ����㧪� ����
    SignCount: longint;      // ����祭�� ������⢠ ��� � ���㬥��;
    VerifySign: longint;     // �஢�ઠ ��� ���㬥��.
    FileInvoice: string;     // ��࠭���� ����
    FileInvoiceSign: string; // ��࠭���� ���� � ���
    SignDate: string;        // ��� �����ᠭ�� ����
    SignName: string;        // ������������ �����ᠭ�
    NotSign: boolean;        // ���㬥�� �� ᮤ�ন� ���
    FileXsd: string;         // ���� � xsd-�奬�
    FileTicket: string;      // �室��� ���⠭�� �� ��ࠢ��
    FirstSign: _datetime;    // ��� ��ࢮ� ������
  end;

#endif // _InvoiceService_inc_
