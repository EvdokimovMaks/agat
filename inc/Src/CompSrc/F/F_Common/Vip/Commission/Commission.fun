//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ���ம�।������ ��� �뢮�� � ��⮪ ��⠢� �����ᨨ,
// �� ���� ��ꥪ� �����ᨩ.
//------------------------------------------------------------------------------
#ifndef __CommissionFun__
#define __CommissionFun__

// ���ம�।������ �뢮� �����ᨨ � ��⮪
//   iCommission      - ��� ��६����� ��ꥪ� �����ᨨ (⨯� Commission)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
#declare WriteCommission(iCommission,StreamObjectName,FormName)
{
  // ������� : boolean
  #StreamObjectName.write(#iCommission.GetSelection <> comp(0)); // if (#iCommission.SelectionIsValid)

  // �᫨ ��⠭������ �������
  if (#iCommission.GetSelection <> comp(0)) // if (#iCommission.SelectionIsValid)
  {
    // cSelectionCommissionNRec - ��뫪� �� ��࠭��� �������
    #StreamObjectName.write(#iCommission.GetSelection);

    // ���_�����ᨨ, ��� ��࠭��� �����ᨨ // CommissionName
    #StreamObjectName.write(#iCommission.GetSelectionName);

    // * ���᪨ � �ଠ�, ��⠭�������� ���짮��⥫��:

    // ���ଠ��_�_�।ᥤ�⥫� - � �ଠ�, ��⠭�������� ���짮��⥫��
    #StreamObjectName.write(#iCommission.GetComponentsList(0));

    // ���᮪_童���_�����ᨨ - � �ଠ�, ��⠭�������� ���짮��⥫��
    #StreamObjectName.write(#iCommission.GetComponentsList(1));

    // * ���᪨ 童��� �����ᨨ � ���⪮ ��⠭�������� ������ன:

    // ���_童���_�����ᨨ
    #StreamObjectName.write(#iCommission.GetComponentsList(2));

    // ���������_�_���_童���_�����ᨨ
    #StreamObjectName.write(#iCommission.GetComponentsList(3));

    // ���_�_���������_童���_�����ᨨ
    #StreamObjectName.write(#iCommission.GetComponentsList(4));

    // * �।ᥤ�⥫�_�����ᨨ:
    if (#iCommission.GetCommissionChairMan)
    {
      #StreamObjectName.write(#iCommission.GetComponentNRec(0)); // �।ᥤ�⥫�_�����ᨨ_nRec
      #StreamObjectName.write(#iCommission.GetComponentFIO (0)); // �।ᥤ�⥫�_�����ᨨ_���
      #StreamObjectName.write(#iCommission.GetComponentTabN(0)); // �।ᥤ�⥫�_�����ᨨ_�������_�����
      #StreamObjectName.write(#iCommission.GetComponentPost(0)); // �।ᥤ�⥫�_�����ᨨ_���������
    }
    else
      #StreamObjectName.skipFormat(4);

    // * �����_�����ᨨ:
    var wCommissionNum : word;
    var wCommissionCount : word;
    wCommissionCount := #iCommission.GetComponentsCount;

    // ������⢮_童���_�����ᨨ
    #StreamObjectName.write(wCommissionCount);

    For (wCommissionNum := 1; wCommissionNum <= wCommissionCount; wCommissionNum := wCommissionNum + 1)
    {
      // �室�� � 横� �� 童��� �����ᨨ
      #StreamObjectName.PutEventById(feDoLoop, fcCommissionMember_#FormName);

      #StreamObjectName.write(#iCommission.GetComponentNRec(wCommissionNum)); // ����_�����ᨨ_nRec
      #StreamObjectName.write(#iCommission.GetComponentFIO (wCommissionNum)); // ����_�����ᨨ_���
      #StreamObjectName.write(#iCommission.GetComponentTabN(wCommissionNum)); // ����_�����ᨨ_�������_�����
      #StreamObjectName.write(#iCommission.GetComponentPost(wCommissionNum)); // ����_�����ᨨ_���������
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+2+3+4+1);
  }

}
#end
// ���ம�।������ �뢮�� �����ᨨ � XLT-蠡���
//   iCommission     - ��� ��६����� ��ꥪ� �����ᨨ (⨯� Commission)
//   StreamXLT       - ��� ��६����� ��ꥪ� ���㧪� � XLT-蠡��� (⨯� XLSRepBuilder)
#declare WriteXltCommissionTable(iCommission,StreamXLT)
{
  // * �����_�����ᨨ:
  var wCommissionNum : word;

    // ������� ⠡����  Commission
  #StreamXLT.CreateTbl('Commission');

  // ���� ⠡���� Commission
  #StreamXLT.CreateTblFld('����_�����ᨨ_nRec');
  #StreamXLT.CreateTblFld('����_�����ᨨ_���' );
  #StreamXLT.CreateTblFld('����_�����ᨨ_�������_�����');
  #StreamXLT.CreateTblFld('����_�����ᨨ_���������');

  // �᫨ ��⠭������ �롮ઠ �����ᨨ
  if (#iCommission.GetSelection <> comp(0)) // if (#iCommission.SelectionIsValid)
  {
    // ���㧪� ����� ⠡���� Commission � XLT-蠡���
    For (wCommissionNum := 1; wCommissionNum <= #iCommission.GetComponentsCount; wCommissionNum := wCommissionNum + 1)
    {
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('����_�����ᨨ_nRec',            #iCommission.GetComponentNRec(wCommissionNum)); // ����_�����ᨨ_nRec
      #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���',             #iCommission.GetComponentFIO (wCommissionNum)); // ����_�����ᨨ_���
      #StreamXLT.SetTblStringFldValue('����_�����ᨨ_�������_�����', #iCommission.GetComponentTabN(wCommissionNum)); // ����_�����ᨨ_�������_�����
      #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���������',       #iCommission.GetComponentPost(wCommissionNum)); // ����_�����ᨨ_���������

      #StreamXLT.InsTblRow;
    }
  }
  else
  {
    // ���㧪� ����� ⠡���� Commission � XLT-蠡���
    For (wCommissionNum := 1; wCommissionNum <= 4; wCommissionNum := wCommissionNum + 1)
    {
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('����_�����ᨨ_nRec',            0);  // ����_�����ᨨ_nRec
      #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���',             ''); // ����_�����ᨨ_���
      #StreamXLT.SetTblStringFldValue('����_�����ᨨ_�������_�����', ''); // ����_�����ᨨ_�������_�����
      #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���������',       ''); // ����_�����ᨨ_���������

      #StreamXLT.InsTblRow;
    }
  }

  #StreamXLT.PublishTbl('Commission');
}
#end

// ��६���� ��� XLT-蠡����
// ��������!!! ��뢠�� WriteXltCommissionVar ४��������� ������ ��। PublishVar
// �⮡� �� ᡨ������ �ଠ��
#declare WriteXltCommissionVar(iCommission,StreamXLT)
{
  // ������� : boolean
  #StreamXLT.SetNumberVar('�������', word(#iCommission.GetSelection <> comp(0)));

  // cSelectionCommissionNRec - ��뫪� �� ��࠭��� �롮��
  #StreamXLT.SetNumberVar('cSelectionCommissionNRec', #iCommission.GetSelection);

  // ���_�롮ન_童���_�����ᨨ // CommissionName
  #StreamXLT.SetStringVar('���_�����ᨨ', #iCommission.GetSelectionName);

  // * ���᪨ � �ଠ�, ��⠭�������� ���짮��⥫��:

  // ���ଠ��_�_�।ᥤ�⥫�, ���᮪_童���_�����ᨨ - � �ଠ�, ��⠭�������� ���짮��⥫��
  #StreamXLT.SetStringVar('���ଠ��_�_�।ᥤ�⥫�', #iCommission.GetComponentsList(0));
  #StreamXLT.SetStringVar('���᮪_童���_�����ᨨ',    #iCommission.GetComponentsList(1));

  // * ���᪨ 童���_�����ᨨ � ���⪮ ��⠭�������� ������ன:

  // ���_童���_�����ᨨ
  #StreamXLT.SetStringVar('���_童���_�����ᨨ', #iCommission.GetComponentsList(2));

  // ���������_�_���_童���_�����ᨨ
  #StreamXLT.SetStringVar('���������_�_���_童���_�����ᨨ', #iCommission.GetComponentsList(3));

  // ���_�_���������_童���_�����ᨨ
  #StreamXLT.SetStringVar('���_�_���������_童���_�����ᨨ', #iCommission.GetComponentsList(4));

  // * �।ᥤ�⥫� �����ᨨ:
  if (#iCommission.GetCommissionChairMan)
  {
    #StreamXLT.SetNumberVar('�।ᥤ�⥫�_�����ᨨ_nRec',           #iCommission.GetComponentNRec(0)); // �।ᥤ�⥫�_�����ᨨ_nRec
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�����ᨨ_���',            #iCommission.GetComponentFIO (0)); // �।ᥤ�⥫�_�����ᨨ_���
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�����ᨨ_�������_�����',#iCommission.GetComponentTabN(0)); // �।ᥤ�⥫�_�����ᨨ_�������_�����
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�����ᨨ_���������',      #iCommission.GetComponentPost(0)); // �।ᥤ�⥫�_�����ᨨ_���������
  }

  // ������⢮_童���_�����ᨨ
  #StreamXLT.SetNumberVar('������⢮_童���_�����ᨨ', #iCommission.GetComponentsCount);


}
#end // CommissionBody
//-----------------------------------------------------------------------------

// ��६���� ��� FR-����
#declare WriteFRCommission(iCommission, TableFR)
{
  // * �।ᥤ�⥫� �����ᨨ:
  if (#iCommission.GetCommissionChairMan)
  {
    #TableFR.BossComName := #iCommission.GetComponentFIO (0); // �।ᥤ�⥫�_�����ᨨ_���
    #TableFR.BossComDlg  := #iCommission.GetComponentPost(0); // �।ᥤ�⥫�_�����ᨨ_���������
  }

}
#end // CommissionBody
//-----------------------------------------------------------------------------

// ��� � �������� 童��� �����ᨨ ��� FR-����
#declare WriteFRCommissionALL(iCommission,ComissFR)
{
  // * �����_�����ᨨ:
  var wCommissionNum : word;
  var wCommissionCount : word;
  wCommissionCount := #iCommission.GetComponentsCount;

  For (wCommissionNum := 1; wCommissionNum <= wCommissionCount; wCommissionNum := wCommissionNum + 1)
  {
    // �室�� � 横� �� 童��� �����ᨨ
    ClearBuffer(tn#ComissFR);
    #ComissFR.MemberFIO  := #iCommission.GetComponentFIO (wCommissionNum); // ����_�����ᨨ_���
    #ComissFR.MemberPost := #iCommission.GetComponentPost(wCommissionNum); // ����_�����ᨨ_���������
    Insert Current #ComissFR;
  }
}
#end // CommissionBody
//-----------------------------------------------------------------------------

#end // __CommissionFun__
