//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 5.80 - ����� "���⥦�� ���������"
// �࣮������. ������ �ࠢ����� ���⠬�
//------------------------------------------------------------------------------
Screen scNastrButtonScreen('',, sci13Esc);
  Show at (,21,,) Fixed_Y;
Buttons
  cmValue2,,, '��ନ஢���� ���� �� ⥪�饩 ����ன��',, sci1Esc;
  cmAttrib,,, '��ᬮ�� ��᫥����� ��ନ஢������ ����',, sci1Esc;
  cmEdit,,,   '������஢���� ����ன��',, sci1Esc;
  cmCancel,,, '��室',, sci1Esc;
<<
           <.��ନ஢���.>       <.  ��ᬮ��  .>       <. ����ன��  .>       <.   �⬥��   .>
 >>
End;

HandleEvent // scNastrButtonScreen
cmValue2:
{
  PutCommand( cmDefault);
}
End; // HandleEvent scNastrButtonScreen
