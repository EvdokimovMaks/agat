//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ����ய।������ ��� �뢮�� � ��⮪ �⢥��⢥���� ���,
// �� ���� ��ꥪ� �����ᨩ.
//------------------------------------------------------------------------------
#ifndef __ResponsibleFun__
#define __ResponsibleFun__

// ���ம�।������ �뢮�� �⢥��⢥���� ��� � ��⮪
//   iResponsible     - ��� ��६����� ��ꥪ� �����ᨨ (⨯� Commission)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
#declare WriteResponsible(iResponsible,StreamObjectName,FormName)
{
  // �⢥��⢥���_��� : boolean
  #StreamObjectName.write(#iResponsible.GetSelection <> comp(0)); // if (#iResponsible.SelectionIsValid)

  // �᫨ ��⠭������ �롮ઠ �⢥��⢥���� ���
  if (#iResponsible.GetSelection <> comp(0)) // if (#iResponsible.SelectionIsValid)
  {
    // cSelectionResponsibleNRec - ��뫪� �� ��࠭��� �롮��
    #StreamObjectName.write(#iResponsible.GetSelection);

    // ���_�롮ન_�⢥��⢥����_���, ��� ��࠭�� �⢥��⢥���� ��� // ResponsibleName
    #StreamObjectName.write(#iResponsible.GetSelectionName);

    // * ���᪨ � �ଠ� ��⠭������� ���짮��⥫��:

    // ���᮪_�⢥��⢥����_��� - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iResponsible.GetComponentsList(1));


    // * ���᪨ �⢥��⢥���� ��� � ���⪮ ��⠭������� ������ன:

    // ���_�⢥��⢥����_���
    #StreamObjectName.write(#iResponsible.GetComponentsList(2));

    // ���������_�_���_�⢥��⢥����_���
    #StreamObjectName.write(#iResponsible.GetComponentsList(3));

    // ���_�_���������_�⢥��⢥����_���
    #StreamObjectName.write(#iResponsible.GetComponentsList(4));


    // * �⢥��⢥��� ���:
    var wResponsibleNum : word;
    var wResponsibleCount : word;
    wResponsibleCount := #iResponsible.GetComponentsCount;

    // ������⢮_�⢥��⢥����_���
    #StreamObjectName.write(wResponsibleCount);

    For (wResponsibleNum := 1; wResponsibleNum <= wResponsibleCount; wResponsibleNum := wResponsibleNum + 1)
    {
      // �室�� � 横� �� �⢥��⢥��� ��栬
      #StreamObjectName.PutEventById(feDoLoop, fcResponsible_#FormName);

      #StreamObjectName.write(#iResponsible.GetComponentNRec(wResponsibleNum)); // �⢥��⢥����_���_nRec
      #StreamObjectName.write(#iResponsible.GetComponentFIO (wResponsibleNum)); // �⢥��⢥����_���_���
      #StreamObjectName.write(#iResponsible.GetComponentTabN(wResponsibleNum)); // �⢥��⢥����_���_�������_�����
      #StreamObjectName.write(#iResponsible.GetComponentPost(wResponsibleNum)); // �⢥��⢥����_���_���������
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+1+3+1);
  }

}
#end

// ���ம�।������ �뢮�� �⢥��⢥���� ��� � XLT-蠡���
//   iResponsible     - ��� ��६����� ��ꥪ� �����ᨨ (⨯� Commission)
//   StreamXLT        - ��� ��६������ ��ꥪ� ���㧪� � XLT-蠡��� (⨯� XLSRepBuilder)
#declare WriteXltResponsibleTable(iResponsible,StreamXLT)
{
  // * �⢥��⢥��� ���:
  var wResponsibleNum : word;

  // �᫨ ��⠭������ �롮ઠ �⢥��⢥���� ���
  if (#iResponsible.GetSelection <> comp(0)) // if (#iResponsible.SelectionIsValid)
  {
    // ������� ⠡����  Responsible
    #StreamXLT.CreateTbl('Responsible');

    // ���� ⠡���� Responsible
    #StreamXLT.CreateTblFld('�⢥��⢥����_���_nRec');
    #StreamXLT.CreateTblFld('�⢥��⢥����_���_���');
    #StreamXLT.CreateTblFld('�⢥��⢥����_���_�������_�����');
    #StreamXLT.CreateTblFld('�⢥��⢥����_���_���������');

    // ���㧪� ����� ⠡���� Responsible � XLT-蠡���
    For (wResponsibleNum := 1; wResponsibleNum <= #iResponsible.GetComponentsCount; wResponsibleNum := wResponsibleNum + 1)
    {
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('�⢥��⢥����_���_nRec',            #iResponsible.GetComponentNRec(wResponsibleNum)); // �⢥��⢥����_���_nRec
      #StreamXLT.SetTblStringFldValue('�⢥��⢥����_���_���',             #iResponsible.GetComponentFIO (wResponsibleNum)); // �⢥��⢥����_���_���
      #StreamXLT.SetTblStringFldValue('�⢥��⢥����_���_�������_�����', #iResponsible.GetComponentTabN(wResponsibleNum)); // �⢥��⢥����_���_�������_�����
      #StreamXLT.SetTblStringFldValue('�⢥��⢥����_���_���������',       #iResponsible.GetComponentPost(wResponsibleNum)); // �⢥��⢥����_���_���������

      #StreamXLT.InsTblRow;
    }

    #StreamXLT.PublishTbl('Responsible');
  }
}
#end

//��६���� ��� XLT-蠡����
#declare WriteXltResponsibleVar(iResponsible,StreamXLT)
{
  // �⢥��⢥���_��� : boolean
  #StreamXLT.SetNumberVar('�⢥��⢥���_���', word(#iResponsible.GetSelection <> comp(0)));

  // cSelectionResponsibleNRec - ��뫪� �� ��࠭��� �롮��
  #StreamXLT.SetNumberVar('cSelectionResponsibleNRec', #iResponsible.GetSelection);

  // ���_�롮ન_�⢥��⢥����_��� // ResponsibleName
  #StreamXLT.SetStringVar('���_�롮ન_�⢥��⢥����_���', #iResponsible.GetSelectionName);

  // * ���᪨ � �ଠ� ��⠭������� ���짮��⥫��:

  // ���᮪_�⢥��⢥����_��� - � �ଠ� ��⠭������� ���짮��⥫��
  #StreamXLT.SetStringVar('���᮪_�⢥��⢥����_���', #iResponsible.GetComponentsList(1));

  // * ���᪨ �⢥��⢥���� ��� � ���⪮ ��⠭������� ������ன:

  // ���_�⢥��⢥����_���
  #StreamXLT.SetStringVar('���_�⢥��⢥����_���', #iResponsible.GetComponentsList(2));

  // ���������_�_���_�⢥��⢥����_���
  #StreamXLT.SetStringVar('���������_�_���_�⢥��⢥����_���', #iResponsible.GetComponentsList(3));

  // ���_�_���������_�⢥��⢥����_���
  #StreamXLT.SetStringVar('���_�_���������_�⢥��⢥����_���', #iResponsible.GetComponentsList(4));

  // ������⢮_�⢥��⢥����_���
  #StreamXLT.SetNumberVar('������⢮_�⢥��⢥����_���', #iResponsible.GetComponentsCount);

}
#end // ResponsibleBody


#end // __ResponsibleFun__
