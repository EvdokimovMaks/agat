!  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
!  �    � �   "� � � � �   � � � � � �",    � � �  "T O P   S O F T"     �
!  �           蹍オ� "������-�����" (�) 2003                            �
!  �      �ム瓱� : 7.1                                                   �
!  �      ��о�｀���:  �����腑��� �.�.                                   �
!  �      ��Л�腑�┘:  ��爼� 筮爼�牀����� HTML ��艪�〓� ��瘁覊��         �
!  �      �����モ琺:                                                     �
!  �      �Кキキ��:                                                     �
!  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
#doc
��爼� 筮爼�牀����� HTML ��艪�〓� ��瘁覊��
#end
.form Mail_Form
.Fields
_NAME
PHOTO
FIO
ALLAGE
DEPARTMENT
POST
AGE
BDATE
_NAME1

.EndFields
.HIDE
.{ Mail_FormAllCycle CheckEnter
 ^
.{ Mail_FormPersCycle CheckEnter
 ^ ^ ^ ^ ^ ^ ^ ^
.}
.}
.begin
 Mail_Form.fExit;
end.
.endform

.LINKFORM "Photo_mail" PROTOTYPE IS Mail_Form
.group "Photo_mail"

.Fields
_NAME
PHOTO
FIO
ALLAGE
DEPARTMENT
POST

.EndFields
<HTML>
<HEAD>
<STYLE></STYLE>
<META name=GENERATOR content="text/html; charset=cp866" http-equiv=Content-Type>
</HEAD>
<BODY>
.{ Mail_FormAllCycle CheckEnter
<br> ^ <br>
  <TABLE width="80%" background="" border="1">
    <TBODY>
.{ Mail_FormPersCycle CheckEnter
    <TR>
      <TD vAlign=top align=middle  Width = "85" ><IMG alt=��皰���筥�
        src="^" Height= "100" Width = "80" > </TD>
      <TD vAlign=top align=left>^ <br> ^ <br> ^ <br> ^
      </TD>
.}
      </TR></TBODY></TABLE>
.}
</BODY>
</HTML>
.endform

.LINKFORM "HTML_mail" PROTOTYPE IS Mail_Form
.group "HTML_mail"

.Fields
_NAME1
FIO
AGE
BDATE
DEPARTMENT
POST
.EndFields
<HTML>
<HEAD>
<STYLE></STYLE>
<META name=GENERATOR content="text/html; charset=cp866" http-equiv=Content-Type>
</HEAD>
<BODY>
<TABLE width="100%" background="" border="1">
  <TBODY>
  <TR>
    <TD vAlign=top align=middle width="130">
      <H5>����</H5></TD>
    <TD vAlign=top align=middle width="200">
      <H5>���</H5></TD>
    <TD vAlign=top align=middle width="50">
      <H5>��о�痰</H5></TD>
    <TD vAlign=top align=middle width="100">
      <H5>���� 牀Δキ��</H5></TD>
    <TD vAlign=top align=middle width="275">
      <H5>��む�Гカキ┘</H5></TD>
    <TD vAlign=top align=middle width="275">
      <H5>���Ν�痰�</H5></TD>
.{ Mail_FormAllCycle CheckEnter
.{ Mail_FormPersCycle CheckEnter
<TR>
  <TD vAlign=top align=middle width="130">^ </TD>
  <TD vAlign=top align=left   width="200">^ </TD>
  <TD vAlign=top align=middle width="50">^ </TD>
  <TD vAlign=top align=middle width="100">^ </TD>
  <TD vAlign=top align=middle width="275">^ </TD>
  <TD vAlign=top align=middle width="275">^ </TD>
.}
.}
</TR></TBODY></TABLE>
</BODY>
</HTML>
.endform
