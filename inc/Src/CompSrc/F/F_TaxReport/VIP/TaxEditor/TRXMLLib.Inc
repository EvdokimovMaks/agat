//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ��ࢨ᭠� ������⥪� : "����� � XML"
//------------------------------------------------------------------------------

#ifndef __TRXMLLib_Inc__
#define __TRXMLLib_Inc__

const
  // ⨯� ������ XSD �஢�ન
  lc_XSDProcType_Not    = 0;  // �� ��।����
  lc_XSDProcType_MSXML  = 1;  // MSXML
  lc_XSDProcType_FNSRU  = 2;  // ��� ��
  lc_XSDProcType_TESTER = 3;  // Tester
end;

const
  lc_sGalFNSFileName = 'GalFNS.exe';  // ��� 䠩�� �������᪮�� ������ �஢�ન
  lc_sTesterFileName = 'tester.exe';  // ��� 䠩�� Tester
end;

const
  lc_Pref_MSXML = 'XSD';  // ��䨪� ᮮ�饭�� ��� �஢�ન � �ᯮ�짮������ �������᪮�� ������ �஢�ન (�� XSD)
  lc_Pref_FNSRU = '���';  // ��䨪� ᮮ�饭�� ��� �஢�ન � �ᯮ�짮������ ��� ��
end;

#endif//__TRXMLLib_Inc__
