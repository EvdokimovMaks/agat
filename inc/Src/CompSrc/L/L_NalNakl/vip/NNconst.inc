//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - �����⨪�
// ����⠭��� ��� ���������� L_NalNakl
//******************************************************************************

#ifNdef __NNCONST_INC__
#define __NNCONST_INC__

const
  // ���������, ����� ॥���,
  // ��⮤ ��� ���㯪� �� (���) � 楫�� �ᯮ�짮����� � ࠬ��� 宧��⢥���� ���⥫쭮��
  cwBK_Buy_Method_HozD : Word = 1;

  // ����⠭�� ��� ���祭�� ����ன�� ��⮪���஫� ��ࢮ�� �� ᮡ�⨩ - ���㧪�/���⥦
  cwAvtoControl_No         : Word = 0;
  cwAvtoControl_Yes        : Word = 1;
  cwAvtoControl_NotPlatNDS : Word = 2;

  // ����⠭�� ��� ���祭�� ⨯�� ������
  cwNal_StavMain  : Word = 1;
  cwNal_StavDop   : Word = 2;
  cwNal_StavExp   : Word = 3;
  cwNal_NoNDS     : Word = 4;
  cwNal_NoNDSObj  : Word = 5;
  cwNal_Tara      : Word = 6;
  cwNal_StavMedic : Word = 7;

  // ����⠭�� ��� ��।������, ����� �� ���� ��ନ஢��� �� ��ࢨ筮�� ���㬥���
  cwNN_WithNDS  : Word = 1;  // �� � ���, �����
  cwNN_NoNDS    : Word = 2;  // �� ��� ���
  cwNN_MedicNDS : Word = 4;  // �� � ��� 7%
end;

#end // __NNCONST_INC__
