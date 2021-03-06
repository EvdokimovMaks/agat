//------------------------------------------------------------------------------------------------------------
//                                                                                    (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ���� ����
//------------------------------------------------------------------------------------------------------------
#ifndef _FieldInvoice_inc_
#define _FieldInvoice_inc_

const
  // ������ 1. ��騥 ᢥ�����
  fi_sender           = 1; // ��ꥪ� 宧��⢮�����, ��⠢���騩 ����
  fi_number           = 2; // 1. ����� ����
  fi_dateIssuance     = 3; // 2. ��� ���⠢����� ����
  fi_dateTransaction  = 4; // 3. ��� ᮢ��襭�� ����樨 ����
  fi_documentType     = 5; // 4. ��� ����
  fi_invoice          = 6; // 5. � ����
  fi_dateCancellation = 7; // 5.1. ��� ���㫨஢���� ����
  fi_sendToRecipient  = 8; // �⮡ࠧ��� �����⥫�

  fi_requisitesOrg  = 9;   // ��������� ���⠢騪�\�����⥫�

  // ������ 2. ��������� ���⠢騪� - provider
  fi_provider_invoice              = 10; // �� ��������� ᢥ����� � ���⠢騪�
  fi_provider_providerStatus       = 11; // 6. ����� ���⠢騪�
  fi_provider_dependentPerson      = 12; // 6.1. ����������ᨬ�� ���
  fi_provider_residentsOfOffshore  = 13; // 6.2. ������ � १����⮬ ����୮� ����
  fi_provider_specialDealGoods     = 14; // 6.3. ���譥�࣮��� ᤥ��� � ���⥣��᪨�� ⮢�ࠬ�
  fi_provider_bigCompany           = 15; // 6.4. �࣠������, ����祭��� � ���祭� ��㯭�� ���⥫�騪��
  fi_provider_countryCode          = 16; // 7. ��� ��࠭� ���⠢騪�
  fi_provider_unp                  = 17; // 8. ���
  fi_provider_branchCode           = 18; // 8.1. ��� 䨫���� (���ᮡ������� ���ࠧ�������)
  fi_provider_name                 = 19; // 9. ���⠢騪
  fi_provider_address              = 20; // 10. �ਤ��᪨� ����
  fi_provider_principal_number     = 21; // 11. ����� ��� ����⥭�
  fi_provider_principal_date       = 22; // 11. ��� �믨᪨
  fi_provider_vendor_number        = 23; // 12. ����� ��� �த���
  fi_provider_vendor_date          = 24; // 12. ��� �믨᪨
  fi_provider_declaration          = 25; // 13. �������樮��� ����� ���᪠ ⮢�஢
  fi_provider_dateRelease          = 26; // 13.1. ��� ���᪠ ⮢�஢
  fi_provider_dateActualExport     = 27; // 13.2. ��� ࠧ�襭�� �� ��⨥ ⮢�஢
  fi_provider_taxes_number         = 28; // 14. ��������� ������ � ����� ⮢�஢ � 㯫�� ��ᢥ���� ������� - �����
  fi_provider_taxes_date           = 29; // 14. ��������� ������ � ����� ⮢�஢ � 㯫�� ��ᢥ���� ������� - ���

  // ������ 3. ��������� �����⥫� - recipient
  fi_recipient_invoice             = 30; // �� ��������� ᢥ����� � �����⥫�
  fi_recipient_recipientStatus     = 31; // 15. ����� �����⥫�
  fi_recipient_dependentPerson     = 32; // 15.1. ����������ᨬ�� ���
  fi_recipient_residentsOfOffshore = 33; // 15.2. ������ � १����⮬ ����୮� ����
  fi_recipient_specialDealGoods    = 34; // 15.3. ���譥�࣮��� ᤥ��� � ���⥣��᪨�� ⮢�ࠬ�
  fi_recipient_bigCompany          = 35; // 15.4. �࣠������, ����祭��� � ���祭� ��㯭�� ���⥫�騪��
  fi_recipient_countryCode         = 36; // 16. ��� ��࠭� �����⥫�
  fi_recipient_unp                 = 37; // 17. ���
  fi_recipient_branchCode          = 38; // 17.1. ��� 䨫���� (���ᮡ������� ���ࠧ�������)
  fi_recipient_name                = 39; // 18. �����⥫�
  fi_recipient_address             = 40; // 19. �ਤ��᪨� ����
  fi_recipient_declaration         = 41; // 20. �������樮��� ����� ���᪠ ⮢�஢
  fi_recipient_taxes_number        = 42; // 21. ��������� ������ � ����� ⮢�஢ � 㯫�� ��ᢥ���� ������� - �����
  fi_recipient_taxes_date          = 43; // 21. ��������� ������ � ����� ⮢�஢ � 㯫�� ��ᢥ���� ������� - ���
  fi_recipient_dateImport          = 44; // 21.1. ��� ����� ⮢�஢

  // ������ 4. ��������� ��㧮��ࠢ�⥫� � ��㧮�����⥫� - senderReceiver
  fi_Part4Invoice          = 50; // �� ��������� 4 ࠧ��� ����
  // ��������� ��㧮��ࠢ�⥫� - consignor
  fi_consignor_countryCode = 51; // 22. ��� ��࠭� ��㧮��ࠢ�⥫�
  fi_consignor_unp         = 52; // 23. ���
  fi_consignor_name        = 53; // 24. ������������
  fi_consignor_address     = 54; // 25. ���� ��ࠢ��
  // ��������� ��㧮�����⥫� - consignee
  fi_consignee_countryCode = 55; // 26. ��� ��࠭� ��㧮�����⥫�
  fi_consignee_unp         = 56; // 27. ���
  fi_consignee_name        = 57; // 28. ������������
  fi_consignee_address     = 58; // 29. ���� ���⠢��

  // ������ 5. �᫮��� ���⠢�� - deliveryCondition
  fi_deliveryCondition_contract_number                = 61; // 30. ������� (����ࠪ�) �� ���⠢�� ⮢��
  fi_deliveryCondition_contract_date                  = 62; // 30. ��� ������� (����ࠪ�)
  fi_deliveryCondition_contract_document_typeDocument = 63; // ��� ���㬥��
  fi_deliveryCondition_contract_document_nameDocument = 64; // ��������
  fi_deliveryCondition_contract_document_date         = 65; // ���
  fi_deliveryCondition_contract_document_blankCode    = 66; // ��� ⨯� ������
  fi_deliveryCondition_contract_document_seria        = 67; // ����
  fi_deliveryCondition_contract_document_number       = 68; // �����
  fi_deliveryCondition_description                    = 69; // 31.�������⥫�� ᢥ�����

  fi_deliveryCondition_contract_document_typeDocument1 = 163; // ��� ���㬥��
  fi_deliveryCondition_contract_document_nameDocument1 = 164; // ��������
  fi_deliveryCondition_contract_document_date1         = 165; // ���
  fi_deliveryCondition_contract_document_blankCode1    = 166; // ��� ⨯� ������
  fi_deliveryCondition_contract_document_seria1        = 167; // ����
  fi_deliveryCondition_contract_document_number1       = 168; // �����

  fi_dopParamInvoice          = 70; // �������⥫�� ��ࠬ���� ����

  // ������ 6. ����� �� ⮢�ࠬ (ࠡ�⠬, ��㣠�), �����⢥��� �ࠢ�� - roster
  fi_roster_item_number       = 71; // 1. � �/�
  fi_roster_item_name         = 72; // 2. ������������ ⮢�� (ࠡ��, ���), �����⢥���� �ࠢ
  fi_roster_item_code         = 73; // 3.1. ��� ⮢�� (�� ��� ����)
  fi_roster_item_code_oced    = 74; // 3.2. ��� ����� ���⥫쭮�� (����)
  fi_roster_item_units        = 75; // 4. ������ ����७��
  fi_roster_item_count        = 76; // 5. ������⢮ (��ꥬ)
  fi_roster_item_price        = 77; // 6. ���� (���) �� ������� ⮢�� (ࠡ���, ��㣨) �����⢥���� �ࠢ ��� ��� ���, ��� ���.��
  fi_roster_item_cost         = 78; // 7. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ ��� ���
  fi_roster_item_summaExcise  = 79; // 8. � ⮬ �᫥ �㬬� ��樧�, ��� ���.��
  fi_roster_item_vat_rate     = 80; // 9.1. �⠢�� ���
  fi_roster_item_vat_rateType = 81; // 9.2. �⠢�� ���
  fi_roster_item_vat_summaVat = 82; // 10. �㬬� ���
  fi_roster_item_costVat      = 83; // 11. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ � ��⮬ ���, ���.���. ��.
  fi_roster_item_descriptions = 84; // 12. �������⥫�� �����
  fi_roster_item_descr_value  = 89; // 12. �������⥫�� �����
  fi_roster_item_units_name   = 90; // ������������ ������� ����७��
  fi_roster_item_is_transport_uls = 91; // �ਧ��� �࠭ᯮ�⭮� ��㣨

  // �⮣��� �㬬�. �� ����, ����塞� ����.
  //fi_roster_totalCostVat      = 85; // �ᥣ� �� ����. �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ ��� ���
  //fi_roster_totalExcise       = 86; // �ᥣ� �� ����. �㬬� ��樧�
  //fi_roster_totalVat          = 87; // �ᥣ� �� ����. �㬬� ���
  //fi_roster_totalCost         = 88; // �⮨����� ⮢�஢ (ࠡ��, ���), �����⢥���� �ࠢ � ��⮬ ���

  // �������⥫�� ��ࠬ����
  fi_roster_NDSFrom           = 100; // ���� ��� ��
  fi_roster_NDSUsl            = 101; // ��������� ��㣠
  fi_status                   = 102; // �����

  fi_roster_NotFillGrEvrazes  = 103; // �� ��������� ���� 4, 5, 6, 11

  // �������⥫�� ����, ����� �� �ᯮ������� ��� �⮡ࠦ���� � ����䥩�� ����, �� ����室��� ��� �஢�ப
  fi_provider_wType   = 200; // ������ 2. ��������� ���⠢騪� - provider,  �ਧ��� 䨧.���
  fi_recipient_wType  = 201; // ������ 3. ��������� �����⥫� - recipient, �ਧ��� 䨧.���

  fi_roster_item_cost_BySp = 210; // �ਧ���, ����� �㬬� ��� ��� �� ᯥ�䨪�樨 (True) ��� ��� ࠧ����� �㬬� � ��� � �㬬� ���
end;

#endif // _FieldInvoice_inc_
