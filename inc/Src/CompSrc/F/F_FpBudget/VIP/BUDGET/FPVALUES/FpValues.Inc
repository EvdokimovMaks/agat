//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ���� ������ ��魮�� "���祭�� ������⥫�� ���஢����"
//------------------------------------------------------------------------------

#ifndef __FPVALUES_INC__
#define __FPVALUES_INC__

#ifdef ComponentVersionInDict
#include IFPVALUES.vih
#endif //ComponentVersionInDict
#GalPublic type TFpValues   = record as Table FpValues;
#GalPublic type TPFpValues  = record as Table FpValues with x$position;

#endif //__FPVALUES_INC__
