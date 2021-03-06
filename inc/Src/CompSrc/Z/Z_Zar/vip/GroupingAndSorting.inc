// -----------------------------------------------------------------------------
// �।���頥� ����୮� ������祭��:
#ifndef _GroupingAndSorting_inc_INCLUDED_
#define _GroupingAndSorting_inc_INCLUDED_

//------------------------------------------------------------------------------
//--TYPES-----------------------------------------------------------------------
//------------------------------------------------------------------------------
// GroupingAndSorting
// ⨯� ��� �����䨪��஢ ����権 (��㯯�஢��/���஢��):
type TGroupingSorting = byte;

//------------------------------------------------------------------------------
//--CONSTANTS-------------------------------------------------------------------
//------------------------------------------------------------------------------
const
// �������� ⨯� ��㯯�஢��:
ERROR_GROUPING_EXTRACTION = 30101;      // �訡�� �����祭�� �����䨪��� ��㯯�஢��
ERROR_SORTING_EXTRACTION  = 30102;      // �訡�� �����祭�� �����䨪��� ���஢��

tblSGrouping = 111;                     // ������ ⠡��� SGrouping
tblSSorting = 222;                      // ������ ⠡��� SSorting

// -----------------------------------------------------------------------------
// ����ன�� ����権 ��㯯�஢��/���஢��:
PRINT_HEAD = true;                      // ����� ���������
PRINT_FOOT = true;                      // ����� ��������
POSITION_ENABLED = true;                // ����祭�
//------------------------------------------------------------------------------
// [s]ortings [g]roupings - ����⠭�� ��㯯�஢�� 
//------------------------------------------------------------------------------
// MAX = 255
sg_Department     : TGroupingSorting = 1;  // ���ࠧ�������
sg_Category       : TGroupingSorting = 2;  // ��⥣���
sg_OperatingMode  : TGroupingSorting = 3;  // ०�� ࠡ���
sg_Analytics      : TGroupingSorting = 4;  // �����⨪�
sg_Appointment    : TGroupingSorting = 5;  // ���������
sg_Brigade        : TGroupingSorting = 6;  // �ਣ���
sg_PaymentMode    : TGroupingSorting = 7;  // ��⥬� ������
sg_Tariff         : TGroupingSorting = 8;  // ���
sg_Mpf            : TGroupingSorting = 9;  // ���
sg_WageCategory   : TGroupingSorting = 10; // ࠧ��
sg_ClockNumber    : TGroupingSorting = 11; // ⠡���� �����
sg_Name           : TGroupingSorting = 12; // 䠬����, ���樠��
sg_Relatives      : TGroupingSorting = 13; // த�⢥�����
sg_IllnesType     : TGroupingSorting = 14; // ��� �����������
sg_IllnesBenefit  : TGroupingSorting = 15; // ��� ��ᮡ�� �� �������
sg_IllnesFeatures : TGroupingSorting = 16; // �ᮡ������ �����������
sg_Absence        : TGroupingSorting = 17; // ���


end;

#end

