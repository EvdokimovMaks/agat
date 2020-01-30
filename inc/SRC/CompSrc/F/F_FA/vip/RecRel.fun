
// Массивы инициализируются в интерфейсах использующих RecRel.vpp,
// возможно имеет смысл реализовать все в виде независимого объекта

Const
  ErrorRef = '#ССЫЛКА!';
end;

//------------------------------------------------------------------------------
// Mode 0 - операции начала;
//      1 - операции конца
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

// c tBegPos по tEndPos содержится потерянная ссылка, заменяем ее на костанту ErrorRef
Procedure SetErrorRef(tBegPos, tEndPos : longint; var StData : string);
{
  StData := SubStr(StData, 1, tBegPos - 1) + ErrorRef + SubStr(StData, tEndPos, length(StData) - tEndPos + 1)
} // procedure SetErrorRef

//------------------------------------------------------------------------------
// процедура пересчета относительных ссылок на ячейки
// WhatRecalc : 0 - вставляем столбец,
//              1 - удаляем столбец,
//              2 - вставляем строку,
//              3 - удаляем строку,
//              4 - смещаем ячейку
//------------------------------------------------------------------------------
Function RecalcRelative(WhatRecalc : word; Number, RowOffSet, ColOffSet : longint; var StData : string) : boolean;
var
  i, CurCol, CurRow, tNumStr, tNumCol : longint;
{
  RecalcRelative := false;
  StData := trim(StData);
  if (SubStr(StData, 1, 1) = chr(39)) and (SubStr(StData, length(StData), 1) = chr(39))     // строка
    Exit;
  i := 1;
  while i <= length(StData) do {
    // если цифра 1..9 начинаем проверку со второй позиции
    if (i > 1) and ((49 <= Ord(SubStr(StData, i, 1))) and (Ord(SubStr(StData, i, 1)) <= 57)) 
    {
      CurRow := i; // запомним возможную позицию начала номера строки
      var sub : word; // для учета $
      sub := if(SubStr(StData, i - 1, 1) = '$', 2, 1);
      // предыдущий символ проверяем на букву
      if ((65 <= Ord(UpCase(SubStr(StData, i - sub, 1)))) and (Ord(UpCase(SubStr(StData, i - sub, 1))) <= 90)) 
      {
        if (i - sub > 1) // находимся не в 1-ой позиции
        {                          // проверим еще на нашу функцию Summ_
          if CheckOnOperation(Chr(SubStr(StData, i - sub - 1, 1)), 0)
             or UpCase(SubStr(StData, i - sub - 5, 5)) = 'SUMM_'
             or UpCase(SubStr(StData, i - sub - 7, 7)) = 'LEGEND_'
            CurCol := i - sub       // возможно в i-1 имя столбца, запомним координату
          else
          {
            inc(i);
            Continue
          }
        }
        else // первая позиция
          CurCol := 1
      }
      else
      {
        inc(i);
        Continue
      }
      while (i <= length(StData)) and (48 <= Ord(SubStr(StData, i, 1))) and (Ord(SubStr(StData, i, 1)) <= 57) do
        inc(i); // идем дальше пока цифры  0..9
      // если конец или операция, ТОЧНО ИМЯ ЯЧЕЙКИ
      if (i > length(StData)) or CheckOnOperation(Chr(SubStr(StData, i, 1)), 1)
      {
        case WhatRecalc of
          0 : // вставляли столбец
            if Number <= Ord(UpCase(SubStr(StData, CurCol, 1))) - 64 // окажется справа, надо увеличивать
              if SubStr(StData, CurCol - 1, 1) <> '$' // относительная ссылка
                StData := SubStr(StData, 1, CurCol - 1) + Chr(Ord(UpCase(SubStr(StData, CurCol, 1))) + 1) + SubStr(StData, CurCol + 1, length(StData) - CurCol);
          1 : // удаляли столбец
            if Number < Ord(UpCase(SubStr(StData, CurCol, 1))) - 64 // окажется справа, надо уменьшать
            {
              if SubStr(StData, CurCol - 1, 1) <> '$' // относительная ссылка
                StData := SubStr(StData, 1, CurCol - 1) + Chr(Ord(UpCase(SubStr(StData, CurCol, 1))) - 1) + SubStr(StData, CurCol + 1, length(StData) - CurCol);
            }
            else
              if Number = Ord(UpCase(SubStr(StData, CurCol, 1))) - 64 // потеряна
                SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData)
          2 : // вставляли строку
            if SubStr(StData, CurRow - 1, 1) <> '$' // относительная ссылка
            {
              tNumStr :=  word(SubStr(StData, CurRow, i - CurRow));
              if Number <= tNumStr // окажется ниже, надо увеличивать
                StData := SubStr(StData, 1, CurRow - 1) + string(tNumStr + 1) + SubStr(StData, i, length(StData) - i + 1);
            }
          3 : // удаляли строку
            if SubStr(StData, CurRow - 1, 1) <> '$' // относительная ссылка
            {
              tNumStr :=  word(SubStr(StData, CurRow, i - CurRow));
              if Number < tNumStr // окажется ниже, надо уменьшать
                StData := SubStr(StData, 1, CurRow - 1) + string(tNumStr - 1) + SubStr(StData, i, length(StData) - i + 1);
              else
                if Number = tNumStr  // потеряна
                  SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData)
            }
          4 : // смещали ячейку
          {
            if ColOffSet <> 0
              if SubStr(StData, CurCol - 1, 1) <> '$' // относительная ссылка
              {
                tNumCol := Ord(UpCase(SubStr(StData, CurCol, 1))) + ColOffSet;
                if(tNumCol < 65) or (tNumCol > 90)  // если номер колонки выходит за пределы диапазона, ставлю Error
                {
                  SetErrorRef(if(SubStr(StData, CurCol - 1, 1) = '$', CurCol - 1, CurCol), i, StData);
                  Continue  // !!!
                }
                else
                  StData := SubStr(StData, 1, CurCol - 1) + Chr(tNumCol) + SubStr(StData, CurCol + 1, length(StData) - CurCol);
              }
            if RowOffSet <> 0
              if SubStr(StData, CurRow - 1, 1) <> '$' // относительная ссылка
              {
                tNumStr :=  word(SubStr(StData, CurRow, i - CurRow)) + RowOffSet;
                if tNumStr < 1   // ставим Error, на максимальную не проверяем
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
