//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.10 - ��������� "Excel-�����"
// ���譨� �㪭樨 : "������⥪� �㪭権 ࠡ��� � Excel"
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
Function XLGETIMPLEMENTATIONMODE : word; external 'ExcelLib3X.dll';
Function XLSETIMPLEMENTATIONMODE(word) : boolean; external 'ExcelLib3X.dll';

//------------------------------------------------------------------------------
Function XLOPENEXCEL(boolean) : boolean; external 'ExcelLib3X.dll';
Function XLOPENNEWEXCEL(boolean) : boolean; external 'ExcelLib3X.dll';
Function XLCREATEEXCEL(string, boolean) : boolean; external 'ExcelLib3X.dll';
Function XLCREATEEXCELWITHTEMPLATE(string, boolean) : boolean; external 'ExcelLib3X.dll';
Function XLCREATENEWEXCELWITHTEMPLATE(string, boolean) : boolean; external 'ExcelLib3X.dll';
Function XLISEXCELVALID : boolean; external 'ExcelLib3X.dll';

Function XLGETLASTERROR : LongInt; external 'ExcelLib3X.dll';
Function XLDISPLAYALERTS(boolean) : boolean; external 'ExcelLib3X.dll';
Function XLSETAPPVISIBLEMODE(boolean) : boolean; external 'ExcelLib3X.dll';
Function XLCHECKEXCELINSTALL : boolean; external 'ExcelLib3X.dll';
Function XLGETVERSIONEXCELINSTALL(string) : boolean; external 'ExcelLib3X.dll';

Function XLOPENWORKBOOK(string) : boolean; external 'ExcelLib3X.dll';
Function XLSAVEWORKBOOK(LongInt) : boolean; external 'ExcelLib3X.dll';
Function XLSAVEASWORKBOOK(LongInt, string) : boolean; external 'ExcelLib3X.dll';
Function XLCLOSEWORKBOOK(LongInt) : boolean; external 'ExcelLib3X.dll';
Function XLSAVEWORKBOOKBYNAME(string) : boolean; external 'ExcelLib3X.dll';
Function XLSAVEASWORKBOOKBYNAME(string, string) : boolean; external 'ExcelLib3X.dll';
Function XLCLOSEWORKBOOKBYNAME(string) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLGETWORKBOOKSCOUNT(var anytype) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------

Function XLSETACTIVEWORKBOOK(word) : boolean; external 'ExcelLib3X.dll';
Function XLSETACTIVEWORKBOOKBYNAME(string) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLGETACTIVEWORKBOOKNAME(var string) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------

Function XLGETRANGENAMESCOUNT(var anytype) : boolean; external 'ExcelLib3X.dll';
Function XLGETINDNAME(string) : LongInt; external 'ExcelLib3X.dll';
Function XLDELRANGEBYNAME(string) : boolean; external 'ExcelLib3X.dll';
Function XLDELRANGENAME(LongInt) : boolean; external 'ExcelLib3X.dll';
Function XLADDRANGENAME(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETRANGENAME(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLGETRANGEBYNAME(string, var longint, var longint, var longint, var longint) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLGETRANGENAMESCOUNTINBOOK(var anytype) : boolean; external 'ExcelLib3X.dll';
Function XLGETINDNAMEINBOOK(string) : LongInt; external 'ExcelLib3X.dll';
Function XLDELRANGEBYNAMEINBOOK(string) : boolean; external 'ExcelLib3X.dll';
Function XLDELRANGENAMEINBOOK(LongInt) : boolean; external 'ExcelLib3X.dll';
Function XLADDRANGENAMEINBOOK(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETRANGENAMEINBOOK(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLGETRANGEBYNAMEINBOOK(string, var longint, var longint, var longint, var longint) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------

Function XLSETFONTNAME(string, longint, longint, longint, longint): boolean; external 'ExcelLib3X.dll';
Function XLSETFONTSIZE(word, longint, longint, longint, longint): boolean; external 'ExcelLib3X.dll';
Function XLSETCELLSTRINGVALUE(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETCELLNUMBERVALUE(double, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETCELLDATEVALUE(date, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETCELLFORMULA(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';

Function XLADDCELLSTRINGVALUE(string, longint, longint) : boolean; external 'ExcelLib3X.dll';

//------------------------------------------------------------------------------
Function XLGETCELLVALUE(longint, longint, var anytype) : boolean; external 'ExcelLib3X.dll';
Function XLGETCELLSUBSTRINGVALUE(longint, longint, longint, longint) : string; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------

Function XLSETCELLINDENTLEVEL(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLFREEZE(longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLUNFREEZE : boolean; external 'ExcelLib3X.dll';
Function XLSETROWHEIGHT(word, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETCOLUMNWIDTH(word, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETFONTCOLOR(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSETBACKCOLOR(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// �� ��⨪�� Bold, Italic, Underline
Function XLSETFONTSTYLE(word, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// 1-� ��ࠬ��� ��� ��⠢�塞 (�. Excel.inc)
Function XLINSERTRANGE(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLDELETERANGE(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLSHRINKCELLS(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// 1-� align (�. Excel.inc)
Function XLALIGNCELLS(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLALIGNCELLSEX(longint, longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLMERGECELLS(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// 1-� ��ப� � �ଠ⮬, ���� ���뢠�� ⥪�騥 ��⥬�� ࠧ����⥫�
Function XLSETNUMBERFORMAT(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLCLEARRANGECONTENTS(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLCLEARRANGEFORMATS(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLCLEARRANGECOMMENTS(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// 1-� ��� �३�, �� ��⨪�� � ���浪� ᫥������� ����⠭� (Excel.inc); 2-�� ��� �����; 3-�� �⨫� ����� (�� Excel.inc)
Function XLFRAMECELLS(word, longint, longint, longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLADDCOMMENTSHORT(string, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLAUTOFIT(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLGETUSEDRANGE(var longint, var longint, var longint, var longint) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLWRAPTEXT(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// ࠡ�� � ����஬ Excel
Function XLCOPYTOBUFF(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLPASTEFORMATFROMBUFF(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLPASTEALLFROMBUFF(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
// ࠡ�� � ���⮬ ࠡ�祩 ����� Excel
Function XLSETACTIVESHEET(LongInt) : boolean; external 'ExcelLib3X.dll';
Function XLSETACTIVESHEETBYNAME(string) : boolean; external 'ExcelLib3X.dll';
Function XLSETSHEETNAME(LongInt, string) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLGETSHEETNAME(LongInt, var anytype) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLADDSHEET : boolean; external 'ExcelLib3X.dll';
Function XLDELETESHEET(LongInt) : boolean; external 'ExcelLib3X.dll';
Function XLDELETESHEETBYNAME(string) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLGETSHEETSCOUNT(var anytype) : boolean; external 'ExcelLib3X.dll';
Function XLGETSHEETROWCOUNT(var anytype) : boolean; external 'ExcelLib3X.dll';
Function XLGETSHEETLOWCOUNT(var anytype) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLCOPYEXTFORMAT(string, string) : boolean; external 'ExcelLib3X.dll';
Function XLRUNMACRO(string) : boolean; external 'ExcelLib3X.dll';
Function XLADDINSINSTAL(string, string) : boolean; external 'ExcelLib3X.dll';
Function XLGETFULLNAMEADDINS(string, string) : boolean; external 'ExcelLib3X.dll';

// ��� 䠩�� � ����� �।���⥫쭮 ����ᠭ� ������
Function XLIMPORTMODULE(string) : boolean; external 'ExcelLib3X.dll';

//------------------------------------------------------------------------------
// ࠡ�� � ᥯���ࠬ� Excel_XP, ��� 97, 2000 �����頥� ��⥬��
Function XLGETUSESYSTEMSEPARATOR : boolean;  external 'ExcelLib3X.dll';
Function XLGETTHOUSANDSEPARATOR  : char;     external 'ExcelLib3X.dll';
Function XLGETDECIMALSEPARATOR   : char;     external 'ExcelLib3X.dll';

// ᥪ�� ࠡ��� � ��ਠ��� ���ᨢ��
Function XLCREATEMATRIX(longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLCLEARMATRIX : boolean; external 'ExcelLib3X.dll';
Function XLFREEMATRIX : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLADDSTRTOMATRIX(longint, longint, string) : boolean; external 'ExcelLib3X.dll';
Function XLSTWRITETOMATRIX(longint, longint, string) : boolean; external 'ExcelLib3X.dll';
Function XLDOWRITETOMATRIX(longint, longint, double) : boolean; external 'ExcelLib3X.dll';
Function XLDTWRITETOMATRIX(longint, longint, date) : boolean; external 'ExcelLib3X.dll';
Function XLREADFROMMATRIX(longint, longint, var AnyType) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLWRITEMATRIXTOEXCEL(longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLREADMATRIXFROMEXCEL(longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';

// ᥪ�� ࠡ��� � ������樥� ��ਠ���� ���ᨢ��
Function XLCREATEMATRIXEX(longint, longint) : longint; external 'ExcelLib3X.dll';
Function XLCLEARMATRIXEX(longint) : boolean; external 'ExcelLib3X.dll';
Function XLFREEMATRIXEX(longint) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLADDSTRTOMATRIXEX(longint, longint, longint, string) : boolean; external 'ExcelLib3X.dll';
Function XLSTWRITETOMATRIXEX(longint, longint, longint, string) : boolean; external 'ExcelLib3X.dll';
Function XLDOWRITETOMATRIXEX(longint, longint, longint, double) : boolean; external 'ExcelLib3X.dll';
Function XLDTWRITETOMATRIXEX(longint, longint, longint, date) : boolean; external 'ExcelLib3X.dll';
Function XLREADFROMMATRIXEX(longint, longint, longint, var AnyType) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
Function XLWRITEMATRIXTOEXCELEX(longint, longint, longint) : boolean; external 'ExcelLib3X.dll';
Function XLREADMATRIXFROMEXCELEX(longint, longint, longint, longint, longint) : boolean; external 'ExcelLib3X.dll';

Function XLKILLEXCEL : boolean; external 'ExcelLib3X.dll';
Function SHORTSTRTOWIN(string) : string; external 'ExcelLib3X.dll';
Function SHORTSTRTODOS(string) : string; external 'ExcelLib3X.dll';
Function GETTHOUSANDSEPARATOR : char; external 'ExcelLib3X.dll';
Function GETDECIMALSEPARATOR : char; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
// �ᯮ����⥫�� ��� page setup
// ��ॢ�� ᠭ⨬��஢ � �窨
Function XLCENTIMETERSTOPOINTS(double) : double; external 'ExcelLib3X.dll';
// ��ॢ�� ��� � �窨
Function XLINCHESTOPOINTS(double) : double; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
// page setup
// �㭪樨 XLPAGESETUP*
// �� ��㬥��� XLPAGESETUPSET...MARGIN(double) � �窠� (points) !!!
// �. Function XLCENTIMETERSTOPOINTS()
Function XLPAGESETUPSETLEFTMARGIN(double) : boolean; external 'ExcelLib3X.dll';
Function XLPAGESETUPSETRIGHTMARGIN(double) : boolean; external 'ExcelLib3X.dll';
Function XLPAGESETUPSETTOPMARGIN(double) : boolean; external 'ExcelLib3X.dll';
Function XLPAGESETUPSETBOTTOMMARGIN(double) : boolean; external 'ExcelLib3X.dll';
Function XLPAGESETUPSETHEADERMARGIN(double) : boolean; external 'ExcelLib3X.dll';
Function XLPAGESETUPSETFOOTERMARGIN(double) : boolean; external 'ExcelLib3X.dll';
// ��ࠬ���: xlPortrait, xlLandscape - �. Excel.inc
Function XLPAGESETUPSETORIENTATION(longint) : boolean; external 'ExcelLib3X.dll';
// ��ࠬ���: xlPaperXXX (xlPaperA4 ��� A4) - �. Excel.inc
Function XLPAGESETUPSETPAPERSIZE(longint) : boolean; external 'ExcelLib3X.dll';
//------------------------------------------------------------------------------
