//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.10 - ����� "�����஭��� ���⭮���"
// ��⮪ ������ : "����� ���㯮� ��� �㭪樮���� �����஭��� ���⭮���"
//------------------------------------------------------------------------------

#doc
��⮪ ������ : "����� ���㯮� ��� �㭪樮���� �����஭��� ���⭮���"
#end
.linkform 'SFTR_BkBuy' prototype is 'BkPrZkF'
.NameInList '����� "����� ���㯮�" => "�����஭��� ���⭮���"'
.Group 'SFTR_GroupBkBuy'
.Group 'Country' subGroup 'Russia'

.declare
#include SFTR_BkListener.Vih
.enddeclare
.var
  pSpy : SFTR_BkListener;
  Buff : TSFTR_BkBuySpyBuffer;
.endvar

.{ CheckEnter FiltKontr
.} // CheckEnter FiltKontr
.{ CheckEnter FiltTip
.} // CheckEnter FiltTip
.{ CheckEnter FiltPodr
.} //CheckEnter FiltPodr
.fields
  UnnORInn + '/���'
  UnnORInn + '/���'
.endfields
����� ���㯮�
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
� � ���� �����  ����� �  �  ����� � �  ����� � �  ����� � ������ � ��⠳   ���   �  ������������ �@~@@@@@@@@�  �������� � ���।����  �  �����  � �����-  ��⮨����� ���㯮��    �㬬� ���    �
��/������樨�   ���    �   ���   �   ���   �   ���   � ���㬥��, � �ਭ��� �    �த���   � �த��� �  (�����ᨮ���, �����) �  ⠬�-  � ������� ��� ����-䠪���,��� ����-䠪���,�
�   �        �   ���-  � ��ࠢ��-� ���४�-� ��ࠢ��-����⢥ত��-� �� ���  �               �          �������������������������Ĵ  ������ �  � ���  �ࠧ��� �⮨���⨳ࠧ��� �㬬� ����
�   �        �  䠪����  �    ���   � ஢�筮���    ���   �饣� 㯫��� � ⮢�஢  �               �          �            �            �  �����- �  ������ �       ��        �       ��        �
�   �        � �த���  �  ���-  �  ���-  � ���४�-�   ������   �(ࠡ��,��-�               �          �            �            �  �樨  �         ����४�஢�筮�㳪��४�஢�筮��
�   �        �           �  䠪���� �  䠪���� � ஢�筮���            ���), ���-�               �          ��������������@~@@@@@@@@@@�         �         �  ����-䠪���  �  ����-䠪���, �
�   �        �           � �த��� � �த��� �  ���-  �            ���⢥����               �          � ���।���� � ���।���� �         �         �  (������ ���)  �  �ਭ������� �  �
�   �        �           �          �          �  䠪���� �            �  �ࠢ    �               �          �            �            �         �         �     � �����    ������,� �㡫�� ��
�   �        �           �          �          � �த��� �            �          �               �          �            �            �         �         �  ���-䠪����  �     ��������    �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
� 1 �    2   �     3     �     4    �     5    �     6    �      7     �     8    �       9       �    10    �     11     �     12     �   13    �    14   �        15       �        16       �
����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.{ // GLOBAL
.{ CheckEnter BkPrZkVal
.{ CheckEnter BkPrZkMain
.if TipUsersGroup
.end //if
.if PodrGroup
.end //if
.if GroupBKObjectStroi
.end //if
.if KatOrgGroup
.end //if
.if DesGrGroup
.end //if
.{ CheckEnter BookZk
.} // CheckEnter BookZk
.Fields
  NumPP                      // 01. ���浪��� ����� �����
  KodOp                      // 02. ��� ���� ����樨
  DatNomSF                   // 03. ����� � ��� ���-䠪���� �த���
  if(longint(DatRevSF) = 0 and NomRevSF = ''
  , '-'
  , if(ZeroPrint
    , NomRevSF
    , LTrim(NomRevSF, '0')) + ' ' + DateToStr(DatRevSF, 'DD/MM/YYYY'))        // 04. ����� � ��� ��ࠢ����� ���-䠪���� �த���
  if(longint(DatCorrV) = 0 and NomCorrV = ''
  , '-'
  , if(ZeroPrint
    , NomCorrV
    , LTrim(NomCorrV, '0')) + ' ' + DateToStr(DatCorrV, 'DD/MM/YYYY'))        // 05. ����� � ��� ���४�஢�筮�� ���-䠪���� �த���
  if(longint(DatRevCorrV) = 0 and NomRevCorrV = ''
  , '-'
  , if(ZeroPrint
    , NomRevCorrV
    , LTrim(NomRevCorrV, '0')) + ' ' + DateToStr(DatRevCorrV, 'DD/MM/YYYY'))  // 06. ����� � ��� ��ࠢ����� ���४�஢�筮�� ���-䠪���� �த���
  sSomeDateOplata            // 07. ����� � ��� ���㬥��, ���⢥ত��饣� 㯫��� ������
  DatOpr                     // 08. ��� �ਭ��� �� ��� ⮢�஢ (ࠡ��,���), �����⢥���� �ࠢ
  KontrNameNazn              // 09. ������������ �த���
  KontrINN + '/' + KontrKPP  // 10. ���/��� �த���
  MediatorName               // 11. ������������ ���।����
  MediatorINN_KPP            // 12. ���/��� ���।����
  GTDCountry                 // 13. ����� ⠬������� ������樨
  GTDNomer                   // 13. ����� ⠬������� ������樨
  KodNameVal                 // 14. ������������ � ��� ������
  SumValSF                   // 15. �⮨����� ���㯮� �� ����-䠪���, ࠧ��� �⮨���� �� ���४�஢�筮�� ����-䠪��� (������ ���) � ����� ���-䠪����
  SumNDSRub                  // 16. �㬬� ��� �� ����-䠪���, ࠧ��� �㬬� ��� �� ���४�஢�筮�� ����-䠪���, �ਭ������� � �����, � �㡫�� � ��������
.EndFields
.begin
  var SumNDSRub_Vsego : double;  SumNDSRub_Vsego := if (IsIncItog, SumNDSRub, 0);

  ClearAdvRecord(Buff);
  Buff.NumPP           := NumPP          ;  // 01. ���浪��� ����� �����
  Buff.KodOp           := KodOp          ;  // 02. ��� ���� ����樨
  Buff.DatSF           := DatFact        ;  // 03. ��� ���-䠪���� �த���
  Buff.NomSF           := NomSF          ;  // 03. ����� ���-䠪���� �த���
  Buff.DatRevSF        := DatRevSF       ;  // 04. ��� ��ࠢ����� ���-䠪���� �த���
  Buff.NomRevSF        := NomRevSF       ;  // 04. ����� ��ࠢ����� ���-䠪���� �த���
  Buff.DatCorrV        := DatCorrV       ;  // 05. ��� ���४�஢�筮�� ���-䠪���� �த���
  Buff.NomCorrV        := NomCorrV       ;  // 05. ����� ���४�஢�筮�� ���-䠪���� �த���
  Buff.DatRevCorrV     := DatRevCorrV    ;  // 06. ��� ��ࠢ����� ���४�஢�筮�� ���-䠪���� �த���
  Buff.NomRevCorrV     := NomRevCorrV    ;  // 06. ����� ��ࠢ����� ���४�஢�筮�� ���-䠪���� �த���
  Buff.sSomeDateOplata := sSomeDateOplata;  // 07. ����� � ��� ���㬥��, ���⢥ত��饣� 㯫��� ������
  Buff.DatOpr          := DatOpr         ;  // 08. ��� �ਭ��� �� ��� ⮢�஢ (ࠡ��,���), �����⢥���� �ࠢ
  Buff.KontrNameNazn   := KontrNameNazn  ;  // 09. ������������ �த���
  Buff.KontrINN        := KontrINN       ;  // 10. ��� �த���
  Buff.KontrKPP        := KontrKPP       ;  // 10. ��� �த���
  Buff.MediatorName    := MediatorName   ;  // 11. ������������ ���।����
  Buff.MediatorINN_KPP := MediatorINN_KPP;  // 12. ���/��� ���।����
  Buff.GTDCountry      := GTDCountry     ;  // 13. ����� ⠬������� ������樨
  Buff.GTDNomer        := GTDNomer       ;  // 13. ����� ⠬������� ������樨
  Buff.KodNameVal      := KodNameVal     ;  // 14. ������������ � ��� ������
  Buff.SumValSF        := SumValSF       ;  // 15. �⮨����� ���㯮� �� ����-䠪���, ࠧ��� �⮨���� �� ���४�஢�筮�� ����-䠪��� (������ ���) � ����� ���-䠪����
  Buff.SumNDSRub       := SumNDSRub      ;  // 16. �㬬� ��� �� ����-䠪���, ࠧ��� �㬬� ��� �� ���४�஢�筮�� ����-䠪���, �ਭ������� � �����, � �㡫�� � ��������
  Buff.SumNDSRub_Vsego := SumNDSRub_Vsego;  // ����� 16. �㬬� ��� �� ����-䠪���, ࠧ��� �㬬� ��� �� ���४�஢�筮�� ����-䠪���, �ਭ������� � �����, � �㡫�� � ��������

  pSpy.ReportRecDataBkBuy(Buff);
end.
�@@@�@@@@@@@@�@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@@@�@~@@@@@@@@�@~@@@@@@@@@@�@~@@@@@@@@@@�@~@@ @~@@�@~@@@@@@@�&'#&&&&&&&&&&&.&&�&'#&&&&&&&&&&&.&&�
.} // CheckEnter BkPrZkMain

.} // CheckEnter BkPrZkVal

.{ CheckEnter BkPrZkAllVal
.} // CheckEnter BkPrZkAllVal

.} // GLOBAL

.endform
