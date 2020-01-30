Attribute VB_Name = "Runner"
Option Explicit

Public Const GalLib As String = "GalRepBuilder.xla!"
Public Const cgxlGal_VarSheet As String = "Gal_VarSheet"
Public Const cgxlGal_TblSheet As String = "Gal_TblSheet"

Public DBWorkBook As Workbook
Public DBVarWorkSheet As Worksheet
Public DBTblWorkSheet As Worksheet
Public DBVarNames As Collection
Public DBTblNames As Collection
Public DBTblFldNames As Collection

Public RepWorkBook As Workbook
Public RepWorkSheet As Worksheet
Public RepVarNames As Names
Public RepTblNames As Names
Public RepTblFldNames As Names

Function GetSimpeSName(SNM As String) As String
Dim sTmp As String
    sTmp = SNM
    sTmp = Application.Run(GalLib & "GetSimpeSName", sTmp)
    sTmp = Application.Run(GalLib & "SubGalPrefix", sTmp)
    GetSimpeSName = sTmp
End Function

Function GetDBVarCollection(WS As Worksheet) As Collection
    Set GetDBVarCollection = Application.Run(GalLib & "GetDBVarCollection", WS)
End Function
Function GetDBVarCollection_UniqArray(WS As Worksheet) As Collection
    Set GetDBVarCollection_UniqArray = Application.Run(GalLib & "GetDBVarCollection_UniqArray", WS)
End Function
Function GetDBTblCollection(WS As Worksheet) As Collection
    Set GetDBTblCollection = Application.Run(GalLib & "GetDBTblCollection", WS)
End Function
Function GetDBTblFldCollection(WS As Worksheet) As Collection
    Set GetDBTblFldCollection = Application.Run(GalLib & "GetDBTblFldCollection", WS)
End Function
Function GetDBTblFldCollectionBySTbl(WS As Worksheet, sTbl As String) As Collection
    Set GetDBTblFldCollectionBySTbl = Application.Run(GalLib & "GetDBTblFldCollectionBySTbl", WS, sTbl)
End Function
Function GetDBTblFldCollectionBySTbl_UniqArray(WS As Worksheet, sTbl As String) As Collection
    Set GetDBTblFldCollectionBySTbl_UniqArray = Application.Run(GalLib & "GetDBTblFldCollectionBySTbl_UniqArray", WS, sTbl)
End Function

Function GetRepVarCollection(WS As Worksheet) As Collection
    Set GetRepVarCollection = Application.Run(GalLib & "GetRepVarCollection", WS)
End Function
Function GetRepTblCollection(WS As Worksheet) As Collection
    Set GetRepTblCollection = Application.Run(GalLib & "GetRepTblCollection", WS)
End Function
Function GetRepTblFldCollection(WS As Worksheet) As Collection
    Set GetRepTblFldCollection = Application.Run(GalLib & "GetRepTblFldCollection", WS)
End Function

Function MakeRepSNameFromDBSName(SNM As String) As String
    MakeRepSNameFromDBSName = Application.Run(GalLib & "MakeRepSNameFromDBSName", SNM)
End Function

Function FindRepNameByDBName(DBName As Name, RepWS As Worksheet) As Name
    Set FindRepNameByDBName = Application.Run(GalLib & "FindRepNameByDBName", DBName, RepWS)
End Function

Function UnionName(WS As Worksheet, UnionNM As Name, SubNM As Name) As Name
    Set UnionName = Application.Run(GalLib & "UnionName", WS, UnionNM, SubNM)
End Function

Function MakeTblNameByAllTblFld(DBWS As Worksheet, RepWS As Worksheet, sTblNM As String) As Name
Dim sRepTblNM As String
    sRepTblNM = MakeRepSNameFromDBSName(sTblNM)
    Set MakeTblNameByAllTblFld = Application.Run(GalLib & "MakeTblNameByAllTblFld", DBWS, RepWS, sRepTblNM)
End Function

Sub RunConnector()
    UserForm2.Show
End Sub
Sub RunAbout()
    AboutForm.Show
End Sub

Sub RunDesigner(sDBWorkBook As String, sRepWorkBook As String, sRepWorksheet As String)
    Set DBWorkBook = Application.Workbooks(sDBWorkBook)
    On Error GoTo ErrGal_VarSheet
    Set DBVarWorkSheet = DBWorkBook.Worksheets(cgxlGal_VarSheet)
    On Error GoTo ErrGal_TblSheet
    Set DBTblWorkSheet = DBWorkBook.Worksheets(cgxlGal_TblSheet)
    On Error GoTo 0
    Set DBVarNames = GetDBVarCollection_UniqArray(DBVarWorkSheet)
    Set DBTblNames = GetDBTblCollection(DBTblWorkSheet)
    'это наверное не надо, т.к. теперь формируем отдельно по таблицам
    'Set DBTblFldNames = GetDBTblFldCollection(DBTblWorkSheet)
    
    Set RepWorkBook = Application.Workbooks(sRepWorkBook)
    Set RepWorkSheet = RepWorkBook.Worksheets(sRepWorksheet)
    
    Set RepVarNames = RepWorkSheet.Names
    Set RepTblNames = RepWorkSheet.Names
    Set RepTblFldNames = RepWorkSheet.Names
     
    UserForm1.Show
    Exit Sub

ErrGal_VarSheet:
    MsgBox "В БД не найден лист с переменными отчета..."
    Exit Sub
ErrGal_TblSheet:
    MsgBox "В БД не найден лист с таблицами отчета..."
    Exit Sub
End Sub


