//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� ERP 8.1 - ��ࠢ����� ���ᮭ����
// ����⠭�� ��� ⠡���� InfPsn3, ��뢠�饩 �᫮��� ��㤠 �� ࠡ�祬 ���� 
// � �����祭�ﬨ � �⠢���� ��
//------------------------------------------------------------------------------

#ifndef _APPOINTKPS_INC_INCLUDED_
#define _APPOINTKPS_INC_INCLUDED_

const
  // ����⠭�� ���祭�� ���� InfPsn3.LastUser, ��।����騥 �� ����� ⠡���� ��뫠���� ���� InfPsn3.cPers
  cgKpsType_Staff = 1;
  cgKpsType_Appoint = 2;
  cgKpsType_TarStav = 11; // ���� ��������, ��⥣�ਨ � ��䭮� �⠢��

  // ����⠭�� ��� ���祭�� ���� InfPsn3.LastTime - �ਧ��� �᭮���� �᫮��� ��㤠
  cgKpsKind_Main    = From_Sec100(1);  // �᭮���
  cgKpsKind_Vacant  = From_Sec100(0);  // �� �᭮���

  cgsStaff   = s20(cgKpsType_Staff);   // InfPsn3.cPers -> StaffStruct.NRec
  cgsAppoint = s20(cgKpsType_Appoint); // InfPsn3.cPers -> Appointments.NRec
  cgsTarStav = s20(cgKpsType_TarStav); // InfPsn3.cRef2 -> KlKatego.NRec, InfPsn3.cRef3 -> TarStav.NRec

  // ����⠭�� ��� ���祭�� ���� "���" Advises.LastDate
  cgSex_Male    = date(3, 1, 2010);  // ��᪮� ���
  cgSex_Female  = date(2, 1, 2010);  // ���᪨� ���
  cgSex_Unknown = date(1, 1, 2010);  // ����।������ ���
end;

#end
