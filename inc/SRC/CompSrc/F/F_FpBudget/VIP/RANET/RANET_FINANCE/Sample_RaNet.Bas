'------------------------------------------------------------------------------
' Выгрузка лимитов по "текущей" типовой форме
'------------------------------------------------------------------------------
'function GetLimits(
'  _xmlFile        : string;  // Путь на xml-файл с выгрузкой
'  _sDBeg          : string;  // Диапозон дат для выгрузки
'  _sDEnd          : string;  //   формат 'DD/MM/YYYY'
'  _sBudCO         : string;  // NRec ЦО бюджета, если не задан, то все ЦО
'  _isUseTForm     : boolean; // Для определения множества статей:
'                             //   False - все статьи из каталога статей
'                             //   True  - только статьи "текущей" типовой формы
'  _sTFormMode     : string;  // Режим определения статей типовой формы:
'                             //   '0' - все статьи типовой формы
'                             //   '1' - только видимые статьи типовой формы
'  _isLoadNullSums : boolean  // Выгружать ли нулевые суммы
') : boolean;
'------------------------------------------------------------------------------
Sub GetLimits()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    Set Iface = GalApp.LoadVip("OleRanetFinance")
    If (Iface Is Nothing) Then
        MsgBox "Не найнен интерфейс OleRanetFinance"
        Exit Sub
    End If

    Iface.SetLogFile ("d:\BudgetLimits.Log")
    LoadResult = Iface.GetLimits("d:\BudgetLimits.Xml" _
    , "01/01/1905", "12/05/2005" _
    , "53" _
    , True, "1" _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetLimits:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub

'------------------------------------------------------------------------------
' Выгрузка лимитов по заданной типовой форме
'------------------------------------------------------------------------------
'function GetLimitsTForm(
'  _xmlFile        : string;  // Путь на xml-файл с выгрузкой
'  _sDBeg          : string;  // Диапозон дат для выгрузки
'  _sDEnd          : string;  //   формат 'DD/MM/YYYY'
'  _sBudCO         : string;  // NRec ЦО бюджета, если не задан, то все ЦО
'  _isUseTForm     : boolean; // Для определения множества статей:
'                             //   False - все статьи из каталога статей
'                             //   True  - только статьи заданной типовой формы
'  _sTForm         : string;  // NRec типовой формы, если не задан, то "текущая" типовая форма
'  _sTFormMode     : string;  // Режим определения статей типовой формы:
'                             //   '0' - все статьи типовой формы
'                             //   '1' - только видимые статьи типовой формы
'  _isLoadNullSums : boolean  // Выгружать ли нулевые суммы
') : boolean;
'------------------------------------------------------------------------------
Sub GetLimitsTForm()
    Dim GalApp As Variant, Iface As Variant
    Set GalApp = CreateObject("GalNet.App")

    Set Iface = GalApp.LoadVip("OleRanetFinance")
    If (Iface Is Nothing) Then
        MsgBox "Не найнен интерфейс OleRanetFinance"
        Exit Sub
    End If

    Iface.SetLogFile ("d:\BudgetLimits.Log")
    LoadResult = Iface.GetLimitsTForm("d:\BudgetLimits.Xml" _
    , "01/01/2002", "30/06/2002" _
    , "52" _
    , True, "0", "0" _
    , False _
    )
    If (Not LoadResult) Then
        s = Iface.GetStLastError
        MsgBox "GetLimitsTForm:" & s
    End If

    Set Iface = Nothing
    GalApp.Quit
    Set GalApp = Nothing

End Sub


