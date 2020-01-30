Attribute VB_Name = "SumString"
' (c) 2005 ���������� ���������
' ������� �������� ����� �� �������
'


Option Explicit


'   ��� ���������, � ������ �����, ������� ������
' �� ��������� �������, �����: � ������ ��������
'������� Format_Sum �.�. � ������ ����� ���������:
'= Format_Sum (�����_������_������_�������_��������_��������,
'�����_������_������_��������������)

Public Function Format_Sum(Sum As Double, sFormat As String) As String
   
Dim Format_string As String, fStrH As String, fStrB As String
Dim iSum As Double, iSum2 As Double
Dim iPos, iPos2, iKol, i, iDl As Integer
Dim sumStr As String, sff As String, sOkr As String
Dim iNum As Integer, pod As Integer, intLen As Integer
Dim bPr As Boolean

On Error GoTo ErrorHandler
'�������� �� ������� ���������
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
   
'���. ������ ����� �������
   For i = 1 To Len(sFormat)
     If InStr(i, sFormat, "8") Then
        iDl = iDl + 1
        i = InStr(i, sFormat, "8")
     End If
   Next i
   
' ���� ���������� �������� ��������, �� ���������� ��� ������� 2 ����� ����� ������� �� ��������
   If InStr(1, sFormat, "4") Or InStr(1, sFormat, "5") Then
      If iDl = 0 Then iDl = 2
   End If
   
'��������� ������ ����� (���. ������ ����� �������)
   sff = "0." & String(iDl, "0")
   Sum = Format(Sum, sff)
   iSum = Sum
'������ ������ ��������� � ������� �������
   sFormat = UCase(sFormat)
   
'��������� ���������� �������� �� ����� +/-
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
   
'��������� ���������� �������� �� ����� PLUS/MINUS
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
       
'��������� ���������� �������� �� ����� P/M
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
 
   
'��������� ������������ ������� \p (����������)
   If (InStr(1, sFormat, "P")) Then
     iPos2 = InStr(1, sFormat, "\") + 1
     iPos = InStr(iPos2, sFormat, "P")
     i = iPos - 1
'������� ������ ����������
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
'����������
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

'������������ ����� ����������� �����
   If InStr(1, sFormat, "^") Then
     If InStr(1, Format_string, ",") = 0 Then _
         Format_string = Format_string & ","
   End If
   
'������ ����������� ����� �� ����� ������
   If InStr(1, sFormat, "\D") Then
      iPos = InStr(1, sFormat, "\D")
      Format_string = Replace$(CStr(Format_string), ",", Mid$(sFormat, iPos + 2, 1))
   End If
   
   Format_string = fStrH & Format_string & fStrB
     
'��������� ������������ ������� �� ����� ����� ����� ��������
   If (InStr(1, sFormat, "4")) Then
        pod = 1
'��������� ������������ ������� �������� ����
        If (InStr(1, sFormat, "\F")) Then
           iPos2 = InStr(1, sFormat, "\F")
           iPos = InStr(1, sFormat, "4")
           If iPos > iPos2 Then
              pod = 2
              GoTo dalee
           End If
        End If
'��������� ������������ ������� �������� ����
        If (InStr(1, sFormat, "\N")) Then
           iPos2 = InStr(1, sFormat, "\N")
           iPos = InStr(1, sFormat, "4")
           If iPos > iPos2 Then
              pod = 3
              GoTo dalee
           End If
        End If
'��������� ������������ ������� �������� ����
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
        
'��������� ������ ����� ����� ����� ������ ���������
        For i = InStr(1, sFormat, "4") + 1 To iPos - 1
          If ProverkaPrint(sFormat, CInt(i)) = True Then
              Format_string = Format_string & LCase(Mid$(sFormat, i, 1))
              bPr = True
          End If
        Next i
        If Not bPr Then
           Format_string = Format_string & "����� "
        Else
           Format_string = Format_string & " "
        End If
        
   End If
   
'��������� ������������ ������� �� ����� ������� ����� ��������
   If (InStr(1, sFormat, "5")) Then
        pod = 1
'��������� ������������ ������� �������� ����
        If (InStr(InStr(1, sFormat, "4") + 1, sFormat, "\F")) Then _
              pod = 2
'��������� ������������ ������� �������� ����
        If (InStr(InStr(1, sFormat, "4") + 1, sFormat, "\N")) Then _
              pod = 3
'��������� ������������ ������� �������� ����
        If (InStr(InStr(1, sFormat, "4") + 1, sFormat, "\M")) Then _
              pod = 1
       
       Format_string = Format_string + Del(iSum, iDl, pod, sFormat)
        
'��������� ������ ����� ������� ����� ������ ���������
       For i = InStr(1, sFormat, "5") + 1 To Len(sFormat)
          If ProverkaPrint(sFormat, CInt(i)) = True Then
              Format_string = Format_string & LCase(Mid$(sFormat, i, 1))
          End If
        Next i
        
       
   End If
'���� �������� �� ������ ����� � ������� �������
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
    'MsgBox "������ �" & Err.Number & " �� �������� ������������� ������", vbCritical
  Format_Sum = Sum
End Function
'������� �� ����������� �������
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
'����� ������� ����� ��������
Private Function Del(Isxod As Double, iDl As Integer, pod As Integer, _
      sFormat As String) As String

Dim lngGroup As Long, lngCategory As Long, intLen As Integer
Dim strInWords As String, lngRest_str As String
Dim lngSum As Double, lngRest As Double
Dim sff As String

If Isxod = 0 Then Exit Function
If Isxod = Int(Isxod) Then Exit Function

'�������������� ������� ����� � ����� �����
lngRest = Isxod - Int(Isxod)
sff = "1" & String(iDl, "0")
lngRest = lngRest * CInt(sff)
lngRest = Format(lngRest, "0")

'�������� ������ �����
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
'������� ����� � �������
Private Function Cel(Isxod As Currency, pod As Integer) As String
Dim lngGroup As Currency, lngCategory As Long, intLen As Integer
Dim strInWords As String, lngRest_str As String
Dim lngSum As Currency, lngRest As Currency
Dim cSum As Currency

    If Isxod = 0 Then
        Cel = "���� "
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
        strInWords = "���� "
    Else
        lngGroup = Int(lngRest / 1000000000000#)
        '����������� ����� �����������
        If lngGroup <> 0 Then
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = (lngRest / 100000000000000# - lngCategory) * 100000000000000#
            lngGroup = lngGroup - lngCategory * 100
            '����������� ������� �����������
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = (lngRest / 10000000000000# - lngCategory) * 10000000000000#
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            '����������� ������� �����������
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 1)
            lngRest = (lngRest / 1000000000000# - lngCategory) * 1000000000000#
            strInWords = strInWords & x_trill(lngCategory)
        End If
    
        lngGroup = Int(lngRest / 1000000000)
        '����������� ����� ����������
        If lngGroup <> 0 Then
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = (lngRest / 100000000000# - lngCategory) * 100000000000#
            lngGroup = lngGroup - lngCategory * 100
            '����������� ������� ����������
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = (lngRest / 10000000000# - lngCategory) * 10000000000#
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            '����������� ������� ����������
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 1)
            lngRest = (lngRest / 1000000000 - lngCategory) * 1000000000
            strInWords = strInWords & x_milliard(lngCategory)
        End If
    
        lngGroup = lngRest \ 1000000
        '����������� ����� ���������
        If lngGroup <> 0 Then
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = lngRest - lngCategory * 100 * 1000000
            lngGroup = lngGroup - lngCategory * 100
    
            '����������� ������� ���������
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = lngRest - lngCategory * 10 * 1000000
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            '����������� ������� ���������
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, 1)
            lngRest = lngRest - lngCategory * 1000000
            strInWords = strInWords & x_mill(lngCategory)
        End If
    
        lngGroup = lngRest \ 1000
        If lngGroup <> 0 Then
            '����������� ����� �����
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = lngRest - lngCategory * 100 * 1000
            lngGroup = lngGroup - lngCategory * 100
    
            '����������� ������� �����
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = lngRest - lngCategory * 10 * 1000
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            '����������� ������� �����
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
            '����������� �����
            lngCategory = lngGroup \ 100
            strInWords = strInWords & x_hundr(lngCategory)
            lngRest = lngRest - lngCategory * 100
            lngGroup = lngGroup - lngCategory * 100
    
            '����������� �������
            If lngGroup > 19 Then
                lngCategory = lngGroup \ 10
                strInWords = strInWords & x_dec(lngCategory)
                lngRest = lngRest - lngCategory * 10
                lngGroup = lngGroup - lngCategory * 10
            End If
    
            '����������� �������
            lngCategory = lngGroup
            strInWords = strInWords & x_edin(lngCategory, pod)
            lngRest = lngRest - lngCategory
        End If
endid:
    
    End If
   
   Cel = strInWords
End Function
'������ ��������
Private Function x_dec(lngCategory As Long) As String

    Select Case lngCategory
         Case 2
            x_dec = "�������� "
         Case 3
            x_dec = "�������� "
         Case 4
            x_dec = "����� "
         Case 5
            x_dec = "��������� "
         Case 6
            x_dec = "���������� "
         Case 7
            x_dec = "��������� "
         Case 8
            x_dec = "����������� "
         Case 9
            x_dec = "��������� "
    End Select

End Function
'������ ������
Private Function x_edin(lngCategory As Long, pod As Integer) As String

    Select Case lngCategory
        Case 1
            If pod = 1 Then
                x_edin = "���� "
            ElseIf pod = 2 Then
                x_edin = "���� "
            ElseIf pod = 3 Then
                x_edin = "���� "
            Else
                pod = 1
            End If
        Case 2
            If pod = 2 Then
                x_edin = "��� "
            Else
                x_edin = "��� "
            End If
        Case 3
            x_edin = "��� "
        Case 4
            x_edin = "������ "
        Case 5
            x_edin = "���� "
        Case 6
            x_edin = "����� "
        Case 7
            x_edin = "���� "
        Case 8
            x_edin = "������ "
        Case 9
            x_edin = "������ "
        Case 10
            x_edin = "������ "
        Case 11
            x_edin = "����������� "
        Case 12
            x_edin = "���������� "
        Case 13
            x_edin = "���������� "
        Case 14
            x_edin = "������������ "
        Case 15
            x_edin = "���������� "
        Case 16
            x_edin = "����������� "
        Case 17
            x_edin = "���������� "
        Case 18
            x_edin = "������������ "
        Case 19
            x_edin = "������������ "

    End Select

End Function
'������ ���������
Private Function x_mill(lngCategory As Long) As String
  
    If lngCategory = 1 Then
        x_mill = "������� "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_mill = "�������� "
    Else
        x_mill = "��������� "
    End If

End Function
'������ ����������
Private Function x_milliard(lngCategory As Long) As String
   
  If lngCategory < 1 Or lngCategory > 999 Then Exit Function
    If lngCategory = 1 Then
        x_milliard = "�������� "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_milliard = "��������� "
    Else
        x_milliard = "���������� "
    End If

End Function
'������ ����������
Private Function x_trill(lngCategory As Long) As String
   
  If lngCategory < 1 Or lngCategory > 999 Then Exit Function
    If lngCategory = 1 Then
        x_trill = "�������� "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_trill = "���������� "
    Else
        x_trill = "����������� "
    End If

End Function
  
'������ �����
Private Function x_hundr(lngCategory As Long) As String
    Select Case lngCategory
         Case 1
            x_hundr = "��� "
         Case 2
            x_hundr = "������ "
         Case 3
            x_hundr = "������ "
         Case 4
            x_hundr = "��������� "
         Case 5
            x_hundr = "������� "
         Case 6
            x_hundr = "�������� "
         Case 7
            x_hundr = "������� "
         Case 8
            x_hundr = "��������� "
         Case 9
            x_hundr = "��������� "
    End Select

End Function
'������ �����
Private Function x_thousend(lngCategory As Long) As String

    If lngCategory = 1 Then
        x_thousend = "������ "
    ElseIf lngCategory > 1 And lngCategory < 5 Then
        x_thousend = "������ "
    Else
        x_thousend = "����� "
    End If

End Function
'������ ������
Private Function x_drob(lngCategory As Integer, pod As Integer) As String
    
    Select Case lngCategory
         Case 0
            x_drob = ""
         Case 1
            If pod = 2 Then
                x_drob = "������� "
            ElseIf pod = 3 Then
                x_drob = "������� "
            Else
                x_drob = "������� "
            End If
         Case 2
            If pod = 2 Then
                x_drob = "����� "
            ElseIf pod = 3 Then
                x_drob = "����� "
            Else
                x_drob = "����� "
            End If
         Case 3
            If pod = 2 Then
                x_drob = "�������� "
            ElseIf pod = 3 Then
                x_drob = "�������� "
            Else
                x_drob = "������� "
            End If
         Case 4
             If pod = 2 Then
                x_drob = "�������������� "
            ElseIf pod = 3 Then
                x_drob = "�������������� "
            Else
                x_drob = "�������������� "
            End If
         Case 5
            If pod = 2 Then
                x_drob = "����������� "
            ElseIf pod = 3 Then
                x_drob = "����������� "
            Else
                x_drob = "���������� "
            End If
         Case 6
            If pod = 2 Then
                x_drob = "���������� "
            ElseIf pod = 3 Then
                x_drob = "���������� "
            Else
                x_drob = "���������� "
            End If
         Case 7
            If pod = 2 Then
                x_drob = "���������������� "
            ElseIf pod = 3 Then
                x_drob = "���������������� "
            Else
                x_drob = "���������������� "
            End If
         Case 8
            If pod = 2 Then
                x_drob = "������������� "
            ElseIf pod = 3 Then
                x_drob = "������������� "
            Else
                x_drob = "������������� "
            End If
         Case 9
            If pod = 2 Then
                x_drob = "����������� "
            ElseIf pod = 3 Then
                x_drob = "����������� "
            Else
                x_drob = "����������� "
            End If
         Case 10
            If pod = 2 Then
                x_drob = "����������������� "
            ElseIf pod = 3 Then
                x_drob = "����������������� "
            Else
                x_drob = "����������������� "
            End If
         Case 11
            If pod = 2 Then
                x_drob = "�������������� "
            ElseIf pod = 3 Then
                x_drob = "�������������� "
            Else
                x_drob = "�������������� "
            End If
         Case 12
            If pod = 2 Then
                x_drob = "����������� "
            ElseIf pod = 3 Then
                x_drob = "����������� "
            Else
                x_drob = "����������� "
            End If
         Case 13
            If pod = 2 Then
                x_drob = "����������������� "
            ElseIf pod = 3 Then
                x_drob = "����������������� "
            Else
                x_drob = "����������������� "
            End If
         Case 14
            If pod = 2 Then
                x_drob = "�������������� "
            ElseIf pod = 3 Then
                x_drob = "�������������� "
            Else
                x_drob = "�������������� "
            End If
         Case 15
            If pod = 2 Then
                x_drob = "��������������� "
            ElseIf pod = 3 Then
                x_drob = "��������������� "
            Else
                x_drob = "��������������� "
            End If
    End Select

End Function

