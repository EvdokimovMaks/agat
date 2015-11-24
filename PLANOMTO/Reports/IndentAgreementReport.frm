.LinkForm 'CLAIM_AGREEMENT' Prototype is 'CLAIM'
.NameInList '����. �������� � ᮣ��ᮢ���� ���'
.var
  _first: boolean;
  _vizaInd: integer;
  _vizaCnt: integer;
  _headers: array[1..3] of string;
  _slDoctype: word;
.endvar
.create view v
as select *
from statlog sl, x$users u, spkau oldViza, spkau newViza
where ((
  _slDoctype      == sl.doctype and
  comp(_IndNRec)  == sl.cdoc and
  sl.atl_lastuser == u.atl_nrec and
  sl.cOldNote     == oldViza.nrec and
  sl.cNewNote     == newViza.nrec
));
.{CheckEnter CLAIM_LOOP1
.}
.begin
  _vizaCnt := 3;
  _vizaInd := 0;
  _headers[1] := '�������᪨� ��४��';
  _headers[2] := '��砫쭨� �����';
  _headers[3] := '���';
end.
���������������������������������������������������������������������������������������������������Ŀ
�����                  ����      ��६�   ����짮��⥫�                            ���������      �
.{ while (_vizaInd < 3)
.begin
  _vizaInd++;
  _slDoctype := word(STATLOG_TIPDOC_INDENT + _vizaInd);
  _first := true;
end.
���������������������������������������������������������������������������������������������������Ĵ
.{?internal; v.getfirst sl != tsOk;
.fields
  _headers[_vizaInd]
.endfields
�@@@@@@@@@@@@@@@@@@@@@@�-         �-       �-                                       �-              �
.}
.{ table 'v.sl'
.fields
  if(_first, _headers[_vizaInd], '')
  datetostr(v.sl.doper, 'DD.MM.YYYY')
  timetostr(v.sl.timeoper, 'HH:MM:SS')
  if(v.getfirst u = tsOk, v.u.xu$fullname, '')
  if(v.getfirst newViza = tsOk, v.newViza.Name, '')
.endfields
�@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@�
.begin
  _first := false;
end.
.}
.}
�����������������������������������������������������������������������������������������������������
.EndForm
