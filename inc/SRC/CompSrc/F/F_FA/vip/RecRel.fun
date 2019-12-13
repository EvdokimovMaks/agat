
// ���ᨢ� ���樠���������� � ����䥩�� �ᯮ������ RecRel.vpp,
// �������� ����� ��� ॠ�������� �� � ���� ������ᨬ��� ��ꥪ�

Const
  ErrorRef = '#������!';
end;

//------------------------------------------------------------------------------
// Mode 0 - ����樨 ��砫�;
//      1 - ����樨 ����
//------------------------------------------------------------------------------
Function CheckOnOperation(simv : char; Mode : word) : boolean;
{
  var i : integer;
  CheckOnOperation := true;
  if Mode = 0
  {
    for(i := 0; i < Count(OperArrayBeg); inc(i))
      if simv = OperArrayBeg[i]
        Exit
  }
  else
    for(i := 0; i < Count(OperArrayEnd); inc(i))
      if simv = OperArrayEnd[i]
        Exit
  CheckOnOperation := false
} // function CheckOnOperation

// c tBegPos �� tEndPos ᮤ�ন��� ����ﭭ�� ��뫪�, �����塞 �� �� ���⠭�� ErrorRef
Procedure SetErrorRef(tBegPos, tEndPos : longint; var StData : string);
{
  StData := SubStr(StData, 1, tBegPos - 1) + ErrorRef + SubStr(StData, tEndPos, length(StData) - tEndPos + 1)
} // procedure SetErrorRef

//------------------------------------------------------------------------------
// ��楤�� ������ �⭮�⥫��� ��뫮� �� �祩��
// WhatRecalc : 0 - ��⠢�塞 �⮫���,
//              1 - 㤠�塞 �⮫���,
//              2 - ��⠢�塞 ��ப�,
//              3 - 㤠�塞 ��ப�,
//              4 - ᬥ頥� �祩��
//------------------------------------------------------------------------------
Function RecalcRelative(WhatRecalc : word; Number, RowOffSet, ColOffSet : longint; var StData : string) : boolean;
var
  i, CurCol, CurRow, tNumStr, tNumCol : longint;
{
  RecalcRelative := false;
  StData := trim(StData);
  if (SubStr(StData, 1, 1) = chr(39)) and (SubStr(StData, length(StData), 1) = chr(39))     // ��ப�
    Exit;
  i := 1;
  while i <= length(StData) do {
    // �᫨ ��� 1..9 ��稭��� �஢��� � ��ன ����樨
    if (i > 1) and ((49 <= Ord(SubStr(StData, i, 1))) and (Ord(SubStr(StData, i, 1)) <= 57)) 
    {
      CurRow := i; // �������� ��������� ������ ��砫� ����� ��ப�
      var sub : word; // ��� ��� $
      sub := if(SubStr(StData, i - 1, 1) = '$', 2, 1);
      // �।��騩 ᨬ��� �஢��塞 �� �㪢�
      if ((65 <= Ord(UpCase(SubStr(StData, i - sub, 1)))) and (Ord(UpCase(SubStr(StData, i - sub, 1))) <= 90)) 
      {
        if (i - sub > 1) // ��室���� �� � 1-�� ����樨
        {                          // �஢�ਬ �� �� ���� �㭪�� Summ_
          if CheckOnOperation(Chr(SubStr(StData, i - sub - 1, 1)), 0)
             or UpCase(SubStr(StData, i - sub - 5, 5)) = 'SUMM_'
             or UpCase(SubStr(StData, i - sub - 7, 7)) = 'LEGEND_'
            CurCol := i - sub       // �������� � i-1 ��� �⮫��, �������� ���न����
          else
          {
            inc(i);
            Continue
          }
        }
        else // ��ࢠ� ������
          CurCol := 1
      }
      else
      {
        inc(i);
        Continue
      }
      while (i <= length(StData)) and (48 <= Ord(SubStr(StData, i, 1))) and (Ord(SubStr(StData, i, 1)) <= 57) do
        inc(i); // ���� ����� ���� ����  0..9
      // �᫨ ����� ��� ������, ����� ��� ������
      if (i > length(StData)) or CheckOnOperation(Chr(SubStr(StData, i, 1)), 1)
      {
        case WhatRecalc of
          0 : // ��⠢�﫨 �⮫���
            if Number <= Ord(UpCase(SubStr(StData, CurCol, 1))) - 64 // �������� �ࠢ�, ���� 㢥��稢���
              if SubStr(StData, CurCol - 1, 1) <> '$' // �⭮�⥫쭠� ��뫪�
                StData := SubStr(StData, 1, CurCol - 1) + Chr(Ord(UpCase(SubStr(StData, CurCol, 1))) + 1) + SubStr(StData, CurCol + 1, length(StData) - CurCol);
          1 : // 㤠�﫨 �⮫���
            if Number < Ord(UpCase(SubStr(StData, CurCol, 1))) - 64 // �������� �ࠢ�, ���� 㬥�����
            {
              if SubStr(StData, CurCol - 1, 1) <> '$' // �⭮�⥫쭠� ��뫪�
                StData := SubStr(StData, 1, CurCol - 1) + Chr(Ord(UpCase(SubStr(StData, CurCol, 1))) - 1) + SubStr(StData, CurCol + 1, length(StData) - CurCol);
            }
            else
              if Number = Ord(UpCase(SubStr(StData, CurCol, 1))) - 64 // ����ﭠ
                SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData)
          2 : // ��⠢�﫨 ��ப�
            if SubStr(StData, CurRow - 1, 1) <> '$' // �⭮�⥫쭠� ��뫪�
            {
              tNumStr :=  word(SubStr(StData, CurRow, i - CurRow));
              if Number <= tNumStr // �������� ����, ���� 㢥��稢���
                StData := SubStr(StData, 1, CurRow - 1) + string(tNumStr + 1) + SubStr(StData, i, length(StData) - i + 1);
            }
          3 : // 㤠�﫨 ��ப�
            if SubStr(StData, CurRow - 1, 1) <> '$' // �⭮�⥫쭠� ��뫪�
            {
              tNumStr :=  word(SubStr(StData, CurRow, i - CurRow));
              if Number < tNumStr // �������� ����, ���� 㬥�����
                StData := SubStr(StData, 1, CurRow - 1) + string(tNumStr - 1) + SubStr(StData, i, length(StData) - i + 1);
              else
                if Number = tNumStr  // ����ﭠ
                  SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData)
            }
          4 : // ᬥ頫� �祩��
          {
            if ColOffSet <> 0
              if SubStr(StData, CurCol - 1, 1) <> '$' // �⭮�⥫쭠� ��뫪�
              {
                tNumCol := Ord(UpCase(SubStr(StData, CurCol, 1))) + ColOffSet;
                if(tNumCol < 65) or (tNumCol > 90)  // �᫨ ����� ������� ��室�� �� �।��� ���������, �⠢�� Error
                {
                  SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData);
                  Continue  // !!!
                }
                else
                  StData := SubStr(StData, 1, CurCol - 1) + Chr(tNumCol) + SubStr(StData, CurCol + 1, length(StData) - CurCol);
              }
            if RowOffSet <> 0
              if SubStr(StData, CurRow - 1, 1) <> '$' // �⭮�⥫쭠� ��뫪�
              {
                tNumStr :=  word(SubStr(StData, CurRow, i - CurRow)) + RowOffSet;
                if tNumStr < 1   // �⠢�� Error, �� ���ᨬ����� �� �஢��塞
                  SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData);
                else
                  StData := SubStr(StData, 1, CurRow - 1) + string(tNumStr) + SubStr(StData, i, length(StData) - i + 1)
              }
          }
        end; // case
      }
    }
    inc(i)
  }
  RecalcRelative := true
} // procedure RecalcRelative
