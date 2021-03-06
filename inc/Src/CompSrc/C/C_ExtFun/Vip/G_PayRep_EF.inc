//******************************************************************************
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 8.1 - ��ࠡ�⭠� ����
// ���ᠭ�� ��ॣ����஢����� �㭪権
//******************************************************************************

//------------------------------------------------------------------------------
// lowproc.pas
//------------------------------------------------------------------------------
// ���樠������ ������ ��� ����묨 �� ����஥�
procedure InitCurrentPeriodDates; external 'G_ZARPL.DLL';

// ����� ����
function MonthRas: integer; external 'G_ZARPL.DLL';
// ��� ����
function YearRas: integer; external 'G_ZARPL.DLL';
// ��᫥���� ���� ���⭮�� ��ਮ��
function DayRas: integer; external 'G_ZARPL.DLL';
// ��� ��砫� ���⭮�� ��ਮ��
function FirstDayRas: date; external 'G_ZARPL.DLL';
// ��� ����砭�� ���⭮�� ��ਮ��
function DatRas: date; external 'G_ZARPL.DLL';
#ifdef Gal9_1
function GetUserDate (var YearRas: integer, var MonthRas: integer, var DayRas: integer, var FirstDayRas: date, var DatRas: date): boolean; external 'G_ZARPL.DLL';
//------------------------------------------------------------------------------
// ��⮤� ��� ࠡ��� � ���묨 ��⠬�
//------------------------------------------------------------------------------
#doc
  �����頥� ����� ��⭮�� ��ਮ�� �� ���
#end
function AD_Month(D: date): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ��� ��⭮�� ��ਮ�� �� ���
#end
function AD_Year(D: date): integer; external 'G_ZARPL.DLL';

#doc
  �����頥� ���浪��� ����� ��� � ��⭮� ��ਮ�� �� ���
#end
function AD_DayNo(D: date): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ������⢮ ���������� ���� � ��⭮� ��ਮ�� �� ���
#end
function AD_Days(D: date): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��砫� ��⭮�� ��ਮ�� �� ���
#end
function AD_FirstDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ����砭�� ��⭮�� ��ਮ�� �� ���
#end
function AD_LastDate(D: date): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� �� ���浪����� ������ ���, ������ � ���� ��⭮�� ��ਮ��
#end
function AD_Date(DayNo: byte, Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ����砭�� ��⭮�� ��ਮ�� �� ��� � ��ப���� �ଠ�
#end
function AD_ToChar(D: date, FormatString: string): string; external 'G_ZARPL.DLL';

//------------------------------------------------------------------------------
// ��⮤� ��� ࠡ��� � ���� ����楬
//------------------------------------------------------------------------------
#doc
  �����頥� ������⢮ ���������� ���� � ��⭮� �����
#end
function AM_Days(Month: byte, Year: integer): byte; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��ࢮ�� ��� � ��⭮� �����
#end
function AM_FirstDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��᫥����� ��� � ��⭮� �����
#end
function AM_LastDate(Month: byte, Year: integer): date; external 'G_ZARPL.DLL';

#doc
  �����頥� ���� ��᫥����� ��� � ��⭮� ����� � ��ப���� �ଠ�
#end
function AM_ToChar(Month: byte, year: integer, FormatString: string): string; external 'G_ZARPL.DLL';
#end

