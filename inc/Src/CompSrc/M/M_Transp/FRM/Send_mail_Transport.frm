//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
// �����: 8.1
// ��ଠ ��� ��ࠢ�� ���쬠 ᮨ᪠⥫� (ᮡ�ᥤ������)
//------------------------------------------------------------------------------
#doc
��ଠ ��� ��ࠢ�� ���쬠 ᮨ᪠⥫� (ᮡ�ᥤ������)
#end
.form Send_Mail_Transport
.Fields
  OutString
.EndFields
.hide
.{ Cycle_Transport CheckEnter
  ^
.}
.begin
  Send_Mail_Transport.fExit;
end.
.endform


.linkform "HTML_Send_Mail" prototype is Send_Mail_Transport
.Fields
  OutString
.EndFields


<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>Conversation</TITLE>
<META content="MSHTML 6.00.2600.0" name=Send  charset=cp866>
</HEAD>
<BODY>
.{ Cycle_Transport CheckEnter
  ^
</DIV>
.}
</BODY>
</HTML>

.endform

//  <STRONG>
//    <DIV align="center">  ����������� �� �⪠��.  </DIV>
//  </STRONG>

//  <DIV align="left">
//    <br>�������� <^>, ��� ����� �뫠 ��ᬮ�७� �� �।��� ����祭�� ��� � ᯨ᮪
//    �������⮢ �� ����饭�� �������� �������⥩. � ᮦ������ �� ����� ������ ��� �����ᨩ,
//    ᮮ⢥������� ��饬� ����ᨮ���쭮�� �஢��.
//  </DIV>

//  <STRONG>
//    <BR>� 㢠������,
//    <BR>������ �.�.
//  </STRONG>
