//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - �����⨪�
// ����ன�� ᮮ⢥��⢨� ����� ����
//------------------------------------------------------------------------------
#ifndef __TuneUDR_inc__
#define __TuneUDR_inc__

const
  so_Template   = 1; // 蠡���� ����
  so_TuneImport = 2; // ����ன�� ������

  // ResWord
  ty_Const      = 0; // ����⠭�
  ty_Atrib      = 1; // ���譨� ��ਡ��
  ty_Field      = 2; // ���� ⠡����
  ty_AutoDetect = 3; // ��⮬���᪮� ��।������ ���� �� ��㣨� ����

  // Dogovor
  fd_Dogovor_dBeg         =  0; // ��� ��砫� ����⢨� ������� (Dogovor.dBeg)
  fd_Dogovor_dDoc         =  1; // ��� �����祭�� ������� (Dogovor.dDoc)
  fd_Dogovor_dEnd         =  2; // ��� ����砭�� ����⢨� ������� (Dogovor.dEnd)
  fd_Dogovor_dInput       =  3; // ��� ����� ���㬥�� (Dogovor.dInput)
  fd_Dogovor_dRaschet     =  4; // ��� �஢������ ���������⮢ (Dogovor.dRaschet)
  fd_Dogovor_dValCurse    =  5; // ��� ���� ������ (Dogovor.dValCurse)
  fd_Dogovor_NoDoc        =  6; // ����� ���㬥�� <����७���> (Dogovor.NoDoc)
  fd_Dogovor_NoDoc_Ext    =  7; // ����� ���㬥�� <���譨�> (Dogovor.NoDoc_Ext)
  fd_Dogovor_ShipAddTerms =  8; // �������⥫�� �᫮��� ���㧪� (Dogovor.ShipAddTerms)
  fd_Dogovor_Name         =  9; // ���짮��⥫�᪮� ������������ (Dogovor.Name)
  // KatSopr
  fd_KatSopr_Name         = 20; // ������������ ��������� (KatSopr.Name)
  fd_KatSopr_dPrice       = 21; // ��� ���� 業 (KatSopr.dPrice)
  fd_KatSopr_nDover       = 22; // ����� ����७���� (KatSopr.nDover)
  fd_KatSopr_dDover       = 23; // ��� ����७���� (KatSopr.dDover)
  fd_KatSopr_sDover       = 24; // ����७��� ��� (KatSopr.sDover)
  fd_KatSopr_nVagon       = 25; // ����� ��.����.��⠢� (KatSopr.nVagon)
  fd_KatSopr_nKvit        = 26; // ����� �/� ���⠭樨 (KatSopr.nKvit)
  fd_KatSopr_nSertif      = 27; // ����䨪�� ����⢠ (KatSopr.nSertif)
  fd_KatSopr_dSopr        = 28; // ��� ��������� (KatSopr.dSopr)
  fd_KatSopr_NSopr        = 29; // ����� ��������� (KatSopr.NSopr)
  fd_KatSopr_dOpr         = 30; // ��� ���室������/ᯨᠭ�� (KatSopr.dOpr)
  fd_KatSopr_SrokRes      = 31; // �ப, �� ���ண� ��⠭����� १�� (KatSopr.SrokRes)
  fd_KatSopr_UserField    = 32; // ���� ���짮��⥫� (KatSopr.UserField)
  // BaseDoc
  fd_BaseDoc_Name         = 41; // ������������ ��������� (BaseDoc.Name)
  fd_BaseDoc_dPrice       = 42; // ��� ���� 業 (BaseDoc.dPrice)
  fd_BaseDoc_nDover       = 43; // ����� ����७���� (BaseDoc.nDover)
  fd_BaseDoc_dDover       = 44; // ��� ����७���� (BaseDoc.dDover)
  fd_BaseDoc_sDover       = 45; // ����७��� ��� (BaseDoc.sDover)
  fd_BaseDoc_nVagon       = 46; // ����� ��.����.��⠢� (BaseDoc.nVagon)
  fd_BaseDoc_nKvit        = 47; // ����� �/� ���⠭樨 (BaseDoc.nKvit)
  fd_BaseDoc_nSertif      = 48; // ����䨪�� ����⢠ (BaseDoc.nSertif)
  fd_BaseDoc_NoDoc        = 49; // ����� ���㬥�� (BaseDoc.NoDoc)
  fd_BaseDoc_dValCurse    = 50; // ��� ���� ���. �� ���-�� �� (BaseDoc.dValCurse)
  fd_BaseDoc_dFrom        = 51; // ��砫� ��ਮ�� (BaseDoc.dFrom)
  fd_BaseDoc_dTo          = 52; // ����砭�� ��ਮ�� (BaseDoc.dTo)
  fd_BaseDoc_dCursePenya  = 53; // ��� ���� ���� ���� (BaseDoc.dCursePenya)
  fd_BaseDoc_dDoc         = 54; // ��� ���� ���� ���� (BaseDoc.dCursePenya)
  // KatSopr NalAkt
  fd_NalAkt_Name          = 60; // ������������ ��������� (KatSopr.Name)
  fd_NalAkt_dPrice        = 61; // ��� ���� 業 (KatSopr.dPrice)
  fd_NalAkt_nDover        = 62; // ����� ����७���� (KatSopr.nDover)
  fd_NalAkt_dDover        = 63; // ��� ����७���� (KatSopr.dDover)
  fd_NalAkt_sDover        = 64; // ����७��� ��� (KatSopr.sDover)
  fd_NalAkt_nVagon        = 65; // ����� ��.����.��⠢� (KatSopr.nVagon)
  fd_NalAkt_nKvit         = 66; // ����� �/� ���⠭樨 (KatSopr.nKvit)
  fd_NalAkt_nSertif       = 67; // ����䨪�� ����⢠ (KatSopr.nSertif)
  fd_NalAkt_dSopr         = 68; // ��� ��������� (KatSopr.dSopr)
  fd_NalAkt_NSopr         = 69; // ����� ��������� (KatSopr.NSopr)
  fd_NalAkt_dOpr          = 70; // ��� ���室������/ᯨᠭ�� (KatSopr.dOpr)
  fd_NalAkt_SrokRes       = 71; // �ப, �� ���ண� ��⠭����� १�� (KatSopr.SrokRes)
  fd_NalAkt_UserField     = 72; // ���� ���짮��⥫� (KatSopr.UserField)
  // PlPor
  fd_PlPor_NoDOK          = 80; // ����� ���㬥��
  fd_PlPor_DatVip         = 81; // ��� �믨᪨ ����.
  fd_PlPor_DatOts         = 82; // ��� ���뫪� � ����
  fd_PlPor_DatOB          = 83; // ��� ����� 䠪��᪠�
  fd_PlPor_NContract      = 84; // ����� �������/����ࠪ�
  fd_PlPor_DContract      = 85; // ��� �������/����ࠪ�
  fd_PlPor_NPassport      = 86; // ����� ��ᯮ�� ᤥ���
  fd_PlPor_DPassport      = 87; // ��� ��ᯮ�� ᤥ���

  // �������⥫�� ⠡���� (ᨭ�����)
  taNalAkt = 1000;
end;

#end // __TuneUDR_inc__
