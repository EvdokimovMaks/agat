//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// �㭪樮����� ����䥩� : "������� ���㬥��"
//------------------------------------------------------------------------------

#ifndef __XMLStruct_Inc__
#define __XMLStruct_Inc__

const
  // ������������ �㦥���� ��ਡ�⮢ Namespace
  lc_NamespaceAttrName_xmlns = 'xmlns:xsi';
  lc_NamespaceAttrName_noNSL = 'xsi:noNamespaceSchemaLocation';

  // ��� �� �����
  lc_FileID_NodePath : string = '����/������';
  lc_Schema_NodePath : string = '����/'+lc_NamespaceAttrName_noNSL;

  // Null ���祭��
  lc_NullValue : string = '';

  // ����� ���
  lc_dEmpty : date = To_Date(0, 0, 0);

  // ⨯� ���祭��
  lc_ValueTypeString = 0;  // ��ப�
  lc_ValueTypeNumber = 1;  // �᫮
  lc_ValueTypeDate   = 2;  // ���

  // ����� ���� Value
  lc_ValueLength = 100;

  // ��ᯮ�� � XML
  lc_ExpToXml_3XSrv_Yes = True ;  // ��࠭��� 䠩� �� 3� �ࢥ�
  lc_ExpToXml_3XSrv_Not = False;  // �� ��࠭��� 䠩� �� 3� �ࢥ�

  // ᯮᮡ ����䨪�樨 ����
  lc_ModifyOwner_Def  : word = 0;  // �� 㬮�砭��
  lc_ModifyOwner_Usr  : word = 1;  // ���짮��⥫�
  lc_ModifyOwner_Alg  : word = 2;  // ������
  lc_ModifyOwner_Frm  : word = 3;  // ��㫠

  // �ਧ��� ���㦠���
  lc_XMapVis_Yes      : word = 0;  // ���㦠���
  lc_XMapVis_Not      : word = 1;  // �� ���㦠���

  // ��ਡ�� "���⨥ � ����"
  lc_XMapUchRasch_Def : word = 0;  // �� 㬮�砭��
  lc_XMapUchRasch_Arg : word = 1;  // ������ � �����
  lc_XMapUchRasch_Res : word = 2;  // ���⭮� ����

  // ���祭�� XMap.Prot
  lc_XMapProt_UseAlg    : word = 0;  // �ᯮ�짮���� ������ ��� ������� ����
  lc_XMapProt_NotUseAlg : word = 1;  // �� �ᯮ�짮���� ������ ��� ������� ����

  // �����䨪��� �������⥫쭮�� ᥣ���� "������� ��ப�"
  lc_XMapMultyStrSegID = '_Add';
  lc_XMapMaxLengthMultyStr : word = 1000;  // ���ᨬ��쭠� ����� ���� "������� ��ப�"

  // ������������ ���� � ���祭��� ⥪�⮢�� ���設�
  lc_XMapTextValueFieldName = '���祭��';
end;

const
  bxCompElement = 0;
  bxSimpElement = 1;
  bxSimpAttr = 2;
end;

const
  NODE_INVALID = 0;
  NODE_ELEMENT = 1;
  NODE_ATTRIBUTE = 2;
  NODE_TEXT = 3;
  NODE_CDATA_SECTION = 4;
  NODE_ENTITY_REFERENCE = 5;
  NODE_ENTITY = 6;
  NODE_PROCESSING_INSTRUCTION = 7;
  NODE_COMMENT = 8;
  NODE_DOCUMENT = 9;
  NODE_DOCUMENT_TYPE = 10;
  NODE_DOCUMENT_FRAGMENT = 11;
  NODE_NOTATION = 12;
end;

Const
  Key_Ident   = 0;
  Key_ExprNde = 1;
  Key_ExprVal = 2;
  Key_ExprKol = 3;
  Key_DataNde = 4;
  Key_DataVal = 5;
  Key_DataKol = 6;
End;

const
  lkk_RootExpr = 0;
  lkk_AvgExpr  = 1;
  lkk_Term     = 2;
end;

#endif//__XMLStruct_Inc__
