'------------------------------------------------------------------------------
' Выгрузка данных бюджетов с предварительным пересчетом (план, факт)
' Дополнительные параметры задаются в Галактике:
' - вариант бюджета
' - стадия бюджетного процесса
' (см. "=Настройка=\Настройки "Галактики"\Управление финансами\
' Платежный календарь\Связь с бюджетом\...)
'------------------------------------------------------------------------------
'function GetBudgetValues(
'  _xmlFile    : string;   // путь к XML-файлу
'  _xmlNS      : string;   // путь к XML-шаблонк
'  _logFile    : string;   // путь к Log-файлу
'  _sBudCO     : string;   // наименование ЦО бюджета
'  _isCOLevel  : boolean;  // выводить подчиненный уровень ЦО
'  _sBudTPer   : string;   // спецификация типа периода бюджета
'  _sDBeg      : string;   // выгружать данные "с"
'  _sDEnd      : string;   // выгружать данные "по"
'  _sTForm     : string;   // наименование типовой формы бюджета
'  _sTFLevel   : integer;  // глубина уровней аналитики
'  _isAddCode  : boolean;  // включать в название коды для сортировки
'  _isAddEmpty : boolean   // выводить нулевые значения
') : boolean;              // результат выполнения, если False, см. GetStLastError
'------------------------------------------------------------------------------
Sub GetOleFp_RaNetBM()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetBM")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "Не найден интерфейс OleFp_RaNetBM"
        Exit Sub
    End If

    LoadResult = Iface.GetBudgetValues( _
      "c:\oleFp_RaNetBM.Xml", "http://localhost/bm/typeschema" _
    , "c:\oleFp_RaNetBM.Log" _
    , "Замоскворецкий", False _
    , "Квартал", "01/04/2002", "01/06/2002" _
    , "ТФ_ОРГ", 0 _
    , False _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetBudgetValues:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub
'------------------------------------------------------------------------------
' Выгрузка данных бюджетов без предварительного пересчета
'------------------------------------------------------------------------------
Sub GetOleFp_RaNetBM_NotRecalc()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    On Error Resume Next
    Set Iface = GalApp.LoadVip("OleFp_RaNetBM")
    On Error GoTo 0
    If (Iface Is Nothing) Then
        MsgBox "Не найден интерфейс OleFp_RaNetBM"
        Exit Sub
    End If

    LoadResult = Iface.GetNotReCalcBudgetValues( _
      "c:\oleFp_RaNetBM.Xml", "http://localhost/bm/typeschema" _
    , "c:\oleFp_RaNetBM.Log" _
    , "Замоскворецкий", False _
    , "Квартал", "01/04/2002", "01/06/2002" _
    , "ВСЕ", 2 _
    , False _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetBudgetValues:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub
'------------------------------------------------------------------------------
Sub LoadXML()
    Cells.Select
    Selection.ClearContents
    Selection.Delete Shift:=xlUp
    ActiveWorkbook.XmlImport URL:="C:\oleFp_RaNetBM.Xml", ImportMap:=Nothing, _
        Overwrite:=True, Destination:=Range("$A$2")
    ActiveWorkbook.Save
End Sub
