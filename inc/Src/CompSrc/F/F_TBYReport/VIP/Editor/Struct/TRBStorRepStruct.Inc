//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮��� ��"
// �࠭���� ������ : "������� ����"
//------------------------------------------------------------------------------

#ifndef __TRBStorRepStruct_Inc__
#define __TRBStorRepStruct_Inc__

const
  // �����䨪���� �����
  lc_DataFormat01_EndFld01ID : string = '01';  // ����� �����                   
  lc_DataFormat01_EndFld02ID : string = '02';  // ��뫪� �� ������騩          
  lc_DataFormat01_EndFld03ID : string = '03';  // ���浪��� ����� �� �஢��     
  lc_DataFormat01_EndFld04ID : string = '04';  // ������������                   
  lc_DataFormat01_EndFld05ID : string = '05';  // ���ᠭ�� ������⥫�            
  lc_DataFormat01_EndFld06ID : string = '06';  // ���� �� ���設�                
  lc_DataFormat01_EndFld07ID : string = '07';  // ��易⥫�� ������� � XML     
  lc_DataFormat01_EndFld08ID : string = '08';  // ������⢥��� ������� � XML    
  lc_DataFormat01_EndFld09ID : string = '09';  // ��� 㧫� "⥪��" � XML         
  lc_DataFormat01_EndFld10ID : string = '10';  // ������ ������                 
  lc_DataFormat01_EndFld11ID : string = '11';  // �������� ���������             
  lc_DataFormat01_EndFld12ID : string = '12';  // ��易⥫쭮��� ���������� ���� 
  lc_DataFormat01_EndFld13ID : string = '13';  // ���� ����                   
  lc_DataFormat01_EndFld14ID : string = '14';  // ���㫠 ����                
  lc_DataFormat01_EndFld15ID : string = '15';  // ���祭�� ������⥫�            
  lc_DataFormat01_EndFld16ID : string = '16';  // ��� ���祭��                   
  lc_DataFormat01_EndFld17ID : string = '17';  // ������⢮ ������ ��᫥ ����⮩
  lc_DataFormat01_EndFld18ID : string = '18';  // ��ଠ� ���祭��                
  
  lc_DataFormat01_EndFldID : string = chr(1);  // �����䨪��� ���� ����
  lc_DataFormat01_EndRecID : string = chr(2);  // �����䨪��� ���� �����

  lc_DataFormat01_FMaxRecCount : LongInt = 100000;  // ���ᨬ��쭮� ������⢮ ����ᥩ ��� �࠭���� � ����� 䠩��
end; // const

#endif//__TRBStorRepStruct_Inc__
