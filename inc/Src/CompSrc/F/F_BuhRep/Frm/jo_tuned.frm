//------------------------------------------------------------------------------
//                                                      (c) ��௮��� ���������
//------------------------------------------------------------------------------
// �����⨪� 5.84 - ���
// ������ᠫ�� ��ୠ�-�थ�
//------------------------------------------------------------------------------

#include FeeSigners.frn
//------------------------------------------------------------------------------
// ��������� � �ଥ
// 29.06.2005
// ������� ���� ���� "����⠎���" - �뢮����� ������������ ������
//------------------------------------------------------------------------------

#doc
������� �ଠ ���� "������ᠫ�� ��ୠ�-�थ�"
#end
.set name = 'jo_tuned'
.nameinlist '������� �ଠ 㭨���ᠫ쭮�� ��ୠ��-�थ�'
.hide
.fields
  RepName
  RepType
  BegDate EndDate
  ����⠎���
  BuhName RepUserName
  KauKodTable
  KauTableName
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1
  ColumnTitle2
  KauGroupName
  KauGroupKolVo
  KauGroupSum
  Npp
  KauNrec
  KauName
  DateOb
  DateDoc
  NoDok
  OrgNrec
  OrgName
  Sodr
  Schet
  SubSchet
  SchSubName
  KolVo
  Sum
  ItogKolVo
  ItogSum
#FeeSignersCycleFields
.endfields
����������� ����  ^
RepType ^   (������⢮ ��� ����� ����樨 ��� 蠯��)
��ਮ� c  ^
       �� ^
����⠎��� ^
BuhName - ������ ��壠��� ^
RepBuhName - �⢥��⢥��� �� ���� ^
! ��� ࠧ१� �� �����⨪�
KauKodTable - ��� ⠡���� �����⨪�             - ^
KauTableName- ������������ �����⨪�            - ^
.if OkJoSchet
.{
������������ ����ன�� ^
.{
  ���祭�� ^
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
^
.{
^ ^
.}
.}
.end


 .{.?JoHdr01;.}
 .{.?JoHdr02;    ColumnTitle1 ^ .}
 .{.?JoHdr03;    ColumnTitle2 ^ .}
 .{.?JoHdr04;.}
 .{.?JoHdr05;.}
.{

.if JoNeedGroup
 .{.?JoBod02;.}
 KauGroupName  ^
 .{.?JoBod03;    KauGroupKolVo ^ KauGroupSum ^  .}
.end

.if JoNeedRow
Npp         - ����� ࠧ१� �� ���浪�          - ^
! ࠧ१ �� �����⨪�
KauNrec     - ���祭�� �����⨪� (nrec)         - ^
KauName     - ���祭�� �����⨪� (������������) - ^
! ࠧ१ �� ���㬥�⠬
DateOb      - ��� ����樨                     - ^
DateDoc     - ��� ���㬥��                    - ^
NoDok       - ����� ��ࢨ筮�� ���㬥��        - ^
OrgNrec     - nrec �࣠����樨                  - ^
OrgName     - ������������ �࣠����樨          - ^
Sodr        - ᮤ�ঠ���                        - ^
! ࠧ१ �� �᭮��� ��⠬
Schet       - ���                              - ^
SubSchet    - �����                           - ^
SchSubName  - ������������ ���/�����       - ^
  .{.?JoBod01; ������⢮ �祩�� ^ �㬬� �祩�� ^ .}
.end
.}
 .{.?JoFtr01;.}
 .{.?JoFtr02; ������⢮ �⮣� ^ �㬬� �⮣�  ^ .}
 .{.?JoFtr03;.}
#FeeSignersCycle(jo_tuned)
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned01' prototype is 'jo_tuned'
.group '� ࠧ१� �����⨪�'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� �����⨪�'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1
                ColumnTitle2
                
  KauGroupName:"trim:right"  KauGroupSum
  Npp KauName:"trim:right"   Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������.{.?JoHdr01;������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��                                        .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
���������������������������������������������.{.?JoHdr04;������������������.}  .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------
.linkform 'jo_tuned01_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� �����⨪� (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� �����⨪�'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1 RepType

  KauGroupName:"trim:right"  KauGroupKolVo KauGroupSum
  Npp KauName:"trim:right"   KolVo Sum

  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                                        .{.?JoHdr03;�����������������������������������.}
    �                                        .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned02' prototype is 'jo_tuned'
.group '� ࠧ१� ���'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ���'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1
  ColumnTitle2
  Npp DateOb Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������.{.?JoHdr01;������������������.}
  � �   ���   .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��          .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
���������������.{.?JoHdr04;������������������.} .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}
 .{.?JoBod03;.}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@.{.?jobod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������.{.?JoFtr01;������������������.}
���⮣�          .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!----------------------------------------------------------------------
.linkform 'jo_tuned02_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��� (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ���'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateOb KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������.{.?JoHdr01;�����������������������������������.}
  � �          .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
    �   ���   .{.?JoHdr03;�����������������������������������.}
 �/��          .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������.{.?JoFtr01;�����������������������������������.}
���⮣�          .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
! ��ଠ ���������筠 �ଥ jo_tuned02. ��諮�� ᤥ���� ��� ⮣� �⮡� ������
! ������� ����. ��� �������᪮�� ���७�� ��諮�� �� �ࠢ��� ���⨯
.linkform 'jo_tuned021' prototype is 'jo_tuned'
.group '� ࠧ१� ��� �� ����栬'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ���'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1
  ColumnTitle2
  Npp DateOb Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
������������������.{.?JoHdr01;������������������.}
  � �     ���    .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��             .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
������������������.{.?JoHdr04;������������������.} .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}
 .{.?JoBod03;.}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
������������������.{.?JoFtr01;������������������.}
���⮣�             .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------

.linkform 'jo_tuned021_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��� �� ����栬 (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ���'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateOb KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
������������������.{.?JoHdr01;�����������������������������������.}
  � �     ���    .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��             .{.?JoHdr03;�����������������������������������.}
    �             .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
������������������.{.?JoFtr01;�����������������������������������.}
���⮣�             .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned03' prototype is 'jo_tuned'
.group '� ࠧ१� ���㬥�⮢'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
    ColumnTitle1
    ColumnTitle2
  Npp DateDoc NoDok OrgName Sodr Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������������������������������������������.{.?JoHdr01;������������������.}
  � �                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��                                                                            .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
    �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�                 .}
���������������������������������������������������������������������������������.{.?JoHdr05;������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}
 .{.?JoBod03;.}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                                                            .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������������������������������������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------

.linkform 'jo_tuned03_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ���㬥�⮢ (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateDoc NoDok OrgName Sodr KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/������������������������������������������������������������������������������.{.?JoHdr03;�����������������������������������.}
    �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������������������������������������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@�                              |                         .{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                                                            .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������������������������������������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned04' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
    ColumnTitle1
    ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp KauName:"trim:right"   Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������.{.?JoHdr01;������������������.}
  � �            ���/�����                .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��                                        .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
���������������������������������������������.{.?JoHdr04;������������������.} .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------

.linkform 'jo_tuned04_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2 ColumnTitle1  RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp KauName KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �            ���/�����                .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                                        .{.?JoHdr03;�����������������������������������.}
    �                                        .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned05' prototype is 'jo_tuned'
.group '� ࠧ१� �����⨪� � ���㬥�⮢'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� �����⨪� � ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1
                ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp DateDoc NoDok OrgName Sodr Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr01;������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��                                        �                                                                            .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
    �                                        �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�                 .}
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr05;������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�          �        �                              �                         .{.?JoBod03;�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�                                        �@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                                                                                                     .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------

.linkform 'jo_tuned05_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� �����⨪� � ���㬥�⮢ (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� �����⨪� � ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateDoc NoDok OrgName Sodr KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                                        �����������������������������������������������������������������������������.{.?JoHdr03;�����������������������������������.}
    �                                        �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�          �        �                              �                         .{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�                                        �@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                                                                                                     .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned06' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ � �����⨪�'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢ � �����⨪�'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  KauTableName
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp KauName:"trim:right"    Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

�����⨪� : ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end

���������������������������������������������.{.?JoHdr01;������������������.}
  � �              ��� �����              .{.?JoHdr02;�@~@@@@@@@@@@@@@@ .}
 �/��               �����⨪�                .{.?JoHdr03;�@~@@@@@@@@@@@@@@ .}
���������������������������������������������.{.?JoHdr04;������������������.} .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------
.linkform 'jo_tuned06_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ � �����⨪� (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢ � �����⨪�'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  KauTableName
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp KauName:"trim:right" KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

�����⨪� : ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end

���������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �              ��� �����              .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��               �����⨪�                .{.?JoHdr03;�����������������������������������.}
    �                                        .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned07' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ � ���'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢ � ���'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp DateOb:"trim:right" Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^
.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������.{.?JoHdr01;������������������.}
  � �              ���/�����              .{.?JoHdr02;�@~@@@@@@@@@@@@@@ .}
 �/��                 ���                   .{.?JoHdr03;�@~@@@@@@@@@@@@@@ .}
���������������������������������������������.{.?JoHdr04;������������������.} .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------
.linkform 'jo_tuned07_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ � ��� (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢ � ���'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateOb:"trim:right" KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^
.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
���������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �              ���/�����              .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                 ���                   .{.?JoHdr03;�����������������������������������.}
    �                                        .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform

!-------------------------------------------------------------------------------
.linkform 'jo_tuned08' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢, �����⨪� � ���㬥�⮢'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢, �����⨪� � ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1
                ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp DateDoc NoDok OrgName Sodr Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr01;������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��                                        �                                                                            .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
    �                                        �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�                 .}
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr05;������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�          �        �                              �                         .{.?JoBod03;�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�                                        �@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                                                                                                     .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------

.linkform 'jo_tuned08_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢, �����⨪� � ���㬥�⮢ (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢, �����⨪� � ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateDoc NoDok OrgName Sodr KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                                        �����������������������������������������������������������������������������.{.?JoHdr03;�����������������������������������.}
    �                                        �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�          �        �                              �                         .{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�                                        �@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                                                                                                     .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------
.linkform 'jo_tuned09' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢, ���ࠧ������� � ����⮢'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢, ���ࠧ������� � ����⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp KauName:"trim:right"    Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^


.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end

���������������������������������������������.{.?JoHdr01;������������������.}
  � �          ��� ���ࠧ�������            .{.?JoHdr02;�@~@@@@@@@@@@@@@@ .}
 �/��              �����                   .{.?JoHdr03;�@~@@@@@@@@@@@@@@ .}
���������������������������������������������.{.?JoHdr04;������������������.} .{.?JoHdr05;.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------
.linkform 'jo_tuned09_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢, ���ࠧ������� � ����⮢ (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢, ���ࠧ������� � ����⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp KauName:"trim:right" KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^


.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end

���������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �              ��� ���ࠧ�������        .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                  �����               .{.?JoHdr03;�����������������������������������.}
    �                                        .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
���������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}��   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
.end
.if JoNeedRow
&&&&�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
���������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                        .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
���������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------
.linkform 'jo_tuned10' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ � ���㬥�⮢'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢ � ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1
                ColumnTitle2
  KauGroupName:"trim:right"   KauGroupSum
  Npp DateDoc NoDok OrgName Sodr Sum
  ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr01;������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@.}
 �/��                                        �                                                                            .{.?JoHdr03;�@~@@@@@@@@@@@@@@@.}
    �                                        �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�                 .}
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr05;������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�          �        �                              �                         .{.?JoBod03;�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�                                        �@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&& .}
.end
.}
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr01;������������������.}
���⮣�                                                                                                                     .{.?JoFtr02;�&'&&&&&&&&&&&&&& .}��
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr03;������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform
!-------------------------------------------------------------------------------

.linkform 'jo_tuned10_Kol' prototype is 'jo_tuned'
.group '� ࠧ१� ��⮢ � ���㬥�⮢ (������⢮)'
.nameinlist '������ᠫ�� ��ୠ�-�थ� � ࠧ१� ��⮢ � ���㬥�⮢'
.defo landscape
.var
  MyOrg   :string;
  oHistory : iOldHistory;
.endvar
.fields
  CommonFormHeader
  MyOrg
  RepName
  BegDate EndDate
  ����⠎���
  TuneSchetTitle
  TuneSchetName
  FltName FltSpec FltSpec2
  KauTableName  ColumnTitle1 RepType
  KauGroupName:"trim:right" KauGroupKolVo KauGroupSum
  Npp DateDoc NoDok OrgName Sodr KolVo Sum
  ItogKolVo ItogSum
.endfields
.begin
  MyOrg := oHistory.sGetField(coKatOrg, coGetTune('Myorg'), 'REP.KATORGNAME', StrToDate(EndDate,'DD/MM/YYYY'));
end.
��^
^

��  ^  c ^ �� ^��

��������� ��ନ஢��� � ^

.if OkJoSchet
.{
��^��
.{
��  ^��
.}
.}
.end
.if OkJoFilter
�ਬ���� 䨫���...
.{
  ��^��
.{
    ��^ ^��
.}
.}
.end
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr01;�����������������������������������.}
  � �@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�                       �  �  �  �  �  �  �  �  �                            .{.?JoHdr02;�@~@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.}
 �/��                                        �����������������������������������������������������������������������������.{.?JoHdr03;�����������������������������������.}
    �                                        �   ���   � �����  �     ���⥫�騪/�����⥫�    �   ����ঠ��� ����樨   .{.?JoHdr04;�@~@@@@@@@@@@@@@@�      �㬬�      .}
��������������������������������������������������������������������������������������������������������������������������.{.?JoHdr05;�����������������������������������.}
.{
.if JoNeedGroup
 .{.?JoBod02;.}   �@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�          �        �                              �                         .{.?JoBod03;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}
.end
.if JoNeedRow
&&&&�                                        �@@@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@.{.?JoBod01;�&#'&&&&&&&&&&&&&�&#'&&&&&&&&&&&&& .}
.end
.}
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr01;�����������������������������������.}
���⮣�                                                                                                                     .{.?JoFtr02;�&'&&&&&&&&&&&&&&�&'&&&&&&&&&&&&&& .}��
��������������������������������������������������������������������������������������������������������������������������.{.?JoFtr03;�����������������������������������.}
��
.fields
if(�����ᠭ�_���� <> '', �����ᠭ�_����, �����ᠭ�_���������)
�����ᠭ�_���
.endfields
.if ExistFeeSigners_jo_tuned
.{checkenter FeeSignersCycle_jo_tuned
��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@��                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
----------------------------------     --------------------   -----------------------------------------------------
             (���������)                    (�������)                        (����஢�� ������)

.}
.else
.fields
BuhName
RepUserName
.endfields
������ ��壠���  ___________________  ^
                           �������
�⢥��⢥��� �� ���� ___________________ ^
                              �������
.end
��
.endform