//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
//------------------------------------------------------------------------------
// �����⨪� 5.8 - �����ᮢ� ������
// ��ଠ ��� ��� � ����ࠬ���
//------------------------------------------------------------------------------

#doc
�����ᮢ� ������. ������� �ଠ ��� ��� � ����ࠬ���.
#end
.FORM DiagramMain
.HIDE
.FIELDS
Diagram_type
Diagram_name
Diagram_UpTitle
Diagram_value  : double
Diagram_legend
.ENDFIELDS
.{ CheckEnter NewPage
  ��� ����ࠬ�� : ^
  ��������� ����ࠬ�� : ^
.IF TypePie
.END
.{ CheckEnter NewSeria
  ���� : ^
.{ CheckEnter NewDATA
   ^, "^";
.}
.}
.}
.ENDFORM

// ��ᮥ�������� �ଠ
.linkform Graf prototype is DiagramMain
.fields
Diagram_type
Diagram_name
Diagram_UpTitle
Diagram_value
Diagram_legend
.endfields
GraphReport {
ScreenSize (4000,3000);
Query "����ன�� ����" {
    MyDim       GraphDim  "��䥪� ~�~�嬥୮��"              "3D";
    MyBlank     OnOff     "������� �뢮� ~�~㫥��� ���祭��" "On";
    MyValues    Values    "���ᮡ �뢮�� ~�~��祭�� � �窠�"  "ValuesOnly";
    MyLegend    OnOff     "�����뢠�� ~�~������ ����ࠬ��"     "On";
} // Query
.{ CheckEnter NewPage
Page {
Graph ^ as MyDim {
  UpTitle "^";
.IF TypePie
  by 1;
.END
  Legend as MyLegend;
  SetZeroAsBlank as MyBlank;
.{ CheckEnter NewSeria
  Serie
  {
    Title "^";
    Values as MyValues;
    Data
    {
.{ CheckEnter NewDATA
      ^, "^";
.}
    } // Data
  } // serie
.} // NewSeria
} // Graph
} // Page
.} // NewPage
} // GraphReport
.endform
