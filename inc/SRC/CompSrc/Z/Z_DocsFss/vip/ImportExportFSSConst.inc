#ifndef _ImportExportFSSConst_inc_INCLUDED_
#define _ImportExportFSSConst_inc_INCLUDED_

const
//�㤠 �������㥬 - ��ᯮ���㥬
  cn_ImportExportPortal = 0;  //���⠫ ���
  cn_ImportExportXml    = 1;  //� Xml
  cn_ImportExportPortal_Dop = 2; ///���⠫ ��� - �������⥫쭮 - �����஢��� ���䨪��

//�࠭����
  cn_Location_CurrentUser     = 0;  //⥪�騩 ���짮��⥫�
  cn_Location_LocalMachine    = 1;  //������� ��������

//����䨪���
  cn_Cert_INSURER     = 0;  //���客�⥫�
  cn_Cert_CHIEF       = 1;  //��४��
  cn_Cert_ACCOUNTANT  = 2;  //��壠���
  cn_Cert_FSS         = 3;  //��壠���

//����� dll �ᯮ��㥬
  cn_ImportHTPPConector = 0; //
  cn_ImportGalFSS       = 1; //

//����ன�� ᮥ�������
  cn_Proxy_No  = 0; // ��� �ப�
  cn_Proxy_OS  = 1; // ��⠭����� ०�� ������祭�� �१ �ப� �ࢥ�, ������� � ����樮���� ��⥬� �� 㬮�砭��
  cn_Proxy_PAR = 2; // �⠭����� ०�� ������祭�� �१ �ப� �ࢥ�, � � 㪠����묨 ��ࠬ��ࠬ� �ࢥ� ���� � ���짮��⥫�

//����ﭨ� ᮮ�饭�� Web-�ࢨ�
  cn_Error_Web          = '0';
  cn_Info_Web           = '1';
  cn_Error_Xml          = '2';

//�뢮� ��⮪��� ᮥ�������
  cn_OutPutProt    = 1; // �뢮���� ��⮪�� ᮥ�������
  cn_OutPutProt_No = 0; // �� �뢮���� ��⮪�� ᮥ�������

//����� .NET FrameWork (�� ���� 4.5)
  cn_nVersNetFrameWork = 45;
  cn_sVersNetFrameWork = '4.5';

  cn_Thumbprint_prom1 = '2E595F368FEB24F2C232EB8C2B3691A4219B4883';
  cn_Thumbprint_prom2 = '2E595F368FEB24F2C232EB8C2B3691A4219B4883';
  cn_Thumbprint_test  = '27BCE267A113D536277CE87E5A474BEB2C0488A9';

  cn_TypeXML_FSS    = 0;
  cn_TypeXML_Kontur = 1;

//����⢨� �� ��ᯮ���
  cn_Act_PortalFSS   = 0; //���㧪� �� ���⠫ ���
  cn_Act_XML_FSS     = 1; //���㧪� � XML, ��� ���쭥�襩 ��।�� �� ���⠫ ���
  cn_Act_XML_Kontur  = 2; //���㧪� � XML, ��� ���쭥�襩 ��।�� � ������

  cn_Status_LN_0   = 0; //���⮪ ����㤮ᯮᮡ���� �� ���� �����஭��
  cn_Status_LN_010 = 3; //��� �����
  cn_Status_LN_020 = 2; //��� �த���
  cn_Status_LN_030 = 1; //��� ������
  cn_Status_LN_040 = 4; //��� ���ࠢ����� �� ���
  cn_Status_LN_050 = 5; //��� �������� ����묨 ���
  cn_Status_LN_060 = 6; //��� �������� ���客�⥫��
  cn_Status_LN_070 = 7; //��� �������� ���客�⥫�� (॥��� ����)
  cn_Status_LN_080 = 8; //��� ��ᮡ�� �믫�祭�
  cn_Status_LN_090 = 9; //��� ����⢨� �४�饭�

//������ ��� ॥��஢ ���
  cn_Status_Not_Sent   = 0; //�� ��ࠢ���
  cn_Status_Sent       = 1; //��ࠢ���

//⨯ 䨫���樨
  cn_UndefFilterValue  = 0;
  cn_FilterDay         = 1;
  cn_FilterMonth       = 2;
  cn_FilterYear        = 3;

//�㭪樨 ��� ࠡ��� � �ࢨᮬ ���
  cn_FUNC_SendFile         = 0;
  cn_FUNC_UploadsGet       = 1;
  cn_FUNC_UploadGetByExtID = 2;

//����⠭� ��� �ࢨ� ���
  cn_GatewayService_FSS = 100;

//���ﭨ� ��ࠡ�⪨
  cn_StateFSS_Mess_Received        = 0;  //����祭
  cn_StateFSS_Err_Mess_Received    = 10; //�訡�� ����祭��
  cn_StateFSS_Sign_Check           = 1;  //��� �஢�७�
  cn_StateFSS_Err_Sign_Check       = 11; //�訡�� �஢�ન ���
  cn_StateFSS_SubmittedforCons     = 2;  //��।��� �� ��ᬮ�७��
  cn_StateFSS_Err_SubmittedforCons = 21; //��� �� �ன���
end;

#endif
