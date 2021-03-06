//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ����䥩� ।���஢���� : "�������� �� ���"
//------------------------------------------------------------------------------

#ifndef __G2017_NDSNalDRM_Inc__
#define __G2017_NDSNalDRM_Inc__

const
  // ������⢮ ������⮢ � ������� �� 㬮�砭��
  lc_StructCount_CodeVidOp  : word = 5;  // ��� ���� ����樨
  lc_StructCount_DocOplata  : word = 5;  // �������� � ���㬥��, ���⢥ত��饬 㯫��� ������
  lc_StructCount_DataOprTov : word = 1;  // ��� �ਭ��� �� ��� ⮢�஢
  lc_StructCount_RegNomTD   : word = 1;  // �������樮��� ����� ⠬������� ������樨

  // ᯨ᮪ ���㬥�⮢
  lc_DocListSeparator  = ';'         ;  // ࠧ����⥫� ᯨ᪠ ���㬥�⮢
  lc_DocListAttrSepar  = ' '         ;  // ࠧ����⥫� �/� ��ਡ�⠬� ���㬥��: "�����" � "���"
  lc_DocListDateSepar  = '.'         ;  // ࠧ����⥫� �ଠ� ����
  lc_DocListDateFormat = 'DD.MM.YYYY';  // �ଠ� ����

  // ���祭�� ��ਡ�� "�ਧ��� ����⢮����� ࠧ����"
  lc_RExistNot : string = '0';
  lc_RExistYes : string = '1';

  // ��� �� ����� ࠧ�����
  lc_RXX_RExistNodePath : string = '����/�ਧ����8-12';

  lc_R08_RExistNodePath : string = '����/�ਧ����8';
  lc_R08_DocNDCNodePath : string = '����/���㬥��/���/���������';
  lc_R08_ParentNodePath : string = lc_R08_DocNDCNodePath + '/����/���㬥��/���������';
  lc_R08_SlavedNodePath : string = lc_R08_ParentNodePath + '/��������';

  lc_R8D_RExistNodePath : string = '����/�ਧ����81';
  lc_R8D_DocNDCNodePath : string = '����/���㬥��/���/��������㯄�';
  lc_R8D_ParentNodePath : string = lc_R8D_DocNDCNodePath + '/����/���㬥��/��������㯄�';
  lc_R8D_SlavedNodePath : string = lc_R8D_ParentNodePath + '/����������';

  lc_R09_RExistNodePath : string = '����/�ਧ����9';
  lc_R09_DocNDCNodePath : string = '����/���㬥��/���/������த';
  lc_R09_ParentNodePath : string = lc_R09_DocNDCNodePath + '/����/���㬥��/������த';
  lc_R09_SlavedNodePath : string = lc_R09_ParentNodePath + '/���த���';

  lc_R9D_RExistNodePath : string = '����/�ਧ����91';
  lc_R9D_DocNDCNodePath : string = '����/���㬥��/���/������த��';
  lc_R9D_ParentNodePath : string = lc_R9D_DocNDCNodePath + '/����/���㬥��/������த��';
  lc_R9D_SlavedNodePath : string = lc_R9D_ParentNodePath + '/���த�����';

  lc_R10_RExistNodePath : string = '����/�ਧ����10';
  lc_R10_DocNDCNodePath : string = '����/���㬥��/���/�������';
  lc_R10_ParentNodePath : string = lc_R10_DocNDCNodePath + '/����/���㬥��/�������';
  lc_R10_SlavedNodePath : string = lc_R10_ParentNodePath + '/������甑��';

  lc_R11_RExistNodePath : string = '����/�ਧ����11';
  lc_R11_DocNDCNodePath : string = '����/���㬥��/���/��珮����';
  lc_R11_ParentNodePath : string = lc_R11_DocNDCNodePath + '/����/���㬥��/��珮����';
  lc_R11_SlavedNodePath : string = lc_R11_ParentNodePath + '/��珮���甑��';

  lc_R12_RExistNodePath : string = '����/�ਧ����12';
  lc_R12_DocNDCNodePath : string = '����/���㬥��/���/�����_173.5';
  lc_R12_ParentNodePath : string = lc_R12_DocNDCNodePath + '/����/���㬥��';
  lc_R12_SlavedNodePath : string = lc_R12_ParentNodePath + '/�����_173.5';

  // ��� �� ������������ XSD 䠩���
  lc_R08_XSDNodePath = lc_R08_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R8D_XSDNodePath = lc_R8D_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R09_XSDNodePath = lc_R09_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R9D_XSDNodePath = lc_R9D_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R10_XSDNodePath = lc_R10_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R11_XSDNodePath = lc_R11_DocNDCNodePath+'/'+lc_Schema_NodePath;
  lc_R12_XSDNodePath = lc_R12_DocNDCNodePath+'/'+lc_Schema_NodePath;

  lc_DopRazdelManagerRID_BR =   0;  // �����䨪��� �᭮���� ࠧ�����

  // ���� �������㥬�� ࠧ�����
  lc_DopRazdelManagerBit_08 =   1;  // ������  8
  lc_DopRazdelManagerBit_8D =   2;  // ������  8 �ਫ������ 1
  lc_DopRazdelManagerBit_09 =   4;  // ������  9
  lc_DopRazdelManagerBit_9D =   8;  // ������  9 �ਫ������ 1
  lc_DopRazdelManagerBit_10 =  16;  // ������ 10
  lc_DopRazdelManagerBit_11 =  32;  // ������ 11
  lc_DopRazdelManagerBit_12 =  64;  // ������ 12

  // ���� ०��� 䨫���樨 ������
  lc_DopRazdelFlt_COBit     =  1;  // ������ �� 業�ࠬ �⢥��⢥�����

  lc_DopRazdelFltCOMN = 'GetSomeFpCO'+#(__InterfaceName__);  // ������������ ��થ� � ᯨ᪮� �� ��� 䨫���樨
end; // const

//------------------------------------------------------------------------------
// ��ਡ��� ���㬥��
Type TDRMDocAttr = record
  sNum : string;  // ����� ���㬥��
  dDat : date;    // ���  ���㬥��
end;
//------------------------------------------------------------------------------
// ���᮪ ���㬥�⮢
Type TDRMDocList = array[0..0] of TDRMDocAttr;
//------------------------------------------------------------------------------
// ���᮪ ��ப���� �।�⠢����� ४����⮢ ���㬥�⮢
Type TDRMStrDocList = array[0..0] of string;

//------------------------------------------------------------------------------
// ��ਡ��� ����஢
Type TDRMNumAttr = record
  sNum : string;  // ����� ���㬥��
end;
//------------------------------------------------------------------------------
// ���᮪ ����஢
Type TDRMNumList = array[0..0] of TDRMNumAttr;
//------------------------------------------------------------------------------
// ���᮪ ��ப���� �।�⠢����� ����஢
Type TDRMStrNumList = array[0..0] of string;

//------------------------------------------------------------------------------
// ������ப�
Type TDRMMultyStr = array[0..0] of string[lc_ValueLength];

#endif//__G2017_NDSNalDRM_Inc__
