//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
//------------------------------------------------------------------------------
// �����⨪� 7.12 - ��壠���᪨� ������
// �㭪�� ᢥ�⪨ ᠫ줮
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//
// !!! �������� !!!
//
// ����� ��室��� ᮡ�ࠥ��� � �� Vip � �� Pascal !!!
//
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// ����⪠ � ����襬� ���祭��
procedure RollToPositive(var SumD,SumK : double);
begin
  SumD := SumD - SumK;
  SumK := 0;
  if SumD < 0 then
    begin
      SumK := -SumD;
      SumD := 0;
    end;
end; // RollToPositive
//------------------------------------------------------------------------------
// ����� �㭪�� ᢥ�⪨ ᠫ줮
procedure NewSvertkaSaldo(TipSch : word; RollAP : boolean; var SumD,SumK : double);
begin
  if (TipSch = cgAPSchet) then begin
    if (RollAP) then
      RollToPositive(SumD, SumK);
    // ��⨢��-���ᨢ�� ����� �� �� ����� �᫮���� �� ᢥ�����
    Exit;
  end;
  // �஢�ઠ ᢥ�⮪ � ���� ��஭�
  // �஢�ઠ ⨯� � ��砫� �᫮��� - �� ��᪠�� ���� �������� ���᫥��� !!!
  if ((TipSch = cgASchet) and boGetTune('Fin.Reports.RollSaldo')) then
  begin
    SumD := SumD - SumK;
    SumK := 0;
    Exit;
  end;
  if ((TipSch = cgPSchet) and boGetTune('Fin.Reports.RollSaldo')) then
  begin
    SumK := SumK - SumD;
    SumD := 0;
    Exit;
  end;
  // ��⠫��� ⮫쪮 ������஭��� ���, ����� ���� ᢥ���� � �����
  RollToPositive(SumD, SumK);
end; // NewSvertkaSaldo
//------------------------------------------------------------------------------
