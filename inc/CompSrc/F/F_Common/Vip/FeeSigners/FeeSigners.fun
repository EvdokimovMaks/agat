//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 8.1 - ���ம�।������ ��� �뢮�� � ��⮪ �����ᠭ⮢,
// �� ���� ��ꥪ� �����ᠭ⮢.
//------------------------------------------------------------------------------
#ifndef __FeeSignersFun__
#define __FeeSignersFun__

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮� �����ᠭ⮢ � ��⮪
//   iFeeSigners      - ��� ��६����� ��ꥪ� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
#declare WriteFeeSigners(iFeeSigners,StreamObjectName,FormName)
{
  // ��㯯� : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // ���_��㯯�, ��� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

    // * ���᪨ � �ଠ� ��⠭�������� ���짮��⥫��:

    // ���ଠ��_�_�।ᥤ�⥫� - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));

    // ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iFeeSigners.GetSignersList(1));

    // * �।ᥤ�⥫�:
    if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �।ᥤ�⥫�_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �।ᥤ�⥫�_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �।ᥤ�⥫�_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �।ᥤ�⥫�_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �।ᥤ�⥫�_����
    }
    else
    {
      #StreamObjectName.skipFormat(5);
    }

    #iFeeSigners.ClearRestriction;

    // * �����ᠭ��:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // ������⢮_�����ᠭ⮢
    #StreamObjectName.write(wFeeSignersCount);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // �室�� � 横� �� �����ᠭ⠬
        #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersMember_#FormName);

        #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����ᠭ�_���
        #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������
        #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �����ᠭ�_����
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+2+5+1);
  }

}
#end

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮� �����ᠭ⮢ � ��⮪ (�� ��ਠ��� ����ᠭ��)
//   iFeeSigners      - ��� ��६����� ��ꥪ� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
#declare WriteFeeSignersAll(iFeeSigners,StreamObjectName,FormName)
{
  // ��㯯� : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // ���_��㯯�, ��� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

    // * ���᪨ � �ଠ� ��⠭�������� ���짮��⥫��:

    // ���ଠ��_�_�।ᥤ�⥫� - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));

    // ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iFeeSigners.GetSignersList(1));

    // * �।ᥤ�⥫�:
    if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);         // �।ᥤ�⥫�_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));       // �।ᥤ�⥫�_���_1
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(2));       // �।ᥤ�⥫�_���_2
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(3));       // �।ᥤ�⥫�_���_3
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(4));       // �।ᥤ�⥫�_���_4
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(5));       // �।ᥤ�⥫�_���_5
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(6));       // �।ᥤ�⥫�_���_6
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));       // �।ᥤ�⥫�_���_7
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(8));       // �।ᥤ�⥫�_���_8
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(9));       // �।ᥤ�⥫�_���_9
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(10));      // �।ᥤ�⥫�_���_10
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(11));      // �।ᥤ�⥫�_���_11
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(12));      // �।ᥤ�⥫�_���_12
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);         // �।ᥤ�⥫�_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1));  // �।ᥤ�⥫�_���������_1
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(2));  // �।ᥤ�⥫�_���������_2
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(3));  // �।ᥤ�⥫�_���������_3
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(4));  // �।ᥤ�⥫�_���������_4
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(5));  // �।ᥤ�⥫�_���������_5
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(6));  // �।ᥤ�⥫�_���������_6
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);         // �।ᥤ�⥫�_����
    }
    else
    {
      #StreamObjectName.skipFormat(21);
    }

    #iFeeSigners.ClearRestriction

    // * �����ᠭ��:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // ������⢮_�����ᠭ⮢
    #StreamObjectName.write(wFeeSignersCount);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // �室�� � 横� �� �����ᠭ⠬
        #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersMember_#FormName);

        #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����ᠭ�_���_1
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(2));      // �����ᠭ�_���_2
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(3));      // �����ᠭ�_���_3
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(4));      // �����ᠭ�_���_4
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(5));      // �����ᠭ�_���_5
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(6));      // �����ᠭ�_���_6
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // �����ᠭ�_���_7
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(8));      // �����ᠭ�_���_8
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(9));      // �����ᠭ�_���_9
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(10));     // �����ᠭ�_���_10
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(11));     // �����ᠭ�_���_11
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(12));     // �����ᠭ�_���_12
        #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������_1
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(2)); // �����ᠭ�_���������_2
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(3)); // �����ᠭ�_���������_3
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(4)); // �����ᠭ�_���������_4
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(5)); // �����ᠭ�_���������_5
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(6)); // �����ᠭ�_���������_6
        #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �����ᠭ�_����
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
  else
  {
    #StreamObjectName.skipFormat(2+2+5+1);
  }
}
#end

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮� �����ᠭ⮢ � ��⮪ ��� ���⥦��� ���㬥�⮢
//   iFeeSigners      - ��� ��६����� ��ꥪ� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
//   23 ���� 3 + 4*5
#declare WriteFeeSignersForPlatDocs(iFeeSigners,StreamObjectName)
{
  // ��㯯� : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // ���_��㯯�, ��� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

    // * ��४��:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Direct'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �㪮����⥫�_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // �㪮����⥫�_���
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �㪮����⥫�_���_������
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));     // �㪮����⥫�_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �㪮����⥫�_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �㪮����⥫�_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �㪮����⥫�_����
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    // * ������ ��壠���:
    if (#iFeeSigners.RestrictFeeByRole(2, 'GlBux'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // ����.���_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // ����.���_���
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // ����.���_���_������
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));     // ����.���_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // ����.���_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // ����.���_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // ����.���_����
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    // * �����:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Kass'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // �����_���
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����_���_������
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));      // �����_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �����_����
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    // * �⢥��⢥���:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Otvetstv'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(7));      // �����_���
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����_���_������
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(13));     // �����_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �����_����
    }
    else
    {
      #StreamObjectName.skipFormat(7);
    }

    #iFeeSigners.ClearRestriction
  }
  else
    #StreamObjectName.skipFormat(30);
}
#end

#declare WriteFeeSignersForPlatDocsByHan(iFeeSigners,MyHandle)
{
  // ��㯯� : boolean
  Form_Write(#iFeeSigners.FeeSignersIsValid,'',#MyHandle);

  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
    Form_Write(#iFeeSigners.GetFeeSigners,'',#MyHandle);

    // ���_��㯯�, ��� ��࠭��� ��㯯�
    Form_Write(#iFeeSigners.GetFeeSignersName,'',#MyHandle);

    // * ��४��:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Direct'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle);        // �㪮����⥫�_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle);        // �㪮����⥫�_���
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle);        // �㪮����⥫�_���_������
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle);        // �㪮����⥫�_���
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle);        // �㪮����⥫�_�������_�����
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle);        // �㪮����⥫�_���������
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle);        // �㪮����⥫�_����
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    // * ������ ��壠���:
    if (#iFeeSigners.RestrictFeeByRole(2, 'GlBux'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle);   // ����.���_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle);   // ����.���_���
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle);   // ����.���_���_������
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle);   // ����.���_���
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle);   // ����.���_�������_�����
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle);   // ����.���_���������
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle);   // ����.���_����
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    // * �����:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Kass'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle); // �����_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle); // �����_���
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle); // �����_���_������
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle);  // �����_���
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle); // �����_�������_�����
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle); // �����_���������
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle); // �����_����
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    // * �⢥��⢥���:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Otvetstv'))
    {
      Form_Write(#iFeeSigners.GetSignerNRec       ,'',#MyHandle); // �����_nRec
      Form_Write(#iFeeSigners.GetSignerFIO(7)     ,'',#MyHandle); // �����_���
      Form_Write(#iFeeSigners.GetSignerFIO(1)     ,'',#MyHandle); // �����_���_������
      Form_Write(#iFeeSigners.GetSignerFIO(13)    ,'',#MyHandle); // �����_���
      Form_Write(#iFeeSigners.GetSignerTabN       ,'',#MyHandle); // �����_�������_�����
      Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle); // �����_���������
      Form_Write(#iFeeSigners.GetSignerRole       ,'',#MyHandle); // �����_����
    }
    else
    {
      Form_SkipFormat(7, #MyHandle);
    }

    #iFeeSigners.ClearRestriction
  }
  else
    Form_SkipFormat(30, #MyHandle);
}
#end

#declare WriteFeeSignersCycle(iFeeSigners,StreamObjectName,FormName)
{
  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    #StreamObjectName.PutEventById(feTrue,fcExistFeeSigners_#FormName);
    // * �����ᠭ��:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;

    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // ������⢮_�����ᠭ⮢
    #StreamObjectName.write(wFeeSignersCount);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // �室�� � 横� �� �����ᠭ⠬
        #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersCycle_#FormName);

        #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
        #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����ᠭ�_���
        #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
        #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������
        #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �����ᠭ�_����
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
}
#end

// �뢮� �����ᠭ⮢ �१ handle
#declare WriteFeeSignersCycleByHan(iFeeSigners,MyHandle,FormName)
{
  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    Form_PutEventById(feTrue,fcExistFeeSigners_#FormName,#MyHandle);
    // * �����ᠭ��:
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;

    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    // ������⢮_�����ᠭ⮢
    Form_Write(wFeeSignersCount,'',#MyHandle);

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // �室�� � 横� �� �����ᠭ⠬
        Form_PutEventById(feDoLoop, fcFeeSignersCycle_#FormName,#MyHandle);

        Form_Write(#iFeeSigners.GetSignerNRec,'',#MyHandle);        // �����ᠭ�_nRec
        Form_Write(#iFeeSigners.GetSignerFIO(1),'',#MyHandle);      // �����ᠭ�_���
        Form_Write(#iFeeSigners.GetSignerTabN,'',#MyHandle);        // �����ᠭ�_�����
        Form_Write(#iFeeSigners.GetSignerPosition(1),'',#MyHandle); // �����ᠭ�_�����
        Form_Write(#iFeeSigners.GetSignerRole,'',#MyHandle);        // �����ᠭ�_����

        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
}
#end

#declare WriteFeeSigners_OS(iFeeSigners,StreamObjectName,FormName)
{
  // ��㯯� : boolean
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);

  // �᫨ ��⠭������ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid)
  {
    // * �����ᠭ��:
     var wFeeSignersNum : word;
     var wFeeSignersCount : word;

    // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);

    // ���_��㯯�, ��� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);

     // ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫�� (童�� �����ᨨ)
    #StreamObjectName.write(#iFeeSigners.GetSignersList(4));

    // ���ଠ��_�_�।ᥤ�⥫� - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));

    // * �।ᥤ�⥫�:
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_PredCom))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �।ᥤ�⥫�_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �।ᥤ�⥫�_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �।ᥤ�⥫�_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �।ᥤ�⥫�_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �।ᥤ�⥫�_����
    }
    else
      #StreamObjectName.skipFormat(5);

    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      // ������⢮_�����ᠭ⮢
      #StreamObjectName.write(wFeeSignersCount);

      if (#iFeeSigners.GetSignerFirst)
      {

        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
        {
          // �室�� � 横� �� �����ᠭ⠬
          #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersMember_#FormName);

          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����ᠭ�_���
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������
          #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �����ᠭ�_����
          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    }
    else
      #StreamObjectName.skipFormat(1);

    // �⢥��⢥���
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      // ������⢮_�⢥��⢥����
      #StreamObjectName.write(wFeeSignersCount);

      if (#iFeeSigners.GetSignerFirst)
      {
        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
        {
          // �室�� � 横� �� �⢥��⢥���
          #StreamObjectName.PutEventById(feDoLoop, fcFeeSignersResponsible_#FormName);

          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �⢥��⢥���_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �⢥��⢥���_���
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �⢥��⢥���_�������_�����
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �⢥��⢥���_���������
          #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �⢥��⢥���_����
          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    }
    else
      #StreamObjectName.skipFormat(1);

     // * ��४��:
    if (#iFeeSigners.RestrictFeeByRole(2, 'Direct'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �㪮����⥫�_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �㪮����⥫�_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �㪮����⥫�_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �㪮����⥫�_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // �㪮����⥫�_����
    }
    else
      #StreamObjectName.skipFormat(5);

    // * ������ ��壠���:
    if (#iFeeSigners.RestrictFeeByRole(2, 'GlBux'))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // ����.���_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // ����.���_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // ����.���_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // ����.���_���������
      #StreamObjectName.write(#iFeeSigners.GetSignerRole);        // ����.���_����
    }
    else
      #StreamObjectName.skipFormat(5);

    #iFeeSigners.ClearRestriction;
  }
  else
    #StreamObjectName.skipFormat(4 + 5 + 1 + 1 + 5 + 5);
}
#end

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮� �����ᨨ � ��⮪ �� �᭮�� �����������.
// ��������� ᮢ������ � ���� ��⮪�� WriteCommission.
//   iFeeSigners      - ��� ��६����� ��ꥪ� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
#declare WriteCommission_FeeSigners(iFeeSigners,StreamObjectName,FormName)
{
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);  // ��㯯� : boolean

  if (#iFeeSigners.FeeSignersIsValid)  // �᫨ ��⠭������ ��㯯�
  {
     var wFeeSignersCount : word;

    #StreamObjectName.write(#iFeeSigners.GetFeeSigners);  // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
    #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);  // ���_��㯯�, ��� ��࠭��� ��㯯�

    // * ���᪨ � �ଠ�, ��⠭�������� ���짮��⥫��:
    #StreamObjectName.write(#iFeeSigners.GetSignersList(0));  // ���ଠ��_�_�।ᥤ�⥫� - � �ଠ� ��⠭������� ���짮��⥫��
    #StreamObjectName.write(#iFeeSigners.GetSignersList(1));  // ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫��

    // * ���᪨ 童��� �����ᨨ � ���⪮ ��⠭�������� ������ன:
    #StreamObjectName.write('');   // ���_童���_�����ᨨ
    #StreamObjectName.write('');   // ���������_�_���_童���_�����ᨨ
    #StreamObjectName.write('');   // ���_�_���������_童���_�����ᨨ

    // * �।ᥤ�⥫�:
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_PredCom))
    {
      #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �।ᥤ�⥫�_nRec
      #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �।ᥤ�⥫�_���
      #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �।ᥤ�⥫�_�������_�����
      #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �।ᥤ�⥫�_���������
    }
    else
      #StreamObjectName.skipFormat(4);

    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      #StreamObjectName.write(wFeeSignersCount);  // ������⢮_�����ᠭ⮢

      if (#iFeeSigners.GetSignerFirst)  do
      {
          #StreamObjectName.PutEventById(feDoLoop, fcCommissionMember_#FormName);   // �室�� � 横� �� �����ᠭ⠬
          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �����ᠭ�_���
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������

      }  while (#iFeeSigners.GetSignerNext)
    }
    else
      #StreamObjectName.skipFormat(1);
  }
  else
    #StreamObjectName.skipFormat(2+2+3+4+1);

  #iFeeSigners.ClearRestriction;
}
#end

//----------------------------------------------------------------------------------------------------------------------
// ���ம�।������ �뢮�� �⢥��⢥���� ��� � ��⮪ �� �᭮�� �����������
// ��������� ᮢ������ � ���� ��⮪�� WriteResponsible.
//   iFeeSigners      - ��� ��६����� ��ꥪ� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamObjectName - ��� ��ꥪ� ��⮪�
//   FormName         - ��� ���
#declare WriteResponsible_FeeSigners(iFeeSigners,StreamObjectName,FormName)
{
  #StreamObjectName.write(#iFeeSigners.FeeSignersIsValid);  // ��㯯� : boolean

  if (#iFeeSigners.FeeSignersIsValid)  // �᫨ ��⠭������ ��㯯�
  {
    var wFeeSignersCount : word;
    var SignersByOneLine : string;

    // �⢥��⢥��� ����� ��ப��
    SignersByOneLine := #iFeeSigners.GetSignersList(3);

    // �⢥��⢥���
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    {

      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

      #StreamObjectName.write(#iFeeSigners.GetFeeSigners);      // cFeeSignersNRec - ��뫪� �� ��࠭��� ��㯯�
      #StreamObjectName.write(#iFeeSigners.GetFeeSignersName);  // ���_��㯯�, ��� ��࠭��� ��㯯�

      // * ���᪨ � �ଠ� ��⠭������� ���짮��⥫��:
      #StreamObjectName.write(SignersByOneLine);  // ���᮪_�⢥��⢥����_��� - � �ଠ� ��⠭������� ���짮��⥫��

      // * ���᪨ �⢥��⢥���� ��� � ���⪮ ��⠭������� ������ன:
      #StreamObjectName.write('');   // ���_�⢥��⢥����_���
      #StreamObjectName.write('');   // ���������_�_���_�⢥��⢥����_���
      #StreamObjectName.write('');   // ���_�_���������_�⢥��⢥����_���

      // * �⢥��⢥��� ���:
      #StreamObjectName.write(wFeeSignersCount);  // ������⢮_�⢥��⢥����

      if (#iFeeSigners.GetSignerFirst) do
      {
          #StreamObjectName.PutEventById(feDoLoop, fcResponsible_#FormName);   // �室�� � 横� �� �⢥��⢥���
          #StreamObjectName.write(#iFeeSigners.GetSignerNRec);        // �⢥��⢥���_nRec
          #StreamObjectName.write(#iFeeSigners.GetSignerFIO(1));      // �⢥��⢥���_���
          #StreamObjectName.write(#iFeeSigners.GetSignerTabN);        // �⢥��⢥���_�������_�����
          #StreamObjectName.write(#iFeeSigners.GetSignerPosition(1)); // �⢥��⢥���_���������

      }  while(#iFeeSigners.GetSignerNext)
    }
    else
      #StreamObjectName.skipFormat(2+1+3+1);
  }
  else
    #StreamObjectName.skipFormat(2+1+3+1);

  #iFeeSigners.ClearRestriction;
}
#end


//==============================================================================
//-----------------------------------------------------------------------------
// ���ம�।������ �뢮�� ��㯯� �����ᠭ⮢ � XLT-蠡���
//   iFeeSigners     - ��� ��६����� ��ꥪ� ��㯯� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamXLT       - ��� ��६������ ��ꥪ� ���㧪� � XLT-蠡��� (⨯� XLSRepBuilder)
#declare WriteXltFeeSignersTable(iFeeSigners,StreamXLT)
{

  #StreamXLT.CreateTbl('FeeSigners');  // ������� ⠡����  FeeSigners
  // ���� ⠡���� FeeSigners
  #StreamXLT.CreateTblFld('�����ᠭ�_nRec');
  #StreamXLT.CreateTblFld('�����ᠭ�_���' );
  #StreamXLT.CreateTblFld('�����ᠭ�_�������_�����');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������');
  #StreamXLT.CreateTblFld('�����ᠭ�_����');

  // �᫨ ��⠭������ �롮ઠ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid) //
  {
    var wFeeSignersNum, wFeeSignersCount : word;
    // if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    // {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      // ���㧪� ����� ⠡���� FeeSigners � XLT-蠡���
      if (#iFeeSigners.GetSignerFirst)
      {
        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
        {
          #StreamXLT.ClearTblBuffer;
          #StreamXLT.SetTblNumberFldValue('�����ᠭ�_nRec',            #iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
          #StreamXLT.SetTblStringFldValue('�����ᠭ�_���',             #iFeeSigners.GetSignerFIO(1));      // �����ᠭ�_���
          #StreamXLT.SetTblStringFldValue('�����ᠭ�_�������_�����', #iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
          #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������',       #iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������
          #StreamXLT.SetTblStringFldValue('�����ᠭ�_����',            #iFeeSigners.GetSignerRole);        // �����ᠭ�_����
          #StreamXLT.InsTblRow;

          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    // }
  }
  else   // �᫨ ��� �����ᠭ⮢
  {
      #StreamXLT.ClearTblBuffer;
      #StreamXLT.SetTblNumberFldValue('�����ᠭ�_nRec',            0);  // �����ᠭ�_nRec
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���',             ''); // �����ᠭ�_���
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_�������_�����', ''); // �����ᠭ�_�������_�����
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������',       ''); // �����ᠭ�_���������
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_����',            ''); // �����ᠭ�_����
      #StreamXLT.InsTblRow;
  }

  #StreamXLT.PublishTbl('FeeSigners');
}
#end

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮�� ������ �����ᨨ �� �����ᠭ⮢ � XLT-蠡���
//   iFeeSigners     - ��� ��६����� ��ꥪ� ��㯯� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamXLT       - ��� ��६������ ��ꥪ� ���㧪� � XLT-蠡��� (⨯� XLSRepBuilder)
// �뢮� ��������� ᮢ������ � �����ᨥ�   WriteXltCommissionTable(iCommission,StreamXLT), ������ �� ���� �뢮����� �����
#declare WriteXltFeeSignersTableOS(iFeeSigners,StreamXLT)
{

  #StreamXLT.CreateTbl('Commission');   // ������� ⠡����  FeeSigners
  // ���� ⠡���� Commission
  #StreamXLT.CreateTblFld('����_�����ᨨ_nRec');
  #StreamXLT.CreateTblFld('����_�����ᨨ_���' );
  #StreamXLT.CreateTblFld('����_�����ᨨ_�������_�����');
  #StreamXLT.CreateTblFld('����_�����ᨨ_���������');

  var wFeeSignersCount : word;
  wFeeSignersCount := 0;

  // �᫨ ��⠭������ �롮ઠ ��㯯�
  if (#iFeeSigners.FeeSignersIsValid) // ���㧪� ����� ⠡���� FeeSigners � XLT-蠡���
  {
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
      if (#iFeeSigners.GetSignerFirst)
        do
        {
          wFeeSignersCount++;
          #StreamXLT.ClearTblBuffer;
          #StreamXLT.SetTblNumberFldValue('����_�����ᨨ_nRec',            #iFeeSigners.GetSignerNRec); // ����_�����ᨨ_nRec
          #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���',             #iFeeSigners.GetSignerFIO(1)); // ����_�����ᨨ_���
          #StreamXLT.SetTblStringFldValue('����_�����ᨨ_�������_�����', #iFeeSigners.GetSignerTabN); // ����_�����ᨨ_�������_�����
          #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���������',       #iFeeSigners.GetSignerPosition(1)); // ����_�����ᨨ_���������
          #StreamXLT.InsTblRow;
        }
        while (#iFeeSigners.GetSignerNext);

    #iFeeSigners.ClearRestriction;
  }

  if (wFeeSignersCount = 0) // �᫨ ��� �����ᨨ
  {
    #StreamXLT.ClearTblBuffer;
    #StreamXLT.SetTblNumberFldValue('����_�����ᨨ_nRec',            0); // ����_�����ᨨ_nRec
    #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���',             ''); // ����_�����ᨨ_���
    #StreamXLT.SetTblStringFldValue('����_�����ᨨ_�������_�����', ''); // ����_�����ᨨ_�������_�����
    #StreamXLT.SetTblStringFldValue('����_�����ᨨ_���������',       ''); // ����_�����ᨨ_���������
    #StreamXLT.InsTblRow;
  }

  #StreamXLT.PublishTbl('Commission');
}
#end   // WriteXltFeeSignersTableOS

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮�� ⮫쪮 ������������� �� �����ᠭ⮢  � XLT-蠡���
//   iFeeSigners     - ��� ��६����� ��ꥪ� ��㯯� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamXLT       - ��� ��६������ ��ꥪ� ���㧪� � XLT-蠡��� (⨯� XLSRepBuilder)
// �뢮� ��������� ᮢ������ � �����ᨥ�   WriteXltResponsibleTable(iResponsible,pXL);, ������ �� ���� �뢮����� �����
#declare WriteXltFeeSignersTableOSResponsible(iFeeSigners,StreamXLT)
{
  var wFeeSignersNum : word;
  var wFeeSignersCount : word;  wFeeSignersCount :=0;

  // �⢥��⢥���
  pXL.CreateTbl('Responsible');  // ������� ⠡����  Responsible
  // ���� ⠡���� Responsible
  pXL.CreateTblFld('�⢥��⢥����_���_nRec');
  pXL.CreateTblFld('�⢥��⢥����_���_���');
  pXL.CreateTblFld('�⢥��⢥����_���_�������_�����');
  pXL.CreateTblFld('�⢥��⢥����_���_���������');

  if (#iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

  // ���㧪� ����� ⠡���� Responsible � XLT-蠡���
  if (#iFeeSigners.GetSignerFirst)
  {
    For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
    {
      #StreamXLT.ClearTblBuffer;
      #StreamXLT.SetTblNumberFldValue('�⢥��⢥����_���_nRec',            #iFeeSigners.GetSignerNRec);        // �⢥��⢥����_���_nRec
      #StreamXLT.SetTblStringFldValue('�⢥��⢥����_���_���',             #iFeeSigners.GetSignerFIO(1));      // �⢥��⢥����_���_���
      #StreamXLT.SetTblStringFldValue('�⢥��⢥����_���_�������_�����', #iFeeSigners.GetSignerTabN);        // �⢥��⢥����_���_�������_�����
      #StreamXLT.SetTblStringFldValue('�⢥��⢥����_���_���������',       #iFeeSigners.GetSignerPosition(1)); // �⢥��⢥����_���_���������
      #StreamXLT.InsTblRow;

      if (not #iFeeSigners.GetSignerNext)
        break;
    }
  }

  pXL.PublishTbl('Responsible');

  #iFeeSigners.ClearRestriction;
}
#end   // WriteXltFeeSignersTableOS

//-----------------------------------------------------------------------------
// ���ம�।������ �뢮�� ��㯯� �����ᠭ⮢ � XLT-蠡��� (�� ��ਠ��� ����ᠭ��)
//   iFeeSigners     - ��� ��६����� ��ꥪ� ��㯯� �����ᠭ⮢ (⨯� FeeSigners)
//   StreamXLT       - ��� ��६������ ��ꥪ� ���㧪� � XLT-蠡��� (⨯� XLSRepBuilder)
#declare WriteXltFeeSignersAllTable(iFeeSigners,StreamXLT)
{
  // * �����ᠭ��:
  var wFeeSignersNum,  wFeeSignersCount : word;

  // ������� ⠡����  FeeSigners
  #StreamXLT.CreateTbl('FeeSigners');

  // ���� ⠡���� FeeSigners
  #StreamXLT.CreateTblFld('�����ᠭ�_nRec');
  #StreamXLT.CreateTblFld('�����ᠭ�_���_1' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_2' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_3' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_4' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_5' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_6' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_7' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_8' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_9' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_10' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_11' );
  #StreamXLT.CreateTblFld('�����ᠭ�_���_12' );
  #StreamXLT.CreateTblFld('�����ᠭ�_�������_�����');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������_1');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������_2');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������_3');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������_4');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������_5');
  #StreamXLT.CreateTblFld('�����ᠭ�_���������_6');
  #StreamXLT.CreateTblFld('�����ᠭ�_����');

  // �᫨ ��⠭������ �롮ઠ ��㯯� �����ᠭ⮢
  if (#iFeeSigners.FeeSignersIsValid) //
  {
   // if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
   // {
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
    // ���㧪� ����� ⠡���� FeeSigners � XLT-蠡���
    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
      {
        #StreamXLT.ClearTblBuffer;

        #StreamXLT.SetTblNumberFldValue('�����ᠭ�_nRec',            #iFeeSigners.GetSignerNRec);        // �����ᠭ�_nRec
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_1',           #iFeeSigners.GetSignerFIO(1)));     // �����ᠭ�_���_1
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_2',           #iFeeSigners.GetSignerFIO(2)));     // �����ᠭ�_���_2
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_3',           #iFeeSigners.GetSignerFIO(3)));     // �����ᠭ�_���_3
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_4',           #iFeeSigners.GetSignerFIO(4)));     // �����ᠭ�_���_4
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_5',           #iFeeSigners.GetSignerFIO(5)));     // �����ᠭ�_���_5
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_6',           #iFeeSigners.GetSignerFIO(6)));     // �����ᠭ�_���_6
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_7',           #iFeeSigners.GetSignerFIO(7)));     // �����ᠭ�_���_7
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_8',           #iFeeSigners.GetSignerFIO(8)));     // �����ᠭ�_���_8
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_9',           #iFeeSigners.GetSignerFIO(9)));     // �����ᠭ�_���_9
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_10',          #iFeeSigners.GetSignerFIO(10)));    // �����ᠭ�_���_10
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_11',          #iFeeSigners.GetSignerFIO(11)));    // �����ᠭ�_���_11
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_12',          #iFeeSigners.GetSignerFIO(12)));    // �����ᠭ�_���_12
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_�������_�����', #iFeeSigners.GetSignerTabN);        // �����ᠭ�_�������_�����
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_1',     #iFeeSigners.GetSignerPosition(1)); // �����ᠭ�_���������_1
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_2',     #iFeeSigners.GetSignerPosition(2)); // �����ᠭ�_���������_2
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_3',     #iFeeSigners.GetSignerPosition(3)); // �����ᠭ�_���������_3
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_4',     #iFeeSigners.GetSignerPosition(4)); // �����ᠭ�_���������_4
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_5',     #iFeeSigners.GetSignerPosition(5)); // �����ᠭ�_���������_5
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_6',     #iFeeSigners.GetSignerPosition(6)); // �����ᠭ�_���������_6
        #StreamXLT.SetTblStringFldValue('�����ᠭ�_����',            #iFeeSigners.GetSignerRole);        // �����ᠭ�_����

        #StreamXLT.InsTblRow;
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
   // }
  }
  else
  {
    // ���㧪� ����� ⠡���� FeeSigners � XLT-蠡���
      #StreamXLT.ClearTblBuffer;

      #StreamXLT.SetTblNumberFldValue('�����ᠭ�_nRec',            0);  // �����ᠭ�_nRec
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_1',           ''); // �����ᠭ�_���_1
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_2',           ''); // �����ᠭ�_���_2
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_3',           ''); // �����ᠭ�_���_3
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_4',           ''); // �����ᠭ�_���_4
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_5',           ''); // �����ᠭ�_���_5
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_6',           ''); // �����ᠭ�_���_6
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_7',           ''); // �����ᠭ�_���_7
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_8',           ''); // �����ᠭ�_���_8
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_9',           ''); // �����ᠭ�_���_9
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_10',          ''); // �����ᠭ�_���_10
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_11',          ''); // �����ᠭ�_���_11
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���_12',          ''); // �����ᠭ�_���_12
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_�������_�����', ''); // �����ᠭ�_�������_�����
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_1',     ''); // �����ᠭ�_���������_1
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_2',     ''); // �����ᠭ�_���������_2
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_3',     ''); // �����ᠭ�_���������_3
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_4',     ''); // �����ᠭ�_���������_4
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_5',     ''); // �����ᠭ�_���������_5
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_���������_6',     ''); // �����ᠭ�_���������_6
      #StreamXLT.SetTblStringFldValue('�����ᠭ�_����',            ''); // �����ᠭ�_����

      #StreamXLT.InsTblRow;
  }
  #StreamXLT.PublishTbl('FeeSigners');
}
#end

//-----------------------------------------------------------------------------
//��६���� ��� XLT-蠡����
// ��������!!! ��뢠�� WriteXltFeeSignersVar ४��������� ������ ��। PublishVar
// �⮡� �� ᡨ������ �ଠ��
#declare WriteXltFeeSignersVar(iFeeSigners,StreamXLT)
{
 if (#iFeeSigners.FeeSignersIsValid) 
 {
  // ��㯯� : boolean
  #StreamXLT.SetNumberVar('��㯯�', word(#iFeeSigners.FeeSignersIsValid));

  // cFeeSignersNRec - ��뫪� �� ��࠭��� �롮��
  #StreamXLT.SetNumberVar('cFeeSignersNRec', #iFeeSigners.GetFeeSigners);

  // ���_�롮ન_��㯯� �����ᠭ⮢ // FeeSignersName
  #StreamXLT.SetStringVar('���_��㯯�', #iFeeSigners.GetFeeSignersName);

  // * ���᪨ � �ଠ� ��⠭������� ���짮��⥫��:

  // ���ଠ��_�_�।ᥤ�⥫�, ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫��
  #StreamXLT.SetStringVar('���ଠ��_�_�।ᥤ�⥫�', #iFeeSigners.GetSignersList(0));
  #StreamXLT.SetStringVar('���᮪_�����ᠭ⮢',        #iFeeSigners.GetSignersList(1));

  // * �।ᥤ�⥫�:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #StreamXLT.SetNumberVar('�।ᥤ�⥫�_nRec',           #iFeeSigners.GetSignerNRec);        // �।ᥤ�⥫�_nRec
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���',            #iFeeSigners.GetSignerFIO(1));      // �।ᥤ�⥫�_���
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�������_�����',#iFeeSigners.GetSignerTabN);        // �।ᥤ�⥫�_�������_�����
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������',      #iFeeSigners.GetSignerPosition(1)); // �।ᥤ�⥫�_���������
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_����',           #iFeeSigners.GetSignerRole);        // �।ᥤ�⥫�_����
  }
  #iFeeSigners.ClearRestriction;

  // ������⢮_�����ᠭ⮢
  #StreamXLT.SetNumberVar('������⢮_�����ᠭ⮢', #iFeeSigners.GetFeeSignersCount);
 }
}
#end // WriteXltFeeSignersVar

//-----------------------------------------------------------------------------
// ��६���� ��� XLT-蠡����
// ��������!!! ��뢠�� WriteXltFeeSignersVar ४��������� ������ ��। PublishVar, �⮡� �� ᡨ������ �ଠ��
// ����� ������ WriteXltCommissionVar
#declare WriteXltFeeSignersVarOS(iFeeSigners,StreamXLT)
{
 if (#iFeeSigners.FeeSignersIsValid) 
 {
  #StreamXLT.SetNumberVar('�������', word(#iFeeSigners.FeeSignersIsValid));    // ��㯯� : boolean
  #StreamXLT.SetNumberVar('cSelectionCommissionNRec', #iFeeSigners.GetFeeSigners);    // cSelectionCommissionNRec - ��뫪� �� ��࠭��� �롮��


  #StreamXLT.SetStringVar('���_�����ᨨ', #iFeeSigners.GetFeeSignersName);   // ���_�롮ન_��㯯� �����ᠭ⮢ // FeeSignersName

  // ���ଠ��_�_�।ᥤ�⥫�, ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫��
  #StreamXLT.SetStringVar('���ଠ��_�_�।ᥤ�⥫�', #iFeeSigners.GetSignersList(0));
  #StreamXLT.SetStringVar('���᮪_童���_�����ᨨ',    #iFeeSigners.GetSignersList(1));

  // * �।ᥤ�⥫�:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #StreamXLT.SetNumberVar('�।ᥤ�⥫�_�����ᨨ_nRec',           #iFeeSigners.GetSignerNRec);        // �।ᥤ�⥫�_nRec
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�����ᨨ_���',            #iFeeSigners.GetSignerFIO(1));      // �।ᥤ�⥫�_���
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�����ᨨ_�������_�����',#iFeeSigners.GetSignerTabN);        // �।ᥤ�⥫�_�������_�����
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�����ᨨ_���������',      #iFeeSigners.GetSignerPosition(1)); // �।ᥤ�⥫�_���������
  }

  #iFeeSigners.ClearRestriction;

  #StreamXLT.SetNumberVar('������⢮_童���_�����ᨨ', #iFeeSigners.GetFeeSignersCount);  // ������⢮_�����ᠭ⮢
 }
}
#end // WriteXltFeeSignersVarOS

//-----------------------------------------------------------------------------
#declare WriteXltFeeSignersResponsibleVarOs(iFeeSigners,StreamXLT)
{
 if (#iFeeSigners.FeeSignersIsValid) 
 {
  #StreamXLT.SetNumberVar('�⢥��⢥���_���', word(#iFeeSigners.FeeSignersIsValid));  // �⢥��⢥���_��� : boolean
  #StreamXLT.SetNumberVar('cSelectionResponsibleNRec', #iFeeSigners.GetFeeSigners);     // cSelectionResponsibleNRec - ��뫪� �� ��࠭��� �롮��
  #StreamXLT.SetStringVar('���_�롮ન_�⢥��⢥����_���', #iFeeSigners.GetFeeSignersName);  // ���_�롮ન_�⢥��⢥����_��� // ResponsibleName
  #StreamXLT.SetStringVar('���᮪_�⢥��⢥����_���', #iFeeSigners.GetSignersList(1));  // ���᮪_�⢥��⢥����_��� - � �ଠ� ��⠭������� ���짮��⥫��

  // * ���᪨ �⢥��⢥���� ��� � ���⪮ ��⠭������� ������ன:
  #StreamXLT.SetStringVar('���_�⢥��⢥����_���', '');               // ���_�⢥��⢥����_���
  #StreamXLT.SetStringVar('���������_�_���_�⢥��⢥����_���', '');   // ���������_�_���_�⢥��⢥����_���
  #StreamXLT.SetStringVar('���_�_���������_�⢥��⢥����_���', '');   // ���_�_���������_�⢥��⢥����_���
  #StreamXLT.SetNumberVar('������⢮_�⢥��⢥����_���', #iFeeSigners.GetFeeSignersCount);  // ������⢮_�⢥��⢥����_���
 }
}
#end // WriteXltFeeSignersResponsibleVarOs

//-----------------------------------------------------------------------------
//��६���� ��� XLT-蠡����
// ��������!!! ��뢠�� WriteXltFeeSignersAllVar ४��������� ������ ��। PublishVar
// �⮡� �� ᡨ������ �ଠ��
#declare WriteXltFeeSignersAllVar(iFeeSigners,StreamXLT)
{
  // ��㯯� : boolean
  #StreamXLT.SetNumberVar('��㯯�', word(#iFeeSigners.FeeSignersIsValid));

  // cFeeSignersNRec - ��뫪� �� ��࠭��� �롮��
  #StreamXLT.SetNumberVar('cFeeSignersNRec', #iFeeSigners.GetFeeSigners);

  // ���_�롮ન_��㯯� �����ᠭ⮢ // FeeSignersName
  #StreamXLT.SetStringVar('���_��㯯�', #iFeeSigners.GetFeeSignersName);

  // * ���᪨ � �ଠ� ��⠭������� ���짮��⥫��:

  // ���ଠ��_�_�।ᥤ�⥫�, ���᮪_�����ᠭ⮢ - � �ଠ� ��⠭������� ���짮��⥫��
  #StreamXLT.SetStringVar('���ଠ��_�_�।ᥤ�⥫�', #iFeeSigners.GetSignersList(0));
  #StreamXLT.SetStringVar('���᮪_�����ᠭ⮢',        #iFeeSigners.GetSignersList(1));

  // * �।ᥤ�⥫�:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #StreamXLT.SetNumberVar('�।ᥤ�⥫�_nRec',           #iFeeSigners.GetSignerNRec);        // �।ᥤ�⥫�_nRec
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_1',          #iFeeSigners.GetSignerFIO(1));      // �।ᥤ�⥫�_���_1
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_2',          #iFeeSigners.GetSignerFIO(2));      // �।ᥤ�⥫�_���_2
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_3',          #iFeeSigners.GetSignerFIO(3));      // �।ᥤ�⥫�_���_3
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_4',          #iFeeSigners.GetSignerFIO(4));      // �।ᥤ�⥫�_���_4
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_5',          #iFeeSigners.GetSignerFIO(5));      // �।ᥤ�⥫�_���_5
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_6',          #iFeeSigners.GetSignerFIO(6));      // �।ᥤ�⥫�_���_6
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_7',          #iFeeSigners.GetSignerFIO(7));      // �।ᥤ�⥫�_���_7
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_8',          #iFeeSigners.GetSignerFIO(8));      // �।ᥤ�⥫�_���_8
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_9',          #iFeeSigners.GetSignerFIO(9));      // �।ᥤ�⥫�_���_9
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_10',         #iFeeSigners.GetSignerFIO(10));     // �।ᥤ�⥫�_���_10
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_11',         #iFeeSigners.GetSignerFIO(11));     // �।ᥤ�⥫�_���_11
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���_12',         #iFeeSigners.GetSignerFIO(12));     // �।ᥤ�⥫�_���_12
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_�������_�����',#iFeeSigners.GetSignerTabN);        // �।ᥤ�⥫�_�������_�����
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������_1',    #iFeeSigners.GetSignerPosition(1)); // �।ᥤ�⥫�_���������_1
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������_2',    #iFeeSigners.GetSignerPosition(2)); // �।ᥤ�⥫�_���������_2
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������_3',    #iFeeSigners.GetSignerPosition(3)); // �।ᥤ�⥫�_���������_3
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������_4',    #iFeeSigners.GetSignerPosition(4)); // �।ᥤ�⥫�_���������_4
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������_5',    #iFeeSigners.GetSignerPosition(5)); // �।ᥤ�⥫�_���������_5
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_���������_6',    #iFeeSigners.GetSignerPosition(6)); // �।ᥤ�⥫�_���������_6
    #StreamXLT.SetStringVar('�।ᥤ�⥫�_����',           #iFeeSigners.GetSignerRole);        // �।ᥤ�⥫�_����
  }

  #iFeeSigners.ClearRestriction;

  // ������⢮_�����ᠭ⮢
  #StreamXLT.SetNumberVar('������⢮_�����ᠭ⮢', #iFeeSigners.GetFeeSignersCount);
}
#end // WriteXltFeeSignersVar

//==============================================================================
//-----------------------------------------------------------------------------
// ��६���� ��� FR-����
#declare WriteFRFeeSignersChairMan(iFeeSigners,TableFR)
{
  // * �।ᥤ�⥫�:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #TableFR.BossFIO       := #iFeeSigners.GetSignerFIO(1);      // �।ᥤ�⥫�_���
    #TableFR.BossPosition  := #iFeeSigners.GetSignerPosition(1); // �।ᥤ�⥫�_���������
    #TableFR.BossRole      := #iFeeSigners.GetSignerRole;        // �।ᥤ�⥫�_����
  }

  #iFeeSigners.ClearRestriction;
}
#end // WriteFRFeeSignersChairMan

//-----------------------------------------------------------------------------
// ��६���� ��� FR-���� (�� ��ਠ��� ����ᠭ��)
#declare WriteFRFeeSignersAllChairMan(iFeeSigners,TableFR)
{
  // * �।ᥤ�⥫�:
  if (#iFeeSigners.RestrictFeeByRole(2, 'PredCom'))
  {
    #TableFR.BossFIO_1       := #iFeeSigners.GetSignerFIO(1);      // �।ᥤ�⥫�_���_1
    #TableFR.BossFIO_2       := #iFeeSigners.GetSignerFIO(2);      // �।ᥤ�⥫�_���_2
    #TableFR.BossFIO_3       := #iFeeSigners.GetSignerFIO(3);      // �।ᥤ�⥫�_���_3
    #TableFR.BossFIO_4       := #iFeeSigners.GetSignerFIO(4);      // �।ᥤ�⥫�_���_4
    #TableFR.BossFIO_5       := #iFeeSigners.GetSignerFIO(5);      // �।ᥤ�⥫�_���_5
    #TableFR.BossFIO_6       := #iFeeSigners.GetSignerFIO(6);      // �।ᥤ�⥫�_���_6
    #TableFR.BossFIO_7       := #iFeeSigners.GetSignerFIO(7);      // �।ᥤ�⥫�_���_7
    #TableFR.BossFIO_8       := #iFeeSigners.GetSignerFIO(8);      // �।ᥤ�⥫�_���_8
    #TableFR.BossFIO_9       := #iFeeSigners.GetSignerFIO(9);      // �।ᥤ�⥫�_���_9
    #TableFR.BossFIO_10      := #iFeeSigners.GetSignerFIO(10);     // �।ᥤ�⥫�_���_10
    #TableFR.BossFIO_11      := #iFeeSigners.GetSignerFIO(11);     // �।ᥤ�⥫�_���_11
    #TableFR.BossFIO_12      := #iFeeSigners.GetSignerFIO(12);     // �।ᥤ�⥫�_���_12
    #TableFR.BossPosition_1  := #iFeeSigners.GetSignerPosition(1); // �।ᥤ�⥫�_���������_1
    #TableFR.BossPosition_2  := #iFeeSigners.GetSignerPosition(2); // �।ᥤ�⥫�_���������_2
    #TableFR.BossPosition_3  := #iFeeSigners.GetSignerPosition(3); // �।ᥤ�⥫�_���������_3
    #TableFR.BossPosition_4  := #iFeeSigners.GetSignerPosition(4); // �।ᥤ�⥫�_���������_4
    #TableFR.BossPosition_5  := #iFeeSigners.GetSignerPosition(5); // �।ᥤ�⥫�_���������_5
    #TableFR.BossPosition_6  := #iFeeSigners.GetSignerPosition(6); // �।ᥤ�⥫�_���������_6
    #TableFR.BossRole        := #iFeeSigners.GetSignerRole;        // �।ᥤ�⥫�_����
  }

  #iFeeSigners.ClearRestriction;
}
#end // WriteFRFeeSignersAllChairMan

//-----------------------------------------------------------------------------
//��� � �������� �����ᠭ⮢ ��� FR-����
#declare WriteFRFeeSigners(iFeeSigners,TableFR)
{
  Delete all #TableFR;

  if (#iFeeSigners.FeeSignersIsValid)
  {
    // * �����ᠭ��
    var wFeeSignersNum : word;
    var wFeeSignersCount : word;
    wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

    if (#iFeeSigners.GetSignerFirst)
    {
      For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
      {
        // �室�� � 横� �� �����ᠭ⠬
        ClearBuffer(##TableFR);
        #TableFR.MemberFIO      := #iFeeSigners.GetSignerFIO(1);      // �����ᠭ�_���
        #TableFR.MemberPosition := #iFeeSigners.GetSignerPosition(1); // �����ᠭ�_���������
        #TableFR.MemberRole     := #iFeeSigners.GetSignerRole;        // �����ᠭ�_����
        Insert Current #TableFR;
        if (not #iFeeSigners.GetSignerNext)
          break;
      }
    }
  }
}
#end // WriteFRFeeSigners

//-----------------------------------------------------------------------------
//��� � �������� �����ᠭ⮢ ��� FR-���� (�� ��ਠ��� ����ᠭ��)
#declare WriteFRFeeSignersAll(iFeeSigners,TableFR)
{
  // * �����ᠭ��
  var wFeeSignersNum : word;
  var wFeeSignersCount : word;
  wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;

  if (#iFeeSigners.GetSignerFirst)
  {
    For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum := wFeeSignersNum + 1)
    {
      // �室�� � 横� �� �����ᠭ⠬
      ClearBuffer(##TableFR);
      #TableFR.MemberFIO_1      := #iFeeSigners.GetSignerFIO(1);      // �����ᠭ�_���_1
      #TableFR.MemberFIO_2      := #iFeeSigners.GetSignerFIO(2);      // �����ᠭ�_���_2
      #TableFR.MemberFIO_3      := #iFeeSigners.GetSignerFIO(3);      // �����ᠭ�_���_3
      #TableFR.MemberFIO_4      := #iFeeSigners.GetSignerFIO(4);      // �����ᠭ�_���_4
      #TableFR.MemberFIO_5      := #iFeeSigners.GetSignerFIO(5);      // �����ᠭ�_���_5
      #TableFR.MemberFIO_6      := #iFeeSigners.GetSignerFIO(6);      // �����ᠭ�_���_6
      #TableFR.MemberFIO_7      := #iFeeSigners.GetSignerFIO(7);      // �����ᠭ�_���_7
      #TableFR.MemberFIO_8      := #iFeeSigners.GetSignerFIO(8);      // �����ᠭ�_���_8
      #TableFR.MemberFIO_9      := #iFeeSigners.GetSignerFIO(9);      // �����ᠭ�_���_9
      #TableFR.MemberFIO_10     := #iFeeSigners.GetSignerFIO(10);     // �����ᠭ�_���_10
      #TableFR.MemberFIO_11     := #iFeeSigners.GetSignerFIO(11);     // �����ᠭ�_���_11
      #TableFR.MemberFIO_12     := #iFeeSigners.GetSignerFIO(12);     // �����ᠭ�_���_12
      #TableFR.MemberPosition_1 := #iFeeSigners.GetSignerPosition(1); // �����ᠭ�_���������_1
      #TableFR.MemberPosition_2 := #iFeeSigners.GetSignerPosition(2); // �����ᠭ�_���������_2
      #TableFR.MemberPosition_3 := #iFeeSigners.GetSignerPosition(3); // �����ᠭ�_���������_3
      #TableFR.MemberPosition_4 := #iFeeSigners.GetSignerPosition(4); // �����ᠭ�_���������_4
      #TableFR.MemberPosition_5 := #iFeeSigners.GetSignerPosition(5); // �����ᠭ�_���������_5
      #TableFR.MemberPosition_6 := #iFeeSigners.GetSignerPosition(6); // �����ᠭ�_���������_6
      #TableFR.MemberRole       := #iFeeSigners.GetSignerRole;        // �����ᠭ�_����
      Insert Current #TableFR;
      if (not #iFeeSigners.GetSignerNext)
        break;
    }
  }
}
#end // WriteFRFeeSigners

//-----------------------------------------------------------------------------
//��� � �������� �����ᠭ⮢ ��� FR-����
#declare WriteFRFeeSignersOS(iFeeSigners,TableFR)
{
  Delete all #TableFR;

  if (#iFeeSigners.FeeSignersIsValid) // ���㧪� ����� ⠡���� FeeSigners
  {
    var wFeeSignersNum, wFeeSignersCount : word;
    if (#iFeeSigners.RestrictFeeByRole(1, cgRole_ChlenCom))
    {
      wFeeSignersCount := #iFeeSigners.GetFeeSignersCount;
      if (#iFeeSigners.GetSignerFirst)
      {
        For (wFeeSignersNum := 1; wFeeSignersNum <= wFeeSignersCount; wFeeSignersNum++)
        {
          // �室�� � 横� �� �����ᠭ⠬
          ClearBuffer(##TableFR);
          #TableFR.MemberFIO      := #iFeeSigners.GetSignerFIO(1);      // �����ᠭ�_���
          #TableFR.MemberPosition := #iFeeSigners.GetSignerPosition(1); // �����ᠭ�_���������
          #TableFR.MemberRole     := #iFeeSigners.GetSignerRole;        // �����ᠭ�_����
          Insert Current #TableFR;

          if (not #iFeeSigners.GetSignerNext)
            break;
        }
      }
    }

    #iFeeSigners.ClearRestriction;
  }
}
#end // WriteFRFeeSignersOS


#end // __FeeSignersFun__
//-----------------------------------------------------------------------------
