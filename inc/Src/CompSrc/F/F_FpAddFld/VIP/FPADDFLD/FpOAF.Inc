//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� "��ࠢ����� ��⮬"
// ������ ��ꥪ� : "������ᠫ쭮� �࠭����"
//------------------------------------------------------------------------------

#ifndef __FpAddFld_Inc__
#define __FpAddFld_Inc__

#Component "F_FpAddFld"

Type rcFpEntity = record
  w: Word;
  c: Comp;
end;

Table struct FpAreaBoxRec
( cRec : comp )
with index
( FpAreaBoxRec01 = cRec (Unique)
);

#endif //__FpAddFld_Inc__
