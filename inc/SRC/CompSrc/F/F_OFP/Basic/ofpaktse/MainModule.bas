Attribute VB_Name = "MainModule"
' (c) 2012 корпорация ГАЛАКТИКА
' Макросы формирования отчета

Option Explicit

' Библиотека сервисных функций формирования отчетов
Public Const GalLibName As String = "GalRepBuilder"
Public Const GalLib As String = GalLibName & ".xla!"

' Книга XLS-БД
Dim DBWB As Workbook

' Получить значение переменной XLS-БД
' по наименованию ее диапазона
'   sDBVar - наименование диапазона переменной
Function GetDBVar(sDBVar As String) As Variant
GetDBVar = ""
If Not (DBWB Is Nothing) Then
    GetDBVar = Application.Run(GalLib & "GetDBVar", DBWB, sDBVar)
End If
End Function

' Вывести в отчет все переменные и таблицы
'    sRepWS - наименование листа
Sub PrintToSheet(sRepWS As String)
    If Not (DBWB Is Nothing) Then
        Call Application.Run(GalLib & "PrintAllToSWS", DBWB, ThisWorkbook, sRepWS)
    End If
End Sub

' Сформировать отчет на основании данных заданной XLS-БД
'   sDBWB - наименование рабочей книги Excel с данными (XLS-БД)
Sub LoadRepFromDB(sDBWB As String)
    Set DBWB = Application.Workbooks(sDBWB)
    ' Вывести требуемый отчет
    Call LoadThisRepFromDB
End Sub

' Сформировать отчет на основании данных текущей XLS-БД
Sub LoadReport()
    LoadRepFromDB (ThisWorkbook.Name)
    ThisWorkbook.Worksheets("Gal_VarSheet").Visible = False
    ThisWorkbook.Worksheets("Gal_TblSheet").Visible = False
End Sub

