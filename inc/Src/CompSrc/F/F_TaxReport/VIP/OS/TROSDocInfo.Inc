//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ����⠭�� �㭪樮���� : "��ᮥ������� ���㬥��� ��"
//------------------------------------------------------------------------------

#ifndef __TROSDocInfo_Inc__
#define __TROSDocInfo_Inc__

const
  // ����� ���
  lc_dEmpty : date = To_Date(0,0,0);

  lc_OSDocInfo_KlsTiDK  : word = (              1516);  // KlassOS.TiDK ��� DocInfo
  lc_OSDocInfo_DocType  : word = (cgOs_15_OS mod 100);  // "��� ���㬥��"  ��� DocInfo
  lc_OSDocInfo_InfoType : word = (                 4);  // "��� ���ଠ樨" ��� DocInfo
end; // const

#endif//__TROSDocInfo_Inc__
