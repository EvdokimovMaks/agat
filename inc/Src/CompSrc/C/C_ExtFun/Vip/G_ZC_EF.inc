//******************************************************************************
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 8.1 - ��ࠡ�⭠� ����
// ���ᠭ�� ��ॣ����஢����� �㭪権
//******************************************************************************

#ifdef Gal9_1
  #define G_ZarCache 'G_ZarCache.dll'
#else
  #define G_ZarCache 'ZC.DLL'
#end

//------------------------------------------------------------------------------
// ZARCACHE.PAS
//------------------------------------------------------------------------------
function CacheHolidays: boolean; external #G_ZarCache;
function CachePaymentKinds: boolean; external #G_ZarCache;
function GetHolidayType(date): byte; external #G_ZarCache;

//------------------------------------------------------------------------------
// �㭪樨 ��� �롮ન ������� ���ଠ樨 � ��楢�� ��� �� ��뫪� �� ����
// ��। �ᯮ�짮������ �㦭� ��墠��� �ਪ������ ���⥪�� "PaInfo"

// ⠡���� ����� ��楢��� ��� (1)
function GetPaClockNumber(comp): string; external #G_ZarCache;
// �⠭����� ���䨪� ���� "⠡. � XXX, ������ �.�." ��� ᮮ�饭�� � ��楢�� ��� (1)
function GetPaSuffix(comp): string; external #G_ZarCache;
// ��� 䨧��᪮�� ���, �� ���ண� ��ଫ�� ��楢�� ��� (1)
function GetPaPersonName(comp): string; external #G_ZarCache;

//------------------------------------------------------------------------------
// DEPTREE.PAS
//------------------------------------------------------------------------------
#define UseDepartmentTreeContext <p>��। �ᯮ�짮������ �㭪樨 �㦭� ��墠��� �ਪ������ ���⥪�� "DepatrmentTree".</p>

#doc
  �����頥� ��筥���� ������������ ���ࠧ������� DepartmentRef.</brief>

  #UseDepartmentTreeContext
#end
function GetDepartmentQualifiedName(DepartmentRef: comp): string; external #G_ZarCache;

#doc
  �����頥� ��筥���� ������������ ���ࠧ������� DepartmentRef.</brief>

  <p> ������ ���ࠧ������� ��ᬠ�ਢ����� �� ᫥���騬 �ࠢ����:

  <ul>
  <li> �᫨ Height < 0 - �� ��୥����, �����⥫쭮
  <li> �᫨ Height = 0 - ⮫쪮 ������������ ������� ���ࠧ�������
  <li> �᫨ Height = 1 - ������������ ������� ���ࠧ������� � ࠧ����⥫��, �᫨ �� ��୥���
  <li> �᫨ Height = 2 - �� ������饣�, �����⥫쭮
  <li> �᫨ Height = 3 - �� ������饣� ������饣�, �����⥫쭮
  <li> � �.�.;
  </ul></p>

  <p>  ����� ���ࠧ������� ࠧ�������� ��ப�� Divider � ᫥���� � ���浪�
  �� ������饣� � �������饬�, �᫨ PostOrder = false, ��� ��
  �������饣� � ������饬�, �᫨ PostOrder = true.  ������⢮ ᨬ����� �
  ��筥���� ������������ �� �ॢ�蠥� NameLimit, ��� �� ��࠭�祭�, �᫨
  NameLimit = 0.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentQualifiedNameExt(DepartmentRef: comp, Height: integer, Divider: string, PostOrder: boolean, NameLimit: integer): string; external #G_ZarCache;

#doc
  #UseDepartmentTreeContext
#end
function GetDepartmentReduction(DepartmentRef: comp, Depth: integer): comp; external #G_ZarCache;

#doc
  ����頥� ��㡨�� ���ࠧ������� � ����娨.</brief>

  #UseDepartmentTreeContext
#end
function GetDepartmentDepth(DepartmentRef: comp): integer; external #G_ZarCache;

#doc
  �����頥� true � ��뫪� �� ��� � Value ��� ���ࠧ�������, ��������� ��뫪��
  DepartmentRef.</brief>

  <p> ���ᬠ�ਢ����� ���, 㪠����� � ��ࠧ�� � ��⠫��� ���ࠧ�������,
  �ਢ易��� � �।�⠢���饬� ���ᮡ������ ���ࠧ������� 䨫����, ����
  ��࠭�� � ����⢥ ���祭�� ������������ ���譥�� ��ਡ��. ���� ��뫪�
  �����⢫���� � ��⮬ ����娨 ���ࠧ������� - �� ������� � ������騬.
  �᫨ �� � ����� �� 㯮������ ���筨��� ��뫪� �� �뫠 ������, �����頥�
  false.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentKpp(DepartmentRef: comp, var Value: comp): boolean; external #G_ZarCache;

#doc
  �����頥� true � ��뫪� �� �易���� � ���ࠧ�������� DepartmentRef
  �࣠������ � Value.</brief>

  <p> �᫨ � ������� �।����� ��� ����ᥩ, ����뢠��� ��� �������
  ���ࠧ������� (��� ������ �� ��������) � �����-���� �࣠����樥�, �����頥�
  false.</p>

  #UseDepartmentTreeContext
#end
function GetBoundOrganization(DepartmentRef: comp, var Value: comp): boolean; external #G_ZarCache;

#doc
  �����頥� true � ���祭�� ��ਡ�� "���⥫��� ������ �� ��室�" � Value ��
  ����뢠�饣� ��� "���ࠧ������� - �࣠������" 䨫����, � ��⮬ ����娨.</brief>

  <p> �᫨ � ������� �।����� ��� ����ᥩ, ����뢠��� ��� �������
  ���ࠧ������� (��� ������ �� ��������) � �����-���� �࣠����樥�, �����頥�
  false.</p>

  #UseDepartmentTreeContext
#end
function GetIncomeTaxPayer(DepartmentRef: comp, var Value: word): boolean; external #G_ZarCache;


#doc
  �����頥� true � ��뫪� �� ��� (���������⨢��-����ਠ�쭮�� �������)
  � Value ��� ���ࠧ�������, ��������� ��뫪�� DepartmentRef.</brief>

  <p> �����頥� ��뫪� �� ��� (��稭�� � ��������� ����� �� ����娨 ���ࠧ�������), ᮤ�ঠ�����
  � ���� ���ᮡ������� ���ࠧ�������, ���� � �ਤ��᪮� ���� �࣠����樨 (�易���� �
  ���ᮡ����� ���ࠧ��������). �᫨ �� � ����� �� ���ᮡ������ ���ࠧ������� ��� �易����
  � ���� �࣠������� ��뫪� �� ��� �� ��।�����, �����頥��� ��뫪� �� ��� ᮡ�⢥����
  �࣠����樨. �᫨ �� � ����� �� 㯮������ ���筨��� ��뫪� �� �뫠 ��।�����, �����頥� false.
  �ਬ�砭��: �᫨ DepartmentRef = 0, �����頥� ��� ᮡ�⢥���� �࣠����樨.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentATD(DepartmentRef: comp, var Value: comp): boolean; external #G_ZarCache;

#doc
  �����頥� true � ���祭�� ����� � Value ��� ���ࠧ�������, ��������� ��뫪��
  DepartmentRef.</brief>

  <p> �����頥� ����� ���ᮡ������� ���ࠧ�������, ���� ����� �易���� �࣠����樨,
  � ��⮬ ����娨 ���ࠧ������� ����� �� ���������. �᫨ ����� �� ��।����, �����頥�
  ����� ᮡ�⢥���� �࣠����樨. �᫨ �� � ����� �� 㯮������ ���筨��� ��뫪� �� �뫠
  ��।�����, �����頥� false.
  �ਬ�砭��: �᫨ DepartmentRef = 0, �����頥� ����� ᮡ�⢥���� �࣠����樨.</p>

  #UseDepartmentTreeContext
#end
function GetDepartmentOKATO(DepartmentRef: comp, var Value: string): boolean; external #G_ZarCache;

#doc
  �����頥� ��뫪� �� ������ ⠡���� � ��⥬�� ����� Value, �� ���ன ����
  ���祭�� ����� ��� ���ࠧ�������, ��������� ��뫪�� DepartmentRef.</brief>

  <p> �����頥� ��뫪� �� ���筨� ����祭�� �����: ���ᮡ������ ���ࠧ�������,
  �易���� � ��� �࣠������, � ��⮬ ����娨 ���ࠧ������� ����� �� ���������.</p>

  #UseDepartmentTreeContext
#end
function GetOwnerTaxOKATO(DepartmentRef: comp, var Value: word): comp; external #G_ZarCache;

//******************************************************************************
//                                                                  ZARCACHE.PAS
//******************************************************************************
#doc
  �����頥� ⨯ ����, ���ᠭ��� � �����䨪��� �ࠧ������ ����.</brief>
  <p> ���� �ਧ����� ᯥ樠���� ���:
  <ul>
  <li> 0 (htNone) - ��� ����� �� ���ᠭ�
  <li> 1 (htHoliday) - �ࠧ����
  <li> 2 (htMovedSaturday) - ��७�ᥭ��� �㡡�� (��� ���������� ���᪮� �� 5-������)
  <li> 3 (htWorking) - ࠡ�稩 ����
  <li> 4 (htMovedSunday) - ��७�ᥭ��� ����ᥭ� (��� ���������� ���᪮� �� 5- � 6-������)
  </ul></p>
#end
function GetSpecialDateType(D: date): byte; external #G_ZarCache;

//==============================================================================
// OMVIPFUNCS.PAS
//==============================================================================
// ����� ࠧ��� ��ଫ�� �� ��ࠧ�� ⠡��쭮� ���㬥��樨, G_WT_EF.inc
// �� ��� �� �� �⮫쪮 �������� 䠪�, ᪮�쪮 �����⥫쭮� �ॡ������.
//------------------------------------------------------------------------------

// ���㬥���� �� OM-�㭪�� ᮡ�ࠥ��� ⮫쪮 �� 9.1.
#if #__TOOLVERSION__ >= 5005.017
#define OMFUNCS_VIP_DOC
#endif

#ifdef OMFUNCS_VIP_DOC
#doc article OMFUNCS_About
  <brief>�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</brief>
  <p>
    �㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ�� �।�����祭� ��� ����祭�� ��� ��ਡ�⮢
    ������ ��ࠧ�� � ������ �����⬠�, ����� �⥭�� �� �� ����� KLREJIM
    ᮯ�殮�� � ������묨 ��㤭���ﬨ. ����� �㭪樨 �ᯮ����� ��� ०���� ࠡ��,
    �㤠 ����㦠���� ᮤ�ন��� �ᥣ� �����䨪���. ��� ���᪠ ���ᠭ�� �㦭��� ०��� ࠡ���
    � ��� �ਬ������ ������ ����.
  </p>
  <p>
    ��� �ᯮ�짮����� ������ �㭪権 �� ࠧࠡ�⪥ �� �몥 VIP ����室���
    <a href="art--OMFUNCS_ContextsExample.htm">��墠��� �ਪ������ ���⥪�� <code>'OperatingModes'</code></a>.
    �� �ᯮ�짮����� �㭪権 � �����⬠� ���짮��⥫� �⮣� ������ �� �㦭� -
    �� ����� ����� ���⥪�� ��墠�뢠���� ��⮬���᪨.
  </p>

  <h3>���祭� �㭪権 ����祭�� ��ਡ�⮢ ०���� ࠡ��</h3>
  <code><a href="exf--OM_AvgMonthHours.htm">OM_AvgMonthHours</a></code> <br />
  <code><a href="exf--OM_BalancedRejim.htm">OM_BalancedRejim</a></code> <br />
  <code><a href="exf--OM_GetCalendarOnDate.htm">OM_GetCalendarOnDate</a></code> <br />
  <code><a href="exf--OM_Hours.htm">OM_Hours</a></code> <br />
  <code><a href="exf--OM_Interval.htm">OM_Interval</a></code> <br />
  <code><a href="exf--OM_Minutes.htm">OM_Minutes</a></code> <br />
  <code><a href="exf--OM_NotFullWorkingDay.htm">OM_NotFullWorkingDay</a></code> <br />
  <code><a href="exf--OM_NRec.htm">OM_NRec</a></code> <br />
  <code><a href="exf--OM_OverworkCalculation.htm">OM_OverworkCalculation</a></code> <br />
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
  <code><a href="exf--OM_PeriodSummedOverwork.htm">OM_PeriodSummedOverwork</a></code> <br />
  <code><a href="exf--OM_ScheduleType.htm">OM_ScheduleType</a></code> <br />
  <code><a href="exf--OM_WeekendSymbolicNotation.htm">OM_WeekendSymbolicNotation</a></code> <br />
  <code><a href="exf--OM_WorkedHoursCoef.htm">OM_WorkedHoursCoef</a></code> <br />

  <h3>��㣨� �㭪樨</h3>
  <code><a href="exf--OM_Exists.htm">OM_Exists</a></code> <br />
  <code><a href="exf--RereadOperatingModes.htm">RereadOperatingModes</a></code> <br />
#end

#doc article OMFUNCS_ContextsExample
  <brief>��墠� �ਪ������� ���⥪�� ��� �㭪権 ����祭�� ��ਡ�⮢ ०���� ࠡ��</brief>
  <p>
    � ������ ���� �।�⠢��� ��ࠧ�� �������権 ��� ��室�� ����� VIP-����䥩�,
    ����� ���ᯥ稢��� � ��࠭����� ���४��� ࠡ���
    <a href="art--OMFUNCS_About.htm">OM_-�㭪権</a>
    � ������ ����䥩�.
  </p>

  <pre class="example">
  // 1. ��������� ���������� 䠩�:
  &#35;include Contexts.vih // �ਪ����� ���⥪���

  interface Example;

  // 2. �������� ��������� ��६����� � ����䥩�:
  var
    CS: IContextSession;

  ...

  handleEvent // ����䥩�
  cmInit:
  {
    // 3. �������� ᫥���騥 ��ப� � ��ࠡ��稪 ���樠����樨 ����䥩�:

    var CL: ContextList;
    // ��墠� �ਪ������ ���⥪�⮢
    if (not CL.Add(CS, 'OperatingModes'))
    {
      abort;
      exit;
    }

    ...
  }

  ...

  end;
  end.
  </pre>

  <h3>����砭��</h3>
  <p>
    �� ࠧࠡ�⪥ �� �몥 VIP �㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ�� ����� ���������
    �� ᠬ� ��䥪⨢�� ᯮᮡ�� ����祭�� ��� ��ਡ�⮢, ��᪮��� ���ன�⢮
    ������ �㭪権 ���ࠧ㬥���� ����㧪� �� �� �ᥣ� �����䨪��� � ������.
    � �믮������ ������ ������ �� ������ ��墠� ���⥪�� <code>OperatingModes</code>.
    �� �⮣� ᫥���, �� � ����������� �ᯮ�짮����� OM_-�㭪権 � ��� ����䥩�
    �६� ����㧪� ����� ���६���� 㢥������. ���⮬�, �᫨ �����䨪��� ᮤ�ন� ����� ����ᥩ,
    � ��� �襭�� ����� �㦭� ����� ��ਡ��� � ������-���� ०���� ࠡ��,
    ����� ��䥪⨢�� ᯮᮡ�� �㤥� ᠬ����⥫�� <code>getfirst</code>
    KLREJIM-� � ��᫥���騬 �⥭��� ��ਡ�⮢ ��אַ ���㤠.
  </p>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� <code>true</code>, �᫨ ०�� ࠡ��� � ����� <code>RejimCode</code> ������� � ��.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_Exists(RejimCode: word): boolean; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� <code>NRec</code> ����� ⠡���� KLREJIM, ����뢠�饩
    ०�� ࠡ��� � ����� <code>RejimCode</code>.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_NRec(RejimCode: word): comp; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ��� ��������� (�.�. �����᭮��) ०��� ࠡ��� ��� ०��� � ����� <code>RejimCode</code>.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>����砭��</h3>
  <p>
    �᫨ ������� ०�� �� 㪠���, �� � ��饬 ��砥 ����砫� ��, �� ०�� ࠡ���
    <code>RejimCode</code> ���� ������� �� �⭮襭�� � ᠬ��� ᥡ�, ������ �㭪��
    ����� <code>0</code>.
  </p>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_BalancedRejim(RejimCode: word): word; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� <code>true</code>, �᫨ � ०��� ࠡ��� � ����� <code>RejimCode</code>
    ���⠢��� �ਧ��� "������� ࠡ�稩 ����".</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_NotFullWorkingDay(RejimCode: word): boolean; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ���祭�� ���� "���ࢠ�" ��� ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>�����頥��� ���祭��</h3>
  <p>�������� ��ਠ��� ���ࢠ�� �ਢ����� � ⠡���:</p>
  <table>
    <tr> <td>���祭��</td> <td>���ᠭ��</td> </tr>
    <tr> <td><code>0</code></td> <td>���⮥ ���祭��</td> </tr>
    <tr> <td><code>1</code></td> <td>"����"</td> </tr>
    <tr> <td><code>2</code></td> <td>"������"</td> </tr>
  </table>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
  <code><a href="exf--OM_Hours.htm">OM_Hours</a></code> <br />
  <code><a href="exf--OM_Minutes.htm">OM_Minutes</a></code> <br />
#end
#endif
function OM_Interval(RejimCode: word): integer; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ������⢮ "��ᮢ" ��� ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>
  <p>
    ������ ����稭� �������� �����।�⢥��� � ०��� ࠡ��� � �।�⠢��� ᮡ��
    ���� �த����⥫쭮�� "���ࢠ��" (<code><a href="exf--OM_Interval.htm">OM_Interval</a></code>).
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
  <code><a href="exf--OM_Minutes.htm">OM_Minutes</a></code> <br />
  <code><a href="exf--OM_Interval.htm">OM_Interval</a></code> <br />
#end
#endif
function OM_Hours(RejimCode: word): integer; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ������⢮ "�����" ��� ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>
  <p>
    ������ ����稭� �������� �����।�⢥��� � ०��� ࠡ��� � �।�⠢��� ᮡ��
    ���� �த����⥫쭮�� "���ࢠ��" (<code><a href="exf--OM_Interval.htm">OM_Interval</a></code>).
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
  <code><a href="exf--OM_Hours.htm">OM_Hours</a></code> <br />
  <code><a href="exf--OM_Interval.htm">OM_Interval</a></code> <br />
#end
#endif
function OM_Minutes(RejimCode: word): integer; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ⨯ ��䨪�� ��� ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>�����頥��� ���祭��</h3>
  <p>�������� ��ਠ��� �ਢ����� � ⠡���:</p>
  <table>
    <tr> <td>���祭��</td> <td>���ᠭ��</td> </tr>
    <tr> <td><code>0</code></td> <td>��௫��� ��䨪�</td> </tr>
    <tr> <td><code>1</code></td> <td>�����⥬�� ��䨪�</td> </tr>
  </table>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_ScheduleType(RejimCode: word): word; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ⨯ ��� ᢥ������� �ᮢ ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>
  <p>
    ������ �㭪�� �����頥� ���祭�� ��ਡ�� � ⠪�� ����, � ���஬ �� ᮤ�ন��� � ᠬ��
    ०��� ࠡ���, � ���� �᫨ 㪠���� "�� ����ன��", � � ������ �㭪�� �����, ��
    "�� ����ன��", � "����ன��" � ⠪�� ��砥 �㦭� �㤥� �������஢��� ᠬ����⥫쭮.
    �᫨ �㦭� 㧭��� ⨯ ��� ᢥ������� �ࠧ� � ��⮬ "����ன��", � �������� �㭪��
    <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code>.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>�����頥��� ���祭��</h3>
  <p>�㭪�� ����� �������� ���� �� ᫥����� ���祭��:</p>
  <table>
    <tr> <td>���祭��</td> <td>���ᠭ��</td> </tr>
    <tr> <td><code>0</code></td> <td>�� ����ன��</td> </tr>
    <tr> <td><code>1</code></td> <td>�����</td> </tr>
    <tr> <td><code>2</code></td> <td>�㬬�஢����</td> </tr>
  </table>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
#end
#endif
function OM_OverworkCalculation(RejimCode: word): word; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� <code>true</code>, �᫨ ��� ᢥ������� ��� ०��� ࠡ���
    � ����� <code>RejimCode</code> �㬬�஢����.</brief>
  <p>
    ������ �㭪�� 㤮��� � �� �����, ����� �� ����� ࠧ��稥, 㪠��� �� � ०��� ࠡ���
    ������� ᯮᮡ ��� ᢥ�������, ���� ���⠢���� "�� ����ன��".
    ���祭�� ����ன�� ("��ࠢ����� ���ᮭ���� \ ������� ��� \ ����� �⮣�� \ �㬬�஢���� ��� ᢥ������� �ᮢ")
    ��⮬���᪨ ���뢠���� ������ �㭪樥� �� ��� ���������.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>�����頥��� ���祭��</h3>
  <p>
    <code>true</code>, �᫨ �㬬�஢���� ���, � <code>false</code>, �᫨ �����.
  </p>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
  <code><a href="exf--OM_OverworkCalculation.htm">OM_OverworkCalculation</a></code> <br />
  <code><a href="exf--OM_PeriodSummedOverwork.htm">OM_PeriodSummedOverwork</a></code> <br />
#end
#endif
function OM_OverworkCalculationSummed(RejimCode: word): boolean; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ��ਮ� ��� ᢥ������� �� �㬬�஢����� ��� ��� ०��� ࠡ���
    � ����� <code>RejimCode</code>.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>�����頥��� ���祭��</h3>
  <p>��ਮ� ��� ᢥ������� ��ࠦ����� ����� �� ᫥����� ����⠭�:</p>
  <table>
    <tr> <td>����⠭�</td>                <td>���祭��</td>       <td>���ᠭ��</td> </tr>
    <tr> <td><code>psoMonth</code></td>    <td><code>0</code></td> <td>�����</td> </tr>
    <tr> <td><code>psoQuarter</code></td>  <td><code>1</code></td> <td>����⠫</td> </tr>
    <tr> <td><code>psoHalfYear</code></td> <td><code>2</code></td> <td>���㣮���</td> </tr>
    <tr> <td><code>psoYear</code></td>     <td><code>3</code></td> <td>���</td> </tr>
  </table>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
  <code><a href="exf--OM_OverworkCalculationSummed.htm">OM_OverworkCalculationSummed</a></code> <br />
#end
#endif
function OM_PeriodSummedOverwork(RejimCode: word): byte; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� <code>NRec</code> ��������� ��� �ନ஢���� ��䨪� �� ०��� ࠡ���
    � ����� <code>RejimCode</code>.</brief>
  <p>
    �㭪�� �����頥� <code>NRec</code> �����⥬���� ��������� (⠡��� CALENDAR),
    �ᯮ����饣��� �� �ନ஢���� ��䨪� �� ०��� ࠡ��� � ����� <code>RejimCode</code>,
    �� ���� <code>ADate</code>.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
    <li><code>ADate</code> - ���, �� ������ �㦭� 㧭��� ���������</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_GetCalendarOnDate(RejimCode: word, ADate: Date): comp; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� �।��� ������⢮ �ᮢ � ����� ��� ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>
  <p>
    �㭪�� �����頥� ����稭�, �����।�⢥��� �������� � ᠬ�� ०��� ࠡ���.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_AvgMonthHours(RejimCode: word): double; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� ��뫪� �� �᫮���� ������祭�� ��室���� ��� ०��� ࠡ���
    � ����� <code>RejimCode</code>.</brief>
  <p>
    �㭪�� �����頥� ��뫪� �� ������ �����䨪��� �᫮���� ������祭�� ⠡���
    (⠡��� UOWRKTABEL). � ��砥, �᫨ � ०��� �� �ਢ易�� �ᮡ�� ������祭��
    ��室����, � ��⠢���� �⠭���⭮�, ������ �㭪�� �㤥� �������� <code>0</code>.
  </p>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_WeekendSymbolicNotation(RejimCode: word): comp; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�����頥� �����樥�� 䠪��᪮�� �६��� ०��� ࠡ��� � ����� <code>RejimCode</code>.</brief>

  <h3>��ࠬ����</h3>
  <ul>
    <li><code>RejimCode</code> - ��� ०��� ࠡ���</li>
  </ul>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function OM_WorkedHoursCoef(RejimCode: word): double; external #G_ZarCache;

#ifdef OMFUNCS_VIP_DOC
#doc
  <brief>�������� ᮤ�ন��� ��� ०���� ࠡ��</brief>
  <p>
    �맮� ������ �㭪樨 �ந�室�� ��⮬���᪨ ��
    <a href="art--OMFUNCS_ContextsExample.htm">��墠� �ਪ������� ���⥪��</a>
    ��� <a href="art--OMFUNCS_About.htm">�㭪権 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a>,
    ���⮬� �� ����㧪� ����䥩�, �ᯮ����饣� OM_-�㭪樨,
    ��뢠�� <code>RereadOperatingModes</code> �� �㦭�: ��墠� ���⥪�� ᠬ ���ᯥ��
    ���������� ���. �㭪�� ���室�� ��� �� ��砥�, ����� �ந�室�� ���������
    ��ਡ�⮢ ०���� ࠡ�� � ��, � �㦭� ���墠��� �� ���������.
  </p>

  <h3>�����頥��� ���祭��</h3>
  <p>
    �����頥� <code>true</code>, �᫨ 䠪��᪨ �ந��諮 ���������� ᮤ�ন���� ���.
    �� �ࠪ⨪� �� ����砥�, �� �᫨ �ਪ������ ���⥪�� ०���� ࠡ��
    ��墠祭 �� ������ �맮��, � �ᥣ�� �㤥� ���������� <code>true</code>,
    � ���� - <code>false</code>.
  </p>

  <h3>��. ⠪��</h3>
  <a href="art--OMFUNCS_About.htm">�㭪樨 ����祭�� ��ਡ�⮢ ०���� ࠡ��</a> <br />
#end
#endif
function RereadOperatingModes: boolean; external #G_ZarCache;
