#ifndef _MailConst_inc_INCLUDED_
#define _MailConst_inc_INCLUDED_

const
  ttEmailTemplate = 1; // ᯨ᮪ email ��� 蠡����
  ttEmailQUEUE    = 2; // ᯨ᮪ email ��� ��⮢�� ���뫪� (��� ����୮� ���뫪�)

  ttMemoTemplate     = 1; // ⥫� ���쬠 ��� 蠡����
  ttMemoQUEUE        = 2; // ⥫� ���쬠 ��� ��⮢�� ���뫪� (��� ����୮� ���뫪�)
  ttMemoQUEUEAttach  = 3; // ���ᠭ�� �訡�� �� ��ࠢ��
  ttMemoHistoryError = 5; // ���ᠭ�� �訡�� �� ��ࠢ��

  ccFictMail     = 0000800000000000h;
  ccFictTemplate = 0000800000000000h;

  ttMailQUEUEBeg = 1; // ���뫪� ��砫� ��ࠢ��
  ttMailQUEUENeedRepeat = 2; // ���뫪� 䫠� ����୮� ��ࠢ��
  ttMailQUEUEFinishWithError = 5; // ���뫪� �����襭� ��ࠢ�� �  �訡���
  ttMailQUEUEFinish = 6; // ���뫪� �����襭� �ᯥ譮

  ttMailQUEUESetupObjectWithTemplate = 10; // �� �� ���뫪� � ����ன�� �� ��魮��

  tsMailQUEUEBeg = '��ࠢ�� ����'; // ���뫪� ��砫� ��ࠢ��
  tsMailQUEUENeedRepeat = '�ॡ���� ����ୠ� ��ࠢ�� '; // ���뫪� 䫠� ����୮� ��ࠢ��
  tsMailQUEUEFinishWithError = '�����襭� � �訡����'; // ���뫪� �����襭� ��ࠢ�� �  �訡���
  tsMailQUEUEFinish = '�����襭�'; // ���뫪� �����襭� �ᯥ譮

  ttMailHistroySendFinish          = 1; // ����� �ᯥ譮
  ttMailHistroySendFinishWithError = 3; // ����� � �訡���
  tsMailHistroySendFinish = '��ࠢ�� �����襭�'; // ���뫪� ��砫� ��ࠢ��
  tsMailHistroySendFinishWithError = '�����襭� � �訡����'; // ���뫪� �����襭� ��ࠢ�� �  �訡���
end;

#endif
