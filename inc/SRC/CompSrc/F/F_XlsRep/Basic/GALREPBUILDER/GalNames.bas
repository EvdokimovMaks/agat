Attribute VB_Name = "GalNames"
Option Explicit

Private CurDataWB As Workbook
Private CurDataWS As Workbook
Private CurTemplWB As Workbook
Private CurTemplWS As Workbook

Private Const GalCommonPrefix  As String = "Gal"
Private Const GalDBVarPrefix  As String = "GalDBVar_"
Private Const GalDBTblPrefix  As String = "GalDBTbl_"
Private Const GalDBTblFldPrefix  As String = "GalDBTblFld_"
  
Private Const GalRepVarPrefix  As String = "GalRepVar_"
Private Const GalRepTblPrefix  As String = "GalRepTbl_"
Private Const GalRepTblFldPrefix  As String = "GalRepTblFld_"

Private Const GalArrFldPostfix  As String = "_Arr1N"

Private Const GalDBVarMode  As Byte = 1
Private Const GalDBTblMode  As Byte = 2
Private Const GalDBTblFldMode  As Byte = 3

Private Const GalRepVarMode  As Byte = 4
Private Const GalRepTblMode  As Byte = 5
Private Const GalRepTblFldMode  As Byte = 6

'Private Const GalDBMode  As Byte = 1
'Private Const GalRepMode  As Byte = 2
'Private Const GalVarMode  As Byte = 4
'Private Const GalTblMode  As Byte = 8
'Private Const GalTblFldMode  As Byte = 16


' Является ли символ числомOrd
Private Function MyIsDigitChar(s As String) As Boolean
MyIsDigitChar = ((48 <= Asc(s)) And (Asc(s) <= 57))
End Function


' Сравнение двух строк
Private Function MyStrComp(Str1 As String, Str2 As String) As Boolean
MyStrComp = (StrComp(Str1, Str2, vbTextCompare) = 0)
End Function

Public Function IsValidName(NM As Name) As Boolean
Dim rnCheck As Range
IsValidName = False
    If (NM Is Nothing) Then
        Exit Function
    End If
    On Error GoTo ErrValid
    Set rnCheck = NM.RefersToRange
    IsValidName = True
ErrValid:
    On Error GoTo 0
End Function

' Из заданного имени, удалить
' описание листа рабочей книги
Public Function GetSimpeSName(sNM As String) As String
GetSimpeSName = sNM
Dim s As String
Dim i As Long
    s = sNM
    If (IsEmpty(s)) Then
        Exit Function
    End If
    i = InStr(1, s, "!")
    While i <> 0
        s = Mid(s, i + 1)
        i = InStr(1, s, "!")
    Wend
GetSimpeSName = s
End Function

' Является ли данное имя - именем,
' используемымм в Галактике
Public Function IsGalSName(sNM As String) As Boolean
IsGalSName = False
Dim s As String
    s = GetSimpeSName(sNM)
    If ((Mid(s, 1, 3)) <> GalCommonPrefix) Then
        Exit Function
    End If
    If (InStr(1, s, "_") = 0) Then
        Exit Function
    End If
IsGalSName = True
End Function

' Является ли данное имя - именем,
' используемымм в Галактике
Public Function IsGalName(NM As Name) As Boolean
IsGalName = False
    If (NM Is Nothing) Then
        Exit Function
    End If
IsGalName = IsGalSName(NM.Name)
End Function

' Получить наименование листа,
' в котором расположено заданное имя
Public Function GetSheetFromName(NM As Name) As String
GetSheetFromName = ""
On Error Resume Next
    GetSheetFromName = NM.RefersToRange.Worksheet.Name
On Error GoTo 0
End Function

' Расположенно ли заданное имя
' в заданном листе рабочей книги
Public Function IsNameInSheet(NM As Name, WS As Worksheet) As Boolean
Dim s As String
    s = GetSheetFromName(NM)
IsNameInSheet = (IsEmpty(s)) Or (s = WS.Name)
End Function

' Получить из заданного имени
' стандартный Галактический префикс
Public Function GetGalSNamePrefix(sNM As String) As String
Dim s As String
    s = GetSimpeSName(sNM)
    GetGalSNamePrefix = Mid(s, 1, InStr(1, s, "_"))
End Function

' Удалить из заданного имени
' стандартный Галактический префикс
Public Function SubGalPrefix(sNM As String) As String
SubGalPrefix = sNM
Dim i As Long
Dim s As String
    s = sNM
    If (IsEmpty(s)) Then
        Exit Function
    End If
    If (Not IsGalSName(s)) Then
        Exit Function
    End If
    i = InStr(1, s, "_")
    If (i = 0) Then
        Exit Function
    End If
    s = Mid(s, i + 1)
SubGalPrefix = s
End Function

' Если наименование диапозона является элементом массива,
' то возвращает индекс элемента, иначе -1
Public Function GetArrayIndex(ArrEl As Name) As Long
Dim sNM As String
Dim sInd As String
Dim s As String
Dim i As Long
Dim l As Long
    GetArrayIndex = -1
    sNM = ArrEl.Name
    sInd = ""
    l = Len(sNM)
    For i = l To 1 Step -1
        s = Mid(sNM, i, 1)
        If (s = "_") Then
            Exit For
        End If
        If (Not MyIsDigitChar(s)) Then
            Exit Function
        End If
        sInd = s + sInd
    Next i
    GetArrayIndex = Val(sInd)
End Function

' Если наименование диапозона является элементом массива,
' то возвращает индекс элемента, иначе -1
Public Function IsArrayElement(ArrEl As Name) As Boolean
IsArrayElement = (GetArrayIndex(ArrEl) <> -1)
End Function

' Если наименование диапозона является элементом массива,
' то возвращает наименование массива, иначе прежнее наимеонвание
Public Function GetArraySName(ArrEl As Name) As String
Dim sNM As String
Dim sArr As String
Dim Ind As Long
Dim p As Long
    sNM = ArrEl.Name
    GetArraySName = sNM
    Ind = GetArrayIndex(ArrEl)
    If (Ind = -1) Then
        Exit Function
    End If
    sArr = Mid(sNM, 1, Len(sNM) - Len(Str(Ind)))
    GetArraySName = sArr + GalArrFldPostfix
End Function

' Является ли наименование диапозона массивом
Public Function IsSArray(sArr As String) As Boolean
Dim s As String
s = Mid(sArr, Len(sArr) - Len(GalArrFldPostfix) + 1)
IsSArray = (s = GalArrFldPostfix)
End Function

' Является ли наименование диапозона массивом
Public Function IsArray(Arr As Name) As Boolean
IsArray = IsSArray(Arr.Name)
End Function

' Если наименование диапозона является элементом массива,
' то возвращает наименование массива, иначе прежнее наимеонвание
Public Function SubArrayPostfix(ByVal sArr As String) As String
SubArrayPostfix = sArr
If (IsSArray(sArr)) Then
    SubArrayPostfix = Mid(sArr, 1, Len(sArr) - Len(GalArrFldPostfix))
End If
End Function

' Является ли наименование диапозона массивом
Public Function GetArrayLength(Arr As Name, NMS As Collection) As Long
Dim NM As Name
Dim RBounds As Long
Dim TmpInd As Long
    RBounds = 0
    GetArrayLength = RBounds
    If (Arr Is Nothing) Then
        Exit Function
    End If
    For Each NM In NMS
        If (IsArrayElement(NM)) Then
            If (Arr.Name = GetArraySName(NM)) Then
                TmpInd = GetArrayIndex(NM)
                If (TmpInd > RBounds) Then
                    RBounds = TmpInd
                End If
            End If
        End If
    Next
    GetArrayLength = RBounds
End Function


' Преобразовать наименование диапозона
' в наименование доступное для просмотра
Public Function GetGalNameShowSName(sNM As String) As String
Dim s As String
    s = GetSimpeSName(sNM)
    GetGalNameShowSName = SubGalPrefix(GetSimpeSName(s))
End Function

' Найти имя на заданном листе рабочей книги
' по заданному простейшему наименованию
Private Function FindNameBySimpleSName(WS As Worksheet, sNM As String) As Name
Set FindNameBySimpleSName = Nothing
'Dim WB As Workbook
Dim NMS As Names
'Dim NM As Name
    'Set WB = WS.Parent
    Set NMS = WS.Names
    Set FindNameBySimpleSName = FindInNames(sNM, NMS)
End Function

Private Function IsGalDBVarSName(sNM As String) As Boolean
Dim s As String
    s = GetSimpeSName(sNM)
    IsGalDBVarSName = MyStrComp(GetGalSNamePrefix(s), GalDBVarPrefix)
End Function
Private Function IsGalDBTblSName(sNM As String) As Boolean
Dim s As String
    s = GetSimpeSName(sNM)
    IsGalDBTblSName = MyStrComp(GetGalSNamePrefix(s), GalDBTblPrefix)
End Function
Private Function IsGalDBTblFldSName(sNM As String) As Boolean
Dim s As String
    s = GetSimpeSName(sNM)
    IsGalDBTblFldSName = MyStrComp(GetGalSNamePrefix(s), GalDBTblFldPrefix)
End Function

Private Function IsGalRepVarSName(sNM As String) As Boolean
Dim s As String
    s = GetSimpeSName(sNM)
    IsGalRepVarSName = MyStrComp(GetGalSNamePrefix(s), GalRepVarPrefix)
End Function
Private Function IsGalRepTblSName(sNM As String) As Boolean
Dim s As String
    s = GetSimpeSName(sNM)
    IsGalRepTblSName = MyStrComp(GetGalSNamePrefix(s), GalRepTblPrefix)
End Function
Private Function IsGalRepTblFldSName(sNM As String) As Boolean
Dim s As String
    s = GetSimpeSName(sNM)
    IsGalRepTblFldSName = MyStrComp(GetGalSNamePrefix(s), GalRepTblFldPrefix)
End Function
Private Function UniversalIsGalName(Mode As Byte, sNM As String) As Boolean
    Select Case Mode
    Case GalDBVarMode
        UniversalIsGalName = IsGalDBVarSName(sNM)
    Case GalDBTblMode
        UniversalIsGalName = IsGalDBTblSName(sNM)
    Case GalDBTblFldMode
        UniversalIsGalName = IsGalDBTblFldSName(sNM)
    Case GalRepVarMode
        UniversalIsGalName = IsGalRepVarSName(sNM)
    Case GalRepTblMode
        UniversalIsGalName = IsGalRepTblSName(sNM)
    Case GalRepTblFldMode
        UniversalIsGalName = IsGalRepTblFldSName(sNM)
    Case Else
        UniversalIsGalName = False
    End Select
End Function
Private Function UniversalGetCollection(Mode As Byte, WS As Worksheet) As Collection
Dim MyNames As New Collection
Dim WB As Workbook
Dim NMS As Names
Dim NM As Name
Dim CheckNameAddress As String
    Set WB = WS.Parent
    Set NMS = WB.Names
    For Each NM In NMS
        If IsNameInSheet(NM, WS) Then
            ' проверим на существование
            On Error GoTo ErrNameExist
            CheckNameAddress = NM.RefersToRange.Address
            If (UniversalIsGalName(Mode, NM.Name)) Then
                MyNames.Add Item:=NM, key:=NM.Name
            End If
ErrNameExist:
            On Error GoTo 0
        End If
    Next
    Set UniversalGetCollection = MyNames
End Function

' Получить коллекцию поименованных диапозонов,
' представляющих переменные XLS-БД,
' на заданном листе рабочей книги
Public Function GetDBVarCollection(WS As Worksheet) As Collection
    Set GetDBVarCollection = UniversalGetCollection(GalDBVarMode, WS)
End Function
' Получить коллекцию поименованных диапозонов,
' представляющих таблицы XLS-БД,
' на заданном листе рабочей книги
Public Function GetDBTblCollection(WS As Worksheet) As Collection
    Set GetDBTblCollection = UniversalGetCollection(GalDBTblMode, WS)
End Function
' Получить коллекцию поименованных диапозонов,
' представляющих поля таблицы XLS-БД,
' на заданном листе рабочей книги
Public Function GetDBTblFldCollection(WS As Worksheet) As Collection
    Set GetDBTblFldCollection = UniversalGetCollection(GalDBTblFldMode, WS)
End Function
' Получить коллекцию поименованных диапозонов,
' представляющих переменные XLT-шаблона,
' на заданном листе рабочей книги
Public Function GetRepVarCollection(WS As Worksheet) As Collection
    Set GetRepVarCollection = UniversalGetCollection(GalRepVarMode, WS)
End Function
' Получить коллекцию поименованных диапозонов,
' представляющих таблицы XLT-шаблона,
' на заданном листе рабочей книги
Public Function GetRepTblCollection(WS As Worksheet) As Collection
    Set GetRepTblCollection = UniversalGetCollection(GalRepTblMode, WS)
End Function
' Получить коллекцию поименованных диапозонов,
' представляющих поля таблицы XLT-шаблона,
' на заданном листе рабочей книги
Public Function GetRepTblFldCollection(WS As Worksheet) As Collection
    Set GetRepTblFldCollection = UniversalGetCollection(GalRepTblFldMode, WS)
End Function

' Получить коллекцию поименованных диапозонов,
' представляющих поля заданной таблицы XLS-БД,
' на заданном листе рабочей книги
' Таблица задается как поименованный диапозон
Public Function GetDBTblFldCollectionByTbl(WS As Worksheet, Tbl As Name) As Collection
Dim AllTblFlds As Collection
Dim CurTblFlds As New Collection
Dim CurTblFld As Name
    Set AllTblFlds = GetDBTblFldCollection(WS)
    For Each CurTblFld In AllTblFlds
        If isSubName(Tbl, CurTblFld) Then
            CurTblFlds.Add Item:=CurTblFld, key:=CurTblFld.Name
        End If
    Next
Set GetDBTblFldCollectionByTbl = CurTblFlds
End Function

' Получить коллекцию поименованных диапозонов,
' представляющих поля заданной таблицы XLS-БД,
' на заданном листе рабочей книги
' Таблица задается по своему наименованию
Public Function GetDBTblFldCollectionBySTbl(WS As Worksheet, sTbl As String) As Collection
Set GetDBTblFldCollectionBySTbl = Nothing
Dim NM As Name
    Set NM = FindNameBySimpleSName(WS, sTbl)
    If (NM Is Nothing) Then
        Exit Function
    End If
    Set GetDBTblFldCollectionBySTbl = GetDBTblFldCollectionByTbl(WS, NM)
End Function

' Получить коллекцию поименованных диапозонов,
' представляющих переменные XLS-БД,
' на заданном листе рабочей книги
' (не учитывая элементы массивов)
Public Function GetDBVarCollection_UniqArray(WS As Worksheet) As Collection
Set GetDBVarCollection_UniqArray = Nothing
Dim NM As Name
Dim Tmp1 As Collection
Dim Tmp2 As New Collection
    Set Tmp1 = GetDBVarCollection(WS)
    For Each NM In Tmp1
        If (Not IsArrayElement(NM)) Then
            'не будем складывать эл. массивов
            Tmp2.Add Item:=NM, key:=NM.Name
        End If
    Next
Set GetDBVarCollection_UniqArray = Tmp2
End Function
' Получить коллекцию поименованных диапозонов,
' представляющих поля заданной таблицы XLS-БД,
' на заданном листе рабочей книги
' Таблица задается по своему наименованию
' (не учитывая элементы массивов)
Public Function GetDBTblFldCollectionBySTbl_UniqArray(WS As Worksheet, sTbl As String) As Collection
Set GetDBTblFldCollectionBySTbl_UniqArray = Nothing
Dim NM As Name
Dim Tmp1 As Collection
Dim Tmp2 As New Collection
    Set Tmp1 = GetDBTblFldCollectionBySTbl(WS, sTbl)
    For Each NM In Tmp1
        If (Not IsArrayElement(NM)) Then
            'не будем складывать эл. массивов
            Tmp2.Add Item:=NM, key:=NM.Name
        End If
    Next
Set GetDBTblFldCollectionBySTbl_UniqArray = Tmp2
End Function

' Получить коллекцию поименованных диапозонов,
' представляющих поля заданной таблицы XLT-шаблона,
' на заданном листе рабочей книги
' Таблица задается как поименованный диапозон
Public Function GetRepTblFldCollectionByTbl(DBWS As Worksheet, RepWS As Worksheet, Tbl As Name) As Collection
Set GetRepTblFldCollectionByTbl = GetRepTblFldCollectionBySTbl(DBWS, RepWS, GetSimpeSName(Tbl.Name))
End Function

Function FindInCollection(sNM As String, NMS As Collection) As Name
Set FindInCollection = Nothing
    If NMS Is Nothing Then
        Exit Function
    End If
    On Error GoTo EndFun
    Set FindInCollection = NMS.Item(sNM)
EndFun:
    On Error GoTo 0
End Function

Function FindInNames(sNM As String, NMS As Names) As Name
Set FindInNames = Nothing
    If NMS Is Nothing Then
        Exit Function
    End If
    On Error GoTo EndFun
    Set FindInNames = NMS.Item(sNM)
EndFun:
    On Error GoTo 0
End Function

' Получить коллекцию поименованных диапозонов,
' представляющих поля заданной таблицы XLT-шаблона,
' на заданном листе рабочей книги
' Таблица задается по своему наименованию
Public Function GetRepTblFldCollectionBySTbl(DBWS As Worksheet, RepWS As Worksheet, sTbl As String) As Collection
Set GetRepTblFldCollectionBySTbl = Nothing
Dim AllRepTblFlds As Collection
Dim AllDBTblFlds As Collection
Dim CurRepTblFld As Name
Dim sDBTblFld As String
Dim TblFlds As New Collection
    Set TblFlds = Nothing
    Set AllDBTblFlds = GetDBTblFldCollectionBySTbl(DBWS, MakeDBSNameFromRepSName(GetSimpeSName(sTbl)))
    Set AllRepTblFlds = GetRepTblFldCollection(RepWS)
    
    For Each CurRepTblFld In AllRepTblFlds
        sDBTblFld = DBWS.Name & "!" & MakeDBSNameFromRepSName(CurRepTblFld.Name)
        If Not (FindInCollection(sDBTblFld, AllDBTblFlds) Is Nothing) Then
            TblFlds.Add Item:=CurRepTblFld, key:=CurRepTblFld.Name
        End If
    Next
Set GetRepTblFldCollectionBySTbl = TblFlds
End Function


' Сформировать наименование диапозона в XLT-шаблоне
' по заданному наименованию диапозона в XLS-БД
Public Function MakeRepSNameFromDBSName(sNM As String) As String
MakeRepSNameFromDBSName = sNM
If (IsEmpty(sNM)) Then
    Exit Function
End If
Dim s As String
Dim pr As String
    s = GetSimpeSName(sNM)
    pr = GetGalSNamePrefix(s)
    s = SubGalPrefix(s)
    Select Case pr
    Case GalDBVarPrefix
        s = GalRepVarPrefix & s
    Case GalDBTblPrefix
        s = GalRepTblPrefix & s
    Case GalDBTblFldPrefix
        s = GalRepTblFldPrefix & s
    Case Else
        'MsgBox "Это не область БД"
    End Select
MakeRepSNameFromDBSName = s
End Function
' Сформировать наименование диапозона в XLS-БД
' по заданному наименованию диапозона в XLT-шаблоне
Public Function MakeDBSNameFromRepSName(sNM As String) As String
MakeDBSNameFromRepSName = sNM
If (IsEmpty(sNM)) Then
    Exit Function
End If
Dim s As String
Dim pr As String
    s = GetSimpeSName(sNM)
    pr = GetGalSNamePrefix(s)
    s = SubGalPrefix(s)
    Select Case pr
    Case GalRepVarPrefix
        s = GalDBVarPrefix & s
    Case GalRepTblPrefix
        s = GalDBTblPrefix & s
    Case GalRepTblFldPrefix
        s = GalDBTblFldPrefix & s
    Case Else
        'MsgBox "Это не область вывода отчета"
    End Select
MakeDBSNameFromRepSName = s
End Function

' Синхронизированны ли диапозоны
' в XLS-БД и в XLT-шаблоне
Public Function IsSynchlDBAndRepName(DBNM As Name, RepNM As Name) As Boolean
IsSynchlDBAndRepName = (DBNM.Name = RepNM.Name)
    If (Not IsGalName(DBNM)) Or (Not IsGalName(RepNM)) Then
        Exit Function
    End If
    Dim sDBNM As String
    Dim sRepNM As String
    sDBNM = GetSimpeSName(DBNM.Name)
    sRepNM = MakeDBSNameFromRepSName(RepNM.Name)
IsSynchlDBAndRepName = MyStrComp(sDBNM, sRepNM)
End Function

' Синхронизированны ли диапозоны
' в XLS-БД и в XLT-шаблоне
Public Function IsSynchDBAndRepSName(DBNM As Name, sRepNM As String) As Boolean
IsSynchDBAndRepSName = (DBNM.Name = sRepNM)
    If (Not IsGalName(DBNM)) Then
        Exit Function
    End If
    Dim sDBNM As String
    sDBNM = GetSimpeSName(DBNM.Name)
IsSynchDBAndRepSName = MyStrComp(sDBNM, sRepNM)
End Function

' Наити на заданном листе рабочей книги
' синхронизированный диапозон в XLT-шаблоне
' по заданному диапозону в XLS-БД
Public Function FindRepNameByDBName(DBNM As Name, RepWS As Worksheet) As Name
Set FindRepNameByDBName = Nothing
Dim RepWB As Workbook
Dim RepNM As Name
Dim isFound As Boolean
    On Error GoTo MyError1
    If (Not IsGalName(DBNM)) Then
        Exit Function
    End If
    Set RepWB = RepWS.Parent
    isFound = False
    If (Not isFound) Then
        ' ищем по всей тек. листу
        For Each RepNM In RepWS.Names
            If IsSynchlDBAndRepName(DBNM, RepNM) Then
                If (IsValidName(RepNM)) Then
                    Set FindRepNameByDBName = RepNM
                    isFound = True
                    Exit For
                End If
            End If
        Next
MyError1:
    On Error GoTo 0
    End If
    
End Function

' Наити на заданном листе рабочей книги
' синхронизированный диапозон в XLS-БД
' по заданному диапозону в XLT-шаблоне
Public Function FindDBNameByRepName(RepNM As Name, DBWS As Worksheet) As Name
Set FindDBNameByRepName = Nothing
Dim DBWB As Workbook
Dim sRepNM As String
    On Error GoTo MyError2
    Set DBWB = DBWS.Parent
    sRepNM = MakeDBSNameFromRepSName(RepNM.Name)
    sRepNM = DBWS.Name & "!" & sRepNM
    Set FindDBNameByRepName = FindInNames(sRepNM, DBWB.Names)
MyError2:
    On Error GoTo 0
End Function

Private Function MakeTblNameByTblFld(WS As Worksheet, sTblNM As String, TblFldNM As Name) As Name
Set MakeTblNameByTblFld = Nothing
Dim TblNMS As Collection
Dim TblNM As Name
    
    If (TblFldNM Is Nothing) Then
        MsgBox ("Error_MakeTblNameByFld")
        Exit Function
    End If
    
    Set TblNMS = GetRepTblCollection(WS)
    If (TblNMS.Count > 0) Then
        On Error Resume Next
        Set TblNM = TblNMS(WS.Name & "!" & sTblNM)
        On Error GoTo 0
    End If
    
    If (TblNM Is Nothing) Then
        Set TblNM = WS.Names.Add(sTblNM, TblFldNM.RefersToRange)
    End If

Set MakeTblNameByTblFld = UnionName(WS, TblNM, TblFldNM)
End Function

' Сформировать/откорректировать диапозон размещения
' таблицы в XLT-шаблоне
Public Function MakeTblNameByAllTblFld(DBWS As Worksheet, RepWS As Worksheet, sRepTbl As String) As Name
Set MakeTblNameByAllTblFld = Nothing
Dim TblFlds As Collection
Dim TblFld As Name
Dim s As String
    Set TblFlds = GetRepTblFldCollectionBySTbl(DBWS, RepWS, sRepTbl)
    If TblFlds Is Nothing Then
      Exit Function
    End If
    Set MakeTblNameByAllTblFld = FindNameBySimpleSName(RepWS, sRepTbl)
    For Each TblFld In TblFlds
        s = TblFld.Name
        If (MakeTblNameByAllTblFld Is Nothing) Then
            Set MakeTblNameByAllTblFld = RepWS.Names.Add(sRepTbl, TblFld.RefersToRange)
        Else
            Set MakeTblNameByAllTblFld = UnionName(RepWS, MakeTblNameByAllTblFld, TblFld)
        End If
    Next TblFld
End Function
