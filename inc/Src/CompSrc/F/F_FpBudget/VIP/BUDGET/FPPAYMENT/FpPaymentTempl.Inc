//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ���� ������ ��魮�� : "������ �ନ஢���� ���⥦��/����饭��"
//------------------------------------------------------------------------------

#ifndef __FpPaymentTempl_Inc__
#define __FpPaymentTempl_Inc__

//------------------------------------------------------------------------------
#include FpPaymentTempl.Tbl  // ⠡���� ��魮�� : "������ �ନ஢���� ���⥦��/����饭��"
//------------------------------------------------------------------------------

#GalPublic type TPPaymentTemplFld  = record as Table FpCmpTune        with x$position;
#GalPublic type TPPlPorPayTemplFld = record as Table TblPlPorPayTempl with x$position;
#GalPublic type TPEmailPayTemplFld = record as Table TblEmailPayTempl with x$position;


#endif//__FpPaymentTempl_Inc__
