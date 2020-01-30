Attribute VB_Name = "Module1"
Private Const LogSWS As String = "LOG"
Dim LogRow As Long

Sub DisplayAllNames()
On Error Resume Next

    Set NMS = ActiveWorkbook.Names
    Set wks = Worksheets("Sheet1")
    For R = 1 To NMS.Count
        wks.Cells(R, 2).Value = NMS(R).Name
        wks.Cells(R, 3).Value = NMS(R).RefersToRange.Address
        wks.Cells(R, 4).Value = "'" & NMS(R).RefersTo
        wks.Cells(R, 5).Value = NMS(R).NameLocal
    Next

    Set NMS = ActiveSheet.Names
    Set wks = Worksheets("Sheet2")
    For R = 1 To NMS.Count
        wks.Cells(R, 2).Value = NMS(R).Name
        wks.Cells(R, 3).Value = NMS(R).RefersToRange.Address
        wks.Cells(R, 4).Value = "'" & NMS(R).RefersTo
    Next

On Error GoTo 0
End Sub

Sub DeleteAllNames()
Dim WS As Worksheet
Dim NM As Name
    Set WS = ActiveSheet
    On Error GoTo Err
    Do
        Set NM = WS.Names(1)
        s = NM.Name
        NM.Delete
    Loop
Err:
    On Error GoTo 0
End Sub

Sub DisplayAddIns()
Dim WS As Worksheet
Set WS = ActiveSheet
    rw = 1
    For Each ad In Application.AddIns
        WS.Cells(rw, 1) = ad.Name
        WS.Cells(rw, 2) = ad.FullName
        WS.Cells(rw, 3) = ad.Installed
        rw = rw + 1
    Next
End Sub

Sub RunRep1()
Dim DBWB As Workbook
Dim RepWB  As Workbook
Dim RepWS  As Worksheet
'Set DBWB = Application.Workbooks("Книга1")
Set DBWB = Application.ActiveWorkbook
Set RepWB = Application.ActiveWorkbook
Set RepWS = Application.ActiveWorkbook.ActiveSheet
Call PrintAllTbl(DBWB, RepWS)
Call PrintAllVar(DBWB, RepWS)
End Sub


Sub StartMyLog()
Dim WS As Worksheet
On Error GoTo CrWS
    Set WS = Worksheets(LogSWS)
    GoTo StartSetting
CrWS:
    Set WS = Worksheets.Add
    WS.Name = LogSWS
StartSetting:
    On Error GoTo EndSub
    WS.Cells.ClearContents
    LogRow = 1
EndSub:
    On Error GoTo 0
End Sub

Sub MyLog(s As String)
Dim WS As Worksheet
    On Error GoTo EndSub
    Set WS = Worksheets(LogSWS)
    WS.Cells(LogRow, 1).Value = s
    WS.Cells(LogRow, 2).Value = Time
    If (LogRow > 1) Then
    WS.Cells(LogRow, 3).FormulaR1C1 = "=RC[-1]-R[-1]C[-1]"
    End If
    LogRow = LogRow + 1
EndSub:
    On Error GoTo 0
End Sub

Sub aaa1()
Dim WS As Worksheet
Set WS = Worksheets("Gal_TblSheet")

WS.Names.Add _
            Name:="GalDBTblFld_Sum", _
            RefersTo:="=Gal_TblSheet!$C$1:$D$1"
            
End Sub

Sub aaa2()
Dim WS As Worksheet
Set WS = Worksheets("Отчет")

    sOldReferTo = WS.Names("GalRepTblFld_Sum").RefersTo
    WS.Names.Add _
            Name:="GalRepTblFld_Sum2", _
            RefersTo:=sOldReferTo
           
    Range("GalRepTblFld_Sum").Select
    Selection.Copy
    Selection.Insert Shift:=xlToRight

    WS.Names.Add _
            Name:="GalRepTblFld_Sum1", _
            RefersTo:=sOldReferTo

    WS.Names("GalRepTblFld_Sum").Delete
    
End Sub

Sub aaa3()
n = Asc("9")
End Sub

