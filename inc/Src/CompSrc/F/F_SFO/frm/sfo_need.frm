//------------------------------------------------------------------------------
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 7.12 - ���殤����
// ��������� ���ॡ���� � ���
//------------------------------------------------------------------------------

#doc
����� ���� "������ ���ॡ���� � ���".<br>
#end
.Set Name = 'SFO_NeedVed'
.Hide
.Fields
 NameVed : string          // �������� ����
 DateVed : date            // ��� ����
 GroupName : string        // ��㯯�஢��
 LevelCount : word         // ���-�� �஢��� � ��㯯�஢��
 OrgName : string          // ������������ ᮡ�⢥���� �࣠����樨
 OrgOKPO : string          // ���� ᮡ�⢥���� �࣠����樨
 cSigners : comp           // �����ᠭ��
.EndFields
������������ ��������: ^
���: ^
��㯯�஢��: ^
���-�� �஢���: ^
�࣠������: ^
����: ^
�����ᠭ��: ^
��⠭������� 䨫����:
.{Filtres CheckEnter
.Fields
!��⠭������� 䨫����
  fltName : String : 'T:-'
.EndFields
  ^
.}
.{
.{ReqSFO_LevelName CheckEnter
.Fields
 Level_Name  : string :'T:R'  // ������������ �஢��
 Level_Ed    : string         // ������ ����७�� �᫨ ��� ���� ''
 Level_EdKod : string         // ��� ������� ����७�� �᫨ ��� ���� ''
 Level_Kol   : double         // �ॡ㥬�� ������⢮ (��� �஢���, ��������� � ���)
 Level_Num   : word           // ����� �஢�� (1 - ���孨�, 2 - �������� ...)
.EndFields
������������ �஢��: ^
��.���. (��� ���): ^ ^
������⢮: ^
����� �஢��: ^
.}
.{ReqSFO_SpecKol CheckEnter
.Fields
 Spec_Shift : string :'T:R'  //����� ��� ᯥ�䨪�樨
 Spec_Kol   : double         //���ॡ������� ������⢮ ��� ᯥ�䨪�樨
!����� �� ��, ��, ����
 Spec_CardNRec : comp        //PersCard.NRec
 Spec_CardNum  : string      //����� ��
 Spec_LSTabN   : string      //���.����� �� ���
 Spec_FIO      : string      //��� ࠡ�⭨��
!����� �� ��ଠ�
!    �� ��ଥ
 Spec_NormSfoNRec : comp     //NormSFo.NRec
 Spec_NormSfoCode : string   //��� ��饩 ���� ���
 Spec_NormSfoName : string   //�������� ��饩 ���� ���
 Spec_NormSfoNacop : string  //"+" - ������⥫쭠� ��ଠ, "-" - �� ������⥫쭠�
 Spec_NormSfoInd   : string  //"+" - ������६����� ��ଠ, "-" - ��ਮ���᪠�
!    �� ���ᮭ��쭮� ᯥ�䨪�樨 ����
 Spec_PersNormNrec : comp    //PersSpec.Nrec
 Spec_GroupSfoName  : string //�������� ��㯯� ��� - ��ப� ᯥ�䨪�樨 ����
 Spec_GroupSfoKod   : string //��� ��㯯� ��� - ��ப� ᯥ�䨪�樨 ����
 Spec_PersNormFrDat : date   //���ᮭ��쭠� ��ଠ �
 Spec_PersNormExDat : date   //����� ��ਮ��� �
 Spec_PersNormToDat : date   //���ᮭ��쭠� ��ଠ ��
 Spec_PersNormF_Kol : double //���-�� �� ��ࢮ� �뤠� �� ���ᮭ��쭮� ��ଥ
 Spec_PersNormN_Kol : double //���-�� �� �ப �� ���ᮭ��쭮� ��ଥ
 Spec_PersNormSrok  : double //�ப �� ���� ��ଥ
 Spec_PersNormStat  : string //����� ���ᮭ��쭮� ���� (������� ��� ���������)
 Spec_PersNormFlag  : string //�ਧ��� ���ᮭ��쭮� ���� ��� �ଥ���� (�) ��� ᯥ殤���� (�)
 Spec_PersNormMain  : string //���ﭨ� - �᭮���� ��ଠ (�) ��� �������⥫쭠� (�)
 Spec_PersNormEd    : string //������ ����७�� �।��⮢ �� ��㯯� ���
 Spec_PersNormEdKod : string //��� ������� ����७�� �।��⮢ �� ��㯯� ���
 Spec_PersNormReqDt : date   //����㯫���� �ப� �뤠�
.EndFields
        �����: "^"       ���ॡ������� ���-��: ^
        --- ����� �� ࠡ�⭨�� -----
        PersCard.NRec: ^  ����� ��: ^   ���.N: ^   ���: ^

        ------ ����� �� ��ଥ ���
        NormSFO.NREC: ^  ��� ����: ^  ��������: ^   ������⥫쭠�: ^  ������६�����: ^

        ------ ����� �� ���ᮭ��쭮� ᯥ�䨪�樨
        PersSpec.NRec: ^  ��㯯� ���: ^  ��� ��㯯�: ^  �����祭� �: ^ (^) �� ^ ��ࢮ��砫쭮: ^ ��, ��⥬ ^ ��. �� �ப ^ ���.
        ��ଠ: ^  �ਧ���: ^  ����ﭨ�: ^  ������ ����७��: ^ ^ ����㯫���� �ப� �뤠�: ^
.}
.{ReqSFO_BottLine CheckEnter
-----------------------------------------------------------------------
.}
.}
.EndForm

//-------------------------------------------------------------------------

.LinkForm SFO_NeedVed01 prototype is SFO_NeedVed
.NameInList '��������� ���ॡ���� � ���'
.Group '��⪠�'
.P 70
.LM 15
.declare
#include FeeSigners.vih
.endDeclare
.Var
 iFeeSigners : FeeSigners;
 i, lSign : longint;
 FIOs, Post : array [1..2] of string;
.EndVar
.begin
 lSign := 0;

 for (i := 1; i <= Count(FIOs); i++)
 {
   FIOs[i] := '';
   Post[i] := '';
 }

 iFeeSigners.InitFeeSigners(cgReport_MBP);
 iFeeSigners.FindFeeSignersByNRec(cSigners);

 if (iFeeSigners.FeeSignersIsValid)
   if (iFeeSigners.GetSignerFirst)
     do
     {
       lSign++;
       FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
       Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
     }
     while (iFeeSigners.GetSignerNext);
end.
.Fields
 CommonFormHeader
 NameVed
 DateVed
 GroupName
.EndFields
�� ^��
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��                                �� ���ﭨ� �� ��@@@@@@@@@@��

����㯯�஢��: ��^��
��⠭������� 䨫����:��
.{Filtres CheckEnter
.Fields
  fltName : 'T:-'
  fltName : 'T:-'
.EndFields
.{?Internal;(Substr(fltName,1,2)='��');
��  ��^��
.}
.{?Internal;(Substr(fltName,1,2)<>'��');
��  ^��
.}
.}
��������������������������������������������������������������������������������������������
��                         ������������                           �  ������  � �ॡ㥬����
��                                                                � ����७�� � ������⢮��
��������������������������������������������������������������������������������������������
��                               1                                �     2     �    3��
��������������������������������������������������������������������������������������������
.{
.[H SKIP
��                                                                              ���� @np@��
��������������������������������������������������������������������������������������������
��                               1                                �     2     �    3��
��������������������������������������������������������������������������������������������
.]H
.{ReqSFO_LevelName CheckEnter
.Fields
 Level_Name : 'T:R'  Level_Ed
 if (Level_Kol > 0, String(Level_Kol), '')
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@ &&&&&&&.&&&��
.}
.{ReqSFO_SpecKol CheckEnter
.}
.{ReqSFO_BottLine CheckEnter
.}
.}
��������������������������������������������������������������������������������������������
.begin
 i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.EndForm

//-------------------------------------------------------------------------

.LinkForm SFO_NeedVed02 prototype is SFO_NeedVed
.NameInList '��������� ���ॡ���� � ���'
.Group '���஡���'
.P 70
.LM 15
.declare
#include FeeSigners.vih
.endDeclare
.Var
 iFeeSigners : FeeSigners;
 i, lSign : longint;
 FIOs, Post : array [1..2] of string;
.EndVar
.begin
 lSign := 0;

 for (i := 1; i <= Count(FIOs); i++)
 {
   FIOs[i] := '';
   Post[i] := '';
 }

 iFeeSigners.InitFeeSigners(cgReport_MBP);
 iFeeSigners.FindFeeSignersByNRec(cSigners);

 if (iFeeSigners.FeeSignersIsValid)
   if (iFeeSigners.GetSignerFirst)
     do
     {
       lSign++;
       FIOs[lSign] := iFeeSigners.GetSignerFIO(1);
       Post[lSign] := if (iFeeSigners.GetSignerRole <> '', iFeeSigners.GetSignerRole, iFeeSigners.GetSignerPosition(1));
     }
     while (iFeeSigners.GetSignerNext);
end.
.Fields
 CommonFormHeader
 NameVed
 DateVed
 GroupName
.EndFields
�� ^��
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
��                                �� ���ﭨ� �� ��@@@@@@@@@@��

����㯯�஢��: ��^��
��⠭������� 䨫����:��
.{Filtres CheckEnter
.Fields
  fltName : 'T:-'
  fltName : 'T:-'
.EndFields
.{?Internal;(Substr(fltName,1,2)='��');
��  ��^��
.}
.{?Internal;(Substr(fltName,1,2)<>'��');
��  ^��
.}
.}
��������������������������������������������������������������������������������������������������������������������������������������������������������
  � ��    �          ��ଠ          �       ��㯯� ���        �    �..   �    ��..  �  �ப   ��� ��ଥ� ��.���. ����ॡ�.� �뤠� � �������.��/����
������������������������������������������������������������������������������������������������������������������������������������������������������
    1     �            2            �            3            �    4     �     5    �    6    �    7   �    8    �    9   �    10    � 11� 12� 13� 14
��������������������������������������������������������������������������������������������������������������������������������������������������������
.{
.[H SKIP
��                                                                                                                                          ���� @np@
������������������������������������������������������������������������������������������������������������������������������������������������������
    1     �            2            �            3            �    4     �     5    �    6    �    7   �    8    �    9   �    10    � 11� 12� 13� 14
��������������������������������������������������������������������������������������������������������������������������������������������������������
.]H
.{ReqSFO_LevelName CheckEnter
.Fields
 Level_Name : 'T:R'  Level_Ed
 if ( Level_Kol > 0, String( Level_Kol), '')
.EndFields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @~@@@@@@@@@ &&&&&&&.&&&��
.}
.{ReqSFO_SpecKol CheckEnter
.Fields
 Spec_CardNum Spec_NormSfoName Spec_GroupSfoName
 if (Spec_PersNormFrDat = Date(0,0,0), '', DateToStr(Spec_PersNormFrDat, 'DD/MM/YYYY'))
 if (Spec_PersNormToDat = Date(0,0,0), '', DateToStr(Spec_PersNormToDat, 'DD/MM/YYYY'))
 if (Spec_PersNormExDat = Date(0,0,0), '',
   if (Word(Spec_PersNormSrok) = 0, '�������',
     if (Word(Spec_PersNormSrok) = 65535, '�� �����', String(Word(Spec_PersNormSrok)))))
 Spec_PersNormN_Kol  Spec_PersNormEd  Spec_Kol
 if ((Spec_PersNormReqDt = Date(0,0,0)) or (Spec_PersNormReqDt = MaxDate), '�� ��।.', DateToStr(Spec_PersNormReqDt, 'DD/MM/YYYY'))
 Spec_NormSfoNacop  Spec_NormSfoInd Spec_PersNormFlag Spec_PersNormMain
.EndFields
��@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@ &&&&&&&&& &&&&&&&& @@@@@@@@@ &&&&&&&& @~@@@@@@@@ &~& &~& &~& &~& ��
.}
.{ReqSFO_BottLine CheckEnter
.}
.}
����������������������������������������������������������������������������������������������
.begin
 i := 0;
end.
.{While (i < lSign)
.begin
  i++;
end.
.fields
  Post[i]
  FIOs[i]
.endfields
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
.}
.EndForm

//-------------------------------------------------------------------------

.LinkForm SFO_NeedVed03 prototype is SFO_NeedVed
.NameInList '��������� ��� �뤠� ��� (�ଠ � ��-7)'
.Group '���஡���'
.f "sfo_need_MB_17.OUT"
.Defo Landscape
.p 50
.declare
#include FeeSigners.vih
.endDeclare
.var
  Cnt : Double;
  PodrStr : String;
  inPodrList : Boolean;
  PrintObr : Boolean;
  iFeeSigners : FeeSigners;
  sDirect, sDirPost,
  sMol, sMolPost : String;
.endvar
.begin
  sDirect := sDirPost := sMol := sMolPost := '';

  iFeeSigners.InitFeeSigners(cgReport_MBP);
  iFeeSigners.FindFeeSignersByNRec(cSigners);

  if (iFeeSigners.FeeSignersIsValid)
  {
    if (iFeeSigners.RestrictFeeByRole(1, cgRole_Direct))
    {
      sDirect := iFeeSigners.GetSignerFIO(1);
      sDirPost := iFeeSigners.GetSignerPosition(1)
    }

    if (iFeeSigners.RestrictFeeByRole(1, cgRole_Otvetstv))
    {
      sMol := iFeeSigners.GetSignerFIO(1);
      sMolPost := iFeeSigners.GetSignerPosition(1);
    }

    iFeeSigners.ClearRestriction;
  }
end.
.fields
  CommonFormHeader
  ''  OrgName  OrgOKPO
  PodrStr  DateToStr(DateVed, 'DD/MM/YYYY')
  PodrStr
.endfields
.begin
  Cnt := 0;
  PodrStr := '�� �ᥩ �࣠����樨';
  PrintObr := True;
end.
�� ^
                                                                                                                                       ������� ������᫥��� �ଠ � M�-7
                                                                                                                                       �⢥ত��� ���⠭�������� ��᪮���� ���ᨨ
                                                                                                                                       �� 30.10.97 � 71�

                                              ����������� � ��@@@@@@@@@@��
                                      ����� �뤠� ᯥ殤����, ᯥ殡㢨 ���
                                        ���।��࠭�⥫��� ��ᯮᮡ�������
                                                                                                                                                                      ������������Ŀ
                                                                                                                                                                      �    ����    �
                                                                                                                                                                      ������������Ĵ
                                                                                                                                                        ��ଠ �� ���� �  0320003   �
                                                                                                                                                                      ������������Ĵ
.{Filtres CheckEnter
.begin
  if (Substr(fltName, 1, 3) = '�� ')
  {
    inPodrList := False;

    if (Substr(fltName, 1, 17) = '�� ���ࠧ�������')
    {
      PodrStr := fltName;
      inPodrList := True;
    }
  }
  else
    if (inPodrList)
    {
      if (Substr(PodrStr, 1, 17) = '�� ���ࠧ�������')
        PodrStr := '';

      PodrStr := PodrStr + if (PodrStr = '', '', ', ') + Trim(fltName);
    }
end.
.}
 �࣠������  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                      �� ���� �@~@@@@@@@@@@�
 ������୮� ���ࠧ�������  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                              ��������������
                                                                                   �����������������������������������������������������������������������������������������������Ŀ
                                                                                   �      ���     �     ��� ����    �              C�����୮�            �          ���          �
                                                                                   �  ��⠢�����  �     ����樨    �             ���ࠧ�������           �     ���⥫쭮��      �
                                                                                   �����������������������������������������������������������������������������������������������Ĵ
                                                                                   ���@~@@@@@@@@@@@@@�                 �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �
                                                                                   ���������������������������������������������������������������������������������������������������
.{
.[h1
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
 � ����� �                                     �������멳���殤����,ᯥ殡�� � �।��࠭��. ��ᯮᮡ����� ������ ����७��  �          ���� �����-�   �ப  �   ������� �    �
 �  ��   �       �������, ���, ����⢮        �  �����  �����������������������������������������������������������������������Ĵ������⢮������ � ���-�  �㦡� �   ����祭��    �
 ����浪�                                     �         �         ������������        ������������� ����� ��� � ������������ �          � ������  �         �    (ᤠ�)     �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �   1   �                  2                  �    3    �              4              �          5         �  6  �      7       �     8    �      9     �    10   �       11       �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
.[h2
                                                                                                                                                      ����⭠� ��஭� ��� � M�-7
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
 �   1   �                  2                  �    3    �              4              �          5         �  6  �      7       �     8    �      9     �    10   �       11       �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
.]h
.{ReqSFO_LevelName CheckEnter
.Fields
  Level_Name : 'T:R'  Level_EdKod  Level_Ed
  if (Level_Kol > 0, String(Level_Kol), '')
.EndFields
 ���@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@���                    ���@@@@@�����@@@@@@@@@@@@@@�����&'&&&&&.&&���            �         �                �
.}
.{ReqSFO_SpecKol CheckEnter
.begin
  Cnt := Cnt + 1
end.
.Fields
  Cnt  Spec_FIO  Spec_LSTabN  Spec_GroupSfoName  Spec_GroupSfoKod  Spec_PersNormEdKod  Spec_PersNormEd  Spec_Kol
  if (Spec_PersNormExDat = Date(0,0,0), '',
    if (Word(Spec_PersNormSrok) = 0, '�������',
      if (Word(Spec_PersNormSrok) = 65535, '�� �����', String(Word(Spec_PersNormSrok)))))
.EndFields
 �&&&&&& �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�&&&&&&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@@�@@@@@@@@@@@@@@�&'&&&&&.&&�            �&&&&&&&&&�                �
.}
.{ReqSFO_BottLine CheckEnter
.}
.[f1
.begin
  PrintObr := True;
end.
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������

.]f
.[f2
.begin
  PrintObr := False;
end.
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.fields
  sMolPost sMol
  sDirPost sDirect
.endfields

 �����ਠ�쭮 �⢥��⢥���� �����  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��  _____________  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                           ���������               �������                    ����஢�� ������
 ���㪮����⥫� ���ࠧ���������      ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��  _____________  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                           ���������               �������                    ����஢�� ������
    "   " ______________ 20  �.
.]f
.}
.{?INTERNAL;PrintObr
.fields
  'true' : 's'
.endFields
  ^                                                                                                                                                       ����⭠� ��஭� ��� � M�-7
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ŀ
 �   1   �                  2                   �    3    �              4             �          5         �  6  �      7       �     8    �      9     �    10   �       11       �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������Ĵ
 �       �                                      �         �                            �                    �     �              �          �            �         �                �
 ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������
.fields
  sMolPost sMol
  sDirPost sDirect
.endfields

 �����ਠ�쭮 �⢥��⢥���� �����  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��  _____________  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                           ���������               �������                    ����஢�� ������
 ���㪮����⥫� ���ࠧ���������      ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��  _____________  ��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
                                           ���������               �������                    ����஢�� ������
    "   " ______________ 20  �.
.}
����
.endform
