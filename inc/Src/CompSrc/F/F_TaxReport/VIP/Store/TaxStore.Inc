//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ����� "�����஭��� ���⭮���"
// ������ ��ꥪ� : "������ᠫ쭮� �࠭����"
//------------------------------------------------------------------------------

#ifndef __TaxStore_Inc__
#define __TaxStore_Inc__

Type rcFpEntity = record
  w: Word;
  c: Comp;
end;

Table struct FpAreaBoxRec
( cRec : comp )
with index
( FpAreaBoxRec01 = cRec (Unique)
);

#endif//__TaxStore_Inc__
