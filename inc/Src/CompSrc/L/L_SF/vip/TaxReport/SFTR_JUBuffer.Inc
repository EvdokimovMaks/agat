//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ���ᠭ�� ������: "���� ������ ��ୠ�� ��� ����祭��� � ���⠢������ ��⮢-䠪���"
//------------------------------------------------------------------------------

#ifndef __SFTR_JUBuffer_Inc__
#define __SFTR_JUBuffer_Inc__

//==============================================================================
//#region ����� ������ �������
//------------------------------------------------------------------------------
// ����� 1. ���⠢����� ���-䠪����
Type TSFTR_JUSetBuffer = record
  NumPP            : LongInt;  // 01. ���浪��� ����� �����

  IsCorrV          : boolean;  // ���४�஢��� ��
  WithoutTax       : boolean;  // �ਧ��� "��� ���"
  WithoutTax_dec   : boolean;  // �ਧ��� "��� ��� 㬥��襭��"
  WithoutTax_inc   : boolean;  // �ਧ��� "��� ��� 㢥��祭��"

  dPost            : date   ;  // 02. ��� ���⠢����� ���-䠪����
  KodOperation     : string ;  // 03. ��� ���� ����樨
  NSF              : string ;  // 04. ����� ���-䠪����
  dFact            : date   ;  // 04. ��� ���-䠪����
  nRevision        : string ;  // 05. ����� ��ࠢ����� ���-䠪����
  dRevision        : date   ;  // 05. ��� ��ࠢ����� ���-䠪����
  nSFCorrV         : string ;  // 06. ����� ���४�஢�筮�� ���-䠪����
  dFactCorrV       : date   ;  // 06. ��� ���४�஢�筮�� ���-䠪����
  nRevisionCorrV   : string ;  // 07. ����� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  dRevisionCorrV   : date   ;  // 07. ��� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  OrgName          : string ;  // 08. ������������ ���㯠⥫�
  OrgINN           : string ;  // 09. ��� ���㯠⥫�
  OrgKPP           : string ;  // 09. ��� ���㯠⥫�
  MedOrgINN        : string ;  // 11. ��� �த��� (�� ���� 9 ��� 2)
  MedOrgKPP        : string ;  // 11. ��� �த��� (�� ���� 9 ��� 2)
  nMedSF           : string ;  // 12. ����� ���-䠪����, ����祭���� �� �த��� (�� ���� 4 ��� 2)
  dMedSF           : date   ;  // 12. ��� ���-䠪����, ����祭���� �� �த��� (�� ���� 4 ��� 2)
  Dollar           : string ;  // 13. ������������ ������
  ISO_val          : string ;  // 13. ��� ������
  rSumma           : double ;  // 14. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ �� ����-䠪��� - �ᥣ� //if(IsCorrV, 0, rSumma)
  rNDS             : double ;  // 15. � ⮬ �᫥, �㬬� ��� �� ����-䠪���  //if(ISCORRV, 0, if(WITHOUTTAX, '��� ���', RNDS) )
  rSumma_dec       : double ;  // 16. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, rSumma_dec, 0)
  rSumma_inc       : double ;  // 17. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, rSumma_inc, 0)
  rNDS_dec         : double ;  // 18. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, if(rSumma_dec<>0, if(WithoutTax_dec, 0, rNDS_dec), 0), 0)
  rNDS_inc         : double ;  // 19. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, if(rSumma_inc<>0, if(WithoutTax_inc, 0, rNDS_inc), 0), 0)
end; // Type

//------------------------------------------------------------------------------
// ����� 2. ����祭�� ���-䠪����
Type TSFTR_JUGetBuffer = record
  NumPP            : LongInt;  // 01. ���浪��� ����� �����

  IsCorrV          : boolean;  // ���४�஢��� ��
  WithoutTax       : boolean;  // �ਧ��� "��� ���"
  WithoutTax_dec   : boolean;  // �ਧ��� "��� ��� 㬥��襭��"
  WithoutTax_inc   : boolean;  // �ਧ��� "��� ��� 㢥��祭��"

  dPost            : date   ;  // 02. ��� ����祭�� ���-䠪����
  KodOperation     : string ;  // 03. ��� ���� ����樨
  NSF              : string ;  // 04. ����� ���-䠪����
  dFact            : date   ;  // 04. ��� ���-䠪����
  nRevision        : string ;  // 05. ����� ��ࠢ����� ���-䠪����
  dRevision        : date   ;  // 05. ��� ��ࠢ����� ���-䠪����
  nSFCorrV         : string ;  // 06. ����� ���४�஢�筮�� ���-䠪����
  dFactCorrV       : date   ;  // 06. ��� ���४�஢�筮�� ���-䠪����
  nRevisionCorrV   : string ;  // 07. ����� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  dRevisionCorrV   : date   ;  // 07. ��� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  OrgName          : string ;  // 08. ������������ �த���
  OrgINN           : string ;  // 09. ��� �த���
  OrgKPP           : string ;  // 09. ��� �த���
  MedOrgINN        : string ;  // 11. ��� �㡪����ᨮ��� (�㡠����)
  MedOrgKPP        : string ;  // 11. ��� �㡪����ᨮ��� (�㡠����)
  Code_VS          : string ;  // 12. ��� ���� ᤥ���
  Dollar           : string ;  // 13. ������������ ������
  ISO_val          : string ;  // 13. ��� ������
  rSumma           : double ;  // 14. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ �� ����-䠪��� - �ᥣ� //if(IsCorrV, 0, rSumma)
  rNDS             : double ;  // 15. � ⮬ �᫥, �㬬� ��� �� ����-䠪���  //if(ISCORRV, 0, if(WITHOUTTAX, '��� ���', RNDS) )
  rSumma_dec       : double ;  // 16. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, rSumma_dec, 0)
  rSumma_inc       : double ;  // 17. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, rSumma_inc, 0)
  rNDS_dec         : double ;  // 18. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, if(rSumma_dec<>0, if(WithoutTax_dec, 0, rNDS_dec), 0), 0)
  rNDS_inc         : double ;  // 19. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, if(rSumma_inc<>0, if(WithoutTax_inc, 0, rNDS_inc), 0), 0)
end; // Type
//#endregion ����� ������ �������
//******************************************************************************


//==============================================================================
//#region ����� ������ ������� (��� ���� � ��뫪���)
//------------------------------------------------------------------------------
// ����� 1. ���⠢����� ���-䠪����
Type TSFTR_JUSetBuffer01 = record
  NumPP            : LongInt;  // 01. ���浪��� ����� �����

  IsCorrV          : boolean;  // ���४�஢��� ��
  WithoutTax       : boolean;  // �ਧ��� "��� ���"
  WithoutTax_dec   : boolean;  // �ਧ��� "��� ��� 㬥��襭��"
  WithoutTax_inc   : boolean;  // �ਧ��� "��� ��� 㢥��祭��"

  dPost            : date   ;  // 02. ��� ���⠢����� ���-䠪����
  KodOperation     : string ;  // 03. ��� ���� ����樨
  NSF              : string ;  // 04. ����� ���-䠪����
  dFact            : date   ;  // 04. ��� ���-䠪����
  nRevision        : string ;  // 05. ����� ��ࠢ����� ���-䠪����
  dRevision        : date   ;  // 05. ��� ��ࠢ����� ���-䠪����
  nSFCorrV         : string ;  // 06. ����� ���४�஢�筮�� ���-䠪����
  dFactCorrV       : date   ;  // 06. ��� ���४�஢�筮�� ���-䠪����
  nRevisionCorrV   : string ;  // 07. ����� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  dRevisionCorrV   : date   ;  // 07. ��� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  OrgName          : string ;  // 08. ������������ ���㯠⥫�
  OrgINN           : string ;  // 09. ��� ���㯠⥫�
  OrgKPP           : string ;  // 09. ��� ���㯠⥫�
  MedOrgINN        : string ;  // 11. ��� �த��� (�� ���� 9 ��� 2)
  MedOrgKPP        : string ;  // 11. ��� �த��� (�� ���� 9 ��� 2)
  nMedSF           : string ;  // 12. ����� ���-䠪����, ����祭���� �� �த��� (�� ���� 4 ��� 2)
  dMedSF           : date   ;  // 12. ��� ���-䠪����, ����祭���� �� �த��� (�� ���� 4 ��� 2)
  Dollar           : string ;  // 13. ������������ ������
  ISO_val          : string ;  // 13. ��� ������
  rSumma           : double ;  // 14. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ �� ����-䠪��� - �ᥣ� //if(IsCorrV, 0, rSumma)
  rNDS             : double ;  // 15. � ⮬ �᫥, �㬬� ��� �� ����-䠪���  //if(ISCORRV, 0, if(WITHOUTTAX, '��� ���', RNDS) )
  rSumma_dec       : double ;  // 16. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, rSumma_dec, 0)
  rSumma_inc       : double ;  // 17. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, rSumma_inc, 0)
  rNDS_dec         : double ;  // 18. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, if(rSumma_dec<>0, if(WithoutTax_dec, 0, rNDS_dec), 0), 0)
  rNDS_inc         : double ;  // 19. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, if(rSumma_inc<>0, if(WithoutTax_inc, 0, rNDS_inc), 0), 0)

  cSF              : comp   ;  // ��뫪� �� ��
  cRevision        : comp   ;  // ��뫪� �� ��ࠢ����� ��
  cSFCorrV         : comp   ;  // ��뫪� �� ���४�஢��� ��
  cRevisionCorrV   : comp   ;  // ��뫪� �� ��ࠢ����� ���४�஢�筮�� ��
  cMedSF           : comp   ;  // ��뫪� �� �� ���।����

  cOrg             : comp   ;  // ��뫪� �� ����ࠣ���
  cMedOrg          : comp   ;  // ��뫪� �� ���।����
end; // Type

//------------------------------------------------------------------------------
// ����� 2. ����祭�� ���-䠪����
Type TSFTR_JUGetBuffer01 = record
  NumPP            : LongInt;  // 01. ���浪��� ����� �����

  IsCorrV          : boolean;  // ���४�஢��� ��
  WithoutTax       : boolean;  // �ਧ��� "��� ���"
  WithoutTax_dec   : boolean;  // �ਧ��� "��� ��� 㬥��襭��"
  WithoutTax_inc   : boolean;  // �ਧ��� "��� ��� 㢥��祭��"

  dPost            : date   ;  // 02. ��� ����祭�� ���-䠪����
  KodOperation     : string ;  // 03. ��� ���� ����樨
  NSF              : string ;  // 04. ����� ���-䠪����
  dFact            : date   ;  // 04. ��� ���-䠪����
  nRevision        : string ;  // 05. ����� ��ࠢ����� ���-䠪����
  dRevision        : date   ;  // 05. ��� ��ࠢ����� ���-䠪����
  nSFCorrV         : string ;  // 06. ����� ���४�஢�筮�� ���-䠪����
  dFactCorrV       : date   ;  // 06. ��� ���४�஢�筮�� ���-䠪����
  nRevisionCorrV   : string ;  // 07. ����� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  dRevisionCorrV   : date   ;  // 07. ��� ��ࠢ����� ���४�஢�筮�� ���-䠪����
  OrgName          : string ;  // 08. ������������ �த���
  OrgINN           : string ;  // 09. ��� �த���
  OrgKPP           : string ;  // 09. ��� �த���
  MedOrgINN        : string ;  // 11. ��� �㡪����ᨮ��� (�㡠����)
  MedOrgKPP        : string ;  // 11. ��� �㡪����ᨮ��� (�㡠����)
  Code_VS          : string ;  // 12. ��� ���� ᤥ���
  Dollar           : string ;  // 13. ������������ ������
  ISO_val          : string ;  // 13. ��� ������
  rSumma           : double ;  // 14. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ �� ����-䠪��� - �ᥣ� //if(IsCorrV, 0, rSumma)
  rNDS             : double ;  // 15. � ⮬ �᫥, �㬬� ��� �� ����-䠪���  //if(ISCORRV, 0, if(WITHOUTTAX, '��� ���', RNDS) )
  rSumma_dec       : double ;  // 16. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, rSumma_dec, 0)
  rSumma_inc       : double ;  // 17. ������ �⮨���� � ��⮬ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, rSumma_inc, 0)
  rNDS_dec         : double ;  // 18. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㬥��襭�� //if(IsCorrV, if(rSumma_dec<>0, if(WithoutTax_dec, 0, rNDS_dec), 0), 0)
  rNDS_inc         : double ;  // 19. ������ ��� �� ���४�஢�筮�� ����-䠪��� 㢥��祭�� //if(IsCorrV, if(rSumma_inc<>0, if(WithoutTax_inc, 0, rNDS_inc), 0), 0)

  cSF              : comp   ;  // ��뫪� �� ��
  cRevision        : comp   ;  // ��뫪� �� ��ࠢ����� ��
  cSFCorrV         : comp   ;  // ��뫪� �� ���४�஢��� ��
  cRevisionCorrV   : comp   ;  // ��뫪� �� ��ࠢ����� ���४�஢�筮�� ��
  cMedSF           : comp   ;  // ��뫪� �� �� ���।����

  cOrg             : comp   ;  // ��뫪� �� ����ࠣ���
  cMedOrg          : comp   ;  // ��뫪� �� ���।����
end; // Type
//#endregion ����� ������ ����� (��� ���� � ��뫪���)
//******************************************************************************

#endif//__SFTR_JUBuffer_Inc__
