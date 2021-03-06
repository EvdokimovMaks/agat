//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1 - ��ࠡ�⭠� ����
// �㭪樨 ��� ࠡ��� � 楯�窠�� ����
//------------------------------------------------------------------------------

#define G_ZARCACHE 'G_ZARCACHE.DLL'

#doc article LDSAPI_About
  <brief>����窨 ����</brief>
  <p>
    �㭪樮��� ࠡ��� � 楯�窠�� ���� �㦨� ��� ���ᠭ�� ࠡ��� ᬥ�,
    ���室��� �� ᫥���騥 ��⪨, � ���㫥 ��ࠡ�⭠� ����. ����� ᬥ��
    �।�⠢������ ��� �易������ ���� ��᫥����⥫쭮 ����� ���� ��� � ��㣮�.
  </p><p>
    �㭪樮��� �������� ���� ᫥���騥 �����:
  </p>
  <ul>
    <li><b>������� �।�⠢����� ������</b> - ��室�� ����� � �易����� ����,
    �࠭�騥�� � ���� ��⮢�� ��᪨, �।�⠢������ � ���� ⨯�� �易����� ����
    �� ��� �����. � ⠪�� ���� ���������� ।���஢��� �易������ ����,
    � ��࠭��� ��������� ����� ���⭮ � ��⮢�� ����.</li>
    <li><b>����஫� 楫��⭮�� ������</b> - �������� ��⮬���᪨ ������
    ����� � �易����� ���� � ᫥���饬 ��� �।��饬 ����� ࠡ���,
    � ��砥 ��������� ⨯� �易����� �ࠩ��� ���� ⥪�饣� �����.
    ����� ��ࠧ��, ᬥ��, ���室���� �� ᫥���騩 �����, �����筮 �����
    ⮫쪮 � ����� �����, � � �ᥤ��� ��� ����� ��⮬���᪨.
    ���� ᮡ��, �������筠� ��ࠡ�⪠ � ���������� ⨯� �易����� �ᥤ��� ����
    �ந�室�� � � ࠬ��� ������ �����.</li>
    <li><b>����஫� ࠡ��� ����</b> - ���ᯥ稢��� ��뢠��� ࠡ�稬� ᬥ����
    ⮫쪮 ࠡ��� ����, � �� �������� ��뢠�� ��室��� ���� � ࠡ�稬 ��� ��室���
    � ��室��.</li>
    <li><b>��᫥������� ���������</b> - �������� �����㦨�� ��������� ������
    � �易����� ����, � ⮬ �᫥ ��� �� ��砥�, ����� ��������� �ந�室��
    ���.</li>
    <li><b>��ࠢ����� �訡��</b> - �᫨ �� �����-���� ��稭�� �����
    � ࠡ��� ���� � � �易����� ���� ᬥ���� �뫨 ��ᨭ�஭���஢���,
    �������� ��⮬���᪨ �ਢ��� ����� � �易����� ���� � ���४⭮�� ����.</li>
  </ul>
  <p>
    �㭪樨 ��� ࠡ��� � 楯�窠�� ���� (�� �᪫�祭��� �㭪権 ᮧ����� � 㭨�⮦����)
    ��稭����� � ��䨪� LDS_ (Linked Days Sequence). ���饭�� � ⮬� ��� �����
    ���������� 楯�窨 ���� �ந�室�� �� ������ ⨯� <code>longint</code>,
    ����� �뤠���� �� ᮧ����� 楯�窨 (<code><a href="exf--CreateLDS.htm">CreateLDS</a></code>).
    ��ଠ��� ࠡ�稩 ����� �ᥣ�� ���㫥���, ���⮬� �㫥�� ���祭�� ����� �ᯮ�짮����
    ��� ���ᠭ�� ������⢨⥫��� �������. ������ �������� ��� �ਫ������
    (��� �����஢����� ���⥪����: ��� ������ ���짮��⥫�).
    �� ����砭�� ࠡ��� � ��������஬ 楯�窨 ᫥��� 㭨�⮦��� ��, �맢�� �㭪��
    <code><a href="exf--DestroyLDS.htm">DestroyLDS</a></code>.
    ���� �।�⠢��� ���祭� �㭪権 ��� ࠡ��� � 楯�窠�� ����
  </p>
  <p>
    ��������, 㭨�⮦����
  </p>
  <code><a href="exf--CreateLDS.htm">CreateLDS</a></code> <br />
  <code><a href="exf--DestroyLDS.htm">DestroyLDS</a></code> <br />
  <p>
    �㭪樨 �।���⥫쭮� ����ன��. �� �ॡ��� ᮣ��ᮢ������ ������ ��� ᢮�� ࠡ���.
  </p>
  <code><a href="exf--LDS_GetCount.htm">LDS_GetCount</a></code> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
  <code><a href="exf--LDS_Insert.htm">LDS_Insert</a></code> <br />
  <code><a href="exf--LDS_Remove.htm">LDS_Remove</a></code> <br />
  <code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a></code> <br />
  <code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code> <br />
  <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code> <br />
  <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code> <br />
  <code><a href="exf--LDS_UnlinkNext.htm">LDS_UnlinkNext</a></code> <br />
  <code><a href="exf--LDS_UnlinkPrevious.htm">LDS_UnlinkPrevious</a></code> <br />
  <p>
    �᭮��� �㭪樨. ��� ���४⭮� ࠡ��� �ॡ���, �⮡� ����� ��室����� � ᮣ��ᮢ�����
    ���ﭨ�.
  </p>
  <code><a href="exf--LDS_GetDayKind.htm">LDS_GetDayKind</a></code> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
  <code><a href="exf--LDS_CanSetDayKind.htm">LDS_CanSetDayKind</a></code> <br />
  <code><a href="exf--LDS_Glue.htm">LDS_Glue</a></code> <br />
  <code><a href="exf--LDS_CanGlue.htm">LDS_CanGlue</a></code> <br />
  <code><a href="exf--LDS_Split.htm">LDS_Split</a></code> <br />
  <code><a href="exf--LDS_CanSplit.htm">LDS_CanSplit</a></code> <br />
  <p>
    ��稥 �㭪樨
  </p>
  <code><a href="exf--LDS_IsModified.htm">LDS_IsModified</a></code> <br />
  <code><a href="exf--LDS_SetModified.htm">LDS_SetModified</a></code> <br />
  <code><a href="exf--LDS_LoadFromMask.htm">LDS_LoadFromMask</a></code> <br />
  <code><a href="exf--LDS_StoreToMask.htm">LDS_StoreToMask</a></code> <br />
  <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code> <br />

  <h3>�ਬ���</h3>
  <p>
    � ᠬ�� ���⮬ ��砥, �᫨ �� �।��������, �� �࠭�騥�� � �� �����
    �������� ���४��, � �� �� ᮡ�ࠥ��� ��祣� ������, ��� ࠡ��� �����������
    ᮢᥬ ������� �㭪権 (�� �᫮���, �� ��㣨� �㭪樨 �ᯮ�짮������ �� ����):
  </p>
  <pre class=example>
    var OperatingMode: word;
    var aMonth, aYear: integer;
    var hLDS: longint;
    ...
    hLDS := CreateLDS; // ᮧ���� 楯���
    ...
    // ��࣠�� ��䨪 ࠡ�� �� �㦭� ��� �����
    if (getfirst KLNDR where ((
                               OperatingMode == KLNDR.REJIM
                               and aYear     == KLNDR.YEARK
                               and aMonth    == KLNDR.MONTHK
                             )) = tsOk)
    {
      // ��⠭���� ���-�� ����
      LDS_SetCount(hLDS, Last_Day(Date(1, aMonth, aYear)));
      // ����㦠�� ����� � �易����� ���� ࠡ�稬� ᬥ���� ��� � ��㣮�
      LDS_LoadFromMask(hLDS, KLNDR.FILIALNO);
      // ������ ����� 㧭����� ⨯� �易����� ����
      ...
      // ��室���� �� �� 15-� �᫮ ࠡ��� ᬥ��, ���室���
      // �� ᫥���騥 ��⪨, ���� � �।���� ��⮪:
      if (LDS_GetDayKind(hLDS, 15) <> ldkNone)
        ...
    }
    ...
    DestroyLDS(hLDS); // �᢮������ ������
  </pre>

  <p>
    �᫨ �� �ॡ���� ���ᯥ��� ���४⭮� ��������� ������, ����室��� ������⢮����
    ���� ��ᥭ�� �㭪権. �ਬ�� �����뢠�� ����ன�� 楯�祪 ��� ���������� ���������
    �易����� ���� � �����஬ �����.
  </p>
  <pre class=example>
    var MonthPrev, YearPrev, MonthCur, YearCur, MonthNext, YearNext: integer;
    var OperatingMode: word;
    // ����窨 ���� �।��饣� �����, ⥪�饣�, ᫥���饣�
    var hLDSPrev, hLDSCur, hLDSNext: longint;

    ...

    procedure Init; // �맢��� ��। ��砫�� ࠡ��� � 楯�窠��
    {
      // ������� 楯�窨
      hLDSPrev := CreateLDS;
      hLDSCur  := CreateLDS;
      hLDSNext := CreateLDS;
      // �ਢ�뢠�� �ࠩ��� � 業�ࠫ쭮�
      LDS_LinkNext(hLDSCur, hLDSNext);
      LDS_LinkPrevious(hLDSCur, hLDSPrev);
    }

    ...

    // ��� ����㧪� ����室���� ���ଠ樨 �� ��䨪� ࠡ���
    procedure LoadFromKLNDR(hLDS: longint; OperatingMode: word; aMonth, aYear: integer);
    {
      if (getfirst KLNDR where ((OperatingMode == KLNDR.REJIM
                                 and aMonth    == KLNDR.MONTHK
                                 and aYear     == KLNDR.YEARK)) = tsOk)
      {
        // ��⠭���� ������⢮ ����, ᮮ⢥��⢥��� ������
        LDS_SetCount(hLDS, Last_Day(Date(1, aMonth, aYear)));
        // ����㧨� ����� � �易����� ����
        LDS_LoadFromMask(hLDS, KLNDR.FILIALNO);
        // ������, ����� ��� ����� ���⢮���� � ���� � �ᥤ����
        var i: integer;
        for (i := 1; i <= LDS_GetCount(hLDS); i++)
          LDS_SetDayLinkable(hLDS, i, KLNDR.DAYCHAS[i] + KLNDR.DAYMIN[i] / 60 > 0.0);
      }
      else
      {
        // �� 㬮�砭�� �㤥� �����, �� �� ��� ����� ���⢮���� � ����,
        // � �� ���� ���� �� �易� � �ᥤ����. ���� �񣪨� ᯮᮡ �������� �⮣� -
        // "��������" 楯��� ����:
        LDS_SetCount(hLDS, 0);
        LDS_SetCount(hLDS, Last_Day(Date(1, aMonth, aYear)));
      }
    }

    // ���࠭�� ����� � �易����� ���� � ��䨪�� ࠡ��� � ��砥 ������ ���������
    procedure SaveToKLNDR(hLDS: longint; OperatingMode: word; aMonth, aYear: integer);
    {
      if (LDS_IsModified(hLDS))
      {
        var mask: longint;
        LDS_StoreToMask(hLDS, mask);

        if (update KLNDR where ((OperatingMode == KLNDR.REJIM
                                 and aMonth    == KLNDR.MONTHK
                                 and aYear     == KLNDR.YEARK))
                         set KLNDR.FILIALNO := mask) <> tsOk {}
      }
    }

    // �᭮���� ��楤��: ����ࠨ���� 楯�窨 ��� ।���஢���� �易����� ����
    // ����� MonthCur, �ந������ ।���஢����, ��࠭�� ���������
    procedure Example;
    {
      // ����뢠�� �ਧ���� ����䨪�樨
      LDS_SetModified(hLDSPrev, false);
      LDS_SetModified(hLDSCur, false);
      LDS_SetModified(hLDSNext, false);

      // ����㧨� ����� � �易����� ���� � � ⮬, ����� �� ��� ࠡ�稬�
      LoadFromKLNDR(hLDSPrev, OperatingMode, MonthPrev, YearPrev);
      LoadFromKLNDR(hLDSCur, OperatingMode, MonthCur, YearCur);
      LoadFromKLNDR(hLDSNext, OperatingMode, MonthNext, YearNext);
      // ������ "���뢠�� �����":
      LDS_Refresh(hLDSPrev);
      LDS_Refresh(hLDSNext);
      LDS_Refresh(hLDSCur); // � ��᫥���� ��।�, �.�. ��ࠢ����� �訡�� � hLDSCur
      // ����� �������� �� �ਢ易��� 楯�窨 hLDSPrev � hLDSNext.

      // ��᫥ 祣� ����� �ᯮ�짮���� �㭪樨 ����� � hLDSCur.

      ...

      // C������ ᬥ��, ���室���� � 8 �� 9 �᫮:
      LDS_SetDayKind(hLDSCur, 8, ldkFirstDay);
      // ��㣨� ᯮᮡ�:
      // LDS_SetDayKind(hLDSCur, 9, ldkLastDay);
      // LDS_Glue(hLDSCur, 8);

      ...

      // �� ����砭�� ࠡ��� ��࠭��� ��������� �����
      SaveToKLNDR(hLDSPrev, OperatingMode, MonthPrev, YearPrev);
      SaveToKLNDR(hLDSCur, OperatingMode, MonthCur, YearCur);
      SaveToKLNDR(hLDSNext, OperatingMode, MonthNext, YearNext);
    }

    ...

    procedure Done; // �맢��� �� ����砭�� ࠡ�� � 楯�窠��
    {
      // �᢮������� ������
      DestroyLDS(hLDSPrev);
      DestroyLDS(hLDSCur);
      DestroyLDS(hLDSNext);
    }

    ...

  </pre>

  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_DayKinds.htm">���� �易����� ����</a> <br />
#end

#doc article LDSAPI_DayKinds
  <brief>���� �易����� ����</brief>
  <p>���� �।�⠢���� ����⠭��, ����뢠�騥 �易������ ����</p>
  <table>
    <tr> <td>����⠭�</td> <td>���祭��</td> <td>���ᠭ��</td> </tr>
    <tr> <td><code>ldkNone</code></td>      <td><code>0</code></td>  <td>���������� ᬥ��, ���室�騥 �� �ᥤ��� ��⪨</td> </tr>
    <tr> <td><code>ldkFirstDay</code></td>  <td><code>1</code></td>  <td>���� ���� ᬥ��: ᬥ�� ��稭����� � ��� ����, �����稢����� � ᫥���饬</td> </tr>
    <tr> <td><code>ldkLastDay</code></td>   <td><code>2</code></td>  <td>��ன ���� ᬥ��: ᬥ�� ��砫��� �� ���� �� �⮣� ���, �����稫��� � ��� ����</td> </tr>
    <tr> <td><code>ldkTwoShifts</code></td> <td><code>3</code></td>  <td>��� ᬥ�� � �祭�� ����� ��⮪: ���� ���諠 � ����� ��⮪, ��㣠� ��३��� �� ᫥���騥</td> </tr>
  </table>

  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_GetDayKind.htm">LDS_GetDayKind</a></code> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
#end

#doc
  <brief>������� ��������� 楯�窨 ����</brief>
  <p>
    ��������� ����� 楯�窠, ᮤ�ঠ�� <code>0</code> (����) ����,
    � � ��襭�� <a href="exf--LDS_IsModified.htm">�ਧ����� ����䨪�樨</a>.
  </p>
  <h3>�����頥��� ���祭��</h3>
  <p>
    ����� ᮧ������ 楯�窨.
  </p>
  <h3>����砭��</h3>
  <p>
    ����祭��� ���祭�� ����室��� ��࠭��� ��� ��᫥���饣�
    <a href="exf--DestroyLDS.htm">㭨�⮦���� 楯�窨</a>, ���� �������� ��窠 �����.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--DestroyLDS.htm">DestroyLDS</a></code> <br />
#end

function CreateLDS: longint; external #G_ZARCACHE;

#doc
  <brief>����⮦��� 楯��� ����</brief>
  <p>
    ����⮦��� 楯��� ����
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
  </ul>
  <h3>�����頥��� ���祭��</h3>
  <p>
    ����⢮���� �� 楯�窠 � ⠪�� �������
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--CreateLDS.htm">CreateLDS</a></code> <br />
#end
function DestroyLDS(objId: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>�����頥� ������⢮ ���� � 楯�窥</brief>
  <p>
    �����頥� ������⢮ ���� � 楯�窥
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
  </ul>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
#end
function LDS_GetCount(objId: longint): longint; external #G_ZARCACHE;

#doc
  <brief>��⠭����� ������⢮ ���� � 楯�窥</brief>
  <p>
    ��⠭�������� ������⢮ ���� � 楯�窥.
    <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a> �� ���������.
    �᫨ �ந�室�� 㢥��祭�� ������⢠ ����, � ���������� ��� �� 㬮�砭��
    ����� <a href="art--LDSAPI_DayKinds.htm">⨯</a> <code>ldkNone</code>,
    � ������� ࠧ�襭�묨 ��� ��뢠���
    (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = true</code>).
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>value</code> - ����� ������⢮ ���� � 楯�窥</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    ������ ����⢨� ����� ������� ᮣ��ᮢ������� ������, ���⮬� �� ����砭�� �������権
    ����室��� �맢��� <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_GetCount.htm">LDS_GetCount</a></code> <br />
  <code><a href="exf--LDS_Insert.htm">LDS_Insert</a></code> <br />
  <code><a href="exf--LDS_Remove.htm">LDS_Remove</a></code> <br />
#end
procedure LDS_SetCount(objId: longint, value: longint); external #G_ZARCACHE;

#doc
  <brief>��⠢��� ��� � 楯���</brief>
  <p>
    ��⠢��� <code>daysCount</code> ����� ���� � 楯��� <code>objId</code>,
    � ������ ��। ��� ��� ����஬ <code>beforeDay</code>.
    <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a> �� ���������.
    ���������� ��� �� 㬮�砭�� ����� <a href="art--LDSAPI_DayKinds.htm">⨯</a>
    <code>ldkNone</code>, � ������� ࠧ�襭�묨 ��� ��뢠���
    (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = true</code>).
  </p><p>
    ��� ��⠢�� ���� � ����� 楯�窨 ᫥��� ��।��� ���祭��, ࠢ���
    <code>(<a href="exf--LDS_GetCount.htm">LDS_GetCount</a> + 1)</code>
    � ��ࠬ��� <code>beforeDay</code>. ��� �ᯮ�짮���� �㭪��
    <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code>,
    ����� �� ��� ᤥ���� � �� ᠬ��.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>beforeDay</code> - ����, ��। ����� ��⠢���. ��� �㬥������ � �������.</li>
    <li><code>daysCount</code> - ᪮�쪮 ���� ��⠢���</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    ������ ����⢨� ����� ������� ᮣ��ᮢ������� ������, ���⮬� �� ����砭�� �������権
    ����室��� �맢��� <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_Remove.htm">LDS_Remove</a></code> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
#end
procedure LDS_Insert(objId: longint, beforeDay: longint, daysCount: longint); external #G_ZARCACHE;

#doc
  <brief>�᪫���� ��� �� 楯�窨</brief>
  <p>
    ������ �� 楯�窨 <code>objId</code> <code>daysCount</code> ����,
    ��稭�� � ��� <code>firstDay</code>.
    <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a> �� ���������.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>firstDay</code> - ����, ��稭�� � ���ண� 㤠����. ��� �㬥������ � �������</li>
    <li><code>daysCount</code> - ᪮�쪮 ���� 㤠����</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    ������ ����⢨� ����� ������� ᮣ��ᮢ������� ������, ���⮬� �� ����砭�� �������権
    ����室��� �맢��� <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_Insert.htm">LDS_Insert</a></code> <br />
  <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code> <br />
#end
procedure LDS_Remove(objId: longint, firstDay: longint, daysCount: longint); external #G_ZARCACHE;

#doc
  <brief>����� �� ���� ���⢮���� � �裡</brief>
  <p>
    �����頥� <code>true</code>, �᫨ ���� <code>day</code> 楯�窨
    �� ����祭, ��� ����騩 ���⢮���� � �裡 (� ����, ���� ࠡ�稬 ���),
    <code>false</code> � ��⨢��� ��砥. �� 㬮�砭��, �᫨ � �������
    <code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code>
    �� �뫮 ������ ���⭮�, �� ��� 楯�窨 ����� ���⢮���� � �裡.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>day</code> - ����� ��� 楯�窨. ��� �㬥������ � �������.</li>
  </ul>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code> <br />
#end
function LDS_IsDayLinkable(objId: longint, day: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>��⠭�����, ����� �� ���� ���⢮���� � �裡</brief>
  <p>
    �������� ������, ����� �� �� ��� ���� ���� 楯�窨 ��뢠���� ࠡ�稬� ᬥ����
    � �ᥤ���� ��ﬨ; ��묨 ᫮����, ���� �� ���� ࠡ�稬.
    <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a> �� ���������.
    �� 㬮�砭�� �� ��� 楯�窨 ������� ࠡ�稬�.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>day</code> - ����� ��� 楯�窨. ��� �㬥������ � �������.</li>
    <li><code>value</code> - <code>true</code>, �᫨ ������� ��� ࠧ�蠥���
    ����� ���室�騥 ࠡ�稥 ᬥ��; <code>false</code>, �᫨ ����頥���.</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    ������ ����⢨� ����� ������� ᮣ��ᮢ������� ������, ���⮬� �� ����砭�� �������権
    ����室��� �맢��� <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a></code> <br />
#end
procedure LDS_SetDayLinkable(objId: longint, day: longint, value: boolean); external #G_ZARCACHE;

#doc
  <brief>��ᮥ������ ��᫥������ 楯��� ����</brief>
  <p>
    ��ᮥ����� � 楯�窥 <code>objId</code> 楯��� <code>idNext</code> � ����⢥
    ��᫥���饩. �� �⮬ ��᫥����� 楯�窠 � ��室��� �� �ਢ�뢠����.
    ���� 楯�窨 � �ᥤ���� ����室��� ��� �����ঠ��� 楫��⭮�� ������.
    ����� ��横������ 楯��� ᠬ� �� ᥡ�.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� ��室��� 楯�窨</li>
    <li><code>idNext</code> - ����� ��᫥���饩 楯�窨</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    �� ��몮��� ����� ��������� ᮣ��ᮢ������� �ࠩ��� ����,
    ���⮬� �� ����砭�� �������権 �㦭� �맢���
    <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code> <br />
  <code><a href="exf--LDS_UnlinkNext.htm">LDS_UnlinkNext</a></code> <br />
#end
procedure LDS_LinkNext(objId: longint, idNext: longint); external #G_ZARCACHE;

#doc
  <brief>��ᮥ������ �।�������� 楯��� ����</brief>
  <p>
    ��ᮥ����� � 楯�窥 <code>objId</code> 楯��� <code>idPrevious</code> � ����⢥
    �।�����饩. �� �⮬ �।������� 楯�窠 � ��室��� �� �ਢ�뢠����.
    ���� 楯�窨 � �ᥤ���� ����室��� ��� �����ঠ��� 楫��⭮�� ������.
    ����� ��横������ 楯��� ᠬ� �� ᥡ�.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� ��室��� 楯�窨</li>
    <li><code>idPrevious</code> -  ����� �।�����饩 楯�窨</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    �� ��몮��� ����� ��������� ᮣ��ᮢ������� �ࠩ��� ����,
    ���⮬� �� ����砭�� �������権 �㦭� �맢���
    <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code> <br />
  <code><a href="exf--LDS_UnlinkPrevious.htm">LDS_UnlinkPrevious</a></code> <br />
#end
procedure LDS_LinkPrevious(objId: longint, idPrevious: longint); external #G_ZARCACHE;

#doc
  <brief>��ᮥ������ ��᫥������ 楯��� ����</brief>
  <p>
    ��ᮥ����� �� 楯�窨 <code>objId</code> ��᫥������ 楯���, �᫨ ⠪����
    �뫠 ��ᮥ������. �� ��ᮥ����� �� �⮬ ᠬ� 楯��� <code>objId</code>
    �� ��᫥���饩.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
  </ul>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_UnlinkPrevious.htm">LDS_UnlinkPrevious</a></code> <br />
  <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code> <br />
#end
procedure LDS_UnlinkNext(objId: longint); external #G_ZARCACHE;

#doc
  <brief>��ᮥ������ �।�������� 楯��� ����</brief>
  <p>
    ��ᮥ����� �� 楯�窨 <code>objId</code> �।�������� 楯���, �᫨ ⠪����
    �뫠 ��ᮥ������. �� ��ᮥ����� �� �⮬ ᠬ� 楯��� <code>objId</code>
    �� �।�����饩.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
  </ul>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_UnlinkNext.htm">LDS_UnlinkNext</a></code> <br />
  <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code> <br />
#end
procedure LDS_UnlinkPrevious(objId: longint); external #G_ZARCACHE;

#doc
  <brief>������� ⨯ �易����� ���</brief>
  <p>
    �����頥� <a href="art--LDSAPI_DayKinds.htm">⨯ �易����� ���</a>
    <code>day</code> 楯�窨 <code>objId</code>.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>day</code> - ����� ��� 楯�窨. ��� �㬥������ � �������.</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
#end
function LDS_GetDayKind(objId: longint, day: longint): byte; external #G_ZARCACHE;

#doc
  <brief>��⠭����� ⨯ �易����� ���</brief>
  <p>
    ��⠭�������� <a href="art--LDSAPI_DayKinds.htm">⨯ �易����� ���</a>
    <code>day</code> 楯�窨 <code>objId</code> � ���祭�� <code>kind</code>,
    ��᪮�쪮 �� ��������� �᫮���. �᫨ �� �����-���� ��稭�� ����� ��������
    ���� ��� ⠪��� ⨯�, � ��⠭���������� ⨯ �易�����, ���ᨬ��쭮 ������� � ���������.
  </p><p>
    �᫨ � १���� �맮�� �ந�室�� ��������� ⨯� �易����� ����,
    ��������� <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a>.
    ����� �ਢ��� � ��������� ⨯�� ���� � ��������� �ਧ���� ����䨪�樨
    � �ᥤ��� (�ਢ易���� � ������) 楯�窠�
    (�. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>day</code> - ����� ��� 楯�窨. ��� �㬥������ � �������.</li>
    <li><code>kind</code> - <a href="art--LDSAPI_DayKinds.htm">⨯ �易����� ���</a></li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_CanSetDayKind.htm">LDS_CanSetDayKind</a></code> <br />
  <code><a href="exf--LDS_GetDayKind.htm">LDS_GetDayKind</a></code> <br />
#end
procedure LDS_SetDayKind(objId: longint, day: longint, kind: byte); external #G_ZARCACHE;

#doc
  <brief>����� �� ��⠭����� ������� ⨯ �易����� ���</brief>
  <p>
    �����頥� <code>true</code>, �᫨ ࠧ�蠥��� ��⠭�����
    <a href="art--LDSAPI_DayKinds.htm">⨯ �易����� ���</a> <code>day</code>
    楯�窨 <code>objId</code> � ���祭�� <code>kind</code> ⠪, �⮡� ��� ����
    ����⢨⥫쭮 �⠫ ��� ⨯� <code>kind</code>. � ��⨢��� ��砥
    �����頥� <code>false</code>.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>day</code> - ����� ��� 楯�窨. ��� �㬥������ � �������.</li>
    <li><code>kind</code> - ������� <a href="art--LDSAPI_DayKinds.htm">⨯ �易����� ���</a></li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_SetDayKind.htm">LDS_SetDayKind</a></code> <br />
#end
function LDS_CanSetDayKind(objId: longint, day: longint, kind: byte): boolean; external #G_ZARCACHE;

#doc
  <brief>��������� ��� ��� ࠡ�祩 ᬥ���</brief>
  <p>
    ��������� ��� <code>[firstDay]</code> � <code>[firstDay + 1]</code>
    楯�窨 <code>objId</code> ࠡ�祩 ᬥ���, �᫨ �� ��������.
    ��� ᪫������� ��ࢮ�� ��� 楯�窨 � ���, �।�����騬 ������ 楯�窥,
    ᫥��� ��।����� <code>0</code> � ��ࠬ��� <code>firstDay</code>,
    � ��� ᮥ������� ��᫥����� ��� � ��᫥���騬� - ���祭��, ࠢ���
    <a href="exf--LDS_GetCount.htm">�������� ���� � 楯�窥</a>.
  </p><p>
    �᫨ � १���� �맮�� �ந�室�� ��������� ⨯� �易����� ����,
    ��������� <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a>.
    ����� �ਢ��� � ��������� ⨯�� ���� � ��������� �ਧ���� ����䨪�樨
    � �ᥤ��� (�ਢ易���� � ������) 楯�窠�
    (�. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>firstDay</code> - ����� ��ࢮ�� ��� �� ���� ᪫��������. ��� �㬥������ � �������.</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_CanGlue.htm">LDS_CanGlue</a></code> <br />
  <code><a href="exf--LDS_Split.htm">LDS_Split</a></code> <br />
#end
procedure LDS_Glue(objId: longint, firstDay: longint); external #G_ZARCACHE;

#doc
  <brief>����� �� ᮥ������ ��� ��� ࠡ�祩 ᬥ���</brief>
  <p>
    �����頥� <code>true</code>, �᫨ ����� ᮥ������ ���
    <code>[firstDay]</code> � <code>[firstDay + 1]</code>
    楯�窨 <code>objId</code> ࠡ�祩 ᬥ���.
    ��� ������祭�� ᪫������� ��ࢮ�� ��� 楯�窨 � ���,
    �।�����騬 ������ 楯�窥, ᫥��� ��।����� <code>0</code>
    � ��ࠬ��� <code>firstDay</code>, � ��� ������祭�� ᮥ�������
    ��᫥����� ��� � ��᫥���騬� - ���祭��, ࠢ���
    <a href="exf--LDS_GetCount.htm">�������� ���� � 楯�窥</a>.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>firstDay</code> -  ����� ��ࢮ�� ��� �� ���� ᪫��������. ��� �㬥������ � �������.</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_Glue.htm">LDS_Glue</a></code> <br />
  <code><a href="exf--LDS_CanSplit.htm">LDS_CanSplit</a></code> <br />
#end
function LDS_CanGlue(objId: longint, firstDay: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>���ꥤ����� ��� ���</brief>
  <p>
    ���ꥤ����� ��� <code>[firstDay]</code> � <code>[firstDay + 1]</code>,
    �᫨ ��� �뫨 �易�� ࠡ�祩 ᬥ���.
    ��� ࠧꥤ������ ��ࢮ�� ��� 楯�窨 � ���, �।�����饣� ������ 楯�窥,
    ᫥��� ��।����� <code>0</code> � ��ࠬ��� <code>firstDay</code>,
    � ��� ࠧꥤ������ ��᫥����� ��� � ��᫥���騬� - ���祭��, ࠢ���
    <a href="exf--LDS_GetCount.htm">�������� ���� � 楯�窥</a>.
  </p><p>
    �᫨ � १���� �맮�� �ந�室�� ��������� ⨯� �易����� ����,
    ��������� <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a>.
    ����� �ਢ��� � ��������� ⨯�� ���� � ��������� �ਧ���� ����䨪�樨
    � �ᥤ��� (�ਢ易���� � ������) 楯�窠�
    (�. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>firstDay</code> - ����� ��ࢮ�� ��� �� ���� ࠧꥤ��塞��. ��� �㬥������ � �������.</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_CanSplit.htm">LDS_CanSplit</a></code> <br />
  <code><a href="exf--LDS_Glue.htm">LDS_Glue</a></code> <br />
#end
procedure LDS_Split(objId: longint, firstDay: longint); external #G_ZARCACHE;

#doc
  <brief>����� �� ࠧꥤ����� ��� ���?</brief>
  <p>
    �ᥣ�� �����! �� �ࠩ��� ���, �� ⥯��譥� ॠ����樨. �� ��� ���ᯥ�⨢�
    ᤥ���� �㭪��, ���������� �����, � ����� ��.
  </p> <p>
    �����頥� <code>true</code>, �᫨ �����
    <a href="exf--LDS_Split.htm">ࠧꥤ�����</a> ���
    <code>[firstDay]</code> � <code>[firstDay + 1]</code>
    楯�窨 <code>objId</code>.
    ��� ������祭�� ࠧꥤ������ ��ࢮ�� ��� 楯�窨 � ���,
    �।�����饣� ������ 楯�窥, ᫥��� ��।����� <code>0</code>
    � ��ࠬ��� <code>firstDay</code>, � ��� ������祭�� ࠧꥤ������
    ��᫥����� ��� � ��᫥���饣� - ���祭��, ࠢ���
    <a href="exf--LDS_GetCount.htm">�������� ���� � 楯�窥</a>.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>firstDay</code> - ����� ��ࢮ�� ��� �� ���� ࠧꥤ��塞��. ��� �㬥������ � �������.</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_Split.htm">LDS_Split</a></code> <br />
  <code><a href="exf--LDS_CanGlue.htm">LDS_CanGlue</a></code> <br />
#end
function LDS_CanSplit(objId: longint, firstDay: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>�����頥� �ਧ��� ����䨪�樨 楯�窨</brief>
  <p>
    �����頥� ���祭�� �ਧ���� ����䨪�樨 楯�窨 <code>objId</code>.
    �ਧ��� ����䨪�樨 �� 㬮�砭�� ��襭, �� ����� ��⮬���᪨ ����������
    �� ��������� ������ � �易����� ���� � 楯�窥.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
  </ul>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_SetModified.htm">LDS_SetModified</a></code> <br />
#end
function LDS_IsModified(objId: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>��⠭����� ���祭�� �ਧ���� ����䨪�樨</brief>
  <p>
    ��⠭�������� ���祭�� <code>value</code> �ਧ���� ����䨪�樨
    楯�窨 <code>objId</code>.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>value</code> - ����� ���祭�� �ਧ���� ����䨪�樨</li>
  </ul>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_IsModified.htm">LDS_IsModified</a></code> <br />
#end
procedure LDS_SetModified(objId: longint, value: boolean); external #G_ZARCACHE;

#doc
  <brief>����㧪� ������ � �易����� ���� �� ��⮢�� ��᪨</brief>
  <p>
    ����㦠�� � 楯��� <code>objId</code> ����� � �易����� ����
    �� 32-��⭮� ��᪨ <code>mask</code>.
    <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a> �� ���������.
    ������⢮ ���� ������ ���� ������ �।���⥫쭮
    (�. <code><a href="exf--LDS_SetCount.htm">LDS_SetCount</a></code>).
    �����頥� <code>true</code>, �᫨ 32-��⭮� ��᪨ � �ਭ樯� �����筮
    ��� ���ᠭ�� ��� �痢� � 楯�窥 (� ����, ����� ������⢮ ���� ࠢ��
    <code>31</code> ��� �����). ���� �����頥� <code>false</code>,
    � ����㧪� �� �ந�室��.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>mask</code> - ��᪠ �易����� ����</li>
  </ul>
  <h3>����砭��</h3>
  <p>
    ����㦥��� ����� � �易����� ���� ����� ���� � ��⨢��稥 � �ᥤ���� 楯�窠��
    (�. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>),
    ���� � ��ﬨ, �� ����騬� ���⢮���� � ����
    (�. <code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a></code>),
    ���⮬� ����⥫쭮 �맢��� <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code>
    �� ����砭�� ��� �������権.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_StoreToMask.htm">LDS_StoreToMask</a></code> <br />
  <code><a href="exf--LDS_Refresh.htm">LDS_Refresh</a></code> <br />
#end
function LDS_LoadFromMask(objId: longint, mask: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>������ ������ � �易����� ���� � ��⮢�� ����</brief>
  <p>
    ���࠭�� � ��⮢�� ���� <code>mask</code> ����� � �易����� ����
    � 楯�窥 <code>objId</code>. �����頥� <code>true</code>,
    �᫨ 32-��⭮� ��᪨ � �ਭ樯� �����筮 ��� ���ᠭ�� ��� �痢� � 楯�窥
    (� ����, ����� ������⢮ ���� ࠢ�� <code>31</code> ��� �����).
    ���� �����頥� <code>false</code>, � ������ �� �ந�室��.
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
    <li><code>[out] mask</code> -  ��᪠ �易����� ����</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    ��। �ᯮ�짮������ ����室��� 㡥������, �� 楫��⭮��� ������ �� �뫠 ����襭�
    �맮��� �㭪権, ����⨢�� ������� �� 楫��⭮��� ������.
  </p>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
  <code><a href="exf--LDS_LoadFromMask.htm">LDS_LoadFromMask</a></code> <br />
#end
function LDS_StoreToMask(objId: longint, var mask: longint): boolean; external #G_ZARCACHE;

#doc
  <brief>����⠭����� 楫��⭮��� ������</brief>
  <p>
    ���࠭�� ��⨢���� ����� ����묨 � �易����� ���� � ����묨 � ࠡ��� ����
    (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = true</code>),
    �᫨ ⠪��� �������.
  </p>
  <p>
    �᫨ � १���� �맮�� �ந�室�� ��������� ⨯� �易����� ����,
    ��������� <a href="exf--LDS_IsModified.htm">�ਧ��� ����䨪�樨</a>.
    ����� �ਢ��� � ��������� ⨯�� ���� � ��������� �ਧ���� ����䨪�樨
    � �ᥤ��� (�ਢ易���� � ������) 楯�窠�
    (�. <code><a href="exf--LDS_LinkNext.htm">LDS_LinkNext</a></code>,
    <code><a href="exf--LDS_LinkPrevious.htm">LDS_LinkPrevious</a></code>).
  </p>
  <h3>��ࠬ����</h3>
  <ul>
    <li><code>objId</code> - ����� 楯�窨 ����</li>
  </ul>
  <h3>�ਬ�砭��</h3>
  <p>
    �᫨ � 楯�窥 ᮢᥬ ��� �易���� ����, � ������� ��⨢��稩 �� ����७��� ������
    ���������� �� �����, � ��� �㭪�� ����� �� ��뢠��. ��⨢���� ����� ����������
    ⮣��, ����� �������� "������஢����" �ࠪ���⨪� 楯�窨, 㦥 ᮤ�ঠ饩 �易��� ���:
    �ந�室�� ���������� ��� 㤠����� ����, ��७���ன�� ��࠭�祭�� �� ��뢠��� ����
    ��� � ��㣮� (<code><a href="exf--LDS_SetDayLinkable.htm">LDS_SetDayLinkable</a></code>).
    ����� 楯�窠 ����� ��३� � ��⨢��稢�� ���ﭨ�, ����� � 楯���, �������
    ��࠭�祭�� �� ��뢠��� ����, ����㦠���� ����� � �易����� ����
    <a href="exf--LDS_LoadFromMask.htm">�� ��⮢�� ��᪨</a>.
  </p> <p>
    ����� ���室 � ��ࠡ�⪥ �訡��, � ���� �맮��� ��ࠢ�����, ॠ������� �� ᮮ�ࠦ����
    ����த���⢨� (���� <code>Refresh</code> ��᫥ ��� �������権), � ⠪�� ���
    �����㦥��� �訡��, ������ ���������� �� ����㧪� ������ �� �ਢ�� ��.
  </p>
  <p>����⠭������� 楫��⭮�� ������ �����砥��� � ᫥���饬:</p>
  <ol>
    <li>����� �痢� ��ࠡ�稬� ��ﬨ
      (<code><a href="exf--LDS_IsDayLinkable.htm">LDS_IsDayLinkable</a> = false</code>)</li>
    <li>��祭�� ������஭��� �痢�: �����⥫쭮� ᮥ�������, �᫨ ��� ��������,
      ���� �����⥫쭮� ࠧꥤ������, �᫨ ᮥ������ ��� �����.</li>
  </ol>
  <h3>��. ⠪��</h3>
  <a href="art--LDSAPI_About.htm">����窨 ����</a> <br />
#end
procedure LDS_Refresh(objId: longint); external #G_ZARCACHE;
