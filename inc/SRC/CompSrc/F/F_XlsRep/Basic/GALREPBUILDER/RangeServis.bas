Attribute VB_Name = "RangeServis"
Option Explicit

' ‘ормирование лога
Public Sub DebStr(ByVal sDeb As Variant)
    Debug.Print sDeb
End Sub

' явл€етс€ ли заданный диапазон - одиночной €чейкой
Public Function RangeIsSingleCell(Rng As Range) As Boolean
    RangeIsSingleCell = (Rng.Rows.Count <= 1) And (Rng.Columns.Count <= 1)
End Function

' ѕолучить диапазон с учетом объединени€
Public Function GetMergedRange(Rng As Range) As Range
    Set GetMergedRange = Rng
    If (Rng.MergeCells) And (RangeIsSingleCell(Rng)) Then
        ' если эта €чейка входит в состав объединени€, и это действительно одиночна€ €чейка, то возьмем все объединение
        Set GetMergedRange = Rng.MergeArea
    End If
End Function

' –асполагаетс€ ли диапозон SubRng
' внутри диапозона MainRng
Public Function isSubRange(MainRng As Range, SubRng As Range) As Boolean
isSubRange = False
    If (MainRng.Row <= SubRng.Row) And _
       (MainRng.Column <= SubRng.Column) And _
       ((MainRng.Row + MainRng.Rows.Count - 1) >= (SubRng.Row + SubRng.Rows.Count - 1)) And _
       ((MainRng.Column + MainRng.Columns.Count - 1) >= (SubRng.Column + SubRng.Columns.Count - 1)) Then
        isSubRange = True
    End If
End Function

' –асполагаетс€ ли поименованный диапозон SubRng
' внутри поименованного диапозона MainRng
Public Function isSubName(MainNM As Name, SubNM As Name) As Boolean
isSubName = False
Dim MainRng As Range
Dim SubRng As Range
    If (GetSheetFromName(MainNM) <> GetSheetFromName(SubNM)) Then
        Exit Function
    End If
    Set MainRng = MainNM.RefersToRange
    Set SubRng = SubNM.RefersToRange
    isSubName = isSubRange(MainRng, SubRng)
End Function


Public Function UnionRange(WS As Worksheet, UnionRng As Range, SubRng As Range) As Range
Set UnionRange = UnionRng

Dim UnionR1, UnionC1, UnionR2, UnionC2 As Long
Dim SubR1, SubC1, SubR2, SubC2 As Long
    
    If (UnionRng Is Nothing) Then
        MsgBox ("Error_UnionRange(UnionRng)")
        Exit Function
    End If
    If (SubRng Is Nothing) Then
        MsgBox ("Error_UnionRange(SubRng)")
        Exit Function
    End If
    
    UnionR1 = UnionRng.Row
    UnionC1 = UnionRng.Column
    UnionR2 = UnionR1 + UnionRng.Rows.Count - 1
    UnionC2 = UnionC1 + UnionRng.Columns.Count - 1
    
    SubR1 = SubRng.Row
    SubC1 = SubRng.Column
    SubR2 = SubR1 + SubRng.Rows.Count - 1
    SubC2 = SubC1 + SubRng.Columns.Count - 1
    
    If (UnionR1 > SubR1) Then
        UnionR1 = SubR1
    End If
    If (UnionC1 > SubC1) Then
        UnionC1 = SubC1
    End If
    If (UnionR2 < SubR2) Then
        UnionR2 = SubR2
    End If
    If (UnionC2 < SubC2) Then
        UnionC2 = SubC2
    End If
    Set UnionRange = WS.Range(WS.Cells(UnionR1, UnionC1), WS.Cells(UnionR2, UnionC2))
End Function


Public Function UnionName(WS As Worksheet, UnionNM As Name, SubNM As Name) As Name
Set UnionName = UnionNM
Dim UnionRng  As Range
Dim SubRng As Range
Dim TmpRng As Range
    If (UnionNM Is Nothing) Then
        MsgBox ("Error_UnionName(UnionNM)")
        Exit Function
    End If
    If (SubNM Is Nothing) Then
        MsgBox ("Error_UnionName(SubNM)")
        Exit Function
    End If
    
    Set UnionRng = Range(UnionNM.Name)
    Set SubRng = Range(SubNM.Name)
    Set TmpRng = UnionRange(WS, UnionRng, SubRng)
    Set UnionName = WS.Names.Add(UnionNM.Name, TmpRng)
End Function


