procedure CreateBasFile(FBasName: string);
{
  if not Fxla.OpenFile(FBasName, stCreate)
    Exit;

  Fxla.WriteLn('Attribute VB_Name = "���������_������������_�������"');
  Fxla.WriteLn('Dim NewSheet As Variant');
  Fxla.WriteLn('');
  Fxla.WriteLn('Function �_������_��������(IsPlan As Boolean) As Boolean');
  Fxla.WriteLn('    Dim VarCell As Range');
  Fxla.WriteLn('    If IsPlan Then');
  Fxla.WriteLn('        Set VarCell = Range("O2")');
  Fxla.WriteLn('    Else');
  Fxla.WriteLn('        Set VarCell = Range("U2")');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('    If IsEmpty(VarCell) Then');
  Fxla.WriteLn('        �_������_�������� = True');
  Fxla.WriteLn('    Else');
  Fxla.WriteLn('        �_������_�������� = VarCell.Value');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('End Function');
  Fxla.WriteLn('');
  Fxla.WriteLn('Function �������������������(Column_5, Column_7, Column_8, Column_10, Column_11, Column_12 As Range) As Double');
  Fxla.WriteLn('Dim TmpSum As Double');
  Fxla.WriteLn('      ');
  Fxla.WriteLn('    If IsEmpty(Column_5) Then');
  Fxla.WriteLn('        ������������������� = Empty');
  Fxla.WriteLn('        Exit Function');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    TmpSum = Column_5.Value '' �������� ����� �������� � �������� �������');
  Fxla.WriteLn('    If �_������_��������(True) Then '' � ������ �������� � ����� ����������� �������');
  Fxla.WriteLn('        Dim k1 As Double  '' k1 - ������� ����� ��������� � ����������');
  Fxla.WriteLn('        k1 = Column_10.Value - Column_8.Value');
  Fxla.WriteLn('        If (k1 < 0) Then '' ����� ����� ���������');
  Fxla.WriteLn('            '' ��������� ������ = ���� + ���� �� �������� + ������������������� �����');
  Fxla.WriteLn('            TmpSum = TmpSum + (-k1) + Column_11.Value - Column_12.Value');
  Fxla.WriteLn('        Else '' � ���������� ������� �������� ������, ��� ���������');
  Fxla.WriteLn('            '' ���� ������� ��������� ����, �� ��� ������� ������ � ������� �����');
  Fxla.WriteLn('            If (Column_10.Value - Column_7.Value) > 0 Then');
  Fxla.WriteLn('                TmpSum = TmpSum - (Column_10.Value - Column_7.Value)');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('    Else');
  Fxla.WriteLn('        TmpSum = TmpSum + Column_11.Value');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    If TmpSum < 0 Then');
  Fxla.WriteLn('        TmpSum = 0');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    ������������������� = TmpSum');
  Fxla.WriteLn('');
  Fxla.WriteLn('End Function');
  Fxla.WriteLn('');
  Fxla.WriteLn('Function ����������������������(Column_3, Column_11, Column_12, Column_13, Column_14, Column_15 As Range) As Double ');
  Fxla.WriteLn('Dim TmpSum As Double');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    If IsEmpty(Column_3) Then');
  Fxla.WriteLn('        ���������������������� = Empty');
  Fxla.WriteLn('        Exit Function');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    TmpSum = Column_3.Value '' �������� ����� �������� � �������� �������');
  Fxla.WriteLn('');
  Fxla.WriteLn('    If �_������_��������(False) Then '' � ������ �������� � ����� ����������� �������');
  Fxla.WriteLn('        Dim k1 As Double  '' k1 - ������� ����� ��������� � ����������');
  Fxla.WriteLn('        k1 = Column_13.Value - Column_12.Value');
  Fxla.WriteLn('        If (k1 < 0) Then '' ����� ����� ��������� �� ���������� ������');
  Fxla.WriteLn('            '' ��������� ������ = ���� + ���� �� �������� + ������������������� �����');
  Fxla.WriteLn('            TmpSum = TmpSum + (-k1) + Column_14.Value - Column_15.Value');
  Fxla.WriteLn('        Else '' �������� ������, ��� ���������');
  Fxla.WriteLn('            '' ���� ������� ��������� ����, �� ��� ������� ������ � ������� �����');
  Fxla.WriteLn('            If (Column_13.Value - Column_11.Value) > 0 Then');
  Fxla.WriteLn('                TmpSum = TmpSum - (Column_13.Value - Column_11.Value)');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('    Else');
  Fxla.WriteLn('        TmpSum = TmpSum + Column_14.Value');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    If TmpSum < 0 Then');
  Fxla.WriteLn('        TmpSum = 0');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    ���������������������� = TmpSum');
  Fxla.WriteLn('');
  Fxla.WriteLn('End Function');
  Fxla.WriteLn('');
  Fxla.WriteLn('Function �_����_�����_�������(Column_3, Column_4, Column_6, Column_7, Column_16 As Range) As Double');
  Fxla.WriteLn('Dim TmpSum As Double');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    If IsEmpty(Column_4) Then');
  Fxla.WriteLn('        �_����_�����_������� = Empty');
  Fxla.WriteLn('        Exit Function');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('   ');
  Fxla.WriteLn('    TmpSum = Column_6.Value');
  Fxla.WriteLn('    If �_������_��������(False) And (Column_16.Value >= 0) Then');
  Fxla.WriteLn('    '' ������ ����������������� �� ��������� ���������');
  Fxla.WriteLn('    '' ��������������������� ������ �� ������� �������');
  Fxla.WriteLn('        If (Column_7.Value - Column_16.Value) > 0 Then');
  Fxla.WriteLn('        '' ���������� ����� ������� � ���� �����');
  Fxla.WriteLn('            TmpSum = TmpSum + Column_7.Value - Column_16.Value');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    '' ������ � ���� ����� �������� ������, ��� ��� ����');
  Fxla.WriteLn('    If TmpSum > Column_3.Value Then');
  Fxla.WriteLn('        TmpSum = Column_3.Value');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    '' ������ � ���� ����� �������� ������, ��� ���� ������');
  Fxla.WriteLn('    If TmpSum > Column_4.Value Then');
  Fxla.WriteLn('        TmpSum = Column_4.Value');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('    �_����_�����_������� = TmpSum');
  Fxla.WriteLn('');
  Fxla.WriteLn('End Function');
  Fxla.WriteLn('');
  Fxla.WriteLn('Sub �������_�����_����(RepDate As Date, ReportType As Byte, _');
  Fxla.WriteLn('    OrgName As String, NumOfRows As Long)');
  Fxla.WriteLn('''');
  Fxla.WriteLn(''' DoReportFormat1 ������ �������������� ������ "���� �����������/������������ ��"');
  Fxla.WriteLn(''' ������ ������� 27.12.2002 (���� ��������)');
  Fxla.WriteLn('''');
  Fxla.WriteLn('');
  Fxla.WriteLn('''');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    Sheets("Report data").Calculate');
  Fxla.WriteLn('    Range("A1").FormulaR1C1 = ""');
  Fxla.WriteLn('    Range("A2").FormulaR1C1 = ""');
  Fxla.WriteLn('    Cells.Font.Size = 8');
  Fxla.WriteLn('    Columns("C:C").NumberFormat = "#,##0.000"');
  Fxla.WriteLn('    Columns("E:E").NumberFormat = "#,##0.00"');
  Fxla.WriteLn('    Columns("A:A").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Columns("D:D").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Range("D1:D6").HorizontalAlignment = xlLeft');
  Fxla.WriteLn('    Range("E4:E12").NumberFormat = "General"');
  Fxla.WriteLn('    Rows("1:6").Font.Size = 9');
  Fxla.WriteLn('    Range("D1").FormulaR1C1 = """���������"""');
  Fxla.WriteLn('    If (ReportType Mod 2 = 1) Then');
  Fxla.WriteLn('        Range("D2").FormulaR1C1 = "������������"');
  Fxla.WriteLn('        Range("D3").FormulaR1C1 = OrgName');
  Fxla.WriteLn('        Range("A7").FormulaR1C1 = "���� ����������� �������� �������"');
  Fxla.WriteLn('        Range("A8").FormulaR1C1 = "�� ������������ ��������� � ��������� ������"');
  Fxla.WriteLn('    Else');
  Fxla.WriteLn('        Range("D2").FormulaR1C1 = "������������"');
  Fxla.WriteLn('        Range("D3").FormulaR1C1 = OrgName');
  Fxla.WriteLn('        Range("A7").FormulaR1C1 = "���� ������������ �������� �������"');
  Fxla.WriteLn('        Range("A8").FormulaR1C1 = "�� ������������ ��������� � ��������� ������ " + OrgName');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('    Range("D4").FormulaR1C1 = """___""_____________ 200_�."');
  Fxla.WriteLn('    Range("A9").NumberFormat = "mmmm yyyy ""����"""');
  Fxla.WriteLn('    Range("A9").FormulaR1C1 = RepDate');
  Fxla.WriteLn('    Range("A11").FormulaR1C1 = "�����" & Chr(10) & "�/�"');
  Fxla.WriteLn('    Range("B11").FormulaR1C1 = "�������, �������, �����������"');
  Fxla.WriteLn('    Range("C11").FormulaR1C1 = "����������" & Chr(10) & "�� �����"');
  Fxla.WriteLn('    Range("D11").FormulaR1C1 = "�������" & Chr(10) & "���������"');
  Fxla.WriteLn('    Range("E11").FormulaR1C1 = "��������� ������" & Chr(10) & "(���)"');
  Fxla.WriteLn('    Range("F11").FormulaR1C1 = "������� ������ �� ��������"');
  Fxla.WriteLn('    Range("A12").FormulaR1C1 = "1"');
  Fxla.WriteLn('    Range("B12").FormulaR1C1 = "2"');
  Fxla.WriteLn('    Range("A12:B12").Select');
  Fxla.WriteLn('    Selection.AutoFill Destination:=Range("A12:F12"), Type:=xlFillDefault');
  Fxla.WriteLn('    Rows("7:9").Font.Size = 11');
  Fxla.WriteLn('    Range("A7:F7").Merge');
  Fxla.WriteLn('    Range("A8:F8").Merge');
  Fxla.WriteLn('    Range("A9:F9").Merge');
  Fxla.WriteLn('    Range("A7:F9").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Range("A7:F7").Font.Bold = True');
  Fxla.WriteLn('    Rows("8:9").Font.Italic = True');
  Fxla.WriteLn('    Rows("11:12").Font.Size = 9');
  Fxla.WriteLn('    Rows("11:12").Font.Bold = True');
  Fxla.WriteLn('    Rows("11:12").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Rows("11:11").Select');
  Fxla.WriteLn('    With Selection');
  Fxla.WriteLn('        .RowHeight = 36.75');
  Fxla.WriteLn('        .HorizontalAlignment = xlCenter');
  Fxla.WriteLn('        .VerticalAlignment = xlCenter');
  Fxla.WriteLn('        .WrapText = True');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Columns("A:A").ColumnWidth = 5.29');
  Fxla.WriteLn('    Columns("B:B").ColumnWidth = 38.86');
  Fxla.WriteLn('    Columns("C:C").ColumnWidth = 11.75');
  Fxla.WriteLn('    Columns("D:F").EntireColumn.AutoFit');
  Fxla.WriteLn('    Range("A11:F12").Select');
  Fxla.WriteLn('    With Selection.Borders(xlInsideVertical)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Range("A11:F12").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeTop)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeBottom)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideHorizontal)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Range("A11:A12").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeLeft)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Range("F11:F12").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeRight)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('''   ������� ������');
  Fxla.WriteLn('    Dim i, j As Long');
  Fxla.WriteLn('    For i = 1 To NumOfRows');
  Fxla.WriteLn('        ''� �/�');
  Fxla.WriteLn('        ''�������, �������, �����������');
  Fxla.WriteLn('        For j = 1 To 2');
  Fxla.WriteLn('            If Not IsEmpty(Sheets("Report data").Cells(4 + i, j)) Then');
  Fxla.WriteLn('                Cells(12 + i, j).FormulaR1C1 = "=''Report data''!R[-8]C"');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        Next j');
  Fxla.WriteLn('        ''���������� �� �����');
  Fxla.WriteLn('        If Not IsEmpty(Sheets("Report data").Cells(4 + i, 4)) Then');
  Fxla.WriteLn('            If �_������_��������(True) Then '' � ������ �������� � ����� ����������� �������');
  Fxla.WriteLn('                Cells(12 + i, 3).FormulaR1C1 = _');
  Fxla.WriteLn('                    "=''Report data''!R[-8]C[1]-''Report data''!R[-8]C[6]"');
  Fxla.WriteLn('            Else');
  Fxla.WriteLn('                Cells(12 + i, 3).FormulaR1C1 = _');
  Fxla.WriteLn('                    "=''Report data''!R[-8]C[1]-''Report data''!R[-8]C[3]"');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('        ''������� ���������');
  Fxla.WriteLn('        If Not IsEmpty(Sheets("Report data").Cells(4 + i, 3)) Then');
  Fxla.WriteLn('            Cells(12 + i, 4).FormulaR1C1 = "=''Report data''!R[-8]C[-1]"');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('        ''��������� ������ � ������� ������ �� ��������');
  Fxla.WriteLn('        For j = 13 To 14');
  Fxla.WriteLn('            If Not IsEmpty(Sheets("Report data").Cells(4 + i, j)) Then');
  Fxla.WriteLn('                Cells(12 + i, j - 8).FormulaR1C1 = "=''Report data''!R[-8]C[8]"');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        Next j');
  Fxla.WriteLn('');
  Fxla.WriteLn('        If (Sheets("Report data").Cells(4 + i, 1) = "����� ��:") Then');
  Fxla.WriteLn('            Rows(12 + i).Font.Bold = True');
  Fxla.WriteLn('            Cells(12 + i, 1).HorizontalAlignment = xlRight');
  Fxla.WriteLn('            If (i = NumOfRows) Then');
  Fxla.WriteLn('                Cells(12 + i, 1).FormulaR1C1 = ""');
  Fxla.WriteLn('            Else');
  Fxla.WriteLn('                Cells(12 + i, 2).Font.Bold = False');
  Fxla.WriteLn('                Cells(12 + i, 2).Font.Italic = True');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        Else');
  Fxla.WriteLn('            Cells(12 + i, 1).HorizontalAlignment = xlCenter');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('    Next i');
  Fxla.WriteLn('');
  Fxla.WriteLn('    For i = 1 To 4');
  Fxla.WriteLn('        Range(Cells(i, 4), Cells(i, 6)).Merge');
  Fxla.WriteLn('        Range(Cells(i, 4), Cells(i, 6)).HorizontalAlignment = xlLeft');
  Fxla.WriteLn('    Next i');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    Cells.EntireColumn.AutoFit');
  Fxla.WriteLn('    Range("A1").Select');
  Fxla.WriteLn('End Sub');
  Fxla.WriteLn('');
  Fxla.WriteLn('Sub �������_�����_�������(RepDate1, RepDate2, RepDate3, RepDate4 As String, _');
  Fxla.WriteLn('    ReportType As Byte, NumOfRows As Long)');
  Fxla.WriteLn('''');
  Fxla.WriteLn(''' DoReportFormat2 ������ �������������� ������ "������� �����������/������������ ��"');
  Fxla.WriteLn(''' ������ ������� 14.01.2003 (���� ��������)');
  Fxla.WriteLn('''');
  Fxla.WriteLn('');
  Fxla.WriteLn('''');
  Fxla.WriteLn('    ');
  Fxla.WriteLn('    Sheets("Report data").Calculate');
  Fxla.WriteLn('    Cells.Font.Size = 8');
  Fxla.WriteLn('    Rows("3:5").Font.Size = 9');
  Fxla.WriteLn('    Rows("3:5").Font.Bold = True');
  Fxla.WriteLn('    Range("A5").FormulaR1C1 = "1"');
  Fxla.WriteLn('    Range("B5").FormulaR1C1 = "2"');
  Fxla.WriteLn('    Range("A5:B5").Select');
  Fxla.WriteLn('    Selection.AutoFill Destination:=Range("A5:K5"), Type:=xlFillDefault');
  Fxla.WriteLn('    Dim TmpS(3) As String');
  Fxla.WriteLn('    Range("A1").Select');
  Fxla.WriteLn('    If (ReportType Mod 2 = 1) Then');
  Fxla.WriteLn('        TmpS(1) = "�����������"');
  Fxla.WriteLn('        TmpS(2) = "�����������"');
  Fxla.WriteLn('        TmpS(3) = "�����������"');
  Fxla.WriteLn('    Else');
  Fxla.WriteLn('        TmpS(1) = "������������"');
  Fxla.WriteLn('        TmpS(2) = "����������"');
  Fxla.WriteLn('        TmpS(3) = "������������"');
  Fxla.WriteLn('    End If');
  Fxla.WriteLn('    ActiveCell.FormulaR1C1 = _');
  Fxla.WriteLn('        "������� � " + TmpS(1) + " �������� ������� �� " + RepDate1 + _');
  Fxla.WriteLn('        " ���� �� ��������� �� " + RepDate2');
  Fxla.WriteLn('    Selection.Font.Bold = True');
  Fxla.WriteLn('    Selection.Font.Size = 11');
  Fxla.WriteLn('    Range("A3").FormulaR1C1 = "�����" & Chr(10) & "�/�"');
  Fxla.WriteLn('    Range("B3").FormulaR1C1 = "������������ �������� � " + TmpS(2)');
  Fxla.WriteLn('    Range("C3").FormulaR1C1 = TmpS(3) + " �������� �������"');
  Fxla.WriteLn('    Range("C4").FormulaR1C1 = "����"');
  Fxla.WriteLn('    Range("D4").FormulaR1C1 = "���� �����"');
  Fxla.WriteLn('    Range("E4").FormulaR1C1 = "� �.�. � ���� ���.�����"');
  Fxla.WriteLn('    Range("F4").FormulaR1C1 = "% ���. �����"');
  Fxla.WriteLn('    Range("A3:A4").Merge');
  Fxla.WriteLn('    Range("C3:F3").Merge');
  Fxla.WriteLn('    Range("B3:B4").Merge');
  Fxla.WriteLn('    Range("G3").FormulaR1C1 = "������������ ������������� �� �������� ��������"');
  Fxla.WriteLn('    Range("G3:G4").Merge');
  Fxla.WriteLn('    Range("H3").FormulaR1C1 = "� �.�. ���������"');
  Fxla.WriteLn('    Range("H4").FormulaR1C1 = "�� " + RepDate3');
  Fxla.WriteLn('    Range("I4").FormulaR1C1 = "� " + RepDate3 + Chr(10) + " �� " + RepDate4');
  Fxla.WriteLn('    Range("J4").FormulaR1C1 = "����� " + RepDate4');
  Fxla.WriteLn('    Range("H3:J3").Merge');
  Fxla.WriteLn('    Range("A1:K1").Merge');
  Fxla.WriteLn('    Range("K3").FormulaR1C1 = _');
  Fxla.WriteLn('        "� �.�. ������������� �� ������������� ��������� ��������"');
  Fxla.WriteLn('    Range("K3:K4").Merge');
  Fxla.WriteLn('');
  Fxla.WriteLn('    Range("A1:K5").Select');
  Fxla.WriteLn('    With Selection');
  Fxla.WriteLn('        .HorizontalAlignment = xlCenter');
  Fxla.WriteLn('        .VerticalAlignment = xlCenter');
  Fxla.WriteLn('        .WrapText = True');
  Fxla.WriteLn('        .Orientation = 0');
  Fxla.WriteLn('        .AddIndent = False');
  Fxla.WriteLn('        .IndentLevel = 0');
  Fxla.WriteLn('        .ShrinkToFit = False');
  Fxla.WriteLn('        .ReadingOrder = xlContext');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Rows("1:5").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Range("A3:K5").Select');
  Fxla.WriteLn('    Selection.Borders(xlDiagonalDown).LineStyle = xlNone');
  Fxla.WriteLn('    Selection.Borders(xlDiagonalUp).LineStyle = xlNone');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeLeft)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeTop)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeBottom)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeRight)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideVertical)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideHorizontal)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Range("A5:K5,A3:A4,B3:B4,C3:F3,G3:G4,H3:H4,I3:K3").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeTop)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Range("A5:K5").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeBottom)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Range("A3:A4,A5").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeLeft)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('');
  Fxla.WriteLn('    Range("I3:K3,K4:K5").Select');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeRight)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('');
  Fxla.WriteLn('''   ������� ������');
  Fxla.WriteLn('    Dim i, j As Long');
  Fxla.WriteLn('    For i = 1 To NumOfRows');
  Fxla.WriteLn('        For j = 1 To 5');
  Fxla.WriteLn('            If Not IsEmpty(Sheets("Report data").Cells(4 + i, j)) Then');
  Fxla.WriteLn('                Cells(5 + i, j).FormulaR1C1 = "=''Report data''!R[-1]C"');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        Next j');
  Fxla.WriteLn('        Range(Cells(5 + i, 3), Cells(5 + i, 11)).NumberFormat = "#,##0.00"');
  Fxla.WriteLn('        Cells(5 + i, 6).NumberFormat = "0.00%"');
  Fxla.WriteLn('        If Not IsEmpty(Sheets("Report data").Cells(4 + i, 3)) Then');
  Fxla.WriteLn('            Cells(5 + i, 5).FormulaR1C1 = "=''Report data''!R[-1]C[3]"');
  Fxla.WriteLn('            If (Cells(5 + i, 3).Value < 0.000001) Then');
  Fxla.WriteLn('                Cells(5 + i, 6).FormulaR1C1 = "0"');
  Fxla.WriteLn('            Else');
  Fxla.WriteLn('                Cells(5 + i, 6).FormulaR1C1 = "=RC[-1]/RC[-3]"');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('            Cells(5 + i, 7).FormulaR1C1 = "=''Report data''!R[-1]C[3]"');
  Fxla.WriteLn('            Range(Cells(5 + i, 8), Cells(5 + i, 11)).FormulaR1C1 = "=''Report data''!R[-1]C[9]"');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('');
  Fxla.WriteLn('        If (Sheets("Report data").Cells(4 + i, 1) = "����� ��:") Then');
  Fxla.WriteLn('            Rows(5 + i).Font.Bold = True');
  Fxla.WriteLn('            Cells(5 + i, 1).HorizontalAlignment = xlRight');
  Fxla.WriteLn('            If (i = NumOfRows) Then');
  Fxla.WriteLn('                Cells(5 + i, 1).FormulaR1C1 = ""');
  Fxla.WriteLn('            Else');
  Fxla.WriteLn('                Cells(5 + i, 2).Font.Bold = False');
  Fxla.WriteLn('                Cells(5 + i, 2).Font.Italic = True');
  Fxla.WriteLn('            End If');
  Fxla.WriteLn('        Else');
  Fxla.WriteLn('            Cells(5 + i, 1).HorizontalAlignment = xlCenter');
  Fxla.WriteLn('        End If');
  Fxla.WriteLn('    Next i');
  Fxla.WriteLn('');
  Fxla.WriteLn('    Cells.EntireColumn.AutoFit');
  Fxla.WriteLn('    Range("F:F").ColumnWidth = 7');
  Fxla.WriteLn('    Range("C:E,H:J").ColumnWidth = 12');
  Fxla.WriteLn('    Range("G:G,K:K").ColumnWidth = 15');
  Fxla.WriteLn('    Range("A1").Activate');
  Fxla.WriteLn('End Sub');
  Fxla.WriteLn('');
  Fxla.WriteLn('Sub �������_����_��_�����(SheetName As String)');
  Fxla.WriteLn('    Set NewSheet = Sheets.Add');
  Fxla.WriteLn('    NewSheet.Name = SheetName');
  Fxla.WriteLn('    NewSheet.Select');
  Fxla.WriteLn('End Sub');
  Fxla.WriteLn('');
  Fxla.WriteLn('Sub �������_����_�_�������_���_�������(VidPlanSum As Byte)');
  Fxla.WriteLn('');
  Fxla.WriteLn('    Set NewSheet = Sheets.Add');
  Fxla.WriteLn('    NewSheet.Name = "Report data"');
  Fxla.WriteLn('    NewSheet.Select');
  Fxla.WriteLn('    Cells.Font.Size = 8');
  Fxla.WriteLn('    Range("U1").FormulaR1C1 = "� ������ ��������"');
  Fxla.WriteLn('    Range("U2").FormulaR1C1 = VidPlanSum <> 1');
  Fxla.WriteLn('    Range("A1").FormulaR1C1 = "�" & Chr(10) & "�/�"');
  Fxla.WriteLn('    Range("A1:A3").Merge');
  Fxla.WriteLn('    Range("B1").FormulaR1C1 = "�������, �������, �����������"');
  Fxla.WriteLn('    Range("B1:B3").Merge');
  Fxla.WriteLn('    Range("C1").FormulaR1C1 = "�������� ������"');
  Fxla.WriteLn('    Range("C1:I1").Merge');
  Fxla.WriteLn('    Range("C2").FormulaR1C1 = "����"');
  Fxla.WriteLn('    Range("C2:C3").Merge');
  Fxla.WriteLn('    Range("D2").FormulaR1C1 = "��������"');
  Fxla.WriteLn('    Range("D2:H2").Merge');
  Fxla.WriteLn('    Range("D3").FormulaR1C1 = "�����"');
  Fxla.WriteLn('    Range("E3").FormulaR1C1 = "��������" & Chr(10) & "����������" & Chr(10) & "��������"');
  Fxla.WriteLn('    Range("F3").FormulaR1C1 = "������" & Chr(10) & "��������"');
  Fxla.WriteLn('    Range("G3").FormulaR1C1 = "����������������" & Chr(10) & "�������"');
  Fxla.WriteLn('    Range("H3").FormulaR1C1 = "� ���� �����"');
  Fxla.WriteLn('    Range("I2").FormulaR1C1 = "���������" & Chr(10) & "������"');
  Fxla.WriteLn('    Range("I2:I3").Merge');
  Fxla.WriteLn('    Range("J1").FormulaR1C1 = "������������" & Chr(10) & "�������������"');
  Fxla.WriteLn('    Range("J1:J3").Merge');
  Fxla.WriteLn('    Range("K1").FormulaR1C1 = "������ �� ������ ��������� �������"');
  Fxla.WriteLn('    Range("K1:P1").Merge');
  Fxla.WriteLn('    Range("K2").FormulaR1C1 = "����"');
  Fxla.WriteLn('    Range("K2:K3").Merge');
  Fxla.WriteLn('    Range("L2").FormulaR1C1 = "���������"');
  Fxla.WriteLn('    Range("L2:L3").Merge');
  Fxla.WriteLn('    Range("M2").FormulaR1C1 = "��������"');
  Fxla.WriteLn('    Range("M2:M3").Merge');
  Fxla.WriteLn('    Range("N2").FormulaR1C1 = "������������������� �����"');
  Fxla.WriteLn('    Range("N2:O2").Merge');
  Fxla.WriteLn('    Range("N3").FormulaR1C1 = "������ � ��������" & Chr(10) & "�������"');
  Fxla.WriteLn('    Range("O3").FormulaR1C1 = "������ �� ��������" & Chr(10) & "��������"');
  Fxla.WriteLn('    Range("P2").FormulaR1C1 = "����������" & Chr(10) & "���������������������" & Chr(10) & "����"');
  Fxla.WriteLn('    Range("P2:P3").Merge');
  Fxla.WriteLn('    Range("Q1").FormulaR1C1 = "������������" & Chr(10) & "�������������"');
  Fxla.WriteLn('    Range("Q1:S2").Merge');
  Fxla.WriteLn('    Range("Q3").FormulaR1C1 = "��"');
  Fxla.WriteLn('    Range("R3").FormulaR1C1 = "� ��"');
  Fxla.WriteLn('    Range("S3").FormulaR1C1 = "�����"');
  Fxla.WriteLn('    Range("T1").FormulaR1C1 = "�������������" & Chr(10) & "�� �������������" & Chr(10) & "��������� ��������"');
  Fxla.WriteLn('    Range("T1:T3").Merge');
  Fxla.WriteLn('    Range("A4").FormulaR1C1 = "1"');
  Fxla.WriteLn('    Range("B4").FormulaR1C1 = "2"');
  Fxla.WriteLn('    Range("A4:B4").Select');
  Fxla.WriteLn('    Selection.AutoFill Destination:=Range("A4:T4"), Type:=xlFillDefault');
  Fxla.WriteLn('    Range("A1:T4").Select');
  Fxla.WriteLn('    Selection.Borders(xlDiagonalDown).LineStyle = xlNone');
  Fxla.WriteLn('    Selection.Borders(xlDiagonalUp).LineStyle = xlNone');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeLeft)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeTop)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeBottom)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeRight)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideVertical)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideHorizontal)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection');
  Fxla.WriteLn('        .HorizontalAlignment = xlCenter');
  Fxla.WriteLn('        .VerticalAlignment = xlCenter');
  Fxla.WriteLn('        .WrapText = True');
  Fxla.WriteLn('        .Orientation = 0');
  Fxla.WriteLn('        .AddIndent = False');
  Fxla.WriteLn('        .IndentLevel = 0');
  Fxla.WriteLn('        .ShrinkToFit = False');
  Fxla.WriteLn('        .ReadingOrder = xlContext');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Rows("1:4").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Cells.EntireRow.AutoFit');
  Fxla.WriteLn('    Cells.EntireColumn.AutoFit');
  Fxla.WriteLn('    Range("A4").Select');
  Fxla.WriteLn('End Sub');
  Fxla.WriteLn('');
  Fxla.WriteLn('Sub �������_����_�_�������_���_�����(VidPlanSum As Byte)');
  Fxla.WriteLn('');
  Fxla.WriteLn('    Set NewSheet = Sheets.Add');
  Fxla.WriteLn('    NewSheet.Name = "Report data"');
  Fxla.WriteLn('    NewSheet.Select');
  Fxla.WriteLn('    Cells.Font.Size = 8');
  Fxla.WriteLn('    Range("A1").FormulaR1C1 = "�" & Chr(10) & "�/�"');
  Fxla.WriteLn('    Range("A1:A3").Merge');
  Fxla.WriteLn('    Range("B1").FormulaR1C1 = "�������, �������, �����������"');
  Fxla.WriteLn('    Range("B1:B3").Merge');
  Fxla.WriteLn('    Range("C1").FormulaR1C1 = "�������" & Chr(10) & "���������"');
  Fxla.WriteLn('    Range("C1:C3").Merge');
  Fxla.WriteLn('    Range("D1").FormulaR1C1 = "����������" & Chr(10) & "�� �����" & Chr(10) & _');
  Fxla.WriteLn('                              "���������" & Chr(10) & "�������"');
  Fxla.WriteLn('    Range("D1:D3").Merge');
  Fxla.WriteLn('    Range("E1").FormulaR1C1 = "����" & Chr(10) & "���������" & Chr(10) & "�������"');
  Fxla.WriteLn('    Range("E1:E3").Merge');
  Fxla.WriteLn('    Range("F1").FormulaR1C1 = "������ �� ������ ��������� �������"');
  Fxla.WriteLn('    Range("F1:L1").Merge');
  Fxla.WriteLn('    Range("F2").FormulaR1C1 = "����������"');
  Fxla.WriteLn('    Range("F2:F3").Merge');
  Fxla.WriteLn('    Range("G2").FormulaR1C1 = "����"');
  Fxla.WriteLn('    Range("G2:G3").Merge');
  Fxla.WriteLn('    Range("H2").FormulaR1C1 = "���������"');
  Fxla.WriteLn('    Range("H2:I2").Merge');
  Fxla.WriteLn('    Range("H3").FormulaR1C1 = "�� �����"');
  Fxla.WriteLn('    Range("I3").FormulaR1C1 = "����������"');
  Fxla.WriteLn('    Range("J2").FormulaR1C1 = "��������"');
  Fxla.WriteLn('    Range("J2:J3").Merge');
  Fxla.WriteLn('    Range("K2").FormulaR1C1 = "������������������� �����"');
  Fxla.WriteLn('    Range("K2:L2").Merge');
  Fxla.WriteLn('    Range("K3").FormulaR1C1 = "������ � ��������" & Chr(10) & "�������"');
  Fxla.WriteLn('    Range("L3").FormulaR1C1 = "������ �� ��������" & Chr(10) & "��������"');
  Fxla.WriteLn('    Range("M1").FormulaR1C1 = "���������" & Chr(10) & "������"');
  Fxla.WriteLn('    Range("M1:M3").Merge');
  Fxla.WriteLn('    Range("N1").FormulaR1C1 = "������� ������"');
  Fxla.WriteLn('    Range("N1:N3").Merge');
  Fxla.WriteLn('    Range("A4").FormulaR1C1 = "1"');
  Fxla.WriteLn('    Range("B4").FormulaR1C1 = "2"');
  Fxla.WriteLn('    Range("A4:B4").Select');
  Fxla.WriteLn('    Selection.AutoFill Destination:=Range("A4:N4"), Type:=xlFillDefault');
  Fxla.WriteLn('    Rows("1:4").Font.Size = 9');
  Fxla.WriteLn('    Rows("1:4").Font.Bold = True');
  Fxla.WriteLn('    Rows("1:4").HorizontalAlignment = xlCenter');
  Fxla.WriteLn('    Range("A1:N4").Select');
  Fxla.WriteLn('    Selection.Borders(xlDiagonalDown).LineStyle = xlNone');
  Fxla.WriteLn('    Selection.Borders(xlDiagonalUp).LineStyle = xlNone');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeLeft)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeTop)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeBottom)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlEdgeRight)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlMedium');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideVertical)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection.Borders(xlInsideHorizontal)');
  Fxla.WriteLn('        .LineStyle = xlContinuous');
  Fxla.WriteLn('        .Weight = xlThin');
  Fxla.WriteLn('        .ColorIndex = xlAutomatic');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    With Selection');
  Fxla.WriteLn('        .HorizontalAlignment = xlCenter');
  Fxla.WriteLn('        .VerticalAlignment = xlCenter');
  Fxla.WriteLn('        .WrapText = True');
  Fxla.WriteLn('        .Orientation = 0');
  Fxla.WriteLn('        .AddIndent = False');
  Fxla.WriteLn('        .IndentLevel = 0');
  Fxla.WriteLn('        .ShrinkToFit = False');
  Fxla.WriteLn('        .ReadingOrder = xlContext');
  Fxla.WriteLn('    End With');
  Fxla.WriteLn('    Cells.EntireRow.AutoFit');
  Fxla.WriteLn('    Cells.EntireColumn.AutoFit');
  Fxla.WriteLn('    Range("A4").Select');
  Fxla.WriteLn('End Sub');
  Fxla.WriteLn('');
  Fxla.WriteLn('Sub ������_����_�_�������()');
  Fxla.WriteLn('    Sheets("Report data").Cells.EntireColumn.AutoFit');
  Fxla.WriteLn('''    Sheets("Report data").Visible = False');
  Fxla.WriteLn('End Sub');

  Fxla.Close;
}
