//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ������ ��쥪�: "��⮪�� ������/��ᯮ��"
//------------------------------------------------------------------------------

#ifndef __FpDocIEPackadge_Inc__
#define __FpDocIEPackadge_Inc__

Const
  cgFpDocImp_TiDk = 480;
  cgFpDocExp_TiDk = 481;
end;

Const
  cgFpDocIEPackadgeState_Er = 0;
  cgFpDocIEPackadgeState_Ok = 1;

  // ��⠭���� �ਮ��⮢ EMail
  #include EMail.inc          // "���譨�" ����⠭��
  lcFpDocEMailPriority_Normal  = 0;
  lcFpDocEMailPriority_High    = 1;
  lcFpDocEMailPriority_Low     = 2;
end;

#endif//__FpDocIEPackadge_Inc__
