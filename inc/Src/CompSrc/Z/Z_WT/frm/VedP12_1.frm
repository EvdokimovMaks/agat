//------------------------------------------------------------------------------
//                                                      (�) ��௮��� �����⨪�
// �����⨪� 7.11 - ��ࠡ�⭠� ����
// ���� "1-� ��࠭�� ⨯���� ��� �-12" (��ࠨ��)
//------------------------------------------------------------------------------

.LinkForm 'P12_1' prototype is 'UnifiedFormT12_FirstPage'
.NameInList '������� �ଠ N �-12 (1-� ��࠭��)'
.group '�12'
.p 80
.function RepPeriodName(BegOPDate: Date; EndOPDate: Date): String;
var
  NonStdPeriod: Boolean;
begin
  NonStdPeriod := False;
  if Year(BegOPDate) = Year(EndOPDate) then
  begin
    if Month(BegOPDate) = Month(EndOPDate) then
    begin
      if (Day(BegOPDate) = 1) and (Day(EndOPDate) = Last_Day(EndOPDate)) then
        RepPeriodName := '�� ' + DateToStr(BegOPDate, 'month YYYY') + ' ப�';
      else
        NonStdPeriod := True;
    end else
    begin
      if (Day(BegOPDate) = 1) and (Day(EndOPDate) = Last_Day(EndOPDate)) then
      begin
        if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 3) then
          RepPeriodName := '�� I ����⠫ ' + String(Year(BegOPDate)) + ' ப�';
        else
          if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 3) then
            RepPeriodName := '�� II ����⠫ ' + String(Year(BegOPDate)) + ' ப�';
          else
            if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 3) then
              RepPeriodName := '�� III ����⠫ ' + String(Year(BegOPDate)) + ' ப�';
            else
              if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 3) then
                RepPeriodName := '�� IV ����⠫ ' + String(Year(BegOPDate)) + ' ப�';
              else
                if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 6) then
                  RepPeriodName := '�� I �i��i��� ' + String(Year(BegOPDate)) + ' ப�';
                else
                  if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 9) then
                    RepPeriodName := '�� 9 �i���i� ' + String(Year(BegOPDate)) + ' ப�';
                  else
                    if (Month(BegOPDate) = 1) and (Month(EndOPDate) = 12) then
                      RepPeriodName := '�� ' + String(Year(BegOPDate)) + ' �i�';
                    else
                    NonStdPeriod := True;
      end else
        NonStdPeriod := True;
    end;
  end else
    NonStdPeriod := True;
  if NonStdPeriod then
    RepPeriodName := '�� ���i�� � ' + DateToStr(BegOPDate, 'DD.MM.YYYY') + ' �� ' +
     DateToStr(EndOPDate, 'DD.MM.YYYY');
end.
.create view vDataform
  select
    KatOrg.OKPO
  from
    KatOrg
  where ((
    coGetTune('MyOrg')     == KatOrg.NRec
   ));
.fields
  �࣠������
  KatOrg.OKPO
  Replace(������୮�_���ࠧ�������, '�� �ᥬ ���ࠧ�������', '�� ��i� �i�஧�i���')
  RepPeriodName(StrToDate(��砫�_���⭮��_��ਮ��, 'DD/MM/YYYY'), StrToDate(����砭��_���⭮��_��ਮ��, 'DD/MM/YYYY'))
.endfields
��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                      ������ �ଠ N �-12
            �i�����⢮, �࣠�i���i�                                    �����������
                                                                         ������� �i����� ������
                                                                         �i� 9 ����� 1995 �. N 253

.{table 'vDataform: main' by vDataform.KatOrg.NRec
                           �����������Ŀ                                             �����������Ŀ
I�����i���i������� 򄐏�� �@~@@@@@@@@@�                                 ��� �� ���� �           �
                           �������������                                             ���������������
.}
�����, �i��i�, �i�쭨�� ��@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��

��i�� ������
      ������������������
      ��砫쭨�

��                                           ������ ���I��
                     ������⠭�� ஡�箣� ��� � ஧��㭪� ��஡i⭮� ����
@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��
���������������������������������������������������������������������������������������������������Ŀ
�                           �����i �����祭��                            �          ���           �
�                                                                        ������������������������Ĵ
�                                                                        �  �㪢����  � ��஢��  �
�������������������������������������������������������������������������������������������������Ĵ
������� (��i) ஡��                                                     �     �      �    01     �
�������������������������������������������������������������������������������������������������Ĵ
������� ஡��:                                                          �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �i�i                                                               �     �      �    02     �
�������������������������������������������������������������������������������������������������Ĵ
� �) ������i �i��來��i�                                               �    ��     �    03     �
�������������������������������������������������������������������������������������������������Ĵ
� �) ������i ���ᮢ��i�                                               �    ��     �    04     �
�������������������������������������������������������������������������������������������������Ĵ
����ᮢ� ஡��:                                                        �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �i��來��i� �i����i���                                              �    ��     �    05     �
�������������������������������������������������������������������������������������������������Ĵ
� �) �i��來��i� �����i�쮧�i���                                        �    ࢢ     �    06     �
�������������������������������������������������������������������������������������������������Ĵ
��i��來� ஡�� ���ᮢ�� ���i����i�                                   �            �    07     �
�������������������������������������������������������������������������������������������������Ĵ
��i��臘����:                                                            �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �㦡��i                                                            �     �      �    08     �
�������������������������������������������������������������������������������������������������Ĵ
� �) �� �i���쪮��ᯮ�����i ஡�� ��i�, �i ���������� �              �     ��     �    09     �
�    �।��ᯨ᪮�i� �ᥫ쭮��i                                       �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �� �i���쪮��ᯮ�����i ஡�� ��i�, �� 直�� ����i������� 75 %     �     ��     �    10     �
�    �।�쮬i��筮�� ��஡i��                                         �            �           �
�������������������������������������������������������������������������������������������������Ĵ
��i����⪠:                                                              �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �᭮��� ��i筠                                                     �     �      �    11     �
�������������������������������������������������������������������������������������������������Ĵ
� �) ����⪮�� �i����⪠ ��� ���०���� ��஡i⭮� ����, 猪 ���������  �     ��     �    12     �
�    �i���� �� ������� ������� �i�� ��⨭�                            �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) � ��'離� � ���砭�� i ������ ���०���� ��஡i��, �i���饭��    �     ��     �    13     �
�    ����i�i���i� ��� ���砭�� ����� ����i� � �i�ਢ�� �i� ��஡���⢠�            �           �
�    � i��i                                                             �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) � ��'離� � ���砭�� � ��⪮��� ���०���� ��஡i�� � �i��i �i��     �      �    14     �
�    ஡�� �确�i ��i                                                   �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �i����⪠ ��� ���०���� ��஡i⭮� ����, 猪 ��������� ���i�������     ��     �    15     �
�    ��� ����i ���㯭�� iᯨ�i�, � ⠪�� �i ��������� �� ��⠭�i�      �            �           �
�    ����� ���� � �।�i� ᯥ�i��쭨� �确��� ������i�               �            �           �
�������������������������������������������������������������������������������������������������Ĵ
�����ᮢ� ����楧���i��� � �i����⪨ �� ������ �� 墮ਬ � ��      �     �      �    16     �
���࠭⨭�, ��ଫ��i ���⪠�� ����楧��⭮��i, ��i� ������i�, �       �            �           �
���।��祭i ����� "�"                                                   �            �           �
�������������������������������������������������������������������������������������������������Ĵ
��i����⪠ � ���i⭮��i � �����i�                                       �     ��     �    17     �
�������������������������������������������������������������������������������������������������Ĵ
��i������i ����室� � ������ ���०���� ��஡i⭮� ���� � ��������,    �     �     �    18     �
���।��祭�� ����������⢮� (��������� ��ঠ���� � �஬���쪨�         �            �           �
�����'離i�)                                                             �            �           �
�������������������������������������������������������������������������������������������������Ĵ
��i����i��i ����� �� � ���� �����箣�                                 �     ��     �    19     �
�����������������������������������������������������������������������������������������������������
���������������������������������������������������������������������������������������������������Ŀ
�                           �����i �����祭��                            �          ���           �
�                                                                        ������������������������Ĵ
�                                                                        �  �㪢����  � ��஢��  �
�������������������������������������������������������������������������������������������������Ĵ
������i�쮧�i��i ����� �� � ���� �����箣�                           �     ��     �    20     �
�������������������������������������������������������������������������������������������������Ĵ
����ਧ���� �i���⮢��                                                   �     �      �    21     �
�������������������������������������������������������������������������������������������������Ĵ
��i��쪮��-�确�i ����                                                  �     �      �    22     �
�������������������������������������������������������������������������������������������������Ĵ
������� ᪮�祭�� ஡�� ஡i⭨��� � �㦡���� �����訬 �� 18 பi�  �     ��     �    23     �
���� ��⠭������� �ਢ�����i ஡�箣� ���                              �            �           �
�������������������������������������������������������������������������������������������������Ĵ
������i�쮧�i��i ���ࢨ (�i���� �� ���㢠��� ��⨭�, � ��'離� �       �     �      �    24     �
���������� ��ঠ���� � �஬���쪨� ����'離i�, ��� ��i��i�� �������, �            �           �
��i ஡���� � 宫����� ���i�� ப� �� �i���⮬� ���i��i ��)          �            �           �
�������������������������������������������������������������������������������������������������Ĵ
��i������i ��� ��� ���०���� ��஡i�� �� ������ �� 墮ਬ � ��    �     �      �    25     �
���࠭⨭�, ��ଫ��i ���i����� �i�㢠�쭨� ��⠭�� � i��i              �            �           �
�������������������������������������������������������������������������������������������������Ĵ
��i��i �i� ஡�� �确�i ��i ��� ���०���� ��஡i⭮� ���� �          �     �      �    26     �
���������, ��।��祭�� ����������⢮�                                   �            �           �
�������������������������������������������������������������������������������������������������Ĵ
�������祭� ����楧���i��� � ��������, ��।��祭�� ����������⢮�     �     �      �    27     �
�(� ��'離� � ����⮢�� �ࠢ��� � i��i)                                 �            �           �
�������������������������������������������������������������������������������������������������Ĵ
����⪮�ᮢ� �i����⪠ ��� ���०���� ��஡i⭮� ����, 猪 ���������  �            �           �
����i�i����i�� �� i�i�i�⨢��:                                          �            �           �
�������������������������������������������������������������������������������������������������Ĵ
� �) �����箣�                                                          �     �      �    28     �
�������������������������������������������������������������������������������������������������Ĵ
� �) ���i�i����i�                                                       �     ��     �    29     �
�������������������������������������������������������������������������������������������������Ĵ
��i����i��i ����� � ���� �������                                     �     �     �    30     �
�������������������������������������������������������������������������������������������������Ĵ
������i�쮧�i��i ����� � ���� �������                               �     ��     �    31     �
�������������������������������������������������������������������������������������������������Ĵ
��ண㫨 � i��i ��� � �������� ��稭                                �     ��     �    32     �
�������������������������������������������������������������������������������������������������Ĵ
����i������                                                              �     ��     �    33     �
�������������������������������������������������������������������������������������������������Ĵ
���।�᭥ ����襭�� ஡��                                             �     ��     �    34     �
�������������������������������������������������������������������������������������������������Ĵ
����i��i (��i �⨦������ �i���稭��) ��⪮�i � ��஡��i ��i           �     ��     �    35     �
�������������������������������������������������������������������������������������������������Ĵ
���ᮢi ����室� �� ஡��� (��ࠩ��)                                     �     ��     �    36     �
�����������������������������������������������������������������������������������������������������
.EndForm