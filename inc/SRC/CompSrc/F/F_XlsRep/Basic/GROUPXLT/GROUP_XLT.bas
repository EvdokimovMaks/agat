Attribute VB_Name = "GROUP_XLT"
Attribute VB_Name = "GROUP_XLT"
' =============================================================================
' (c) 2011 ���������� ���������
' ������ ������������ ����������, ����������� � �������� ��� Excel-�������

' ������� ��������� ������� ���������� ������� ����� �� ������� ���������� ��������� ����� ����������� �� ������� �����������


  Dim GlRepName As String
  Dim GrNum As Integer
  Dim msGR(1 To 5)  As String
  Dim msGR_Sort(1 To 5)  As Integer ' ���������� ����������� (A-Z or Z-A)
  ' ����� ����� Range ��� ����� �� ��������� ������������


  Dim AllData As String
  Dim MinCol, MaxCol, MinRow, MaxRow As Integer
  
  Dim SumPrm(), CntPrm(), AvrPrm(), MinPrm(), MaxPrm(), AbcPrm() As Integer    ' ��������� �����������, ��������
  Dim ArrISum(), ArrICnt(), ArrIAvr(), ArrIMin(), ArrIMax(), ArrIAbc() As Double ' ��������� �������� � ������
  Dim ItgSum(), ItgCnt(), ItgAvr(), ItgMin(), ItgMax(), ItgAbc() As Double       ' ��������� � ����� ����
  
  Dim KolGr, KolSum, KolCnt, KolAvr, KolMin, KolMax, KolAbc As Byte
  
  
' =============================================================================
' ��������� ����������� ������� ������
Sub LastCell()
  MaxCol = ActiveCell.SpecialCells(xlLastCell).Column
  MaxRow = ActiveCell.SpecialCells(xlLastCell).row
End Sub

' =============================================================================
' ������������� ���������� ������������� � ������������ �������/������
Sub ReInitMaxMin(ByVal rng As String)
  ' ������ �������
  If (MinCol > Range(rng).Column) Then
    MinCol = Range(rng).Column
  End If
  
  ' ��������� �������
  If (MaxCol < Range(rng).Column) Then
    MaxCol = Range(rng).Column
  End If
  
  ' ������ ������
  If (MinRow > Range(rng).row) Then
    MinRow = Range(rng).row
  End If
End Sub

' =============================================================================
' ����������, ����������� �� ���� ������, ������
Sub sort()
  ' // ��������� �� ����������� �������� � ��������� SetVariables
  With ActiveWorkbook.Worksheets(GlRepName).sort
    .SetRange Range(Cells(MinRow, MinCol), Cells(MaxRow, MaxCol))
    .Header = xlGuess
    .MatchCase = False
    .Orientation = xlTopToBottom
    .SortMethod = xlPinYin
    .Apply
  End With
End Sub

Function getRng(ByVal oper As String, ByVal num As Byte) As Range
  Dim s As String
  If oper = "Gr" Then
    s = GetDBVar("GalDBVar_" & oper & num)
    s = Left(s, Len(s) - 1)
    s = ActiveWorkbook.Worksheets(GlRepName).Range("GalRepTblFld_" & s).Address
    Set getRng = ThisWorkbook.Worksheets(GlRepName).Range(s)
  Else
    s = ActiveWorkbook.Worksheets(GlRepName).Range("GalRepTblFld_" & GetDBVar("GalDBVar_Agr" & oper & (num + 1))).Address
    Set getRng = ThisWorkbook.Worksheets(GlRepName).Range(s)
  End If
  

End Function

' =============================================================================
' ��������� ������������ �������� � ������-��������
Function AddToArray(ByVal Operation As String, ByVal FieldName As String)
  
  If (Operation = "Sum") Then
    ReDim Preserve SumPrm(KolSum)
    ReDim Preserve ArrISum(KolSum)
    ReDim Preserve ItgSum(KolSum)
    KolSum = KolSum + 1
  End If
  
  If (Operation = "Cnt") Then
    ReDim Preserve CntPrm(KolCnt)
    ReDim Preserve ArrICnt(KolCnt)
    ReDim Preserve ItgCnt(KolCnt)
    KolCnt = KolCnt + 1
  End If
    
  If (Operation = "Avr") Then
    ReDim Preserve AvrPrm(KolAvr)
    ReDim Preserve ArrIAvr(KolAvr)
    ReDim Preserve ItgAvr(KolAvr)
    KolAvr = KolAvr + 1
  End If
  
  If (Operation = "Min") Then
    ReDim Preserve MinPrm(KolMin)
    ReDim Preserve ArrIMin(KolMin)
    ReDim Preserve ItgMin(KolMin)
    KolMin = KolMin + 1
  End If
  
  If (Operation = "Max") Then
    ReDim Preserve MaxPrm(KolMax)
    ReDim Preserve ArrIMax(KolMax)
    ReDim Preserve ItgMax(KolMax)
    KolMax = KolMax + 1
  End If
  
  
  If (Operation = "Abc") Then
    ReDim Preserve AbcPrm(KolAbc)
    ReDim Preserve ArrIAbc(KolAbc)
    ReDim Preserve ItgAbc(KolAbc)
    KolAbc = KolAbc + 1
  End If

End Function

' =============================================================================
' ������������� ���������� ��� ������������ ��������
Sub SetAgrVariable(ByVal Operation As String)
  Dim EndParam As Boolean
  Dim i As Integer
  Dim FieldName As String
  
  i = 0
  EndParam = False
  While Not (EndParam)
    FieldName = ""
    i = i + 1
    On Error Resume Next
    FieldName = GetDBVar("GalDBVar_Agr" & Operation & i)
    
    If FieldName = "" Then
      EndParam = True
    Else
      EndParam = AddToArray(Operation, FieldName)
    End If
  Wend
End Sub

Function getMin(ByVal a, ByVal b As Double) As Double
  getMin = a
  
  If b < a Then
    getMin = b
  End If
  
  If b = 0.00001 Then
    getMin = a
  End If
  
  If a = 0.00001 Then
    getMin = b
  End If
End Function


Function getMax(ByVal a, ByVal b As Double) As Double
  getMax = a
  
  If b > a Then
    getMax = b
  End If
  
  If b = 0.00001 Then
    getMax = a
  End If
  
  If a = 0.00001 Then
    getMax = b
  End If
End Function


Function SetGrOperation(ByVal rng As Range, ByVal col As Long) As Boolean
  Dim i As Byte
    SetGrOperation = True
    
    ' �����
    i = 0
    Do While i < KolSum
      ArrISum(i) = ArrISum(i) + rng.Offset(, getRng("Sum", i).Column - col).Value
      ItgSum(i) = ItgSum(i) + rng.Offset(, getRng("Sum", i).Column - col).Value
      rng.Value = ""
      i = i + 1
    Loop
    
    ' ���������� ������� � �����������
    i = 0
    Do While i < KolCnt
      ArrICnt(i) = ArrICnt(i) + 1
      ItgCnt(i) = ItgCnt(i) + 1
      rng.Value = ""
      i = i + 1
    Loop
    
    ' ������� �������������� (������� ����� ���������, � ����� ����������� ������������� / �� �� ����������)
    i = 0
    Do While i < KolAvr
      ArrIAvr(i) = ArrIAvr(i) + rng.Offset(, getRng("Avr", i).Column - col).Value
      ItgAvr(i) = ItgAvr(i) + rng.Offset(, getRng("Avr", i).Column - col).Value
      rng.Value = ""
      i = i + 1
    Loop
    
    ' ����������� ������� �����������
    i = 0
    Do While i < KolMin
      ArrIMin(i) = getMin(ArrIMin(i), rng.Offset(, getRng("Min", i).Column - col).Value)
      ItgMin(i) = getMin(ItgMin(i), rng.Offset(, getRng("Min", i).Column - col).Value)
      rng.Value = ""
      i = i + 1
    Loop
    
    ' ������������ ������� �����������
    i = 0
    Do While i < KolMax
      ArrIMax(i) = getMax(ArrIMax(i), rng.Offset(, getRng("Max", i).Column - col).Value)
      ItgMax(i) = getMax(ItgMax(i), rng.Offset(, getRng("Max", i).Column - col).Value)
      rng.Value = ""
      i = i + 1
    Loop
    
    ' abc - ������
    i = 0
    Do While i < KolAbc
      ArrIAbc(i) = ArrIAbc(i) + rng.Offset(, getRng("Abc", i).Column - col).Value
      'ItgAbc(i) = ItgAbc(i) + rng.Offset(, getRng("Abc", i).Column - col).Value
      rng.Value = ""
      i = i + 1
    Loop
    
End Function

Sub SetGrItog(ByVal rng As Range, ByVal col, ByVal k As Long) ' ������ � ������� ������� �� ������������
    Dim i As Long
    
    ' �����
    i = 0
    Do While i < KolSum
      rng.Offset(1, getRng("Sum", i).Column - col).Value = rng.Offset(1, getRng("Sum", i).Column - col).Value & _
          "[�����: " & ArrISum(i) & "] "  ' ��������� ������ �������� ���������
      ArrISum(i) = 0
      i = i + 1
    Loop
    
    ' ����������
    i = 0
    Do While i < KolCnt
      rng.Offset(1, getRng("Cnt", i).Column - col).Value = rng.Offset(1, getRng("Cnt", i).Column - col).Value & _
          "[���-��: " & ArrICnt(i) & "] "
      ArrICnt(i) = 0
      i = i + 1
    Loop
    
    ' ������� ��������������
    i = 0
    Do While i < KolAvr
      ArrIAvr(i) = ArrIAvr(i) / k                                                   ' ������� �������� ���������������
      rng.Offset(1, getRng("Avr", i).Column - col).Value = rng.Offset(1, getRng("Avr", i).Column - col).Value & _
          "[�����: " & ArrIAvr(i) & "] "
      ArrIAvr(i) = 0
      i = i + 1
    Loop
    
    ' ����������� ��������
    i = 0
    Do While i < KolMin
      rng.Offset(1, getRng("Min", i).Column - col).Value = rng.Offset(1, getRng("Min", i).Column - col).Value & _
          "[���: " & ArrIMin(i) & "] "
      ArrIMin(i) = 0.00001
      i = i + 1
    Loop
    
    ' ������������ ��������
    i = 0
    Do While i < KolMax
      rng.Offset(1, getRng("Max", i).Column - col).Value = rng.Offset(1, getRng("Max", i).Column - col).Value & _
          "[����: " & ArrIMax(i) & "] "
      ArrIMax(i) = 0.00001
      i = i + 1
    Loop
    
        
    ' abc - ������
    Dim y As Long
    Dim s As String
    
    i = 0
    Do While i < KolAbc
      y = k
      Do While y >= 0
        
        ItgAbc(i) = ItgAbc(i) + rng.Offset(-y, getRng("Abc", i).Column - col).Value / ArrIAbc(i)
        
        If k > 2 Then
            If ItgAbc(i) < 0.5 Then
              s = "A"
              'MsgBox ("ItgAbc(i) < 0.5")
            ElseIf ItgAbc(i) >= 0.5 And ItgAbc(i) < 0.85 Then
              s = "B"
              'MsgBox ("ItgAbc(i) >= 0.5 And ItgAbc(i) < 0.85")
            ElseIf ItgAbc(i) >= 0.85 Then
              s = "C"
              'MsgBox ("ItgAbc(i) >= 0.85")
            End If
        ElseIf k = 2 Then
            If y = 2 Then
              s = "A"
              'MsgBox ("y = 2")
            ElseIf y = 1 Then
              s = "B"
              'MsgBox ("y = 1")
            ElseIf y = 0 Then
              s = "C"
              'MsgBox ("y = 0")
            End If
        ElseIf k = 1 Then
            If y = 1 Then
              s = "A"
            ElseIf y = 0 Then
              s = "B"
            End If
        ElseIf k = 0 Then
              s = "A"
        End If
    
        rng.Offset(-y, getRng("Abc", i).Column - col + 1).Value = rng.Offset(-y, getRng("Abc", i).Column - col + 1).Value & "[" & s & ": " _
          & rng.Offset(-y, getRng("Abc", i).Column - col).Value / ArrIAbc(i) & "]"
          
        y = y - 1
      Loop
      ArrIAbc(i) = 0
      ItgAbc(i) = 0
      
      i = i + 1
    Loop
    
End Sub

Sub SetItog(ByVal ik As Long) ' ������ � ������� ������� �� ������������
    Dim i As Long
    
    ' �����
    i = 0
    Do While i < KolSum
      ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Sum", i).row + getRng("Sum", i).Rows.Count + 2, getRng("Sum", i).Column).Value = _
          ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Sum", i).row + getRng("Sum", i).Rows.Count + 2, getRng("Sum", i).Column).Value _
          & " �����: " & ItgSum(i)
      i = i + 1
    Loop
    
    ' ����������
    i = 0
    Do While i < KolCnt
      ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Cnt", i).row + getRng("Cnt", i).Rows.Count + 2, getRng("Cnt", i).Column).Value = _
          ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Cnt", i).row + getRng("Cnt", i).Rows.Count + 2, getRng("Cnt", i).Column).Value _
          & " ���-��: " & ItgCnt(i)
      i = i + 1
    Loop
    
    ' �������
    i = 0
    Do While i < KolAvr
      ItgAvr(i) = ItgAvr(i) / ik
      ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Avr", i).row + getRng("Avr", i).Rows.Count + 2, getRng("Avr", i).Column).Value = _
          ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Avr", i).row + getRng("Avr", i).Rows.Count + 2, getRng("Avr", i).Column).Value _
          & " �����: " & ItgAvr(i)
      i = i + 1
    Loop
    
    ' �����������
    i = 0
    Do While i < KolMin
      ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Min", i).row + getRng("Min", i).Rows.Count + 2, getRng("Min", i).Column).Value = _
          ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Min", i).row + getRng("Min", i).Rows.Count + 2, getRng("Min", i).Column).Value _
          & " ���: " & ItgMin(i)
      i = i + 1
    Loop
    
    ' ������������
    i = 0
    Do While i < KolMax
      ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Max", i).row + getRng("Max", i).Rows.Count + 2, getRng("Max", i).Column).Value = _
          ThisWorkbook.Worksheets(GlRepName).Cells(getRng("Max", i).row + getRng("Max", i).Rows.Count + 2, getRng("Max", i).Column).Value _
          & " ����: " & ItgMax(i)
      i = i + 1
    Loop
End Sub

Sub SetGroup()
  
  Dim k As Long
  Dim groupRng, rng As Range
  Dim i As Integer
  Dim ins_ As Boolean
  Dim grName As String
  Dim test As Boolean
  Dim s As String
  
  i = 1

  Do While i <= KolGr
    Set groupRng = getRng("Gr", i)
    k = 0
    cnt = 0
    
    For Each rng In groupRng
        If rng.Value = rng.Offset(1).Value Then
           k = k + 1
           grName = rng.Value
           ins_ = False
           Call SetGrOperation(rng, groupRng.Column)
        ElseIf ins_ = False Then
            grName = rng.Value
            
            Call SetGrOperation(rng, groupRng.Column)
            rng.Offset(1).EntireRow.Insert
            rng.Offset(1).Value = rng.Offset(1).Value & "[����� �� " & grName & "] "
            Call SetGrItog(rng, groupRng.Column, k)
            k = 0
            ins_ = True
            grName = ""
        End If
    Next
    ' ��������� ����������� ��������� ������ �������� � �������
    s = GetDBVar("GalDBVar_" & "Gr" & i)
    s = "GalRepTblFld_" & Left(s, Len(s) - 1)
    ActiveWorkbook.Names.Add Name:=s, RefersToR1C1:="=�����!R" & groupRng.row & "C" & groupRng.Column & ":R" & groupRng.row + groupRng.Rows.Count & "C" & groupRng.Column
    i = i + 1
  Loop
  
  i = 1
  k = 0
  
  Do While i <= KolGr
    Set groupRng = getRng("Gr", i)
    k = 0
    For Each rng In groupRng
      If Left(rng.Value, 10) = "[����� �� " Then
        ActiveWorkbook.Worksheets(GlRepName).Range(rng.Offset(-k).row & ":" & rng.row - 1).Group
        k = 0
      Else
        k = k + 1
      End If
    Next
    i = i + 1
  Loop
End Sub



' =============================================================================
' ������������� ���������� � ����������� �� ���������� ����������
Sub SetVariables()
  Dim rngGr, fldGr As String
  Dim num As Integer
  Dim ssort As String
  Dim nsort As Integer
  Dim tmp As String
  
  KolGr = 0
  KolSum = 0
  KolCnt = 0
  KolAvr = 0
  KolMin = 0
  KolMax = 0
  KolAbc = 0
  
  MinCol = 100
  MaxCol = 0
  MinRow = 100
  MaxRow = 0
  
  num = 0
  ActiveWorkbook.Worksheets(GlRepName).sort.SortFields.Clear
  ' ������������� �������� ����������


   While num < 5
    num = num + 1
    
    On Error Resume Next
    msGR(num) = GetDBVar("GalDBVar_Gr" & num)
      
    If (msGR(num) <> "") Then
      ' ���������� �������� ���������� ��� ����������� (���������� ��������� �������� 1 (�-�) ��� 2(�-�))
      msGR_Sort(num) = CInt(Right(msGR(num), 1))
      msGR(num) = Left(msGR(num), Len(msGR(num)) - 1)
      KolGr = KolGr + 1
      tmp = getRng("Gr", num).Address

      ' ��������� ���� �� ����������, ��� ����������
      ActiveWorkbook.Worksheets(GlRepName).sort.SortFields.Add Key:=Range(tmp), SortOn:=xlSortOnValues, Order:=msGR_Sort(num), DataOption:=xlSortNormal
      Call ReInitMaxMin(tmp)
    End If
  Wend

  num = 0
  While num < 15
    num = num + 1
    ssort = ""
    nsort = 0
    On Error Resume Next
    ssort = GetDBVar("GalDBVar_Order" & num)
    ' ���������� �������� ���������� ��� ����������� (���������� ��������� �������� 1 (�-�) ��� 2(�-�))
    nsort = CInt(Right(ssort, 1))
    ssort = Left(ssort, Len(ssort) - 1)
    ' ��������� ���� �� ����������, ��� ����������
    ssort = Range("GalRepTblFld_" & ssort).Address
    ActiveWorkbook.Worksheets(GlRepName).sort.SortFields.Add Key:=Range(ssort) _
      , SortOn:=xlSortOnValues, Order:=nsort, DataOption:=xlSortNormal
  Wend
  
  LastCell
     
  ' ������������� ������������ ����������
  SetAgrVariable ("Sum")
  SetAgrVariable ("Cnt")
  SetAgrVariable ("Avr")
  SetAgrVariable ("Min")
  SetAgrVariable ("Max")
  SetAgrVariable ("Abc")
End Sub

Sub setAbc()


End Sub

' =============================================================================
' �������� ���������
Sub GrXLT(sRepName As String)
  GlRepName = sRepName
  Sheets(GlRepName).Select
  Application.DisplayAlerts = False ' �������� ��� ��������������, ���� �� ���������� �������
  Call SetVariables ' ������������� ����������
  Call sort         ' ���������� ������ �� ����� ������
  Call SetGroup     ' ����������� ������ �� ���������� ��������
  'Call setAbc

  Range("A1").Select
  
  Application.DisplayAlerts = True
End Sub







