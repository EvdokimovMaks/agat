//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "��ࠢ����� ��⮬"
// ����䥩� ।���஢���� : "����ன�� ��ࠬ��஢ ࠡ��� � ��ॣ�⠬�"
//------------------------------------------------------------------------------

// ����⠭�� ��ࠬ��஢ ����᪠ ����䥩�
const
  cgiEditFpAgrSet_ParamRule = 0;
  cgiEditFpAgrSet_TFormRule = 1;
  cgiEditFpAgrSet_VCubeRule = 2;
end; // const

// ����⠭�� ०���� ��।������ ��ॣ��
const
  lc_AgrRaspMode_AgrToOther      = 0;  // '� - �� "��稥", � - ࠢ����୮'
  lc_AgrRaspMode_AgrByNewOld     = 1;  // '�, � - �ய��樮���쭮 �०����'
  lc_AgrRaspMode_AgrByBaseCoeff  = 2;  // '� - ᮣ��᭮ ��ᠬ ��㣮�� ��ॣ��'
  lc_AgrRaspMode_AgrByUserCoeff  = 3;  // '� - ᮣ��᭮ ������� ��ᠬ'
  lc_AgrRaspMode_OtherByNewOld   = 4;  // '� - "��稥" ᮣ��᭮ ⥪�饬� �஢�� �����⨪'
  lc_AgrRaspMode_OtherUserCoeff  = 5;  // '� - "��稥" ᮣ��᭮ ������� ��ᠬ'
                                                                                          

  lc_AgrRaspName_AgrToOther      = '� - �� "��稥", � - ࠢ����୮'               ;
  lc_AgrRaspName_AgrByNewOld     = '�, � - �ய��樮���쭮 �०����'               ;
  lc_AgrRaspName_AgrByBaseCoeff  = '� - ᮣ��᭮ ��ᠬ ��㣮�� ��ॣ��'           ;
  lc_AgrRaspName_AgrByUserCoeff  = '� - ᮣ��᭮ ������� ��ᠬ'                   ;
  lc_AgrRaspName_OtherByNewOld   = '� - "��稥" ᮣ��᭮ ⥪�饬� �஢�� �����⨪';
  lc_AgrRaspName_OtherUserCoeff  = '� - "��稥" ᮣ��᭮ ������� ��ᠬ'          ;
end; // const

// ����⠭�� ०���� ��।������ ��ॣ�� �� ����娨
const
  lc_HierRaspMode_AgrToFirst      = 0;  // '�� ���� ���稭����'    
  lc_HierRaspMode_AgrByNewOld     = 1;  // '�ய��樮���쭮 �०����' 
  lc_HierRaspMode_AgrByEqual      = 2;  // '�������୮ �� ���稭����'
                                                                                          
  lc_HierRaspName_AgrToFirst      =        '�� ���� ���稭����'     ;
  lc_HierRaspName_AgrByNewOld     =        '�ய��樮���쭮 �०����'  ;
  lc_HierRaspName_AgrByEqual      =        '�������୮ �� ���稭����' ;


  lc_HierRaspMode_LeafAsLeaf : word   = word(-1);
  lc_HierRaspName_LeafAsLeaf : string = '�� ��।�����, �.�. �� "����"';

end; // const
