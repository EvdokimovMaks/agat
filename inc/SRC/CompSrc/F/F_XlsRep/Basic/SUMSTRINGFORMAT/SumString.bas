Attribute VB_Name = "SumString"
' (c) 2005 корпорация ГАЛАКТИКА
' Функция перевода чисел по формату
'


Option Explicit


'   Для получения, в ячейке листа, иходных данных
' по заданному формату, нужно: в ячейку вставить
'функцию Format_Sum т.е. в ячейке будет прописано:
'= Format_Sum (адрес_ячейки_откуда_берется_исходное_значение,
'адрес_ячейки_строка_форматирования)

Public Function Format_Sum(Sum As Double, sFormat As String) As String
   
Dim Format_string As String, fStrH As String, fStrB As String
Dim iSum As Double, iSum2 As Double
Dim iPos, iPos2, iKol, i, iDl As Integer
Dim sumStr As String, sff As String, sOkr As String
Dim iNum As Integer, pod As Integer, intLen As Integer
Dim bPr As Boolean

On Error GoTo ErrorHandler
'Проверка на входные параметры
   If (sFormat = "") Then
      Format_Sum = Sum
      Exit Function
   End If
   
   If (Sum = 0) Then
     Format_Sum = ""
     Exit Function
   End If
   
   pod = 1
   iDl = 0
   
'Кол. знвков после запятой
   For i = 1 To Len(sFormat)
     If InStr(i, sFormat, "8") Then
        iDl = iDl + 1
        i = InStr(i, sFormat, "8")
     End If
   Next i
   
' Если необходимо выводить прописью, то выводиться как минимум 2 знака после запятой по умочанию
   If InStr(1, sFormat, "4") Or InStr(1, sFormat, "5") Then
      If iDl = 0 Then iDl = 2
   End If
   
'Применяем формат числа (кол. знаков после запятой)
   sff = "0." & String(iDl, "0")
   Sum = Format(Sum, sff)
   iSum = Sum
'Формат вывода переводим в верхний регистр
   sFormat = UCase(sFormat)
   
'обработка упрвляющих символов на вывод +/-
   If (InStr(1, sFormat, "[+|")) Then
      If Sum > 0 Then fStrH = "+"
   End If
   
   If (InStr(1, sFormat, "[|]") Or InStr(1, sFormat, "[+|]")) Then
      If iSum < 0 Then
          iSum = Abs(Sum)
          fStrH = ""
      End If
   End If
   
   If (InStr(1, sFormat, "|-]")) Then iSum = Sum
   
'обработка упрвляющих символов на вывод PLUS/MINUS
   If (InStr(1, sFormat, "PLUS")) Then
      If Sum > 0 Then
         fStrB = "Plus"
         fStrH = ""
         sFormat = Replace$(sFormat, "PLUS", "")
      End If
   End If
   
   If (InStr(1, sFormat, "MINUS")) Then
       If Sum < 0 Then
         iSum = Abs(Sum)
         fStrB = "Minus"
         fStrH = ""
         sFormat = Replace$(sFormat, "MINUS", "")
       End If
   End If
       
'обработка упрвляющих символов на вывод P/M
   If (InStr(1, sFormat, "[P|")) Or (InStr(1, sFormat, "|P]")) Then
      If Sum > 0 Then
         fStrB = "P"
         fStrH = ""
         sFormat = Replace$(sFormat, "P", "")
      End If
   End If
    
   If (InStr(1, sFormat, "[M|")) Or (InStr(1, sFormat, "|M]")) Then
       If Sum < 0 Then
         iSum = Abs(Sum)
         fStrB = "M"
         fStrH = ""
         sFormat = Replace$(sFormat, "M", "")
       End If
   End If
 
   
'обработка управляющего символа \p (округление)
   If (InStr(1, sFormat, "P")) Then
     iPos2 = InStr(1, sFormat, "\") + 1
     iPos = InStr(iPos2, sFormat, "P")
     i = iPos - 1
'находим разряд округления
     Do
       If Mid$(sFormat, i, 1) = "\" Then Exit Do
       If (Not IsNumeric(Mid$(sFormat, i, 1)) And Mid$(sFormat, i, 1) <> "-") Then Exit Do
       i = i - 1
       If i = 0 Then Exit Do
       If iPos = i + 4 Then Exit Do
     Loop
     
     sOkr = Mid$(sFormat, i + 1, iPos - i - 1)
     sFormat = Replace$(sFormat, sOkr, "")
     
     If (InStr(1, sOkr, "-")) Then
         iNum = Replace$(sOkr, "-", "") * -1
     Else
         iNum = CInt(Mid$(sOkr, 1, Len(sOkr)))
     End If
'округление
     If iNum >= 0 Then
        sff = "0." & String(Abs(iNum), "0")
        iSum = Format(iSum, sff)
     Else
        iSum = Int(iSum / (10 ^ Abs(iNum)))
        iSum = Int(iSum)
        iSum = iSum * (10 ^ Abs(iNum))
     End If
   End If
  
   Format_string = iSum

'Обязательный вывод разделителя дроби
   If InStr(1, sFormat, "^") Then
     If InStr(1, Format_string, ",") = 0 Then _
         Format_string = Format_string & ","
   End If
   
'замена разделителя дроби на любой символ
   If InStr(1, sFormat, "\D") Then
      iPos = InStr(1, sFormat, "\D")
      Format_string = Replace$(CStr(Format_string), ",", Mid$(sFormat, iPos + 2, 1))
   End If
   
   Format_string = fStrH & Format_string & fStrB
     
'обработка управляющего символа на вывод целой части прописью
   If (InStr(1, sFormat, "4")) Then
        pod = 1
'обработка управляющего символа женского рода
        If (InStr(1, sFormat, "\F")) Then
           iPos2 = InStr(1, sFormat, "\F")
           iPos = InStr(1, sFormat, "4")
           If iPos > iPos2 Then
              pod = 2
              GoTo dalee
           End If
        End If
'обработка управляющего символа среднего рода
        If (InStr(1, sFormat, "\N")) Then
           iPos2 = InStr(1, sFormat, "\N")
           iPos = InStr(1, sFormat, "4")
           If iPos > iPos2 Then
              pod = 3
              GoTo dalee
           End If
        End If
'обработка управляющего символа мужского рода
        If (InStr(1, sFormat, "\M")) Then
           iPos2 = InStr(1, sFormat, "\M")
           iPos = InStr(1, sFormat, "4")
           If iPos > iPos2 Then
              pod = 1
              GoTo dalee
           End If
        End If
dalee:

        iPos = InStr(1, sFormat, "5")
        If iPos = 0 Then
           iKol = Len(sFormat)
           iPos = iKol + 1
        Else
           iKol = iPos - InStr(1, sFormat, "4") - 1
        End If
        Format_string = Cel(CCur(iSum), pod)
        bPr = False
        
'обработка вывода после целой части единиц измерения
        For i = InStr(1, sFormat, "4") + 1 To iPos - 1
          If ProverkaPrint(sFormat, CInt(i)) = True Then
              Format_string = Format_string & LCase(Mid$(sFormat, i, 1))
              bPr = True
          End If
        Next i
        If Not bPr Then
           Format_string = Format_string & "целых "
        Else
           Format_string = Format_string & " "
        End If
        
   End If
   
'обработка управляющего символа на вывод дробной части прописью
   If (InStr(1, sFormat, "5")) Then
        pod = 1
'обработка управляющего символа женского рода
        If (InStr(InStr(1, sFormat, "4") + 1, sFormat, "\F")) Then _
              pod = 2
'обработка управляющего символа среднего рода
        If (InStr(InStr(1, sFormat, "4") + 1, sFormat, "\N")) Then _
              pod = 3
'обработка управляющего символа мужского рода
        If (InStr(InStr(1, sFormat, "4") + 1, sFormat, "\M")) Then _
              pod = 1
       
       Format_string = Format_string + Del(iSum, iDl, pod, sFormat)
        
'обработка вывода после дробной части единиц измерения
       For i = InStr(1, sFormat, "5") + 1 To Len(sFormat)
          If ProverkaPrint(sFormat, CInt(i)) = True Then
              Format_string = Format_string & LCase(Mid$(sFormat, i, 1))
          End If
        Next i
        
       
   End If
'Если прописью то первая буква в верхний регистр
 If (InStr(1, sFormat, "4") Or InStr(1, sFormat, "5")) Then
   intLen = Len(Format_string)
   If IsNull(intLen) Then
       Exit Function
   End If
   Format_string = UCase(Mid(Format_string, 1, 1)) & (Mid(Format_string, 2, intLen))
 End If

Format_Sum = Format_string
Exit Function
ErrorHandler:
    'MsgBox "Ошибка №" & Err.Number & " Не возможно преобразовать данные", vbCritical
  Format_Sum = Sum
End Function
'провека на управляющие символы
Private Function ProverkaPrint(sFormat As String, iPos As Integer)

If ((LCase(Mid$(sFormat, iPos, 1)) <> "1") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "2") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "3") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "4") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "5") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "6") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "7") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "8") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "9") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "0") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "@") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "\") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "p") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "-") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "m") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "f") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "~") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "^") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "d") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "n") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "[") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "]") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "|") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> " ") And _
    (LCase(Mid$(sFormat, iPos, 1)) <> "m")) Then
   ProverkaPrint = True
 Else
   ProverkaPrint = False
End If
End Function
'вывод дробной части прописью
Private Function Del(Isxod As Double, iDl As Integer, pod As Integer, _
      sFormat As String) As String

Dim lngGroup As Long, lngCategory As Long, intLen As Integer
Dim strInWords As String, lngRest_str As String
Dim lngSum As Double, lngRest As Double
Dim sff As String

If Isxod = 0 Then Exit Function
If Isxod = Int(Isxod) Then Exit Function

'преобразование дробной части в целое число
lngRest = Isxod - Int(Isxod)
sff = "1" & String(iDl, "0")
lngRest = lngRest * CInt(sff)
lngRest = Format(lngRest, "0")

'удаление лишних нулей
Do
  If Mid$(CStr(lngRest), Len(CStr(lngRest)), 1) <> "0" Then Exit Do
  lngRest = lngRest / 10
  iDl = Len(CStr(lngRest))
Loop

If lngRest <> 0 Then
    strInWords = Cel(CCur(lngRest), pod)
    Del = strInWords & x_drob(iDl, pod)
End If
End Function
'перевод числа в пропись
Private Function Cel(Isxod As Currency, pod As Integer) As String
Dim lngGroup As Currency, lngCategory As Long, intLen As Integer
Dim strInWords As String, lngRest_str As String
Dim lngSum As Currency, lngRest As Currency
Dim cSum As Currency

    If Isxod = 0 Then
        Cel = "ноль "
        Exit Function
    End If

    If Isxod > Int(Isxod) Then
       If Isxod > 1000000000 Then
           cSum = Int(Isxod / 10000000)
           lngSum = Int(Isxod - cSum * 10000000) + cSum * 10000000
       Else
           lngSum = Int(Isxod)
       End If
     Else
       lngSum = Isxod
    End If
    lngRest = lngSum
    If lngRest = 0 Then
        strInWords = "ноль "
    Else
        lngGroup = Int(lngRest / 1000000000000#)
        'Прописываем сотни триллиардов
        If lngGroup <> 0 Then
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = (lngRest / 100000000000000# - lngCategory) * 100000000000000#
            lngGroup = lngGroup - lngCategory * 100
            'Прописываем десятки триллиардов
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = (lngRest / 10000000000000# - lngCategory) * 10000000000000#
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            'Прописываем единицы триллиардов
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 1)
            lngRest = (lngRest / 1000000000000# - lngCategory) * 1000000000000#
            strInWords = strInWords & x_trill(lngCategory)
        End If
    
        lngGroup = Int(lngRest / 1000000000)
        'Прописываем сотни миллиардов
        If lngGroup <> 0 Then
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = (lngRest / 100000000000# - lngCategory) * 100000000000#
            lngGroup = lngGroup - lngCategory * 100
            'Прописываем десятки миллиардов
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = (lngRest / 10000000000# - lngCategory) * 10000000000#
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            'Прописываем единицы миллиардов
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 1)
            lngRest = (lngRest / 1000000000 - lngCategory) * 1000000000
            strInWords = strInWords & x_milliard(lngCategory)
        End If
    
        lngGroup = lngRest \ 1000000
        'Прописываем сотни миллионов
        If lngGroup <> 0 Then
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = lngRest - lngCategory * 100 * 1000000
            lngGroup = lngGroup - lngCategory * 100
    
            'Прописываем десятки миллионов
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = lngRest - lngCategory * 10 * 1000000
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            'Прописываем единицы миллионов
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 1)
            lngRest = lngRest - lngCategory * 1000000
            strInWords = strInWords & x_mill(lngCategory)
        End If
    
        lngGroup = lngRest \ 1000
        If lngGroup <> 0 Then
            'Прописываем сотни тысяч
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = lngRest - lngCategory * 100 * 1000
            lngGroup = lngGroup - lngCategory * 100
    
            'Прописываем десятки тысяч
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = lngRest - lngCategory * 10 * 1000
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            'Прописываем единицы тысяч
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 2)
            lngRest = lngRest - lngCategory * 1000
    
            strInWords = strInWords & x_thousend(lngCategory)
        End If
        
        If lngRest = 0 Then
            lngCategory = lngRest
            strInWords = strInWords
            GoTo endid
        End If
        lngGroup = lngRest
        
        If lngGroup <> 0 Then
            'Прописываем сотни
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = lngRest - lngCategory * 100
            lngGroup = lngGroup - lngCategory * 100
    
            'Прописываем десятки
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = lngRest - lngCategory * 10
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            'Прописываем единицы
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, pod)
            lngRest = lngRest - lngCategory
        End If
endid:
    
    End If
   
   Cel = strInWords
End Function
'массив десятков
Private Function x_dec(lngCategory As Long) As String

    Select Case lngCategory
         Case 2
            x_dec = "двадцать "
         Case 3
            x_dec = "тридцать "
         Case 4
            x_dec = "сорок "
         Case 5
            x_dec = "пятьдесят "
         Case 6
            x_dec = "шестьдесят "
         Case 7
            x_dec = "семьдесят "
         Case 8
            x_dec = "восемьдесят "
         Case 9
            x_dec = "девяносто "
    End Select

End Function
'массив единиц
Private Function x_edin(lngCategory As Long, pod As Integer) As String

    Select Case lngCategory
        Case 1
            If pod = 1 Then
                x_edin = "один "
            ElseIf pod = 2 Then
                x_edin = "одна "
            ElseIf pod = 3 Then
                x_edin = "одно "
            Else
                pod = 1
            End If
        Case 2
            If pod = 2 Then
                x_edin = "две "
            Else
                x_edin = "два "
            End If
        Case 3
            x_edin = "три "
        Case 4
            x_edin = "четыре "
        Case 5
            x_edin = "пять "
        Case 6
            x_edin = "шесть "
        Case 7
            x_edin = "семь "
        Case 8
            x_edin = "восемь "
        Case 9
            x_edin = "девять "
        Case 10
            x_edin = "десять "
        Case 11
            x_edin = "одиннадцать "
        Case 12
            x_edin = "двенадцать "
        Case 13
            x_edin = "тринадцать "
        Case 14
            x_edin = "четырнадцать "
        Case 15
            x_edin = "пятнадцать "
        Case 16
            x_edin = "шестнадцать "
        Case 17
            x_edin = "семнадцать "
        Case 18
            x_edin = "восемнадцать "
        Case 19
            x_edin = "девятнадцать "

    End Select

End Function
'массив миллионов
Private Function x_mill(lngCategory As Long) As String
  
    If lngCategory = 1 Then
        x_mill = "миллион "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_mill = "миллиона "
    Else
        x_mill = "миллионов "
    End If

End Function
'массив миллиардов
Private Function x_milliard(lngCategory As Long) As String
   
  If lngCategory < 1 Or lngCategory > 999 Then Exit Function
    If lngCategory = 1 Then
        x_milliard = "миллиард "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_milliard = "миллиарда "
    Else
        x_milliard = "миллиардов "
    End If

End Function
'массив триллионов
Private Function x_trill(lngCategory As Long) As String
   
  If lngCategory < 1 Or lngCategory > 999 Then Exit Function
    If lngCategory = 1 Then
        x_trill = "триллион "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_trill = "триллиарда "
    Else
        x_trill = "триллиардов "
    End If

End Function
  
'массив сотен
Private Function x_hundr(lngCategory As Long) As String
    Select Case lngCategory
         Case 1
            x_hundr = "сто "
         Case 2
            x_hundr = "двести "
         Case 3
            x_hundr = "триста "
         Case 4
            x_hundr = "четыреста "
         Case 5
            x_hundr = "пятьсот "
         Case 6
            x_hundr = "шестьсот "
         Case 7
            x_hundr = "семьсот "
         Case 8
            x_hundr = "восемьсот "
         Case 9
            x_hundr = "девятьсот "
    End Select

End Function
'массив тысяч
Private Function x_thousend(lngCategory As Long) As String

    If lngCategory = 1 Then
        x_thousend = "тысяча "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_thousend = "тысячи "
    Else
        x_thousend = "тысяч "
    End If

End Function
'массив дробей
Private Function x_drob(lngCategory As Integer, pod As Integer) As String
    
    Select Case lngCategory
         Case 0
            x_drob = ""
         Case 1
            If pod = 2 Then
                x_drob = "десятая "
            ElseIf pod = 3 Then
                x_drob = "десятое "
            Else
                x_drob = "десятых "
            End If
         Case 2
            If pod = 2 Then
                x_drob = "сотая "
            ElseIf pod = 3 Then
                x_drob = "сотое "
            Else
                x_drob = "сотых "
            End If
         Case 3
            If pod = 2 Then
                x_drob = "тысячная "
            ElseIf pod = 3 Then
                x_drob = "тысячное "
            Else
                x_drob = "тысяных "
            End If
         Case 4
             If pod = 2 Then
                x_drob = "десятитысячная "
            ElseIf pod = 3 Then
                x_drob = "десятитысячное "
            Else
                x_drob = "десятитысячный "
            End If
         Case 5
            If pod = 2 Then
                x_drob = "стотысячная "
            ElseIf pod = 3 Then
                x_drob = "стотысячное "
            Else
                x_drob = "стотысяных "
            End If
         Case 6
            If pod = 2 Then
                x_drob = "миллионная "
            ElseIf pod = 3 Then
                x_drob = "миллионное "
            Else
                x_drob = "миллионных "
            End If
         Case 7
            If pod = 2 Then
                x_drob = "десятимиллионная "
            ElseIf pod = 3 Then
                x_drob = "десятимиллионное "
            Else
                x_drob = "десятимиллионных "
            End If
         Case 8
            If pod = 2 Then
                x_drob = "стомиллионная "
            ElseIf pod = 3 Then
                x_drob = "стомиллионное "
            Else
                x_drob = "стомиллионных "
            End If
         Case 9
            If pod = 2 Then
                x_drob = "миллиардная "
            ElseIf pod = 3 Then
                x_drob = "миллиардное "
            Else
                x_drob = "миллиардных "
            End If
         Case 10
            If pod = 2 Then
                x_drob = "десятимиллиардная "
            ElseIf pod = 3 Then
                x_drob = "десятимиллиардное "
            Else
                x_drob = "десятимиллиардных "
            End If
         Case 11
            If pod = 2 Then
                x_drob = "стомиллиардная "
            ElseIf pod = 3 Then
                x_drob = "стомиллиардное "
            Else
                x_drob = "стомиллиардных "
            End If
         Case 12
            If pod = 2 Then
                x_drob = "триллионная "
            ElseIf pod = 3 Then
                x_drob = "триллионное "
            Else
                x_drob = "триллионных "
            End If
         Case 13
            If pod = 2 Then
                x_drob = "десятитриллионная "
            ElseIf pod = 3 Then
                x_drob = "десятитриллионное "
            Else
                x_drob = "десятитриллионных "
            End If
         Case 14
            If pod = 2 Then
                x_drob = "стотриллионная "
            ElseIf pod = 3 Then
                x_drob = "стотриллионное "
            Else
                x_drob = "стотриллионных "
            End If
         Case 15
            If pod = 2 Then
                x_drob = "стотриллиардная "
            ElseIf pod = 3 Then
                x_drob = "стотриллиардное "
            Else
                x_drob = "стотриллиардных "
            End If
    End Select

End Function

